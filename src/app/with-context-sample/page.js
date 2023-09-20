"use client";

import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { useEffect, useState } from "react";

export default function WithContextSample() {
  const supabase = useSupabaseClient();
  const [buckets, setBuckets] = useState(null);

  useEffect(() => {
    supabase.storage.listBuckets().then((result) => {
      setBuckets(result);
    });
  }, []);

  return (
    <>
      <div>
        With <code className="inline">SessionContextProvider</code>
      </div>

      <code data-label="Buckets">
        <pre>
          {buckets === null ? "Loading..." : JSON.stringify(buckets, null, 2)}
        </pre>
      </code>
    </>
  );
}
