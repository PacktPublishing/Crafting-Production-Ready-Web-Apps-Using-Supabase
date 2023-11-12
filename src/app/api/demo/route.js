import { createCookiesSupabase } from "@/supabase-utils/cookiesClient";
import { NextResponse } from "next/server";

export const dynamic = "force-dynamic";

export async function GET(request) {
  const supabase = createCookiesSupabase();
  const buckets = await supabase.storage.listBuckets();

  return NextResponse.json(buckets);
}
