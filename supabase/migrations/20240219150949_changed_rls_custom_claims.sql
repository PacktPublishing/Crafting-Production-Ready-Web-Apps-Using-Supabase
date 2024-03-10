drop policy "can read tenant if has permissions" on "public"."tenants";

create policy "can read tenant if has permissions"
on "public"."tenants"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? id), false));



