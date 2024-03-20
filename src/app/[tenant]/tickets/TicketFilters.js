"use client";

export function TicketFilters({ tenant }) {
  return (
    <form>
      <div style={{ alignContent: "center", display: "flex", gap: "15px" }}>
        <input
          type="search"
          id="search"
          name="search"
          placeholder="Search tickets..."
          required
          style={{ margin: 0, maxWidth: "350px" }}
        />

        <button type="submit" role="button" style={{ width: "auto" }}>
          Search
        </button>
      </div>
    </form>
  );
}
