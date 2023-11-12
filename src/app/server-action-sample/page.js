import { createCookiesSupabase } from "@/supabase-utils/cookiesClient";

export const dynamic = "force-dynamic";

export default function PageWithServerAction() {
  async function serverActionWithSupabase() {
    "use server";

    const supabase = createCookiesSupabase();
    const buckets = await supabase.storage.listBuckets();

    console.log("@server", buckets);
  }

  return (
    <>
      <h2>Supabase with Server Action</h2>
      <form action={serverActionWithSupabase}>
        <button type="submit">Run Server Action</button>
      </form>
    </>
  );
}
