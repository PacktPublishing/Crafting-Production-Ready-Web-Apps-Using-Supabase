"use client";
import { useRef } from "react";
import classes from "./TicketDetails.module.css";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

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

export function TicketComments({ ticket }) {
  const commentRef = useRef(null);
  const supabase = getSupabaseBrowserClient();

  return (
    <footer>
      <h4>Comments</h4>

      <form
        onSubmit={(event) => {
          event.preventDefault();
          const comment_text = commentRef.current.value.trim();

          if (!comment_text) alert("Please enter a comment");

          commentRef.disabled = true;

          supabase
            .from("comments")
            .insert({
              ticket,
              comment_text,
            })
            .then(() => {
              commentRef.current.value = "";
              commentRef.disabled = false;
            });
        }}
      >
        <textarea ref={commentRef} placeholder="Add a comment" required />
        <button type="submit">Add comment</button>
      </form>

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
