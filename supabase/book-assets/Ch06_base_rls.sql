
create policy "access own user data"
on "public"."service_users"
as permissive
for select
to authenticated
using ((supabase_user = auth.uid()));


create policy "allow reading own permissions"
on "public"."tenant_permissions"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT
   FROM service_users su
  WHERE ((su.id = tenant_permissions.service_user) AND (su.supabase_user = auth.uid())))));


create policy "can read tenant if has permissions"
on "public"."tenants"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT
   FROM tenant_permissions tp
  WHERE (tp.tenant = tenants.id))));
