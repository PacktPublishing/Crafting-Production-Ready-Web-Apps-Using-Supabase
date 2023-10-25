import { createRouteHandlerClient } from "@supabase/auth-helpers-nextjs";
import { createClient } from "@supabase/supabase-js";
import { cookies } from "next/headers";
import { NextResponse } from "next/server";

export async function GET(request) {
  const { searchParams } = new URL(request.url);
  const token = searchParams.get("token");

  const supabase = createRouteHandlerClient({ cookies });

  const { error } = await supabase.auth.verifyOtp({
    type: "magiclink",
    token_hash: token,
  });

  if (error) {
    return NextResponse.json({ error: "Sorry, link is invalid" });
  } else {
    const type = searchParams.get("type");
    if (type === "recovery") {
      return NextResponse.redirect(
        new URL("/tickets/reset-password", request.url)
      );
    } else {
      return NextResponse.redirect(new URL("/tickets", request.url));
    }
  }
}
