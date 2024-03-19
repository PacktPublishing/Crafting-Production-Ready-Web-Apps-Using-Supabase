import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export async function TicketList({ tenant, searchParams }) {
  const page = Number.isInteger(1 * searchParams.page)
    ? Number(searchParams.page)
    : 1;

  const supabase = getSupabaseCookiesUtilClient();

  const { count } = await supabase
    .from("tickets")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);

  const { data: tickets, error } = await supabase
    .from("tickets")
    .select()
    .eq("tenant", tenant)
    .limit(6);

  const moreRows = count - tickets.length > 0;

  return (
    <>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th></th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          {tickets.map((ticket) => (
            <tr key={ticket.id}>
              <td>{ticket.id}</td>
              <td>
                <Link href={urlPath(`/tickets/details/${ticket.id}`, tenant)}>
                  {ticket.title}
                </Link>
              </td>
              <td>{TICKET_STATUS[ticket.status]}</td>
            </tr>
          ))}
        </tbody>
      </table>

      <div>
        <Link
          role="button"
          href={{
            query: {
              page: 2,
            },
          }}
        >
          Next page
        </Link>
      </div>
    </>
  );
}
