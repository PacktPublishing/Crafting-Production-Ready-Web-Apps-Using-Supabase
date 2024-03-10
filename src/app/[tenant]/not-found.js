"use client";
import ErrorPage from "next/error";

export default function NotFound() {
  return <ErrorPage statusCode={404} />;
}
