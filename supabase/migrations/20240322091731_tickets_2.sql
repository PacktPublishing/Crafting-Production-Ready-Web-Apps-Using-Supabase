create policy "allow deletion of own tickets"
on "public"."tickets"
as permissive
for delete
to authenticated
using ((EXISTS ( SELECT
   FROM service_users
  WHERE ((service_users.id = tickets.created_by) AND (service_users.supabase_user = auth.uid())))));



