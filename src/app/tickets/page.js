import Link from "next/link";

const TicketRow = ({ ticket }) => {
  return (
    <tr>
      <td>{ticket.id}</td>
      <td>
        <Link href={`/tickets/details/${ticket.id}`}>{ticket.title}</Link>
      </td>
    </tr>
  );
};

export default function TicketList() {
  const dummyTickets = [
    { id: 1, title: "Write Supabase Book" },
    { id: 2, title: "Read more Packt Books" },
    { id: 3, title: "Make videos for the YouTube Channel" },
  ];

  return (
    <section>
      <strong>Ticket List</strong>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
          </tr>
        </thead>
        <tbody>
          {dummyTickets.map((ticket) => (
            <TicketRow key={ticket.id} ticket={ticket} />
          ))}
        </tbody>
      </table>
    </section>
  );
}
