import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";

export const getSupabaseCookiesUtilClient = () => {
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    {
      cookies: {
        get: (name) => cookies().get(name)?.value,
        set: (name, value, options) =>
          cookies().set({ name, value, ...options }),
        remove: (name, options) =>
          cookies().set({ name, value: "", ...options }),
      },
    },
  );
};
