"use client";
import { getSupabaseFrontendClient } from "@/supabase-utils/client";
import { useRouter } from "next/navigation";
import { useRef, useState } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const [isPasswordLogin, setIsPasswordLogin] = useState(false);
  const supabase = getSupabaseFrontendClient();
  const router = useRouter();

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();

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
            Email <input ref={emailInputRef} type="email" id="email" required />
          </label>

          <label htmlFor="password">
            Password{" "}
            <input
              ref={passwordInputRef}
              type="password"
              id="password"
              hidden={!isPasswordLogin}
            />
          </label>
        </fieldset>

        <fieldset>
          <label htmlFor="switch-login">
            <input
              type="checkbox"
              id="switch-login"
              role="switch"
              onChange={(evt) => {
                setIsPasswordLogin(evt.target.checked);
              }}
            />
            Sign in with password
          </label>
        </fieldset>

        <button type="submit">
          Sign in with
          {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
