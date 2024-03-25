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

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'bc1192f4-d6ac-41ec-aac4-50f0db94b26c', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-11 08:10:32.7151+00', ''),
	('00000000-0000-0000-0000-000000000000', '0011221c-93bc-449f-a45a-97e9a4accab3', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-11 09:08:50.977586+00', ''),
	('00000000-0000-0000-0000-000000000000', '50943c0b-66e0-46c9-aa05-13260d2f00c9', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-11 09:08:50.978569+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd04858dc-802d-4ada-85bb-873713e92402', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 16:09:15.862653+00', ''),
	('00000000-0000-0000-0000-000000000000', '52cb5eac-c421-4aeb-a4a7-a90a4235f580', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 16:09:15.86504+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc2ecec0-0509-41c6-940a-7e6a8b69749a', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-12 16:09:38.401122+00', ''),
	('00000000-0000-0000-0000-000000000000', '31e3579e-7366-439f-96f9-9ba5faa6f949', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-12 16:09:43.814012+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e219a4eb-a825-4850-aa6f-001b58225c48', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 17:07:56.373072+00', ''),
	('00000000-0000-0000-0000-000000000000', '8de9339f-ac17-4d41-8c57-7e891d2ba3f9', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 17:07:56.376038+00', ''),
	('00000000-0000-0000-0000-000000000000', '4688fe88-2c55-4b1d-b73e-3afaf4861a42', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 18:05:56.222964+00', ''),
	('00000000-0000-0000-0000-000000000000', '8fb93fef-0464-45c4-9726-30101c8f80c6', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-12 18:05:56.223941+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cd26468-ee05-4928-a0d3-81c0fd2309fb', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 07:38:19.444141+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f62cead-42ca-4e4d-a9a2-a236a11c04a8', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 07:38:19.448119+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c543180-73e0-4274-ad83-09a108abfd44', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 08:36:30.401753+00', ''),
	('00000000-0000-0000-0000-000000000000', '08d84bde-e9f8-413a-84a4-593546ec12f1', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 08:36:30.402728+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec2d6429-5a2a-4c66-aad8-75a1940083b1', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 09:34:31.601236+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e4f8642-1316-40e0-b5bf-65166f58a8a2', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 09:34:31.601879+00', ''),
	('00000000-0000-0000-0000-000000000000', '92957415-2171-49f5-b3d4-7f1782080ff5', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 10:32:34.275084+00', ''),
	('00000000-0000-0000-0000-000000000000', '7aec77b8-772d-4849-8f72-bf14792041a3', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 10:32:34.27591+00', ''),
	('00000000-0000-0000-0000-000000000000', '5af41b2e-c9c4-4f9e-80e1-86e1fc5a5dab', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 11:33:04.369803+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e789eed6-38da-497d-9fa8-cc52ec90dd96', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 11:33:04.370947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae906cee-ef48-4305-91de-94718040c4b1', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 12:31:04.715231+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1625577-700f-425a-8cbd-cc35f5864c95', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 12:31:04.716596+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3b4beb3-75d6-4378-a8d9-25fbeeed88a8', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 13:29:06.192351+00', ''),
	('00000000-0000-0000-0000-000000000000', '72bd0459-977b-435e-afb4-cd8a6075a559', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 13:29:06.194198+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e925f234-67f2-4c1f-b859-4ebf70b6fa95', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 16:40:01.505184+00', ''),
	('00000000-0000-0000-0000-000000000000', '8389ac3b-37f2-4f05-8d66-b52c8da6e1d6', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-13 16:40:01.508771+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b40e0e6a-41e8-4c26-8f64-a2985e4343a4', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-14 17:38:35.281318+00', ''),
	('00000000-0000-0000-0000-000000000000', '845f094b-6fdb-4342-a913-10fd9c22266f', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-14 17:38:35.283181+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa7c5888-4149-457d-9237-8ecb2bd90979', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-14 17:38:35.34553+00', ''),
	('00000000-0000-0000-0000-000000000000', '3551ae59-396d-41d4-b4c5-d9af09e6a8af', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-14 17:38:37.329722+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db2ae8dc-17b0-46b8-9a62-8b0063449315', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-14 17:38:37.799358+00', ''),
	('00000000-0000-0000-0000-000000000000', '89b093f0-ee44-42de-b559-943d3923b1bb', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-15 11:54:40.915662+00', ''),
	('00000000-0000-0000-0000-000000000000', '805d0fc4-a5e8-4c84-b215-96c43b789abf', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-15 11:54:40.918114+00', ''),
	('00000000-0000-0000-0000-000000000000', '335a0846-3fb1-4993-9f3f-072aa355f0c6', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 12:04:43.436469+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea7b7ffd-e70d-4699-a18a-f44e03bac3ab', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 12:04:43.437663+00', ''),
	('00000000-0000-0000-0000-000000000000', '63094d69-5ceb-4e10-9384-4c5174d1bc99', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 12:04:43.532925+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ece88d6c-0d30-4220-b858-bed4481ae6d9', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 12:04:44.344898+00', ''),
	('00000000-0000-0000-0000-000000000000', '9506549a-32a9-4e27-b76a-918427c2d405', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 12:04:44.939529+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd8c63bf-aba0-4de6-8b6a-64673e2cbb1e', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 13:27:17.208505+00', ''),
	('00000000-0000-0000-0000-000000000000', '5172a4bc-da4a-4421-9425-486074e05be3', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 13:27:17.20975+00', ''),
	('00000000-0000-0000-0000-000000000000', '65eba906-63c4-45dd-9689-e0f2d3308ebf', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 18:11:13.588571+00', ''),
	('00000000-0000-0000-0000-000000000000', '5951eabe-efef-4651-a39e-27d9b797e1cb', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-16 18:11:13.589923+00', ''),
	('00000000-0000-0000-0000-000000000000', '81ddb4ba-20ea-4c71-872f-2ce9e075d77c', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 08:15:35.175672+00', ''),
	('00000000-0000-0000-0000-000000000000', '42e34ee5-e6e8-4d1e-8137-ae8d36cf5534', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 08:15:35.177093+00', ''),
	('00000000-0000-0000-0000-000000000000', '3be7e9de-4dc9-462f-9a9c-b29ae4249ead', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 09:27:36.10455+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d926233-d1eb-4e17-876a-0cd1c711a6d7', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 09:27:36.105477+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b96c758-4fdd-4337-b350-bcc70e53b1f8', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 10:25:37.542033+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba87d5b9-7c7d-49f6-b14b-c63e72a9c34a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 10:25:37.542739+00', ''),
	('00000000-0000-0000-0000-000000000000', '718e505a-def6-4e4e-9ac8-76868ff63d14', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 11:24:35.087071+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8a846cd-c154-4d84-a2ad-e05c65acd5d4', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 11:24:35.091356+00', ''),
	('00000000-0000-0000-0000-000000000000', '6628c913-632f-47a1-93d0-4fec4f8eb155', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 11:50:22.54393+00', ''),
	('00000000-0000-0000-0000-000000000000', '33ff36d6-4142-4491-a3a5-d938697181b2', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 11:50:48.252745+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcfd8cd3-468d-4638-b84c-f3bf00a3f5cf', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 11:50:53.43706+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e70bbca4-e8e0-4503-8f58-b93e510b3084', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 11:54:12.606841+00', ''),
	('00000000-0000-0000-0000-000000000000', '562f4846-4932-43f1-8de8-210a6f7e0438', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 11:55:10.465313+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d0a3b07-6839-4d5f-94b5-f354e44c0049', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 12:06:22.892052+00', ''),
	('00000000-0000-0000-0000-000000000000', '74c80633-bbcf-47c6-89f6-215c00213b72', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 12:07:23.74509+00', ''),
	('00000000-0000-0000-0000-000000000000', '68bd5728-f4e9-4cfa-9884-f25c3aaafd14', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 12:10:30.344273+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a196285-6a76-4d09-916e-34dab39cebf1', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 12:16:21.855657+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8558ff6-1fb1-4cbe-9c11-23b2ff3241e4', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 12:22:04.740438+00', ''),
	('00000000-0000-0000-0000-000000000000', '47e73510-eb7b-48c9-9a74-0941bea4e910', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 12:22:30.848991+00', ''),
	('00000000-0000-0000-0000-000000000000', '02c52d85-55db-4874-bf3c-5db36d67da93', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 12:58:20.752965+00', ''),
	('00000000-0000-0000-0000-000000000000', '24bfff8c-f7a7-44bb-967b-2dcd780a7505', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:02:55.780108+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb807b18-75f4-484c-a175-c0aaa672f266', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:03:42.139235+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c731406-3a1b-4c86-b4c2-28673c82a4ee', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:03:42.322594+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d47fa52-1826-42ec-89d4-ba1938016b35', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:05:55.543081+00', ''),
	('00000000-0000-0000-0000-000000000000', '66541acc-7fdb-4a05-87cd-b9297b5c1fb3', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:06:00.749295+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffcf4e7b-169b-4351-b3ed-57b8e4e05f26', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:07:00.690042+00', ''),
	('00000000-0000-0000-0000-000000000000', '73ab7385-f294-4e55-8b79-f12aed107607', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:28:58.870074+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c973c5b4-5642-42af-b703-b33b4873b586', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:29:31.636192+00', ''),
	('00000000-0000-0000-0000-000000000000', '9516df7b-2ac6-4b38-8b33-fbb89af6985f', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:29:36.804124+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b8a2fb6-ab88-4df5-a47a-f8f723a6c605', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:31:24.325826+00', ''),
	('00000000-0000-0000-0000-000000000000', '4709c189-67e5-4aa1-aca8-203f9b397dac', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:31:24.469401+00', ''),
	('00000000-0000-0000-0000-000000000000', '44e4ed2d-3c70-4422-89d6-5570f21faf29', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:32:09.097583+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e43373a-f802-40f5-b4fb-0188b66b0248', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:32:09.237671+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd91acf6a-4c08-4ecb-a95e-2c46fca3c178', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:34:54.119795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4619378-ae29-468c-97d6-48b1e2a17b69', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:34:59.307044+00', ''),
	('00000000-0000-0000-0000-000000000000', '790edeed-a730-41d3-baaf-1cb640b144c3', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:36:22.27922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8ba3170-fa0c-4297-8410-75901c0f2447', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:36:27.552707+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9180107-47ed-4bf4-8e98-e7a1785c4ee1', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:39:49.637359+00', ''),
	('00000000-0000-0000-0000-000000000000', '2350b8ee-8a15-4a6e-b65d-6c5b9c2ab6c5', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:43:48.697999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddc47e34-1e5f-4cae-83e5-ed7bcc081e82', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:44:09.115898+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e788ec5-3aa0-4283-971f-d7a5f6c47002', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:54:00.755865+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b048d80-a517-492c-b94c-182c5def35bd', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:54:26.875146+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dc07ab0-67e8-4de8-af89-ce1d566bad45', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:55:36.402014+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a8dccfe-4a4c-4a4d-9d44-ed1e226ba567', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:55:42.056248+00', ''),
	('00000000-0000-0000-0000-000000000000', '102580af-d9e2-4b85-9886-7d8f4fddca7d', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:56:36.663446+00', ''),
	('00000000-0000-0000-0000-000000000000', '8af83c40-22ce-4369-92df-53241dfd46af', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 13:57:53.365181+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f743023-6314-4d58-9d59-c83b876470da', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 13:57:57.164627+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4222d77-c06f-4e20-a01f-7aaf82ad2f00', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 14:03:08.69589+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a0a4d23-87fd-4928-b02b-e3336c961fbf', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 14:12:07.852394+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a08ea0f-d199-4244-92ab-7ffad97a72e4', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 14:12:14.394701+00', ''),
	('00000000-0000-0000-0000-000000000000', '69cb41b1-b078-44f1-a297-459b6b3e19d8', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 14:13:52.157325+00', ''),
	('00000000-0000-0000-0000-000000000000', '46f5b88b-7d86-4b93-9717-daef88d8feed', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-17 14:15:30.549353+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ed56509-b2b3-4619-ad1c-2efc2a8221e4', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 14:15:46.265291+00', ''),
	('00000000-0000-0000-0000-000000000000', '88a0d9b2-52f0-47b4-a320-e614b76e2787', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 14:16:43.583535+00', ''),
	('00000000-0000-0000-0000-000000000000', '9681a279-698c-4d04-a2b5-9a954ddd5c3d', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 15:13:59.568352+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6d1d441-8c0c-46d1-9015-6f48e7aad71a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 15:13:59.569941+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e80b962-db62-4a53-a3aa-9a6416b2fd69', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 16:12:03.962345+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bc22415-e64e-4ccc-902e-94bdc70ad1c5', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-17 16:12:03.963817+00', ''),
	('00000000-0000-0000-0000-000000000000', '3165197b-8632-4b37-901f-dda4a7785ca8', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 07:26:55.136407+00', ''),
	('00000000-0000-0000-0000-000000000000', '923b065a-15aa-4868-adad-51928781538a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 07:26:55.1377+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd169c2a5-23e2-4175-8b51-9afbb3c1255a', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 08:25:08.706882+00', ''),
	('00000000-0000-0000-0000-000000000000', '73b02ad3-e30b-4a37-9cc6-b1f497dfb4da', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 08:25:08.708502+00', ''),
	('00000000-0000-0000-0000-000000000000', '9762b3ad-33e4-421f-ad39-682e87384c70', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 09:08:22.533882+00', ''),
	('00000000-0000-0000-0000-000000000000', '15ef4433-2cd2-42dc-9632-358715552d00', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 09:23:29.817154+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea93201c-0b91-4978-a3e9-fc1727f90b40', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 09:23:29.818801+00', ''),
	('00000000-0000-0000-0000-000000000000', '80400a95-e9ee-4460-af23-3dd11630946a', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 10:21:35.765966+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a01603ac-e91d-41d7-80fe-f3383ea11889', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 10:21:35.767416+00', ''),
	('00000000-0000-0000-0000-000000000000', '17e761ce-cc89-4b0d-8f1d-5ff5e8ff52a2', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 11:19:45.582065+00', ''),
	('00000000-0000-0000-0000-000000000000', '37b50d9d-b619-4d9c-9e99-98b1dc26e9ae', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 11:19:45.583636+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a358b89-33f5-4a28-9676-07afc39bbb4e', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 12:18:11.594873+00', ''),
	('00000000-0000-0000-0000-000000000000', '320ad678-f563-42a9-b984-7ed756eaf2a0', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 12:18:11.596808+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce0e71ca-2de2-4b51-92e8-b12d3bb25a4e', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 15:56:54.495753+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf0205c4-5b77-4537-be16-f11aca5f5a5c', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 15:56:54.498252+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb7f632b-ee3c-4afd-9252-8282df2251ef', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 15:56:54.534305+00', ''),
	('00000000-0000-0000-0000-000000000000', '88142517-32d3-47f0-820a-85af8b3da251', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 15:56:57.014463+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2002ff6-5606-4f7a-973d-4c4691ed2f5f', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 15:56:57.472037+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f62e7f33-9b4b-4a44-ab89-1b9541eea002', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-18 16:28:20.696688+00', ''),
	('00000000-0000-0000-0000-000000000000', '79eb1d38-7b53-4315-9153-83689287a1bd', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 16:29:20.812966+00', ''),
	('00000000-0000-0000-0000-000000000000', '1cf07cda-2e3b-4d29-b631-df7436d730f5', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-18 16:29:25.698474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb623a6e-7ff0-4f4d-9392-3cb9a6179622', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 16:55:23.056697+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd97fa1ed-3f55-4023-9549-f2cfaf274ec6', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-18 16:55:26.601712+00', ''),
	('00000000-0000-0000-0000-000000000000', '7579aad5-bee1-4690-8cc9-7e8b64049d60', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 16:55:33.863625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b859b659-bbce-449e-bc98-e4759e1e074a', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 21:18:47.267495+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e3b4ae4-4bea-4b3e-bbbd-7e9a70495e3d', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-18 21:18:47.269528+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abdb3fa7-9cbc-4688-90df-85fd5319eebb', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 08:04:42.56403+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d9f84fa-7d49-4873-9f07-5f7866431b74', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 08:04:42.567259+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b40f41c6-b285-4461-bba7-548d08577c76', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 09:02:48.88916+00', ''),
	('00000000-0000-0000-0000-000000000000', '881b4c4e-d44b-4c8a-bc27-6b12a35c9f11', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 09:02:48.890059+00', ''),
	('00000000-0000-0000-0000-000000000000', '19e7fa90-0658-447f-95da-3f56e1899286', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 10:01:00.951889+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a08793a-3231-4a51-87b7-41d459727bf7', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 10:01:00.954587+00', ''),
	('00000000-0000-0000-0000-000000000000', '0bbac6be-db52-47bb-b068-d1a7aae5bf7b', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 10:59:29.594039+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc3a8486-5fc4-4e4b-a1ce-e62e1d4f1763', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 10:59:29.594809+00', ''),
	('00000000-0000-0000-0000-000000000000', '68bd757d-8b3e-4c53-be48-607dceb35719', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 11:57:34.642548+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e678d8e1-04c4-4e54-9e5a-7d8b5de411f4', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 11:57:34.643513+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f330c887-a084-4431-b0f6-9dbb80a4b5d2', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 12:56:03.662464+00', ''),
	('00000000-0000-0000-0000-000000000000', '667ca9d6-5bbe-494e-9670-a0986381b6ab', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 12:56:03.66338+00', ''),
	('00000000-0000-0000-0000-000000000000', '90f1f756-5e20-45f6-9827-1f21c06da7bf', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 13:54:19.695596+00', ''),
	('00000000-0000-0000-0000-000000000000', '58e544e4-9334-4861-90e6-0bd35decc72d', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 13:54:19.69729+00', ''),
	('00000000-0000-0000-0000-000000000000', '17f1326c-917b-468f-83a6-1262c960c943', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-19 14:20:47.053621+00', ''),
	('00000000-0000-0000-0000-000000000000', '322fa119-e654-4bb7-95f3-ca1463a01ae1', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"other@packt.local","user_id":"f538977f-d9b4-488b-a615-1de0a04d28d9","user_phone":""}}', '2024-03-19 14:21:54.916639+00', ''),
	('00000000-0000-0000-0000-000000000000', '51351db6-c610-4ed8-8db2-d4bf18816501', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"other@packt.local","user_id":"34684a21-0af3-4cd9-a3ff-0b73ac924365","user_phone":""}}', '2024-03-19 14:24:40.958381+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4084a70-c426-4d1e-8213-090e1478fa3e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"other@packt.local","user_id":"f59a7592-2150-400b-8a37-f967594df8f9","user_phone":""}}', '2024-03-19 14:25:16.724435+00', ''),
	('00000000-0000-0000-0000-000000000000', '556b9b44-7772-4065-aabc-3882126743b3', '{"action":"user_signedup","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"team"}', '2024-03-19 14:31:14.22653+00', ''),
	('00000000-0000-0000-0000-000000000000', '52f42f19-280f-4962-9221-98879a6db4b4', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 15:29:30.102011+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c72c967b-a45a-437a-b245-d1863abb3f81', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-19 15:29:30.103056+00', ''),
	('00000000-0000-0000-0000-000000000000', '24127a84-be62-4dff-85f4-b0be2d5f9713', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 08:36:40.953186+00', ''),
	('00000000-0000-0000-0000-000000000000', '81f29e28-f807-4743-ba4c-e4721b015d3b', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 08:36:40.955147+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b0002bb-dcd9-4bcd-84e9-190a23f0f460', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:40:41.725825+00', ''),
	('00000000-0000-0000-0000-000000000000', '79951e9f-b3f7-44d0-a537-2c5b0cd0da64', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:40:41.727018+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b51262f7-1d71-4f58-80b4-1a9084185e64', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:40:41.834168+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3a3fe7b-1e7c-494b-9963-f5f21de84758', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:40:41.851149+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d25096b-ecc9-460e-bc8c-66ff86271777', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:40:41.870415+00', ''),
	('00000000-0000-0000-0000-000000000000', '94d29c7b-d762-4563-893b-e52d564844d3', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 09:41:44.676701+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb76d5e4-1f41-411f-8930-e2985d3213ef', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-20 09:50:49.828857+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6e74985-a388-4c78-806b-5fa49179b49e', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 10:48:54.558652+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2f4b810-2a64-4230-8df4-f45a547f7a77', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 10:48:54.561036+00', ''),
	('00000000-0000-0000-0000-000000000000', '18812176-737c-4165-91d5-dbb26358c447', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 11:10:16.947886+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ea90468-9705-4420-96b1-c447ceeb4587', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 11:10:16.948891+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6a05d6b-fd00-477e-86f0-59eb29ffacde', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 11:10:16.989423+00', ''),
	('00000000-0000-0000-0000-000000000000', '62c95d9c-000c-42e0-9982-6b418333c19a', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 11:47:10.519156+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f112874b-ec43-48a1-b947-a471315f433f', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 11:47:10.520281+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c0d8c48-32c8-4027-b0f2-56925378075a', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 12:45:21.818299+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8d94cfe-a958-4cba-9ea0-ccebd59b2142', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 12:45:21.819381+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf878179-b8cd-490e-9a29-5ca7113a0d1f', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 13:58:20.22772+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e23faa5c-682e-4a9c-96da-4afb71d2814a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 13:58:20.231883+00', ''),
	('00000000-0000-0000-0000-000000000000', '1739ccf4-916d-4408-a969-2a39c6443450', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:20:38.075029+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4ba0cd1-980e-438e-b532-57d3fb5f886c', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:20:38.095956+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea3e1673-cb00-4598-9929-db6aa0c763da', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:44:38.323669+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b950f52b-69e1-4865-9468-312e5e600725', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:44:38.452297+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bdef4a7-b627-41d1-bb68-1ba3951de306', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:44:38.58188+00', ''),
	('00000000-0000-0000-0000-000000000000', '7617030c-ae82-478a-b3f1-0e3c09b2d7c2', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:44:38.665704+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a88f26a-d09d-4cf2-84b2-958a047ea38a', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 15:44:39.020355+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a583a3e-b690-4e5e-92fd-0e2c366e0dcd', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:24:28.493954+00', ''),
	('00000000-0000-0000-0000-000000000000', '712b3094-11cc-4408-9c53-9c1fa54036b9', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:24:28.498426+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ad320af-4e06-40cd-94a2-650feea06d1d', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.171378+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f30cfe8f-6c44-45b8-870b-72a9ab315c18', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.174409+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aed712d1-140e-4e5f-96dd-af94daec1dec', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.250926+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0175afc-2430-4592-a1a0-f5a3197172ca', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.274205+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b7fda5d-95e4-4366-a785-1c165e4d0a9d', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.298222+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db5c8f67-be72-4d57-aaad-8b492812ed98', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-20 16:46:10.764747+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f1aeced-69cf-4831-ad8c-366e0b0f83cb', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 09:13:51.743086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f175ad02-2ecd-4db5-9a90-e8fa0b41348d', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 09:13:51.764222+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c32fcda4-0459-4bfd-afe3-0297dcd1bd55', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 10:33:26.543391+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d416633-6c35-42ce-b944-86a902d887e6', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 10:33:26.556867+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b4d40ea-3a74-425d-9ffd-c7fb3bf17518', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 10:37:10.813937+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9520fd8-2abe-4de1-ba72-39758d5e84e1', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 10:37:10.814656+00', ''),
	('00000000-0000-0000-0000-000000000000', '841c7cc6-30bd-4bc3-91c0-bd0c9f96a599', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:31:45.531981+00', ''),
	('00000000-0000-0000-0000-000000000000', '08f0af31-cd4e-44e2-b073-8cc45052764b', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:31:45.532858+00', ''),
	('00000000-0000-0000-0000-000000000000', '01c794d1-1137-447e-8139-168b1155bcbd', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:52:57.797125+00', ''),
	('00000000-0000-0000-0000-000000000000', '7790bee8-621e-4169-ae6f-10dcfab55fc7', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:52:57.797958+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bf73d85-d6bf-49bf-893c-7d9b429f4f3b', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:52:57.835742+00', ''),
	('00000000-0000-0000-0000-000000000000', '62b136e2-7cb9-4277-ae39-8b63ae64ba46', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:52:57.876795+00', ''),
	('00000000-0000-0000-0000-000000000000', '15fdcd1a-266a-4dca-aa76-12ae996f5846', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:52:57.890898+00', ''),
	('00000000-0000-0000-0000-000000000000', '719abbfb-9fee-4806-8b25-f38dd427a482', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:53:47.41265+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6309fb9-05d9-471e-b853-686fea4b8550', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:53:47.556034+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e59d71fc-cc12-4423-a110-c8d0d13ae15a', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:53:47.58222+00', ''),
	('00000000-0000-0000-0000-000000000000', '53be116b-9286-457d-b31f-85be08c3cc6e', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:53:47.630069+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b5f5f5b-6420-4426-9421-c9ce20b0ffa6', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 11:53:48.830274+00', ''),
	('00000000-0000-0000-0000-000000000000', '00dd309f-35c1-4e81-942d-b9317b6aff3f', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 12:29:50.28195+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c02587c3-96c8-4bb8-805d-7c228264660c', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 12:29:50.283563+00', ''),
	('00000000-0000-0000-0000-000000000000', '076ef3b4-e17c-48cd-ab08-262b68a44183', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 13:32:33.365566+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e4b186c-b144-435a-8345-66ea7bae2c8a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 13:32:33.366775+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee1b3548-b555-4e73-bc70-d04c942471a3', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 13:35:19.895705+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4714bde-e7ee-4c48-bf74-2a507cf74a5a', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 13:35:19.897248+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f995526-afbe-446e-8f5b-6d7b31e11521', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 14:30:38.204464+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ac60d02-150e-4f94-92e1-a88caffcffd7', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 14:30:38.205834+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec91599b-8392-47b2-b2e5-833a1d5c1090', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:28:52.369815+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6432575-7eb9-4da7-b65e-5ac0835e24c3', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:28:52.37126+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1e21462-5566-445a-9436-f57547e9fa86', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:18.578086+00', ''),
	('00000000-0000-0000-0000-000000000000', '07e570e0-a3b8-4f9d-a1bc-43fec588c4ae', '{"action":"token_revoked","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:18.579027+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e44ded6e-4eca-46cf-8f48-bc2203a6d74f', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:18.651269+00', ''),
	('00000000-0000-0000-0000-000000000000', '50dfb2e9-fca7-4f68-9854-08bcd2edbb3e', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:18.966705+00', ''),
	('00000000-0000-0000-0000-000000000000', '9482dc30-e73d-4146-bc99-a3cf6e63a6b3', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:18.995238+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd549fd98-4268-49be-b918-59c67d12c05d', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:19.043687+00', ''),
	('00000000-0000-0000-0000-000000000000', '1475ea38-4f5e-420b-8b83-7cd3069a7b91', '{"action":"token_refreshed","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 15:46:19.518848+00', ''),
	('00000000-0000-0000-0000-000000000000', '324c2562-7e55-4495-a142-a0bebbe32973', '{"action":"logout","actor_id":"f59a7592-2150-400b-8a37-f967594df8f9","actor_username":"other@packt.local","actor_via_sso":false,"log_type":"account"}', '2024-03-21 15:47:14.550941+00', ''),
	('00000000-0000-0000-0000-000000000000', '44084754-d624-4050-baba-25422049999d', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-21 15:47:19.729524+00', ''),
	('00000000-0000-0000-0000-000000000000', '25d6b095-1b2a-4010-9231-87e2f1974532', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 16:27:03.85736+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb6a43ba-16b3-4314-958e-4b01adc1e64f', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 16:27:03.859095+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f102529f-6f9f-4da2-b446-6f8149d9ee99', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 21:24:09.854999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6a08443-0603-4d50-a76f-91759e66a42c', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-21 21:24:09.863997+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf41a11a-f128-4295-9331-e00f4ee39cb4', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 08:30:40.534356+00', ''),
	('00000000-0000-0000-0000-000000000000', '03d4c35b-d68a-4d53-baf3-5229c5d0960e', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 08:30:40.540379+00', ''),
	('00000000-0000-0000-0000-000000000000', '68155878-32b1-4eff-8b02-9ecedc681b6c', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 09:28:42.639416+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ec1ce2a-1e10-4367-a462-4ddbaf842531', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 09:28:42.640564+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d332870-c55a-430a-98b4-1e18f9d3b364', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 10:27:11.628668+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da62b5da-a75c-4b01-9dd7-5e5ca61ae861', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 10:27:11.630638+00', ''),
	('00000000-0000-0000-0000-000000000000', '01224092-94f7-4409-b011-6efa6b954b09', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 12:43:06.002957+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ad4a104-2d45-43d4-8cf2-95b38e932769', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 12:43:06.004758+00', ''),
	('00000000-0000-0000-0000-000000000000', '648899c5-ed85-4b8c-9071-77ff922370f4', '{"action":"user_signedup","actor_id":"6acf8a03-97b6-464b-8ad0-52df5187ccdd","actor_name":"David Lorenz","actor_username":"mail.lorenz@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}', '2024-03-22 14:10:22.94973+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdd5e475-f4f0-464c-abab-16442e487773', '{"action":"user_signedup","actor_id":"6acf8a03-97b6-464b-8ad0-52df5187ccdd","actor_name":"David Lorenz","actor_username":"mail.lorenz@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}', '2024-03-22 14:13:21.899961+00', ''),
	('00000000-0000-0000-0000-000000000000', '2291fc62-6274-49bc-b039-71fe9367cb03', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 18:03:16.808408+00', ''),
	('00000000-0000-0000-0000-000000000000', '526a274a-5bea-4015-8df4-e401c393481e', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-22 18:03:16.810194+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae38fba3-ffd0-4501-8d66-ac266c279bad', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-22 18:03:37.661067+00', ''),
	('00000000-0000-0000-0000-000000000000', '24851799-326b-4435-be8f-fb3c2a8bed96', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-24 09:37:38.637709+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f09b0ec8-ea20-4545-b6dc-bc0119e8ce22', '{"action":"logout","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account"}', '2024-03-24 09:53:28.551966+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e7917d2-57f6-48d2-b1ae-8e4285a8bc06', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"clark@packt.local","user_id":"02906fc4-7b24-47ec-abc3-6c6970be75bd","user_phone":""}}', '2024-03-24 09:54:53.657708+00', ''),
	('00000000-0000-0000-0000-000000000000', '2dfc0f07-7d7c-492f-b2b3-3884db68bbc8', '{"action":"user_signedup","actor_id":"02906fc4-7b24-47ec-abc3-6c6970be75bd","actor_username":"clark@packt.local","actor_via_sso":false,"log_type":"team"}', '2024-03-24 09:55:03.823582+00', ''),
	('00000000-0000-0000-0000-000000000000', '91dc7d92-e1fd-4a36-a409-23d586734469', '{"action":"logout","actor_id":"02906fc4-7b24-47ec-abc3-6c6970be75bd","actor_username":"clark@packt.local","actor_via_sso":false,"log_type":"account"}', '2024-03-24 09:56:03.491543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a00af881-3ed2-4868-b79d-7242286771af', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sarah@activenode.learn","user_id":"99da03b3-6de9-4891-9b69-c5ed037523e9","user_phone":""}}', '2024-03-24 09:57:00.765381+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a443225-97e5-490d-bfcc-da792b09a0d6', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-24 09:57:22.69415+00', ''),
	('00000000-0000-0000-0000-000000000000', '64443046-1f63-4d21-ac35-b5dc46385c63', '{"action":"user_signedup","actor_id":"99da03b3-6de9-4891-9b69-c5ed037523e9","actor_username":"sarah@activenode.learn","actor_via_sso":false,"log_type":"team"}', '2024-03-24 10:09:28.873505+00', ''),
	('00000000-0000-0000-0000-000000000000', '5eae2e0e-dc05-455d-9a75-a1e5cfe84054', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:38.489024+00', ''),
	('00000000-0000-0000-0000-000000000000', '994a4fbc-54ee-4e3a-baa2-32a2d616973a', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:38.490493+00', ''),
	('00000000-0000-0000-0000-000000000000', '200de4b5-5e84-4cc9-b945-4273516555f3', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:38.55242+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caa6a4ab-101a-4e4c-82d3-c0a527c3dd38', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:40.622034+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d8c2cdc-253a-49bf-b4f8-4313a38f99f4', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:40.636018+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd26a86c1-9c2d-4b81-ac65-b487671a7010', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:40.67417+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5c8beda-8174-4a89-ba7a-5ed330103664', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-24 11:38:41.007137+00', ''),
	('00000000-0000-0000-0000-000000000000', '39205a6a-983b-4b85-9d80-aaa31d8e481b', '{"action":"login","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-24 11:39:31.089978+00', ''),
	('00000000-0000-0000-0000-000000000000', '1bdc7965-30a3-497f-807b-985e37ee9e39', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 09:20:06.642874+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8bf6efb-aca9-43c1-8c21-0b40a562a5cb', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 09:20:06.643842+00', ''),
	('00000000-0000-0000-0000-000000000000', '68435fe0-182b-4d36-aaff-3b88fc56c608', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 11:06:10.764124+00', ''),
	('00000000-0000-0000-0000-000000000000', '973d1b87-90d1-4b5b-a366-93e98a28952c', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 11:06:10.764956+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bfaa1b4-b3e2-4af3-a987-a51b2cbb9fdf', '{"action":"token_refreshed","actor_id":"99da03b3-6de9-4891-9b69-c5ed037523e9","actor_username":"sarah@activenode.learn","actor_via_sso":false,"log_type":"token"}', '2024-03-25 12:29:25.73928+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d64c553-b40f-4c7f-945b-75a8faeab823', '{"action":"token_revoked","actor_id":"99da03b3-6de9-4891-9b69-c5ed037523e9","actor_username":"sarah@activenode.learn","actor_via_sso":false,"log_type":"token"}', '2024-03-25 12:29:25.74113+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbb61d5f-1d94-43e7-a7cd-460f27b40e0b', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 12:29:27.630808+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e5d1ecb-82a7-4efe-89c5-8fb755438e79', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 12:29:27.632276+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6438606-dd63-4db7-92ee-e2eb29ea87f3', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 13:27:49.358696+00', ''),
	('00000000-0000-0000-0000-000000000000', '559771ef-52eb-4289-a96b-35d96a384922', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 13:27:49.359875+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f1408d2-4119-4164-8f22-b086cebbe334', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 14:37:10.412631+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b61e0da4-6883-4468-9210-c98d4d63b8c8', '{"action":"token_revoked","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 14:37:10.413851+00', ''),
	('00000000-0000-0000-0000-000000000000', '54256bb7-71cc-4c57-8011-7bda170b490d', '{"action":"token_refreshed","actor_id":"631e3d0c-26a1-47f9-b19b-6942f5df2eb6","actor_username":"icecream@cool.local","actor_via_sso":false,"log_type":"token"}', '2024-03-25 14:37:10.447817+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") VALUES
	('629f9153-8337-4bcb-be31-714369ecaaf9', NULL, '682e9d20-5ff2-411b-9b97-82ed6647c878', 's256', 'JZU8lTKLxAaHI9A6c2i__2q8bIVVNkJ2U5jdr6G7w8E', 'google', '', '', '2024-03-22 13:37:09.952574+00', '2024-03-22 13:37:09.952574+00', 'oauth'),
	('bd7cca6d-2e2c-4195-b53c-8939ebe2e2ff', NULL, 'd6ffa7c0-2a79-4e42-bc75-f9843d015c7c', 's256', '8gAW2QxSrO5aRY7SbGnsBn15tnDg8ujdcTSJPDEstDA', 'google', '', '', '2024-03-22 14:08:31.925616+00', '2024-03-22 14:08:31.925616+00', 'oauth'),
	('a55d1eff-8d5b-4823-a737-af29bae4a3b5', '6acf8a03-97b6-464b-8ad0-52df5187ccdd', 'faf6efeb-f727-438c-9487-a7a05ee203ce', 's256', '8r3qldJIEldC41KZ55LPqwxVBBkDDosVQQSpu8j4Dzk', 'google', 'ya29.a0Ad52N38jJshah58MpeVUM1jxMea50zkkDAW261cymQNfbWw00NxRklKQ1kvmAvNypcOZ5Wfcu1CatfdHUjTq7TV9ADueC8aQsxjIeTuemKVTOPwMsHFMzq7h_ZRbSCqZsgqhHjlV2R__Bb6BTQTN_Jm-StaYmqAPgxA-aCgYKAWMSARMSFQHGX2MiWPw5DAJmd1Xyo8e9xEQERQ0171', '1//095rMuabKFw5SCgYIARAAGAkSNwF-L9IrMAO5I5wziyyQ_HAIkxS8hl-H1LaABcBPT7celjq93zN4PZwd531xGZgpVSPpFar1lqA', '2024-03-22 14:10:12.582554+00', '2024-03-22 14:10:22.951355+00', 'oauth'),
	('e7d82e26-9df3-4b66-9f79-ef6e81783033', '6acf8a03-97b6-464b-8ad0-52df5187ccdd', 'e0829bdc-9f21-457b-856f-020c674525cc', 's256', 'majDmgV_FkgHQ_LSMIdUGAaj4C8sbZG3JCH_Pxn7L08', 'google', 'ya29.a0Ad52N3_WU9NBCPCarG8D3f89LSt90JdY-sdkVGxMzW9dghyUYCz3adGccvZ8BW9Npts5_IUH21AHIQGTl0-FU_aofYXjK0OJ0MxkKq4B5xcy1ZLAKDxlFFAW1gxIp-J8XeBr4yKy_BILT7FtBZ_J_NEFChCOFbbVfMEGaCgYKAWMSARMSFQHGX2Mi7beptbtIx5Kh70yUJQCvLA0171', '1//09O7KF6vO6k17CgYIARAAGAkSNwF-L9IrCCsGxMfKviYJaOdtYlU59BOTsmumvaVcUTgjcZDe9GLICCaW0aeo17bepT0Bxk5gFNs', '2024-03-22 14:13:12.524485+00', '2024-03-22 14:13:21.901512+00', 'oauth');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '02906fc4-7b24-47ec-abc3-6c6970be75bd', 'authenticated', 'authenticated', 'clark@packt.local', '$2a$10$rof0w3KYnDFgQSwbAB9tYOORaxwSkSFiP6s8ayuxTBytCmWm72D3a', '2024-03-24 09:55:03.824778+00', NULL, '', '2024-03-24 09:54:53.682463+00', '', NULL, '', '', NULL, '2024-03-24 09:55:03.825775+00', '{"tenants": ["packt"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-24 09:54:53.65589+00', '2024-03-24 09:55:03.830793+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', 'authenticated', 'authenticated', 'icecream@cool.local', '$2a$10$TInzust1m75k7NZcBvilTe5UDwp3dApfTKOJNCYbTAEnkEOUCyCXe', '2024-01-05 18:12:26.316064+00', NULL, '', NULL, '', '2024-02-20 20:43:38.953008+00', '', '', NULL, '2024-03-24 11:39:31.091954+00', '{"tenants": ["packt", "oddmonkey"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-05 18:12:26.308851+00', '2024-03-25 14:37:10.416496+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', 'f59a7592-2150-400b-8a37-f967594df8f9', 'authenticated', 'authenticated', 'other@packt.local', '$2a$10$d5WAWXhTUJzF9JdWkNyBTuI/rnReLSpaylhkxMs8yBuOlhevQwB9K', '2024-03-19 14:31:14.227636+00', NULL, '', '2024-03-19 14:25:16.747778+00', '', NULL, '', '', NULL, '2024-03-19 14:31:14.228622+00', '{"tenants": ["packt"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-19 14:25:16.722627+00', '2024-03-21 15:46:18.581403+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', '99da03b3-6de9-4891-9b69-c5ed037523e9', 'authenticated', 'authenticated', 'sarah@activenode.learn', '$2a$10$WeWc7J7piwtGS2JuGa3opejpxOL8QH8eqsaAihSBrM3l0zIuwojC.', '2024-03-24 10:09:28.874425+00', NULL, '', '2024-03-24 09:57:00.7854+00', '', NULL, '', '', NULL, '2024-03-24 10:09:28.87486+00', '{"tenants": ["activenode"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-24 09:57:00.763373+00', '2024-03-25 12:29:25.743713+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


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
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('9ffc1e92-47d2-468e-83c5-3ac13b5932e4', '99da03b3-6de9-4891-9b69-c5ed037523e9', '2024-03-24 10:09:28.874893+00', '2024-03-25 12:29:25.745075+00', NULL, 'aal1', NULL, '2024-03-25 12:29:25.745023', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:124.0) Gecko/20100101 Firefox/124.0', '172.19.0.1', NULL),
	('73a2d048-2bac-4a39-84c3-d23834beaf91', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '2024-03-24 09:57:22.694962+00', '2024-03-25 14:37:10.449349+00', NULL, 'aal1', NULL, '2024-03-25 14:37:10.449263', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:124.0) Gecko/20100101 Firefox/124.0', '172.19.0.1', NULL),
	('8e76e4ad-156c-4dbe-8490-b1892954c08c', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', '2024-03-24 11:39:31.091997+00', '2024-03-24 11:39:31.091997+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2.1 Safari/605.1.15', '172.19.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('73a2d048-2bac-4a39-84c3-d23834beaf91', '2024-03-24 09:57:22.69665+00', '2024-03-24 09:57:22.69665+00', 'password', '8df2587a-7ce1-441e-b998-e7323e96abfd'),
	('9ffc1e92-47d2-468e-83c5-3ac13b5932e4', '2024-03-24 10:09:28.877328+00', '2024-03-24 10:09:28.877328+00', 'otp', '684f151b-5ea3-43f0-869e-d8c9640e43fb'),
	('8e76e4ad-156c-4dbe-8490-b1892954c08c', '2024-03-24 11:39:31.093864+00', '2024-03-24 11:39:31.093864+00', 'password', '1bc0566d-8419-43b4-a103-c9fffba05a2d');


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
	('00000000-0000-0000-0000-000000000000', 252, 'ZzyXMiQVRj6oqZPnZIFtdw', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-25 13:27:49.36114+00', '2024-03-25 14:37:10.414703+00', 'StVVMf_5lNPLXOzAQA_SRw', '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 253, 'y5B0LGIv9BS6Rfzz4-YU9g', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', false, '2024-03-25 14:37:10.415418+00', '2024-03-25 14:37:10.415418+00', 'ZzyXMiQVRj6oqZPnZIFtdw', '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 244, 'ao4R2cE7_990bdDRzJMDKQ', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-24 09:57:22.695681+00', '2024-03-24 11:38:38.491485+00', NULL, '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 247, 'IY83uCZ5PxqFRPctaiDdyQ', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', false, '2024-03-24 11:39:31.09277+00', '2024-03-24 11:39:31.09277+00', NULL, '8e76e4ad-156c-4dbe-8490-b1892954c08c'),
	('00000000-0000-0000-0000-000000000000', 246, 'eZO253JbvWdR7_D4vxgFAQ', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-24 11:38:38.492217+00', '2024-03-25 09:20:06.644544+00', 'ao4R2cE7_990bdDRzJMDKQ', '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 248, 'JZXPEe_y2HUjGU5yTdY30Q', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-25 09:20:06.645482+00', '2024-03-25 11:06:10.765682+00', 'eZO253JbvWdR7_D4vxgFAQ', '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 245, 'n-oc-8YpPmFvpPY65jfZew', '99da03b3-6de9-4891-9b69-c5ed037523e9', true, '2024-03-24 10:09:28.875904+00', '2024-03-25 12:29:25.741969+00', NULL, '9ffc1e92-47d2-468e-83c5-3ac13b5932e4'),
	('00000000-0000-0000-0000-000000000000', 250, 'qgKiKUOtHeivFQJZTAUl5A', '99da03b3-6de9-4891-9b69-c5ed037523e9', false, '2024-03-25 12:29:25.742682+00', '2024-03-25 12:29:25.742682+00', 'n-oc-8YpPmFvpPY65jfZew', '9ffc1e92-47d2-468e-83c5-3ac13b5932e4'),
	('00000000-0000-0000-0000-000000000000', 249, 'NdHOsgzV4YFz130apfbRbw', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-25 11:06:10.766221+00', '2024-03-25 12:29:27.633329+00', 'JZXPEe_y2HUjGU5yTdY30Q', '73a2d048-2bac-4a39-84c3-d23834beaf91'),
	('00000000-0000-0000-0000-000000000000', 251, 'StVVMf_5lNPLXOzAQA_SRw', '631e3d0c-26a1-47f9-b19b-6942f5df2eb6', true, '2024-03-25 12:29:27.633739+00', '2024-03-25 13:27:49.36059+00', 'NdHOsgzV4YFz130apfbRbw', '73a2d048-2bac-4a39-84c3-d23834beaf91');


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
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2030-01-31 08:58:28+00', 1, 'packt'),
	(2, '2030-01-31 08:58:38+00', 1, 'oddmonkey'),
	(12, '2024-03-19 14:25:16.74138+00', 14, 'packt'),
	(13, '2024-03-24 09:54:53.675005+00', 15, 'packt'),
	(14, '2024-03-24 09:57:00.778987+00', 16, 'activenode');


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
	(17, '2024-03-25 12:41:24.605599+00', 'Creating my first ticket with an assignee', 'Initially the assignee was set to Clark Trepton.', 1, 'packt', 'open', 'David Lorenz', NULL, NULL);


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 253, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


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

SELECT pg_catalog.setval('"public"."tickets_id_seq"', 17, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
