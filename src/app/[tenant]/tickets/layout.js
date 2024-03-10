import Nav from "./Nav";
import TenantName from "./TenantName";

export default function TicketsLayout(pageProps) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenant={pageProps.params.tenant} />
        <Nav tenant={pageProps.params.tenant} />
      </section>

      <section>{pageProps.children}</section>
    </>
  );
}
