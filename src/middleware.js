import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { TENANT_MAP } from "./tenant-map";
import { buildUrl, getHostnameAndPort } from "./utils/url-helpers";

export async function middleware(req) {
  const res = NextResponse.next();

  const supabase = getSupabaseReqResClient({ req, res });
  const session = await supabase.auth.getSession();

  const [hostname] = getHostnameAndPort(req);

  if (hostname in TENANT_MAP === false) {
    return NextResponse.error();
  }

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  const tenant = TENANT_MAP[hostname];
  const applicationPath = requestedPath;

  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.error();
  }

  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(buildUrl("/", tenant, req));
      // return NextResponse.redirect(new URL(`/${tenant}/`, req.url));
    } else if (!sessionUser.app_metadata.tenants?.includes(tenant)) {
      return NextResponse.error();
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(buildUrl("/tickets", tenant, req));
      // return NextResponse.redirect(new URL(`/${tenant}/tickets`, req.url));
    }
  }

  return NextResponse.rewrite(
    new URL(`/${tenant}${applicationPath}${req.nextUrl.search}`, req.url),
  );
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
