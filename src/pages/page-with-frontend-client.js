import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { Inter } from "next/font/google";
import Head from "next/head";
import { useEffect, useState } from "react";

const inter = Inter({ subsets: ["latin"] });

export default function Home() {
  // Manual Variant:
  // useEffect(() => {
  //   const supabase = createSupabase();
  //   console.log(supabase);
  //   supabase.storage.listBuckets().then((result) => {
  //     console.log("Bucket List", result);
  //   });
  // }, []);

  // Context-based Variant:
  const supabase = useSupabaseClient();
  const [buckets, setBuckets] = useState(null);

  useEffect(() => {
    supabase.auth.getSession().then((result) => {
      console.log("Session", result);
    });

    supabase.storage.listBuckets().then((result) => {
      console.log("Bucket List", result);
      setBuckets(result);
    });
  }, [supabase]);

  return (
    <>
      <Head>
        <title>Frontend Client / Pages Router</title>
      </Head>
      <main>
        <div>
          <h1>
            Page with Frontend Client usage via <code>useEffect</code> and{" "}
            <code>useSupabaseClient</code>
          </h1>

          {buckets === null && <strong>Loading...</strong>}

          {buckets !== null && (
            <>
              <h2>Result:</h2>
              <pre>{JSON.stringify(buckets, null, 2)}</pre>
            </>
          )}
        </div>
      </main>
    </>
  );
}
