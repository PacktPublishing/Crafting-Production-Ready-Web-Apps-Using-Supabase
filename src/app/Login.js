"use client";
import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { useRouter } from "next/navigation";
import { useRef } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);

  const supabase = useSupabaseClient();
  const router = useRouter();

  return (
    <article style={{ maxWidth: "480px", margin: "auto" }}>
      <header>Login</header>
      <form
        method="post"
        onSubmit={(event) => {
          event.preventDefault();
          const submitter = event.nativeEvent.submitter;
          const submitterAction = submitter.getAttribute("formAction");
          const signInWithPassword = submitterAction === "/auth/pw-login";

          if (signInWithPassword) {
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
          } else {
            alert("Wants to log in with Magic Link");
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
