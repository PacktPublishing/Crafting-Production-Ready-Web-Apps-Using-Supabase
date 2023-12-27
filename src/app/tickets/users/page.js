export default function UserList() {
  const users = [
    {
      name: "Alice Ling",
      job: "Software Engineer",
      isAvailable: false,
    },
    {
      name: "Harry Green",
      job: "QA Engineer",
      isAvailable: false,
    },
    {
      name: "Trudy Torres",
      job: "Project Manager",
      isAvailable: true,
    },
  ];

  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        {users.map((user) => (
          <tr key={user.name}>
            <td>{user.name}</td>
            <td>{user.job}</td>
            <td>{user.isAvailable ? "Available" : "Not available"}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
