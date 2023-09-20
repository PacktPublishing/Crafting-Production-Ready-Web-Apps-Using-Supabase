import { cookies } from "next/headers";
import { createServerComponentClient } from "@supabase/auth-helpers-nextjs";

export const dynamic = "force-dynamic";

export default async function ServerOnlyPageWithSupabase() {
  const supabase = createServerComponentClient({ cookies });
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
