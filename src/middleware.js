import { createMiddlewareClient } from "@supabase/auth-helpers-nextjs";
import { createClient } from "@supabase/supabase-js";
import { NextResponse } from "next/server";

export const config = {
  matcher: [
    "/((?!_next/static|_next/image|favicon.ico|logo.png|manifest.json).*)",
  ],
};

export async function middleware(req) {
  const res = NextResponse.next();

  let { hostname } = req.nextUrl;
  if (hostname === "localhost") {
    hostname = process.env.LOCALHOST_FALLBACK_TENANT_DOMAIN;
  }

  const supabase = createMiddlewareClient({ req, res });
  const session = await supabase.auth.getSession();

  const supabaseAdminClient = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY
  );

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session?.data?.session?.user;

  const { data } = await supabaseAdminClient
    .from("tenant_permissions")
    .select("service_user!inner(supabase_user), tenant!inner(domain)")
    .eq("tenant.domain", hostname)
    .eq("service_user.supabase_user", sessionUser?.id || -1);

  if (requestedPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL("/", req.url));
    }
  } else if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", req.url));
    }
  }

  return res;
}
