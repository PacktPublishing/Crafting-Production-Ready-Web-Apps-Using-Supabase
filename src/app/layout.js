import "@/styles/globals.scss";
import SupabaseProvider from "./SupabaseProvider";

export default async function RootLayout(pageProps) {
  return (
    <html lang="en">
      <head>
        {/* ... */}
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css"
        ></link>
      </head>
      <body>
        <SupabaseProvider>
          <main>{pageProps.children}</main>
        </SupabaseProvider>
      </body>
    </html>
  );
}
