import Link from "next/link";

export const metadata = {
  title: "My App Page Title",
};

export default function Page() {
  return (
    <div>
      <h1>Hello App Page</h1>
      <ul>
        <li>
          <Link className="highlight" href="/with-context-sample">
            Page with <strong>React Helpers</strong> usage
          </Link>
        </li>
        <li>
          <Link className="highlight" href="/without-context-sample">
            Page without <strong>React Helpers</strong>
          </Link>
        </li>
        <li>
          <Link className="highlight" href="/server-component-sample">
            <strong>Server Component only</strong> Sample
          </Link>
        </li>
        <li>
          <Link className="highlight" href="/server-action-sample">
            Page with <strong>Server Action</strong> usage
          </Link>
        </li>
      </ul>
    </div>
  );
}
