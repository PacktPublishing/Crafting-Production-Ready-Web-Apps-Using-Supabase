import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { Login } from "./Login";
import { FORM_TYPES } from "./formTypes";
import { notFound } from "next/navigation";

export default async function LoginPage({ searchParams, params }) {
  const tenant = params.tenant;
  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) {
    console.log(`@error (${tenant})`, error);
    return notFound();
  }

  const { name: tenantName, domain: tenantDomain } = data;

  const wantsMagicLink = searchParams.magicLink === "yes";
  const wantsPasswordRecovery = searchParams.passwordRecovery === "yes";

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return (
    <Login
      formType={formType}
      tenant={tenant}
      tenantName={tenantName}
      tenantDomain={tenantDomain}
    />
  );
}
