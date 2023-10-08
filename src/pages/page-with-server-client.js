import { createServerSupabase } from "@/supabase-utils/client";
import { createReqResSupabase } from "@/supabase-utils/reqResClient";
import Head from "next/head";

const PageWithServerClient = ({ buckets }) => {
  return (
    <>
      <Head>
        <title>Server Client / Pages Router</title>
      </Head>
      <div>
        <h1>
          Page with server client usage in <code>getServerSideProps</code>
        </h1>

        <h2>Result from Server</h2>
        <pre>{JSON.stringify(buckets, null, 2)}</pre>
      </div>
    </>
  );
};

export default PageWithServerClient;

export const getServerSideProps = async ({ req, res }) => {
  const supabase = createReqResSupabase({ req, res });
  const bucketsTestCall = await supabase.storage.listBuckets();

  return {
    props: {
      buckets: bucketsTestCall,
    },
  };
};
