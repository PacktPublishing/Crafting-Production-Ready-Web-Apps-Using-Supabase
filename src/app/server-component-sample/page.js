import { createCookiesSupabase } from "@/supabase-utils/cookiesClient";

export const dynamic = "force-dynamic";

export default async function ServerOnlyPageWithSupabase() {
  const supabase = createCookiesSupabase();
  const buckets = await supabase.storage.listBuckets();

  // const buckets = [];

  return (
    <>
      <h2>Server Only (Server Component)</h2>

      <code data-label="Buckets">
        <pre>
          {buckets === null ? "Loading..." : JSON.stringify(buckets, null, 2)}
        </pre>
      </code>
    </>
  );
}
