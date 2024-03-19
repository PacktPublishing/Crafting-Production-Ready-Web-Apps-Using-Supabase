import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TicketComments } from "./TicketComments";
import classes from "./TicketDetails.module.css";
import { notFound } from "next/navigation";
import { TICKET_STATUS } from "@/utils/constants";

export default async function TicketDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();
  const { data: ticket, error } = await supabase
    .from("tickets")
    .select("*")
    .eq("id", params.id)
    .single();

  if (error) return notFound();

  const { created_at, title, description, created_by, status, author_name } =
    ticket;

  const dateString = new Date(created_at).toLocaleString("en-US");

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.ticketStatusGreen}>
          {TICKET_STATUS[status]}
        </strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{author_name}</strong> at <time>{dateString}</time>
        </small>
        <h2>{title}</h2>
      </header>

      <section>{description}</section>

      <TicketComments />
    </article>
  );
}
