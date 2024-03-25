"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useEffect, useState } from "react";

export function AssigneeSelect({ tenant, onValueChanged }) {
  const [users, setUsers] = useState(null);
  const supabase = getSupabaseBrowserClient();

  useEffect(() => {
    supabase
      .rpc("get_tenant_userlist", {
        tenant_id: tenant,
      })
      .then(({ data }) => {
        setUsers(data ?? []);
      });
  }, []);

  return (
    <select
      name="assignee"
      disabled={users === null}
      onChange={(e) => {
        onValueChanged(e.target.value);
      }}
    >
      <option value="">{users === null ? "Loading..." : "No assignee"}</option>
      {users &&
        users.map((user) => {
          return (
            <option key={user.id} value={user.id}>
              {user.full_name}
            </option>
          );
        })}
    </select>
  );
}
