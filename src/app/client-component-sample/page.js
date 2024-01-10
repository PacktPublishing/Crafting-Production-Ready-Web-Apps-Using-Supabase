"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useEffect, useState } from "react";

export default function ClientComponentSample() {
  const [buckets, setBuckets] = useState(null);

  useEffect(() => {
    const supabase = getSupabaseBrowserClient();
    supabase.storage.listBuckets().then((result) => {
      setBuckets(result);
    });
  }, []);

  return (
    <>
      <h2>
        With <code className="inline">Client Component</code>
      </h2>

      <code data-label="Buckets">
        <pre>
          {buckets === null ? "Loading..." : JSON.stringify(buckets, null, 2)}
        </pre>
      </code>
    </>
  );
}
