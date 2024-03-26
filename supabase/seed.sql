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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '02906fc4-7b24-47ec-abc3-6c6970be75bd', 'authenticated', 'authenticated', 'clark@packt.local', '$2a$10$rof0w3KYnDFgQSwbAB9tYOORaxwSkSFiP6s8ayuxTBytCmWm72D3a', '2024-03-24 09:55:03.824778+00', NULL, '', '2024-03-24 09:54:53.682463+00', '', NULL, '', '', NULL, '2024-03-24 09:55:03.825775+00', '{"tenants": ["packt"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-24 09:54:53.65589+00', '2024-03-24 09:55:03.830793+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', 'f59a7592-2150-400b-8a37-f967594df8f9', 'authenticated', 'authenticated', 'other@packt.local', '$2a$10$d5WAWXhTUJzF9JdWkNyBTuI/rnReLSpaylhkxMs8yBuOlhevQwB9K', '2024-03-19 14:31:14.227636+00', NULL, '', '2024-03-19 14:25:16.747778+00', '', NULL, '', '', NULL, '2024-03-19 14:31:14.228622+00', '{"tenants": ["packt"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-19 14:25:16.722627+00', '2024-03-21 15:46:18.581403+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', '99da03b3-6de9-4891-9b69-c5ed037523e9', 'authenticated', 'authenticated', 'sarah@activenode.learn', '$2a$10$WeWc7J7piwtGS2JuGa3opejpxOL8QH8eqsaAihSBrM3l0zIuwojC.', '2024-03-24 10:09:28.874425+00', NULL, '', '2024-03-24 09:57:00.7854+00', '', NULL, '', '', NULL, '2024-03-26 12:12:41.978288+00', '{"tenants": ["activenode"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-24 09:57:00.763373+00', '2024-03-26 13:34:51.76764+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'authenticated', 'authenticated', 'icecream@cool.local', '$2a$10$TInzust1m75k7NZcBvilTe5UDwp3dApfTKOJNCYbTAEnkEOUCyCXe', '2024-01-05 18:12:26.316064+00', NULL, '', NULL, '', '2024-02-20 20:43:38.953008+00', '', '', NULL, '2024-03-26 12:36:22.475656+00', '{"tenants": ["packt", "oddmonkey"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-05 18:12:26.308851+00', '2024-03-26 13:40:59.84797+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '{"sub": "631e3d0c-26a1-47f9-b19b-6942f5df2eb6", "email": "icecream@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2024-01-05 18:12:26.311789+00', '2024-01-05 18:12:26.312057+00', '2024-01-05 18:12:26.312057+00', '51bf96d6-07f8-40fc-a4c7-3e28a89768b8'),
	('f59a7592-2150-400b-8a37-f967594df8f9', 'f59a7592-2150-400b-8a37-f967594df8f9', '{"sub": "f59a7592-2150-400b-8a37-f967594df8f9", "email": "other@packt.local", "email_verified": false, "phone_verified": false}', 'email', '2024-03-19 14:25:16.723697+00', '2024-03-19 14:25:16.723721+00', '2024-03-19 14:25:16.723721+00', 'ff7d19f0-1df4-488d-89b4-31d691828908'),
	('02906fc4-7b24-47ec-abc3-6c6970be75bd', '02906fc4-7b24-47ec-abc3-6c6970be75bd', '{"sub": "02906fc4-7b24-47ec-abc3-6c6970be75bd", "email": "clark@packt.local", "email_verified": false, "phone_verified": false}', 'email', '2024-03-24 09:54:53.656942+00', '2024-03-24 09:54:53.656966+00', '2024-03-24 09:54:53.656966+00', '7c8eeb58-45e5-422c-a3a9-f5bb5fc36908'),
	('99da03b3-6de9-4891-9b69-c5ed037523e9', '99da03b3-6de9-4891-9b69-c5ed037523e9', '{"sub": "99da03b3-6de9-4891-9b69-c5ed037523e9", "email": "sarah@activenode.learn", "email_verified": false, "phone_verified": false}', 'email', '2024-03-24 09:57:00.764467+00', '2024-03-24 09:57:00.764491+00', '2024-03-24 09:57:00.764491+00', 'abda4701-d946-44fc-89b3-e67394771dd1');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "full_name", "is_available", "job_title") VALUES
	(1, '2024-01-23 15:00:51.078963+00', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'David Lorenz', true, 'Architect'),
	(15, '2024-03-24 09:54:53.667391+00', '02906fc4-7b24-47ec-abc3-6c6970be75bd', 'Clark Trepton', true, 'Team Manager'),
	(14, '2024-03-19 14:25:16.734549+00', 'f59a7592-2150-400b-8a37-f967594df8f9', 'Other', false, 'Project Manager'),
	(16, '2024-03-24 09:57:00.774255+00', '99da03b3-6de9-4891-9b69-c5ed037523e9', 'Sarah Port', false, 'Engineer');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2024-01-30 17:25:27.594947+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2024-01-30 17:25:55.834972+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2024-01-30 17:27:37.027736+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tickets" ("id", "created_at", "title", "description", "created_by", "tenant", "status", "author_name", "assignee", "assignee_name") VALUES
	(2, '2024-03-19 14:16:07.588245+00', 'Learn more about Next.js', 'Next.js is a great tool for creating production applications', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(3, '2024-03-19 14:16:47.572412+00', 'Implement AI search with pgvector', 'Let''s implement a wonderful, content-based search', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(4, '2024-03-19 14:17:39.859252+00', 'Build a concept for your own startup', 'You can do it!', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(5, '2024-03-19 14:19:23.018632+00', 'Subscribe @activenode on YouTube', 'It''s worth it', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(6, '2024-03-19 14:19:50.391732+00', 'Read more packt books', 'Become a wonderful engineer', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(7, '2024-03-19 14:31:38.886812+00', 'Make sure to create more tickets', 'Or else we won''t have enough data to filter and test', 14, 'packt', 'open', 'Other', NULL, NULL),
	(8, '2024-03-19 14:32:03.629425+00', 'Take a break after coding', 'Make yourself a good drink or a healthy meal', 14, 'packt', 'open', 'Other', NULL, NULL),
	(9, '2024-03-19 14:32:57.746782+00', 'Put some plants in the room', 'It really helps and Monstera plants are easy to handle', 14, 'packt', 'open', 'Other', NULL, NULL),
	(10, '2024-03-19 14:33:27.814411+00', 'Stay friendly ', 'Friendliness is paid pack with friendliness and help, even if the other side doesn''t immediately respond friendly.', 14, 'packt', 'open', 'Other', NULL, NULL),
	(11, '2024-03-19 14:34:22.256265+00', 'Buy a standing desk', 'It helps not getting back pain', 14, 'packt', 'open', 'Other', NULL, NULL),
	(12, '2024-03-19 14:35:33.260424+00', 'Get a radio alarm ', '...and remove your smartphone from the bedroom :)', 14, 'packt', 'open', 'Other', NULL, NULL),
	(13, '2024-03-19 14:36:17.114092+00', 'Promote your own stuff', 'Don''t be too humble, no one will know what you do when you don''t tell.', 14, 'packt', 'open', 'Other', NULL, NULL),
	(14, '2024-03-19 14:37:02.376117+00', 'Leave a good trace in this world', 'Do what you can do to make the world a better place', 14, 'packt', 'open', 'Other', NULL, NULL),
	(1, '2024-03-19 11:21:47.383329+00', 'Make sure to show the author''s name', 'Showing the author name in the ticket is important', 1, 'packt', 'open', 'David Lorenz', NULL, NULL),
	(18, '2024-03-26 11:06:52.091522+00', 'Just a ticket on activenode.learn', 'Hello there!', 16, 'activenode', 'open', 'Sarah Port', NULL, NULL),
	(17, '2024-03-25 12:41:24.605599+00', 'Creating my first ticket with an assignee', 'Initially the assignee was set to Clark Trepton.', 1, 'packt', 'open', 'David Lorenz', 1, 'David Lorenz'),
	(19, '2024-03-26 13:36:47.160953+00', 'Bake a cake!', 'Whoever wants to do it, I''d be happy to eat it.', 16, 'activenode', 'open', 'Sarah Port', NULL, NULL);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."comments" ("id", "created_at", "tenant", "created_by", "author_name", "comment_text", "ticket") VALUES
	(3, '2024-03-26 12:21:49.088216+00', 'activenode', 16, 'Sarah Port', 'A lovely comment section!', 18),
	(4, '2024-03-26 12:23:28.305001+00', 'activenode', 16, 'Sarah Port', 'Another comment', 18),
	(5, '2024-03-26 12:36:43.718334+00', 'packt', 1, 'David Lorenz', 'A wonderful comment in the packt tenant', 17);


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2030-01-31 08:58:28+00', 1, 'packt'),
	(2, '2030-01-31 08:58:38+00', 1, 'oddmonkey'),
	(12, '2024-03-19 14:25:16.74138+00', 14, 'packt'),
	(13, '2024-03-24 09:54:53.675005+00', 15, 'packt'),
	(14, '2024-03-24 09:57:00.778987+00', 16, 'activenode');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 259, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."comments_id_seq"', 5, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 16, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 14, true);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tickets_id_seq"', 19, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
