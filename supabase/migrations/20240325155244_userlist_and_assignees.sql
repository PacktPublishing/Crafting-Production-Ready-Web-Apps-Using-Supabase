alter table "public"."service_users" add column "is_available" boolean not null default true;

alter table "public"."service_users" add column "job_title" text;

alter table "public"."tickets" add column "assignee" bigint;

alter table "public"."tickets" add column "assignee_name" text;

alter table "public"."tickets" add constraint "public_tickets_assignee_fkey" FOREIGN KEY (assignee) REFERENCES service_users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."tickets" validate constraint "public_tickets_assignee_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_tenant_userlist(tenant_id text)
 RETURNS jsonb
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$DECLARE
has_access bool;

BEGIN
  has_access = (EXISTS(SELECT FROM service_users s, tenant_permissions p WHERE s.supabase_user=auth.uid() AND s.id=p.service_user AND p.tenant = tenant_id));

  IF (has_access != true) THEN
    RAISE EXCEPTION 'no access to the data';
  END IF;

  RETURN (
    SELECT jsonb_agg(sub) FROM ( 
    SELECT s.id, s.full_name, s.job_title, s.is_available
    FROM service_users s, tenant_permissions p
    WHERE s.id = p.service_user AND p.tenant = tenant_id) sub
  );
END;
$function$
;

CREATE OR REPLACE FUNCTION public.set_ticket_assignee_name()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  IF (NEW.assignee IS NULL) THEN
    NEW.assignee_name = NULL;
  ELSE
    NEW.assignee_name = (SELECT full_name FROM service_users WHERE id = NEW.assignee);
  END IF;
  
  RETURN NEW;
END;
$function$
;

create policy "allow updating on allowed tenant"
on "public"."tickets"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false))
with check (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false));


CREATE TRIGGER tr_tickets_autoset_assignee_name BEFORE INSERT OR UPDATE ON public.tickets FOR EACH ROW EXECUTE FUNCTION set_ticket_assignee_name();


