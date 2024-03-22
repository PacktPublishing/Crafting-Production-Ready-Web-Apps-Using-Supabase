import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export default function ErrorPage({ searchParams, params }) {
  const { type } = searchParams;
  const { tenant } = params;

  const knownRegistrationErrors = [
    "register_mail_mismatch",
    "register_mail_exists",
    "register_unknown",
  ];

  const knownErrors = [
    "login-failed",
    "invalid_magiclink",
    ...knownRegistrationErrors,
  ];

  const backLink = knownRegistrationErrors.includes(type)
    ? urlPath("/register", tenant)
    : urlPath("/", tenant);

  return (
    <div style={{ textAlign: "center" }}>
      <h1>Ooops!</h1>
      {type === "login-failed" && (
        <strong>Login was not successfull, sorry.</strong>
      )}

      {type === "invalid_magiclink" && (
        <strong>
          The magic link was invalid. Maybe it expired? Please request a new
          one.
        </strong>
      )}

      {type === "magiclink" && (
        <strong>
          Could not send a magic link. Maybe you had a typo in your E-Mail?
        </strong>
      )}

      {type === "recovery" && (
        <strong>
          Could not request new password. Maybe you had a typo in your E-Mail?
        </strong>
      )}

      {type === "register_mail_mismatch" && (
        <strong>
          You are not legitimated to register an account with &nbsp;
          <u>{searchParams.email}</u>.
        </strong>
      )}

      {type === "register_mail_exists" && (
        <strong>
          There is already an account registered with &nbsp;
          <u>{searchParams.email}</u>.
        </strong>
      )}

      {type === "register_unknown" && (
        <strong>
          Sorry but an unknown error occurred when trying to create an account.
        </strong>
      )}

      {!knownErrors.includes(type) && (
        <strong>
          Something went wrong. Please try again or contact support.
        </strong>
      )}

      <br />
      <br />

      <Link role="button" href={backLink}>
        Go back.
      </Link>
    </div>
  );
}
