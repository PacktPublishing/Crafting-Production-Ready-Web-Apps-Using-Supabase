import Link from "next/link";

export default function Nav() {
  return (
    <nav>
      <ul>
        <li>
          <Link href="/tickets">Ticket List</Link>
        </li>
        <li>
          <Link href="/tickets/new">Create new Ticket</Link>
        </li>
        <li>
          <Link href="/tickets/users">User List</Link>
        </li>
      </ul>
    </nav>
  );
}
