import { TicketList } from "./TicketList";

export default function TicketListPage({ params, searchParams }) {
  return (
    <>
      <h2>Ticket List</h2>
      <TicketList tenant={params.tenant} searchParams={searchParams} />
    </>
  );
}
