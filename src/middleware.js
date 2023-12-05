import { createReqResSupabase } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(req) {
  const res = NextResponse.next();
  const supabase = createReqResSupabase({ req, res });
  await supabase.auth.getSession();
  return res;
}
