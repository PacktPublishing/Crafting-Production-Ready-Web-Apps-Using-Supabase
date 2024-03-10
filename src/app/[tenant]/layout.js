import "@/styles/globals.scss";

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
        <main className="container">{pageProps.children}</main>
      </body>
    </html>
  );
}
