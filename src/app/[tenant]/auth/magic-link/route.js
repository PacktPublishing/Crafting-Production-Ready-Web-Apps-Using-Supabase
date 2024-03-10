import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";
import { sendOTPLink } from "@/utils/sendOTPLink";

export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";

  const errorUrl = buildUrl(`/error?type=${type}`, params.tenant, request);
  const thanksUrl = buildUrl(
    `/magic-thanks?type=${type}`,
    params.tenant,
    request,
  );

  const otpSuccess = await sendOTPLink(email, type, params.tenant, request);

  if (!otpSuccess) {
    return NextResponse.redirect(errorUrl, 302);
  } else {
    return NextResponse.redirect(thanksUrl, 302);
  }
}
