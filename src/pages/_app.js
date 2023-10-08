import "@/styles/globals.scss";
import { useSupabaseClient } from "@/supabase-utils/client";

import { SessionContextProvider } from "@supabase/auth-helpers-react";
import { useState } from "react";

export default function App({ Component, pageProps }) {
  // Create a new supabase browser client on every FIRST render.
  const [supabaseClient] = useState(() => useSupabaseClient());

  return (
    <SessionContextProvider
      supabaseClient={supabaseClient}
      initialSession={pageProps.initialSession}
    >
      <Component {...pageProps} />
    </SessionContextProvider>
  );
}
