import "@/styles/globals.scss";

export default function RootLayout(pageProps) {
  return (
    <html lang="en">
      <head>
        {/* ... */}
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>
        <main>{pageProps.children}</main>
      </body>
    </html>
  );
}
