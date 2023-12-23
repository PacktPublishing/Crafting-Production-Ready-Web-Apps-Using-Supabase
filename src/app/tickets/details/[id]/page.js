import classes from "./TicketDetails.module.css";

function TicketComments() {
  const comments = [
    {
      author: "Dave",
      date: "2027-01-01",
      content: "This is a comment from Dave",
    },
    {
      author: "Alice",
      date: "2027-01-02",
      content: "This is a comment from Alice",
    },
  ];

  return (
    <footer>
      <h4>Comments</h4>

      <textarea placeholder="Add a comment"></textarea>
      <button>Add comment</button>

      {/* <section>We have {comments.length} comments.</section> */}
      <section>
        {comments.map((comment) => (
          <article key={comment.date} className={classes.comment}>
            <strong>{comment.author} </strong>
            <time>{comment.date}</time>
            <p>{comment.content}</p>
          </article>
        ))}
      </section>
    </footer>
  );
}

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
