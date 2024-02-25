import Link from "next/link";

export default function ErrorPage({ searchParams }) {
  const { type } = searchParams;
  const knownErrors = [
    "login-failed",
    "invalid_magiclink",
    "magiclink",
    "recovery",
  ];

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

      {!knownErrors.includes(type) && (
        <strong>
          Something went wrong. Please try again or contact support.
        </strong>
      )}

      <br />
      <br />

      <Link role="button" href="/">
        Go back.
      </Link>
    </div>
  );
}
