import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";

export async function middleware(req) {
  const res = NextResponse.next();

  const supabase = getSupabaseReqResClient({ req, res });
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  if (requestedPath.startsWith("/tickets")) {
    if (!sessionUser) {
      // TODO: make sure the sessionUser will contain app_metadata containing
      // the host SLUG (not domain because domain can change!)
      // and then we can CHEAPLY do an insecure match here for the redirection

      return NextResponse.redirect(new URL("/", req.url));
    }
  } else if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", req.url));
    }
  }

  return res;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
