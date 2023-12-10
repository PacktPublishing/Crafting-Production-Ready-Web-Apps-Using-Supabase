import { TicketList } from "./TicketList";

const dummyTickets = [
  {
    id: 1,
    title: "Write Supabase Book",
    status: "Not started",
    author: "Chayan",
  },
  {
    id: 2,
    title: "Read more Packt Books",
    status: "In progress",
    author: "David",
  },
  {
    id: 3,
    title: "Make videos for the YouTube Channel",
    status: "Done",
    author: "David",
  },
];

export default function TicketListPage() {
  return (
    <>
      <h2>Ticket List</h2>
      <TicketList tickets={dummyTickets} />
    </>
  );
}
