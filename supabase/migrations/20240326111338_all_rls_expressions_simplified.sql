create schema if not exists "rls_helpers";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION rls_helpers.has_tenant_access(tenant_id text)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN (COALESCE(
   (auth.jwt() -> 'app_metadata' -> 'tenants') ? tenant_id,
   false
  ));
END;$function$
;

CREATE OR REPLACE FUNCTION rls_helpers.is_same_user(service_user_id bigint)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN (
    EXISTS (
     SELECT FROM service_users
     WHERE
      id=service_user_id AND
      supabase_user = auth.uid()
    )
  );
END;
$function$
;


drop policy "allow reading own permissions" on "public"."tenant_permissions";

drop policy "can read tenant if has permissions" on "public"."tenants";

drop policy "allow deletion of own tickets" on "public"."tickets";

drop policy "allow inserting a ticket to allowed tenants" on "public"."tickets";

drop policy "allow reading tickets of allowed tenant" on "public"."tickets";

drop policy "allow updating on allowed tenant" on "public"."tickets";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.derive_tenant_from_ticket()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.tenant = (SELECT t.tenant FROM tickets t WHERE t.id = NEW.ticket);
  RETURN NEW;
END;$function$
;

create policy "allow selecting all comments by tenant access"
on "public"."comments"
as permissive
for select
to authenticated
using (rls_helpers.has_tenant_access(tenant));


create policy "allow to add a comment on allowed tenants"
on "public"."comments"
as permissive
for insert
to authenticated
with check (rls_helpers.has_tenant_access(tenant));


create policy "allow to delete comment if has created"
on "public"."comments"
as permissive
for delete
to authenticated
using (rls_helpers.is_same_user(created_by));


create policy "allow reading own permissions"
on "public"."tenant_permissions"
as permissive
for select
to authenticated
using (rls_helpers.is_same_user(service_user));


create policy "can read tenant if has permissions"
on "public"."tenants"
as permissive
for select
to authenticated
using (rls_helpers.has_tenant_access(id));


create policy "allow deletion of own tickets"
on "public"."tickets"
as permissive
for delete
to authenticated
using (rls_helpers.is_same_user(created_by));


create policy "allow inserting a ticket to allowed tenants"
on "public"."tickets"
as permissive
for insert
to authenticated
with check (rls_helpers.has_tenant_access(tenant));


create policy "allow reading tickets of allowed tenant"
on "public"."tickets"
as permissive
for select
to authenticated
using (rls_helpers.has_tenant_access(tenant));


create policy "allow updating on allowed tenant"
on "public"."tickets"
as permissive
for update
to authenticated
using (rls_helpers.has_tenant_access(tenant))
with check (rls_helpers.has_tenant_access(tenant));


CREATE TRIGGER tr_comments_set_tenant_id BEFORE INSERT OR UPDATE ON public.comments FOR EACH ROW EXECUTE FUNCTION derive_tenant_from_ticket();
