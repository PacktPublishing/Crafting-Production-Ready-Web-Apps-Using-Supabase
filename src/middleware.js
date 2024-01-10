import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(req) {
  const res = NextResponse.next();
  const supabase = getSupabaseReqResClient({ req, res });

  // do something with supabase

  return res;
}
