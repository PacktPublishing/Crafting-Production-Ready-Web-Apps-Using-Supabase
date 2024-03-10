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

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") VALUES
	('41df73df-c68a-43c2-b944-27b42994dbbc', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'fc695f28-e562-44c2-ae4c-3ba5fad4a28c', 's256', 'AiWmFNGMRZXsmKP4KkOW03hKrvkzQtSUwCXsea-sUvQ', 'magiclink', '', '', '2024-01-07 17:34:37.631682+00', '2024-01-07 17:34:37.631682+00', 'magiclink'),
	('932e11af-bb49-4c15-88fe-b8fd6f51de77', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '510de00e-e185-4e13-b78b-04392a492ba9', 's256', 'LU84Q7mzvGKhpkTGDxPWyJt7cbQqBLLAnwYSPV5czVs', 'magiclink', '', '', '2024-01-10 20:50:17.118674+00', '2024-01-10 20:50:17.118674+00', 'magiclink'),
	('88bebd7d-4259-4662-acd3-0acbd059503b', NULL, 'e193638d-1597-4ecb-8e52-8ca8f205bde6', 's256', 'eh29om7PTDduRbOsEOe-TgkSBPoVhAg3nsKRKVF-p90', 'google', '', '', '2024-02-26 11:27:00.549548+00', '2024-02-26 11:27:00.549548+00', 'oauth'),
	('5eb9330d-2dd1-4003-a124-b5cd3bfc2848', NULL, 'ea4baf77-c647-43b4-8c73-6d419f25e649', 's256', 'zOeaREZ4LdfhOJIfWTTWJE07hOdg-LuV5jUXCLjHmzI', 'google', '', '', '2024-02-26 11:29:30.445586+00', '2024-02-26 11:29:30.445586+00', 'oauth'),
	('64563943-edbd-4479-a428-33cf8f345e0d', NULL, 'b5daafea-97ef-43e6-9a7a-ce987322c8e7', 's256', 'XKNO9j3jCWo6wZNwne_DX6fVhdkhPKkRJRqjkeYS1HY', 'google', '', '', '2024-02-26 11:31:23.776553+00', '2024-02-26 11:31:23.776553+00', 'oauth'),
	('35b94f70-52f1-4a83-8ffb-bcc8b0689ff4', NULL, '1dabdc48-a3f9-47bd-bfdd-e77052f79568', 's256', 'OY4jpFAm8qZ9MJ4g2nnlAv0wcos3Dg-eOFBEyRcmqfU', 'google', '', '', '2024-02-26 11:31:33.015634+00', '2024-02-26 11:31:33.015634+00', 'oauth'),
	('5c52790c-55d7-4d91-80f7-b0fc1ded1144', NULL, '81c12051-538d-48b3-a8f4-aa6581ed934f', 's256', 'Wnkrjz41Il8Ep5iPHBeeBxvOYj8paf_GSgzTNEpcrz4', 'google', '', '', '2024-02-26 11:34:46.225273+00', '2024-02-26 11:34:46.225273+00', 'oauth'),
	('74bc6265-bcb1-48c9-9a8e-e480903a602b', NULL, 'fd8dd7d5-561a-4c8a-8a06-4e1a4de71cb5', 's256', 'Bbh5pFBNvGYROwNmP8ebZ3nYwIznGwjZQ3pHVXzx7tk', 'google', '', '', '2024-02-26 11:35:24.365786+00', '2024-02-26 11:35:24.365786+00', 'oauth'),
	('5fed0673-9323-4788-bc5a-c9470d137a6e', NULL, '0cff7e0e-48c0-47bb-acc5-f4d21b1502fc', 's256', 'IvzFY4ba4GmXTVGIqGXtwN50kfVD8UxUlMX3zhUmRog', 'google', '', '', '2024-02-26 11:47:53.098293+00', '2024-02-26 11:47:53.098293+00', 'oauth'),
	('5ec7efbb-ebc8-4000-9530-c6af4fbd5838', NULL, '8e5b0eda-27ac-4a47-b494-10111144608b', 's256', 'ruApIObLI9YsDHPZy8GhG-DtQiwTsqMHmgSpit8zw_I', 'google', '', '', '2024-02-26 11:51:12.081979+00', '2024-02-26 11:51:12.081979+00', 'oauth'),
	('0ba4bfe0-0cde-41bb-af7b-a129154a0d60', NULL, '7279ad87-643c-4c96-8df5-cfa9f80ed726', 's256', 'QdUPoOilSUryi-_Nah91e13DUqgT-kd_6IDeRMPvHZU', 'google', '', '', '2024-02-26 11:57:28.517067+00', '2024-02-26 11:57:28.517067+00', 'oauth'),
	('40d3caa1-94b2-4ef5-b6dc-a886f7aa4b57', NULL, 'b389cbe1-28c4-4c4c-819c-9edcc281aed7', 's256', 'iXf38a4CUvv4776zrkWe4nr1-5JjIOPxgAvuPWWYllg', 'google', '', '', '2024-02-26 12:01:04.273009+00', '2024-02-26 12:01:04.273009+00', 'oauth'),
	('1e0d9c57-2356-44dc-b87a-a0560391c654', NULL, '245654e2-d9fa-48fe-8b83-959264f281cd', 's256', 'QUlhqVgqd0KWgSHn1QW7TKeuIHwDTchg8PG-XIMx1r8', 'google', '', '', '2024-02-26 12:09:47.413218+00', '2024-02-26 12:09:47.413218+00', 'oauth'),
	('97c5a5c4-a13a-4a57-ad2e-2a8500b9ecd0', NULL, '410cfdfc-cb15-4c57-9a76-ba57f5794020', 's256', 'hl-tkeCSmaLlZwMQACBVdhR4W15P_aIz-rpQ2wmnpTc', 'google', '', '', '2024-02-26 12:38:32.807004+00', '2024-02-26 12:38:32.807004+00', 'oauth'),
	('4fc51219-63db-45bf-b161-6857975d4bec', NULL, 'c626456a-a878-4e9d-af87-c8b6823bc845', 's256', 'EQlhpphxorAxikZkpHy7JE6VNsdhMs4JIW2ce6xJmss', 'google', '', '', '2024-02-26 12:40:51.207339+00', '2024-02-26 12:40:51.207339+00', 'oauth'),
	('473a5cfd-e209-41ab-8b0c-da474044903e', NULL, 'f6317e5a-63b6-47b4-be26-9f38287c7c0d', 's256', 'j47a3xDbc340J4V1wruzGklH1jKzitaQiwy3nuMhWfA', 'google', '', '', '2024-02-26 12:44:20.432168+00', '2024-02-26 12:44:20.432168+00', 'oauth'),
	('16354a62-1aa3-48de-bb6c-4425d82c607e', NULL, 'c893aee1-e11e-466b-963c-a69427644bf3', 's256', '3K3Uz8hWuEhIdziDuiT-Y7eCUQG-hyOU-33crk_yfc0', 'google', '', '', '2024-02-26 12:50:59.785855+00', '2024-02-26 12:50:59.785855+00', 'oauth'),
	('6407d127-99ec-4189-8bbd-8a0037781674', NULL, 'b733987e-9b80-46ef-a064-631cd4b01a95', 's256', 'tTN0a2YEbB-Nlnmbx7m9a3XqJwVdeeGhF9bv_zYNdJI', 'google', '', '', '2024-02-26 12:55:58.954193+00', '2024-02-26 12:55:58.954193+00', 'oauth'),
	('6590234d-dcba-463d-a180-04f8d7f4aa7b', NULL, 'f5f4e846-6a3f-432c-a350-f82778d35aa8', 's256', 'qw15KkbpZbDg-hbpfCib9425WOoCoHHl_1GB1gsmWQw', 'google', '', '', '2024-02-26 13:02:33.896164+00', '2024-02-26 13:02:33.896164+00', 'oauth'),
	('fee5bfff-049e-4415-b44b-4381cee1369b', NULL, '03f0b460-d51d-4924-b017-ef772c7c8d61', 's256', 'fdEWcNv_p80hOTw-Yfm0SiWee6UiJ2kDzZzkLu4W_uc', 'google', '', '', '2024-02-26 13:04:13.875986+00', '2024-02-26 13:04:13.875986+00', 'oauth'),
	('6ff64542-acdf-4870-b8cd-c9e5121334c0', NULL, 'a005d9cd-aa27-49e0-b028-aaec338a4f14', 's256', '-UwZHg3kihl3cbYqdXdG80EJjvJ0qxUiy484DHIjVgc', 'google', '', '', '2024-02-26 13:13:54.959126+00', '2024-02-26 13:13:54.959126+00', 'oauth'),
	('a3a1425e-7119-4355-a534-179a529f34b8', NULL, '7f58981c-b377-4a0a-bb9c-e7c8eddde30f', 's256', 'vFzunkCkh-MFi1YN55T1mtOX5MTGtDKlznf5wv6jn5c', 'google', '', '', '2024-02-26 13:23:12.188146+00', '2024-02-26 13:23:12.188146+00', 'oauth'),
	('34f6b985-25dc-4020-baa9-c4ed96911bbd', NULL, 'cf691f85-b9ee-4063-bd66-98320e37e674', 's256', 'hGfRRt0GIgOCnhpgDhiEuyUdkVKBttq00XcRTiHwVVY', 'google', '', '', '2024-02-26 13:25:09.952652+00', '2024-02-26 13:25:09.952652+00', 'oauth'),
	('b32dc876-0ec7-433e-a18a-73c888b90774', NULL, 'c2879718-180d-4d40-accb-b08d8c249fb2', 's256', 'uNtDP6Ol5FgtrnSdOAabH2ltQyEC38VBEJq7HuXxw5c', 'google', '', '', '2024-02-26 13:32:50.157305+00', '2024-02-26 13:32:50.157305+00', 'oauth'),
	('82f484eb-9959-447c-8612-a6e8c7e9433b', NULL, 'c763c064-8eab-485d-8277-be6ac5e14d9f', 's256', 'm81VNb5pqhB6oNDgZ8ZU8_dFdabIPYibKSz4BKagyGk', 'google', '', '', '2024-02-26 17:01:00.206807+00', '2024-02-26 17:01:00.206807+00', 'oauth'),
	('4b68d718-cd5d-4553-be29-4499bd23b999', NULL, '229c035f-4f68-41d4-8889-e2968ec70a00', 's256', '9MFK3r-Bu2uNSNYoeCaQyViQXazohVEjW8ZdZtRJAvA', 'google', '', '', '2024-02-27 10:52:54.720023+00', '2024-02-27 10:52:54.720023+00', 'oauth'),
	('01566c84-8a76-4c57-b162-1ed95bca93a8', NULL, 'e2b3e8b9-67ae-4476-8ab5-8226b7c407cc', 's256', 'ry4sGyWvvKteZkZ0tP1EPoJB0yb7sKqdsBY3bb9Kz4E', 'google', '', '', '2024-02-27 11:03:25.416186+00', '2024-02-27 11:03:25.416186+00', 'oauth'),
	('55edc6ac-3154-402d-8e88-b56e6239a770', NULL, '1c666d70-e175-4f08-8cc6-ba207f50c7be', 's256', 'aDOwOLVjSGNkb8tisz3ef8qBovMw_mEuH41Mh5vNqa0', 'google', '', '', '2024-02-27 17:21:43.577316+00', '2024-02-27 17:21:43.577316+00', 'oauth');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'authenticated', 'authenticated', 'icecream@cool.local', '$2a$10$TInzust1m75k7NZcBvilTe5UDwp3dApfTKOJNCYbTAEnkEOUCyCXe', '2024-01-05 18:12:26.316064+00', NULL, '', NULL, '', '2024-02-20 20:43:38.953008+00', '', '', NULL, '2024-03-09 13:47:13.187475+00', '{"tenants": ["packt", "oddmonkey"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-05 18:12:26.308851+00', '2024-03-10 11:21:32.574589+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '{"sub": "631e3d0c-26a1-47f9-b19b-6942f5df2eb6", "email": "icecream@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2024-01-05 18:12:26.311789+00', '2024-01-05 18:12:26.312057+00', '2024-01-05 18:12:26.312057+00', '51bf96d6-07f8-40fc-a4c7-3e28a89768b8');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('bd8b3f02-9904-4e6a-827b-0afa94cad60c', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '2024-03-09 13:47:13.187572+00', '2024-03-10 11:21:32.576316+00', NULL, 'aal1', NULL, '2024-03-10 11:21:32.576269', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:123.0) Gecko/20100101 Firefox/123.0', '172.19.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('bd8b3f02-9904-4e6a-827b-0afa94cad60c', '2024-03-09 13:47:13.198029+00', '2024-03-09 13:47:13.198029+00', 'password', 'f7be038e-8429-4889-8874-1ded6d8bf880');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 138, 'QtW7cijoqYc72Nk3OjFuYA', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-09 13:47:13.191118+00', '2024-03-09 14:45:28.721596+00', NULL, 'bd8b3f02-9904-4e6a-827b-0afa94cad60c'),
	('00000000-0000-0000-0000-000000000000', 139, 'Ky0PqoafHKxpTqHjf0Vwiw', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-09 14:45:28.723119+00', '2024-03-10 11:21:32.57259+00', 'QtW7cijoqYc72Nk3OjFuYA', 'bd8b3f02-9904-4e6a-827b-0afa94cad60c'),
	('00000000-0000-0000-0000-000000000000', 140, '4NemMM6jnGkEXRC6M55nQQ', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', false, '2024-03-10 11:21:32.573276+00', '2024-03-10 11:21:32.573276+00', 'Ky0PqoafHKxpTqHjf0Vwiw', 'bd8b3f02-9904-4e6a-827b-0afa94cad60c');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 140, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 11, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 9, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
