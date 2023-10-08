import { createReqResSupabase } from "@/supabase-utils/reqResClient";

export default async function handler(req, res) {
  const supabase = createReqResSupabase({ req, res });
  const { data: buckets } = await supabase.storage.listBuckets();
  res.status(200).json({ buckets });
}
