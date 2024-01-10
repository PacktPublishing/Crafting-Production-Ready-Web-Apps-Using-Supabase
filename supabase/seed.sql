SET session_replication_role = replica;\n
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

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'c35ad07b-76d0-4708-9662-b3ce0397f69a', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"icecream@cool.local","user_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","user_phone":""}}', '2024-01-05 18:12:26.313217+00', ''),
	('00000000-0000-0000-0000-000000000000', '422e9529-14ea-4f2a-8b26-6429480eab8e', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-01-05 18:12:29.237322+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'authenticated', 'authenticated', 'icecream@cool.local', '$2a$10$34BcJSA.lD.wXk35fr4C4uHbckZ223V8Lx/Ov1ULHb4iNbf9HwOF2', '2024-01-05 18:12:26.316064+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-01-05 18:12:29.237897+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-05 18:12:26.308851+00', '2024-01-05 18:12:29.243624+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


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
	('01639791-fbbc-49e4-80b5-743d26a48d8a', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '2024-01-05 18:12:29.237965+00', '2024-01-05 18:12:29.237965+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:121.0) Gecko/20100101 Firefox/121.0', '172.21.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('01639791-fbbc-49e4-80b5-743d26a48d8a', '2024-01-05 18:12:29.244094+00', '2024-01-05 18:12:29.244094+00', 'password', '1c29da5a-f740-418b-b695-9288b3ee6aa3');


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
	('00000000-0000-0000-0000-000000000000', 1, 'KFP_VjBjfSopt6OCOq4QIQ', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', false, '2024-01-05 18:12:29.240625+00', '2024-01-05 18:12:29.240625+00', NULL, '01639791-fbbc-49e4-80b5-743d26a48d8a');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
