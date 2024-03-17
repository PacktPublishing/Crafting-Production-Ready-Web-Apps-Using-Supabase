"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";

export default function Nav({ tenant }) {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  const getPath = (subPath) => urlPath(subPath ?? "/", tenant);

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      console.log("onAuthStateChange", event);
      if (event === "SIGNED_OUT") {
        router.push(getPath());
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href={getPath("/tickets")}
            {...(pathname === getPath("/tickets")
              ? activeProps
              : inactiveProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={getPath("/tickets/new")}
            {...(pathname === getPath("/tickets/new")
              ? activeProps
              : inactiveProps)}
          >
            Create New Ticket
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={getPath("/tickets/users")}
            {...(pathname === getPath("/tickets/users")
              ? activeProps
              : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link
            role="button"
            href={getPath("/logout")}
            className="secondary"
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut();
            }}
            prefetch={false}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
