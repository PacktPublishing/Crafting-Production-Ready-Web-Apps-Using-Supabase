import { createCookiesUtilSupabase } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

export const dynamic = "force-dynamic";

export async function GET(request) {
  const supabase = createCookiesUtilSupabase();
  const buckets = await supabase.storage.listBuckets();

  return NextResponse.json(buckets);
}
