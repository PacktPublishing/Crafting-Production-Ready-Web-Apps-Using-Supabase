import { createClient } from "@supabase/supabase-js";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function POST(request) {
  const formData = await request.formData();
  const email = formData.get("email");

  const supabaseAdminClient = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY
  );

  const { data: linkData } = await supabaseAdminClient.auth.admin.generateLink({
    email,
    type: "magiclink",
  });

  if (linkData?.properties) {
    const { hashed_token } = linkData.properties;

    const constructedLink = new URL(
      `/auth/validate-token?token=${hashed_token}`,
      request.url
    );

    const transporter = nodemailer.createTransport({
      host: "0.0.0.0",
      port: 54325,
    });

    await transporter.sendMail({
      from: "Your <company@whatever>",
      to: email,
      subject: "Magic Link",
      html: `
      <h1>Hi there, this is a custom magic link email!</h1>
      <p>Click <a href="${constructedLink.toString()}">here</a> to log in.</p>
      `,
    });

    return NextResponse.redirect(new URL("/thanks?type=magic", request.url), {
      status: 302,
    });
  }

  return NextResponse.redirect(new URL("/error?type=magiclink", request.url), {
    status: 302,
  });
}
