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
          <Link
            href="/auth/logout"
            role="button"
            className="outline"
            onClick={(event) => {
              // the following code is commented out because it is not needed
              // as we are listening to the SIGNED_OUT event above
              // supabase.auth.signOut().then(() => {
              //   router.push("/");
              // });
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
