import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { cookies, headers } from "next/headers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
  const supabase = getSupabaseCookiesUtilClient();
  await supabase.auth.signOut();

  return NextResponse.redirect(buildUrl("/", params.tenant, request));
}
