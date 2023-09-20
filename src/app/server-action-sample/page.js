import { cookies } from "next/headers";
import { createServerActionClient } from "@supabase/auth-helpers-nextjs";

export const dynamic = "force-dynamic";

export default function Page() {
  async function serverActionWithSupabase() {
    "use server";

    const supabase = createServerActionClient({ cookies });
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
