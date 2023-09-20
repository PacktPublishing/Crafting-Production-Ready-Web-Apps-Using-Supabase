import { createRouteHandlerClient } from "@supabase/auth-helpers-nextjs";
import { cookies } from "next/headers";
import { NextResponse } from "next/server";

export const dynamic = "force-dynamic";

export async function GET(request) {
  const supabase = createRouteHandlerClient({ cookies });
  const buckets = await supabase.storage.listBuckets();

  return NextResponse.json(buckets);
}
