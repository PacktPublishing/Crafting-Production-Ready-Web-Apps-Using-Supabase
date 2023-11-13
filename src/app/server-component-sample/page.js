import { createCookiesUtilSupabase } from "@/supabase-utils/cookiesUtilClient";

export const dynamic = "force-dynamic";

export default async function ServerOnlyPageWithSupabase() {
  const supabase = createCookiesUtilSupabase();
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
