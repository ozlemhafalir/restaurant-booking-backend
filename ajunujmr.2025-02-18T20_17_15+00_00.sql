--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ajunujmr;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ajunujmr;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ajunujmr;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ajunujmr;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ajunujmr;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ajunujmr;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_city; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.core_city (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.core_city OWNER TO ajunujmr;

--
-- Name: core_city_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.core_city ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_cuisine; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.core_cuisine (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.core_cuisine OWNER TO ajunujmr;

--
-- Name: core_cuisine_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.core_cuisine ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_cuisine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ajunujmr;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ajunujmr;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ajunujmr;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ajunujmr;

--
-- Name: reservation_reservation; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.reservation_reservation (
    id bigint NOT NULL,
    date date NOT NULL,
    guests integer NOT NULL,
    note text NOT NULL,
    status character varying(20) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    restaurant_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.reservation_reservation OWNER TO ajunujmr;

--
-- Name: reservation_reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.reservation_reservation ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.reservation_reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: restaurant_restaurant; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.restaurant_restaurant (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    description text NOT NULL,
    address character varying(500) NOT NULL,
    status character varying(20) NOT NULL,
    menu character varying(255) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    city_id bigint NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.restaurant_restaurant OWNER TO ajunujmr;

--
-- Name: restaurant_restaurant_cuisines; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.restaurant_restaurant_cuisines (
    id bigint NOT NULL,
    restaurant_id bigint NOT NULL,
    cuisine_id bigint NOT NULL
);


ALTER TABLE public.restaurant_restaurant_cuisines OWNER TO ajunujmr;

--
-- Name: restaurant_restaurant_cuisines_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.restaurant_restaurant_cuisines ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.restaurant_restaurant_cuisines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.restaurant_restaurant ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.restaurant_restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: restaurant_restaurantimage; Type: TABLE; Schema: public; Owner: ajunujmr
--

CREATE TABLE public.restaurant_restaurantimage (
    id bigint NOT NULL,
    image character varying(255) NOT NULL,
    restaurant_id bigint NOT NULL
);


ALTER TABLE public.restaurant_restaurantimage OWNER TO ajunujmr;

--
-- Name: restaurant_restaurantimage_id_seq; Type: SEQUENCE; Schema: public; Owner: ajunujmr
--

ALTER TABLE public.restaurant_restaurantimage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.restaurant_restaurantimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add city	7	add_city
26	Can change city	7	change_city
27	Can delete city	7	delete_city
28	Can view city	7	view_city
29	Can add cuisine	8	add_cuisine
30	Can change cuisine	8	change_cuisine
31	Can delete cuisine	8	delete_cuisine
32	Can view cuisine	8	view_cuisine
33	Can add restaurant	9	add_restaurant
34	Can change restaurant	9	change_restaurant
35	Can delete restaurant	9	delete_restaurant
36	Can view restaurant	9	view_restaurant
37	Can add restaurant image	10	add_restaurantimage
38	Can change restaurant image	10	change_restaurantimage
39	Can delete restaurant image	10	delete_restaurantimage
40	Can view restaurant image	10	view_restaurantimage
41	Can add reservation	11	add_reservation
42	Can change reservation	11	change_reservation
43	Can delete reservation	11	delete_reservation
44	Can view reservation	11	view_reservation
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$600000$7a4TwuhOHwRs5ZsssIIZiR$pab5KFuhdi9LAWIaOUeZDYNXzo3S1TYGHGcATRT67BI=	\N	t	ozlem				f	t	2024-03-24 20:55:02.487246+00
3	pbkdf2_sha256$600000$gW2I22F7NnpAeV4BcNt0ex$bD8T1DPVyCLvk8ujIMupXEYlCtdoayphlA919rpXx8w=	\N	f	musa				f	t	2024-03-25 21:27:38.226136+00
4	pbkdf2_sha256$600000$lFhx7pgSWYswEb4ZIU6hY0$Mxard7/pI625ZgcHuk897xOBOhCFdp9AY5FzDhWMcvk=	\N	t	mhafalir	Musa	H.		t	t	2024-09-24 20:05:26.048498+00
5	pbkdf2_sha256$600000$BqedQD6NN292NKFlEahcxo$C9WDpLvOzUK+BYJ3lEYEs8dL3aDbO56AvNmFjvFZDV0=	\N	f	StarryKnight01				f	t	2024-10-15 09:39:52.376596+00
6	pbkdf2_sha256$600000$ZhwL3T1HnyUrZUle6Vt1U3$pD6k2YAt9ldnp3BXv83rEfVdNzASNGTJ24T4SAGFAmc=	\N	f	helloregister				f	t	2024-10-15 20:05:51.098798+00
8	pbkdf2_sha256$600000$VVFmVr1oC65gtEZ51s7vzU$uQmyO50OZMRAwCLf8sOwvyb6QTLsZBUEg3KodAmVOBg=	\N	f	ozlemoztep				f	t	2024-10-15 21:12:37.878276+00
9	pbkdf2_sha256$600000$vAxjJM5YllVtyACNkA8qlN$4VdJ90eQN6Cn4zumTQrcLCdtn1wJuCdDyB6o48w16eU=	\N	f	deneme123				f	t	2024-10-18 06:50:33.930934+00
1	pbkdf2_sha256$600000$7a4TwuhOHwRs5ZsssIIZiR$pab5KFuhdi9LAWIaOUeZDYNXzo3S1TYGHGcATRT67BI=	2024-11-12 11:09:43.563163+00	t	ozlemhafalir	ozlemo	hafalir		t	t	2024-03-01 20:19:08.589478+00
10	pbkdf2_sha256$600000$wNo1idMoh2yxptcvtY3UmE$6M1TirRUWixflo8nO2TzJrXdZjiE1FRCL/uQ+N2cV08=	\N	f	kiahqzuwwcfvjc	kiah	qzuwwcfvjc		f	t	2024-12-28 16:17:44.528481+00
11	pbkdf2_sha256$600000$7hJSTCMk6hzxJ97l21gehQ$E7aiwaVp3Fu36zQfCwshwnfA+YN+e0b6EfOZ6iBhVwA=	\N	f	favabjnboovbxvo	favabjn	boovbxvo		f	t	2024-12-28 16:19:23.790081+00
12	pbkdf2_sha256$600000$6d7KCa5baHi9DmYFPIFX9K$uEzlCrgd6sb40BtpXFFhdbUlwpBDT9F84FifD0ijF18=	\N	f	ccmdvvjwetijlghz	ccmdvvjw	etijlghz		f	t	2024-12-28 16:19:24.130131+00
13	pbkdf2_sha256$600000$zDGzS7a8p3T0ljEEsruaQZ$aB9K3EzNjS+7szAWLsCV+EF2Sy+50NtazV9rW7KL1LI=	\N	f	ssfzbnfoksjgwgofvw	ssfzbnfoks	jgwgofvw		f	t	2024-12-28 16:19:24.332095+00
14	pbkdf2_sha256$600000$AHgq20EYitzif8figXzXG4$oQc/0JxhHoOK6PF2EBEkOBXI5D7tasSMEQVwLF5/N8I=	\N	f	ckrezs	ckr	ezs		f	t	2024-12-28 16:19:43.408149+00
15	pbkdf2_sha256$600000$40h3Qesv37Fi7Wu5NDQ1mo$riazoLWBWefVWLWSSqrKyy+tznQ8uSgAeqL4sjrJ7EM=	\N	f	fdbupdr	fdb	updr		f	t	2024-12-28 16:19:43.72949+00
16	pbkdf2_sha256$600000$oHyQv35kmqaEVQq2PiQFv7$1FvQuez5hBb2qywARaKZ5bh44SYz2UZRwTjz/7Z7KRk=	\N	f	cyxjrzvprnfublswy	cyxjrzvprn	fublswy		f	t	2024-12-28 16:19:43.931261+00
17	pbkdf2_sha256$600000$MWqZRay4FSKt6XBU0LjRRn$hWPrzZFjaxEfF2cYUIfEigYwCXRX0cgu26BtkJNGp7I=	\N	f	bgitsqlcrkvpdskgjtw	bgitsqlcr	kvpdskgjtw		f	t	2024-12-28 16:19:44.124725+00
18	pbkdf2_sha256$600000$l2B7dcri0CYVDUCL2Vzf46$vhMae22fO2q31NY0418/Y4cr4x1W/isNeKmWkvdnU9s=	\N	f	tzjiylwnthswu	tzji	ylwnthswu		f	t	2024-12-28 16:19:44.31918+00
19	pbkdf2_sha256$600000$TlHhV1hRfuWbzrdPIiqE3t$O/zvL4Y2rgbgxVD4SBgk1u7SgJRf/FJwPh1KvbPvgUg=	\N	f	zrqviyvxgmztnemawki	zrqviyvxgm	ztnemawki		f	t	2024-12-28 16:19:44.51323+00
20	pbkdf2_sha256$600000$dwqLZKKUd8gtJRLFKP3jx5$v1N4m6BiDZILjKodq/4DwvaE7m4MuBi+14XlzCZLbbo=	\N	f	eiassslxgimsi	eias	sslxgimsi		f	t	2024-12-28 16:19:44.719102+00
21	pbkdf2_sha256$600000$SDhx32StRcB4DJ2ZomIYoQ$tUqJI/xSLaU/HmLJqnJa/0sQgi2KtfmQ+BqysPd1frk=	\N	f	cglmupghhdju	cglmupgh	hdju		f	t	2024-12-28 16:19:44.912986+00
22	pbkdf2_sha256$600000$1gFRN80T1beHN3BqiGEJOq$gfrG0XJ7eaf2l4S3yolpFa3RtBQPZ1MDaDDr12IitHc=	\N	f	enipkioanktskvfhw	enipkioan	ktskvfhw		f	t	2024-12-28 16:19:45.103185+00
23	pbkdf2_sha256$600000$JKknAyW4ccmAp69USuvfff$0gqJ6Ca9dN4iWr71rSt1mv3z5SHsJVwY3dT8mSW3ENI=	\N	f	etrhhcokzmwiqh	etrhhcokz	mwiqh		f	t	2024-12-28 16:19:45.298194+00
24	pbkdf2_sha256$600000$4t7e8O4xCAIRXkSEAgOAOL$KCpcQ8ZW5Lrt+nYlGCfovMmcaKqEybm03lNjbmB9v+Q=	\N	f	jqfaesjgvprxq	jqfaesjgv	prxq		f	t	2024-12-28 16:19:45.494302+00
25	pbkdf2_sha256$600000$mBIB9RAAAWSVrMeBouzVkk$ZI0rgcyq0h/YWy8GNXL4ygul6dzJDou1DVYc7fPBV4Y=	\N	f	dizjulfng	dizjul	fng		f	t	2024-12-28 16:19:45.692044+00
26	pbkdf2_sha256$600000$F8sX2nzUheRAznaJviFDRi$gUJdT4RFT228B9zhOMneM24HPa0bi2fP0pkN0T+4bf4=	\N	f	ykxwrnlcjlri	ykxwr	nlcjlri		f	t	2024-12-28 16:19:45.890056+00
27	pbkdf2_sha256$600000$cfCmUkUsy4GDRsEAMLmDH8$Olf9ttHjVbdAExVpz3+upHICSIJwDvhnLwvDNw8NyAw=	\N	f	ekjbuhtujdewvnigu	ekjbuhtujd	ewvnigu		f	t	2024-12-28 16:19:46.081965+00
28	pbkdf2_sha256$600000$KiHTouUU7aoyj4aeJDl0EC$h1ldMULiCp+wWLhw4SB5S2ywyonafSE0QeIP+c5rnNM=	\N	f	vqztwrjxpjhgagey	vqztwr	jxpjhgagey		f	t	2024-12-28 16:19:46.276201+00
29	pbkdf2_sha256$600000$vLNWefXJt0Vf3dIOZO9jqo$Jo7tPZqPFUKvsPZNrOEAoQpZQP4+kQtOGoEZqYeKmlw=	\N	f	jwrvdgzkjvqysztr	jwrvdgz	kjvqysztr		f	t	2024-12-28 16:19:46.465239+00
30	pbkdf2_sha256$600000$7Q4amRbyjSkZKtoAiJWkNw$nftuJo7PMJtl/mFAGJFrfR/u2WCrX1eeM4UYQYL/Etg=	\N	f	olinlvxbswnv	olin	lvxbswnv		f	t	2024-12-28 16:19:46.659424+00
31	pbkdf2_sha256$600000$kYh1HDvJSL68CAUh5JLwz2$ncyRWyTvu3hq9/qw1Dhfben4aF/PBmyNkU9DL/SRQHw=	\N	f	abiwasniiehm	abi	wasniiehm		f	t	2024-12-28 16:19:46.854134+00
32	pbkdf2_sha256$600000$gp345Ysaat9iJV6xMqYsay$UDR2K1alacW3TInr5ClXZPOdPNZp7AlYxbPiFTcDArw=	\N	f	jhrcxcthddybnw	jhrcxc	thddybnw		f	t	2024-12-28 16:19:47.048717+00
33	pbkdf2_sha256$600000$5hDkBOQDi6Em4eph20so0v$wAdsVBpPOpm7BrayI6ivT8D6NR2A3unb16vt7Ng12J0=	\N	f	dmhhqgtwxp	dmhh	qgtwxp		f	t	2024-12-28 16:19:47.239256+00
34	pbkdf2_sha256$600000$ZQM9JlFk6H7VfNXsO4D6Pe$gT1ZLpEIgRYu7KhWHGCJ0cpATw6Esdfr4aZrPADqPnU=	\N	f	qyxmmkdpzfk	qyxm	mkdpzfk		f	t	2024-12-28 16:19:47.434411+00
35	pbkdf2_sha256$600000$Z07oLi4ofYoCkQU9n0rkDb$5g7JGgASJOIiCXx6NsKqDREqY7vTR0V7e2o2hvd53Q4=	\N	f	wcbasvoxzwap	wcbas	voxzwap		f	t	2024-12-28 16:19:47.629836+00
36	pbkdf2_sha256$600000$ABzwWABLt81ijBc0lYb1aM$lNQUj+R6QZXsIH3CSALBzVtTOpjEaGOpeSpA99nJujE=	\N	f	owfoutifehmtyufvae	owfoutife	hmtyufvae		f	t	2024-12-28 16:19:47.82402+00
37	pbkdf2_sha256$600000$evuyXvlmaq5NC2JDsRFz4m$QLmFOYftKNBKsnqcgXxZkJz5aivkInrY8eB5bmNYlVs=	\N	f	dfuzukdrmlezuv	dfuzukdr	mlezuv		f	t	2024-12-28 16:19:48.0395+00
38	pbkdf2_sha256$600000$V89fWUlV9oFoMCbWAi1hil$wbb4tHy8rKmj4kmkIZA3J34HpO0LCuFo17h/u4LMTD8=	\N	f	rknortdkvviinqtcpjj	rknortdkv	viinqtcpjj		f	t	2024-12-28 16:19:48.232349+00
39	pbkdf2_sha256$600000$y3UsBO8KX5JeosFZmeJgBL$C5rxy4YpcsYBofhu+oDG+zdo4psjTy1MwFnRms5VNfA=	\N	f	pvcusmjoqunzdvgopsiz	pvcusmjoqu	nzdvgopsiz		f	t	2024-12-28 16:19:48.426047+00
40	pbkdf2_sha256$600000$eQmSWC95wdm6thDkeeqx0I$TjBKTBa7HEHLXXgMHOtcxr3IdRNBwX7pdSspK8BP/PA=	\N	f	cbhwyzarhd	cbhwy	zarhd		f	t	2024-12-28 16:19:48.620092+00
41	pbkdf2_sha256$600000$jNwGTb1kNEvvNddGuVRU7d$mdTJmAsE5xc2d3pK2/O9jyxfMqbsvU200nWQCdIXpao=	\N	f	rrqugzfxue	rrqugz	fxue		f	t	2024-12-28 16:19:48.813958+00
42	pbkdf2_sha256$600000$2Vu7MBZR8BPfNekoyAPCn5$QvG1NNm4RxFQJ8D5QqrDuxM/rhl2e21d9hiXacg36mA=	\N	f	scijdgjtuwtkm	scijdgjtu	wtkm		f	t	2024-12-28 16:19:49.008285+00
43	pbkdf2_sha256$600000$bSw4V3xDZtdWl0MXv10Amh$UN3fwyeNKM03PGD4mdw/+iLK4M7I+/UlzcOUZIvspD0=	\N	f	wvfdyszt	wvf	dyszt		f	t	2024-12-28 16:19:49.20064+00
44	pbkdf2_sha256$600000$1ZAaYFSHHFX8rSqFRLIx1Z$QJHsM5U14SucT47WuC3LIA3lbnTjqtD0m5Dpg1E3E+Y=	\N	f	unyjwegyoy	unyjweg	yoy		f	t	2024-12-28 16:19:49.393068+00
45	pbkdf2_sha256$600000$zi39tinTc9icPmeC1lxL2E$bfMlE4Uw11oZUlOmJepuVAi8tLCPDQ28T0qZlLvqvHg=	\N	f	dgeltmeozuhqfcqy	dgeltm	eozuhqfcqy		f	t	2024-12-28 16:19:49.586763+00
46	pbkdf2_sha256$600000$3xjMON2rHS0pPYNLwvRhvu$+dSZFoBA0MG5OcmrzUMVG9BVEcFsfr6zJmjw3DLMvTs=	\N	f	odnhknsuzc	odnhk	nsuzc		f	t	2024-12-28 16:19:49.782307+00
47	pbkdf2_sha256$600000$7P2yaRKvDzaI22DJJTq53d$wOtcKS/sjv9Vb1g2gAn++JrIvfYmZi1+8Tdw2XGrhCQ=	\N	f	xfkddussgdfzhr	xfkd	dussgdfzhr		f	t	2024-12-28 16:19:49.980836+00
48	pbkdf2_sha256$600000$MTMnRglPhpDMOjfBqIme2U$JJACdr/YZ3oa6v21SGnwcU8xQCmy3uZDyh5HuvL+1yY=	\N	f	rgofozukhbcztfpvk	rgofozukhb	cztfpvk		f	t	2024-12-28 16:19:50.178082+00
49	pbkdf2_sha256$600000$UbLLZo0k0yky4IQyHVy10Z$/ZgxUMY+dNSOZanLhYXepD0QxTdJ9VVacT0cwW6dRGs=	\N	f	tgsqbqtjmxee	tgsqb	qtjmxee		f	t	2024-12-28 16:19:50.372441+00
50	pbkdf2_sha256$600000$epISN3N9kmuCzcz5H0Tfe7$7E+Xxpa3BTqbKhcC16JOOtBitNVfFUgcanSojT3Cm4Y=	\N	f	cwqpgdfuvfe	cwqpgd	fuvfe		f	t	2024-12-28 16:19:50.566652+00
51	pbkdf2_sha256$600000$xwHDF6EqIZusl8BqufuVMY$6xgmKyIPHmTkiETZPWkOwT82hv4VC3FU839S7Z1Ktr0=	\N	f	ynejziaiqsr	ynej	ziaiqsr		f	t	2024-12-28 16:19:50.754242+00
52	pbkdf2_sha256$600000$zExiIEUmncQAod8ccsCNAK$XDpqmCNPb6kgixQWmCZz8PrxqamXMbBO1wrn+kHpYJI=	\N	f	yifwhvaccyw	yifwh	vaccyw		f	t	2024-12-28 16:19:50.947984+00
53	pbkdf2_sha256$600000$ocJCEHLoMplYFBEa3b4XjI$mm19QXjQrB1txoNuCoiGFO6K9A1LR8eG8avfebejZxU=	\N	f	wpgnlodhya	wpg	nlodhya		f	t	2024-12-28 16:19:51.139094+00
54	pbkdf2_sha256$600000$F8j6NFUHhuEO5AKPdzm6sf$+XdPDVwR+ud2NVGlNT1P6T4Ltk6CX4b0Vq1JdfKN11g=	\N	f	wfwmdzkiwpnnca	wfwmdzkiw	pnnca		f	t	2024-12-28 16:19:51.334149+00
55	pbkdf2_sha256$600000$O2kx0J8TSa0HBina2FAopp$EXBqbfhqycpaVuXp7BysEoOgD2wFRezvYafZK9lox18=	\N	f	infkmqgtv	inf	kmqgtv		f	t	2024-12-28 16:19:51.528432+00
56	pbkdf2_sha256$600000$N67HYNMovPuSaaukhWuBnX$BnKUZ0V6jnn1I8i+0TRBZLMYd4RQWK/Is1LGaj2rhzs=	\N	f	vjtooarmkgmnkv	vjto	oarmkgmnkv		f	t	2024-12-28 16:19:51.725895+00
57	pbkdf2_sha256$600000$o1bxhFidhaQr1M7ZyQsL8L$YuoTafpeI+iDVG5FnY7Zy+2OYqn/fPKbjJ0WUwlEhAw=	\N	f	xrtfmucxcoa	xrtf	mucxcoa		f	t	2024-12-28 16:19:51.927036+00
58	pbkdf2_sha256$600000$Qi8nxRWiqSMiQYcb3LuPra$57JyzDp7BoVqj7xJBP26VUBjGMHnQbWaJzVajfLwDNk=	\N	f	jfudtcgqgpx	jfudt	cgqgpx		f	t	2024-12-28 16:19:52.123483+00
59	pbkdf2_sha256$600000$ShyoJeLPjCJSEihL7jwh7e$ly6RBhoxS5+reSesatHq/zNrJcsD59RSeSGtCqz0L0A=	\N	f	myojyx	myo	jyx		f	t	2024-12-28 16:19:52.322554+00
60	pbkdf2_sha256$600000$vPN3h8EIEx29su1hk8bB3Z$u1Cme2GSQXTwmnmjDFe+A6bn9faQv4dyHVV41lgiMgc=	\N	f	ygogvbd	ygog	vbd		f	t	2024-12-28 16:19:52.514506+00
61	pbkdf2_sha256$600000$dhlCQwSh6zOZ9eJXpIUJEp$P9EOzJwilMFS6sFAiCoUxY57x/kbawnhIsw7mAle41E=	\N	f	qzzcuxvnyfbr	qzzcuxvny	fbr		f	t	2024-12-28 16:19:52.708305+00
62	pbkdf2_sha256$600000$ZULowdhYRMUiNIFVE6mXrw$e1sHHntPzRvsTaLEgbSKU4KGRM7s0OIQx6z4vYy+BMs=	\N	f	gyzgvqqeysjzexm	gyzgvq	qeysjzexm		f	t	2024-12-28 16:19:52.909251+00
63	pbkdf2_sha256$600000$eKU560bukIiZ4UjeJOjX1J$mwSN1T8KvJa1x7SElzx9k3WU1OBdh9IPs0wL3Nn5ISg=	\N	f	ayoxxyjeg	ayox	xyjeg		f	t	2024-12-28 16:19:53.120685+00
64	pbkdf2_sha256$600000$E0EKipXnBwx1bWychS7NQL$sR7oxeCcucQSDwMxriDxxxSHjuZF8t74tjxOBKkn3tY=	\N	f	avenxypnvvh	avenxypn	vvh		f	t	2024-12-28 16:19:53.321716+00
65	pbkdf2_sha256$600000$X5ZWvuIuaH1ADWCUEs1a6e$2gvSUh/ZMlM/ovNqKh3WiLJ5T19G1hoqSnHIUOv+TUA=	\N	f	qpzanwotsqcxais	qpzanwo	tsqcxais		f	t	2024-12-28 16:19:53.516751+00
66	pbkdf2_sha256$600000$SX7mDeXC3DmVHxqIFrtr5a$1lCEzGMt1C4ERd2wNQ2i4jLxlrm6pmCjIkZZ9qoIdQM=	\N	f	reiavvtkjl	rei	avvtkjl		f	t	2024-12-28 16:19:53.710633+00
67	pbkdf2_sha256$600000$YEjMh3H3tu5RnzjjHwt2Bo$bWyZierkAUwMKS2VfqSNx9EdwW+/MqjmxrJdzRXeaKs=	\N	f	mvxxcuytacz	mvxxc	uytacz		f	t	2024-12-28 16:19:53.903721+00
68	pbkdf2_sha256$600000$LLkJv4PoSmHWTVBEQbSQ3Q$ADgY6c3rJ1FqhNH/Sw1nFUzyJM92f8lBw2I9Bd0Uq70=	\N	f	ewcpwfhumvjqu	ewc	pwfhumvjqu		f	t	2024-12-28 16:19:54.098025+00
69	pbkdf2_sha256$600000$5BPHj7K8qYumO9U51nKTFl$kVo+aJqzt3O+C8SizZTMsy91/LLle1N15Pi/DAAqcOA=	\N	f	juhqalnhjwxv	juhqalnh	jwxv		f	t	2024-12-28 16:19:54.294945+00
70	pbkdf2_sha256$600000$WZbjibY8YX5NHIwRenmhDU$kDQ4Z0oGi43lSyaJgiqqzXyAzxV93UjIC2YPRewjltQ=	\N	f	inbfiknkohdzskltc	inbfiknk	ohdzskltc		f	t	2024-12-28 16:19:54.490981+00
71	pbkdf2_sha256$600000$wYwuSFDJropwpUAADittqN$STjG+/fiSbPufLzZfxPKx0eTA8oBzGQbx0o+t3zKKos=	\N	f	vncuxptiwnsehxd	vncuxp	tiwnsehxd		f	t	2024-12-28 16:19:54.685845+00
72	pbkdf2_sha256$600000$FVhFuxDi5bQ2IaIvvXe99q$q21qXAEVStBR+xKk3QL4N3nk6vzQybQU8qRjg5dIuXI=	\N	f	eywtxthrojalzknv	eywtxth	rojalzknv		f	t	2024-12-28 16:19:54.880299+00
73	pbkdf2_sha256$600000$FISEMcwUD9UTMayTRDyhok$DVkE7oDhw3JD6l6du7wla0+dZ9mwIcH9VwjoPck6Mvg=	\N	f	hsdcfnxm	hsd	cfnxm		f	t	2024-12-28 16:19:55.074156+00
74	pbkdf2_sha256$600000$TTNSaoypwDy3TWzXFaLInR$cdFsaBAkD0s5Q2N5gulhuOJf3wNjLgzmcZglAguagwc=	\N	f	artztl	art	ztl		f	t	2024-12-28 16:19:55.267776+00
75	pbkdf2_sha256$600000$DnWznAdJmeVneP5c8O0Nbe$qwEHtMjskYaaDNTc9vfw1WbRU3qKKmsM3arttyEUTDI=	\N	f	woqfsxlgxyfbd	woqf	sxlgxyfbd		f	t	2024-12-28 16:19:55.461332+00
76	pbkdf2_sha256$600000$MNR40Y6FE77vSaHSJ0v0hw$eX1QZXc6yuFFofs+PTIEPF6Y1g3+I0QaU6URmf4eDB8=	\N	f	koltsgcckitexo	koltsgcc	kitexo		f	t	2024-12-28 16:19:55.652024+00
77	pbkdf2_sha256$600000$gTbq7mvuxFbzpseN1SstFB$KXzid6Mi1SxKDNvJggjNE1Kn+vZmTbA50bSMCuyMW4E=	\N	f	uguuhqziffju	uguuhqzi	ffju		f	t	2024-12-28 16:19:55.85184+00
78	pbkdf2_sha256$600000$zbBMzz76ljBoudZ8JxCkvj$J5UhzNs9eeehlDQChcKMpPb0dhIx+YYjOCy1gdzxF1g=	\N	f	wnctsjiudy	wnctsj	iudy		f	t	2024-12-28 16:19:56.054015+00
79	pbkdf2_sha256$600000$uknXjcoKhWEVYjPYQtvdgI$mkrkqOCDs3T2EooTt/3ovKTB1YfAvAzCCu+a2OlszfU=	\N	f	raadvofdwri	raadvofd	wri		f	t	2024-12-28 16:19:56.241467+00
80	pbkdf2_sha256$600000$US5I5aEQR3ZyZPuVvFvcHb$anhuSMEfcYANi69OfmJ7r/eSKeEEge/CAcg2UwULN1c=	\N	f	abluoywpjl	ablu	oywpjl		f	t	2024-12-28 16:19:56.433326+00
81	pbkdf2_sha256$600000$aYHUwyICCWn3hN9O72Uok3$mE0JTx0p+rYjl64YN3BDQ3E2ajadJqJKhmIMyFgIa/M=	\N	f	fpdemtjbjsv	fpdemt	jbjsv		f	t	2024-12-28 16:19:56.629494+00
82	pbkdf2_sha256$600000$0x5Zesf8b8Y8SkwcfdhpjU$lsuGMMjVrXQxOYZowRT4c59x+diIEPwR0F2hA+ZZoRk=	\N	f	vxonvol	vxo	nvol		f	t	2024-12-28 16:19:56.822558+00
83	pbkdf2_sha256$600000$AH4TNO9dmXlnrHagdijfvj$2MyHXYvy+ww9MP43UU6HfDqnJRVsmO38mOR/LqApPS4=	\N	f	cqkrjeroyvyk	cqkrj	eroyvyk		f	t	2024-12-28 16:19:57.017871+00
84	pbkdf2_sha256$600000$Vkijbl9x3Wj2dcK3HafGdJ$oMVy7V9s5JRsBdL1mzgv+fGV3Ozt7/TAcppwpXpwoYc=	\N	f	tpwmwyvoke	tpwm	wyvoke		f	t	2024-12-28 16:19:57.204149+00
85	pbkdf2_sha256$600000$o16MBORsDFhJaR6hoyPk2D$qmau5aPW2PRnz+N5DH+2TfzZKftu9wM2vO5sf+2By3A=	\N	f	sbefqgqfl	sbefq	gqfl		f	t	2024-12-28 16:19:57.396491+00
86	pbkdf2_sha256$600000$ireeI24KMBJTKXc800FHzd$bhCz8ZDmh9/fsL7TnHxD5OZ+rTTeiVzwiHGtWUeKbC8=	\N	f	lgxogimvofivkcik	lgxogimvo	fivkcik		f	t	2024-12-28 16:19:57.58921+00
87	pbkdf2_sha256$600000$y8pijqrE3fujBGAHyqWacz$KrLZLF6DHzRMS8v1VYf+F7wDS4YyCP3SGhJfgc96Hbo=	\N	f	musubphhu	mus	ubphhu		f	t	2024-12-28 16:19:57.779815+00
88	pbkdf2_sha256$600000$jEM8D1VlgunTQweJpoOmfj$OQMf7GyJNwRGu6mz4TByNhZUceYhuuXNW+MN8wrG4yM=	\N	f	pdnpemwjl	pdnpem	wjl		f	t	2024-12-28 16:19:57.972564+00
89	pbkdf2_sha256$600000$OtIM3sX3Pf4ShMhPbmAb7V$kkUSHM1mQ4ihU+hnJ6BVZItw7VMQHYLNUgx9ENYNIwY=	\N	f	ugcsgxkyahtrwcvb	ugcsgxky	ahtrwcvb		f	t	2024-12-28 16:19:58.165372+00
90	pbkdf2_sha256$600000$l9iS8MnHtJ2KCiENfG2PXb$zCkTUrZoTmJLlPNGJCVCkIZe2UMqiDvRxPcSWfyreH4=	\N	f	xbqaggbyze	xbqag	gbyze		f	t	2024-12-28 16:19:58.357567+00
91	pbkdf2_sha256$600000$s3n7HdRJJZV3f9S4UMSdVj$69OqU8KDuef9U/GbcYWBWAIBkN1St6xmsDZykOraEQ8=	\N	f	tdyyudgpxssy	tdyyud	gpxssy		f	t	2024-12-28 16:19:58.551951+00
92	pbkdf2_sha256$600000$LHLxxNXmTJAfuWb9aEPwHd$oMNnYjtFiIfoWuihRnC+zObm0/WRWcphD2KIyOp/1do=	\N	f	lkfpapf	lkfp	apf		f	t	2024-12-28 16:19:58.744916+00
93	pbkdf2_sha256$600000$AERStOuEqSbrUzmNesWmnI$usJwk8PCyXCq9kLQWh2wVU7xle8t1DtQvWZCiXW/EgE=	\N	f	kpazaudzvorp	kpaz	audzvorp		f	t	2024-12-28 16:19:58.938709+00
94	pbkdf2_sha256$600000$JLoAy35579FecnODemLDiJ$gKVnbgnntBQ8UN3ItDksTkZYB1cL458GnJ5TTpW26z4=	\N	f	ihokwsslqfzcp	ihokwsslq	fzcp		f	t	2024-12-28 16:19:59.130483+00
95	pbkdf2_sha256$600000$AOOPEuqYVjWJW0dqUgkUNn$uo/W+7KqP5nBbz/GID/clkXUVS5mj1FE/G+eyxu3a/g=	\N	f	krrewocemhege	krrew	ocemhege		f	t	2024-12-28 16:19:59.323901+00
96	pbkdf2_sha256$600000$3LaoEUk3PSl1axzau3Y4dK$LCYID81sRnw2xDniVQkjnT11LSRiYiClN1zWBdxWB08=	\N	f	qhssjsariihsfcbszlil	qhssjsarii	hsfcbszlil		f	t	2024-12-28 16:19:59.516676+00
97	pbkdf2_sha256$600000$sORm6xABefSUac15Z0BUmW$iaD06O/cEASrZ0GeCQ4ETMO5fI6PAhCj/XorH+QlSsM=	\N	f	raswrnifabg	raswrn	ifabg		f	t	2024-12-28 16:19:59.709693+00
98	pbkdf2_sha256$600000$4ByjQpPqqB8wD2gLuqtcjK$3cD31lnorco2dpW9WbsC7wtATC7lUVaUW+vq8Xa42sg=	\N	f	whbdrmzrtcc	whbdrm	zrtcc		f	t	2024-12-28 16:19:59.900331+00
99	pbkdf2_sha256$600000$SzuguWtN830nnbaqNsIo6p$dr7SvK4ZD0pnM5R1pbv7qD8/33rtcdPv8rKprBpApVA=	\N	f	pvgvxcwgghjdjog	pvgvxc	wgghjdjog		f	t	2024-12-28 16:20:00.089017+00
100	pbkdf2_sha256$600000$coSqkWE6vlAsGX8goOhFkf$j+Y7tzDILtghagPxHvPO+8NO3/0RdMaXVeF5Xv+JZjo=	\N	f	lytojsarijogmre	lytoj	sarijogmre		f	t	2024-12-28 16:20:00.28122+00
101	pbkdf2_sha256$600000$ARgGbXGLUR7n2Tg27LSzQu$hUm3Y0Lzijoet3N1DsrzAjpIvnQpAzaO1nJBKRt+2uA=	\N	f	ngybbuzgupi	ngy	bbuzgupi		f	t	2024-12-28 16:20:00.469267+00
102	pbkdf2_sha256$600000$AZLdid6eyG5CwDHlL3BrJI$qdIdTtta+RwXtH6gUWuVHuWpUJdq+2AUWpI/OBBRVC0=	\N	f	ygcttlbvhrw	ygcttlb	vhrw		f	t	2024-12-28 16:20:00.661216+00
103	pbkdf2_sha256$600000$Jp1uVdXNUJhwu1aHMKOMCO$b+kEuPmZh35AZJm66MRufJn4J0d1V1ajNtivNFkgXEg=	\N	f	ucltfuekutbgnvway	ucltfueku	tbgnvway		f	t	2024-12-28 16:20:00.854799+00
104	pbkdf2_sha256$600000$S9RADg5FxSUoU50NtCEr2g$sGzB7+qHD89+YCTXEUsnWlrRxs9pR91A/8kDaj+Z3NM=	\N	f	zurtlodieo	zurt	lodieo		f	t	2024-12-28 16:20:01.047475+00
105	pbkdf2_sha256$600000$Sa2fp8GKL0YDQhkOamfetK$mOL7MG/7zu/AxGw+mbgO5bqY4koP+3L47Q1udTghYiM=	\N	f	ctwzohtgmlgs	ctwzohtgm	lgs		f	t	2024-12-28 16:20:01.243206+00
106	pbkdf2_sha256$600000$C6R6jNsnU3cyC4PhSgoNKi$2PnDO0FtxZCCVGZgrRLMIemg4fRmEBdAMSC5WH8h9Cg=	\N	f	yxwdrwfwk	yxwdr	wfwk		f	t	2024-12-28 16:20:01.486526+00
107	pbkdf2_sha256$600000$jw0DhlVaGYFZmbDbv8I4LN$uPiyawoj+QJOSNeIQgm5iBa/sGwUBnoSJiGIltTVsuo=	\N	f	oawabjxawwfatfkl	oawabjxaww	fatfkl		f	t	2024-12-28 16:20:01.680886+00
108	pbkdf2_sha256$600000$BtVsRYLbvSkxgClksA6riV$dUhErRDegP2g3NCtSn+Y0gvyhhVqb/lFEXXVlJz2zSY=	\N	f	usawbzbxuye	usaw	bzbxuye		f	t	2024-12-28 16:20:01.876344+00
109	pbkdf2_sha256$600000$yIgN0mP3kEsbpvEh03QlXs$/J4gwXZfCE3bgXHOGuC70btx2PCLLpYmGIfcIGBC7OM=	\N	f	qkggzoapxnlymeoormz	qkggzoapxn	lymeoormz		f	t	2024-12-28 16:20:02.069748+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: core_city; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.core_city (id, name) FROM stdin;
1	Stockholm
2	Malmö
5	New York
9	Göteborg
10	Uppsala
11	Västerås
12	Jönköping
13	Linköping
14	Örebro
\.


--
-- Data for Name: core_cuisine; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.core_cuisine (id, name) FROM stdin;
2	Mexican
3	Thai
4	Chinese
5	Arab
6	Middle East
7	Italian
8	Japanese
9	Asian
10	Vegetarian
11	Swedish
12	French
13	Greek
14	Spanish
15	American
16	Fast Food
17	Vietnamese
18	Korean
19	German
20	Turkish
21	Lebanese
22	British
23	Brazilian
24	Ethiopian
25	Danish
26	Nepalese
1	Indian
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-03-25 21:27:38.483027+00	3	musa	1	[{"added": {}}]	4	1
2	2024-09-08 20:16:43.166411+00	5	lseirjgsler	2	[{"changed": {"fields": ["Image"]}}]	9	1
3	2024-09-08 20:22:30.253984+00	1	RestaurantImage object (1)	1	[{"added": {}}]	10	1
4	2024-09-12 06:51:23.298648+00	2	RestaurantImage object (2)	1	[{"added": {}}]	10	1
5	2024-09-12 06:54:02.192636+00	3	RestaurantImage object (3)	1	[{"added": {}}]	10	1
6	2024-10-01 12:08:44.271459+00	3	Reservation object (3)	2	[{"changed": {"fields": ["Note", "Restaurant"]}}]	11	1
7	2024-10-01 12:09:19.846258+00	4	Reservation object (4)	1	[{"added": {}}]	11	1
8	2024-10-01 12:09:45.869159+00	5	Reservation object (5)	1	[{"added": {}}]	11	1
9	2024-10-03 18:27:53.349771+00	6	restaurant with jwt	2	[{"changed": {"fields": ["Owner"]}}]	9	1
10	2024-10-03 18:28:20.255966+00	6	restaurant with jwt	2	[{"changed": {"fields": ["Owner"]}}]	9	1
11	2024-10-03 18:28:37.62396+00	6	restaurant with jwt	2	[{"changed": {"fields": ["Owner"]}}]	9	1
12	2024-10-11 20:07:58.826084+00	7	Musa'nin Tostlari	2	[{"changed": {"fields": ["Slug"]}}]	9	1
13	2024-10-15 09:34:03.668829+00	5	New York	1	[{"added": {}}]	7	1
14	2024-10-15 09:34:27.574909+00	7	Italian	1	[{"added": {}}]	8	1
15	2024-10-15 09:34:50.153782+00	9	La Dolce Vita	1	[{"added": {}}]	9	1
16	2024-10-15 09:35:39.264559+00	6	Los Angeles	1	[{"added": {}}]	7	1
17	2024-10-15 09:35:47.668564+00	10	Spice Route	1	[{"added": {}}]	9	1
18	2024-10-15 09:37:02.577891+00	7	San Francisco	1	[{"added": {}}]	7	1
19	2024-10-15 09:37:14.561854+00	8	Japanese	1	[{"added": {}}]	8	1
20	2024-10-15 09:37:22.633898+00	9	Asian	1	[{"added": {}}]	8	1
21	2024-10-15 09:37:28.894274+00	11	Sakura Blossom	1	[{"added": {}}]	9	1
22	2024-10-15 09:38:21.367432+00	10	Vegetarian	1	[{"added": {}}]	8	1
23	2024-10-15 09:39:52.667096+00	5	StarryKnight01	1	[{"added": {}}]	4	1
24	2024-10-15 09:40:08.177447+00	8	Portland	1	[{"added": {}}]	7	1
25	2024-10-15 09:40:12.546657+00	12	The Green Bowl	1	[{"added": {}}]	9	1
26	2024-10-15 20:39:27.821837+00	5	Imajli Restoran	2	[{"changed": {"fields": ["Name"]}}]	9	1
27	2024-10-15 20:40:14.766697+00	5	Imajli Restoran	2	[{"changed": {"fields": ["Slug"]}}]	9	1
28	2024-10-15 21:01:59.02683+00	2	slekrjg	2	[{"changed": {"fields": ["Image"]}}]	9	1
29	2024-10-16 11:17:59.97146+00	8	Reservation object (8)	2	[{"changed": {"fields": ["Status"]}}]	11	1
30	2024-10-16 11:18:03.215779+00	6	Reservation object (6)	2	[{"changed": {"fields": ["Status"]}}]	11	1
31	2024-10-16 11:18:07.000184+00	4	Reservation object (4)	2	[{"changed": {"fields": ["Status"]}}]	11	1
32	2024-10-16 11:18:25.770069+00	10	Reservation object (10)	2	[{"changed": {"fields": ["Status"]}}]	11	1
33	2024-10-29 08:50:45.260999+00	4	RestaurantImage object (4)	1	[{"added": {}}]	10	1
34	2024-11-07 07:52:16.58947+00	7	Musa'nin Tostlari	2	[{"changed": {"fields": ["Image"]}}]	9	1
35	2024-11-07 10:35:10.751039+00	13	Jane Dewey	3		9	1
36	2024-11-07 10:35:10.762629+00	12	The Green Bowl	3		9	1
37	2024-11-07 10:35:10.77172+00	11	Sakura Blossom	3		9	1
38	2024-11-07 10:35:10.781683+00	10	Spice Route	3		9	1
39	2024-11-07 10:35:10.790469+00	9	La Dolce Vita	3		9	1
40	2024-11-07 10:35:10.800403+00	8	Music	3		9	1
41	2024-11-07 10:35:10.81061+00	7	Musa'nin Tostlari	3		9	1
42	2024-11-07 10:35:10.820663+00	6	The Whimsical Fork	3		9	1
43	2024-11-07 10:35:10.830275+00	5	Imajli Restoran	3		9	1
44	2024-11-07 10:35:10.843032+00	4	alergjs	3		9	1
45	2024-11-07 10:35:10.855284+00	3	jfoo2nxnzbb	3		9	1
46	2024-11-07 10:35:10.866909+00	2	slekrjg	3		9	1
47	2024-11-07 10:35:10.876797+00	1	Ozlem Ana	3		9	1
48	2024-11-07 10:36:30.153188+00	11	Swedish	1	[{"added": {}}]	8	1
49	2024-11-07 10:36:46.562851+00	14	Bistro Stockholm	1	[{"added": {}}]	9	1
50	2024-11-07 10:37:32.828773+00	15	La Bella Vita	1	[{"added": {}}]	9	1
51	2024-11-07 10:38:25.947617+00	12	French	1	[{"added": {}}]	8	1
52	2024-11-07 10:38:40.678675+00	16	Café de Paris	1	[{"added": {}}]	9	1
53	2024-11-07 10:39:31.270614+00	13	Greek	1	[{"added": {}}]	8	1
54	2024-11-07 10:39:35.965667+00	17	Athena Taverna	1	[{"added": {}}]	9	1
55	2024-11-07 10:40:25.303007+00	18	Bangkok Spice	1	[{"added": {}}]	9	1
56	2024-11-07 10:41:02.518215+00	19	Maharaja's Table	1	[{"added": {}}]	9	1
57	2024-11-07 10:41:51.458873+00	20	Sakura House	1	[{"added": {}}]	9	1
58	2024-11-07 10:42:30.606102+00	14	Spanish	1	[{"added": {}}]	8	1
59	2024-11-07 10:42:35.522081+00	21	El Matador	1	[{"added": {}}]	9	1
60	2024-11-07 10:43:17.056598+00	15	American	1	[{"added": {}}]	8	1
61	2024-11-07 10:43:26.604908+00	16	Fast Food	1	[{"added": {}}]	8	1
62	2024-11-07 10:43:32.111148+00	22	The Grill House	1	[{"added": {}}]	9	1
63	2024-11-07 10:44:24.327196+00	23	Shangri-La	1	[{"added": {}}]	9	1
64	2024-11-07 10:45:04.052586+00	9	Göteborg	1	[{"added": {}}]	7	1
65	2024-11-07 10:45:26.091441+00	24	Göteborgs Krogar	1	[{"added": {}}]	9	1
66	2024-11-07 10:46:04.260702+00	25	Bella Notte	1	[{"added": {}}]	9	1
67	2024-11-07 10:47:22.797861+00	17	Vietnamese	1	[{"added": {}}]	8	1
68	2024-11-07 10:47:27.055695+00	26	A Taste of Vietnam	1	[{"added": {}}]	9	1
69	2024-11-07 10:48:22.333523+00	27	Café Parisien	1	[{"added": {}}]	9	1
70	2024-11-07 10:49:23.38615+00	28	Saffron Palace	1	[{"added": {}}]	9	1
71	2024-11-07 10:50:14.308958+00	29	La Tapita	1	[{"added": {}}]	9	1
72	2024-11-07 10:50:54.296644+00	18	Korean	1	[{"added": {}}]	8	1
73	2024-11-07 10:50:59.926189+00	30	Seoul Bowl	1	[{"added": {}}]	9	1
74	2024-11-07 10:51:41.394138+00	31	Malmo’s Smaker	1	[{"added": {}}]	9	1
75	2024-11-07 10:53:39.412819+00	32	El Mexicano	1	[{"added": {}}]	9	1
76	2024-11-07 10:54:12.597376+00	33	Zen Garden	1	[{"added": {}}]	9	1
77	2024-11-07 10:54:43.009397+00	34	Little India	1	[{"added": {}}]	9	1
78	2024-11-07 10:55:49.663174+00	35	The Olive Grove	1	[{"added": {}}]	9	1
79	2024-11-07 10:56:35.697356+00	19	German	1	[{"added": {}}]	8	1
80	2024-11-07 10:56:44.839388+00	36	Hamburg Hof	1	[{"added": {}}]	9	1
81	2024-11-07 10:57:55.943248+00	20	Turkish	1	[{"added": {}}]	8	1
82	2024-11-07 10:58:03.845023+00	37	Istanbul Delight	1	[{"added": {}}]	9	1
83	2024-11-07 10:58:39.115594+00	38	Ephesus Grill	1	[{"added": {}}]	9	1
84	2024-11-07 10:59:16.611971+00	39	Anatolian Bites	1	[{"added": {}}]	9	1
85	2024-11-07 10:59:58.772139+00	10	Uppsala	1	[{"added": {}}]	7	1
86	2024-11-07 11:00:11.261119+00	40	Sultan’s Table	1	[{"added": {}}]	9	1
87	2024-11-07 11:00:49.854503+00	11	Västerås	1	[{"added": {}}]	7	1
88	2024-11-07 11:01:00.28949+00	41	Taste of Istanbul	1	[{"added": {}}]	9	1
89	2024-11-07 11:02:02.849132+00	42	Uppsalaköket	1	[{"added": {}}]	9	1
90	2024-11-07 11:02:46.124148+00	43	Amigos de Espana	1	[{"added": {}}]	9	1
91	2024-11-07 11:13:45.717847+00	44	Le Petit Café	1	[{"added": {}}]	9	1
92	2024-11-07 11:14:38.879018+00	21	Lebanese	1	[{"added": {}}]	8	1
93	2024-11-07 11:14:44.317928+00	45	Taste of Beirut	1	[{"added": {}}]	9	1
94	2024-11-07 11:15:25.763563+00	22	British	1	[{"added": {}}]	8	1
95	2024-11-07 11:15:29.375889+00	46	The British Pub	1	[{"added": {}}]	9	1
96	2024-11-07 11:17:00.571232+00	47	Västerås Krog	1	[{"added": {}}]	9	1
97	2024-11-07 11:17:39.673289+00	48	Toscana Trattoria	1	[{"added": {}}]	9	1
98	2024-11-07 11:18:19.461483+00	49	Koh Thai	1	[{"added": {}}]	9	1
99	2024-11-07 11:19:37.931397+00	23	Brazilian	1	[{"added": {}}]	8	1
100	2024-11-07 11:19:42.359254+00	50	Casa Brazil	1	[{"added": {}}]	9	1
101	2024-11-07 11:20:36.650114+00	51	Middle Eastern Feast	1	[{"added": {}}]	9	1
102	2024-11-07 11:22:15.893136+00	52	Bavarian Feast	1	[{"added": {}}]	9	1
103	2024-11-07 11:23:06.425729+00	53	Pho & Co.	1	[{"added": {}}]	9	1
104	2024-11-07 11:23:39.570218+00	54	Hacienda del Sol	1	[{"added": {}}]	9	1
105	2024-11-07 11:24:16.065563+00	24	Ethiopian	1	[{"added": {}}]	8	1
106	2024-11-07 11:24:56.367125+00	55	Nairobi Spice	1	[{"added": {}}]	9	1
107	2024-11-07 11:25:33.433572+00	12	Jönköping	1	[{"added": {}}]	7	1
108	2024-11-07 11:25:44.598358+00	56	New York Diner	1	[{"added": {}}]	9	1
109	2024-11-07 11:26:34.249749+00	13	Linköping	1	[{"added": {}}]	7	1
110	2024-11-07 11:26:43.676367+00	57	Casa de Tapas	1	[{"added": {}}]	9	1
111	2024-11-07 11:27:44.426306+00	25	Danish	1	[{"added": {}}]	8	1
112	2024-11-07 11:27:48.217111+00	58	Smørrebrød Haven	1	[{"added": {}}]	9	1
113	2024-11-07 11:28:26.333743+00	59	Hygge Café	1	[{"added": {}}]	9	1
114	2024-11-07 11:29:50.973997+00	26	Nepalese	1	[{"added": {}}]	8	1
115	2024-11-07 11:29:55.417959+00	60	Himalayan Kitchen	1	[{"added": {}}]	9	1
116	2024-11-07 11:30:46.902856+00	14	Örebro	1	[{"added": {}}]	7	1
117	2024-11-07 11:31:07.447755+00	61	Ginza Sushi Bar	1	[{"added": {}}]	9	1
118	2024-11-07 11:32:01.672144+00	62	Tandoori Flames	1	[{"added": {}}]	9	1
119	2024-11-07 11:33:24.820027+00	63	Love of Rio	1	[{"added": {}}]	9	1
120	2024-11-12 11:12:54.103601+00	63	Love of Rio	2	[{"changed": {"fields": ["Image"]}}]	9	1
121	2024-11-12 11:13:55.286936+00	42	Uppsalaköket	2	[{"changed": {"fields": ["Image"]}}]	9	1
122	2024-11-12 11:18:31.257177+00	62	Tandoori Flames	2	[{"changed": {"fields": ["Image"]}}]	9	1
123	2024-11-12 11:19:05.223445+00	61	Ginza Sushi Bar	2	[{"changed": {"fields": ["Image"]}}]	9	1
124	2024-11-12 11:19:20.122274+00	60	Himalayan Kitchen	2	[{"changed": {"fields": ["Image"]}}]	9	1
125	2024-11-12 11:19:42.114442+00	59	Hygge Café	2	[{"changed": {"fields": ["Image"]}}]	9	1
126	2024-11-12 11:19:57.917777+00	58	Smørrebrød Haven	2	[{"changed": {"fields": ["Image"]}}]	9	1
127	2024-11-12 11:20:12.89961+00	57	Casa de Tapas	2	[{"changed": {"fields": ["Image"]}}]	9	1
128	2024-11-12 11:20:24.797579+00	56	New York Diner	2	[{"changed": {"fields": ["Image"]}}]	9	1
129	2024-11-12 11:20:33.39651+00	55	Nairobi Spice	2	[]	9	1
130	2024-11-12 11:20:44.156068+00	55	Nairobi Spice	2	[{"changed": {"fields": ["Image"]}}]	9	1
131	2024-11-12 11:20:57.680975+00	54	Hacienda del Sol	2	[{"changed": {"fields": ["Image"]}}]	9	1
132	2024-11-12 11:22:01.452104+00	53	Pho & Co.	2	[{"changed": {"fields": ["Image"]}}]	9	1
133	2024-11-12 11:22:14.112785+00	52	Bavarian Feast	2	[{"changed": {"fields": ["Image"]}}]	9	1
134	2024-11-12 11:22:28.324908+00	51	Middle Eastern Feast	2	[{"changed": {"fields": ["Image"]}}]	9	1
135	2024-11-12 11:22:42.127606+00	50	Casa Brazil	2	[{"changed": {"fields": ["Image"]}}]	9	1
136	2024-11-12 11:22:53.802273+00	49	Koh Thai	2	[{"changed": {"fields": ["Image"]}}]	9	1
137	2024-11-12 11:23:04.842466+00	48	Toscana Trattoria	2	[{"changed": {"fields": ["Image"]}}]	9	1
138	2024-11-12 11:23:16.130261+00	47	Västerås Krog	2	[{"changed": {"fields": ["Image"]}}]	9	1
139	2024-11-12 11:23:28.211755+00	46	The British Pub	2	[{"changed": {"fields": ["Image"]}}]	9	1
140	2024-11-12 11:23:39.322047+00	45	Taste of Beirut	2	[{"changed": {"fields": ["Image"]}}]	9	1
141	2024-11-12 11:23:54.235577+00	44	Le Petit Café	2	[{"changed": {"fields": ["Image"]}}]	9	1
142	2024-11-12 11:25:05.104705+00	43	Amigos de Espana	2	[{"changed": {"fields": ["Image"]}}]	9	1
143	2024-11-12 11:25:08.028851+00	43	Amigos de Espana	2	[{"changed": {"fields": ["Image"]}}]	9	1
144	2024-11-12 11:25:19.420569+00	41	Taste of Istanbul	2	[{"changed": {"fields": ["Image"]}}]	9	1
145	2024-11-12 11:25:30.412062+00	40	Sultan’s Table	2	[{"changed": {"fields": ["Image"]}}]	9	1
146	2024-11-12 11:25:40.9412+00	39	Anatolian Bites	2	[{"changed": {"fields": ["Image"]}}]	9	1
147	2024-11-12 11:25:51.680797+00	38	Ephesus Grill	2	[{"changed": {"fields": ["Image"]}}]	9	1
148	2024-11-12 11:26:02.834127+00	37	Istanbul Delight	2	[{"changed": {"fields": ["Image"]}}]	9	1
149	2024-11-12 11:26:13.320147+00	36	Hamburg Hof	2	[{"changed": {"fields": ["Image"]}}]	9	1
150	2024-11-12 11:26:25.056734+00	35	The Olive Grove	2	[{"changed": {"fields": ["Image"]}}]	9	1
151	2024-11-12 11:26:35.599751+00	34	Little India	2	[{"changed": {"fields": ["Image"]}}]	9	1
152	2024-11-12 11:26:46.219195+00	33	Zen Garden	2	[{"changed": {"fields": ["Image"]}}]	9	1
153	2024-11-12 11:27:05.125391+00	63	Love of Rio	2	[{"changed": {"fields": ["Image"]}}]	9	1
154	2024-11-13 20:52:06.962927+00	61	Ginza Sushi Bar	2	[{"changed": {"fields": ["Image"]}}]	9	1
155	2024-11-13 20:59:09.478841+00	14	Bistro Stockholm	2	[{"changed": {"fields": ["Image"]}}]	9	1
156	2024-11-13 21:00:59.009342+00	14	Bistro Stockholm	2	[{"changed": {"fields": ["Image"]}}]	9	1
157	2024-11-13 21:01:39.757765+00	20	RestaurantImage object (20)	1	[{"added": {}}]	10	1
158	2024-11-13 21:06:20.626567+00	14	Bistro Stockholm	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (21)"}}]	9	1
159	2024-11-13 21:17:12.993249+00	8	Portland	3		7	1
160	2024-11-13 21:17:13.003468+00	7	San Francisco	3		7	1
161	2024-11-13 21:17:13.079679+00	6	Los Angeles	3		7	1
162	2024-11-13 21:17:13.088253+00	4	Oslo	3		7	1
163	2024-11-13 21:17:13.097269+00	3	Gotegorg	3		7	1
164	2024-11-13 21:17:29.817653+00	1	Indian	2	[{"changed": {"fields": ["Name"]}}]	8	1
165	2024-11-18 13:06:13.655455+00	22	RestaurantImage object (22)	3		10	1
166	2024-11-18 13:06:13.677831+00	20	RestaurantImage object (20)	3		10	1
167	2024-11-18 13:13:23.806913+00	60	Himalayan Kitchen	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (23)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (24)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (25)"}}]	9	1
168	2024-11-18 13:16:38.550644+00	54	Hacienda del Sol	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (26)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (27)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (28)"}}]	9	1
169	2024-11-18 13:17:27.407981+00	32	El Mexicano	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (29)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (30)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (31)"}}]	9	1
170	2024-11-18 13:19:39.695083+00	49	Koh Thai	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (32)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (33)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (34)"}}]	9	1
171	2024-11-18 13:20:18.216887+00	18	Bangkok Spice	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (35)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (36)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (37)"}}]	9	1
172	2024-11-18 13:21:41.125903+00	23	Shangri-La	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (38)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (39)"}}]	9	1
173	2024-11-18 13:21:55.692982+00	23	Shangri-La	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (40)"}}]	9	1
174	2024-11-18 13:23:55.968578+00	51	Middle Eastern Feast	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (41)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (42)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (43)"}}]	9	1
175	2024-11-18 13:27:29.524051+00	48	Toscana Trattoria	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (44)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (45)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (46)"}}]	9	1
176	2024-11-18 13:28:04.672635+00	25	Bella Notte	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (47)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (48)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (49)"}}]	9	1
177	2024-11-18 13:28:40.37473+00	15	La Bella Vita	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (50)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (51)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (52)"}}]	9	1
178	2024-11-18 13:30:22.243535+00	61	Ginza Sushi Bar	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (53)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (54)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (55)"}}]	9	1
179	2024-11-18 13:31:06.08968+00	33	Zen Garden	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (56)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (57)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (58)"}}]	9	1
180	2024-11-18 13:31:46.839132+00	20	Sakura House	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (59)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (60)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (61)"}}]	9	1
181	2024-11-18 13:35:46.322212+00	47	Västerås Krog	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (62)"}}]	9	1
182	2024-11-18 13:36:39.670359+00	42	Uppsalaköket	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (63)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (64)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (65)"}}]	9	1
183	2024-11-18 13:37:29.338708+00	31	Malmo’s Smaker	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (66)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (67)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (68)"}}]	9	1
184	2024-11-18 13:38:14.44657+00	24	Göteborgs Krogar	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (69)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (70)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (71)"}}]	9	1
185	2024-11-18 13:38:40.06339+00	14	Bistro Stockholm	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (72)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (73)"}}]	9	1
186	2024-11-18 13:46:20.082299+00	44	Le Petit Café	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (74)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (75)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (76)"}}]	9	1
187	2024-11-18 13:47:09.703269+00	27	Café Parisien	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (77)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (78)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (79)"}}]	9	1
188	2024-11-18 13:47:50.296296+00	16	Café de Paris	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (80)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (81)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (82)"}}]	9	1
189	2024-11-18 13:49:48.028413+00	35	The Olive Grove	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (83)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (84)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (85)"}}]	9	1
190	2024-11-18 13:50:21.066028+00	17	Athena Taverna	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (86)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (87)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (88)"}}]	9	1
191	2024-11-18 13:52:55.042247+00	57	Casa de Tapas	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (89)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (90)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (91)"}}]	9	1
192	2024-11-18 13:53:32.081187+00	43	Amigos de Espana	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (92)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (93)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (94)"}}]	9	1
193	2024-11-18 13:54:13.490248+00	29	La Tapita	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (95)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (96)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (97)"}}]	9	1
219	2024-11-18 15:32:04.373078+00	63	Love of Rio	2	[{"changed": {"fields": ["Image"]}}]	9	1
194	2024-11-18 13:54:49.511277+00	21	El Matador	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (98)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (99)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (100)"}}]	9	1
195	2024-11-18 13:56:55.752386+00	56	New York Diner	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (101)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (102)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (103)"}}]	9	1
196	2024-11-18 13:57:31.320227+00	22	The Grill House	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (104)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (105)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (106)"}}]	9	1
197	2024-11-18 13:59:13.526418+00	53	Pho & Co.	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (107)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (108)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (109)"}}]	9	1
198	2024-11-18 14:00:00.540238+00	26	A Taste of Vietnam	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (110)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (111)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (112)"}}]	9	1
199	2024-11-18 14:01:48.863482+00	30	Seoul Bowl	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (113)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (114)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (115)"}}]	9	1
200	2024-11-18 14:03:25.840908+00	52	Bavarian Feast	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (116)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (117)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (118)"}}]	9	1
201	2024-11-18 14:03:55.025315+00	36	Hamburg Hof	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (119)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (120)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (121)"}}]	9	1
202	2024-11-18 14:06:39.412844+00	41	Taste of Istanbul	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (122)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (123)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (124)"}}]	9	1
203	2024-11-18 14:08:49.113701+00	40	Sultan’s Table	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (126)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (127)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (128)"}}]	9	1
204	2024-11-18 14:09:23.12128+00	39	Anatolian Bites	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (129)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (130)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (131)"}}]	9	1
205	2024-11-18 14:09:57.42177+00	38	Ephesus Grill	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (132)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (133)"}}]	9	1
206	2024-11-18 14:10:11.047777+00	37	Istanbul Delight	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (134)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (135)"}}]	9	1
207	2024-11-18 14:18:32.281621+00	45	Taste of Beirut	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (136)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (137)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (138)"}}]	9	1
208	2024-11-18 14:20:18.093459+00	46	The British Pub	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (139)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (140)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (141)"}}]	9	1
209	2024-11-18 14:22:19.708687+00	63	Love of Rio	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (142)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (143)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (144)"}}]	9	1
210	2024-11-18 14:22:45.5416+00	50	Casa Brazil	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (145)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (146)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (147)"}}]	9	1
211	2024-11-18 14:24:16.55299+00	55	Nairobi Spice	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (148)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (149)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (150)"}}]	9	1
212	2024-11-18 14:25:55.973743+00	59	Hygge Café	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (151)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (152)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (153)"}}]	9	1
213	2024-11-18 14:26:15.839214+00	58	Smørrebrød Haven	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (154)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (155)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (156)"}}]	9	1
214	2024-11-18 14:26:22.933576+00	58	Smørrebrød Haven	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (157)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (158)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (159)"}}]	9	1
215	2024-11-18 14:28:14.231901+00	62	Tandoori Flames	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (160)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (161)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (162)"}}]	9	1
216	2024-11-18 14:28:40.074012+00	34	Little India	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (163)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (164)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (165)"}}]	9	1
217	2024-11-18 14:29:05.37468+00	28	Saffron Palace	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (166)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (167)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (168)"}}]	9	1
218	2024-11-18 14:29:50.760144+00	19	Maharaja's Table	2	[{"added": {"name": "restaurant image", "object": "RestaurantImage object (169)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (170)"}}, {"added": {"name": "restaurant image", "object": "RestaurantImage object (171)"}}]	9	1
220	2024-11-18 15:33:31.667962+00	63	Love of Rio	2	[{"changed": {"fields": ["Image"]}}]	9	1
221	2024-11-18 15:33:47.024583+00	62	Tandoori Flames	2	[{"changed": {"fields": ["Image"]}}]	9	1
222	2024-11-18 15:34:10.89673+00	61	Ginza Sushi Bar	2	[{"changed": {"fields": ["Image"]}}]	9	1
223	2024-11-18 15:34:30.880541+00	60	Himalayan Kitchen	2	[{"changed": {"fields": ["Image"]}}]	9	1
224	2024-11-18 15:34:41.101459+00	59	Hygge Café	2	[{"changed": {"fields": ["Image"]}}]	9	1
225	2024-11-18 15:34:50.785733+00	58	Smørrebrød Haven	2	[{"changed": {"fields": ["Image"]}}]	9	1
226	2024-11-18 15:35:01.848578+00	57	Casa de Tapas	2	[{"changed": {"fields": ["Image"]}}]	9	1
227	2024-11-18 15:35:13.132999+00	56	New York Diner	2	[{"changed": {"fields": ["Image"]}}]	9	1
228	2024-11-18 15:35:23.162762+00	55	Nairobi Spice	2	[{"changed": {"fields": ["Image"]}}]	9	1
229	2024-11-18 15:35:32.845237+00	54	Hacienda del Sol	2	[{"changed": {"fields": ["Image"]}}]	9	1
230	2024-11-18 15:36:19.218034+00	53	Pho & Co.	2	[{"changed": {"fields": ["Image"]}}]	9	1
231	2024-11-18 15:36:27.545714+00	52	Bavarian Feast	2	[{"changed": {"fields": ["Image"]}}]	9	1
232	2024-11-18 15:36:36.912612+00	51	Middle Eastern Feast	2	[{"changed": {"fields": ["Image"]}}]	9	1
233	2024-11-18 15:36:47.562018+00	50	Casa Brazil	2	[{"changed": {"fields": ["Image"]}}]	9	1
234	2024-11-18 15:36:56.983914+00	49	Koh Thai	2	[{"changed": {"fields": ["Image"]}}]	9	1
235	2024-11-18 15:37:06.712222+00	48	Toscana Trattoria	2	[{"changed": {"fields": ["Image"]}}]	9	1
236	2024-11-18 15:37:16.441421+00	47	Västerås Krog	2	[{"changed": {"fields": ["Image"]}}]	9	1
237	2024-11-18 15:37:26.267553+00	46	The British Pub	2	[{"changed": {"fields": ["Image"]}}]	9	1
238	2024-11-18 15:37:38.316041+00	45	Taste of Beirut	2	[{"changed": {"fields": ["Image"]}}]	9	1
239	2024-11-18 15:37:49.110293+00	44	Le Petit Café	2	[{"changed": {"fields": ["Image"]}}]	9	1
240	2024-11-18 15:38:57.437373+00	42	Uppsalaköket	2	[{"changed": {"fields": ["Image"]}}]	9	1
241	2024-11-18 15:39:04.378725+00	43	Amigos de Espana	2	[{"changed": {"fields": ["Image"]}}]	9	1
242	2024-11-18 15:39:15.151311+00	41	Taste of Istanbul	2	[{"changed": {"fields": ["Image"]}}]	9	1
243	2024-11-18 15:39:27.006778+00	40	Sultan’s Table	2	[{"changed": {"fields": ["Image"]}}]	9	1
244	2024-11-18 15:39:37.679825+00	39	Anatolian Bites	2	[{"changed": {"fields": ["Image"]}}]	9	1
245	2024-11-18 15:39:48.817699+00	38	Ephesus Grill	2	[{"changed": {"fields": ["Image"]}}]	9	1
246	2024-11-18 15:39:58.746199+00	37	Istanbul Delight	2	[{"changed": {"fields": ["Image"]}}]	9	1
247	2024-11-18 15:40:09.305189+00	36	Hamburg Hof	2	[{"changed": {"fields": ["Image"]}}]	9	1
248	2024-11-18 15:40:20.554952+00	35	The Olive Grove	2	[{"changed": {"fields": ["Image"]}}]	9	1
249	2024-11-18 15:40:31.908179+00	34	Little India	2	[{"changed": {"fields": ["Image"]}}]	9	1
250	2024-11-18 15:40:43.008619+00	33	Zen Garden	2	[{"changed": {"fields": ["Image"]}}]	9	1
251	2024-11-18 15:41:24.737571+00	32	El Mexicano	2	[{"changed": {"fields": ["Image"]}}]	9	1
252	2024-11-18 15:41:38.504629+00	31	Malmo’s Smaker	2	[{"changed": {"fields": ["Image"]}}]	9	1
253	2024-11-18 15:41:51.307978+00	30	Seoul Bowl	2	[{"changed": {"fields": ["Image"]}}]	9	1
254	2024-11-18 15:42:02.722255+00	29	La Tapita	2	[{"changed": {"fields": ["Image"]}}]	9	1
255	2024-11-18 15:42:17.499701+00	28	Saffron Palace	2	[{"changed": {"fields": ["Image"]}}]	9	1
256	2024-11-18 15:42:31.852303+00	27	Café Parisien	2	[{"changed": {"fields": ["Image"]}}]	9	1
257	2024-11-18 15:42:44.534251+00	26	A Taste of Vietnam	2	[{"changed": {"fields": ["Image"]}}]	9	1
258	2024-11-18 15:42:56.883546+00	25	Bella Notte	2	[{"changed": {"fields": ["Image"]}}]	9	1
259	2024-11-18 15:43:07.980121+00	24	Göteborgs Krogar	2	[{"changed": {"fields": ["Image"]}}]	9	1
260	2024-11-18 15:43:20.57444+00	23	Shangri-La	2	[{"changed": {"fields": ["Image"]}}]	9	1
261	2024-11-18 15:43:57.642331+00	22	The Grill House	2	[{"changed": {"fields": ["Image"]}}]	9	1
262	2024-11-18 15:44:03.41459+00	21	El Matador	2	[{"changed": {"fields": ["Image"]}}]	9	1
263	2024-11-18 15:44:12.827762+00	20	Sakura House	2	[{"changed": {"fields": ["Image"]}}]	9	1
264	2024-11-18 15:44:21.095523+00	19	Maharaja's Table	2	[{"changed": {"fields": ["Image"]}}]	9	1
265	2024-11-18 15:44:27.467435+00	18	Bangkok Spice	2	[{"changed": {"fields": ["Image"]}}]	9	1
266	2024-11-18 15:44:32.979262+00	17	Athena Taverna	2	[{"changed": {"fields": ["Image"]}}]	9	1
267	2024-11-18 15:44:43.224325+00	16	Café de Paris	2	[{"changed": {"fields": ["Image"]}}]	9	1
268	2024-11-18 15:44:48.84914+00	15	La Bella Vita	2	[{"changed": {"fields": ["Image"]}}]	9	1
269	2024-11-18 15:44:53.433389+00	14	Bistro Stockholm	2	[{"changed": {"fields": ["Image"]}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	city
8	core	cuisine
9	restaurant	restaurant
10	restaurant	restaurantimage
11	reservation	reservation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-02-19 22:33:52.949822+00
2	auth	0001_initial	2024-02-19 22:33:53.580195+00
3	admin	0001_initial	2024-02-19 22:33:53.771134+00
4	admin	0002_logentry_remove_auto_add	2024-02-19 22:33:53.827997+00
5	admin	0003_logentry_add_action_flag_choices	2024-02-19 22:33:53.876397+00
6	contenttypes	0002_remove_content_type_name	2024-02-19 22:33:53.972166+00
7	auth	0002_alter_permission_name_max_length	2024-02-19 22:33:54.066147+00
8	auth	0003_alter_user_email_max_length	2024-02-19 22:33:54.147135+00
9	auth	0004_alter_user_username_opts	2024-02-19 22:33:54.18634+00
10	auth	0005_alter_user_last_login_null	2024-02-19 22:33:54.333429+00
11	auth	0006_require_contenttypes_0002	2024-02-19 22:33:54.393215+00
12	auth	0007_alter_validators_add_error_messages	2024-02-19 22:33:54.430692+00
13	auth	0008_alter_user_username_max_length	2024-02-19 22:33:54.486258+00
14	auth	0009_alter_user_last_name_max_length	2024-02-19 22:33:54.538574+00
15	auth	0010_alter_group_name_max_length	2024-02-19 22:33:54.613297+00
16	auth	0011_update_proxy_permissions	2024-02-19 22:33:54.681161+00
17	auth	0012_alter_user_first_name_max_length	2024-02-19 22:33:54.731786+00
18	sessions	0001_initial	2024-02-19 22:33:54.827265+00
19	core	0001_initial	2024-03-01 20:14:19.911886+00
20	restaurant	0001_initial	2024-03-01 20:14:20.33651+00
21	reservation	0001_initial	2024-03-22 20:46:59.702458+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
f5tpzxqnokndjpva0rwwlujh8kivt2kf	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1rg9Ww:Y3L1ITMVs8ppzhaKWV9B_CfpjYccjNFGJH7P6gbZYyo	2024-03-15 20:30:54.114664+00
8gkiw30gyq45ka09txm45lz8bhyrwvv8	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1rk7uu:RFUahX-l6mFsNY3Oo3pfJkZPP4gmY9VZH44LZhjangM	2024-03-26 19:36:04.752018+00
wd78y8tyfxb4fna658iu10p27dkl1azv	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1rnlR0:TqYduZoKj1hhmXhO_d0hWQRbrbwH8hNhetITuCwgUXk	2024-04-05 20:24:14.444611+00
5bry1kbcmvm5kvunm9bgx2kzf4lx5b6t	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1rnm0L:y1L4957tHlsBYdyQ8gzeoIwlK3x_8hOYWRHhKStxkkw	2024-04-05 21:00:45.355861+00
qwrnjrz98pb9dfqnha4769n2zb9hb7ou	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1roUqy:DP1K0DC9aUx8ptgoX5cbrWIXB4VK7EBrtfkHSmWKRSY	2024-04-07 20:54:04.686231+00
fe3t7yq7m2b407gdx04qbin5cd3uxi3s	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1rpE7O:DZ8zPkY0uFbs_gwjzuwj48Cc-_jbCC1k2GpSnqDjHSI	2024-04-09 21:14:02.468035+00
lwhl13n1s4wmjj262g7yv1o99wpdo2go	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1snOK9:k-ahv-Ul_2u7xeOo8n279IEViJk6MXa99kaNep1jwpg	2024-09-22 20:15:53.72444+00
15ufapnmiqw1rwyit1o070m8oa4tn9j8	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1suTOC:8JHiD9wux8_8OS0B0eXBOGgvuW4AFM0C8181mp6ANbg	2024-10-12 09:05:20.250919+00
7gejb2pgiiln869515c5oihwzfm7018b	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1swQXj:0tC1FN-3rIZNwMv27BH6jG_Ony805L5GASCIXiEA9bo	2024-10-17 18:27:15.497359+00
ygbnm4whkbqya4f8xkkl4mpdcp01he1j	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1symkm:SN3JxgImMLPd52hG-s8Vgn--r6uG-GgOTVMyHmEaQ-g	2024-10-24 06:34:28.745139+00
2ljx1wmfcl0itqoqqy45q4r0usncojo5	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1szLvH:EQFgv0vdQ2WlzIXRu8884FCCkShNLvt46kwR6z6ICQs	2024-10-25 20:07:39.172923+00
jbutjgzvn0wz6n9sdtmw8aew3isspn6t	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1t5hvf:Q9JXyt_1Z1pmEIB3VioVl2MHjxa_ijXYeq8_DDyh5Rs	2024-11-12 08:50:19.264825+00
v4hmz5lc8q2lj1qdcb8aeazjo9xcqqne	.eJxVjEEOwiAQRe_C2hBgCoJL9z1DMwODVA0kpV0Z765NutDtf-_9l5hwW8u0dV6mOYmL0OL0uxHGB9cdpDvWW5Ox1XWZSe6KPGiXY0v8vB7u30HBXr41afDJBMsOLKEbklWAyBEDWQCfoyONCRiU8Q4D5mhczlkNfFaKWIn3B_CfOHs:1tAomF:lHAFVim7GlEi6CRAfkfo5LN6c5iyoSCjCt-0n01iyY0	2024-11-26 11:09:43.593305+00
\.


--
-- Data for Name: reservation_reservation; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.reservation_reservation (id, date, guests, note, status, created_on, restaurant_id, user_id) FROM stdin;
30	2025-01-06	4	randomly generated...	approved	2024-12-28 16:49:55.398373+00	30	104
18	2024-11-14	4	test	pending	2024-11-20 08:07:52.081496+00	42	1
19	2024-11-21	4	test	approved	2024-11-20 08:08:51.68306+00	32	1
20	2025-01-02	4	randomly generated...	declined	2024-12-28 16:49:31.319039+00	45	49
21	2024-12-30	4	randomly generated...	cancelled	2024-12-28 16:49:55.302888+00	54	65
22	2024-12-14	4	randomly generated...	declined	2024-12-28 16:49:55.314049+00	19	104
23	2025-01-17	4	randomly generated...	approved	2024-12-28 16:49:55.324472+00	38	12
24	2025-01-02	4	randomly generated...	approved	2024-12-28 16:49:55.334495+00	44	6
25	2024-12-15	4	randomly generated...	cancelled	2024-12-28 16:49:55.344091+00	19	47
26	2024-12-29	4	randomly generated...	cancelled	2024-12-28 16:49:55.353568+00	28	96
27	2024-12-30	4	randomly generated...	cancelled	2024-12-28 16:49:55.363944+00	31	42
28	2024-12-28	4	randomly generated...	pending	2024-12-28 16:49:55.374259+00	58	48
29	2025-01-15	4	randomly generated...	approved	2024-12-28 16:49:55.385247+00	53	57
31	2024-12-16	4	randomly generated...	approved	2024-12-28 16:49:55.408715+00	49	69
32	2025-01-04	4	randomly generated...	declined	2024-12-28 16:49:55.420206+00	24	100
33	2025-01-08	4	randomly generated...	declined	2024-12-28 16:49:55.434296+00	38	50
34	2024-12-03	4	randomly generated...	approved	2024-12-28 16:49:55.461652+00	16	28
35	2024-12-12	4	randomly generated...	declined	2024-12-28 16:49:55.476833+00	55	74
36	2024-12-09	4	randomly generated...	pending	2024-12-28 16:49:55.488108+00	41	57
37	2024-11-28	4	randomly generated...	pending	2024-12-28 16:49:55.512068+00	49	6
38	2025-01-21	4	randomly generated...	approved	2024-12-28 16:49:55.526579+00	48	82
39	2025-01-24	4	randomly generated...	approved	2024-12-28 16:49:55.535875+00	32	46
40	2024-12-06	4	randomly generated...	declined	2024-12-28 16:49:55.545715+00	50	21
41	2025-01-06	4	randomly generated...	cancelled	2024-12-28 16:49:55.556472+00	25	48
42	2024-12-11	4	randomly generated...	cancelled	2024-12-28 16:49:55.566076+00	50	58
43	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:49:55.574956+00	49	104
44	2025-01-08	4	randomly generated...	declined	2024-12-28 16:49:55.587404+00	42	25
45	2025-01-15	4	randomly generated...	pending	2024-12-28 16:49:55.598394+00	61	91
46	2024-12-07	4	randomly generated...	pending	2024-12-28 16:49:55.609599+00	35	78
47	2025-01-01	4	randomly generated...	declined	2024-12-28 16:49:55.620637+00	23	55
48	2025-01-16	4	randomly generated...	approved	2024-12-28 16:49:55.634545+00	49	20
49	2024-12-02	4	randomly generated...	declined	2024-12-28 16:49:55.648463+00	43	73
50	2025-01-21	4	randomly generated...	declined	2024-12-28 16:49:55.662513+00	48	5
51	2024-12-20	4	randomly generated...	declined	2024-12-28 16:49:55.674517+00	15	20
52	2024-12-13	4	randomly generated...	declined	2024-12-28 16:49:55.690311+00	50	79
53	2024-12-30	4	randomly generated...	pending	2024-12-28 16:49:55.701229+00	40	51
54	2025-01-11	4	randomly generated...	approved	2024-12-28 16:49:55.714128+00	60	74
55	2024-12-20	4	randomly generated...	cancelled	2024-12-28 16:49:55.730742+00	14	62
56	2024-12-07	4	randomly generated...	approved	2024-12-28 16:49:55.780942+00	14	4
57	2025-01-16	4	randomly generated...	approved	2024-12-28 16:49:55.796839+00	35	93
58	2025-01-07	4	randomly generated...	approved	2024-12-28 16:49:55.814263+00	41	63
59	2025-01-07	4	randomly generated...	declined	2024-12-28 16:49:55.825906+00	30	73
60	2024-12-23	4	randomly generated...	cancelled	2024-12-28 16:49:55.835969+00	21	45
61	2024-12-11	4	randomly generated...	cancelled	2024-12-28 16:49:55.854964+00	62	105
62	2025-01-24	4	randomly generated...	declined	2024-12-28 16:49:55.866449+00	35	9
63	2024-12-02	4	randomly generated...	pending	2024-12-28 16:49:55.87723+00	43	73
64	2025-01-23	4	randomly generated...	declined	2024-12-28 16:49:55.89722+00	27	83
65	2025-01-13	4	randomly generated...	declined	2024-12-28 16:49:55.910129+00	63	94
66	2024-12-22	4	randomly generated...	cancelled	2024-12-28 16:49:55.921398+00	60	83
67	2025-01-04	4	randomly generated...	approved	2024-12-28 16:49:55.932996+00	20	100
68	2025-01-09	4	randomly generated...	pending	2024-12-28 16:49:55.944187+00	63	25
69	2024-12-22	4	randomly generated...	pending	2024-12-28 16:49:55.957233+00	36	11
70	2024-12-27	4	randomly generated...	cancelled	2024-12-28 16:49:55.968942+00	40	13
71	2025-01-20	4	randomly generated...	cancelled	2024-12-28 16:49:55.979872+00	29	85
72	2025-01-03	4	randomly generated...	declined	2024-12-28 16:49:55.991689+00	23	47
73	2024-12-07	4	randomly generated...	declined	2024-12-28 16:49:56.005495+00	14	55
74	2024-11-29	4	randomly generated...	approved	2024-12-28 16:49:56.018706+00	47	67
75	2025-01-14	4	randomly generated...	declined	2024-12-28 16:49:56.032451+00	22	41
76	2025-01-01	4	randomly generated...	cancelled	2024-12-28 16:49:56.054397+00	41	57
77	2024-12-05	4	randomly generated...	pending	2024-12-28 16:49:56.076225+00	19	103
78	2024-12-25	4	randomly generated...	cancelled	2024-12-28 16:49:56.087359+00	31	13
79	2025-01-24	4	randomly generated...	cancelled	2024-12-28 16:49:56.103466+00	53	55
80	2025-01-15	4	randomly generated...	cancelled	2024-12-28 16:49:56.143765+00	26	97
81	2025-01-27	4	randomly generated...	declined	2024-12-28 16:49:56.162343+00	36	13
82	2024-11-29	4	randomly generated...	approved	2024-12-28 16:49:56.178711+00	32	22
83	2024-12-07	4	randomly generated...	declined	2024-12-28 16:49:56.191533+00	52	88
84	2024-12-08	4	randomly generated...	approved	2024-12-28 16:49:56.203112+00	50	100
85	2024-12-23	4	randomly generated...	cancelled	2024-12-28 16:49:56.218341+00	38	8
86	2025-01-03	4	randomly generated...	pending	2024-12-28 16:49:56.228431+00	27	33
87	2025-01-16	4	randomly generated...	approved	2024-12-28 16:49:56.238764+00	55	26
88	2025-01-21	4	randomly generated...	declined	2024-12-28 16:49:56.248852+00	53	63
89	2024-12-04	4	randomly generated...	approved	2024-12-28 16:49:56.259465+00	44	72
90	2024-11-30	4	randomly generated...	cancelled	2024-12-28 16:49:56.271411+00	40	12
91	2025-01-26	4	randomly generated...	pending	2024-12-28 16:49:56.282495+00	34	1
92	2024-12-04	4	randomly generated...	approved	2024-12-28 16:49:56.293955+00	28	57
93	2024-12-24	4	randomly generated...	cancelled	2024-12-28 16:49:56.304355+00	32	2
94	2024-11-30	4	randomly generated...	approved	2024-12-28 16:49:56.320628+00	51	75
95	2024-12-28	4	randomly generated...	approved	2024-12-28 16:49:56.33463+00	29	75
96	2024-11-29	4	randomly generated...	approved	2024-12-28 16:49:56.3477+00	15	68
97	2024-12-22	4	randomly generated...	declined	2024-12-28 16:49:56.376577+00	54	52
98	2024-12-12	4	randomly generated...	declined	2024-12-28 16:49:56.393251+00	33	94
99	2024-12-04	4	randomly generated...	approved	2024-12-28 16:49:56.406019+00	63	103
100	2024-12-22	4	randomly generated...	declined	2024-12-28 16:49:56.416906+00	15	34
101	2024-12-05	4	randomly generated...	declined	2024-12-28 16:49:56.428346+00	36	2
102	2025-01-19	4	randomly generated...	approved	2024-12-28 16:49:56.441444+00	58	107
103	2024-12-26	4	randomly generated...	approved	2024-12-28 16:49:56.455827+00	24	22
104	2025-01-25	4	randomly generated...	cancelled	2024-12-28 16:49:56.468602+00	24	38
105	2024-12-10	4	randomly generated...	declined	2024-12-28 16:49:56.480175+00	30	105
106	2024-12-31	4	randomly generated...	approved	2024-12-28 16:49:56.505141+00	38	100
107	2024-12-18	4	randomly generated...	approved	2024-12-28 16:49:56.524742+00	28	68
108	2025-01-16	4	randomly generated...	declined	2024-12-28 16:49:56.536032+00	24	91
109	2025-01-24	4	randomly generated...	approved	2024-12-28 16:49:56.549363+00	35	53
110	2024-12-24	4	randomly generated...	declined	2024-12-28 16:49:56.562616+00	58	23
111	2024-12-13	4	randomly generated...	cancelled	2024-12-28 16:49:56.57668+00	24	21
112	2024-12-22	4	randomly generated...	pending	2024-12-28 16:49:56.591846+00	37	19
113	2024-12-11	4	randomly generated...	approved	2024-12-28 16:49:56.602869+00	49	86
114	2024-12-09	4	randomly generated...	approved	2024-12-28 16:49:56.612907+00	55	46
115	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:49:56.628377+00	55	82
116	2024-12-29	4	randomly generated...	approved	2024-12-28 16:49:56.65463+00	31	94
117	2024-12-13	4	randomly generated...	cancelled	2024-12-28 16:49:56.671871+00	15	103
118	2025-01-04	4	randomly generated...	cancelled	2024-12-28 16:49:56.686123+00	43	27
119	2024-11-29	4	randomly generated...	declined	2024-12-28 16:49:56.698777+00	22	103
120	2025-01-06	4	randomly generated...	pending	2024-12-28 16:49:56.712518+00	56	76
121	2025-01-16	4	randomly generated...	declined	2024-12-28 16:49:56.72244+00	60	35
122	2024-12-13	4	randomly generated...	approved	2024-12-28 16:49:56.735733+00	18	107
123	2024-12-27	4	randomly generated...	pending	2024-12-28 16:49:56.745626+00	61	64
124	2025-01-04	4	randomly generated...	pending	2024-12-28 16:49:56.759643+00	53	39
125	2024-12-22	4	randomly generated...	approved	2024-12-28 16:49:56.769623+00	31	50
126	2025-01-09	4	randomly generated...	pending	2024-12-28 16:49:56.78237+00	41	56
127	2024-12-04	4	randomly generated...	pending	2024-12-28 16:49:56.794575+00	20	16
128	2024-12-16	4	randomly generated...	pending	2024-12-28 16:49:56.808696+00	43	108
129	2025-01-23	4	randomly generated...	pending	2024-12-28 16:49:56.823225+00	23	31
130	2024-11-28	4	randomly generated...	cancelled	2024-12-28 16:49:56.834953+00	17	34
131	2024-12-24	4	randomly generated...	approved	2024-12-28 16:49:56.860196+00	31	100
132	2024-12-14	4	randomly generated...	declined	2024-12-28 16:49:56.872254+00	31	93
133	2024-12-22	4	randomly generated...	approved	2024-12-28 16:49:56.882131+00	36	41
134	2025-01-01	4	randomly generated...	declined	2024-12-28 16:49:56.895791+00	22	10
135	2024-12-19	4	randomly generated...	cancelled	2024-12-28 16:49:56.910078+00	58	42
136	2024-12-26	4	randomly generated...	declined	2024-12-28 16:49:56.930995+00	40	88
137	2024-12-23	4	randomly generated...	declined	2024-12-28 16:49:56.941155+00	33	21
138	2025-01-26	4	randomly generated...	approved	2024-12-28 16:49:56.966133+00	15	41
139	2024-11-29	4	randomly generated...	approved	2024-12-28 16:49:56.978195+00	27	51
140	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:49:56.992053+00	23	36
141	2025-01-20	4	randomly generated...	cancelled	2024-12-28 16:49:57.006441+00	62	17
142	2024-11-28	4	randomly generated...	pending	2024-12-28 16:49:57.025125+00	39	68
143	2024-12-31	4	randomly generated...	cancelled	2024-12-28 16:49:57.036911+00	62	72
144	2025-01-18	4	randomly generated...	cancelled	2024-12-28 16:49:57.051606+00	36	3
145	2024-12-02	4	randomly generated...	cancelled	2024-12-28 16:49:57.063728+00	51	88
146	2025-01-26	4	randomly generated...	pending	2024-12-28 16:49:57.076625+00	62	73
147	2025-01-17	4	randomly generated...	pending	2024-12-28 16:49:57.088239+00	34	91
148	2024-12-03	4	randomly generated...	declined	2024-12-28 16:49:57.100561+00	27	96
149	2024-12-29	4	randomly generated...	pending	2024-12-28 16:49:57.114697+00	46	14
150	2025-01-12	4	randomly generated...	cancelled	2024-12-28 16:49:57.126846+00	37	34
151	2025-01-07	4	randomly generated...	pending	2024-12-28 16:49:57.142175+00	43	9
152	2024-12-07	4	randomly generated...	pending	2024-12-28 16:49:57.152603+00	63	101
153	2024-12-22	4	randomly generated...	cancelled	2024-12-28 16:49:57.167257+00	62	79
154	2025-01-17	4	randomly generated...	pending	2024-12-28 16:49:57.181272+00	33	65
155	2025-01-13	4	randomly generated...	approved	2024-12-28 16:49:57.193711+00	57	69
156	2024-12-07	4	randomly generated...	declined	2024-12-28 16:49:57.204322+00	21	62
157	2025-01-14	4	randomly generated...	approved	2024-12-28 16:49:57.216099+00	51	109
158	2024-12-25	4	randomly generated...	cancelled	2024-12-28 16:49:57.227413+00	58	70
159	2025-01-19	4	randomly generated...	declined	2024-12-28 16:49:57.269026+00	35	109
160	2025-01-21	4	randomly generated...	cancelled	2024-12-28 16:49:57.278777+00	54	57
161	2025-01-07	4	randomly generated...	declined	2024-12-28 16:49:57.2912+00	30	87
162	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:49:57.304826+00	31	66
163	2024-12-28	4	randomly generated...	cancelled	2024-12-28 16:49:57.32111+00	51	83
164	2025-01-27	4	randomly generated...	declined	2024-12-28 16:49:57.331264+00	62	16
165	2025-01-12	4	randomly generated...	pending	2024-12-28 16:49:57.355515+00	28	93
166	2024-12-20	4	randomly generated...	cancelled	2024-12-28 16:49:57.370938+00	28	48
167	2025-01-02	4	randomly generated...	approved	2024-12-28 16:49:57.38363+00	41	107
168	2025-01-21	4	randomly generated...	cancelled	2024-12-28 16:49:57.394049+00	56	58
169	2025-01-08	4	randomly generated...	declined	2024-12-28 16:49:57.404371+00	30	5
170	2024-12-20	4	randomly generated...	approved	2024-12-28 16:49:57.414328+00	17	31
171	2025-01-04	4	randomly generated...	pending	2024-12-28 16:49:57.428666+00	62	108
172	2025-01-25	4	randomly generated...	pending	2024-12-28 16:49:57.439809+00	31	84
173	2024-12-24	4	randomly generated...	pending	2024-12-28 16:49:57.452613+00	18	78
174	2025-01-04	4	randomly generated...	declined	2024-12-28 16:49:57.466059+00	35	48
175	2024-12-27	4	randomly generated...	cancelled	2024-12-28 16:49:57.478824+00	56	33
176	2025-01-06	4	randomly generated...	cancelled	2024-12-28 16:49:57.498445+00	38	93
177	2025-01-14	4	randomly generated...	declined	2024-12-28 16:49:57.510271+00	42	3
178	2024-12-23	4	randomly generated...	approved	2024-12-28 16:49:57.522395+00	38	5
179	2024-12-04	4	randomly generated...	declined	2024-12-28 16:49:57.53728+00	25	100
180	2025-01-20	4	randomly generated...	cancelled	2024-12-28 16:49:57.563733+00	39	14
181	2024-12-17	4	randomly generated...	cancelled	2024-12-28 16:49:57.575298+00	61	95
182	2024-12-01	4	randomly generated...	declined	2024-12-28 16:49:57.586431+00	23	8
183	2024-12-07	4	randomly generated...	cancelled	2024-12-28 16:49:57.598156+00	16	21
184	2024-12-27	4	randomly generated...	declined	2024-12-28 16:49:57.611501+00	59	104
185	2024-12-29	4	randomly generated...	declined	2024-12-28 16:49:57.62639+00	51	4
186	2024-12-06	4	randomly generated...	declined	2024-12-28 16:49:57.670393+00	60	30
187	2024-12-26	4	randomly generated...	pending	2024-12-28 16:49:57.682423+00	27	105
188	2024-12-16	4	randomly generated...	approved	2024-12-28 16:49:57.692619+00	20	63
189	2025-01-11	4	randomly generated...	pending	2024-12-28 16:49:57.703054+00	31	109
190	2025-01-04	4	randomly generated...	pending	2024-12-28 16:49:57.726336+00	62	14
191	2024-12-03	4	randomly generated...	declined	2024-12-28 16:49:57.741354+00	53	42
192	2024-12-22	4	randomly generated...	approved	2024-12-28 16:49:57.762058+00	61	84
193	2025-01-27	4	randomly generated...	declined	2024-12-28 16:49:57.776077+00	43	24
194	2024-12-26	4	randomly generated...	declined	2024-12-28 16:49:57.799067+00	56	59
195	2025-01-27	4	randomly generated...	cancelled	2024-12-28 16:49:57.815084+00	28	8
196	2024-12-20	4	randomly generated...	declined	2024-12-28 16:49:57.831671+00	63	97
197	2025-01-01	4	randomly generated...	cancelled	2024-12-28 16:49:57.871002+00	41	63
198	2025-01-11	4	randomly generated...	declined	2024-12-28 16:49:57.889953+00	57	98
199	2025-01-03	4	randomly generated...	pending	2024-12-28 16:49:57.903167+00	62	61
200	2024-11-29	4	randomly generated...	pending	2024-12-28 16:49:57.930028+00	51	77
201	2025-01-11	4	randomly generated...	approved	2024-12-28 16:49:57.942889+00	54	46
202	2024-11-28	4	randomly generated...	cancelled	2024-12-28 16:49:57.953057+00	34	72
203	2025-01-05	4	randomly generated...	approved	2024-12-28 16:49:57.96306+00	63	32
204	2024-12-08	4	randomly generated...	pending	2024-12-28 16:49:57.972472+00	50	55
205	2025-01-17	4	randomly generated...	pending	2024-12-28 16:49:57.98074+00	56	50
206	2024-12-13	4	randomly generated...	declined	2024-12-28 16:49:57.990856+00	28	46
207	2024-12-03	4	randomly generated...	approved	2024-12-28 16:49:58.000466+00	16	66
208	2024-12-27	4	randomly generated...	pending	2024-12-28 16:49:58.010345+00	54	93
209	2024-12-31	4	randomly generated...	approved	2024-12-28 16:49:58.020887+00	62	49
210	2025-01-04	4	randomly generated...	declined	2024-12-28 16:49:58.032762+00	35	14
211	2024-12-06	4	randomly generated...	pending	2024-12-28 16:49:58.044236+00	28	94
212	2025-01-18	4	randomly generated...	approved	2024-12-28 16:49:58.066165+00	57	62
213	2025-01-26	4	randomly generated...	approved	2024-12-28 16:49:58.081144+00	48	61
214	2025-01-22	4	randomly generated...	pending	2024-12-28 16:49:58.094186+00	26	34
215	2024-12-09	4	randomly generated...	cancelled	2024-12-28 16:49:58.106935+00	18	3
216	2025-01-07	4	randomly generated...	approved	2024-12-28 16:49:58.116887+00	62	69
218	2025-01-11	4	randomly generated...	cancelled	2024-12-28 16:49:58.13589+00	38	92
219	2024-12-22	4	randomly generated...	approved	2024-12-28 16:49:58.149976+00	32	44
220	2025-01-22	4	randomly generated...	pending	2024-12-28 16:49:58.164598+00	51	59
221	2025-01-04	4	randomly generated...	declined	2024-12-28 16:49:58.176851+00	44	102
222	2024-12-12	4	randomly generated...	cancelled	2024-12-28 16:49:58.190506+00	61	81
223	2024-12-04	4	randomly generated...	approved	2024-12-28 16:49:58.20069+00	15	76
224	2024-12-16	4	randomly generated...	approved	2024-12-28 16:49:58.212658+00	36	65
225	2024-11-28	4	randomly generated...	approved	2024-12-28 16:49:58.225206+00	27	56
226	2024-12-21	4	randomly generated...	cancelled	2024-12-28 16:49:58.241016+00	50	24
227	2025-01-12	4	randomly generated...	pending	2024-12-28 16:49:58.264916+00	46	11
228	2024-12-19	4	randomly generated...	cancelled	2024-12-28 16:49:58.275627+00	15	27
229	2025-01-14	4	randomly generated...	approved	2024-12-28 16:49:58.28848+00	63	56
230	2025-01-20	4	randomly generated...	pending	2024-12-28 16:49:58.298958+00	43	94
231	2024-12-31	4	randomly generated...	pending	2024-12-28 16:49:58.316213+00	25	60
232	2024-12-09	4	randomly generated...	cancelled	2024-12-28 16:49:58.325227+00	51	86
233	2024-12-02	4	randomly generated...	cancelled	2024-12-28 16:49:58.337743+00	46	42
234	2024-12-20	4	randomly generated...	approved	2024-12-28 16:49:58.346835+00	34	50
235	2024-12-09	4	randomly generated...	declined	2024-12-28 16:49:58.361463+00	36	38
236	2024-12-07	4	randomly generated...	pending	2024-12-28 16:49:58.372767+00	50	71
237	2025-01-16	4	randomly generated...	approved	2024-12-28 16:49:58.387163+00	17	88
238	2024-12-05	4	randomly generated...	pending	2024-12-28 16:49:58.402999+00	43	69
239	2024-12-12	4	randomly generated...	approved	2024-12-28 16:49:58.417834+00	44	57
240	2025-01-12	4	randomly generated...	approved	2024-12-28 16:49:58.431713+00	33	1
241	2025-01-24	4	randomly generated...	pending	2024-12-28 16:49:58.47487+00	46	51
242	2024-11-29	4	randomly generated...	pending	2024-12-28 16:49:58.48935+00	16	35
243	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:49:58.497767+00	32	15
244	2024-12-03	4	randomly generated...	cancelled	2024-12-28 16:49:58.509644+00	31	42
245	2025-01-21	4	randomly generated...	approved	2024-12-28 16:49:58.518576+00	54	49
246	2025-01-17	4	randomly generated...	declined	2024-12-28 16:49:58.529597+00	15	27
247	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:49:58.549379+00	59	92
248	2025-01-04	4	randomly generated...	declined	2024-12-28 16:49:58.559957+00	21	30
249	2024-12-30	4	randomly generated...	pending	2024-12-28 16:49:58.575569+00	31	53
250	2024-11-30	4	randomly generated...	approved	2024-12-28 16:49:58.585313+00	49	17
251	2024-12-04	4	randomly generated...	approved	2024-12-28 16:49:58.595038+00	34	87
252	2025-01-06	4	randomly generated...	cancelled	2024-12-28 16:49:58.614961+00	25	30
253	2024-11-29	4	randomly generated...	cancelled	2024-12-28 16:49:58.624483+00	45	48
254	2025-01-09	4	randomly generated...	pending	2024-12-28 16:49:58.634495+00	55	38
255	2025-01-02	4	randomly generated...	cancelled	2024-12-28 16:49:58.645414+00	41	85
256	2024-11-30	4	randomly generated...	approved	2024-12-28 16:49:58.658668+00	23	77
257	2025-01-13	4	randomly generated...	cancelled	2024-12-28 16:49:58.667471+00	38	83
258	2024-12-08	4	randomly generated...	approved	2024-12-28 16:49:58.677058+00	31	70
259	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:49:58.685128+00	54	44
260	2025-01-16	4	randomly generated...	cancelled	2024-12-28 16:49:58.693688+00	56	14
261	2024-12-06	4	randomly generated...	declined	2024-12-28 16:49:58.702346+00	38	55
262	2025-01-27	4	randomly generated...	declined	2024-12-28 16:49:58.712742+00	28	88
263	2024-12-10	4	randomly generated...	pending	2024-12-28 16:49:58.72117+00	42	32
264	2024-12-19	4	randomly generated...	cancelled	2024-12-28 16:49:58.731477+00	27	6
265	2024-12-10	4	randomly generated...	approved	2024-12-28 16:49:58.760116+00	59	33
266	2024-12-23	4	randomly generated...	approved	2024-12-28 16:49:58.771202+00	54	67
267	2024-12-13	4	randomly generated...	approved	2024-12-28 16:49:58.789418+00	19	98
268	2025-01-23	4	randomly generated...	pending	2024-12-28 16:49:58.798283+00	61	64
269	2025-01-09	4	randomly generated...	approved	2024-12-28 16:49:58.808356+00	53	45
270	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:49:58.819151+00	56	85
271	2024-12-15	4	randomly generated...	approved	2024-12-28 16:49:58.830096+00	56	31
272	2025-01-15	4	randomly generated...	declined	2024-12-28 16:49:58.839061+00	44	107
273	2024-12-05	4	randomly generated...	approved	2024-12-28 16:49:58.852349+00	54	51
274	2024-12-14	4	randomly generated...	cancelled	2024-12-28 16:49:58.865965+00	15	45
275	2025-01-15	4	randomly generated...	cancelled	2024-12-28 16:49:58.880935+00	27	76
276	2025-01-20	4	randomly generated...	pending	2024-12-28 16:49:58.892607+00	16	58
277	2024-12-13	4	randomly generated...	pending	2024-12-28 16:49:58.914867+00	31	58
278	2024-12-23	4	randomly generated...	pending	2024-12-28 16:49:58.92691+00	45	34
279	2025-01-02	4	randomly generated...	pending	2024-12-28 16:49:58.938057+00	26	28
280	2024-12-22	4	randomly generated...	pending	2024-12-28 16:49:58.947512+00	17	25
281	2025-01-15	4	randomly generated...	pending	2024-12-28 16:49:58.956038+00	61	103
282	2024-12-25	4	randomly generated...	approved	2024-12-28 16:49:58.969584+00	55	102
283	2025-01-17	4	randomly generated...	declined	2024-12-28 16:49:58.984073+00	36	26
284	2025-01-16	4	randomly generated...	cancelled	2024-12-28 16:49:58.997401+00	47	104
285	2024-12-12	4	randomly generated...	approved	2024-12-28 16:49:59.010103+00	40	92
286	2024-12-01	4	randomly generated...	approved	2024-12-28 16:49:59.018741+00	16	3
287	2025-01-19	4	randomly generated...	declined	2024-12-28 16:49:59.026766+00	61	74
288	2025-01-25	4	randomly generated...	pending	2024-12-28 16:49:59.03813+00	26	14
289	2024-12-09	4	randomly generated...	approved	2024-12-28 16:49:59.061024+00	43	30
290	2024-12-15	4	randomly generated...	pending	2024-12-28 16:49:59.077962+00	62	86
291	2024-12-20	4	randomly generated...	approved	2024-12-28 16:49:59.092617+00	39	10
292	2025-01-21	4	randomly generated...	cancelled	2024-12-28 16:49:59.102309+00	31	34
293	2025-01-05	4	randomly generated...	declined	2024-12-28 16:49:59.113128+00	43	94
294	2024-12-27	4	randomly generated...	approved	2024-12-28 16:49:59.123784+00	20	105
295	2025-01-13	4	randomly generated...	cancelled	2024-12-28 16:49:59.135012+00	39	25
296	2025-01-06	4	randomly generated...	approved	2024-12-28 16:49:59.144922+00	59	28
297	2024-12-30	4	randomly generated...	approved	2024-12-28 16:49:59.164302+00	41	8
298	2024-12-09	4	randomly generated...	pending	2024-12-28 16:49:59.184474+00	38	54
299	2024-12-12	4	randomly generated...	cancelled	2024-12-28 16:49:59.196416+00	24	106
300	2024-12-24	4	randomly generated...	declined	2024-12-28 16:49:59.207001+00	37	37
301	2024-12-04	4	randomly generated...	declined	2024-12-28 16:49:59.217974+00	17	77
302	2025-01-09	4	randomly generated...	declined	2024-12-28 16:49:59.22799+00	38	8
303	2024-12-09	4	randomly generated...	pending	2024-12-28 16:49:59.242461+00	15	40
304	2025-01-01	4	randomly generated...	cancelled	2024-12-28 16:49:59.254805+00	29	43
305	2025-01-18	4	randomly generated...	approved	2024-12-28 16:49:59.269072+00	61	2
306	2025-01-01	4	randomly generated...	declined	2024-12-28 16:49:59.284431+00	15	105
307	2024-12-28	4	randomly generated...	cancelled	2024-12-28 16:49:59.296965+00	40	62
308	2024-12-27	4	randomly generated...	pending	2024-12-28 16:49:59.308217+00	35	62
309	2024-11-28	4	randomly generated...	declined	2024-12-28 16:49:59.322263+00	45	20
310	2024-12-18	4	randomly generated...	declined	2024-12-28 16:49:59.335802+00	24	103
311	2025-01-16	4	randomly generated...	cancelled	2024-12-28 16:49:59.350884+00	17	53
312	2025-01-25	4	randomly generated...	cancelled	2024-12-28 16:49:59.364587+00	48	56
313	2025-01-01	4	randomly generated...	declined	2024-12-28 16:49:59.375658+00	58	62
314	2025-01-01	4	randomly generated...	approved	2024-12-28 16:49:59.390562+00	35	80
315	2025-01-26	4	randomly generated...	approved	2024-12-28 16:49:59.400555+00	52	90
316	2024-12-04	4	randomly generated...	pending	2024-12-28 16:49:59.414282+00	19	71
317	2025-01-02	4	randomly generated...	approved	2024-12-28 16:49:59.42487+00	16	86
318	2024-12-19	4	randomly generated...	cancelled	2024-12-28 16:49:59.43509+00	35	99
319	2025-01-26	4	randomly generated...	pending	2024-12-28 16:49:59.450172+00	61	2
320	2025-01-04	4	randomly generated...	pending	2024-12-28 16:49:59.460902+00	43	41
321	2025-01-23	4	randomly generated...	declined	2024-12-28 16:49:59.473204+00	60	62
322	2025-01-21	4	randomly generated...	pending	2024-12-28 16:49:59.489075+00	24	92
323	2025-01-24	4	randomly generated...	declined	2024-12-28 16:49:59.504656+00	16	18
324	2024-12-28	4	randomly generated...	declined	2024-12-28 16:49:59.516882+00	28	18
325	2024-12-06	4	randomly generated...	declined	2024-12-28 16:49:59.531027+00	59	78
326	2024-12-06	4	randomly generated...	pending	2024-12-28 16:49:59.542832+00	38	103
327	2025-01-20	4	randomly generated...	approved	2024-12-28 16:49:59.557126+00	31	107
328	2025-01-17	4	randomly generated...	declined	2024-12-28 16:49:59.568816+00	18	41
329	2024-12-20	4	randomly generated...	declined	2024-12-28 16:49:59.580878+00	20	34
330	2024-12-23	4	randomly generated...	cancelled	2024-12-28 16:49:59.591084+00	47	47
331	2025-01-07	4	randomly generated...	approved	2024-12-28 16:49:59.602165+00	48	44
332	2024-12-23	4	randomly generated...	declined	2024-12-28 16:49:59.611321+00	25	18
333	2024-12-03	4	randomly generated...	approved	2024-12-28 16:49:59.621425+00	18	79
334	2025-01-22	4	randomly generated...	approved	2024-12-28 16:49:59.631484+00	28	40
335	2025-01-14	4	randomly generated...	approved	2024-12-28 16:49:59.644128+00	58	58
336	2025-01-23	4	randomly generated...	pending	2024-12-28 16:49:59.676017+00	44	36
337	2025-01-14	4	randomly generated...	approved	2024-12-28 16:49:59.686494+00	56	49
338	2025-01-17	4	randomly generated...	approved	2024-12-28 16:49:59.707982+00	26	99
339	2025-01-14	4	randomly generated...	declined	2024-12-28 16:49:59.724647+00	17	1
340	2024-12-14	4	randomly generated...	cancelled	2024-12-28 16:49:59.735533+00	18	9
341	2024-12-22	4	randomly generated...	pending	2024-12-28 16:49:59.751519+00	44	52
342	2024-12-27	4	randomly generated...	declined	2024-12-28 16:49:59.764417+00	49	95
343	2024-12-10	4	randomly generated...	declined	2024-12-28 16:49:59.776386+00	26	4
344	2024-12-13	4	randomly generated...	pending	2024-12-28 16:49:59.790083+00	34	64
345	2024-12-26	4	randomly generated...	declined	2024-12-28 16:49:59.808623+00	55	83
346	2024-12-06	4	randomly generated...	approved	2024-12-28 16:49:59.82167+00	51	81
347	2024-12-31	4	randomly generated...	pending	2024-12-28 16:49:59.832077+00	39	18
348	2024-12-26	4	randomly generated...	cancelled	2024-12-28 16:49:59.845447+00	35	37
349	2025-01-23	4	randomly generated...	approved	2024-12-28 16:49:59.856467+00	41	24
350	2024-11-29	4	randomly generated...	approved	2024-12-28 16:49:59.867965+00	37	37
351	2025-01-05	4	randomly generated...	cancelled	2024-12-28 16:49:59.884239+00	23	99
352	2025-01-20	4	randomly generated...	approved	2024-12-28 16:49:59.896189+00	30	65
353	2025-01-14	4	randomly generated...	pending	2024-12-28 16:49:59.909155+00	42	4
354	2025-01-25	4	randomly generated...	declined	2024-12-28 16:49:59.923106+00	58	62
355	2024-12-11	4	randomly generated...	pending	2024-12-28 16:49:59.939537+00	26	25
356	2024-12-27	4	randomly generated...	pending	2024-12-28 16:49:59.958594+00	24	78
357	2024-12-12	4	randomly generated...	declined	2024-12-28 16:49:59.978314+00	48	19
358	2025-01-12	4	randomly generated...	pending	2024-12-28 16:49:59.995143+00	14	40
359	2024-11-29	4	randomly generated...	approved	2024-12-28 16:50:00.011318+00	44	91
360	2025-01-23	4	randomly generated...	pending	2024-12-28 16:50:00.022193+00	57	102
361	2024-12-27	4	randomly generated...	approved	2024-12-28 16:50:00.033718+00	61	14
362	2024-12-11	4	randomly generated...	pending	2024-12-28 16:50:00.046655+00	54	3
363	2025-01-23	4	randomly generated...	declined	2024-12-28 16:50:00.059015+00	18	24
364	2024-12-07	4	randomly generated...	declined	2024-12-28 16:50:00.075209+00	26	78
365	2025-01-06	4	randomly generated...	declined	2024-12-28 16:50:00.091935+00	29	30
366	2024-12-30	4	randomly generated...	approved	2024-12-28 16:50:00.109629+00	17	103
367	2024-12-13	4	randomly generated...	cancelled	2024-12-28 16:50:00.120383+00	33	91
368	2024-12-22	4	randomly generated...	approved	2024-12-28 16:50:00.132253+00	40	98
369	2024-12-04	4	randomly generated...	cancelled	2024-12-28 16:50:00.14331+00	58	31
370	2024-12-23	4	randomly generated...	approved	2024-12-28 16:50:00.156618+00	37	105
371	2024-12-13	4	randomly generated...	pending	2024-12-28 16:50:00.173216+00	46	41
372	2025-01-01	4	randomly generated...	cancelled	2024-12-28 16:50:00.198438+00	43	58
373	2025-01-24	4	randomly generated...	approved	2024-12-28 16:50:00.263166+00	48	104
374	2024-12-13	4	randomly generated...	pending	2024-12-28 16:50:00.273578+00	61	16
375	2025-01-25	4	randomly generated...	approved	2024-12-28 16:50:00.284004+00	60	83
376	2024-12-31	4	randomly generated...	cancelled	2024-12-28 16:50:00.29745+00	60	36
377	2024-12-31	4	randomly generated...	approved	2024-12-28 16:50:00.313409+00	24	42
378	2024-12-08	4	randomly generated...	pending	2024-12-28 16:50:00.324388+00	51	29
379	2024-12-26	4	randomly generated...	pending	2024-12-28 16:50:00.334944+00	51	101
380	2025-01-05	4	randomly generated...	approved	2024-12-28 16:50:00.348928+00	28	82
381	2024-12-23	4	randomly generated...	pending	2024-12-28 16:50:00.360309+00	60	15
382	2024-12-29	4	randomly generated...	cancelled	2024-12-28 16:50:00.375488+00	55	59
383	2025-01-01	4	randomly generated...	declined	2024-12-28 16:50:00.393677+00	51	65
384	2025-01-27	4	randomly generated...	pending	2024-12-28 16:50:00.410419+00	32	13
385	2025-01-01	4	randomly generated...	pending	2024-12-28 16:50:00.422589+00	43	78
386	2024-12-09	4	randomly generated...	declined	2024-12-28 16:50:00.433082+00	34	84
387	2025-01-16	4	randomly generated...	pending	2024-12-28 16:50:00.44485+00	43	76
388	2025-01-14	4	randomly generated...	declined	2024-12-28 16:50:00.45551+00	54	74
389	2025-01-12	4	randomly generated...	declined	2024-12-28 16:50:00.465553+00	41	81
390	2024-12-26	4	randomly generated...	approved	2024-12-28 16:50:00.475515+00	38	55
391	2024-12-08	4	randomly generated...	declined	2024-12-28 16:50:00.499767+00	50	35
392	2025-01-11	4	randomly generated...	cancelled	2024-12-28 16:50:00.552129+00	35	59
393	2024-12-21	4	randomly generated...	cancelled	2024-12-28 16:50:00.583765+00	24	62
394	2025-01-11	4	randomly generated...	pending	2024-12-28 16:50:00.59598+00	39	99
395	2025-01-15	4	randomly generated...	approved	2024-12-28 16:50:00.607256+00	53	95
396	2024-12-07	4	randomly generated...	declined	2024-12-28 16:50:00.620838+00	46	3
397	2024-12-03	4	randomly generated...	cancelled	2024-12-28 16:50:00.63393+00	41	80
398	2025-01-01	4	randomly generated...	declined	2024-12-28 16:50:00.644276+00	43	106
399	2024-12-31	4	randomly generated...	declined	2024-12-28 16:50:00.658311+00	52	80
400	2025-01-01	4	randomly generated...	pending	2024-12-28 16:50:00.669332+00	19	47
401	2024-12-14	4	randomly generated...	declined	2024-12-28 16:50:00.682254+00	61	76
402	2025-01-09	4	randomly generated...	pending	2024-12-28 16:50:00.694674+00	50	77
403	2025-01-17	4	randomly generated...	pending	2024-12-28 16:50:00.709191+00	53	107
404	2024-12-08	4	randomly generated...	pending	2024-12-28 16:50:00.72333+00	46	57
405	2024-12-28	4	randomly generated...	cancelled	2024-12-28 16:50:00.733624+00	26	47
406	2025-01-02	4	randomly generated...	cancelled	2024-12-28 16:50:00.744365+00	31	22
407	2025-01-18	4	randomly generated...	approved	2024-12-28 16:50:00.756374+00	21	16
408	2024-12-01	4	randomly generated...	declined	2024-12-28 16:50:00.769483+00	32	50
409	2025-01-02	4	randomly generated...	cancelled	2024-12-28 16:50:00.78177+00	52	40
410	2024-12-12	4	randomly generated...	declined	2024-12-28 16:50:00.794006+00	36	80
411	2024-12-19	4	randomly generated...	declined	2024-12-28 16:50:00.804754+00	15	47
412	2025-01-02	4	randomly generated...	cancelled	2024-12-28 16:50:00.8191+00	50	31
413	2025-01-21	4	randomly generated...	pending	2024-12-28 16:50:00.833609+00	57	12
414	2025-01-15	4	randomly generated...	cancelled	2024-12-28 16:50:00.856202+00	40	14
415	2025-01-02	4	randomly generated...	cancelled	2024-12-28 16:50:00.877378+00	45	12
416	2024-12-06	4	randomly generated...	pending	2024-12-28 16:50:00.890134+00	37	53
417	2025-01-04	4	randomly generated...	cancelled	2024-12-28 16:50:00.904683+00	24	29
418	2024-12-18	4	randomly generated...	declined	2024-12-28 16:50:00.915304+00	33	54
419	2024-12-16	4	randomly generated...	cancelled	2024-12-28 16:50:00.929086+00	56	36
420	2024-12-10	4	randomly generated...	declined	2024-12-28 16:50:00.940256+00	23	58
421	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:50:00.955233+00	38	53
422	2024-12-12	4	randomly generated...	cancelled	2024-12-28 16:50:00.968518+00	30	13
423	2025-01-17	4	randomly generated...	declined	2024-12-28 16:50:00.981927+00	15	57
424	2024-12-31	4	randomly generated...	declined	2024-12-28 16:50:00.998034+00	49	46
425	2024-12-15	4	randomly generated...	declined	2024-12-28 16:50:01.021081+00	49	84
426	2024-12-28	4	randomly generated...	approved	2024-12-28 16:50:01.033584+00	50	87
427	2024-11-28	4	randomly generated...	approved	2024-12-28 16:50:01.048246+00	29	93
428	2025-01-19	4	randomly generated...	approved	2024-12-28 16:50:01.059652+00	37	51
429	2025-01-06	4	randomly generated...	cancelled	2024-12-28 16:50:01.075935+00	15	50
430	2024-11-30	4	randomly generated...	cancelled	2024-12-28 16:50:01.087822+00	56	24
431	2025-01-13	4	randomly generated...	approved	2024-12-28 16:50:01.100048+00	34	76
432	2024-12-13	4	randomly generated...	cancelled	2024-12-28 16:50:01.115219+00	23	50
433	2025-01-18	4	randomly generated...	pending	2024-12-28 16:50:01.126718+00	19	57
434	2024-12-21	4	randomly generated...	pending	2024-12-28 16:50:01.142265+00	36	89
435	2025-01-15	4	randomly generated...	approved	2024-12-28 16:50:01.174148+00	41	68
436	2025-01-17	4	randomly generated...	declined	2024-12-28 16:50:01.189689+00	20	22
437	2024-11-30	4	randomly generated...	declined	2024-12-28 16:50:01.211716+00	52	12
438	2025-01-04	4	randomly generated...	cancelled	2024-12-28 16:50:01.223239+00	47	14
439	2024-12-07	4	randomly generated...	declined	2024-12-28 16:50:01.238102+00	30	6
440	2025-01-06	4	randomly generated...	declined	2024-12-28 16:50:01.251898+00	32	60
441	2025-01-25	4	randomly generated...	declined	2024-12-28 16:50:01.26589+00	27	23
442	2024-12-15	4	randomly generated...	declined	2024-12-28 16:50:01.283495+00	52	71
443	2024-12-09	4	randomly generated...	pending	2024-12-28 16:50:01.302253+00	27	88
444	2024-12-17	4	randomly generated...	declined	2024-12-28 16:50:01.322866+00	53	10
445	2024-12-25	4	randomly generated...	declined	2024-12-28 16:50:01.33622+00	29	88
446	2024-12-29	4	randomly generated...	pending	2024-12-28 16:50:01.351105+00	49	61
447	2024-12-08	4	randomly generated...	cancelled	2024-12-28 16:50:01.362291+00	47	89
448	2024-12-11	4	randomly generated...	pending	2024-12-28 16:50:01.376474+00	57	42
449	2025-01-17	4	randomly generated...	approved	2024-12-28 16:50:01.38912+00	58	76
450	2024-12-16	4	randomly generated...	pending	2024-12-28 16:50:01.401924+00	18	54
451	2025-01-07	4	randomly generated...	approved	2024-12-28 16:50:01.418342+00	35	11
452	2024-12-07	4	randomly generated...	cancelled	2024-12-28 16:50:01.435909+00	55	70
453	2025-01-03	4	randomly generated...	cancelled	2024-12-28 16:50:01.476068+00	36	66
454	2025-01-16	4	randomly generated...	approved	2024-12-28 16:50:01.501487+00	22	47
455	2024-12-27	4	randomly generated...	pending	2024-12-28 16:50:01.525518+00	16	60
456	2024-12-30	4	randomly generated...	approved	2024-12-28 16:50:01.538126+00	43	93
457	2024-12-01	4	randomly generated...	pending	2024-12-28 16:50:01.54887+00	18	17
458	2025-01-11	4	randomly generated...	approved	2024-12-28 16:50:01.563181+00	45	78
459	2024-12-19	4	randomly generated...	cancelled	2024-12-28 16:50:01.575959+00	57	72
460	2025-01-10	4	randomly generated...	pending	2024-12-28 16:50:01.587196+00	59	94
461	2025-01-23	4	randomly generated...	declined	2024-12-28 16:50:01.600381+00	17	61
462	2024-12-21	4	randomly generated...	pending	2024-12-28 16:50:01.611252+00	49	98
463	2025-01-11	4	randomly generated...	pending	2024-12-28 16:50:01.627583+00	58	63
464	2025-01-27	4	randomly generated...	declined	2024-12-28 16:50:01.638447+00	57	36
465	2025-01-02	4	randomly generated...	approved	2024-12-28 16:50:01.656614+00	39	11
466	2025-01-18	4	randomly generated...	cancelled	2024-12-28 16:50:01.670305+00	24	22
467	2025-01-16	4	randomly generated...	pending	2024-12-28 16:50:01.682191+00	14	22
468	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:50:01.69934+00	52	2
469	2024-12-15	4	randomly generated...	cancelled	2024-12-28 16:50:01.714174+00	23	8
470	2025-01-03	4	randomly generated...	approved	2024-12-28 16:50:01.726279+00	60	55
471	2025-01-12	4	randomly generated...	pending	2024-12-28 16:50:01.738347+00	18	1
472	2025-01-08	4	randomly generated...	approved	2024-12-28 16:50:01.756313+00	59	67
473	2024-11-28	4	randomly generated...	cancelled	2024-12-28 16:50:01.775377+00	37	74
474	2024-12-21	4	randomly generated...	cancelled	2024-12-28 16:50:01.788178+00	22	104
475	2024-12-23	4	randomly generated...	cancelled	2024-12-28 16:50:01.800135+00	41	88
476	2024-11-30	4	randomly generated...	cancelled	2024-12-28 16:50:01.813638+00	45	65
477	2025-01-25	4	randomly generated...	declined	2024-12-28 16:50:01.846868+00	40	29
478	2025-01-25	4	randomly generated...	approved	2024-12-28 16:50:01.864357+00	24	43
479	2024-12-26	4	randomly generated...	pending	2024-12-28 16:50:01.879241+00	35	76
480	2024-12-11	4	randomly generated...	cancelled	2024-12-28 16:50:01.895756+00	36	18
481	2025-01-25	4	randomly generated...	pending	2024-12-28 16:50:01.90997+00	43	37
482	2024-12-04	4	randomly generated...	cancelled	2024-12-28 16:50:01.926711+00	48	16
483	2025-01-20	4	randomly generated...	cancelled	2024-12-28 16:50:01.947206+00	24	78
484	2025-01-14	4	randomly generated...	cancelled	2024-12-28 16:50:01.964761+00	20	21
485	2024-11-30	4	randomly generated...	cancelled	2024-12-28 16:50:01.976672+00	23	49
486	2024-12-31	4	randomly generated...	pending	2024-12-28 16:50:01.992607+00	49	15
487	2025-01-16	4	randomly generated...	pending	2024-12-28 16:50:02.004148+00	59	25
488	2024-12-22	4	randomly generated...	approved	2024-12-28 16:50:02.021009+00	63	79
489	2024-11-28	4	randomly generated...	approved	2024-12-28 16:50:02.034984+00	31	97
490	2025-01-22	4	randomly generated...	approved	2024-12-28 16:50:02.074793+00	14	59
491	2024-12-04	4	randomly generated...	approved	2024-12-28 16:50:02.085919+00	59	30
492	2024-12-09	4	randomly generated...	pending	2024-12-28 16:50:02.096496+00	58	55
493	2024-12-21	4	randomly generated...	declined	2024-12-28 16:50:02.110935+00	54	40
494	2025-01-01	4	randomly generated...	approved	2024-12-28 16:50:02.123535+00	40	5
495	2024-12-03	4	randomly generated...	declined	2024-12-28 16:50:02.140302+00	27	91
496	2024-12-24	4	randomly generated...	cancelled	2024-12-28 16:50:02.150914+00	30	78
497	2024-12-02	4	randomly generated...	approved	2024-12-28 16:50:02.162786+00	48	91
498	2024-12-29	4	randomly generated...	cancelled	2024-12-28 16:50:02.174092+00	31	25
499	2025-01-11	4	randomly generated...	cancelled	2024-12-28 16:50:02.186183+00	47	78
500	2025-01-12	4	randomly generated...	approved	2024-12-28 16:50:02.197841+00	49	69
501	2024-12-27	4	randomly generated...	pending	2024-12-28 16:50:02.207026+00	18	12
502	2025-01-23	4	randomly generated...	cancelled	2024-12-28 16:50:02.220105+00	62	63
503	2025-01-19	4	randomly generated...	cancelled	2024-12-28 16:50:02.228949+00	24	67
504	2025-01-13	4	randomly generated...	approved	2024-12-28 16:50:02.238166+00	39	49
505	2024-12-02	4	randomly generated...	pending	2024-12-28 16:50:02.248927+00	31	97
506	2024-12-03	4	randomly generated...	pending	2024-12-28 16:50:02.258975+00	63	36
507	2025-01-09	4	randomly generated...	declined	2024-12-28 16:50:02.269256+00	55	36
508	2025-01-23	4	randomly generated...	pending	2024-12-28 16:50:02.279556+00	31	33
509	2025-01-09	4	randomly generated...	cancelled	2024-12-28 16:50:02.289227+00	26	15
510	2024-12-10	4	randomly generated...	declined	2024-12-28 16:50:02.299043+00	41	99
511	2025-01-01	4	randomly generated...	pending	2024-12-28 16:50:02.3091+00	26	83
512	2024-12-28	4	randomly generated...	declined	2024-12-28 16:50:02.319127+00	25	53
513	2025-01-21	4	randomly generated...	pending	2024-12-28 16:50:02.329409+00	17	13
514	2025-01-02	4	randomly generated...	pending	2024-12-28 16:50:02.342843+00	19	29
515	2024-12-25	4	randomly generated...	declined	2024-12-28 16:50:02.37262+00	52	31
516	2024-12-31	4	randomly generated...	declined	2024-12-28 16:50:02.387399+00	15	25
517	2025-01-22	4	randomly generated...	pending	2024-12-28 16:50:02.398501+00	23	29
518	2024-12-20	4	randomly generated...	approved	2024-12-28 16:50:02.408421+00	23	35
519	2025-01-06	4	randomly generated...	cancelled	2024-12-28 16:50:02.418631+00	34	102
520	2025-01-05	4	randomly generated...	pending	2024-12-28 16:50:02.430608+00	15	36
217	2024-12-19	4	randomly generated...	approved	2024-12-28 16:49:58.125906+00	38	36
\.


--
-- Data for Name: restaurant_restaurant; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.restaurant_restaurant (id, name, slug, description, address, status, menu, created_on, updated_on, city_id, owner_id) FROM stdin;
30	Seoul Bowl	seoul-bowl	Korean BBQ, bibimbap, and more in a trendy setting.	Östra Hamngatan 20, Gothenburg, Sweden	pending	image/upload/v1731944509/qezj3wjot8waw7exyivv.jpg	2024-11-07 10:50:59.868371+00	2024-12-17 20:03:30.719524+00	9	1
26	A Taste of Vietnam	a-taste-of-vietnam	Fresh, healthy Vietnamese cuisine with pho, banh mi, and more.	Vasagatan 14, Gothenburg, Sweden	pending	image/upload/v1731944563/mz6yw4buojwgalrxitg9.jpg	2024-11-07 10:47:27.029091+00	2024-11-18 15:42:44.508958+00	9	1
39	Anatolian Bites	anatolian-bites	Authentic Turkish dishes including kofte, manti, and a selection of savory pastries.	Södra Förstadsgatan 18, Malmö, Sweden	pending	image/upload/v1731944376/uf7kqiar8x8ewpfzbvoh.jpg	2024-11-07 10:59:16.587326+00	2024-11-18 15:39:37.658152+00	2	1
38	Ephesus Grill	ephesus-grill	Known for its flavorful doner kebabs, grilled meats, and Turkish mezze platters.	Storgatan 45, Gothenburg, Sweden	pending	image/upload/v1731944387/g9lynxalu8o7mgfyq1zs.jpg	2024-11-07 10:58:39.079571+00	2024-11-18 15:39:48.790293+00	9	1
37	Istanbul Delight	istanbul-delight	A warm, inviting restaurant serving traditional Turkish kebabs, pide, and baklava.	Drottninggatan 12, Stockholm, Sweden	pending	image/upload/v1731944397/ok61m77ycc8y7agjbggn.jpg	2024-11-07 10:58:03.820206+00	2024-11-18 15:39:58.725304+00	1	1
36	Hamburg Hof	hamburg-hof	Hearty German dishes including bratwurst and schnitzels.	Stortorget 5, Malmö, Sweden	pending	image/upload/v1731944408/rva6pkkjpxjcnv0naq02.jpg	2024-11-07 10:56:44.811194+00	2024-11-18 15:40:09.275494+00	2	1
44	Le Petit Café	le-petit-cafe	Cozy French café with pastries and light meals.	Kungsgatan 8, Uppsala, Sweden	pending	image/upload/v1731944268/d1qniddutvca5yh2pybr.jpg	2024-11-07 11:13:45.691213+00	2024-11-18 15:37:49.087053+00	10	1
40	Sultan’s Table	sultans-table	A cozy, traditional restaurant offering Turkish classics like stuffed grape leaves, kebabs, and Turkish coffee.	Svartbäcksgatan 20, Uppsala, Sweden	pending	image/upload/v1731944365/ucnwmyxmfrksnei07igj.jpg	2024-11-07 11:00:11.230035+00	2024-11-18 15:39:26.976448+00	10	1
16	Café de Paris	cafe-de-paris	French classics in a chic setting, perfect for romantic evenings.	Rådmansgatan 19, Stockholm, Sweden	pending	image/upload/v1731944681/ek9kecpt8yzeh5lynyqo.jpg	2024-11-07 10:38:40.649756+00	2024-11-18 15:44:43.189245+00	1	1
25	Bella Notte	bella-notte	Traditional Italian dining experience with pasta, pizzas, and wine.	Linnégatan 32, Gothenburg, Sweden	pending	image/upload/v1731944575/brt4bdcju4ikfssji7rp.jpg	2024-11-07 10:46:04.238588+00	2024-11-18 15:42:56.860996+00	9	1
41	Taste of Istanbul	taste-of-istanbul	Delicious Turkish cuisine with a focus on grilled meats, fresh salads, and homemade baklava.	Drottninggatan 4, Västerås, Sweden	pending	image/upload/v1731944354/c8yagi8qbwljxlqsaymf.jpg	2024-11-07 11:01:00.261983+00	2024-11-18 15:39:15.127562+00	11	1
31	Malmo’s Smaker	malmos-smaker	Swedish dishes served with a modern twist.	Gustav Adolfs Torg 12, Malmö, Sweden	pending	image/upload/v1731944496/t7ru4atfkws1qrfyug29.jpg	2024-11-07 10:51:41.365852+00	2024-11-18 15:41:38.481082+00	2	1
17	Athena Taverna	athena-taverna	Traditional Greek dining with fresh ingredients and homemade recipes.	Odengatan 55, Stockholm, Sweden	pending	image/upload/v1731944672/heeogp25y85rkfvpkm5l.jpg	2024-11-07 10:39:35.941691+00	2024-11-18 15:44:32.947112+00	1	1
24	Göteborgs Krogar	goteborgs-krogar	Classic Swedish dishes with locally sourced ingredients.	Kungsportsavenyen 25, Gothenburg, Sweden	pending	image/upload/v1731944586/sfbnc6no6cmd9if9gpjj.jpg	2024-11-07 10:45:26.061462+00	2024-11-18 15:43:07.954997+00	9	1
21	El Matador	el-matador	Spanish tapas and vibrant dishes inspired by the Mediterranean.	Sveavägen 120, Stockholm, Sweden	pending	image/upload/v1731944642/d1hjwioeeazlmiyqkbrw.jpg	2024-11-07 10:42:35.497809+00	2024-11-18 15:44:03.398862+00	1	1
14	Bistro Stockholm	bistro-stockholm	A cozy bistro offering traditional Swedish dishes with a modern twist.	Drottninggatan 33, Stockholm, Sweden	pending	image/upload/v1731944692/gin3odj4ihapakybo0qb.jpg	2024-11-07 10:36:46.539248+00	2024-11-18 15:44:53.396203+00	1	1
19	Maharaja's Table	maharajas-table	Flavorful and aromatic Indian dishes inspired by the Maharaja kitchens.	Vasagatan 13, Stockholm, Sweden	pending	image/upload/v1731944659/pzjwyl6ssha6nnhz7gf5.jpg	2024-11-07 10:41:02.481744+00	2024-11-18 15:44:21.072517+00	1	1
46	The British Pub	the-british-pub	Classic British pub fare, from fish and chips to bangers and mash.	Kungsängsgatan 12, Uppsala, Sweden	pending	image/upload/v1731944245/m8aihgqchocohw2fv8ar.jpg	2024-11-07 11:15:29.350997+00	2024-11-18 15:37:26.245283+00	10	1
20	Sakura House	sakura-house	Fresh sushi and classic Japanese dishes served in a minimalist space.	Birger Jarlsgatan 18, Stockholm, Sweden	pending	image/upload/v1731944651/r4lkhnxhvs9plgysccwc.jpg	2024-11-07 10:41:51.430825+00	2024-11-18 15:44:12.777739+00	1	1
15	La Bella Vita	la-bella-vita	Authentic Italian pasta and pizzas served with a homestyle touch.	Stureplan 4, Stockholm, Sweden	pending	image/upload/v1731944687/n424zhz0ojm9ivj2q7yq.jpg	2024-11-07 10:37:32.806618+00	2024-11-18 15:44:48.820931+00	1	1
34	Little India	little-india	Family-friendly Indian dining with classic curries and more.	Davidshallsgatan 23, Malmö, Sweden	pending	image/upload/v1731944430/jjhvbkongg5052uri0t7.jpg	2024-11-07 10:54:42.980582+00	2024-11-18 15:40:31.869504+00	2	1
28	Saffron Palace	saffron-palace	A modern take on traditional Indian dishes.	Haga Nygata 28, Gothenburg, Sweden	pending	image/upload/v1731944535/fihcihf0oy4echdysoau.jpg	2024-11-07 10:49:23.361058+00	2024-11-18 15:42:17.474051+00	9	1
18	Bangkok Spice	bangkok-spice	Exotic flavors of Thailand brought to the heart of Stockholm.	Kungsgatan 23, Stockholm, Sweden	pending	image/upload/v1731944666/muimdek0gjfqtyzo2dge.jpg	2024-11-07 10:40:25.267217+00	2024-11-18 15:44:27.426611+00	1	1
29	La Tapita	la-tapita	Casual tapas bar with a wide variety of small plates.	Andra Långgatan 3, Gothenburg, Sweden	pending	image/upload/v1731944521/lfhkkbfrfonr4zpx8pwj.jpg	2024-11-07 10:50:14.284122+00	2024-11-18 15:42:02.699429+00	9	1
35	The Olive Grove	the-olive-grove	Fresh, homemade Greek dishes from souvlaki to baklava.	Västergatan 2, Malmö, Sweden	pending	image/upload/v1731944419/iinvdz6hdlbfh3cscbqh.jpg	2024-11-07 10:55:49.635399+00	2024-11-18 15:40:20.529275+00	2	1
47	Västerås Krog	vasteros-krog	Classic Swedish cuisine using locally-sourced ingredients.	Stora Gatan 3, Västerås, Sweden	pending	image/upload/v1731944235/cgi9t0ytxu9icqig18nv.jpg	2024-11-07 11:17:00.545709+00	2024-11-18 15:37:16.410617+00	11	1
45	Taste of Beirut	taste-beirut	Lebanese mezze and grilled dishes in a vibrant setting.	Vaksalagatan 24, Uppsala, Sweden	pending	image/upload/v1731944257/bikagnknoyklmcf9g663.jpg	2024-11-07 11:14:44.294857+00	2024-12-17 19:50:29.926646+00	2	1
32	El Mexicano	el-mexicano	Authentic Mexican tacos and margaritas.	Lilla Torg 8, Malmö, Sweden	pending	image/upload/v1731944483/pyqhph2wzdb3vczg5uoo.jpg	2024-11-07 10:53:39.365806+00	2024-12-17 20:18:22.018454+00	2	1
43	Amigos de Espana	amigos-de-espana	Lively Spanish tapas bar with traditional fare.	Dragarbrunnsgatan 46, Uppsala, Sweden	pending	image/upload/v1731944342/qkili7vrqogzbie5kzbl.jpg	2024-11-07 11:02:46.094172+00	2024-11-18 15:39:04.34713+00	10	1
60	Himalayan Kitchen	himalayan-kitchen	Authentic Nepalese flavors, with signature dishes like momo dumplings and dal bhat.	Storgatan 8, Västerås, Sweden	pending	image/upload/v1731944069/kaeicukanzft3kmryejm.jpg	2024-11-07 11:29:55.39245+00	2024-11-18 15:34:30.856707+00	11	1
33	Zen Garden	zen-garden	Sushi and traditional Japanese dining in a serene atmosphere.	Södra Förstadsgatan 14, Malmö, Sweden	pending	image/upload/v1731944441/silh73ryqbong0u6vibf.jpg	2024-11-07 10:54:12.571587+00	2024-11-18 15:40:42.961814+00	2	1
59	Hygge Café	hygge-cafe	A cozy café offering Danish pastries, sandwiches, and coffee, inspired by the Danish concept of “hygge” (comfort and coziness).	Södergatan 8, Malmö, Sweden	pending	image/upload/v1731944080/ydeqkqxxn40fedlclq87.jpg	2024-11-07 11:28:26.311407+00	2024-11-18 15:34:41.071733+00	2	1
58	Smørrebrød Haven	smorrebrod-haven	A charming spot specializing in traditional Danish open-faced sandwiches, smørrebrød, topped with a variety of fresh ingredients.	Drottninggatan 25, Stockholm, Sweden	pending	image/upload/v1731944089/y0ymcvrfqnnkrk0t5qwi.jpg	2024-11-07 11:27:48.188752+00	2024-11-18 15:34:50.766522+00	1	1
57	Casa de Tapas	casa-de-tapas	An extensive selection of Spanish tapas and paella served in a cozy, lively setting.	Smedjegatan 6, Linköping, Sweden	pending	image/upload/v1731944100/byih1bhpprrqernohlzv.jpg	2024-11-07 11:26:43.649011+00	2024-11-18 15:35:01.799763+00	13	1
55	Nairobi Spice	nairobi-spice	Ethiopian dishes, including injera with traditional stews and a vibrant selection of spices.	Vasagatan 5, Uppsala, Sweden	pending	image/upload/v1731944122/c5aogqvfk0eoerunttpn.jpg	2024-11-07 11:24:56.340729+00	2024-11-18 15:35:23.147279+00	10	1
54	Hacienda del Sol	hacienda-del-sol	Colorful Mexican restaurant featuring tacos, enchiladas, and margaritas.	Drottninggatan 22, Stockholm, Sweden	pending	image/upload/v1731944131/zrn94epupe4cxyj05top.jpg	2024-11-07 11:23:39.544567+00	2024-11-18 15:35:32.776198+00	1	1
53	Pho & Co.	pho-cho	Authentic Vietnamese pho, banh mi, and fresh spring rolls served in a relaxed atmosphere.	Lilla Torg 10, Malmö, Sweden	pending	image/upload/v1731944178/wuuqyf59yi41woagrjyq.jpg	2024-11-07 11:23:06.404484+00	2024-11-18 15:36:19.19581+00	2	1
52	Bavarian Feast	bavarian-feast	Traditional German dishes, including sausages, schnitzels, and a wide selection of beers.	Kungsportsavenyen 18, Gothenburg, Sweden	pending	image/upload/v1731944186/edltj6hgbuibhabcsfpc.jpg	2024-11-07 11:22:15.867172+00	2024-11-18 15:36:27.523847+00	9	1
63	Love of Rio	love-of-rio	Brazilian churrasco barbecue, tropical salads, and authentic feijoada stew.	Kungsgatan 30, Stockholm, Sweden	pending	image/upload/v1731944010/b7yffbys62tafddenrtm.jpg	2024-11-07 11:33:24.797498+00	2024-11-18 15:33:31.63859+00	1	1
27	Café Parisien	cafe-parisien	Charming French café with pastries and croissants.	Viktoriagatan 10, Gothenburg, Sweden	pending	image/upload/v1731944550/tospcmffuwlwcmnwn6m5.jpg	2024-11-07 10:48:22.306189+00	2024-11-18 15:42:31.823915+00	9	1
62	Tandoori Flames	tandoori-flames	Traditional Indian curries, biryanis, and tandoor-cooked dishes.	Kungsängsgatan 18, Uppsala, Sweden	pending	image/upload/v1731944025/azabtpyjdtdmvsxybvag.jpg	2024-11-07 11:32:01.649052+00	2024-11-18 15:33:47.001081+00	10	1
23	Shangri-La	shangri-la	A variety of Chinese favourites from dim sum to noodles.	Norr Mälarstrand 48, Stockholm, Sweden	pending	image/upload/v1731944599/ddgq03kyvjz96hrbddqz.jpg	2024-11-07 10:44:24.301753+00	2024-11-18 15:43:20.547542+00	1	1
56	New York Diner	new-york-diner	Classic American diner fare, from burgers and fries to milkshakes.	Östra Storgatan 16, Jönköping, Sweden	pending	image/upload/v1731944111/mfijr5j8scu6thh1xyxc.jpg	2024-11-07 11:25:44.567992+00	2024-11-18 15:35:13.116456+00	12	1
51	Middle Eastern Feast	middle-eastern-feast	Traditional Middle Eastern delicacies and mezze.	Kopparbergsvägen 5, Västerås, Sweden	pending	image/upload/v1731944196/jtraohowfaxgfpxyxs39.jpg	2024-11-07 11:20:36.620349+00	2024-11-18 15:36:36.889403+00	11	1
22	The Grill House	the-grill-house	Serving American-style burgers, ribs, and more in a relaxed atmosphere.	Hornsgatan 61, Stockholm, Sweden	pending	image/upload/v1731944636/daoeah6awhxkergwyovu.jpg	2024-11-07 10:43:32.078004+00	2024-11-18 15:43:57.619002+00	1	1
50	Casa Brazil	casa-brazil	Brazilian barbecue with authentic flavors.	Munkgatan 15, Västerås, Sweden	pending	image/upload/v1731944206/sg5t3vy9ih3osl5v24gs.jpg	2024-11-07 11:19:42.332095+00	2024-11-18 15:36:47.537379+00	11	1
61	Ginza Sushi Bar	ginza-sushi-bar	Fresh, high-quality sushi and Japanese specialties in a minimalist, calming space.	Drottninggatan 7, Örebro, Sweden	pending	image/upload/v1731944050/swmpcfwu4purhloa1iff.jpg	2024-11-07 11:31:07.425865+00	2024-12-17 19:30:43.348848+00	14	1
49	Koh Thai	koh-thai	Spicy and flavorful Thai dishes in a vibrant atmosphere.	Vasagatan 10, Västerås, Sweden	pending	image/upload/v1731944216/u9m6nayx99tnktibj28p.jpg	2024-11-07 11:18:19.404884+00	2024-11-18 15:36:56.960224+00	11	1
48	Toscana Trattoria	toscana-trattoria	Italian comfort food with pastas and pizzas.	Hantverkargatan 22, Västerås, Sweden	pending	image/upload/v1731944225/remgwfaoopckub1qhqdx.jpg	2024-11-07 11:17:39.638411+00	2024-11-18 15:37:06.686867+00	11	1
42	Uppsalaköket	uppsalakoket	Rustic, traditional Swedish meals with a cozy atmosphere.	Svartbäcksgatan 31, Uppsala, Sweden	pending	image/upload/v1731944336/bmuaqoeox1mxc8sdxomv.jpg	2024-11-07 11:02:02.822019+00	2024-11-18 15:38:57.415874+00	10	1
\.


--
-- Data for Name: restaurant_restaurant_cuisines; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.restaurant_restaurant_cuisines (id, restaurant_id, cuisine_id) FROM stdin;
24	14	11
25	15	7
26	16	12
27	17	13
28	18	3
29	19	1
30	20	8
31	21	14
32	22	16
33	22	15
34	23	4
35	24	11
36	25	7
37	26	17
38	27	12
39	28	1
40	29	14
41	30	18
42	31	11
43	32	2
44	33	8
45	34	1
46	35	13
47	36	19
48	37	20
49	38	20
50	39	20
51	40	20
52	41	20
53	42	11
54	43	14
55	44	12
56	45	21
57	46	22
58	47	11
59	48	7
60	49	3
61	50	23
62	51	6
63	52	19
64	53	17
65	54	2
66	55	24
67	56	15
68	57	14
69	58	25
70	59	25
71	60	26
72	61	8
73	61	9
74	62	1
75	63	23
76	32	10
77	32	12
78	32	15
\.


--
-- Data for Name: restaurant_restaurantimage; Type: TABLE DATA; Schema: public; Owner: ajunujmr
--

COPY public.restaurant_restaurantimage (id, image, restaurant_id) FROM stdin;
23	image/upload/v1731935598/aihusebmde3pmserjaci.jpg	60
24	image/upload/v1731935601/wrlxnm9qvxkvllzwjids.jpg	60
25	image/upload/v1731935603/rhadjj2ofevgg1oss9ah.jpg	60
26	image/upload/v1731935794/bm7dhdir9ykxpaanuh0z.jpg	54
27	image/upload/v1731935796/xqlv3blsjkigjnorlwni.jpg	54
28	image/upload/v1731935797/egtkmbdkmbs2cn6wydon.jpg	54
29	image/upload/v1731935842/aphamaqvhihqfjpaqvkq.jpg	32
30	image/upload/v1731935844/xebz1hb02ydjlrlteazg.jpg	32
31	image/upload/v1731935846/aq1xd2gpii7kmonc2hfs.jpg	32
32	image/upload/v1731935975/snjvyvcdpzgzuqdsy2em.jpg	49
33	image/upload/v1731935977/skmmb9ry0lghtjd3s47k.jpg	49
34	image/upload/v1731935979/fvuei8wypl19ed9j4v12.jpg	49
35	image/upload/v1731936014/jpj48ky1v5gjfqnjyoew.jpg	18
36	image/upload/v1731936016/lyhggbgbmpn5q1tydro9.jpg	18
37	image/upload/v1731936017/c2sufjgd3if5oq67yhoe.jpg	18
38	image/upload/v1731936098/rpecq1os0h3oeeu06l2r.jpg	23
39	image/upload/v1731936100/kyyhnixd37wni10zvxr6.jpg	23
40	image/upload/v1731936114/wg6if4wytjltovqx99ra.jpg	23
41	image/upload/v1731936232/y3mbws6xkuapy48nqsv4.jpg	51
42	image/upload/v1731936233/cjx2opldi6mlo6yzfqkt.jpg	51
43	image/upload/v1731936235/lzvzkqiqgwwok3yiqo6u.jpg	51
44	image/upload/v1731936446/funwcqgw1mgfu9hv1vtf.jpg	48
45	image/upload/v1731936447/efkdqjzwsvg351ef2zof.jpg	48
46	image/upload/v1731936448/kdifck8di7qltsmnqxff.jpg	48
47	image/upload/v1731936480/xbcrx35k4jiw0jelmhjm.jpg	25
48	image/upload/v1731936482/qa1jibz5lmdw6hfh6nfe.jpg	25
49	image/upload/v1731936483/ry2uh6hbtiqkxnjg5qk4.jpg	25
50	image/upload/v1731936516/c7xtsjwbcz5dbqklwfhu.jpg	15
51	image/upload/v1731936518/nxjsawot5goqbnx69rsu.jpg	15
52	image/upload/v1731936519/jh8fa5ur3cbz6fyzibc9.jpg	15
53	image/upload/v1731936615/favjjvnxltjre9sjgn0g.jpg	61
54	image/upload/v1731936617/xblecpnoquureqydzdce.jpg	61
55	image/upload/v1731936621/gkzt4ac2vjavwsncvwtx.jpg	61
56	image/upload/v1731936659/x8cutheosmrtzfntnhas.jpg	33
57	image/upload/v1731936662/yfjbiim0y9ajzifuogdw.jpg	33
58	image/upload/v1731936664/qwc6kjnlqurqet2ldx9l.jpg	33
59	image/upload/v1731936702/ts0l6lon3f2n2kcx5qbz.jpg	20
60	image/upload/v1731936704/l2v06siyahzulzgwedvo.jpg	20
61	image/upload/v1731936706/k8nl5edvx3m7c9hus9vw.jpg	20
62	image/upload/v1731936945/v7jqzuyh68kxgtqzxbgs.jpg	47
63	image/upload/v1731936993/r1eq8rs48pnxdb5mnz5t.jpg	42
64	image/upload/v1731936995/ntm4qbi4neimkfvdifzg.jpg	42
65	image/upload/v1731936998/uqgmqbqdmm9g8u2plv0l.jpg	42
66	image/upload/v1731937043/bcqp7k2sdjyxdrdrap2y.jpg	31
67	image/upload/v1731937045/ragwcujlte310x7tb80t.jpg	31
68	image/upload/v1731937048/drf6zs5dq12scjjob1of.jpg	31
69	image/upload/v1731937087/ihbeagmbld03txscbf6o.jpg	24
70	image/upload/v1731937090/w5fkylo1jgsu0dwdokdw.jpg	24
71	image/upload/v1731937093/ens0iuk9ngppkjpsvbhf.jpg	24
72	image/upload/v1731937117/q6vn3mx6zaxrucglaxky.jpg	14
73	image/upload/v1731937119/h72vddzni1b9ab1wampm.jpg	14
74	image/upload/v1731937569/ulc8ttyqvecghbqdjuld.jpg	44
75	image/upload/v1731937573/aiavdxezubzmfgytfvom.jpg	44
76	image/upload/v1731937578/sxydqrkb3hatyxwc8stw.jpg	44
77	image/upload/v1731937621/douh9cashd0ghccnedlo.jpg	27
78	image/upload/v1731937625/q7lnnzzmbna1lml9gtky.jpg	27
79	image/upload/v1731937628/jkgtovra8pboklmnfc5j.jpg	27
80	image/upload/v1731937662/ofhi8lssmrsroygbsvhr.jpg	16
81	image/upload/v1731937666/vjntl8rkup60srqa5nrp.jpg	16
82	image/upload/v1731937669/ty46uydlr97b5f80jued.jpg	16
83	image/upload/v1731937783/lcqlfnyzgt7tzv2qgt4g.jpg	35
84	image/upload/v1731937786/n00skbmmeten0ueuscs9.jpg	35
85	image/upload/v1731937787/wxkspl5tjgwoj9qo10em.jpg	35
86	image/upload/v1731937815/ekw2zdovghd51gmtku40.jpg	17
87	image/upload/v1731937817/ef5sctotmj6icsx1yhe3.jpg	17
88	image/upload/v1731937820/wdawskwj116qlzivg2yb.jpg	17
89	image/upload/v1731937968/anmlv5ysszqcmyhxh14z.jpg	57
90	image/upload/v1731937970/lsagiqnkzsw4dovkh6nv.jpg	57
91	image/upload/v1731937973/thwybpvoy1ze1av6dmyl.jpg	57
92	image/upload/v1731938007/ozyi5ms0poykdpm43qib.jpg	43
93	image/upload/v1731938009/vemmwrq7pdde9b3hrpbn.jpg	43
94	image/upload/v1731938011/oufj1ngyeb1k8zxcs0ho.jpg	43
95	image/upload/v1731938044/c8encfa6qyy1amzxadlh.jpg	29
96	image/upload/v1731938049/b76f6tjinw3pvsr3amkf.jpg	29
97	image/upload/v1731938052/fdhehzsoxfzjsvuirlji.jpg	29
98	image/upload/v1731938082/fj0llx3fueoa81sximwo.jpg	21
99	image/upload/v1731938085/ecat4vca3womy4scnul2.jpg	21
100	image/upload/v1731938088/m4aoi6yhjzeoxvvkx1gt.jpg	21
101	image/upload/v1731938208/yqdity8rm9aphuezm1cj.jpg	56
102	image/upload/v1731938210/e27smkhdi7lf1dvpjxtk.jpg	56
103	image/upload/v1731938214/i81tkzhlepnpiyal4zpu.jpg	56
104	image/upload/v1731938246/knwqkhrkwd4pgqxb1khs.jpg	22
105	image/upload/v1731938248/ykmds3now89zkizpcgfu.jpg	22
106	image/upload/v1731938250/q8kdxgjhdskm0j2yglru.jpg	22
107	image/upload/v1731938347/luj22jwsq4kpnmpyfb3u.jpg	53
108	image/upload/v1731938349/eolppuchd971u6ujtzpv.jpg	53
109	image/upload/v1731938352/swafb42lrm3jrdmc27vx.jpg	53
110	image/upload/v1731938394/vck4ngwqzl8zlvs8byc4.jpg	26
111	image/upload/v1731938396/k39mujilpxj8cmfefxrd.jpg	26
112	image/upload/v1731938399/kq3662rwtp9zy8a9swtw.jpg	26
113	image/upload/v1731938504/guw5sgzagbaud6k9pdom.jpg	30
114	image/upload/v1731938506/kbcrogy13b0aae2ixedu.jpg	30
115	image/upload/v1731938508/a19dxalgtniiq6dic9cm.jpg	30
116	image/upload/v1731938597/cxcbtzk3wweqlrq0kblg.jpg	52
117	image/upload/v1731938601/k7tucyxe8v1wy5mgcxsg.jpg	52
118	image/upload/v1731938604/fcdbug2plukh5zhu9j31.jpg	52
119	image/upload/v1731938628/xqrk2fj46d4vufbufu73.jpg	36
120	image/upload/v1731938630/h89u5hqtrbcxcx40vpd2.jpg	36
121	image/upload/v1731938634/kkm8jqaq1aup5feue5zq.jpg	36
122	image/upload/v1731938790/rpklmysg1z6cupq99rvj.jpg	41
123	image/upload/v1731938793/nnrax3qzoqutpidj6ndt.jpg	41
124	image/upload/v1731938797/dmtseltvk1vkopgtxkwu.jpg	41
126	image/upload/v1731938922/bkhytpmmrpszv5zian6q.jpg	40
127	image/upload/v1731938925/aytvdgf6n2joaby6e76p.jpg	40
128	image/upload/v1731938928/wirfsky0vgwwxoelzfwn.jpg	40
129	image/upload/v1731938958/tvmami9zggssshigiwig.jpg	39
130	image/upload/v1731938960/ooe55kwok22ysnlocnls.jpg	39
131	image/upload/v1731938962/ppqxujduxkhwsftttktr.jpg	39
132	image/upload/v1731938991/gxnr6hgofmwv1n5atdlo.jpg	38
133	image/upload/v1731938995/ponjgx6zdxycpcg7huds.jpg	38
134	image/upload/v1731939008/gdsrt9yyaxzjvxwmt9tl.jpg	37
135	image/upload/v1731939010/vqjba1asbxmpfm2gzxps.jpg	37
136	image/upload/v1731939505/hqsalsdrmfxfmvwxvyox.jpg	45
137	image/upload/v1731939509/zaaxszxy876yvxejftmf.jpg	45
138	image/upload/v1731939511/lhohkf7gnmm3xtsuu7re.jpg	45
139	image/upload/v1731939609/daqivjhl6uq6piap2xrg.jpg	46
140	image/upload/v1731939611/s9zfhnfxpqeffykef7q8.jpg	46
141	image/upload/v1731939616/rggvvl229rt6xxfgsqld.jpg	46
142	image/upload/v1731939734/dgihokpszdhytexlond0.jpg	63
143	image/upload/v1731939736/dhhkonoquzzgkqdafedr.jpg	63
144	image/upload/v1731939738/klrf5ctih2fwkrtknhx9.jpg	63
145	image/upload/v1731939760/h87u4qvmzcgjqghxoh5t.jpg	50
146	image/upload/v1731939762/oswforishglnpsxr9mx4.jpg	50
147	image/upload/v1731939764/iytlnluxrc4g39a5istl.jpg	50
148	image/upload/v1731939852/ixndzthhbvn1pwejjju2.jpg	55
149	image/upload/v1731939854/kkkjos4cqy3yh5hcjbnu.jpg	55
150	image/upload/v1731939856/syinxzmbgdj0vws0hrls.jpg	55
151	image/upload/v1731939950/mn5oisxvmezoj3awmc48.jpg	59
152	image/upload/v1731939953/evmjl4sshqjdir0gc7gt.jpg	59
153	image/upload/v1731939955/lxouywlushhvurwokh6s.jpg	59
154	image/upload/v1731939970/jzbpbqpkhdk2qcxnejdl.jpg	58
155	image/upload/v1731939972/wzqs4jixlxllhxhkdper.jpg	58
156	image/upload/v1731939975/qrecibep717ypzrvx54h.jpg	58
157	image/upload/v1731939978/qhpfxosk9qvp7a90xmbf.jpg	58
158	image/upload/v1731939980/aalet0ke1drjqspyotoa.jpg	58
159	image/upload/v1731939982/mb91twcdqpczvwtovgz8.jpg	58
160	image/upload/v1731940087/aa5ak3ocntkqujcfwynd.jpg	62
161	image/upload/v1731940090/yy563y3ilhjpbljdyysw.jpg	62
162	image/upload/v1731940093/b0aklhjm1seocso0j6ee.jpg	62
163	image/upload/v1731940113/qzne48154ejfteg6dqyy.jpg	34
164	image/upload/v1731940117/lvc85q6iivzryu2pnyor.jpg	34
165	image/upload/v1731940119/v6tw4zfihiusrvciqivf.jpg	34
166	image/upload/v1731940140/ei42x9gycgpyws4lxxek.jpg	28
167	image/upload/v1731940142/wea09xhfgmhydhxew4dz.jpg	28
168	image/upload/v1731940144/rcksb6wf4wokvagepqnb.jpg	28
169	image/upload/v1731940187/zb8ewgeolobrlpefwgvi.jpg	19
170	image/upload/v1731940189/kges4pnhbm2wwsum5viy.jpg	19
171	image/upload/v1731940190/xpow9k1wphk7mcciyhuv.jpg	19
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 109, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.core_city_id_seq', 14, true);


--
-- Name: core_cuisine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.core_cuisine_id_seq', 26, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 269, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: reservation_reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.reservation_reservation_id_seq', 520, true);


--
-- Name: restaurant_restaurant_cuisines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.restaurant_restaurant_cuisines_id_seq', 78, true);


--
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.restaurant_restaurant_id_seq', 63, true);


--
-- Name: restaurant_restaurantimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ajunujmr
--

SELECT pg_catalog.setval('public.restaurant_restaurantimage_id_seq', 172, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_city core_city_name_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.core_city
    ADD CONSTRAINT core_city_name_key UNIQUE (name);


--
-- Name: core_city core_city_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.core_city
    ADD CONSTRAINT core_city_pkey PRIMARY KEY (id);


--
-- Name: core_cuisine core_cuisine_name_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.core_cuisine
    ADD CONSTRAINT core_cuisine_name_key UNIQUE (name);


--
-- Name: core_cuisine core_cuisine_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.core_cuisine
    ADD CONSTRAINT core_cuisine_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: reservation_reservation reservation_reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.reservation_reservation
    ADD CONSTRAINT reservation_reservation_pkey PRIMARY KEY (id);


--
-- Name: restaurant_restaurant_cuisines restaurant_restaurant_cu_restaurant_id_cuisine_id_c0bc355d_uniq; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant_cuisines
    ADD CONSTRAINT restaurant_restaurant_cu_restaurant_id_cuisine_id_c0bc355d_uniq UNIQUE (restaurant_id, cuisine_id);


--
-- Name: restaurant_restaurant_cuisines restaurant_restaurant_cuisines_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant_cuisines
    ADD CONSTRAINT restaurant_restaurant_cuisines_pkey PRIMARY KEY (id);


--
-- Name: restaurant_restaurant restaurant_restaurant_name_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant
    ADD CONSTRAINT restaurant_restaurant_name_key UNIQUE (name);


--
-- Name: restaurant_restaurant restaurant_restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant
    ADD CONSTRAINT restaurant_restaurant_pkey PRIMARY KEY (id);


--
-- Name: restaurant_restaurant restaurant_restaurant_slug_key; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant
    ADD CONSTRAINT restaurant_restaurant_slug_key UNIQUE (slug);


--
-- Name: restaurant_restaurantimage restaurant_restaurantimage_pkey; Type: CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurantimage
    ADD CONSTRAINT restaurant_restaurantimage_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: core_city_name_9ca48bb9_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX core_city_name_9ca48bb9_like ON public.core_city USING btree (name varchar_pattern_ops);


--
-- Name: core_cuisine_name_5b643d50_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX core_cuisine_name_5b643d50_like ON public.core_cuisine USING btree (name varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: reservation_reservation_restaurant_id_f5e7d04b; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX reservation_reservation_restaurant_id_f5e7d04b ON public.reservation_reservation USING btree (restaurant_id);


--
-- Name: reservation_reservation_user_id_261c5876; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX reservation_reservation_user_id_261c5876 ON public.reservation_reservation USING btree (user_id);


--
-- Name: restaurant_restaurant_city_id_7217cad2; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_city_id_7217cad2 ON public.restaurant_restaurant USING btree (city_id);


--
-- Name: restaurant_restaurant_cuisines_cuisine_id_ea1fcccf; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_cuisines_cuisine_id_ea1fcccf ON public.restaurant_restaurant_cuisines USING btree (cuisine_id);


--
-- Name: restaurant_restaurant_cuisines_restaurant_id_93671401; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_cuisines_restaurant_id_93671401 ON public.restaurant_restaurant_cuisines USING btree (restaurant_id);


--
-- Name: restaurant_restaurant_name_5e925c4a_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_name_5e925c4a_like ON public.restaurant_restaurant USING btree (name varchar_pattern_ops);


--
-- Name: restaurant_restaurant_owner_id_353b5692; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_owner_id_353b5692 ON public.restaurant_restaurant USING btree (owner_id);


--
-- Name: restaurant_restaurant_slug_9c30c6a0_like; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurant_slug_9c30c6a0_like ON public.restaurant_restaurant USING btree (slug varchar_pattern_ops);


--
-- Name: restaurant_restaurantimage_restaurant_id_73ce52c6; Type: INDEX; Schema: public; Owner: ajunujmr
--

CREATE INDEX restaurant_restaurantimage_restaurant_id_73ce52c6 ON public.restaurant_restaurantimage USING btree (restaurant_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reservation_reservation reservation_reservat_restaurant_id_f5e7d04b_fk_restauran; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.reservation_reservation
    ADD CONSTRAINT reservation_reservat_restaurant_id_f5e7d04b_fk_restauran FOREIGN KEY (restaurant_id) REFERENCES public.restaurant_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reservation_reservation reservation_reservation_user_id_261c5876_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.reservation_reservation
    ADD CONSTRAINT reservation_reservation_user_id_261c5876_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: restaurant_restaurant_cuisines restaurant_restauran_cuisine_id_ea1fcccf_fk_core_cuis; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant_cuisines
    ADD CONSTRAINT restaurant_restauran_cuisine_id_ea1fcccf_fk_core_cuis FOREIGN KEY (cuisine_id) REFERENCES public.core_cuisine(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: restaurant_restaurantimage restaurant_restauran_restaurant_id_73ce52c6_fk_restauran; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurantimage
    ADD CONSTRAINT restaurant_restauran_restaurant_id_73ce52c6_fk_restauran FOREIGN KEY (restaurant_id) REFERENCES public.restaurant_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: restaurant_restaurant_cuisines restaurant_restauran_restaurant_id_93671401_fk_restauran; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant_cuisines
    ADD CONSTRAINT restaurant_restauran_restaurant_id_93671401_fk_restauran FOREIGN KEY (restaurant_id) REFERENCES public.restaurant_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: restaurant_restaurant restaurant_restaurant_city_id_7217cad2_fk_core_city_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant
    ADD CONSTRAINT restaurant_restaurant_city_id_7217cad2_fk_core_city_id FOREIGN KEY (city_id) REFERENCES public.core_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: restaurant_restaurant restaurant_restaurant_owner_id_353b5692_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ajunujmr
--

ALTER TABLE ONLY public.restaurant_restaurant
    ADD CONSTRAINT restaurant_restaurant_owner_id_353b5692_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

