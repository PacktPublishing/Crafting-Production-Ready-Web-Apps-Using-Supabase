import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
import { notFound } from "next/navigation";

export default async function Registration({ params }) {
  const { tenant } = params;

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) notFound();

  const { name: tenantName } = data;

  return (
    <form method="POST" action={urlPath("/auth/register", tenant)}>
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>
          <strong>Create account</strong>
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>

        <fieldset>
          <label htmlFor="name">
            Your name <input type="text" id="name" name="name" required />
          </label>

          <label htmlFor="email" style={{ marginTop: "20px" }}>
            Email <input type="email" id="email" name="email" required />
          </label>

          <label htmlFor="password" style={{ marginTop: "20px" }}>
            Choose a password{" "}
            <input type="password" id="password" name="password" required />
          </label>
        </fieldset>

        <button type="submit">Register now</button>

        <Link
          href={urlPath("/", tenant)}
          style={{
            textAlign: "center",
            display: "block",
            marginTop: "1em",
          }}
        >
          Go back to login
        </Link>
      </article>
    </form>
  );
}
