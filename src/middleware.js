import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";

export async function middleware(req) {
  const res = NextResponse.next();

  const supabase = getSupabaseReqResClient({ req, res });
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");
  const applicationPath = "/" + restOfPath.join("/");

  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.error();
  }

  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/`, req.url));
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/tickets`, req.url));
    }
  }

  return res;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
