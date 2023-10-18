"use client";
import { useSupabaseClient } from "@supabase/auth-helpers-react";
import { useRouter } from "next/navigation";
import { useRef } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const switchLoginRef = useRef(null);

  const supabase = useSupabaseClient();
  const router = useRouter();

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        const signInWithPassword = switchLoginRef.current.checked;

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
          alert("Sign in with E-Mail");
        }
      }}
    >
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login</header>

        <fieldset>
          <label htmlFor="email">
            Email <input ref={emailInputRef} type="email" id="email" required />
          </label>

          <label htmlFor="password">
            Password{" "}
            <input
              ref={passwordInputRef}
              type="password"
              id="password"
              hidden
            />
          </label>
        </fieldset>

        <fieldset>
          <label htmlFor="switch-login">
            <input
              ref={switchLoginRef}
              type="checkbox"
              id="switch-login"
              role="switch"
              onChange={() => {
                const checked = switchLoginRef.current.checked;
                passwordInputRef.current.hidden = !checked;
              }}
            />
            Sign in with password
          </label>
        </fieldset>

        <button type="submit">Sign in</button>
      </article>
    </form>
  );
};
