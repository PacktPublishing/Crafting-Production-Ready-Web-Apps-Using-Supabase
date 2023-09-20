import "@/styles/globals.scss";
import SupabaseProvider from "./SupabaseProvider";

export default function RootLayout({
  // Layouts must accept a children prop.
  // This will be populated with nested layouts or pages
  children,
}) {
  return (
    <html lang="en">
      <head>
        {/* ... */}
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>
        <SupabaseProvider>
          <main>{children}</main>
        </SupabaseProvider>
      </body>
    </html>
  );
}
