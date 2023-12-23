"use client";
import Link from "next/link";
import { usePathname } from "next/navigation";

export default function Nav() {
  const pathname = usePathname();
  const activeLinkProps = { className: "contrast btn" };
  const inactiveLinkProps = { className: "secondary outline" };

  return (
    <nav>
      <ul className="menu">
        <li>
          <Link
            role="button"
            className="btn"
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
            role="button"
            href="/logout"
            // className="secondary"
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
