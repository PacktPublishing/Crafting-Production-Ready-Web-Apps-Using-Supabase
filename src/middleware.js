import { createReqResSupabase } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(req) {
  const res = NextResponse.next();

  const supabase = createReqResSupabase({ req, res });
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session?.data?.session?.user;

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
