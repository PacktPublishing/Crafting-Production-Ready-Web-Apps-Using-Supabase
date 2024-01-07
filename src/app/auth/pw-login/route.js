import { NextResponse } from "next/server";

export async function POST(request) {
  return NextResponse.json({ message: "Hello from Route Handler" });
}
