"use client";
import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { useRouter } from "next/navigation";
import { useEffect, useRef } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);

  const supabase = useSupabaseClient();
  const router = useRouter();

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
    <article style={{ maxWidth: "480px", margin: "auto" }}>
      <header>Login</header>
      <form
        method="post"
        onSubmit={(event) => {
          const submitter = event.nativeEvent.submitter;
          const submitterAction = submitter.getAttribute("formAction");
          const signInWithPassword = submitterAction === "/auth/pw-login";

          if (signInWithPassword) {
            event.preventDefault();
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
        <fieldset>
          <label htmlFor="email">
            Email{" "}
            <input
              ref={emailInputRef}
              name="email"
              type="email"
              id="email"
              required
            />
          </label>

          <button
            type="submit"
            formAction="/auth/password-recovery"
            className="secondary"
            style={{ padding: "7px", fontSize: "0.84em" }}
          >
            Request password recovery
          </button>

          <label htmlFor="password">
            Password{" "}
            <input
              ref={passwordInputRef}
              type="password"
              name="password"
              id="password"
            />
          </label>
        </fieldset>

        <button type="submit" formAction="/auth/pw-login">
          Sign in with Password
        </button>

        <button type="submit" formAction="/auth/magic">
          Sign in with Magic Link
        </button>
      </form>
    </article>
  );
};
