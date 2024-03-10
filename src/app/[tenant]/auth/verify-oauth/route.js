import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
  const url = new URL(request.url);

  const supabase = getSupabaseCookiesUtilClient();
  const { data: sessionData, error: sessionError } =
    await supabase.auth.exchangeCodeForSession(url.searchParams.get("code"));

  if (sessionError) {
    return NextResponse.redirect(
      buildUrl("/error?type=login-failed", params.tenant, request),
    );
  }

  const { tenant } = params;
  const supabaseAdmin = getSupabaseAdminClient();
  const { user } = sessionData;
  const { email } = user;
  const [, emailHost] = email.split("@");
  const { error: tenantMatchError } = await supabaseAdmin
    .from("tenants")
    .select()
    .eq("id", tenant)
    .eq("domain", emailHost)
    .single();

  if (tenantMatchError) {
    await supabase.auth.signOut();
    return NextResponse.redirect(
      buildUrl(
        `/error?type=register_mail_mismatch&email=${email}`,
        params.tenant,
        request,
      ),
    );
  }

  const needsInitialSetup =
    !user.app_metadata.tenants || !user.app_metadata.tenants.includes(tenant);

  if (needsInitialSetup) {
    await supabaseAdmin.auth.admin.updateUserById(user.id, {
      app_metadata: {
        tenants: [tenant, ...(user.app_metadata.tenants ?? [])],
      },
    });

    const { data: serviceUser } = await supabaseAdmin
      .from("service_users")
      .insert({
        full_name: user.user_metadata.full_name,
        supabase_user: user.id,
      })
      .select()
      .single();

    await supabaseAdmin.from("tenant_permissions").insert({
      tenant,
      service_user: serviceUser?.id,
    });
  }

  return NextResponse.json({ session: sessionData.session });
  // return NextResponse.redirect(buildUrl("/", params.tenant, request));
}
