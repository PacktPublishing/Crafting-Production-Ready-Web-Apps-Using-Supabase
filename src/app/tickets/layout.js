export default function TicketsLayout(pageProps) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <header>
          <mark>
            Ticket System
            <strong style={{ marginLeft: "1ex" }}>Packt</strong>
          </mark>
        </header>
        <nav>
          <ul>
            <li>
              <a href="/">Ticket List</a>
            </li>
            <li>
              <a href="/">Create new Ticket</a>
            </li>
            <li>
              <a href="/">User List</a>
            </li>
          </ul>
        </nav>
      </section>

      <section>{pageProps.children}</section>
    </>
  );
}
