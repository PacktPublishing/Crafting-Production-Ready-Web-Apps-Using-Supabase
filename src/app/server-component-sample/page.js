import { createServerComponentClient } from "@supabase/auth-helpers-nextjs";

export default async function ServerOnlyPageWithSupabase() {
  const supabase = createServerComponentClient();
  const buckets = await supabase.storage.listBuckets();

  return (
    <>
      <div>Server Only (Server Component)</div>

      <code data-label="Buckets">
        <pre>
          {buckets === null ? "Loading..." : JSON.stringify(buckets, null, 2)}
        </pre>
      </code>
    </>
  );
}
