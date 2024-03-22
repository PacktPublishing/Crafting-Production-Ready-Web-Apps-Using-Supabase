"use client";
import classes from "./TicketDetails.module.css";
import { TICKET_STATUS } from "@/utils/constants";
import { TicketComments } from "./TicketComments";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";
import { useRouter } from "next/navigation";

export function TicketDetails({
  tenant,
  id,
  status,
  title,
  description,
  author_name,
  dateString,
  isAuthor,
}) {
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  return (
    <article className={classes.ticketDetails}>
      <header>
        <div className="grid">
          <div>
            <strong>#{id}</strong> -{" "}
            <strong className={classes.ticketStatusGreen}>
              {TICKET_STATUS[status]}
            </strong>
          </div>

          {isAuthor && (
            <button
              role="button"
              className="little-danger"
              onClick={() => {
                supabase
                  .from("tickets")
                  .delete()
                  .eq("id", id)
                  .then((res) => {
                    router.push(urlPath("/tickets", tenant));
                  });
              }}
            >
              Delete ticket
            </button>
          )}
        </div>
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
