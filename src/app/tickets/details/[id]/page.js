import { TicketComments } from "./TicketComments";
import classes from "./TicketDetails.module.css";

export default function TicketDetailsPage({ params }) {
  return (
    <div style={{ padding: "1.2em" }}>
      <article
        className={classes.ticketDetails}
        style={{
          marginTop: 0,
        }}
      >
        <header>
          <strong>#{params.id}</strong> -{" "}
          <strong className={classes.ticketStatusGreen}>Open</strong>
          <br />
          <small className={classes.authorAndDate}>
            Created by <strong>AuthorName</strong> at{" "}
            <time>December 10th 2025</time>
          </small>
          <h2>Ticket title should be here</h2>
        </header>

        <section>Some details about the ticket should be here.</section>

        <TicketComments />
      </article>
    </div>
  );
}
