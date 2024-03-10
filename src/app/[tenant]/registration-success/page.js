import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export default function RegistrationSuccessPage({ searchParams, params }) {
  const { email } = searchParams;
  const { tenant } = params;

  return (
    <div style={{ textAlign: "center" }}>
      <h1>Registration succeeded!</h1>
      <p>Check your email ({email}) for a link to activate your account.</p>

      <br />
      <Link role="button" href={urlPath("/", tenant)}>
        Login
      </Link>
    </div>
  );
}
