"use client";
import { useSupabaseClient } from "@supabase/auth-helpers-react";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";

export default function Nav() {
  const pathname = usePathname();
  const activeLinkProps = { className: "contrast" };
  const inactiveLinkProps = { className: "secondary outline" };
  const supabase = useSupabaseClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_OUT") {
        router.push("/");
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
            href="/tickets"
            {...(pathname === "/tickets" ? activeLinkProps : inactiveLinkProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href="/tickets/new"
            {...(pathname === "/tickets/new"
              ? activeLinkProps
              : inactiveLinkProps)}
          >
            Create new Ticket
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href="/tickets/users"
            {...(pathname === "/tickets/users"
              ? activeLinkProps
              : inactiveLinkProps)}
          >
            User List
          </Link>
        </li>
      </ul>
      <ul>
        <li>
          <button
            role="button"
            className="outline"
            onClick={(event) => {
              // supabase.auth.signOut().then(() => {
              //   router.push("/");
              // });
              supabase.auth.signOut();
            }}
          >
            Log out
          </button>
        </li>
      </ul>
    </nav>
  );
}
