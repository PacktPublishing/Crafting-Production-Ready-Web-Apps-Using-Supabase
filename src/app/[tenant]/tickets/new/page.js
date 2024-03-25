"use client";
import { AssigneeSelect } from "@/components/AssigneeSelect";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";
import { useRouter } from "next/navigation";
import { useEffect, useRef, useState } from "react";

export default function CreateTicket({ params }) {
  const { tenant } = params;
  const ticketTitleRef = useRef(null);
  const ticketDescriptionRef = useRef(null);
  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();
  const [assignee, setAssignee] = useState(null);

  const supabase = getSupabaseBrowserClient();

  useEffect(() => {
    router.prefetch(urlPath(`/tickets/details/[id]`));
  }, [router]);

  return (
    <article>
      <h3>Create a new ticket</h3>

      <form
        onSubmit={(event) => {
          event.preventDefault();

          const title = ticketTitleRef.current.value;
          const description = ticketDescriptionRef.current.value;

          if (title.trim().length > 4 && description.trim().length > 9) {
            setIsLoading(true);

            supabase
              .from("tickets")
              .insert({
                title,
                description,
                tenant,
                assignee,
              })
              .select()
              .single()
              .then(({ error, data }) => {
                if (error) {
                  setIsLoading(false);
                  alert("Could not create ticket");
                  console.error(error);
                } else {
                  console.log("NOW!!!");
                  router.push(urlPath(`/tickets/details/${data.id}`, tenant));
                }
              });
          } else {
            alert(
              "A title must have at least 5 chars and a description must at least contain 10",
            );
          }
        }}
      >
        <input
          disabled={isLoading}
          ref={ticketTitleRef}
          placeholder="Add a title"
        />

        <AssigneeSelect
          onValueChanged={(v) => setAssignee(v)}
          tenant={params.tenant}
          disabled={isLoading}
        />

        <textarea
          disabled={isLoading}
          ref={ticketDescriptionRef}
          placeholder="Add a description"
        />
        <button disabled={isLoading} type="submit" aria-busy={isLoading}>
          Create ticket now
        </button>
      </form>
    </article>
  );
}
