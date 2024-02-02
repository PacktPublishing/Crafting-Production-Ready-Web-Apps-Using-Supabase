"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useRef } from "react";
import { FORM_TYPES } from "./formTypes";

export const Login = ({ formType = "pw-login" }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
  const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
  const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

  const formAction = isPasswordLogin ? `/auth/pw-login` : `/auth/magic-link`;

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        router.push("/tickets");
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      method="POST"
      action={formAction}
      onSubmit={(event) => {
        isPasswordLogin && event.preventDefault();

        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              !result.data?.user && alert("Could not sign in"); // new version

              /** old version:
              if (result.data?.user) {
                router.push("/tickets");
              } else {
                alert("Could not sign in");
              }
              */
            });
        }
      }}
    >
      {isPasswordRecovery && (
        <input type="hidden" name="type" value="recovery" />
      )}

      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>
          {isPasswordRecovery && <strong>Request new password</strong>}
          {!isPasswordRecovery && <strong>Login</strong>}
        </header>

        <fieldset>
          <label htmlFor="email">
            Email{" "}
            <input
              ref={emailInputRef}
              type="email"
              id="email"
              name="email"
              required
            />
          </label>

          {isPasswordLogin && (
            <label htmlFor="password" style={{ marginTop: "20px" }}>
              Password{" "}
              <input
                ref={passwordInputRef}
                type="password"
                id="password"
                name="password"
              />
            </label>
          )}
        </fieldset>

        <button type="submit">
          {isPasswordLogin && "Sign in with Password"}
          {isPasswordRecovery && "Request new password"}
          {isMagicLinkLogin && "Sign in with Magic Link"}
        </button>

        <div
          style={{
            display: "flex",
            justifyContent: "space-between",
            flexDirection: "column",
            gap: "6px",
            marginBottom: "20px",
          }}
        >
          {!isPasswordLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: "/",
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
          {!isMagicLinkLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: "/",
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          )}
        </div>

        {!isPasswordRecovery && (
          <Link
            href={{
              pathname: "/",
              query: { passwordRecovery: "yes" },
            }}
            style={{
              textAlign: "center",
              display: "block",
            }}
          >
            Go to Password Recovery
          </Link>
        )}
      </article>
    </form>
  );
};
