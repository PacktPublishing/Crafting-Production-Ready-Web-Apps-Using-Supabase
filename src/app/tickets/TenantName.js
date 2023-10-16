export default function TenantName(props) {
  return (
    <header>
      <mark>
        Ticket System
        <strong style={{ marginLeft: "1ex" }}>{props.tenantName}</strong>
      </mark>
    </header>
  );
}
