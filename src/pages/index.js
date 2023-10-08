import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { Inter } from "next/font/google";
import Head from "next/head";
import Link from "next/link";
import { useEffect } from "react";

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
  useEffect(() => {
    supabase.storage.listBuckets().then((result) => {
      console.log("Bucket List", result);
    });
  }, [supabase]);

  return (
    <>
      <Head>
        <title>Supabase Pages Router</title>
      </Head>

      <ul>
        <li>
          <Link className="highlight" href="/page-with-server-client">
            Page with <strong>Server Client</strong> usage in{" "}
            <code>getServerSideProps</code>
          </Link>
        </li>
        <li>
          <Link className="highlight" href="/page-with-frontend-client">
            Page with <strong>Frontend Client</strong> usage in{" "}
            <code>getServerSideProps</code>
          </Link>
        </li>
      </ul>
    </>
  );
}
