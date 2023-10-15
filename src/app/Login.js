"use client";
import { useRef } from "react";

export const Login = () => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const switchLoginRef = useRef(null);

  return (
    <form>
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login</header>

        <fieldset>
          <label for="email">
            Email <input ref={emailInputRef} type="email" id="email" required />
          </label>

          <label for="password">
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
          <label for="switch-login">
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

        <button
          type="submit"
          onClick={() => {
            alert("User wants to sign in");
          }}
        >
          Sign in
        </button>
      </article>
    </form>
  );
};
