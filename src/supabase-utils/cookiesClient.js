import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";

export const createCookiesSupabase = () => {
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY,
    {
      cookies: {
        get: (name) => cookies().get(name)?.value,
        set: (name, value, options) =>
          cookies().set({ name, value, ...options }),
        remove: (name, options) =>
          cookies().set({ name, value: "", ...options }),
      },
    }
  );
};
