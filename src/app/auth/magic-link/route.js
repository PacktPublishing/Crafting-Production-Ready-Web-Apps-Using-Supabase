import { createCookiesUtilSupabase } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

export async function POST(request) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabase = createCookiesUtilSupabase({ request });

  const { data, error } = await supabase.auth.signInWithOtp({
    email,
    options: { shouldCreateUser: false },
  });

  if (error) {
    return NextResponse.redirect(
      new URL("/error?type=magiclink", request.url),
      302
    );
  }
  const thanksUrl = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksUrl, 302);
}
