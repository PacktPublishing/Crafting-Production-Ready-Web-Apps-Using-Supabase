"use client";

import { createClientComponentClient } from "@supabase/auth-helpers-nextjs";
import { useEffect, useState } from "react";

export default function WithoutContextSample() {
  const supabase = createClientComponentClient();
  const [buckets, setBuckets] = useState(null);

  useEffect(() => {
    supabase.storage.listBuckets().then((result) => {
      setBuckets(result);
    });
  }, []);

  return (
    <>
      <h2>
        Without <code className="inline">Context</code> Sample
      </h2>

      <code data-label="Buckets">
        <pre>
          {buckets === null ? "Loading..." : JSON.stringify(buckets, null, 2)}
        </pre>
      </code>
    </>
  );
}
