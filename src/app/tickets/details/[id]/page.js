export default function TicketDetailsPage({ params }) {
  return (
    <article>
      <header>
        <strong>#{params.id}</strong> - <strong>Open</strong>
        <br />
        <small>Created by Author</small>
        <h2>Ticket title should be here</h2>
      </header>

      <section>Some details about the ticket should be here.</section>

      <article>
        <h3>Comments</h3>

        <textarea placeholder="Add a comment"></textarea>
        <button>Add comment</button>

        <section>
          <p>Newest Comment</p>
          <p>Older comment</p>
          <p>Oldest comment</p>
        </section>
      </article>
    </article>
  );
}
