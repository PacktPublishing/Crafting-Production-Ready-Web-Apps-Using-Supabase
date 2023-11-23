import { createCookiesUtilSupabase } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

// force-dynamic is not needed when dynamic functions like cookies()
// are called. But i kept it for clarity.
export const dynamic = "force-dynamic";

export async function GET(request) {
  const supabase = createCookiesUtilSupabase();
  const buckets = await supabase.storage.listBuckets();

  return NextResponse.json(buckets);
}
