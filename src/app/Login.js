"use client";
import { getSupabaseFrontendClient } from "@/supabase-utils/client";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useRef, useState } from "react";

export const Login = ({ isPasswordLogin }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseFrontendClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        router.push("/");
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      method="POST"
      action={isPasswordLogin ? "/auth/pw-login" : "/auth/magic-link"}
      onSubmit={(event) => {
        isPasswordLogin && event.preventDefault();

        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              if (result.data?.user) {
                router.push("/tickets");
              } else {
                alert("Could not sign in");
              }
            });
        }
      }}
    >
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login</header>

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

        <p>
          {isPasswordLogin ? (
            <Link
              href={{
                pathname: "/",
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: "/",
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
        </p>

        <button type="submit">
          Sign in with
          {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
