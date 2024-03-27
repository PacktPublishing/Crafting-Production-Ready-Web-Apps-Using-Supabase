"use client";
import { useEffect, useRef, useState } from "react";
import classes from "./TicketDetails.module.css";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export function TicketComments({ ticket, initialComments }) {
  const commentRef = useRef(null);
  const supabase = getSupabaseBrowserClient();

  const [comments, setComments] = useState(initialComments || []);

  useEffect(() => {
    const listener = (payload) => {
      const eventType = payload.eventType;

      console.log("eventType", payload);

      if (eventType === "INSERT") {
        setComments((prevComments) => [...prevComments, payload.new]);
      } else if (eventType === "DELETE") {
        setComments((prevComments) =>
          prevComments.filter((comment) => comment.id !== payload.old.id),
        );
      } else if (eventType === "UPDATE") {
        setComments((prevComments) =>
          prevComments.map((comment) =>
            comment.id === payload.new.id ? payload.new : comment,
          ),
        );
      }
    };

    const subscription = supabase
      .channel("my-channel")
      .on(
        "postgres_changes",
        {
          event: "*",
          schema: "public",
          table: "comments",
          // filter: `ticket=eq.${ticket}`,
        },
        listener,
      )
      .subscribe();

    return () => subscription.unsubscribe();
  }, []);

  return (
    <footer>
      <h4>Comments ({comments.length})</h4>

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
          <article key={comment.id} className={classes.comment}>
            <strong>{comment.author_name} </strong>
            <time>{new Date(comment.created_at).toLocaleString("en-US")}</time>
            <p>{comment.comment_text}</p>
          </article>
        ))}
      </section>
    </footer>
  );
}
