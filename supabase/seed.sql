SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'authenticated', 'authenticated', 'icecream@cool.local', '$2a$10$TInzust1m75k7NZcBvilTe5UDwp3dApfTKOJNCYbTAEnkEOUCyCXe', '2024-01-05 18:12:26.316064+00', NULL, '', NULL, '', '2024-02-08 20:19:33.739652+00', '', '', NULL, '2024-02-09 14:47:16.582925+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-05 18:12:26.308851+00', '2024-02-11 13:56:51.198559+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '{"sub": "631e3d0c-26a1-47f9-b19b-6942f5df2eb6", "email": "icecream@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2024-01-05 18:12:26.311789+00', '2024-01-05 18:12:26.312057+00', '2024-01-05 18:12:26.312057+00', '51bf96d6-07f8-40fc-a4c7-3e28a89768b8');




--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "full_name") VALUES
	(1, '2024-01-23 15:00:51.078963+00', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'David Lorenz');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2024-01-30 17:25:27.594947+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2024-01-30 17:25:55.834972+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2024-01-30 17:27:37.027736+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2030-01-31 08:58:28+00', 1, 'packt'),
	(2, '2030-01-31 08:58:38+00', 1, 'oddmonkey');





--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 61, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
