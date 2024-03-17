import { createServerClient } from "@supabase/ssr";
import { deleteCookie, getCookie, setCookie } from "cookies-next";

export const getSupabaseReqResClient = ({ req, res }) => {
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    {
      cookies: {
        get: (name) => getCookie(name, { req, res }),
        set: (name, value, options) =>
          setCookie(name, value, { req, res, ...options }),
        remove: (name, options) => deleteCookie(name, { req, res, ...options }),
      },
    },
  );
};
