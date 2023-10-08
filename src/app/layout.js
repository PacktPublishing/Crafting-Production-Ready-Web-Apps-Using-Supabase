import "@/styles/globals.scss";
import SupabaseProvider from "./SupabaseProvider";

export default function RootLayout(pageProps) {
  console.log("@pageProps", pageProps);
  return (
    <html lang="en">
      <head>
        {/* ... */}
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>
        <SupabaseProvider>
          <main>{pageProps.children}</main>
        </SupabaseProvider>
      </body>
    </html>
  );
}
