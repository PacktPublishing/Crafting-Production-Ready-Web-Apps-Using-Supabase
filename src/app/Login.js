"use client";
import { useRef, useState } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const [isPasswordLogin, setIsPasswordLogin] = useState(false);

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        if (isPasswordLogin) {
          alert("User wants to login with password");
        } else {
          alert("User wants to login with magic link");
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
