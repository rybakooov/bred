--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13 (Debian 10.13-1.pgdg90+1)
-- Dumped by pg_dump version 10.13 (Debian 10.13-1.pgdg90+1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO django;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: files_document_file; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.files_document_file (
    id bigint NOT NULL,
    file character varying(100) NOT NULL,
    uuid uuid NOT NULL
);


ALTER TABLE public.files_document_file OWNER TO django;

--
-- Name: files_document_file_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.files_document_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_document_file_id_seq OWNER TO django;

--
-- Name: files_document_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.files_document_file_id_seq OWNED BY public.files_document_file.id;


--
-- Name: files_image_file; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.files_image_file (
    id bigint NOT NULL,
    file character varying(100) NOT NULL,
    uuid uuid NOT NULL
);


ALTER TABLE public.files_image_file OWNER TO django;

--
-- Name: files_image_file_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.files_image_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_image_file_id_seq OWNER TO django;

--
-- Name: files_image_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.files_image_file_id_seq OWNED BY public.files_image_file.id;


--
-- Name: files_video_file; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.files_video_file (
    id bigint NOT NULL,
    file character varying(100),
    uuid uuid NOT NULL,
    url character varying(200)
);


ALTER TABLE public.files_video_file OWNER TO django;

--
-- Name: files_video_file_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.files_video_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_video_file_id_seq OWNER TO django;

--
-- Name: files_video_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.files_video_file_id_seq OWNED BY public.files_video_file.id;


--
-- Name: learning_lesson; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_lesson (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    uuid uuid NOT NULL,
    name character varying(128) NOT NULL,
    outline text,
    slug character varying(128),
    is_visible boolean NOT NULL,
    document_id bigint,
    image_id bigint,
    subject_id bigint,
    test_id bigint,
    video_id bigint,
    CONSTRAINT learning_lesson_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.learning_lesson OWNER TO django;

--
-- Name: learning_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_lesson_id_seq OWNER TO django;

--
-- Name: learning_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_lesson_id_seq OWNED BY public.learning_lesson.id;


--
-- Name: learning_lessonrating; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_lessonrating (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    rate smallint NOT NULL,
    lesson_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.learning_lessonrating OWNER TO django;

--
-- Name: learning_lessonrating_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_lessonrating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_lessonrating_id_seq OWNER TO django;

--
-- Name: learning_lessonrating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_lessonrating_id_seq OWNED BY public.learning_lessonrating.id;


--
-- Name: learning_questionanswer; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_questionanswer (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    uuid uuid NOT NULL,
    answer_text character varying(64) NOT NULL,
    is_correct boolean NOT NULL,
    explanation character varying(255),
    question_id bigint NOT NULL,
    CONSTRAINT learning_questionanswer_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.learning_questionanswer OWNER TO django;

--
-- Name: learning_questionanswer_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_questionanswer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_questionanswer_id_seq OWNER TO django;

--
-- Name: learning_questionanswer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_questionanswer_id_seq OWNED BY public.learning_questionanswer.id;


--
-- Name: learning_subject; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_subject (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    name character varying(128) NOT NULL,
    slug character varying(128),
    "order" integer NOT NULL,
    summary character varying(512),
    is_visible boolean NOT NULL,
    test_id bigint,
    image_id bigint,
    CONSTRAINT learning_subject_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.learning_subject OWNER TO django;

--
-- Name: learning_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_subject_id_seq OWNER TO django;

--
-- Name: learning_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_subject_id_seq OWNED BY public.learning_subject.id;


--
-- Name: learning_test; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_test (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    lesson_id bigint NOT NULL
);


ALTER TABLE public.learning_test OWNER TO django;

--
-- Name: learning_test_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_test_id_seq OWNER TO django;

--
-- Name: learning_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_test_id_seq OWNED BY public.learning_test.id;


--
-- Name: learning_testassignment; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_testassignment (
    id bigint NOT NULL,
    uuid uuid NOT NULL
);


ALTER TABLE public.learning_testassignment OWNER TO django;

--
-- Name: learning_testassignment_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_testassignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_testassignment_id_seq OWNER TO django;

--
-- Name: learning_testassignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_testassignment_id_seq OWNED BY public.learning_testassignment.id;


--
-- Name: learning_testassignmentquestion; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_testassignmentquestion (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    uuid uuid NOT NULL,
    question_text text NOT NULL,
    test_id bigint NOT NULL,
    image_id bigint,
    CONSTRAINT learning_testassignmentquestion_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.learning_testassignmentquestion OWNER TO django;

--
-- Name: learning_testassignmentquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_testassignmentquestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_testassignmentquestion_id_seq OWNER TO django;

--
-- Name: learning_testassignmentquestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_testassignmentquestion_id_seq OWNED BY public.learning_testassignmentquestion.id;


--
-- Name: learning_testquestion; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.learning_testquestion (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    uuid uuid NOT NULL,
    question_text text NOT NULL,
    image character varying(100),
    test_id bigint NOT NULL,
    CONSTRAINT learning_testquestion_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.learning_testquestion OWNER TO django;

--
-- Name: learning_testquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.learning_testquestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_testquestion_id_seq OWNER TO django;

--
-- Name: learning_testquestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.learning_testquestion_id_seq OWNED BY public.learning_testquestion.id;


--
-- Name: users_completedtest; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_completedtest (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    completed_at timestamp with time zone NOT NULL,
    test_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.users_completedtest OWNER TO django;

--
-- Name: users_completedtest_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_completedtest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_completedtest_id_seq OWNER TO django;

--
-- Name: users_completedtest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_completedtest_id_seq OWNED BY public.users_completedtest.id;


--
-- Name: users_lessonprogress; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_lessonprogress (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    is_completed boolean NOT NULL,
    completed_at timestamp with time zone,
    user_review smallint,
    subject_id bigint NOT NULL
);


ALTER TABLE public.users_lessonprogress OWNER TO django;

--
-- Name: users_lessonprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_lessonprogress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_lessonprogress_id_seq OWNER TO django;

--
-- Name: users_lessonprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_lessonprogress_id_seq OWNED BY public.users_lessonprogress.id;


--
-- Name: users_passwordkey; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_passwordkey (
    id bigint NOT NULL,
    password_key uuid NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.users_passwordkey OWNER TO django;

--
-- Name: users_passwordkey_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_passwordkey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_passwordkey_id_seq OWNER TO django;

--
-- Name: users_passwordkey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_passwordkey_id_seq OWNED BY public.users_passwordkey.id;


--
-- Name: users_subjectprogress; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_subjectprogress (
    id bigint NOT NULL,
    uuid uuid NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.users_subjectprogress OWNER TO django;

--
-- Name: users_subjectprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_subjectprogress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_subjectprogress_id_seq OWNER TO django;

--
-- Name: users_subjectprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_subjectprogress_id_seq OWNED BY public.users_subjectprogress.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined date NOT NULL,
    email character varying(255) NOT NULL,
    uuid character varying(254) NOT NULL
);


ALTER TABLE public.users_user OWNER TO django;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO django;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO django;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO django;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO django;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO django;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: files_document_file id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_document_file ALTER COLUMN id SET DEFAULT nextval('public.files_document_file_id_seq'::regclass);


--
-- Name: files_image_file id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_image_file ALTER COLUMN id SET DEFAULT nextval('public.files_image_file_id_seq'::regclass);


--
-- Name: files_video_file id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_video_file ALTER COLUMN id SET DEFAULT nextval('public.files_video_file_id_seq'::regclass);


--
-- Name: learning_lesson id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson ALTER COLUMN id SET DEFAULT nextval('public.learning_lesson_id_seq'::regclass);


--
-- Name: learning_lessonrating id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lessonrating ALTER COLUMN id SET DEFAULT nextval('public.learning_lessonrating_id_seq'::regclass);


--
-- Name: learning_questionanswer id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_questionanswer ALTER COLUMN id SET DEFAULT nextval('public.learning_questionanswer_id_seq'::regclass);


--
-- Name: learning_subject id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject ALTER COLUMN id SET DEFAULT nextval('public.learning_subject_id_seq'::regclass);


--
-- Name: learning_test id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_test ALTER COLUMN id SET DEFAULT nextval('public.learning_test_id_seq'::regclass);


--
-- Name: learning_testassignment id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignment ALTER COLUMN id SET DEFAULT nextval('public.learning_testassignment_id_seq'::regclass);


--
-- Name: learning_testassignmentquestion id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion ALTER COLUMN id SET DEFAULT nextval('public.learning_testassignmentquestion_id_seq'::regclass);


--
-- Name: learning_testquestion id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testquestion ALTER COLUMN id SET DEFAULT nextval('public.learning_testquestion_id_seq'::regclass);


--
-- Name: users_completedtest id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_completedtest ALTER COLUMN id SET DEFAULT nextval('public.users_completedtest_id_seq'::regclass);


--
-- Name: users_lessonprogress id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_lessonprogress ALTER COLUMN id SET DEFAULT nextval('public.users_lessonprogress_id_seq'::regclass);


--
-- Name: users_passwordkey id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_passwordkey ALTER COLUMN id SET DEFAULT nextval('public.users_passwordkey_id_seq'::regclass);


--
-- Name: users_subjectprogress id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_subjectprogress ALTER COLUMN id SET DEFAULT nextval('public.users_subjectprogress_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user progress	6	add_userprogress
22	Can change user progress	6	change_userprogress
23	Can delete user progress	6	delete_userprogress
24	Can view user progress	6	view_userprogress
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add subject	8	add_subject
30	Can change subject	8	change_subject
31	Can delete subject	8	delete_subject
32	Can view subject	8	view_subject
33	Can add lesson	9	add_lesson
34	Can change lesson	9	change_lesson
35	Can delete lesson	9	delete_lesson
36	Can view lesson	9	view_lesson
37	Can add Token	10	add_token
38	Can change Token	10	change_token
39	Can delete Token	10	delete_token
40	Can view Token	10	view_token
41	Can add token	11	add_tokenproxy
42	Can change token	11	change_tokenproxy
43	Can delete token	11	delete_tokenproxy
44	Can view token	11	view_tokenproxy
67	Can add test question	34	add_testquestion
68	Can change test question	34	change_testquestion
69	Can delete test question	34	delete_testquestion
70	Can view test question	34	view_testquestion
71	Can add question answer	35	add_questionanswer
72	Can change question answer	35	change_questionanswer
73	Can delete question answer	35	delete_questionanswer
74	Can view question answer	35	view_questionanswer
75	Can add test	36	add_test
76	Can change test	36	change_test
77	Can delete test	36	delete_test
78	Can view test	36	view_test
79	Can add lesson progress	37	add_lessonprogress
80	Can change lesson progress	37	change_lessonprogress
81	Can delete lesson progress	37	delete_lessonprogress
82	Can view lesson progress	37	view_lessonprogress
83	Can add subject progress	38	add_subjectprogress
84	Can change subject progress	38	change_subjectprogress
85	Can delete subject progress	38	delete_subjectprogress
86	Can view subject progress	38	view_subjectprogress
87	Can add password key	39	add_passwordkey
88	Can change password key	39	change_passwordkey
89	Can delete password key	39	delete_passwordkey
90	Can view password key	39	view_passwordkey
91	Can add completed lesson	40	add_completedlesson
92	Can change completed lesson	40	change_completedlesson
93	Can delete completed lesson	40	delete_completedlesson
94	Can view completed lesson	40	view_completedlesson
95	Can add test assignment	41	add_testassignment
96	Can change test assignment	41	change_testassignment
97	Can delete test assignment	41	delete_testassignment
98	Can view test assignment	41	view_testassignment
99	Can add test assignment question	42	add_testassignmentquestion
100	Can change test assignment question	42	change_testassignmentquestion
101	Can delete test assignment question	42	delete_testassignmentquestion
102	Can view test assignment question	42	view_testassignmentquestion
103	Can add lesson rating	43	add_lessonrating
104	Can change lesson rating	43	change_lessonrating
105	Can delete lesson rating	43	delete_lessonrating
106	Can view lesson rating	43	view_lessonrating
107	Can add completed test	44	add_completedtest
108	Can change completed test	44	change_completedtest
109	Can delete completed test	44	delete_completedtest
110	Can view completed test	44	view_completedtest
111	Can add document file	45	add_documentfile
112	Can change document file	45	change_documentfile
113	Can delete document file	45	delete_documentfile
114	Can view document file	45	view_documentfile
115	Can add image file	46	add_imagefile
116	Can change image file	46	change_imagefile
117	Can delete image file	46	delete_imagefile
118	Can view image file	46	view_imagefile
119	Can add video file	47	add_videofile
120	Can change video file	47	change_videofile
121	Can delete video file	47	delete_videofile
122	Can view video file	47	view_videofile
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
c04a3470b12fcd9d2314209f846974601b614e13	2021-11-17 16:43:59.267474+00	81
b149fcc4abcc164a6f4c2af6faac68e9c3894535	2021-12-13 15:04:25.871295+00	84
8ca102c60088f137235b3edd40eba7f4ce14d567	2021-12-13 15:07:54.070423+00	85
635d4046f6a8a2c4d71dbe5eeabd90bf2dc97d9f	2021-12-13 15:11:36.870232+00	86
d81de0813b200cf13943ae6b68fdb499166fe85f	2021-12-13 15:12:26.001219+00	87
6cca4ef5e4af2dadbd80dd39c57fba3c2f2010cb	2021-12-13 15:12:30.935567+00	88
285b88920a9e67405f597ed2e47081cb06309f56	2021-12-13 15:12:48.017562+00	90
05aeb227ca66337c146a7ddf82ed7ec3e5c59a5c	2021-12-13 15:12:48.027003+00	89
45f99cf3b00ee22cfbc47ce53975734ea9642849	2021-12-13 15:12:52.371077+00	91
6603d85f0386bc23fe6be541133ffd347dc61d57	2021-12-13 15:13:12.720661+00	92
3bccf271f3c62cb43104c51391fb167b2b5aa0a0	2021-12-13 15:13:32.210186+00	93
b95942f032a0ea107470b705df01d5d0ed77b71b	2021-12-13 15:13:34.44246+00	94
a799468f501e48741b55b0b1d0ae9c08b1d53313	2021-12-13 15:13:54.152932+00	95
a48c49e50e16d3912c70041ac6ce9a7c5ab0d954	2021-12-13 15:13:55.603435+00	96
0f06f1ce3fcbaf6077522a41fa7510a348d47504	2021-12-13 15:14:00.490109+00	97
32647f82570f9a398df9d254580e798248e3dc2b	2021-12-13 15:14:02.606832+00	98
8259e3eef6595ffb218e196532a1d49a297bdc2b	2021-12-13 15:14:13.428253+00	99
e69918a865d7cb2869fd3d394dcff8031cc7e793	2021-12-13 15:14:23.587278+00	100
072a44aaefa404d749d47edd84732e421fc90f20	2021-12-13 15:14:29.532067+00	101
92b48ba0369d4a10f7c4359a709f2edd2a78c4bf	2021-12-13 15:14:31.971739+00	102
2980ab8d404b62d20b15157900c7d4cba4fa2e3b	2021-12-13 15:14:36.905134+00	103
d3b48f10da6b2bcd888725ab6bab80eeac8e963b	2021-12-13 15:14:56.4567+00	104
3c1095f165ef024276b96ffe481bf728e82a5810	2021-12-13 15:15:01.234465+00	105
d13c7901167eea8a07c91677f94e73141f26c1b5	2021-12-13 15:15:06.187537+00	106
ddb23a33399e2045443ebee48b75df1cc9af26db	2021-12-13 15:15:06.490563+00	107
d6b160d8868e1b3877b466ce09ae86a255461bd1	2021-12-13 15:15:07.8833+00	108
a1125dc573245840cf162899feea179889482af2	2021-12-13 15:15:08.173858+00	109
8e608ea30a03cf6c4f910a3f1806f523fb7cbc9f	2021-12-13 15:15:16.634891+00	110
462eb23bf4b94570b7168d2eaa5df776418d4c57	2021-12-13 15:15:36.983341+00	111
5a68f46e57f31ae4ae0ee29d8aaabe44370f9a64	2021-12-13 15:15:37.025219+00	112
00de31a5a0623edb813d6bc0455aba9559b6df0d	2021-12-13 15:15:37.397168+00	113
bdadf24d098f99e311cb2bd12630876b9bd1fd97	2021-12-13 15:15:39.17327+00	114
ffa2f59573d7034a182e98fa3f9e686e1460bc9c	2021-12-13 15:15:40.91651+00	115
c337a0bea18424655b999d4c896349d609b2f4b0	2021-12-13 15:15:44.469412+00	116
39dd4297238bce94866b0c1f93e40bf5abcd20d1	2021-12-13 15:15:46.922977+00	117
cbe3d2e89a0395ece291769d0928d74366db44f9	2021-12-13 15:15:48.692623+00	118
e307018a0d3a6b36456922457001e774392b445c	2021-12-13 15:15:50.177494+00	119
53cd2d747c35134149d33a8f8e4bdc751e5c4fac	2021-12-13 15:15:51.971258+00	120
856a7a42cbfbb67d1a4397d953467d80b2f266de	2021-12-13 15:15:52.264213+00	121
3eaeb655ebb55f161660cc8f7137e5cddd3da596	2021-12-13 15:15:57.681167+00	122
fddacf69b4945c475a9fc479496ab3f35f06724f	2021-12-13 15:16:04.880775+00	123
7f8c63038aa1e9f85d6c9113ea2f5b687dab591a	2021-12-13 15:16:08.514866+00	124
4068fedde24251f1a2417e7568cd56baac21d2b7	2021-12-13 15:16:13.92989+00	125
57f28a152d39781bdc7f54b541777763aa88e33c	2021-12-13 15:16:18.585286+00	126
833f2a82792f8564fd89b2b38903bc26ba0a6928	2021-12-13 15:16:40.214299+00	127
a353008211e46142ffe889fb46456412a0962a2f	2021-12-13 15:16:45.469077+00	128
f054d1b4e8d47c5717039ab94da70dcab42635fe	2021-12-13 15:16:49.137524+00	129
bf48877e723d7aa45dbbbf1653b41a4e7bc9beb7	2021-12-13 15:17:09.954608+00	130
427cb3ff151c312d30b579a693d23f9e8d78773c	2021-12-13 15:17:15.993298+00	131
803075b86e87ab36f52287dee054cedc9d701f8a	2021-12-13 15:17:25.260118+00	132
fb707db49925f617c40f54f7b459b06df4909d28	2021-12-13 15:17:40.965311+00	133
7e46fcdc2a9ce029c8c322ce6c34aa5a02b30f07	2021-12-13 15:17:42.413522+00	134
d4af2901c3553fc66caea65147454ae5b3261ec1	2021-12-13 15:17:43.154409+00	135
80db5c2fd162cda45081a2ea7a6f711665334e9c	2021-12-13 15:17:45.268248+00	136
19f0a68b73760a3bee7a9e70fba64b9202f9228f	2021-12-13 15:17:55.277465+00	137
d1f1063437a75242ff926072d7c199066300f650	2021-12-13 15:17:55.774507+00	138
2a93eaa1ba361902f22efa655803a64a1696149c	2021-12-13 15:18:13.010316+00	139
1537a537c48d911732dccb1f69f0171e8130e6c5	2021-12-13 15:18:14.687689+00	140
204d787808dd49fbc11f23fe29d6b9ecd37043a2	2021-12-13 15:18:22.045094+00	141
449a0273e819f17361aa77ab62cdcba95cf711b3	2021-12-13 15:18:25.759141+00	142
1546f9f31151ebd72e087795319956da23ac7ecc	2021-12-13 15:18:37.98086+00	143
628f59d37e6a3f615993d462b99ee602b309bed0	2021-12-13 15:18:39.540665+00	144
1e91ee7a51827828eacafecab62a8cfc7952254c	2021-12-13 15:18:39.760484+00	145
31b6a4ba8f0301f3c974fcc2a93c1370baac9968	2021-12-13 15:18:45.511568+00	146
cc7ce66e3f3fd3c498c48b62ac8dc44821387738	2021-12-13 15:18:45.785731+00	147
4a14508faa49f6298abd8c5d8e3e9c1b418c7f9d	2021-12-13 15:18:47.550049+00	148
3a28ba6796bbdff0f89c77218f3b82d6b41fb024	2021-12-13 15:18:54.783408+00	149
c04a082dba53e236f30f53bdbf61f0c1598d50b1	2021-12-13 15:18:55.428832+00	150
8ceda210c7e050b2e4109cf09a0113c1a2ef5b51	2021-12-13 15:18:56.256664+00	151
1f05e14883ed694dc90dd32ff45de599b85784e9	2021-12-13 15:18:58.241392+00	152
049485f6ac27b77b635676839c9a99ad817f45a9	2021-12-13 15:19:13.479093+00	153
877cfa035f99773ec346b6b99a9b94b367b68c8f	2021-12-13 15:19:18.310207+00	154
e9bb85e11702a82d0ef9925e3e987b9984ec06be	2021-12-13 15:19:20.20521+00	155
ea49fbb90eafbb0921a2d456c8632286c93d494f	2021-12-13 15:19:30.291189+00	156
e62dfc2d755e5e9c329378819468fe14cf1075ad	2021-12-13 15:19:32.962808+00	157
4c8cc5b7b31ca7d99b633e299fb1587ea86a9955	2021-12-13 15:19:36.851452+00	158
61f5cd084218c6575c403ab4a91fa6462db88f2a	2021-12-13 15:19:39.500507+00	159
b1882bfed4733291a329fcdf82a4ec46231980ab	2021-12-13 15:19:46.046433+00	160
ab5f99c3ae83810b924c6bf31878fff7d8b04935	2021-12-13 15:19:47.152198+00	161
d60c7bdfdcb4d67d88eb354b48b32b01eb43aa80	2021-12-13 15:19:49.318573+00	162
d3bf80723611d9b02bd2b4f8cc0dc345ce56b8a6	2021-12-13 15:19:52.718273+00	163
b85e42c1f59433e33a22aad46d2443f95c3db2f8	2021-12-13 15:20:01.650591+00	164
36f4696c5f782af59be07c122cc0a81c2f000002	2021-12-13 15:20:03.606829+00	165
6421c07b7bd4db2148bbf01a3cd4f5e8876b939b	2021-12-13 15:20:07.632198+00	166
91051e374234c388ecbdde1d397812044754986b	2021-12-13 15:20:14.064466+00	167
fa73d522301b7a844ed641aefbba4930bc7697a8	2021-12-13 15:20:29.319499+00	168
aa2fda3cc2bc515529c423babe79953aa365f05a	2021-12-13 15:20:33.05912+00	169
853a8a18060f5c045ddb514a918807c2f84ccee1	2021-12-13 15:20:37.815722+00	170
3c950531b903bd7ccce9361fe40339de013310df	2021-12-13 15:20:43.928181+00	171
f2a1d157585a90b0e3ac89ec6a6f88f117e9b5d1	2021-12-13 15:20:44.576412+00	172
bae24ec2978a81ec42e18dbac01aa642df331fd0	2021-12-13 15:20:52.777174+00	173
bb1db74183c07c5f8854417342666fc9b6a2e386	2021-12-13 15:21:03.921288+00	174
454dadb9ab9882ae052827d3a326f32bc3cb8e76	2021-12-13 15:21:06.383472+00	175
2d5c9b54cc5e471ced17c928d39eb79be6f4aa16	2021-12-13 15:21:18.125045+00	176
cad3fd530b0f9c076181115a4d9af196a3a153d3	2021-12-13 15:21:21.393292+00	177
b4f0ed7698a1d933097af3d19151c907d6098832	2021-12-13 15:21:24.635059+00	178
342aacc61657677450e92dd031efa52c16d852e6	2021-12-13 15:21:27.215317+00	179
65c796b8d1ff670e7ae1627557c53b3c0df98b20	2021-12-13 15:21:36.860959+00	180
600c6d251898cbb2c9ea3155abdb3d0799c9823d	2021-12-13 15:21:38.275411+00	181
2f7f0cb2c72b7aae3b820002da3510eddc8e868d	2021-12-13 15:21:41.158539+00	182
43b0726d2a289461ea68974af9a2c23f4c9e5581	2021-12-13 15:21:45.840843+00	183
d10411272b660bffc39aebe793b1a35c8d8f3dc8	2021-12-13 15:21:51.280065+00	184
1605ef69c5a443d6eec445d7c71a74620a6bb5ad	2021-12-13 15:21:52.594+00	185
2cdd90b9a8899ea76bdf7ad953ff5f077ec8aeb5	2021-12-13 15:21:53.939043+00	186
94f512d6db0dc9f72a18eaca3ed9fa5ad6a9831e	2021-12-13 15:21:56.485933+00	187
5d2b6a4077ee730f91c20be6b190289882a6be6c	2021-12-13 15:22:11.492483+00	188
482f2e714d44131eba0291c4f1d8a76c7700df99	2021-12-13 15:22:34.17528+00	189
2067dc1403a5b11f31e605dbf62237626becd63e	2021-12-13 15:22:39.526272+00	190
94ee80f90ceacebce48d4a168a953a747b11aa03	2021-12-13 15:22:46.956809+00	191
f8eec55ef7a08ab6d05e64e57318dc12d2e4d74a	2021-12-13 15:22:47.044543+00	192
9744326b78d79e5c28379a9460f48e28f218df82	2021-12-13 15:22:51.859695+00	193
f3b56bebecee64420be698a60325c4d577d59364	2021-12-13 15:23:05.579233+00	194
19ca41d69e6d06c6bdb22c3716f6a836dc476cfa	2021-12-13 15:23:07.687118+00	195
58fa0928f285012f79d506886cb38e7587387245	2021-12-13 15:23:08.893135+00	196
10e048182610d184c012e559559d8c2e7c63fe3f	2021-12-13 15:23:16.00115+00	197
5ee807e8ce6c5c14a0329b1ed806ffbe6b701a0d	2021-12-13 15:23:27.164042+00	198
2e53332cdf7fbcd2427c2fa99e79a75d0b985a14	2021-12-13 15:23:31.15274+00	199
b97b96d6641305260649d256d29c0eef8509e6c4	2021-12-13 15:23:34.28127+00	200
f1aa09b9cbe75d031cb890d3c0df72eb1801afaa	2021-12-13 15:23:36.975991+00	201
99795202b76e6f5404f5594af8c6ccb784ddab19	2021-12-13 15:23:59.855426+00	202
3b81e6efea7af308762c81aa29dc5c74997057c2	2021-12-13 15:24:02.029137+00	203
2d58855c56357735f64a55d4486304b9d0eefa9a	2021-12-13 15:24:02.165686+00	204
8b58206442c7d66b94c3e8f992f02c3e7d3bf4b7	2021-12-13 15:24:20.753169+00	205
601713c7466c47d62fe44d514046de19dda4723b	2021-12-13 15:24:20.926794+00	206
9a0eeb27863d608e087ca10bfdc425fd6baaec28	2021-12-13 15:24:22.487067+00	207
c2a7ef80e55bb74bff673dffbd6c53b32adb3748	2021-12-13 15:24:23.652361+00	208
a92b11e7fa43b2fdc2deff7a3d25ea6cd81bedcc	2021-12-13 15:24:25.070565+00	209
ce9419b658a90369e8dc65d36a807f5d04d208bc	2021-12-13 15:24:30.611241+00	210
bb80e211a3936f2605c94c158e9f85fda7e9d251	2021-12-13 15:24:32.666818+00	211
2136d7ad2e8a71a504818b6c142612dc105fea1f	2021-12-13 15:24:35.702806+00	212
aaf215803d48d82c90b103fe9be6a2aa13bb256c	2021-12-13 15:24:54.686859+00	213
d520a7e1a15eb3850a3dfab46db48d2ef3ec7285	2021-12-13 15:25:02.756369+00	214
ab4ac00f905fbbd3decd1558df86312a1295a26b	2021-12-13 15:25:06.256174+00	215
1249c38d6f1eea04f4493efe7670fd92d1200812	2021-12-13 15:25:07.422434+00	216
6860b78c91c41c9c80fcb796e4b508f2c99cbb5e	2021-12-13 15:25:19.601695+00	217
60a2c68446569f5557851cb3e8c027b0695d0553	2021-12-13 15:25:27.90746+00	218
20d11f6a78971161462b7fb8101492dfc76b63f8	2021-12-13 15:25:48.844119+00	219
2693611a27a68f22fe00f6cf42069b0a83faa092	2021-12-13 15:25:50.922183+00	220
b18d81fd0701e97d6ad1483491ca88b83317799f	2021-12-13 15:25:59.858238+00	221
c70728829973f5af2a6b50dedc8ebf9b6eb12885	2021-12-13 15:26:15.635134+00	222
f326f2efe8122021257eb98231579be8df824165	2021-12-13 15:26:30.042382+00	223
cb613cbee70b3cf95b7634254cc50a777b40d22a	2021-12-13 15:27:01.526345+00	224
6a448d8f12d41ceb38b650d53234dda1c7ab0a6e	2021-12-13 15:27:02.770931+00	225
b74d24c47e0f1549018aa19a08a436b421045f43	2021-12-13 15:27:11.477833+00	226
31feca4031dab436b5f2e43f5154fbcce6ffb78a	2021-12-13 15:27:15.174407+00	227
970e280b63b1f9e285a1ef1522c14fd7f71a79ef	2021-12-13 15:27:32.646261+00	228
b56beddd3fd40e6b96991e13f5a1a9ecfd04eebf	2021-12-13 15:27:45.53494+00	229
05d8f01698d80c5cbc276aff65333632e0b53963	2021-12-13 15:27:49.428209+00	230
9d149f90a9cae4d0300ef320b7eaec40a94e1430	2021-12-13 15:28:20.929411+00	231
8c849a88417fc3584ffebfff25354eb8388c34bf	2021-12-13 15:28:23.484405+00	232
f7601a09b34dbbf7eab5be6bb7b5cd1363ec68c5	2021-12-13 15:28:25.411357+00	233
995e8d75e108ed18170fec4edef72eef90d9b586	2021-12-13 15:28:26.82318+00	234
7dda2e8c75f2322451ebd3562953bf1ae01e008d	2021-12-13 15:29:06.056891+00	235
d70675bebc3ac0a1249630013592fbf76798edac	2021-12-13 15:29:14.32641+00	236
d60b57bdc96b420d21126fde867e128d36b12dcd	2021-12-13 15:29:16.541383+00	237
c2edea25e2563e1ca36a3fdaf43c1f373aad98dc	2021-12-13 15:29:28.246818+00	238
6f31018e5f02869f08eb49d06bd0f05e0ba87dba	2021-12-13 15:29:30.528352+00	239
c8067d4ff83de747d838754e7139685b11452649	2021-12-13 15:29:34.025341+00	240
71d292031af9c56fee3bcf49e9aaf464196db024	2021-12-13 15:30:04.572503+00	241
6b64dad5987ab35a603b5ae25f79efaaea49d284	2021-12-13 15:30:15.354759+00	242
c93cfd73ab2c903555bf5e5579c0f89a8af2a0e4	2021-12-13 15:30:15.608215+00	243
56edd1f2d485f7f8e385494d348ade8d1a541713	2021-12-13 15:30:17.361529+00	244
6b64be2cc87ed6667120320a4195303a3d823fef	2021-12-13 15:30:19.550491+00	245
314a36e39dfbed11e1cc5e1468906c800813c1fd	2021-12-13 15:30:19.557846+00	246
bc311ea1af9eaac0e09877cd1621037abead738c	2021-12-13 15:30:24.562711+00	247
f38fe0c6634b734cb418458646f2b1a45f50bf44	2021-12-13 15:30:27.795379+00	248
dce6038c421b34d4c6a1974ce9d55c322151ac6c	2021-12-13 15:30:28.919728+00	249
5a0f096079cf9c008903a3c625ae0b0d98448573	2021-12-13 15:30:33.356192+00	250
87dd85262e2c31289810cf5b4d7e1835334dd177	2021-12-13 15:30:35.382921+00	251
4e68313cec0b5b8c28738b1d82c796a43b79e09e	2021-12-13 15:30:51.434437+00	252
bd2f8c0b8a29c652d1c1121606dd3bc3dc26dbf1	2021-12-13 15:31:00.35902+00	253
f4dd148d7876fa847d7f75c0fd29299f0aa576af	2021-12-13 15:31:00.410745+00	254
f68bfad0b03917a43122232fdf2d0d4bae914c73	2021-12-13 15:31:23.023415+00	255
f38f5cfefa793336f08a4be8d8bbfdec0014cb2b	2021-12-13 15:31:31.769338+00	256
e401046ae309119f76977c634209748421673d0b	2021-12-13 15:31:44.402189+00	257
acb34c1fc15c9f023fffd525bd8d398cdfae1c6d	2021-12-13 15:31:54.447857+00	258
60aecbcb3234c1f2eca7bc0f8c9207acbbb05b8f	2021-12-13 15:32:01.171468+00	259
b0c595d77dcf69a72d561beeb9402ccaaa928fa7	2021-12-13 15:32:01.526021+00	260
b36b92fb8ca426a605caf0168151f1c349933441	2021-12-13 15:32:14.091667+00	261
07708883ddb8b0d28dd3d4923c6b2229e59046b1	2021-12-13 15:32:19.847829+00	262
a0e4992107c75b87381241e3c2790ca8e7a1fbf4	2021-12-13 15:32:21.343846+00	263
f50bf27fac3180be8d057b4fe28e9e06ddd88b36	2021-12-13 15:32:30.530463+00	264
b426d5fc4e17a8ca50e0db33c1878126cf7a01ca	2021-12-13 15:32:36.740746+00	265
aec90e63bc3d3e55ecf0ed568265774c597da4d0	2021-12-13 15:32:36.916281+00	266
c9d4c23bf090ac1548cc9a619588277b55bb0f8b	2021-12-13 15:32:58.171511+00	267
e206d3fd7350f0465bcbbdd34c0cbabf9a69c2a5	2021-12-13 15:33:16.67498+00	268
3830b0a215b2027cfff3283d584164b40246ae84	2021-12-13 15:33:22.044795+00	269
9479af78330e1f1a74eae07c276e93856ce93b18	2021-12-13 15:33:30.827787+00	270
7e61b67c5559723828ac3df0d2e1bf74aa26bb5e	2021-12-13 15:33:33.043082+00	271
484b4289d5aa85b11aac0fc8ad01c4e3638c4d7b	2021-12-13 15:33:35.273302+00	272
eed8ef28f5716475e712a91347b5a7bf65904464	2021-12-13 15:33:56.039444+00	273
a4f9a086d53b7b4b939eadf5ebf66e217e724812	2021-12-13 15:33:59.937034+00	274
9324c0683c3e213c807daf20b762010cd05fa01d	2021-12-13 15:34:09.567062+00	275
9a24a21dbef8381505c2a98a0783ea5c6aebceb2	2021-12-13 15:34:13.632516+00	276
b8b245f753ac175e8ebc17d555407df5837d45a7	2021-12-13 15:34:21.734795+00	277
2ebb62f947172d135f04d5b6842f1a84f803b0fc	2021-12-13 15:34:29.216494+00	278
8142fae1ca46a62860a5be266eb238e357e2b1cd	2021-12-13 15:34:33.49846+00	279
112a49523e7bede5c66ac86ce95f0b792537ed04	2021-12-13 15:34:34.209497+00	280
fffcc2c3c0a585fc896cca1e021cf3fdfc99f0b8	2021-12-13 15:34:40.924679+00	281
1919b2b61ff9034573fb6469126c18c57a3a6767	2021-12-13 15:34:57.488377+00	282
1ace70f22c15b14015655e564ab1a384bbea9963	2021-12-13 15:35:22.274513+00	283
ebc0da470a75041bf10e36cb1f25453ad3de63ed	2021-12-13 15:35:46.87055+00	284
84f2df8581d5f9b667a61b4a5bc1771e4e6b8d42	2021-12-13 15:36:17.804441+00	285
22f09bb0bef8718764e52b6f82dedc1b2bde6cd4	2021-12-13 15:36:38.211296+00	286
37c784ce3a0e50d6ce91d62303ee33a63cc2621e	2021-12-13 15:36:40.46592+00	287
1037df8e76cfec81c1c881f8f6c9821a96c30889	2021-12-13 15:36:43.65134+00	288
3589eb69212dc0d12aaa3f72cba8a4b6c019f28b	2021-12-13 15:37:00.058+00	289
51731ffcc8894c55cd6a0bbd7bc73fbb99e8284c	2021-12-13 15:37:00.695976+00	290
5a77c037e36d608d627b73f80f572183bca0b3b5	2021-12-13 15:37:18.276005+00	291
ccd7ac36f68497f6eec9487439ab02a7ce55f828	2021-12-13 15:37:24.867064+00	292
8a93bfe014954bb838350742d24715893b20cad3	2021-12-13 15:37:27.915054+00	293
80be28cbb0304622e7163bd48fb0205196f0a76e	2021-12-13 15:37:38.656764+00	294
3d00d0d35dc14a64186eb8d0b69163164cfd3700	2021-12-13 15:37:56.893945+00	295
219f84002d0b1ee7a4f7ba5d31fa714ba751b05f	2021-12-13 15:38:07.231929+00	296
d25e681e17e572e705f337df7e855e9243df94e4	2021-12-13 15:38:15.397238+00	297
fe477c61e47726e601a2ccf07ff447d04fe96544	2021-12-13 15:38:22.870385+00	298
9656cd6fbf9739840f92ba6b1e2ef93fad430381	2021-12-13 15:38:42.566069+00	299
8925e2c7186141af676e7c49807cfd1ad116a099	2021-12-13 15:39:26.720219+00	300
73a1bab454534da7589ed51b30a09febbc53c62e	2021-12-13 15:39:33.957839+00	301
f019f93199a8e6172d352e963facbb339d320eb8	2021-12-13 15:39:45.562155+00	302
9267a0e64fe72b182e53c8b645563a8da8f79ccd	2021-12-13 15:39:51.306196+00	303
9c0c306fc83052e24f7a40ff3ff698499cea2e0f	2021-12-13 15:40:02.265049+00	304
ff22c4e807deedf576e2fccb5737f688f3d46b74	2021-12-13 15:40:25.131613+00	305
af441d7ea7abff573d1111ff284e37c61288ac07	2021-12-13 15:40:32.260352+00	306
d0737ac6d38e98d0900f3f28078335f69a640801	2021-12-13 15:40:36.653018+00	307
df50055cc45669967fb5b4ac8221fedf432ef866	2021-12-13 15:40:38.753621+00	308
c8d3367c76ed62623f7f7dec020b67352f98a5f8	2021-12-13 15:41:11.808038+00	309
7420458b667c47d01f25a412aeb4e344d96edafd	2021-12-13 15:41:47.751728+00	310
6cf3d6367adac2a9c9eda1b2c82f116fb1cd44d5	2021-12-13 15:42:30.571248+00	311
cb3ae3e2447c75bb05df6e0b8e78b9ffe920aadd	2021-12-13 15:42:39.37304+00	312
15c6776a5764537bbded2ca2b2361f8e092b53f7	2021-12-13 15:43:21.828532+00	313
8569541315d814d38a6f937ed2a590d35d10d898	2021-12-13 15:43:27.015183+00	314
b5dee9febddafec39a7b623396d877fc31b9c8dc	2021-12-13 15:43:58.285552+00	315
d09512c96e972a713cbf8c22cc9cc5aafe5f2334	2021-12-13 15:44:16.763171+00	316
ee3fbcafd3bdbb8a253f0bc7656a6f1105d89c2f	2021-12-13 15:45:02.004709+00	317
0d1814fbcc2aa0e860fcea163fe9618858515cd8	2021-12-13 15:45:28.998635+00	318
850215b1b814bada01cf52505ea0c2e2a019a66a	2021-12-13 15:45:31.976062+00	319
35f34241e1f2bc7ef9f5e5fc5caf68fc1c32b8da	2021-12-13 15:46:47.924345+00	320
30c97868d3cc905704f9cb28a88b3ed03937b7da	2021-12-13 15:47:02.553825+00	321
b9434ea01434f8f5e634e55d6bb18d82b97316e5	2021-12-13 15:47:15.12784+00	322
06a8671dde209a71705bcf5629dfab089424d911	2021-12-13 15:47:20.068802+00	323
bf1454086b3597c5442c35ed7a98779ca51279c7	2021-12-13 15:48:27.495782+00	324
55856514d242c6c386696a8148f4676cd90f41cc	2021-12-13 15:48:59.026241+00	325
1e68475be8914c7cb9e882425cbf953cc0080563	2021-12-13 15:50:01.633542+00	326
5ea0958ce849581101190834d05dbf90597724aa	2021-12-13 15:50:43.137499+00	327
a89305a5a8e1d5f8188248c9b8807ad2c74a1bad	2021-12-13 15:50:57.400567+00	328
4fc7ba808ef189508dab3c6ab4c214695db553c3	2021-12-13 15:52:59.594833+00	329
4d2c3a29b5249033a4212b93c3b5c61a0bf9fc41	2021-12-13 15:53:03.044428+00	330
dc058dc4ae31599aea444d65ef99cc7e1861aecd	2021-12-13 15:53:28.694281+00	331
0a54a47a62be898eb15918541ab4e1d03c55d371	2021-12-13 15:53:33.213637+00	332
3a601b271567e545e07c1427eb93c0580ee16a2e	2021-12-13 15:53:40.231401+00	333
db112de3abd4c7a15eee25a9f2a38a78b933e0cb	2021-12-13 15:54:13.662426+00	334
191e4210a724ec5580e0af152275131ef93b3fe9	2021-12-13 15:54:40.614402+00	335
d10de81a0fcdc67ec4015a769fb09e26ec7875c9	2021-12-13 15:54:50.078641+00	336
d5ec3fd96314dfed63ead5cf0528127538ff0d2a	2021-12-13 15:55:10.74939+00	337
90a489ec6d279d5bdb7ad17d4adea125459c70b1	2021-12-13 15:55:31.005657+00	338
562336a9e3136068d6d84f921475565c24a4fad7	2021-12-13 15:55:46.64345+00	339
8a001bd5a71d09eabfe40bd9d68435fa0110c844	2021-12-13 15:56:31.637226+00	340
52514efb481defce6e3a16e3129698565c4366ff	2021-12-13 15:56:48.285078+00	341
eea14e7e778f70df4aca51803effe6897ddfcbb7	2021-12-13 15:56:55.171601+00	342
b5b540dfa8e8b9338194ceec92b2d44dcf2bc506	2021-12-13 15:56:59.120092+00	343
22e3701bbbc8ffc599a5a722e7e3cfe96b95c921	2021-12-13 15:57:04.047734+00	344
10c51eebe23c2b2e6a20f79a5b61e654ef016cc9	2021-12-13 15:57:10.801768+00	345
e78139732c28f4ca89442f71e40030976e79f90c	2021-12-13 15:57:21.542291+00	346
ce9adf1c4a1d4a16a84633a369b883960717498d	2021-12-13 15:57:29.67602+00	347
a40a216bdfe5245409955411486cbd121403fe74	2021-12-13 15:59:30.682704+00	348
4fd7733bfcd53ebb48132c6719749913e62aa66e	2021-12-13 15:59:33.620067+00	349
3ac7f0cbcbe64368c536a1b802f445c5655af574	2021-12-13 16:00:02.817732+00	350
b2166e9bf1c359965323197653096240d16af80c	2021-12-13 16:00:23.778451+00	351
f45826eefcdfe1c0317cbec220f07001581d7e6c	2021-12-13 16:00:52.556168+00	352
ae8adc9d61837ef0c9c5fb719c4140ca6754bd9d	2021-12-13 16:01:52.209823+00	353
8e261c0fe0cf286249ed023ecb62ec563af4a638	2021-12-13 16:02:58.957002+00	354
2260c0bdfc8ddaeff498e01e026fb9ee2d77a91e	2021-12-13 16:03:58.469444+00	355
f56221fe64aa0cd22c59baa874625212cafa7722	2021-12-13 16:05:28.672622+00	356
79c0f4247cd1c38ef8d742dd72d424626cb5ab4b	2021-12-13 16:05:38.705717+00	357
af628fe8d25d3a4fc99c3f4649a13e6e1db2b48b	2021-12-13 16:06:07.337455+00	358
ec2a73e97f815939fa4a45cffa08a4d96604ea93	2021-12-13 16:06:13.271125+00	359
2def71800a5a754ef815be342c73d7d90e7d7cd5	2021-12-13 16:06:29.640062+00	360
644a4e58f8bfea9e52aeede85609269d6508c63f	2021-12-13 16:06:30.558518+00	361
c63b64d3fd74b489a1f73a6a917dea8be6198aea	2021-12-13 16:06:42.941854+00	362
41534c8451970cb0a941749b59c1f957b88eccab	2021-12-13 16:07:04.918066+00	363
c9c6f2a58ac925169238269da37d7fe9be694ede	2021-12-13 16:07:15.495979+00	364
67d7f813d90b07a1243e4ab288d3d54e0d6998b7	2021-12-13 16:07:23.878531+00	365
a186abcd3563655d8f4585e57c6a642ec3d31108	2021-12-13 16:07:30.269519+00	366
e1255b72425fc9b7cd2addf870de405a0316436b	2021-12-13 16:07:33.339024+00	367
29522c664a8ad1a987ec2e6d3e3fa6ea48147970	2021-12-13 16:08:29.22436+00	368
053d4e58786e131c6a71ce6df2814bd338252e67	2021-12-13 16:09:27.637837+00	369
200c4d0d2a6f09a2a439cd016dec93641ed11f64	2021-12-13 16:09:48.828893+00	370
795ffcedef2c5c4816d34704c3a8b4ce2dca179b	2021-12-13 16:10:01.148292+00	371
ba03cae5f2a10ac6f4cddf3b82c2db71d14d8303	2021-12-13 16:10:08.767714+00	372
a37f068f135759ef537e0caf5298722e54a54164	2021-12-13 16:10:54.098098+00	373
ac760d93b09b401c57686efa8b72352fdc87dcf0	2021-12-13 16:11:29.594262+00	374
ec6af485004fb9bf21089c213740205d973a093a	2021-12-13 16:13:23.610037+00	375
28aaf80b1200aa706089dc1e47c7832dcd0f1368	2021-12-13 16:13:47.774562+00	376
f476eabd55d5e95a5f7c72fea924a8a3830224a3	2021-12-13 16:14:47.582244+00	377
1fea3df4990b9035fa6d66f9e4f03c69384b91e1	2021-12-13 16:14:49.709731+00	378
835725aa2abc5e94a28935d95207474099d8c3b1	2021-12-13 16:15:27.292767+00	379
2a4e07d7a583d70d921fab3b329d51be74b61c3e	2021-12-13 16:16:12.426232+00	380
9563be09a4e1d47f1cf8440b170d7cf90bdc9b62	2021-12-13 16:16:23.646134+00	381
a036df71daa2b624d20592dd41040e4c5989485f	2021-12-13 16:16:49.021762+00	382
f98176e9840ef7ec2fd82e91ddc9ba50f5bdd58d	2021-12-13 16:16:51.86179+00	383
5e8e130d446c551731cb5a9e346c45f923060bcb	2021-12-13 16:17:09.604059+00	384
a3860da3540a6f99553b45edf6dd44a498164243	2021-12-13 16:17:33.055373+00	385
9e6b3d14a4104563af02ec46f0667b5d4b827824	2021-12-13 16:17:53.688614+00	386
9f17a55dc7bc4bc0045011f404f17552c0640332	2021-12-13 16:17:54.568716+00	387
bf6e4b9ee46402002bd98b12a908694efc5b783f	2021-12-13 16:18:41.791495+00	388
515bf4a11f0f63aee7e999887fff369a6a318318	2021-12-13 16:20:15.278722+00	389
b1e0b38d960ef2eb837d51d849204dd05f2b75b4	2021-12-13 16:20:31.542301+00	390
e1b369c9922b6ee8d95f11949d492394c3e9226c	2021-12-13 16:22:18.218905+00	391
3e15daf0334b9c6e6dfbb182883b961f03f2c57a	2021-12-13 16:22:24.026431+00	392
64bc4454854fbdb310ad9e6c1affb59ecdcbb232	2021-12-13 16:24:42.384105+00	393
f88c32e7b4500ea7717107ceaed09cdfa2b28323	2021-12-13 16:24:45.472041+00	394
b1c6f07e1afeba96edf81684632b8f761fbd7937	2021-12-13 16:25:45.151024+00	395
c28d027f890b396c4a259c82d81297d666ada0c8	2021-12-13 16:27:15.614306+00	396
788f74f7071f3a796eaf14c2f5cb3c43be373dc4	2021-12-13 16:27:22.764111+00	397
58e77dec7e20957f80e13a39b68b8caefd0f19cf	2021-12-13 16:28:47.201557+00	398
0f35731dab529f08c23b34a0a2ffcaf7b015d884	2021-12-13 16:29:24.794648+00	399
36577d300c727e737035d02bd5b99f1fb377289c	2021-12-13 16:30:04.978903+00	400
879c1f5618d977cbfbe2aa364c4356f8a622e6c2	2021-12-13 16:30:21.801708+00	401
3638f43befa36b2c2d33043472b69dff9764bf87	2021-12-13 16:31:14.851145+00	402
e13d6c581714fdfa5f10161e298ec511b3c115fc	2021-12-13 16:31:41.951387+00	403
5720db39b046230e1054cfb01f706382242acb55	2021-12-13 16:31:45.118765+00	404
1f13e585ad1a91441a6eff11e2f84c7aed76ef03	2021-12-13 16:32:29.731025+00	405
2b0303f0201506c3371da5259e790e6aa20a3c24	2021-12-13 16:32:37.376691+00	406
047f7cb656cc7a1072b04856a6841d83df7eb724	2021-12-13 16:32:54.395541+00	407
021cafffd5dc3d399c6cd1af7b48948ad7b51446	2021-12-13 16:37:58.619474+00	408
177a40d323a9f87af872b8d97e8c5e4a2c3e6092	2021-12-13 16:39:58.124464+00	409
c427ee9dd78b4b0cfb6869486a6cd449138f3386	2021-12-13 16:41:43.419181+00	410
f58b0709a36664e098f35799fb89937e78e44ffb	2021-12-13 16:42:30.282792+00	411
560cb90cdac8ce4b6d95afdbd5a4b00fb6afa308	2021-12-13 16:43:16.701658+00	412
1b9f5287e2502e8420e42423695dfb2c6653c536	2021-12-13 16:43:47.952184+00	413
a3254011df81b9fcf5a6e26703a815d1b9a6a46c	2021-12-13 16:43:50.147005+00	414
6c328a247434a1c537795cb16ffce8c6aabd2a3e	2021-12-13 16:44:08.902287+00	415
9cace2d43ec0322412abe0cc1f6071bd7335c35c	2021-12-13 16:46:25.838343+00	416
5c3d2177e73a0578c5365fca4422c8efb34db6d4	2021-12-13 16:48:29.007855+00	417
2da8469f10a902d7fa21f9a29b24826792bf48d4	2021-12-13 16:48:36.080631+00	418
964e3d1b1fd1d697013f91210eafe26b57e9e8c2	2021-12-13 16:48:37.657875+00	419
b76ecaa4a5344793b3b6fbb144d406afc372550d	2021-12-13 16:49:10.620465+00	420
e96d17ff8e64d8f2c1a0f399c2dd83447edeced8	2021-12-13 16:51:22.306192+00	421
bd26ac339cacf1d3d8221a6a13336afb67f48cac	2021-12-13 16:52:32.232743+00	422
d1d69bf9c4c968ea92cfa7f220910dca5fb69d16	2021-12-13 16:52:32.263244+00	423
bbb8c6d4285d0bcd71a24144605ca3c9575e7b09	2021-12-13 16:52:33.032414+00	424
74a11e230f5bdf45cf8c9969144cb280c9c45ac6	2021-12-13 16:52:36.992699+00	425
5bb65e112f5e8e026e0c123a926bbb0764da530c	2021-12-13 16:54:34.471458+00	426
cde05f0984d254a42848dcb2e87063e6d7630bff	2021-12-13 16:56:22.509325+00	427
be2806a474beafc21f00b3e6b70dd32b5a09fbd7	2021-12-13 16:56:34.274475+00	428
797b44b53e767c91b6c36ba4eb193c40988ba505	2021-12-13 17:01:35.397351+00	429
c5df2b123502cf5ee39de22239c88e8a264c3d52	2021-12-13 17:02:28.21073+00	430
4d5ba9bb1cf26dc993437ab3706f15e6ab194a10	2021-12-13 17:03:23.699758+00	431
9f1fcd5715d0d4a6dd5595e8351f5f15b4a44116	2021-12-13 17:05:46.960866+00	432
73ce374a16091da428ade35b629061996b2ada80	2021-12-13 17:07:03.387104+00	433
7d8a95f4de006ba6a9ce4bfa3fe6af4469692730	2021-12-13 17:09:05.938166+00	434
e5a8b5fccd34db6e182a41a3e0da6cffd08bc959	2021-12-13 17:09:18.741899+00	435
b9328f25aa907d8bc7ede449c76ce509c97927a3	2021-12-13 17:09:52.882816+00	436
a6040c216b0ba115c2172774223baf1c1ed31183	2021-12-13 17:11:18.183826+00	437
b8e09938fdefc23469fe7e622d5b65a1cae79dcd	2021-12-13 17:13:03.002157+00	438
7f895637460ee1f9ac21f247bcdbb0ada0849570	2021-12-13 17:14:31.653274+00	439
a4b4cf631ef8451b0f0bb499fa23133802225d7a	2021-12-13 17:16:25.599941+00	440
9ada59eb5d676be85bb70ac231d83966e879fc3a	2021-12-13 17:17:11.129032+00	441
db27fbedddd6461ae3cc2f1693cdddf70803741f	2021-12-13 17:17:54.855261+00	442
08d6f524ff55cb530d1781b4f0894b46b3cde3d7	2021-12-13 17:18:25.683463+00	443
91a165aa015d6b120761d7977b2bad04bfa43e8c	2021-12-13 17:19:06.270689+00	444
b7f7aaf60ea7a5cb4cf2a887b813d8eee5efe562	2021-12-13 17:20:11.483543+00	445
d1ab542094767cdd8c1bdb54ab416863f50fe361	2021-12-13 17:20:21.194459+00	446
1f1c13bf27aba3b3273571134385cd3749de2a32	2021-12-13 17:21:23.678759+00	447
3ba960b63f9a065b0cf6dd039e6991d1d5bab80e	2021-12-13 17:25:11.961781+00	448
f7d48a53244c2ac5574a890a165fa62db1b88466	2021-12-13 17:25:14.415831+00	449
139a3a0138e306f003567a2a7cb27b920f449d10	2021-12-13 17:29:07.697677+00	450
c45d1edceb978e54f0bf8fdc19569fa4c1e60e80	2021-12-13 17:34:10.570744+00	451
f2cff92f80eefb2ee56e8771278cc8a48b221166	2021-12-13 17:34:50.939468+00	452
a74eef71b61863c60d8c582e359088cd24339517	2021-12-13 17:36:28.718263+00	453
d78acb95bdc728e375b2648014de5cd383ef70aa	2021-12-13 17:36:44.234106+00	454
1367fc0d92753d4ca9817b3cfaef9d7cdbb6401b	2021-12-13 17:37:51.279944+00	455
455a982132301ccc379e28006ab0eab8a0842017	2021-12-13 17:38:03.994285+00	456
d2fe3cbe1e630a79ef33c3466abc85395843f10a	2021-12-13 17:38:58.226766+00	457
ab9e1d3d5d498029f04a4dfcdf6049bb3054185b	2021-12-13 17:41:01.907439+00	458
4b48f066903e8f408123d34e253e21eab2d0297c	2021-12-13 17:42:11.209062+00	459
6d6c93e165b94115926677b00839ce80ab0be254	2021-12-13 17:43:31.990925+00	460
214ccc3ed375acf0e7d350217837acdf358d9a39	2021-12-13 17:44:49.295696+00	461
fe59f8541da45635c2743aa2727e7fab1675249f	2021-12-13 17:44:55.790736+00	462
c00cebe7c3bb55fdaf8d1380a60e8cd1b99664e1	2021-12-13 17:47:31.664098+00	463
f28655ebe32cc5702b65b309753346a3f1abb1fd	2021-12-13 17:48:34.669993+00	464
49af03bfb75e917eefa80373c69af889afe375b1	2021-12-13 17:50:47.864177+00	465
570c4a0e892221fb9cc8ba9134f4e8b30a8a721a	2021-12-13 17:50:59.363159+00	466
2c476333a4c23e1a2e0c15b9208aa2cb22bd9e8b	2021-12-13 17:51:38.092666+00	467
ddd51062945795293278427f90943a52a1f51895	2021-12-13 17:52:05.721827+00	468
2fe9fbdc22932cb050941af991b9f8301237ce44	2021-12-13 17:52:35.718775+00	469
c257ab782d625b40ae7f990267d1e01f4db2c959	2021-12-13 17:54:37.914842+00	470
0d62d525bc2ecb5e68f00ca8dd79c5d17ad2e3e1	2021-12-13 17:54:59.671105+00	471
746650b1f2f9284ae978a28d0ceeca4772e87451	2021-12-13 17:55:01.0554+00	472
606395edf03c99ebc24a9d166a512cd91ea247d4	2021-12-13 17:57:43.262043+00	473
93646e56dda2ad62c55ac5db94ed3daf44bad7c5	2021-12-13 17:58:57.447018+00	474
f507fbd0f3c80dba95f96550c8b2ef09a19d8a83	2021-12-13 17:59:30.257875+00	475
4ecb0e82f02fbba5af0a63839d577772dd302ce7	2021-12-13 18:01:29.087946+00	476
64fd8c18ddfb00f56ef00b1b7924024d29527af5	2021-12-13 18:01:48.922248+00	477
21caa204b215b520597ea738cbf34a3ff517aa47	2021-12-13 18:04:06.700266+00	478
c1c001753f4478ef95c05ea7a73672d8b8d0b532	2021-12-13 18:04:19.602268+00	479
8bb16428514c045adc10d26452b74622671dd4d2	2021-12-13 18:05:58.622019+00	480
b4e15c77ce9cb3afdc77447546032210e12ece23	2021-12-13 18:09:27.689691+00	481
0c64bbc740a98729b5705aec30a5b58efb10f7de	2021-12-13 18:10:04.513339+00	482
783b7aba7f0172123eedf871e774cf01fc2fc07e	2021-12-13 18:12:28.923027+00	483
540930d4f9645dfeb36ca6830d049c1ebf626379	2021-12-13 18:16:28.145711+00	484
4f659bc4d3ef3078979cd1dbdbc719950e94f6be	2021-12-13 18:21:17.455365+00	485
c4f728d8d34d70eaf7c6e371afc1383203eaf3d0	2021-12-13 18:22:45.358806+00	486
8629738c57cfecdce327373b0e89d70e3dbbabc6	2021-12-13 18:27:13.171527+00	487
075c7f07610a534bdaf0e886c987d71ccc9ecff0	2021-12-13 18:30:23.236842+00	488
4bb9364c8fec89e6dbbfc8ae2027d7e570696db0	2021-12-13 18:31:25.576446+00	489
e9146c70ed79d28c24ab1f44045484a80cb4b628	2021-12-13 18:31:56.09356+00	490
21f11b2be42c8435962fc11313bf9af218c0a09e	2021-12-13 18:32:57.843336+00	491
49574de0f7db1e2c8ea2fe09c8c5605ec6c88328	2021-12-13 18:33:35.745833+00	492
eed168ba50b31deff42c4a93d349040e4133c05e	2021-12-13 18:38:04.209267+00	493
e37fe61f90e4bd0e3c8f8029537a5923da698eef	2021-12-13 18:39:27.469457+00	494
6d2109aec370135293c1bbd7fa44a109c14b11c7	2021-12-13 18:41:14.675475+00	495
18440790c0729f0fab2f8c1e87be9f3df42c6672	2021-12-13 18:41:27.034655+00	496
98475adeb71ea56651c12670dab43bc45661c870	2021-12-13 18:41:56.209813+00	497
4ddc57267f730d6b070471d4752749b9498e2869	2021-12-13 18:44:44.014912+00	498
e1584158e8d7a1118aa1ce33bfa7c2cb11a4a681	2021-12-13 18:47:39.235623+00	499
e1d836609ccc785a2c9f706d209ac337c9289977	2021-12-13 18:49:48.61776+00	500
f968ae7dd063eb072208b225aa17891b968dd0d5	2021-12-13 18:50:23.131529+00	501
be0928b51afb2949724f7f0b30cf08fcb3ad0e6f	2021-12-13 18:54:19.794405+00	502
069df8cd70016246e54f08edaf732d0f99b86026	2021-12-13 18:55:49.795079+00	503
5bc1b877474ab85da52cbfabd08fba0cf7db3c7e	2021-12-13 18:58:49.250592+00	504
1ac9f4cbbf715103870b0ef694e78e4f85e83d78	2021-12-13 18:59:35.473341+00	505
90d9d1abed30ce0f3045fa295b57a7070dc5b326	2021-12-13 19:00:05.553452+00	506
61b3b5a8e1f66f747c3ef2cf7bf9a4eeec4f49db	2021-12-13 19:02:48.989308+00	507
f4bab7e7f174c3431e5f1c0888a9fbed4eea44a7	2021-12-13 19:04:09.338972+00	508
6367f0802e9cf52a1e08e2abd4da347c8fb6b7a8	2021-12-13 19:06:34.492202+00	509
45bf02a04fc941464cc8648e7b434d29b031e5cd	2021-12-13 19:10:42.844548+00	510
128d304d8320598e9afb7ec886dc69ca5e97611d	2021-12-13 19:16:09.568145+00	511
71b6a386ebb58b62870ec3a40f2a2adc957acdab	2021-12-13 19:18:33.360445+00	512
4e818d216332276ee6821ce1c2ebca4899f4db53	2021-12-13 19:19:15.079996+00	513
6ee24254af08ee03a323c6a0e607ccf6493523ca	2021-12-13 19:20:31.368554+00	514
c6f161e7fa01ad9f51899f09679db7f2ff664005	2021-12-13 19:20:37.000694+00	515
5e269d7ae59524d520bcf88fcecdf98f820d6e2e	2021-12-13 19:21:36.821568+00	516
53174afb46e15eb913dc2fb29e1efc15dc3ffc49	2021-12-13 19:30:11.263425+00	517
9f06192bc07a14f503b7aa7dea8e92677d53983a	2021-12-13 19:41:26.811981+00	518
60682f69aa5649c155d6e394701d4cd17d526361	2021-12-13 19:42:49.312135+00	519
315466233bbcf644c52c3281691c1cf39215a634	2021-12-13 19:42:54.824526+00	520
b6cb6913a9f9824d05fcf69db5d99ca4b99455f0	2021-12-13 19:43:27.951932+00	521
832089933af905e46ced1105b98487e0470b6df5	2021-12-13 19:43:56.052585+00	522
56e31c5d1c7d2d903df6506c366748c773ab6a3f	2021-12-13 19:44:14.655628+00	523
1edc700b7118742511b5caa3aed1bcfd6ca79c96	2021-12-13 19:46:30.679997+00	524
ff94036a03b58747cec81b7c62f03c51852cdb8a	2021-12-13 19:48:22.431098+00	525
41b53e63ac2f8f7aa6924ed3f41ae8a018decd46	2021-12-13 19:53:45.171148+00	526
9a237a747830ef274a99d562924fe560409c2738	2021-12-13 19:55:56.811864+00	527
1f837a217b60c2698ebed4b10f784d56897b6f03	2021-12-13 19:57:57.950674+00	528
4545461a42a89ddba6d811c8caa00f5af6bb7b86	2021-12-13 20:01:37.522319+00	529
20506f552e0168ddd73c5e0bd2100fe054c48cae	2021-12-13 20:01:53.735312+00	530
d4d0b5625d6879a0cd71c74edbc0b1e002257a68	2021-12-13 20:07:16.877775+00	531
5de0a908d1c8ba0b949cf3c90c86d2b68c6b1f03	2021-12-13 20:14:09.089952+00	532
7fa9b846da389e02ce20f38f401e7d0f90594a3e	2021-12-13 20:18:39.145235+00	533
4f3f4eedc934c38e84fc13637364365ef2b89a0a	2021-12-13 20:22:41.338478+00	534
a8d12fe169cbf5654f6ca6a7373094c891834d70	2021-12-13 20:23:54.438807+00	535
cc0f8f26f82e3c2ee79b3607848c32f960c9a5dd	2021-12-13 20:27:46.306409+00	536
e344126a0259b03163e09fa2fd5c751ea4b91573	2021-12-13 20:28:52.715759+00	537
d2a7f5401da2f070571dbe47991ce0a9a41dfe4b	2021-12-13 20:30:35.760722+00	538
d174c02d07f92a3710d512c879a9ced774db6a07	2021-12-13 20:31:43.993244+00	539
63b2f0e38cd237a82be6a2dad992de4ba0322227	2021-12-13 20:36:31.981577+00	540
78ce43f7ad457abb24a7375b4477b994e84d85ad	2021-12-13 20:39:07.176383+00	541
1902147c11e2ff3fcba4685172be44a8356d9b1e	2021-12-13 20:39:17.764539+00	542
dbb7951bdbca65eaf8de69a82f1a122375b02a73	2021-12-13 20:39:45.587627+00	543
4403438b6fa269148fc882d93091822f2713a52e	2021-12-13 20:43:36.862177+00	544
f104809df2d6c3d5b391bab2ec823c44b03aa67f	2021-12-13 20:43:47.8585+00	545
3cd166c2efc3cad6c53d2cf9bb268241c0c44c2d	2021-12-13 20:45:35.860334+00	546
1da4ae5167d2ac55c3c93490c52ea24bc5d65f3e	2021-12-13 20:47:41.702447+00	547
0fa65d0f25a8ab0716bdea2edb106dafb6644fee	2021-12-13 20:49:52.762073+00	548
2be048eed8b41c96fd24ad4f361f29b063811e82	2021-12-13 20:49:54.021429+00	549
01e59be1c657f244e26011aab43f5d95687ff838	2021-12-13 20:51:42.755453+00	550
501915176e86b1ab7459bef3b45963dd9dd7d0c5	2021-12-13 20:52:00.968481+00	551
8ef338f4b354d46fd59c179762acbd1571eed444	2021-12-13 20:52:10.692945+00	552
37004cd8349ae247f7e20e35fe4614fbaca76931	2021-12-13 20:54:23.227364+00	553
8c7a4a0642602d7340ec1de4f5abba034901ce18	2021-12-13 20:54:43.827836+00	554
b5595a7890a64cd44e66193887d3d8d0774d1af1	2021-12-13 20:55:02.844445+00	555
7c5e09e500d93d6e8b9cbecbe1be8c609a73376a	2021-12-13 20:57:07.873034+00	556
2a40e7aa231b877424158cba435bffb59c03a225	2021-12-13 21:00:41.617993+00	557
a0f123fae3d13819e6d6c18a440b366ebd48f83e	2021-12-13 21:01:31.791726+00	558
150f52d27a1457bb1223ad336d0f90481de337b4	2021-12-13 21:09:22.174538+00	559
f9a6a75a53d4cf3347761afae32fe0253e6c2ff6	2021-12-13 21:12:18.241712+00	560
7d1ffe5b44ddef6f20bf051d608fed99b0e09ba9	2021-12-13 21:13:04.717849+00	561
56914fb93bca7b1f2bb0e0bd15f505f445a84ad3	2021-12-13 21:16:08.095541+00	562
2969f53691f69eb9b66b9af1d39906068f41f021	2021-12-13 21:16:12.464672+00	563
940972b58be84c100693e0fd610a390dfe98400a	2021-12-13 21:20:05.459928+00	564
5d4e183fa614bf74793f1cde207498517a9a8ac0	2021-12-13 21:21:03.690001+00	565
f8b5747a0652b4a537de4b1f2c1bf5bd9fd14f92	2021-12-13 21:22:47.061997+00	566
db15534e4445a0783779e3db9a9a1eee03786c12	2021-12-13 21:33:35.178767+00	567
0dc486d04eb9020aacf12519936cd5e9b541a22d	2021-12-13 21:40:12.841088+00	568
9f5be0446fa99c59b598b510a0c79c0e66c4c2c3	2021-12-13 21:42:14.874507+00	569
1d86b5878b5eb8b1375db9a7b7f2b235b19dc16d	2021-12-13 21:45:40.802583+00	570
411c97b9f8ad15ac7293926f9434f9f58a0d1fb1	2021-12-13 21:46:15.083013+00	571
4df61577f1369e3fd2b0c45c1df448eac9cbb033	2021-12-13 21:50:13.016173+00	572
6a33ada090a4fa321b96e8765f902051d1f25dd9	2021-12-13 21:51:20.673823+00	573
7d70c1d0f8556bc0da89a5b89ce85e5ba9428038	2021-12-13 22:17:43.486789+00	574
1fc8f2a8d72705968f353687993ead0cf91c0eab	2021-12-13 22:18:29.312237+00	575
d5bad77d75dfbd31606e89ccd0631cb9b7683922	2021-12-13 22:34:28.820767+00	576
6a2849d7857c31443ff027bd47df009fb940ad9e	2021-12-13 22:35:46.230785+00	577
320687a188f16cb680bb41901d5dab9b4d4fd2b3	2021-12-13 22:47:15.867492+00	578
df254358f972ba08862d37faf9ffe7ed79d05989	2021-12-13 22:54:44.682434+00	579
0bdd5c8735fca335ff34342a66c40bd2b2dc87c9	2021-12-13 22:57:21.314461+00	580
1deb30762bd48b3f3dc2a603f3d8c0b234efb7bd	2021-12-13 23:04:38.048209+00	581
9bd440ce9f00b5fe7c89c8b8f3398b24e25581f4	2021-12-13 23:32:43.218604+00	582
3fdf67aad6bd936dfa6f1995bef4c02da485f3bf	2021-12-13 23:38:36.095854+00	583
faa2fe0082179a9b65b14b5cfd02e58dc0d182d3	2021-12-13 23:49:13.441459+00	584
9a351c8f6895ae625d77d0ab162bc9e25861e919	2021-12-13 23:59:49.045626+00	585
14381251bc20d6e30cef6265bd78637992087251	2021-12-14 00:04:30.104466+00	586
3311aea078b1c52dc85f11dec08fa85463e3f42d	2021-12-14 00:14:14.234556+00	587
bd0592f2a7a18e283bd252ff9aa9b53989ba4815	2021-12-14 00:25:52.052823+00	588
6e278068dfe2d6369c2cfebb18458dd9b6a5eaa0	2021-12-14 00:44:22.186853+00	589
39e3b35929a6a18f7684db139cfe0b57db4a61b7	2021-12-14 00:53:42.164583+00	590
e0cd059ceaee35689044c8fe7e64957130834348	2021-12-14 01:01:39.694069+00	591
cf9f3add852a621861d291286be44814fc5d863b	2021-12-14 01:10:15.84942+00	592
cf0d5a3baa6185249f0aeda858a964463c4f5de2	2021-12-14 01:14:57.312339+00	593
d092fcbb0695c1de5c8be5fb3499ea915bde3c1b	2021-12-14 01:18:37.298229+00	594
a79dda168107101e94be867db9fb394bb5daa35e	2021-12-14 01:26:30.930237+00	595
e47df5d883ca274586531ae951b852e2c7ab2f6f	2021-12-14 02:01:55.676704+00	596
473cbc0ef905d8a5ff8e57dad8ba36092a7e6ae2	2021-12-14 02:14:56.893228+00	597
bfc9d319e57eb9544028ee51bc55ff4bc0a9a9db	2021-12-14 02:16:41.551347+00	598
d67734122d0a38f2ed670567f0fb083259965a76	2021-12-14 02:17:11.081921+00	599
4711c84b43e8028240a7e650eef1ac5d57502bc5	2021-12-14 02:58:37.762494+00	600
3963441e8ffbf1246460579b81a7e5e998ea7ce6	2021-12-14 03:11:22.873615+00	601
24e8b43a54979a9f9f7744a19b1cbd79d2298d8d	2021-12-14 03:12:54.400502+00	602
9689590cc29a85f77e2d2dc1c2e5420d871b83dd	2021-12-14 03:24:15.894508+00	603
0fd34d76ca61f151d2e7f10754594e5add23f55e	2021-12-14 03:29:22.737165+00	604
d7debe4ca0ff54402044a4dc76f03dbc2d8b5bfc	2021-12-14 03:38:55.849973+00	605
c00f4876b8111cb4dfa2a962e267d708a7d2d054	2021-12-14 03:46:21.019965+00	606
519fccde9d7f3a0131b85540ee2c1a99a35ee11a	2021-12-14 03:52:08.143063+00	607
1d2605b5469e847ea0e3660c11a5819aefddeac7	2021-12-14 03:55:29.78597+00	608
4ffb5724f1ea2e086a8a0ca31d048ec27b2cc644	2021-12-14 03:57:59.639694+00	609
48e75cabe745dc9c0a227c3f8bd86c9e6cb1d5a8	2021-12-14 04:04:19.215171+00	610
c62d199a911eb97b08bbe9f805617f7e60358f06	2021-12-14 04:10:47.171867+00	611
b1c2a993341c0b5be53eff4909ad0e7dba9938ec	2021-12-14 04:14:08.209896+00	612
44bc6b936c7ec2549caa0859b653274a13fd705c	2021-12-14 04:16:13.545335+00	613
65805938a0908098fd4d7a145977bf786e44060d	2021-12-14 04:16:31.720883+00	614
2aefaddbec1341787ddf517542ba9dab2600861c	2021-12-14 04:17:21.894522+00	615
b6ff331bfd1811853e6181029c059b24dc551524	2021-12-14 04:20:13.225012+00	616
5e3cbb315c799f4a3c5dd82c0365803b415ddfd8	2021-12-14 04:23:42.057468+00	617
c0184f5e1f49b5745479da16b5adcefe1b01a484	2021-12-14 04:25:29.8359+00	618
47b50ff0e4c3a81b7c3bf58dd66b9183347c78bf	2021-12-14 04:30:44.557616+00	619
eddd47b4c3a4130a216d41690c035e0111e55ce9	2021-12-14 04:34:58.77857+00	620
5e120a3d6a28f2495d8090b10af81d4ffd6de126	2021-12-14 04:41:10.269883+00	621
7b046a263132ba2c32362ecd19c6aef7debaf84f	2021-12-14 04:45:49.759921+00	622
851617969267d216855cc90519eb4a7889c4705c	2021-12-14 04:47:00.426945+00	623
e3ec9a9dd2a04cf8cb866d4ab71a82e28a3c8afd	2021-12-14 04:52:01.044277+00	624
59ed8b863856913b054244f28abdfb5632a04852	2021-12-14 04:55:26.721878+00	625
407827e196fe711fbe412ef3a2f2bcd90785c91b	2021-12-14 04:56:02.208378+00	626
bda73e71ad5fe3bb56c7144e377da518c251a252	2021-12-14 05:02:35.502635+00	627
fe79e47db0efa3b64e99b0b8d85f94ba3673d814	2021-12-14 05:10:33.076962+00	628
66e04ea6ead3d12919c51a12281149558d163f4e	2021-12-14 05:11:25.342301+00	629
29a72d31d0d2bdd48fc0d1813f3eaa72958e8253	2021-12-14 05:17:41.132634+00	630
f71008c94c414d7e81f166032bb601196ade0147	2021-12-14 05:27:25.879733+00	631
11fd68e982d1babc50c2743da8eea4d35bb272f8	2021-12-14 05:34:52.259821+00	632
3213a0d8d3769a96a7f472ed07272aab8b9eeb00	2021-12-14 05:38:15.43493+00	633
a31ee3d5fb911eb8311fa4e628de7deceff64e98	2021-12-14 05:44:00.478456+00	634
8b91580c384f44a50238f9c952d29c83fb5b0b0e	2021-12-14 05:54:58.248031+00	635
7b2be349ae900a5ce11f9c67c621077cd80c65a1	2021-12-14 05:57:38.16755+00	636
85116c6233559513a2f7d6183e992a22d086b065	2021-12-14 06:06:02.432823+00	637
8268e2767a49df4337ee0cd0633860e238f851cd	2021-12-14 06:07:27.397296+00	638
d66825217725a88c27e60e6c6e691a6435b67bb4	2021-12-14 06:08:53.215399+00	639
86ff067332d5671a393ea9e9a7ae9f15b1edca78	2021-12-14 06:12:19.878287+00	640
42ecf180169d4c37045832b5a5ecd0b87a203de9	2021-12-14 06:14:01.425079+00	641
de2d72aef61c1202fae64ce0cb5853c28f3f06ba	2021-12-14 06:14:05.234536+00	642
745e35d1439ecde1b9912866f14e3253d863bcfe	2021-12-14 06:14:56.192106+00	643
7c224ac065d159fabf3742eba58a2360a33a3e38	2021-12-14 06:16:14.041843+00	644
c1f01f90563fc49888b8b5dfff54f95873ed4ba0	2021-12-14 06:17:45.613615+00	645
d5263b7c9bbefedafe8bd8be8e4d988ca6a977fb	2021-12-14 06:18:48.340234+00	646
f8f0fb42ac4e9342e2fd1f39e96455ec5a8526f1	2021-12-14 06:24:16.847921+00	647
c6e189e8d827c2153a9e473391b664af604feea8	2021-12-14 06:25:56.878077+00	648
2a7e950d55ceca25091ddfb781f0d8b8dadf00a3	2021-12-14 06:28:46.842565+00	649
da9f0f62cea4491faafe4a65c126d0c41816320b	2021-12-14 06:30:35.08161+00	650
3e7f451214825dac4e219d4a6a0ffaa257e9d519	2021-12-14 06:31:09.206997+00	651
fb7d81ea744252664bd86c8c71d7a58051ec77ae	2021-12-14 06:36:46.635656+00	652
dbbd5fd704e14265f72fa36726de44adc4d2a11e	2021-12-14 06:38:15.493092+00	653
51df1d8eadd67bd38f97e8c49f733b0e3f43ae90	2021-12-14 06:42:14.412588+00	654
3718662eded1fbe49b459ca43f4d6a89fe78dd63	2021-12-14 06:45:42.684878+00	655
b2fca87601733a2e23ce631670a33eb53ffaa8d4	2021-12-14 06:45:45.834963+00	656
db39dd820a9d1e82befc53141396784c9efe1c8c	2021-12-14 06:49:24.987164+00	657
b68b2320dfd83cc6ae7f4e09b2afb788b4bed9fa	2021-12-14 06:54:23.33038+00	658
ba442e1ddbe72ba982f278af59c738cf894ce69b	2021-12-14 06:54:28.938955+00	659
ab4423a640e01ae148f603620e409d47b7977643	2021-12-14 06:58:26.12654+00	660
85e4ec6044ae0ada72212b0fdc958077c9e54c83	2021-12-14 07:02:15.313116+00	661
2bb83978a0631384145b842613436aa32dcaa832	2021-12-14 07:03:27.185931+00	662
7ef7888cb4eb886b05f12e133b7f15fc700d3fd3	2021-12-14 07:04:54.797618+00	663
6e6681c1aef3bb69e86a6f19dfb37faa93b30ee5	2021-12-14 07:11:57.804134+00	664
7c9063c9a4c91225d2068e6d97dce97ea0e5990e	2021-12-14 07:14:18.669166+00	665
34143b474d1f9bf5a381c68f2c271823e15742c1	2021-12-14 07:15:00.802069+00	666
aa53181240fa960e63955c76245c1e627df45209	2021-12-14 07:19:51.953627+00	667
76dc86347153b1ae09252b56bda61a760e61a890	2021-12-14 07:28:30.576514+00	668
d3af65fd9bbb65fbeda827136c03e654f63e8d0c	2021-12-14 07:33:21.871864+00	669
f468b6dc5a00c788c1092438960be25cb6551280	2021-12-14 07:36:27.843779+00	670
0792fe9333f107372ce08f6e3032ae31634e3721	2021-12-14 07:36:59.095717+00	671
6d82ed89821233404ed8ca79768a344c6e3a7beb	2021-12-14 07:40:25.367958+00	672
ee4f3aaafd34b5e3fc3e8577313cb5853323d886	2021-12-14 07:41:58.146593+00	673
de84be4c3ba2968927eda023c76294106e144ce6	2021-12-14 07:45:41.061904+00	674
ececaf991b2d661f915fe1abd30c888e6f75bb9a	2021-12-14 07:45:49.874332+00	675
5dbe67dfb974015fc58e6f6a8143a27ecc715064	2021-12-14 07:45:55.66568+00	676
946440b42c54999ee2b9d91e0af5eeef224d1482	2021-12-14 07:46:30.518327+00	677
1e7b6a2097617c23fb93c3ca917e37dc57332264	2021-12-14 07:50:07.029065+00	678
fcc52577000e1d79a7b5885563259af3658c2701	2021-12-14 07:51:17.578248+00	679
e9dac1b9f3a16b0c7baf56bfe77bf2bef412cc03	2021-12-14 07:51:57.858317+00	680
f87dbff90307e948cb0fbd859102d11633ee5efc	2021-12-14 07:54:30.855673+00	681
e713028a538ea0c64a2689ed6c08dd4955c73c68	2021-12-14 07:55:12.900378+00	682
d70157435950a11007051f6059c15bd3bc6aab05	2021-12-14 08:00:19.498095+00	683
ba23829ecb42c44b677f622eaab5c356d25a7972	2021-12-14 08:03:25.202873+00	684
26bf22df67a568626e149ac58a9060d08e457bca	2021-12-14 08:03:29.37781+00	685
c4a3b1b493fd5b29bfc34032c490a2c13a0e3755	2021-12-14 08:05:15.025039+00	686
e5bf98c003d2fa338d1c005d70f943c0671e6a70	2021-12-14 08:08:10.737394+00	687
ffc406b0e0d7c9a6e41d4ecf55f8a47bee711d8d	2021-12-14 08:09:36.082054+00	688
30f8c7843af861a93400cc5bd2cb9de140488d86	2021-12-14 08:13:20.308592+00	689
d2920561761b157c9ab52d2b63542b72342e5b53	2021-12-14 08:13:27.239898+00	690
98340a550102ab4f3a3e4aa6f7e566b0a80311cc	2021-12-14 08:15:32.447339+00	691
489d2bf386d1ad1b4ec2fb00dc2a1d9dc253f42d	2021-12-14 08:19:20.184476+00	692
808c5cb016b86cb4531f8ac494ace348492a9542	2021-12-14 08:20:01.883773+00	693
6c6509768b64985d77399b97bf83556e8ca2f507	2021-12-14 08:26:15.966344+00	694
9b9b4ac3b982ed948e2935fa25cee062cdac27a9	2021-12-14 08:27:51.57162+00	695
ec14faf731af2e00340bcc2399f0a63b13bf8c07	2021-12-14 08:35:31.343645+00	696
a5107ca0fb25787fd0b0bda257655806d7030403	2021-12-14 08:36:30.780407+00	697
8081d74431ce395445d264a2545aa93fb6f0275e	2021-12-14 08:37:49.208396+00	698
d8af355aa979a5cdb67654b1cb636ad15814e5b8	2021-12-14 08:44:36.486162+00	700
14c18e6f9aa38ee9c3b271accd1af8e2996793e3	2021-12-14 08:45:29.715022+00	701
d8119503054133a1544349e954ec874619c8835c	2021-12-14 08:45:44.212562+00	702
0b8d732ac43e2e38428fa494876d8aea352a6fb8	2021-12-14 08:46:07.51502+00	703
27127210d4af1a3f4040acfe1d37d840abdbebf5	2021-12-14 08:50:03.452932+00	704
09e040d6ea889e8a31ddd944e3f456b4040d6296	2021-12-14 08:52:49.007936+00	705
5f8bbfa8de429882b216d4ab7eaaba3aa686b93b	2021-12-14 08:53:07.297205+00	706
bc154218b4770c5e5c5408a71432117d93acb180	2021-12-14 08:55:58.459944+00	707
3b28ecb871f135fd559c2ef7257097306e95123d	2021-12-14 08:56:30.930828+00	708
71f12d8a88bac3e622c1f85802386fa5961b7aaf	2021-12-14 09:00:26.377777+00	709
e1b2d4e261aee240d318da2540234ffad99a48c7	2021-12-14 09:01:26.57316+00	710
6deb40b892a06611108809c323a122f7bbf9654a	2021-12-14 09:01:55.168528+00	711
27ae22d11d9c93723e92516017a50a4bc59642fe	2021-12-14 09:07:08.428543+00	712
7b86ae01199b17732bd796dddc51844b0e38d5af	2021-12-14 09:11:48.006342+00	713
782270e755bc457b16d4ca94ca1137d1a8530012	2021-12-14 09:13:19.790227+00	714
ae97f6aa0bd9a5c175d9bc8cefd7ae197807a7b3	2021-12-14 09:15:18.22618+00	715
1c4ac09bcc2364d7da8a0ef5d1eceecfaf391860	2021-12-14 09:19:28.066603+00	716
33bdba85f4292bcf825e2de9580277388d43244f	2021-12-14 09:19:40.306686+00	717
dea1049f5a7b7755ff8f4d5b6de615c4b3f77260	2021-12-14 09:20:25.614665+00	718
e5365998190c80e46e3351a5e9294e816ea0a199	2021-12-14 09:20:51.465822+00	719
aa31d2e3c820c3deb1cc709b86c664a758c02a63	2021-12-14 09:21:56.384194+00	720
30821a064935f8821b2dd0661aeca721b7e11976	2021-12-14 09:23:03.848895+00	721
fd3f597e74179c0d8e5ebe6626966a017c11ffd2	2021-12-14 09:23:23.336795+00	722
322c7c4569cce872f56498a3874e4cc4d597d18c	2021-12-14 09:23:44.832686+00	723
6781e0eb800cba3c928857a2726ae9e2c6e6abd1	2021-12-14 09:25:39.686819+00	724
8e4a0b19131a7f63d36e917c783fa212c3d94a6e	2021-12-14 09:25:55.916287+00	725
6772e9afffdbf9e41f94f2152cba4759709f33b1	2021-12-14 09:26:37.253693+00	726
8b38dcc4338bb6c41761618d3082c1b7ef5a7815	2021-12-14 09:27:31.766055+00	727
6d0725e3d103d6503d6346874ba24b21840e2854	2021-12-14 09:27:46.763353+00	728
51cbe7b574d98d4692a381726834017ee9f3eb79	2021-12-14 09:29:22.651172+00	729
2b597069b488af5f5eda9c288dd8df2946252dbe	2021-12-14 09:29:26.712751+00	730
64dc87348816403bacd764bcdb44ae87f2fd34f8	2021-12-14 09:31:59.699765+00	731
aa95df717d671327d403728766714cd44d714fc6	2021-12-14 09:32:56.506566+00	732
a22c802d4580ea0e6e1de5afb6ee1299a6778436	2021-12-14 09:34:20.788336+00	733
c24752a31bbce4f9d41d1438f6959a347c4baca4	2021-12-14 09:34:33.093395+00	734
d2289e81844f6b9b0ea051556d30cce07c68af58	2021-12-14 09:35:58.715342+00	735
31be032280858e66aea4edc1da3fda2b34750211	2021-12-14 09:36:21.136257+00	736
16485269575bb0e46375a26df7cb65ff63f57b37	2021-12-14 09:36:27.436519+00	737
5bd4ad1cceb6512e1c57a248015effdf468a8108	2021-12-14 09:37:09.786783+00	738
06b6136c5f5b2f5b33069b7003a4f564ab0c5aeb	2021-12-14 09:38:56.607768+00	739
78b4ece056085222293c72010058902c258cd04a	2021-12-14 09:40:23.065836+00	740
b1810c8c3b26908787438e930a266fb0b65ed55f	2021-12-14 09:40:33.457763+00	741
32710636c4514b7a67731a34bd18a0e0c2217d73	2021-12-14 09:40:35.330876+00	742
8cd757504b6d1a2fcc37cfd5609a7f0e80b71f53	2021-12-14 09:40:37.683908+00	743
fd2926400f65699bdc7015cb674b780cf5ab1881	2021-12-14 09:42:32.80332+00	745
c6bcbb71ed5f8ca3c35272a2fd78cfed21345c2f	2021-12-14 09:42:33.595694+00	746
28ce7b4eb3a6eb3566d684df7d889dc05526ff34	2021-12-14 09:42:48.875817+00	747
b21aca77db55bb35115032ccc267112dc28e185e	2021-12-14 09:42:58.765646+00	748
d2b211cc1fe6ef49d79f3daba7c56e094edd0c8b	2021-12-14 09:43:29.729389+00	749
66fc48b8bc8bada9bc77aea5b923a1af2c8fb218	2021-12-14 09:43:54.94311+00	750
65b49d8686c3a23bf9c898383e7d0ead3bb7224c	2021-12-14 09:43:55.585624+00	751
3150770d15e6692d3910a9d4aecb520760e91c43	2021-12-14 09:45:01.501379+00	752
7224176470d1c10cad4a8fec1ca99cbf33d1c9e2	2021-12-14 09:46:00.776561+00	753
b36617cafb15ca246cd6f216fe5b4c60bba73c70	2021-12-14 09:46:38.776708+00	754
cb8216aa19e0409e6fd36c8697ffe016ad493fec	2021-12-14 09:47:42.43247+00	755
795cdda9b4fe2bae3ca4ef44f59821ccea0b8a1b	2021-12-14 09:48:35.029197+00	756
796c8d43bf2bc01e9c0c73bc17b2c3f5db00afa1	2021-12-14 09:49:32.335508+00	757
40547e17e7f785d02c221aaa15c7fdf8cd3ca1e9	2021-12-14 09:53:05.873102+00	758
719bf5b29ace87dadd55e9ff9371bf86f73a1598	2021-12-14 09:53:46.865323+00	759
ec973adea1ec917334265b929d10421f5ff4a9f7	2021-12-14 09:55:45.175393+00	760
2c52f626bc1e4ee7236f26fa2b0e5a15ff0c8102	2021-12-14 09:58:28.39996+00	761
814ce733edd42ecad223f3b7f2eccdef8c7b310a	2021-12-14 10:01:26.552851+00	762
9229b3f823cd9404c7d16bf61a6be16b200fe47c	2021-12-14 10:01:40.181996+00	763
1aae1f2617d756eaad6ee33fdb2f25ae401595ac	2021-12-14 10:02:30.250433+00	764
2065cde1080bc92d7360b09af09c10d2fd558f12	2021-12-14 10:02:32.896546+00	765
9426ed6603cb7f06226c4395b8edf7190a846e8b	2021-12-14 10:02:57.454157+00	766
3682a5bdd5f326d614b5489e04e0c6a550a04682	2021-12-14 10:07:43.652202+00	767
0913bb5f64c3ecec81f4b6c78f2c9822596f8343	2021-12-14 10:09:50.390748+00	768
9b71a867ff35a29b670b0b4a9c675a28106026a6	2021-12-14 10:10:15.811824+00	769
979d8d97c865e6e19bffdd56b6ce35bfe6c9b2f0	2021-12-14 10:11:15.481216+00	770
ff210fd7f1dcdfdecdc4fa31bf474e0cedb7ad6d	2021-12-14 10:13:56.797785+00	771
fd61f86b20295d4a4b72b87610c3a03215a129fe	2021-12-14 10:14:01.018054+00	772
130f353c9daf011516a1eff4756bf631147d7dc6	2021-12-14 10:15:07.447256+00	773
16395baedab8bbbc1ba0ae07eb8ecfa9907f2e3a	2021-12-14 10:18:00.920895+00	774
5ba37fab6fc87c74487344e85365b4a14fa747ff	2021-12-14 10:19:27.023942+00	775
63f5ea0219a0b72c8c03b6ec3dd4054e6c7b7d67	2021-12-14 10:23:02.390869+00	776
b06e49bd94642d6e98fda9b99a9da3d4abeadb79	2021-12-14 10:24:37.997528+00	777
4c922b6876d930d90ce6f767f6e4f4c416108b7b	2021-12-14 10:25:32.867404+00	778
341eeb38d11ca81dbf19103ef279adfd8aad1d06	2021-12-14 10:31:27.77411+00	779
3272afc154d8027ae3b76f8cacaf5aaad77f4f99	2021-12-14 10:31:55.327552+00	780
01929566465d4d7aa63b2b4f8d73673371ac702c	2021-12-14 10:32:07.197638+00	781
a4b60adc500fbabcd1c82230cee0f41ac1ba1bd9	2021-12-14 10:33:39.753088+00	782
21e109f84afbc582755303ea501f74a7a7b06f84	2021-12-14 10:38:27.269245+00	783
f96ca488c1c23383defb2981184115e5fdd0820e	2021-12-14 10:40:35.808438+00	784
8b1bebf6b4013d29c9a853258a046d63d13815a7	2021-12-14 10:42:16.809001+00	785
497d6dd58b9ed41f1404f06e60a4f4e7a8c0ffa4	2021-12-14 10:44:30.67699+00	786
b2c59317e4c491da3846a982981746e873533672	2021-12-14 10:45:40.687287+00	787
9fd58762dff12c542bf43a35b93cf31412a6e570	2021-12-14 10:47:44.479106+00	788
ef404ccbeb5bae5cb806c14b8348a6522787ebc9	2021-12-14 10:48:38.472497+00	789
8c7ad8c426efdec7e47309f5016ba460cc1427e5	2021-12-14 10:51:27.605694+00	790
64d9de65f4a202bec1febf2dd8be3e15c19a0db2	2021-12-14 10:51:41.665668+00	791
86e2bc83789fa26f88a0d6ac46ab0cb961dea9ed	2021-12-14 10:52:14.484046+00	792
fbdbebfb2ec4744938b23d85fa104875d340a711	2021-12-14 10:53:12.724549+00	793
b6f87704229af95a9be751814d5f8315fcf0fe94	2021-12-14 10:55:42.017506+00	794
fba449dc07a60da0be31507d0c88491c6d30c37a	2021-12-14 10:57:50.835554+00	795
56ffa4dce897d0480f289d253173f7af2b4c0a22	2021-12-14 10:58:06.541443+00	796
df79c5f89d64be570a5bce576f7571bf0cccf3df	2021-12-14 11:03:41.629216+00	797
0041e2a3f4b578a9120707e8d55fe104a7d4e0a4	2021-12-14 11:04:07.041105+00	798
6f90704a31672a82f8d0571f93c605cd2450f977	2021-12-14 11:07:55.221196+00	799
00a7e7c62ccfb337fba1ae466134cfd64364984f	2021-12-14 11:12:22.291938+00	800
c526ee84f7017d9c98ec0fc1825051d9750714f0	2021-12-14 11:16:14.927747+00	801
feaf43fc45b44be2f99736a18da94ec4299a631e	2021-12-14 11:17:34.001711+00	802
5eb54b35f5a4f22d2170470e45156f03673b4167	2021-12-14 11:25:47.199397+00	803
e07596c0ef30e2f8e44bc6c28748d2bd37b2dea5	2021-12-14 11:26:23.91349+00	804
b7df7562988aa6b939436c45f0ead95800e6059a	2021-12-14 11:26:27.231133+00	805
4725d2f7e5a3cb984d3cd79e89f05e87fe4f64f0	2021-12-14 11:29:52.135604+00	806
971d7a7e1eb9970e77fde16be0e294e555f8362f	2021-12-14 11:39:48.845329+00	807
d01539af5700c8205fb1c5faf78f664303c383d7	2021-12-14 11:41:21.814285+00	808
81236827a588056c951c933f71dc7699db4c87a9	2021-12-14 11:49:33.967368+00	809
0bc63e3103a2020797ba48e264f93ce076916669	2021-12-14 11:50:53.837099+00	810
c9fa7fdbb228d282c154d0455a3e9d90b40d70be	2021-12-14 11:51:59.794267+00	811
18935e888e9e4ab72a166d97becc6b600ed81e1e	2021-12-14 11:55:03.66222+00	812
928a2aa91cce8c746b369415520a91e8998703f7	2021-12-14 11:55:23.874805+00	813
570451ba38922b30919e1553a01cd95244d2193d	2021-12-14 11:55:56.923724+00	814
6c21d68680316c7343fc18bd889a243cef9a26c7	2021-12-14 11:58:27.379375+00	815
f854cf7267b2825bef93d5657b0d0c3aaaba4429	2021-12-14 11:59:38.604635+00	816
58fe4bbc4ebc8645f500f885e51fd438b2dff500	2021-12-14 12:00:00.00644+00	817
095b900e5de23447933baefa250310aa8ca19501	2021-12-14 12:01:30.17571+00	818
7024c44991158d8ce61932c2b07057b74942b9fc	2021-12-14 12:02:49.680199+00	819
ed19f3a14bc5097ab4b979548505e9925daf947a	2021-12-14 12:10:13.437283+00	820
9e13b4951ef0e1fd7844059463f08b49600d06cb	2021-12-14 12:12:04.065771+00	821
fb072d24edeb0c71b63762cf2b88b1db7471ed5b	2021-12-14 12:12:21.501702+00	822
2fe99ae4d897eb4a0aebe71a8973bed9e6d0a50e	2021-12-14 12:18:16.361103+00	823
e0cc3ac6160801054f7e026e830e4c57b50eea79	2021-12-14 12:19:29.984386+00	824
048014a10e7a8d9bbb59e25d479a6af607d2b217	2021-12-14 12:20:27.29645+00	825
3da48abcc18f31b6c438578f4c121712f2eab18c	2021-12-14 12:20:39.644077+00	826
13b3527793fbad595562846226e84c337971ca5f	2021-12-14 12:20:42.626625+00	827
72b0540de681c01bf8abdb34234380d196a304f8	2021-12-14 12:21:07.058304+00	828
141e13ab8575e9fb2fdfe201b823bd79d199016a	2021-12-14 12:21:47.95051+00	829
84fefea64c3ba7b93d95ebf5a1b5892488d0ddab	2021-12-14 12:22:46.05275+00	830
82a05f1e3a78abf44d54171a2fad620ba498eed0	2021-12-14 12:27:41.228098+00	831
cd0d0567b303874f4ca2ece1a8c7f9d07e063b61	2021-12-14 12:28:33.218229+00	832
7d29335cfaed89acb5d574b7044d9dba3aae0f37	2021-12-14 12:28:51.240182+00	833
5ecfcc31718dd5f628f5b44e3c024e41af6451a4	2021-12-14 12:32:08.991247+00	834
1e7239fd75ee5379c62e9db01d77ea8ce5903a8f	2021-12-14 12:33:16.039197+00	835
0693153e96095010712db94a6fc467074e247975	2021-12-14 12:33:23.303677+00	836
b491c1e7c7def965560d4bf050b69a6b0c5b2f41	2021-12-14 12:35:09.169937+00	837
5c3c3e9069909a3d3645565f555c57d1886d2035	2021-12-14 12:35:25.19878+00	838
cc8bd73a7d60fce155ac1cf885ac31114174b9bd	2021-12-14 12:36:34.287059+00	839
46fca3118b83f68314116c9cdf66be2ed32a3068	2021-12-14 12:36:54.356821+00	840
10869f5ddda31d4939be6d22cee112c2d20b0562	2021-12-14 12:45:32.220944+00	841
9370b71b59891d11ee3f48296613134863d7cd91	2021-12-14 12:47:06.042888+00	842
fdb4f13c3e494bfc9a5b1f2b2a087ce223863971	2021-12-14 12:47:09.797268+00	843
f6e329adc48792b6642b1ecc4cf5b20c2a25bfe2	2021-12-14 12:50:53.082706+00	844
11336c0fe607bf0a077d3925428804859ef5e3ea	2021-12-14 12:52:13.423287+00	845
b1de562f32dbf4b7f3dd361f8fbd762851003f51	2021-12-14 12:54:13.465932+00	846
f9b733ebff15d9d1fdcfd8b1e757e0cf464c12d9	2021-12-14 12:54:28.447403+00	847
8548b7e696a942d47d2d2fb5e19d15b5dc74afb0	2021-12-14 12:55:08.51339+00	848
9303e2d177c5665e8a5a5c15b27c05377b2e1040	2021-12-14 13:01:57.8284+00	849
20958d4cafeff0da79aab0e30e2df5172a34c6ef	2021-12-14 13:07:48.672688+00	850
1c1811737386d88f50215fcf71065ade848b6308	2021-12-14 13:10:44.1518+00	851
025696713c00158ace9f38f311d9c4c8a8068429	2021-12-14 13:13:00.535727+00	852
06c361681d4639a83d2880afd5a0914012b2121e	2021-12-14 13:13:07.063924+00	853
6aa3fb35d584636b37a91f9e97b661e52036cb4e	2021-12-14 13:13:59.47351+00	854
9ee397d31e172dd4474124fb643d10d44bc2fb72	2021-12-14 13:16:01.020865+00	855
63a4c6297aee26d7bdbbaf17a4bd7b4057ea1d07	2021-12-14 13:17:35.016943+00	856
0e6ea3b7f357194aa0324f073dca07a1058dcd40	2021-12-14 13:19:54.249936+00	857
790e4d9bb77452229f07938e743647ba7067fbac	2021-12-14 13:22:46.711964+00	858
085bf169a7e69b8a9ec1a0922e0773bfbaecc15f	2021-12-14 13:23:01.257956+00	859
37b534679623b1a12041a3db43d40c67ea7e627b	2021-12-14 13:26:50.869603+00	860
0b65db6f197c62661970356b09f0fe983be842a7	2021-12-14 13:28:50.674472+00	861
95c5b92a5a1a2b08fbe4c1015f0535ac228a0d2a	2021-12-14 13:31:06.508104+00	862
8b84d81276cb163de88515091faebc618c7ed445	2021-12-14 13:33:11.225364+00	863
beedd998a4d9ea01bf4e470932e904d3277f3b83	2021-12-14 13:34:46.532551+00	864
2a85b5809e450ac20a60ec07f950ba75cdaa1486	2021-12-14 13:38:03.173235+00	865
b7457111c6665181401d271e1412c16536ed0bc8	2021-12-14 13:41:25.78361+00	866
008fd7851aba8c4437231944d3723fde483dbe93	2021-12-14 13:42:27.102911+00	867
979dcf40d71068fcff59da3b3aafd4f42ff2395d	2021-12-14 13:45:11.202092+00	868
c3ec93f616c43466b51301f3de0c1a22e1eee7e5	2021-12-14 13:46:50.946544+00	869
39a8d91c843b7c2f3197e4fab0e82a94771c7172	2021-12-14 13:52:50.867791+00	870
193c763602dbc9d3699b63b1aa726e617f47d613	2021-12-14 13:53:36.444414+00	871
076b8c48961a2c74782d0f93d106212fb5d9a87e	2021-12-14 13:53:51.246723+00	872
d7568374abf8f36102ed97b1876b9aaa01df0ca5	2021-12-14 13:55:52.998293+00	873
359508de72a5ad3ab6f4f4846e9ba192a796fb0e	2021-12-14 13:56:35.013944+00	874
b25244b66cef00a79887d271c4fe06198cef17eb	2021-12-14 14:00:47.029322+00	875
aab0660270d807fceaf40bacdf6863b6a63c0880	2021-12-14 14:07:00.800223+00	876
f24d565274103c03ec28b18807aa0caf38b52dca	2021-12-14 14:07:46.172472+00	877
4df4714adab0e8a8488f5b048e252cd916de2793	2021-12-14 14:14:51.910129+00	878
a1330b98f210a359feaadae5c0bb2e3bc75d859e	2021-12-14 14:16:12.370778+00	879
6e020a315e8d93213fdb9eb5ebcac6011214a03e	2021-12-14 14:18:53.241321+00	880
76f7bccc4664a518ed8846da785434fe3f9daac1	2021-12-14 14:18:57.315201+00	881
82713eafe951179c37f1443e4f33807a576d646b	2021-12-14 14:19:36.343597+00	882
f00db952ef15089dbddf5ccc52c871718bbe353d	2021-12-14 14:19:55.50338+00	883
a04f42935c27a346187b72e7bb80999a84bd212f	2021-12-14 14:29:00.786391+00	884
12a4f7f8da3cab9671527a98e5c9d563e6addd2f	2021-12-14 14:30:06.21893+00	885
a04d74cdbabbb2d2609d4a2ad350e91b48d4ab00	2021-12-14 14:30:21.211496+00	886
6a215d0156fa32fd027e0f57f23ccd19018907ac	2021-12-14 14:30:41.277978+00	887
625a808b2ce0d5493bb6ffe98d575976de708b83	2021-12-14 14:31:18.665266+00	888
4fe9a1d2cf6a1fd87f14b74eb786f23afebd70e7	2021-12-14 14:31:23.85324+00	889
fca575156167836e194344d30cf5343d0bc32240	2021-12-14 14:35:15.669722+00	890
b791a380cd3273393b6e92353bb517ee86ea6951	2021-12-14 14:35:22.61505+00	891
70f2b81b8643cd1fbd868a3894d7b30e82f10057	2021-12-14 14:38:40.614244+00	892
5015d528426e765c4ae4c33b664d4ba8740fe263	2021-12-14 14:39:04.786775+00	893
2af7b6cb77f429c9db86ffb8da5101453117995b	2021-12-14 14:42:20.21466+00	894
5b3db7b752a5712a85a977fa5c5655d2e8ea2ee6	2021-12-14 14:42:30.558275+00	895
32ede179fe8c6a7f46be25c80141a458fd83eae5	2021-12-14 14:46:54.53305+00	896
e3c9b81278dcad8929c2968ae99779dc568f4213	2021-12-14 14:47:39.356959+00	897
f0ae5e646d246f512c912f33e6924264d0e72423	2021-12-14 14:51:15.159247+00	898
b6cdf97eb424c6ac1c3a822d35ea3a539f1655b4	2021-12-14 14:53:40.987206+00	899
dc46f8a1a329848c63c07b13a513a91e4f0e3b41	2021-12-14 14:56:06.872473+00	900
a437fe2a1889bbfe9313c453663bd9ab95eaead9	2021-12-14 14:58:47.511967+00	901
92c6dd73199a5e38d9f5b1f5d6237d951da1f671	2021-12-14 15:00:54.326813+00	902
ac606f620acc352d3e7730958bf63bfcda359662	2021-12-14 15:03:07.315757+00	903
8fa0c266ff7a4ad37079d608406c2872c3ea21fe	2021-12-14 15:08:11.465373+00	904
943368c2f8454f2741937deb570958a694e2049d	2021-12-14 15:14:00.194077+00	905
4c4ee3842176d46eb1bf857334541e740a5a8bea	2021-12-14 15:26:39.309597+00	906
8ebb2bef9640c13667a6ba65a33bdb56c774987b	2021-12-14 15:31:47.196635+00	907
119fe1ff13700c0bfa3f3f1a1c15a9988a67f42c	2021-12-14 15:42:57.492075+00	908
29e2912a7e2cd4a5acf8f71b4a514048a62425b9	2021-12-14 15:50:11.27503+00	909
428a448ac798ddcf9000a3a25e189a36815a9153	2021-12-14 15:52:40.759974+00	910
4ca3ef3d6e29245d169e36c89a025cf809172405	2021-12-14 15:52:46.3938+00	911
5e316f25d25107ac57e92a643dd66b8d729cc258	2021-12-14 15:53:30.964383+00	912
34cdd2d4108742495a14c3ff5c56d5c0d88093d0	2021-12-14 15:53:52.3197+00	913
869b77e717f4d050df4d779c249ae43ceb08cbc9	2021-12-14 15:54:55.120091+00	914
6eae459c1aa0b0e1fe51d284c41f4d268e95bac1	2021-12-14 15:57:04.509719+00	915
cc6b7b487fb2e8866a10df62705390e752de5a07	2021-12-14 15:58:47.450919+00	916
aff315b6c60ad4528ab7caba69735543f1ecd268	2021-12-14 15:58:52.094924+00	917
c32c5daf5af341d20fa7d79d87bfe3846b2ab446	2021-12-14 16:03:57.76577+00	918
498b59bb79a3e9801986527d98aca2419bee7d23	2021-12-14 16:10:15.410413+00	919
d54771134552d13d19cd50e7a62193b6b9a097b8	2021-12-14 16:12:05.472815+00	920
e6dd4406fecc2af6d1a3a254138ea08e0da74a28	2021-12-14 16:17:00.281718+00	921
384e0cdb7c0ab0f5a3947335f533bf8a29512e95	2021-12-14 16:17:10.788173+00	922
e821dd2d3791bbe66891023be023bfeb25905f80	2021-12-14 16:17:41.526912+00	923
31082d122cf93b675bc6589afe4ee525e94975fa	2021-12-14 16:17:42.276379+00	924
9addaaeb08d745468caf3d119f7d59e55279922c	2021-12-14 16:17:48.534824+00	925
ef2e2f558753a570d39d7c2689eedbbef3880007	2021-12-14 16:17:58.289036+00	926
000b955a7a55bb23ec4124b5f6b895377a8c529c	2021-12-14 16:18:02.816571+00	927
0eb116ed7107e03140064f5a98b74e16eef31450	2021-12-14 16:18:16.582641+00	929
e25ffa7084a54f9a96133cc9ac41c5a3b2543385	2021-12-14 16:18:33.781557+00	930
2387a868a341498195dcc6b7312ae18b37591d29	2021-12-14 16:18:40.719866+00	931
b3ac7991a27de87e3ec99d85992391e5014ccf86	2021-12-14 16:18:50.278214+00	932
3013e8c39f734985168c765c346a4c93784ee528	2021-12-14 16:18:53.786441+00	933
1beda39241fe5f6919c6850471b0b9f4d94dc2b3	2021-12-14 16:18:54.508931+00	934
a40c4fdb27496bef821a711ee9601a3c6662e9ab	2021-12-14 16:18:56.337946+00	935
129e6bd54012a79df78d88ec8bca6cd60fd7c3b1	2021-12-14 16:19:00.423595+00	936
e7c389b0ebda5fc5c6dc307922bd44b7ffaef8f7	2021-12-14 16:19:07.460287+00	937
b894e206e2dc5c6c52b84a8b5045ced58304eb74	2021-12-14 16:19:07.687653+00	938
648a9be0555546047c3df9a29a2d25accadc4eb2	2021-12-14 16:19:10.325552+00	939
a8d743888c3f70dcbe92b8ecbbe9591d86e6ae8c	2021-12-14 16:19:12.452273+00	940
bd55aff03f837d4139d129825b43a3a0ccfb39b5	2021-12-14 16:19:15.946537+00	941
c05d038f664b414c50982980a4ecd3c3d253bf85	2021-12-14 16:19:17.250317+00	942
90ba436dc5f9002cde819aee7370edd629ac76ac	2021-12-14 16:19:19.00275+00	943
e684e94c5ef4a0712f3d969acfd285a739e5819e	2021-12-14 16:19:22.406065+00	944
0a6cb409d0fff51cdedb4974ac49f01298869dd6	2021-12-14 16:19:23.36923+00	945
5a8bab0c60637029ca9213500567a608c7ade04b	2021-12-14 16:19:33.847913+00	946
e1ff6d582a48e48e954b1d05c2ee208b5ad66c41	2021-12-14 16:19:34.182444+00	947
56244ca6d93b356ab3e888483cb16855bb5a6415	2021-12-14 16:19:38.19357+00	948
13c0d18326971345c20c03a7cfb5bc000c87d833	2021-12-14 16:19:44.634338+00	949
1d86f1454be78773b19945be92bca4d5a9c64160	2021-12-14 16:19:48.403487+00	950
4db930a4e18549615f6aaa23548a8788b5371324	2021-12-14 16:20:04.509937+00	951
d0125d487d4074bf1c72591c4ee9cea0d16ac64e	2021-12-14 16:20:06.329009+00	952
ca5805db16f8e73eec7950c5854c9f82127f8c4f	2021-12-14 16:20:19.020432+00	953
0c7c98d99031a6bc12f7b68f22c241981529c27b	2021-12-14 16:20:29.367942+00	954
a3081300e6fe5f30a7db6a18afc5ba251e81cae6	2021-12-14 16:20:41.474262+00	955
bb19598225808ad46773a7133a1450a73ef43234	2021-12-14 16:20:46.593805+00	956
c3b70cfa3275c44706872632794bd764919b34b9	2021-12-14 16:20:46.899971+00	957
6088c72e104e611dd00c376392eeabc49b470bba	2021-12-14 16:21:07.388492+00	958
27e4fe0cf39d7d0fbdc0a57379d7c5ca33f773d3	2021-12-14 16:21:28.372365+00	959
e58462ab79c97eb288cbab6533eb4156972d6d74	2021-12-14 16:21:32.312859+00	960
4d837bb8ede69de640de8ce53c29bb5436c6fff8	2021-12-14 16:21:47.683445+00	961
27d8aad06df3bf64dd23244950daf67dd196f488	2021-12-14 16:22:16.515448+00	962
bc75a8b96183c34049bdc8667f3d5263bbde9c8d	2021-12-14 16:22:16.632112+00	963
c64c5596fc5cba7a566baad78b077ae890da8304	2021-12-14 16:22:27.259372+00	964
7f8744a157fff3d0530d382c3d7593b9cbcdf8d5	2021-12-14 16:22:59.828377+00	965
0893b77d55b2f91da565434d857e60b06ba9fee0	2021-12-14 16:23:43.643027+00	966
b36862c4bbb054331b057a724553ddae576900c9	2021-12-14 16:23:53.079686+00	967
6a2558f07c1cec66a47f4a48f99033d2fd8e3239	2021-12-14 16:23:56.21978+00	968
696563c1bb05a927f2ab7808d40c4cbb2e44b47b	2021-12-14 16:24:02.704407+00	969
c0e518e2fa153e975bf86658698ca72f02fa2f6f	2021-12-14 16:24:04.789555+00	970
38ffa050c8cf5d528dfdf21aab3c43d61c3b1363	2021-12-14 16:24:07.436478+00	971
62fe348da60158e937ecafa3abc3de85c8ecafd2	2021-12-14 16:24:56.699146+00	972
763b0bf95300981cd475ba702b7dde887e0608a6	2021-12-14 16:25:00.568875+00	973
ac05776e270d31de582e8f3a13b3e4200434b3ab	2021-12-14 16:25:02.59847+00	974
63ba58c18710dd6d64bb0fe96cb5b86d5f963052	2021-12-14 16:25:05.410186+00	975
525daf4507103fdfa17903eacb8192dd17354269	2021-12-14 16:25:06.043586+00	976
50a7812b0cb9dcc06b1facb314996b35346bdfb1	2021-12-14 16:25:12.209136+00	977
7d49f86c22f859d837841b8bddebdb8e2a0f874e	2021-12-14 16:25:14.866353+00	978
3bce083d60fb1ac17d7d299e43ef2e77a0431efd	2021-12-14 16:25:17.993916+00	979
8abdefb21d27d57fa6b69d4ce08a73c22d271c17	2021-12-14 16:25:18.545008+00	980
249a24a8903eaac90cfeb271bd3b7413e71e04d4	2021-12-14 16:25:20.14876+00	981
069a6fb78f7d9ef0a4e382d1bb778fd356f0a780	2021-12-14 16:25:27.864644+00	982
72bf0d27e2552e404a9d27c819529c3d106f5f8a	2021-12-14 16:25:37.727203+00	983
b5f77b2fdf39c7c52e305e59b7bf9adf1a6f3e33	2021-12-14 16:25:59.295332+00	984
2a04536dcbb1c9e7199b3e16f839b1bb6657e49c	2021-12-14 16:26:08.512192+00	985
130ec701307483d9a87dea205576bc4271416f24	2021-12-14 16:26:19.514721+00	986
95b115e1062781fd3deeca3ef36d1a455f06435c	2021-12-14 16:26:26.751815+00	987
f13da5986466c63697e87f94370f3c87e9d73c65	2021-12-14 16:26:27.18477+00	988
cbbb92797ebd9d26657d282f4241c8aa2337f2f8	2021-12-14 16:26:38.679147+00	989
414a1607b16771506317c0ce3faf4d606d388384	2021-12-14 16:26:46.09262+00	990
165e7ce1d3b11eb036e4208d8ccbb76140c4c501	2021-12-14 16:27:08.277666+00	991
e11bf9bce47a8f839b57880e3815ed21d3e98556	2021-12-14 16:27:10.500121+00	992
5a9d210db255d834af51cb0a69245cfb28a939dd	2021-12-14 16:27:46.342113+00	993
b7ef52fc3ae7b6bf74908cbcd96d5196304d4d01	2021-12-14 16:27:46.849858+00	994
ff61f8ea2b2058733e57f5907ea98041183be2f2	2021-12-14 16:27:58.209972+00	995
2c4e8a3d50f00b9e1f0adef8d5f18d0e4c49a714	2021-12-14 16:28:31.397275+00	996
6d9b3d924da206eb32a3e4276e3556c165b6e2be	2021-12-14 16:28:41.04439+00	997
a8972dc99b37bd0da35ccbf7472aa6825aac1f5f	2021-12-14 16:28:48.729012+00	998
ff23a69027a676e54b3fecd1c0687047d44a0aa8	2021-12-14 16:28:53.342325+00	999
c287d5cb83193f32b25d0a98f572ff5da23941c5	2021-12-14 16:29:15.849128+00	1000
a998fa4444cdba623812f10b86781fd16d35ec13	2021-12-14 16:29:26.402608+00	1001
039f856b1e90fd5fd2c3b77aed0381dcdc0f409c	2021-12-14 16:29:27.817448+00	1002
fb45d3f9a99e4e2ae7f08b798c2ab58c6cd9eec8	2021-12-14 16:29:29.731238+00	1003
ad835775420ae7f87a95c01507461e6dafad784e	2021-12-14 16:29:31.133773+00	1004
fd69c14f023d1bf899b5d66d3c1e3fb1f991f640	2021-12-14 16:29:40.634847+00	1005
6e615901a474352ff989ad5c9483d9c86a9a16c0	2021-12-14 16:29:52.370377+00	1006
8d0f38f13a939977da7ca21fe965ee3687953da2	2021-12-14 16:30:00.428448+00	1007
14cf18c44fd1c532beb750cd478de2639709abe7	2021-12-14 16:30:13.954814+00	1008
cb77160a48edcfb97819ad535355a382bbfd44b7	2021-12-14 16:30:18.716375+00	1009
d6fbf22f673c3e14d99076b0acfcbd9458d2f464	2021-12-14 16:30:27.581895+00	1010
91cfa1af0452846a13dc9946720ecf25bf4761cd	2021-12-14 16:30:45.230998+00	1011
a0b48e8f92cd6db2f65db88fa7f18e380d1db903	2021-12-14 16:31:04.181201+00	1012
b6639011e512dc011d79e21b5872b16ee647facd	2021-12-14 16:31:23.089104+00	1013
f638d0bbf8d7982a37c9cee0acd232d1fc2a0a5d	2021-12-14 16:31:39.021537+00	1014
3c7cf0947143372fa4dd025753c92409d8163e47	2021-12-14 16:32:08.661723+00	1015
4c257f0bd1e2f2dbb9b6720d887f169eab9ace51	2021-12-14 16:32:14.910329+00	1016
341f529a32753a0a1dae1bbbf67514879d9fa422	2021-12-14 16:32:23.464426+00	1017
33d5a4ee98fa85796db835b3d8c35bdcb7b82426	2021-12-14 16:32:25.270654+00	1018
2bbd48c6a54afe7a8fb382435436e3ef4c751399	2021-12-14 16:32:39.12719+00	1019
ae80fe7e4f40fb2343eb1f411a3121e291b55571	2021-12-14 16:32:55.800434+00	1020
cc9c0f94ca173a3cd325a93d28b5b917e4b3008d	2021-12-14 16:32:57.105241+00	1021
f570fd4532922b777aeaa0c07162a1e961cb9c96	2021-12-14 16:33:01.551955+00	1022
ea4d751e259fe33fac3e19771030b9e54cd490b3	2021-12-14 16:33:02.475692+00	1023
7150bd75436f4e723b20485c57cbb80eb855231e	2021-12-14 16:33:10.762749+00	1024
a8ca639bc41c133bc3bbf39be108a641be8a1ddb	2021-12-14 16:33:11.593378+00	1025
d4c4fff78a7c1c80dc1adf9367e8f39cbf73f323	2021-12-14 16:33:13.773475+00	1026
b2d1808a085574425f3b94680d78954936152fb9	2021-12-14 16:33:14.39149+00	1027
f98166098a010c1e29c92330d38f748d96949873	2021-12-14 16:33:36.405232+00	1028
5d2502403cf4071425fef039ec44a3cb42f10915	2021-12-14 16:33:41.562961+00	1029
8b1de32f940b6248faec244609f7dd09e95c78f7	2021-12-14 16:34:04.203067+00	1030
e1e7d331fe2dc53ab0e7d5bbd3f0aec84dbc31c1	2021-12-14 16:34:08.477846+00	1031
cbab4c8a121020739c3b71590594b244b46ab346	2021-12-14 16:34:16.630792+00	1032
804a8a3d89f7d361cd9e094cf30385093b5b6ef2	2021-12-14 16:34:20.226703+00	1033
1aeb085d8dce151069bd5db64be27e24b4c2c8f6	2021-12-14 16:34:34.843789+00	1034
bdebc8ab0c480aa58161c54759ce08d913276782	2021-12-14 16:34:39.211938+00	1035
576123d7f9882c97622bae3fff78b5b04c57e01a	2021-12-14 16:34:39.83629+00	1036
af3531e40ea5f569eec43c66cc6eade05924543b	2021-12-14 16:34:40.85907+00	1037
9ee7be94414df5cd8341590c5b1b6573bd8fa40a	2021-12-14 16:35:31.466641+00	1038
48c30022962280af51cfb295a9c64a94d96d117c	2021-12-14 16:35:45.062067+00	1039
92030b164bf6581a93ebf1d32211c96e130da0e8	2021-12-14 16:36:04.070761+00	1040
603e49e7d8d2d6bf9d03874737777230be6fcdf3	2021-12-14 16:36:05.081832+00	1041
b4c1c20c050c559f6999d0593ea6bf2615fdf3f7	2021-12-14 16:36:10.338639+00	1042
57bf194bd96c525c56a89e4517300a75fdbdb5b5	2021-12-14 16:36:14.351531+00	1043
4aac1d9aa0b6b075a5ad1922d235198fa649c8af	2021-12-14 16:36:20.942065+00	1044
e7344f1dd24e92d40db6b43c83c9ca7cb0333fba	2021-12-14 16:36:40.48709+00	1045
3f6eaad5b5bf187c66536d15c94135645d3a2598	2021-12-14 16:37:07.378227+00	1046
a91be17b132048a83a2dd5d18a25a9c857a378f7	2021-12-14 16:37:18.328451+00	1047
c58e4fddac204c47708d38875168dc71872ff234	2021-12-14 16:37:43.460098+00	1048
02079e5f3228ffb063865c0cb7051468219716bf	2021-12-14 16:37:49.591668+00	1049
66699b4b9d8b9fa54ddf435f5c0785cfa13c8015	2021-12-14 16:37:50.636789+00	1050
6657b1908639e6009bd931ffb38a1d789342d011	2021-12-14 16:37:58.710278+00	1051
681fd0afe950bf1bfa33e37d7454629a07aea424	2021-12-14 16:37:58.780091+00	1052
eacfbf67d43ae3c877b7784f07ee59ec3edc0b58	2021-12-14 16:38:04.43422+00	1053
bd8db3284700658adbff324fcd3841ed1b2ab352	2021-12-14 16:38:05.564982+00	1054
77a6d760daf197c7856bcd0552b97e7b193f1d34	2021-12-14 16:38:06.078612+00	1055
eef1ec3b824b61eabea1a79004081fa48eda0fe4	2021-12-14 16:38:10.389481+00	1056
7ebc96afc62879561829939483ae875f615c7f85	2021-12-14 16:38:47.365897+00	1057
298d7c4e1866887926a4075512c061c571f9ecf1	2021-12-14 16:39:09.003962+00	1058
e69d540aedb40031cda6a5e27f172f321c2943ba	2021-12-14 16:39:27.426677+00	1059
e7408f1dd347c32611bea7eddbf2802df0f7323e	2021-12-14 16:39:40.195019+00	1060
fa71030a1c41c48e77bbb234a3948df45b87273b	2021-12-14 16:39:46.012042+00	1061
c3489266bcf0753176a01446ad6a93fc078025db	2021-12-14 16:40:44.261545+00	1062
77f40269485ff82b40f545524f8dd517c14822a7	2021-12-14 16:41:25.130732+00	1063
654e71edcef22c854202d917c4d5b6f73e7e9a00	2021-12-14 16:41:36.647381+00	1064
56d32a0faea29bb6f83cf35db7e5de3a23ddc413	2021-12-14 16:44:23.056838+00	1065
439f3ece33e11504c25adff99afd4d39518128d1	2021-12-14 16:44:47.60747+00	1066
ddb725854f383de08891834ae858f3faf24b4274	2021-12-14 16:45:26.235744+00	1067
be169e3e00ef6a85fb9fb45ccddc8b88a5e80dca	2021-12-14 16:45:48.026718+00	1068
3cbc851062a7075a819c85c4d637cb0632156cd5	2021-12-14 16:46:03.60467+00	1069
2c528ec1e991bcad9f0bbcd53e237a35cc80fb90	2021-12-14 16:46:21.360193+00	1070
e08eeb043afd4989c1f57da1eb52dbac028a3017	2021-12-14 16:50:21.653849+00	1071
b19f08d03db32d958b0fce265f586659281970ad	2021-12-14 16:51:36.707629+00	1072
fecb029328f0a374d477ebacb9b883822c547d32	2021-12-14 16:52:21.6184+00	1073
165b469743896df73428b3f0e00637ad32b72c60	2021-12-14 16:52:21.819211+00	1074
aff9cd216f5b1913e999ed44697669b6e07ed5c7	2021-12-14 16:52:32.543673+00	1075
9f57985d3dfcd981b3870d4cbae377f3504436b5	2021-12-14 16:52:38.634893+00	1076
7382b1a24d310f9282f0103c037addda492305a9	2021-12-14 16:52:53.679157+00	1077
ba96ebb52f92bb5f368d322d4da5490082bd96d3	2021-12-14 16:53:11.957619+00	1078
bee0f97c663bde1c935365a261c2f1695d643b0a	2021-12-14 16:53:47.358643+00	1079
25016b8e377408550ee7765b2cb3f4dd19010426	2021-12-14 16:53:53.523449+00	1080
78e4494bcc1b71eba6d34ddeba26aa4eb04fe6be	2021-12-14 16:54:05.344979+00	1081
95b1fcb8d9f46adcc9c8f755d2908c0a0474e8b3	2021-12-14 16:56:52.265518+00	1082
4faf6b3e2203dadea627dd803e06455b86c8c036	2021-12-14 16:57:16.764895+00	1083
4c2cf397d2e488baeba7f1bf2b53594a62d0417f	2021-12-14 16:58:24.235989+00	1084
a8e0964b04a30a36c8e5ec2edeb0e0ae94e0b375	2021-12-14 16:58:57.586476+00	1085
bb4331683482a97d331c6ca8958eb3e318d0645f	2021-12-14 16:59:25.24645+00	1086
aad0e81ac0d580858020d9177a8ae0596d0a28fa	2021-12-14 17:00:53.574283+00	1087
faa5c14c33d0348122ce55520fdec98321570753	2021-12-14 17:02:26.673751+00	1088
a87619f0fa51a253b32181a77be3b920e0a20862	2021-12-14 17:03:03.30065+00	1089
653680c0445a68796588829b7e57d01718974cba	2021-12-14 17:03:48.8531+00	1090
6178fb5a127dfaccb8fc7c9c181fdfc0779ac726	2021-12-14 17:04:02.530733+00	1091
8322574c4c1433b9d41be984c4e1f740c9f14bb6	2021-12-14 17:04:16.311598+00	1092
a948d070d6641bf3d40c354b4e9a0d6f9ce349fe	2021-12-14 17:04:58.165596+00	1093
40463cc951b7598bdd5a313000753c077ba0a937	2021-12-14 17:06:00.369901+00	1094
3ffd66b112253f19ef18e91a2b0fdcf365feb8f1	2021-12-14 17:06:06.015949+00	1095
a0906c0710a735761efde3166038ce2231e6ea0f	2021-12-14 17:06:17.950503+00	1096
c657a1732fb0b1239bb4a689cc558f247a7cec97	2021-12-14 17:07:37.321918+00	1097
efc59723d0722dc5deb825f7061ac57bb9e54bbe	2021-12-14 17:07:45.189034+00	1098
9397c6939dd4533b87b3ff6c815dee6abc1c647e	2021-12-14 17:09:28.015011+00	1099
bf7e31c42bc419d2f08f051384f5d6cd8ef76546	2021-12-14 17:09:39.176093+00	1100
f1568dc9af3e200dcf95d658c19e23da9d549126	2021-12-14 17:09:56.293732+00	1101
ee9425b7eb04d14926449767cfc7d0276e0f9633	2021-12-14 17:11:32.877497+00	1102
c34faca4d78c3b4088fb0a046ddbaa842197bb54	2021-12-14 17:12:10.911503+00	1103
2fc31ee983d818d7aae32c4e08f874deec2e90a3	2021-12-14 17:12:16.693+00	1104
a1d08169c28a1d4ec4ad045b6cd217d98b2ef809	2021-12-14 17:12:51.726202+00	1105
1f65f1aaaacb615cf8292f2a75b756d30aa72f3b	2021-12-14 17:13:23.373358+00	1106
dafbe5bb03fadcc461d158b4c4748996d8912055	2021-12-14 17:14:39.898672+00	1107
0518a14545ea8987ece270b1fe5ef7ba1e5039ee	2021-12-14 17:14:39.984333+00	1108
25f2e11a704c2b0ed1d07eafe91403ea9e766211	2021-12-14 17:15:11.324187+00	1109
e282108e63616c3455a4c53816b497a833dcb082	2021-12-14 17:15:48.89561+00	1110
d576bcad03390c72c77eb892cb8a8ac8dfc9f131	2021-12-14 17:16:59.248311+00	1111
27c35cd6c321d68d705747924ef359a549600936	2021-12-14 17:17:05.101361+00	1112
7d7c9cee91571490c122bd454111569344a1501c	2021-12-14 17:17:15.330516+00	1113
ebe97453362e7d1dab2355d36b58e7e1165f9378	2021-12-14 17:17:27.770419+00	1114
5a708b1e38adaac73b88a7bdb628629f069f8dae	2021-12-14 17:17:40.611058+00	1115
5d902bd96d68ca7738b7af00335ac7090bce900c	2021-12-14 17:18:07.550122+00	1116
87285d5c2b6ed43b90577c70731d02425b34e544	2021-12-14 17:18:31.780617+00	1117
1da8d5416158cad10093febefea216a1b73449bf	2021-12-14 17:19:21.055342+00	1118
0bfec2be71ed6526f0803afc479c2d9341b8714b	2021-12-14 17:20:48.417058+00	1119
83ecadf6324ab25406d550c33b6376a33f07b009	2021-12-14 17:22:33.749062+00	1120
5a8fedcc78a8baef08ccc3e290df433741c92aa7	2021-12-14 17:23:42.537143+00	1121
b3bfb413ed5206722645d08d3225f7cab3beb6b2	2021-12-14 17:23:50.810555+00	1122
797b3489f5f8fa863de3d8a00daf83cc0752a91d	2021-12-14 17:25:24.82462+00	1123
c752070d11ccb97b17df180d8feb8797588783d4	2021-12-14 17:25:30.389086+00	1124
8bbe55821bc8ea1c02d0cfdf3ad017a685668f2c	2021-12-14 17:26:07.286091+00	1125
1f2d20fd5e88eb857cb490d7fe4c31f430f5f2d2	2021-12-14 17:26:14.629096+00	1126
6327030d52c083b76e1ebbd7211d738e434a0748	2021-12-14 17:26:18.355349+00	1127
8a04f164708013a9230f27d929712264286c6e71	2021-12-14 17:26:52.20928+00	1128
df2e6f830ae4c50b7af507e4c2628c09206271bb	2021-12-14 17:27:30.493814+00	1129
17018a3d7a67c99dbd9d418b6e4c8fd5a31ca26e	2021-12-14 17:27:34.785803+00	1130
ec9415aa6edc47d6ef3332c6c399ae89d221169b	2021-12-14 17:29:14.533672+00	1131
6877adff609b0a529bcb529454a145504d513e1d	2021-12-14 17:30:54.051578+00	1132
0366b3c988309cd20cc7f96d170734997495d93e	2021-12-14 17:31:53.942278+00	1133
c72ffb1786fe2e2b79fde6cd64c32d9704a5c346	2021-12-14 17:32:02.170361+00	1134
5fd0359cca9e4333ce7a1afd6adb23e2438ccba7	2021-12-14 17:32:07.479385+00	1135
03e266d2ede8295df6473900d6e494ff9ab4dade	2021-12-14 17:32:09.086413+00	1136
6668067886ab08d112f11cc22122c9cc4e5f8c35	2021-12-14 17:32:18.016336+00	1137
bc531831c69a5779aa66906a27e5cf72767a177e	2021-12-14 17:34:35.879006+00	1138
8415c6fabeba2658a51288bfb5bfca68b98fa6f7	2021-12-14 17:34:57.934339+00	1139
ce15f6de69ae37168cb370b6415b2b641e05705f	2021-12-14 17:35:08.39205+00	1140
aa5f142ed1b3d072d34f0b29109472aded8e440f	2021-12-14 17:35:19.777819+00	1141
dad2b0cdf27f083eac6eb80d6855e1a392fff210	2021-12-14 17:35:30.985228+00	1142
ed00f05458a92496f471928b8e64d97583ba1cdf	2021-12-14 17:35:34.396267+00	1143
a2f490b166921921d5388dd2d243c7e036e502fd	2021-12-14 17:38:08.754528+00	1144
dcc3339b573e7a826dda20a9997ebbc3bd18fc1a	2021-12-14 17:38:49.378334+00	1145
882776954f4cc6693476c7db572aebd350b450b5	2021-12-14 17:39:08.534352+00	1146
9b75c27d98f657ef55120fea1b202acad3e15891	2021-12-14 17:39:40.449762+00	1147
d24a5c87ee7815de6d5fcdec8c13b3b10d6a6020	2021-12-14 17:40:11.725435+00	1148
831e57f59298d341a05d222267aedad106432dfd	2021-12-14 17:42:02.183884+00	1149
2c604e55e95b186e367b19a01e63b24f5ce530b4	2021-12-14 17:43:34.686269+00	1150
6088a79ced32fc2a107f19a93d4711af957f7bae	2021-12-14 17:44:22.575148+00	1151
ec40dfd651cf31e62fbe3a66266cffa74d832482	2021-12-14 17:45:25.595269+00	1152
bc46ca2d8f07f9d76280350a0bdc1b3f3ae8541a	2021-12-14 17:45:36.956153+00	1153
d85dfe85fe2990646beec11ec801ab3151aa1dbe	2021-12-14 17:45:52.752843+00	1154
06e46fcc672484b2a67c9059484930b66f0a69c4	2021-12-14 17:47:03.174055+00	1155
83e2a39d026da48a0d83588f05c8690391f76971	2021-12-14 17:47:04.270494+00	1156
b1eb6599526d045653089061f9e0da4746520c57	2021-12-14 17:47:12.426554+00	1157
72d00554eeaac77bc867701cc09652cea201725d	2021-12-14 17:47:13.80006+00	1158
16220c96479ca5ea22d807a9307aedf7b7e15d84	2021-12-14 17:48:04.390561+00	1159
c1f95e980bd749619f4b56df27714147f5b7aa39	2021-12-14 17:48:21.482418+00	1160
ada0de8131c44ba5d4a647f369ec0d50cd683189	2021-12-14 17:48:58.312139+00	1161
04fa7137277635c964c6a73102afd9c9b499a34b	2021-12-14 17:50:35.342164+00	1162
77da65988250cfae9b68ce98606f4ed0b9411f99	2021-12-14 17:50:37.685255+00	1163
29f3a8cede2444f5524ab20b72596d57c2b251b3	2021-12-14 17:50:55.019933+00	1164
162823ef4749e61132e0b475f099a7ac25d4453b	2021-12-14 17:52:16.563614+00	1165
058ab9ede251b8235efa1edfcae37e11a177e997	2021-12-14 17:52:22.511415+00	1166
55a6598c38f9ea6210f17b66516110a897105d0d	2021-12-14 17:52:34.123498+00	1167
9004fac098da19914acd0ed941d1ae88275e8777	2021-12-14 17:54:57.969278+00	1168
649cbf2443872026285eba25eee85144d66400bf	2021-12-14 17:55:03.075184+00	1169
8a1de98dbaf40771a1d33b22a3d1403092b69be3	2021-12-14 17:58:53.914635+00	1170
83e6ffa7334fb8905b059409844b8d6f9511e2ac	2021-12-14 17:59:06.869592+00	1171
aebbdee54100f589f33daa6c5e20bfe3cd8f86b2	2021-12-14 17:59:16.105635+00	1172
bf1d9469172eb31569555e334575761b8c2e2587	2021-12-14 18:01:06.981205+00	1173
44bc4f7e6343ddef609976cb64b98eebc756db89	2021-12-14 18:01:40.918175+00	1174
1cffed9dbd7190a2c95d963b889ef379d28b85db	2021-12-14 18:03:17.410256+00	1175
ba8818c40c517bb35bf91025c17650c9637ff36c	2021-12-14 18:05:29.755053+00	1176
5de46b1d1006852f4513c6247a2417bc2c432f29	2021-12-14 18:06:19.4844+00	1177
cdeb06e3cf450ce17ffa64aa743afe5df960cc3e	2021-12-14 18:06:53.764557+00	1178
f37044d9a154951ffb12b9c94c0566b047d2bbda	2021-12-14 18:07:04.068852+00	1179
ca87f6f5a9e43387afa3dd204a3263ca045ddfef	2021-12-14 18:09:14.393803+00	1180
065b644c581ab39e0f8640809f815dca134de40c	2021-12-14 18:09:53.49872+00	1181
77f52552b55cbe1609986af78abab1a92688d51d	2021-12-14 18:10:38.159933+00	1182
4f86390bb1f2a9a2274abe0d2f3c9e276e827c18	2021-12-14 18:11:46.845442+00	1183
6c20e7c98454aa8e9a2767281d1b90379272cca4	2021-12-14 18:12:35.168325+00	1184
5171f51ebdff104d83d9e7e11cae80ce739af0e9	2021-12-14 18:15:47.793561+00	1185
0293a883521019af3e593621eedf01ae62306555	2021-12-14 18:22:22.572358+00	1186
256feb5ebe13fb4fdc311227cc85efdeac43a326	2021-12-14 18:25:15.140799+00	1187
dd93386b35790a61ba0f22dd39a805892b4ebd79	2021-12-14 18:27:25.226403+00	1188
fc1c75a064a1de1528a11d6ce8ab22f76f5a4be9	2021-12-14 18:28:02.026736+00	1189
fc0238012b8aede61f994dd36014ae561b2dbfea	2021-12-14 18:29:05.346879+00	1190
948a5df15dd39d1070f4796efa0630ef24735d6b	2021-12-14 18:34:38.957273+00	1191
edf9ec7c109fe33222abf8794b56610f934537af	2021-12-14 18:35:49.782034+00	1192
f75385d519a6e2d6d6eadf6d6e0d35eebdd50f57	2021-12-14 18:38:02.305808+00	1193
632f7462b65d2a0e86ddcf01dfb913e1f8ce8108	2021-12-14 18:46:22.170526+00	1194
1653987acbdb204138788b30b4b1d252eec6d764	2021-12-14 18:47:40.235721+00	1195
2027c8a8a50096917c809021008e770606f785ad	2021-12-14 18:55:00.89386+00	1196
ed27e3e6646759deec0fc2f8070f72f600158a12	2021-12-14 18:55:25.202957+00	1197
573dd9614fa7c62f68ce5e5a80d50ce89b71baf6	2021-12-14 19:00:14.915411+00	1198
3c3430e953eed5e07d7526f70d809789f2133467	2021-12-14 19:09:27.471462+00	1199
af815a05630bef68bdbfb05ec780c7011ad9c351	2021-12-14 19:10:04.942255+00	1200
779aeccc07821a3d86892f8cbc22accfae8e3801	2021-12-14 19:10:16.582682+00	1201
e25199afa871d849b4d7d8b082435413422a517e	2021-12-14 19:11:09.103737+00	1202
97b88ffc03516fd50b6fab24404ae53677bacb76	2021-12-14 19:13:04.692719+00	1203
b37d316b1bb0dffbeffeb70688b03279706891ee	2021-12-14 19:18:48.112259+00	1204
ea83f96f088506ab4a0fa6589a3ce316c4325d1b	2021-12-14 19:21:34.515832+00	1205
5d8f4983560f69f151f5deaa82a14f3fb2e411c2	2021-12-14 19:23:13.890416+00	1206
8cef4ec8ffbafc9c09a03e134fbba1f3199bda05	2021-12-14 19:32:18.554597+00	1207
9ccd6fd6f01aeccd21b15d66c2261825d6b74704	2021-12-14 19:32:58.128387+00	1208
bfc608bb0abc74c9e4727ced5c0e870f5e34b96c	2021-12-14 19:38:22.46781+00	1209
85fe242a6b4b2e057d32c629dc6971344bccf07e	2021-12-14 19:45:06.1648+00	1210
0738994c3156dbc401e652bd6d6c9f25e892732b	2021-12-14 19:50:29.915007+00	1211
891d27c2c8d5878fe3778a3b9a5d206c4deff0b8	2021-12-14 19:50:45.141653+00	1212
1601315d568028ce72234de7b0e8ec6641cdc4c3	2021-12-14 19:51:38.146879+00	1213
d7249031caeb05e02b5899160edd8444b8dccced	2021-12-14 19:52:12.209132+00	1214
c6e97c4a0b5080e6b6f0ba84481690d5e109d416	2021-12-14 20:08:18.226662+00	1215
63581468b55f84a01ad17f34964e10efa271bcaa	2021-12-14 20:14:00.573908+00	1216
7d71b2c61e3fd643c23dd4dae4819089ea64e8cd	2021-12-14 20:23:59.346164+00	1217
2523c5480644c84c0f8da86292a11cd1bce3e5d9	2021-12-14 20:28:55.484934+00	1218
c13094ff4f10689926cc5aeef2aa5400b4a12a40	2021-12-14 20:30:11.726889+00	1219
87c6e56fd9e5df5f55792d0b8831edb4b008a740	2021-12-14 20:33:17.059683+00	1220
3070ad49fb5568a4220ee64768dbfb82f3c0b52d	2021-12-14 20:37:16.326681+00	1221
33de8941129c644e99713d5f1055d698e889ea3b	2021-12-14 20:39:58.921788+00	1222
596edee8598b585df8cca24222c32a0f923b32a0	2021-12-14 20:40:56.674685+00	1223
930d6ac61f791c97c58fec48e06ed31a639e2b02	2021-12-14 20:42:19.977911+00	1224
a50a460fc46af08619b5c3e06d17358d940a5bb0	2021-12-14 20:50:34.867233+00	1225
1da6246b1f2ec6cce1488e646d74b213e4436b19	2021-12-14 20:52:10.137831+00	1226
ea1055ce67008cc23bb3a8e66ac7000404b8b141	2021-12-14 21:01:29.482773+00	1227
ae625b8583cb05ab101ff25075ea13a84d6d3526	2021-12-14 21:02:24.272189+00	1228
68dc6473457eb58ee55b3d0d5dc82d8a95cb9fd3	2021-12-14 21:03:34.196624+00	1229
51858bb1207e317a28f541c3bca49cd1b4db6d5a	2021-12-14 21:05:10.877466+00	1230
dba84373ac30b16748ccd4c82f25c17f99360c3e	2021-12-14 21:10:08.901548+00	1231
2d4aa24933b5bcc95f377473853b9501446b5c8b	2021-12-14 21:16:30.59891+00	1232
7718ac0e07fcf51d63634a054af044e852056a9c	2021-12-14 21:33:33.000404+00	1233
74a0ded58b2d19da237697ef9282ffadf89087d2	2021-12-14 21:35:42.699757+00	1234
e06e07d03999a8e5fbd780ff3f06fc33c5e8c7f1	2021-12-14 21:43:24.588428+00	1235
8de3e4cadd6ae3a81940cbecd473384c663f36cd	2021-12-14 21:45:37.188014+00	1236
f6e2725e78381ab8a1826bb9f6bd561010cf197d	2021-12-14 22:09:42.434932+00	1237
7afa2e0991a86a4b2dfe44203bdfb1da823ffee6	2021-12-14 22:18:07.510588+00	1238
e10cf771cd11c7d61cf47fe2edc02beab00c4fda	2021-12-14 22:32:42.05528+00	1239
3b07a648b49104c69593049a6971adbcd7be610f	2021-12-14 22:36:39.777637+00	1240
70cca9b0d964a244faab4730e92e737b96e5615d	2021-12-14 23:00:00.313737+00	1241
1b0b14a377dcd34290458a3bd4b2c8b52b63c7ad	2021-12-14 23:07:14.47551+00	1242
37ca724e67906f73132eff31d62849aebbd65058	2021-12-14 23:08:43.434424+00	1243
f4dba653facdb5cd5f35db7299a9d02e7bc50885	2021-12-15 01:12:30.926288+00	1244
9f4bd6dca150a006272932e42763cd72bcfeff8a	2021-12-15 01:27:08.375441+00	1245
0f87436fca31a6484a5c3fd6db9717ea95ae7126	2021-12-15 01:41:43.56231+00	1246
ab695aef74956214783c75fd43b90adbec67968e	2021-12-15 01:50:04.16481+00	1247
74c455daa60a2eab61063ce439c1dd368e1d0057	2021-12-15 01:52:36.454037+00	1248
3e4171099565e4d74b0b3a436e125251ee355491	2021-12-15 02:55:04.45256+00	1249
72de51b8617fed49f22a5359f15208bf4228212d	2021-12-15 02:56:46.149438+00	1250
cadb2a96451a2667b83b46774c8ff676fc23b095	2021-12-15 03:00:40.626193+00	1251
9efd3039f15719eec9ea313606ebf4dec635f4a5	2021-12-15 03:07:07.668367+00	1252
db2470dfac5ae041ef4fde13212146444166c10a	2021-12-15 03:16:41.738498+00	1253
486c5fb6d92ad6aec1781b21ee0c53b9239a0278	2021-12-15 03:17:35.738691+00	1254
5248d4e68e7b257bbf7372d47efc2d090de511af	2021-12-15 03:36:57.662855+00	1255
c7400278d1254b2cabd96fcd5055c137f31956ce	2021-12-15 03:39:15.902027+00	1256
53c2c98dd30f6258d30b250488d34ec589d89c0a	2021-12-15 04:13:28.637555+00	1257
a5dd9a85be724e0ec0f36ddd469729d192479e82	2021-12-15 04:24:40.904917+00	1258
b72f0facff0a9912de66e7a1ddff6a322ea572ae	2021-12-15 04:24:42.792636+00	1259
b094f2d74c69e9511ccfbda2132dc7ce074e75fd	2021-12-15 04:35:13.795932+00	1260
8609f40d1e04addbe8e88343424599b02abfd3f1	2021-12-15 04:36:37.815692+00	1261
d3dc21b9bc4fd64495b1b8d8e5da8abcdbf8b81f	2021-12-15 05:14:26.16711+00	1262
688b58ceb9869e04ce59a7e3c1f05914d895ebd0	2021-12-15 05:25:10.959919+00	1263
9e8e0aaf9ac905a0690ea06388e6b01431521370	2021-12-15 05:28:09.332632+00	1264
ce380f9a420de2a35a285ba85199e6d93ce1b826	2021-12-15 05:33:41.398312+00	1265
39c6063ec53dd0e54732c3eaf2e95ec91b8b09c5	2021-12-15 05:38:07.937501+00	1266
479c436dc97228066a28d5139dd4d1fa97155d33	2021-12-15 05:54:18.271924+00	1267
4473ff6b644f728967e5de03d6dee316f4106c96	2021-12-15 05:54:27.123874+00	1268
14aeb66cd577a58465da9a4fc43fe40ffb0ea489	2021-12-15 06:03:53.016499+00	1269
410cb62ab7010c7fb1e74ef6f49cad893f69dd7a	2021-12-15 06:06:52.709325+00	1270
956e0bfd51f76128754fb096108e4f3b7938a05b	2021-12-15 06:15:42.195501+00	1271
895a2df449eca3d0d5d6284a155268bea3526ab0	2021-12-15 06:16:27.775356+00	1272
11687e165fad8e7c49ad7d4e552fd6377ed6e526	2021-12-15 06:37:45.205222+00	1273
097481c56d11925c54c3e556118d84280922062f	2021-12-15 06:42:04.799432+00	1274
e7c6bb3454cd798328e48219dcc80d7b5be6766a	2021-12-15 06:48:47.613832+00	1275
817f6ff7d375c251e4c8449e9ffdb29b5680579e	2021-12-15 06:57:08.439659+00	1276
3affdf6d258d433ae39f22fe378f361e3f5ee7f0	2021-12-15 07:05:51.236145+00	1277
58a80764371e1352ac98d2076c1ebd2ee39ee054	2021-12-15 07:28:09.905508+00	1278
3c3c449de394d96c8b1dd1eec87fec40c0a2e8d0	2021-12-15 07:41:33.730457+00	1279
7a9c07bed56024a8c1d2e5c972339c1c69099d83	2021-12-15 07:44:50.285731+00	1280
08738291e4efd5a0796ef34b509e9a5b9cce509b	2021-12-15 07:49:31.043063+00	1281
e64b3912971a5bf3a23843221a7d6f6cdb5e5057	2021-12-15 07:55:51.710466+00	1282
6ae4e8fbd93dad0b47b182f6cefd54ce5d266e9b	2021-12-15 08:01:44.157453+00	1283
83e91690195a857ae933421516bb4506c31ce3e8	2021-12-15 08:35:14.323148+00	1284
3eae38516e17eb64b2bd8fef1a52254ed7ac47d1	2021-12-15 08:37:26.522232+00	1285
9df5851ad9dc0622a6adbbf57445142441447768	2021-12-15 08:37:29.124301+00	1286
be358a7227f22e8ae90130c1668cad0ca80173b1	2021-12-15 08:44:03.448913+00	1287
8c95e79df844da88328e06390dee033ccb95a08d	2021-12-15 08:48:28.88931+00	1288
7f300e6db99bb17fa34253134e8459d762bcbd06	2021-12-15 08:50:37.800643+00	1289
d5a304bca0dba40c956d9b3823fca29a0ee17b5a	2021-12-15 08:59:38.680736+00	1290
abbeba4c568689cc4c41fa15d1bb3f76b73796b1	2021-12-15 09:21:15.621563+00	1291
43a42dcc7b4608771bfc7073f28b691d5dcd8d5b	2021-12-15 09:32:20.547565+00	1292
d362d383f694e258e28a1d0abccd1b529034e67a	2021-12-15 09:57:14.883025+00	1293
009e863ab05ab95657e58726fe63008c70d74cc4	2021-12-15 10:04:14.767707+00	1294
89e1f6246bad346db9ad3a831ce91438fa9ddd6c	2021-12-15 10:04:52.775252+00	1295
cd6fa0e3c97fe41b6e64daf9fb299306ac323f54	2021-12-15 10:15:42.994322+00	1296
17d19c92d8f08529c3c393d41e9cfa1a7b63660b	2021-12-15 10:22:38.767162+00	1297
54f5137bff2e8dc7d253414b854506b6452da549	2021-12-15 10:25:13.042515+00	1298
51ebdaf6ec6c9f2a3f1cba4c0e0e030bcf1562cb	2021-12-15 10:37:17.400879+00	1299
bc262dfdb905e0893e472967dafec48692de477f	2021-12-15 10:49:32.034897+00	1300
5cd6f52d09a38a22c6f5dc3cfef991fc7cba36b6	2021-12-15 10:59:15.240881+00	1301
16f2e35dd16e2e0a059133826798689561c0a609	2021-12-15 11:13:03.881591+00	1302
ab95d7bf2493a8b4c350e60946fad152291801fb	2021-12-15 11:16:23.700286+00	1303
809ca65ffd797972871e43e37b88c07f78e0468c	2021-12-15 11:18:12.42142+00	1304
9f7de8ad7662952fe3adfb1f65af1f56266ffe37	2021-12-15 11:30:20.540646+00	1305
aa09d54af7d20562028d0e40931690c1d1426e28	2021-12-15 11:30:38.150893+00	1306
717cb08b9d75d8e1222e6004b77290c4e5b93d32	2021-12-15 11:30:48.351353+00	1307
772f3c17713cd8014370cfb52ed2bc9039034753	2021-12-15 11:31:38.572061+00	1308
11b3235b4cfbf8663f1419dc5e0cc0fff1bd650a	2021-12-15 11:41:20.375345+00	1309
45c98d7473b89c365ab031d81257f0a264d7ff7a	2021-12-15 11:52:57.664581+00	1310
170807ef3039d3dd332122a501cc65a1cd875524	2021-12-15 11:53:58.146772+00	1311
bd0c23da0359594129f64e5764eed1e570ff74ba	2021-12-15 12:00:03.374038+00	1312
025077234e536a13338e63e0506c208707719aac	2021-12-15 12:12:09.550489+00	1313
0aa9406ef3e2aad8857bb48c24d032283376806f	2021-12-15 12:13:40.419844+00	1314
45a13f5f06bdac357a41284b643fdc9d6e2c3e5f	2021-12-15 12:15:12.525306+00	1315
75337fc2293e43b4753ac014b9e8b42241698f3c	2021-12-15 12:22:19.791305+00	1316
1fc3e847f8489d4da9ca09746cd2ae11538da23d	2021-12-15 12:24:50.813892+00	1317
666d57b22e8e7c2aa4403c5bdf3b1f732d5f241e	2021-12-15 12:25:35.538984+00	1318
5d38960096e805d236ebfb44563876432cc0b983	2021-12-15 12:28:32.595318+00	1319
fd080b1c8af09282238f84a627d4fe3f5fe043e9	2021-12-15 12:41:46.495739+00	1320
6437f5883d33e331be296cd878492271c6e7369f	2021-12-15 12:44:36.209858+00	1321
1eb6b5dcf07b5fa873717836ea85faabe6eb8189	2021-12-15 12:57:06.855116+00	1322
56a9cfc2939b5ade1eb1c16e746b36256e7f3f9d	2021-12-15 13:06:00.672147+00	1323
fd6c5d88214f8fafa5cfdda19ceb353765b9a79a	2021-12-15 13:13:44.298774+00	1324
cdfb4afd45c8c8e29f815a9278c24b7ad644686a	2021-12-15 13:13:54.321346+00	1325
844a250d05e9f91cb4c78c45411f53b2d82def61	2021-12-15 13:16:39.025247+00	1326
7b353319c268bbf9a634f68779c02553a9385e37	2021-12-15 13:51:00.627215+00	1327
f0265c78b5a53ed11a9741a20e82e1a375618818	2021-12-15 14:00:11.947847+00	1328
233c468ec831289ca4a8b1e91b13b8f89037883d	2021-12-15 14:05:31.72222+00	1329
7b01d9e4cbf1b6415cce3f87c1fa3a57d0feea33	2021-12-15 14:14:45.840918+00	1330
3916fb7388b68c587114fb5405654e4057a5b022	2021-12-15 14:25:47.291787+00	1331
6cf14175e0412e6d07b194576678fb63ef8f005e	2021-12-15 15:09:13.984856+00	1332
4b6e2c15f66380048cb7c4424335234555773b8b	2021-12-15 15:19:08.36005+00	1333
149d447738462a742d23d078e7ce1d9c1d1b2b2c	2021-12-15 15:20:20.780077+00	1334
fcc8d00a07d9fad5321ed38800d7204d8224d9d7	2021-12-15 15:23:25.985976+00	1335
b9d922f0905b0f47b1543e961a8395512c11deb6	2021-12-15 15:36:42.944418+00	1336
5c9da5632ccddccc687824867a83c205b5df85a5	2021-12-15 15:36:52.32733+00	1337
7cc4aa55dd555c2e18f53b099f661d9d60bc61d1	2021-12-15 15:48:53.346331+00	1338
8b02c497ad42509092eaaaa344191d891e6ad125	2021-12-15 16:08:59.93724+00	1339
1203b49f00d74e4213333f92944e26311b5a038c	2021-12-15 16:17:25.978045+00	1340
e89009c97ec0d107f8260eabb2e77cb411c1727c	2021-12-15 16:20:05.414188+00	1341
4ca4d30280300759bb557d55cbeb197da5b038d6	2021-12-15 16:26:35.860897+00	1342
70b271d59aed1af7c933773b0b828386cc7fa3c9	2021-12-15 16:29:21.920555+00	1343
a998662ab3c14c4d565437c3a58686c2bfe85bd1	2021-12-15 16:44:06.176406+00	1344
6683da24625333426a1ae7a14ba453f685abecfc	2021-12-15 16:55:54.932946+00	1345
5c742dc5aaa24a72da3e39b8dc3636104664ee90	2021-12-15 17:32:50.910425+00	1346
06f0e111e48804d8975921cb050bf4746a1c9cfe	2021-12-15 17:37:13.775547+00	1347
c6184a49b46e85e02a7f08b3dfaf24bd3b639c4b	2021-12-15 17:43:57.375815+00	1348
dc5642b69b990fa38492e5d3de5275a92cf7a038	2021-12-15 17:45:49.051087+00	1349
d34e73c1cea274d6594147ddcb8ebde362f15abc	2021-12-15 18:08:08.341465+00	1350
791f7041a7e73e02e1e1a236ab3032c4ef8fbf3e	2021-12-15 18:19:55.694663+00	1351
120fb9b43fb424e9aae1e5b47032cdd549fbba08	2021-12-15 18:25:12.386556+00	1352
2a35e97f0ad3f17f33ee5984d74812b6d54fe991	2021-12-15 19:01:14.911016+00	1353
33cb458a85242296aa0c53bcd8c346be34724411	2021-12-15 19:08:04.014776+00	1354
f442ddd3f7d96adbcede61912ffa842f91dd337e	2021-12-15 19:15:47.01479+00	1355
a4f3bcff3f32316964a2dd68ec02981d793fd646	2021-12-15 19:16:10.375169+00	1356
501273a1e51fdd7a4076834fd4c9e0f8edc2ca69	2021-12-15 19:40:20.253027+00	1357
0f2f163569fc5dcbe52c591fc858cb261c277a81	2021-12-15 21:00:31.106777+00	1358
2aa90519ec958ed789a1bbf36f9a71fcf3a47f10	2021-12-15 21:34:47.114876+00	1359
7ebae290ba15a0c54dfc520de6982d770749f3aa	2021-12-15 21:51:46.879921+00	1360
91c18d9a7bfc3716279f731b97f0a72df66d0f17	2021-12-15 21:54:18.083201+00	1361
6f48061810a84a30c8e39cb5b85fb9c2608f3f8a	2021-12-15 21:57:00.26149+00	1362
6f584bf7c735a60e44a817d7f0c323786fd2e2cc	2021-12-15 22:02:22.94218+00	1364
cb44cb35d94e2551bae91525e4c721b2099c1649	2021-12-15 22:27:51.100411+00	1365
a7fc9450348d57c1333097239fa11e023b417a62	2021-12-15 23:31:18.731506+00	1366
062138a0213227616fcf822ff4bb3805b8e470d1	2021-12-15 23:32:41.539684+00	1367
ac89c320c1b878cd2037895aba85b24b1a25dc3b	2021-12-15 23:33:29.218547+00	1368
c9ae227ffc78c6d7288c85fdd1836b32a2b903a5	2021-12-15 23:33:51.476528+00	1369
d6df5f4c3fa3c18d653430154c115ad970901553	2021-12-15 23:34:16.328009+00	1370
022c3256657ba702fd377e776af657f1592b679a	2021-12-15 23:35:04.0074+00	1371
a65ee80df96b06b70994e536b1ea26f2afe0f3e0	2021-12-15 23:35:22.276462+00	1372
51ab563fcd8e989d5671060216d44efa2914a94c	2021-12-15 23:35:46.484177+00	1373
b3a9c2b9fcf355f56a78c91d00228b8a7fde606b	2021-12-15 23:36:13.176273+00	1374
08336284cedd96133696673b41909d73baaa158d	2021-12-16 03:59:09.079559+00	1375
5654d41fd6ef0fc226f38865e627be4853696793	2021-12-16 05:16:26.852466+00	1376
729153b2c6d4f93ad24b5468b5cecf58988bf70b	2021-12-16 06:23:54.810212+00	1377
e76e0b8067caabf9960e033633a6decb5d882ab2	2021-12-16 06:41:47.083488+00	1378
a95d9c3e3e302827a2831bfe14ede363b3bf43aa	2021-12-16 07:02:02.737837+00	1379
006e3d15c5b8ceccc2c957c0027e482e25f50ddd	2021-12-16 07:02:06.94921+00	1380
a7ddb19569822498a34554190ddf2b7010c6fd3e	2021-12-16 07:05:00.186582+00	1381
d459215da7cfb1291943069593768119a6530bcd	2021-12-16 07:26:21.03922+00	1382
9246b05cbd5e56284c500e6284200d8d5670be4d	2021-12-16 07:54:47.831774+00	1383
7e41e210369236149e48e9e27618d083e2e6863a	2021-12-16 07:59:47.502236+00	1384
c235505232d5ce9dd68a06b9ef117aee74bcc33b	2021-12-16 09:01:54.566221+00	1385
7013227f12f29fa2ed8595731e641190dac8738e	2021-12-16 09:46:41.30605+00	1386
47cc0bbda9760f933d5c975e1eb50a1b36fe95ff	2021-12-16 09:52:55.40796+00	1388
4034ab90fc5b8670ac73c456ab1b1579440f42e9	2021-12-16 10:00:08.844901+00	1389
6906f300f82592d155035aabc0ceaac018debe8b	2021-12-16 10:12:48.084608+00	1390
ee9988274fcdfcb0101da43e3bbe72511a8926a1	2021-12-16 10:24:48.683459+00	1391
41ce298e12b9ef53ab75ee7deb13ee1dfaee81b6	2021-12-16 10:27:03.611005+00	1392
e828cfad4f0e1bfa89602dd7398088745301a8ea	2021-12-16 10:34:47.777674+00	1394
615b0bd803ab88e26fe85cbfd8ea3d35195a3fb3	2021-12-16 10:40:46.912639+00	1395
931daac50c2eb701d9291271f98a33d88fff3502	2021-12-16 10:51:35.712171+00	1397
9db14ce128e226ffae07675f4c3401d808056e00	2021-12-16 10:53:53.875318+00	1398
26d4e1b98a8500144b616dc07f32e3b6aea4d1d5	2021-12-16 10:54:54.647513+00	1399
b16edd2cf930c6cd6f85084e1f54c339cc459d94	2021-12-16 11:46:33.807158+00	1400
ca415ef17073069340e8f535156bbccac346e41a	2021-12-16 12:55:43.915233+00	1402
bcbcb584376e59a0c73f3f1b6989fdd2f01460bc	2021-12-16 12:58:37.915206+00	1403
4ec6c7c4665b5233f59d7afb52db8d5864f56be5	2021-12-16 13:06:43.171393+00	1404
a9622c9b76e1724d27a0cb88a8b1ce53fd2d5f33	2021-12-16 13:22:50.577437+00	1405
be7f857c1a5c9bc501058ac5b22ea1fc23aefbc5	2021-12-16 14:32:02.552872+00	1406
142aea9e45bd504c2f958edcc8ddcb0794858cc2	2021-12-16 15:07:52.236399+00	1407
df8692d2047492b293573dd2748e9d6aeefb9f11	2021-12-16 15:35:51.60631+00	1408
1ed2b08dd4b66164a33e11aa550b6aea2fc9a867	2021-12-16 15:36:08.29125+00	1409
ebb43f8bb340145be6aeea36e5eabc82fcccf21f	2021-12-16 15:36:32.072145+00	1410
5dcb745ae83645ca647becf4b5f34b34d8b62b07	2021-12-16 15:39:56.396017+00	1411
8b7734d0fa29f3e5297e0e7ee3e8194dc63418ec	2021-12-16 15:41:33.935391+00	1412
29b09bc9b09b59a8ca04f6741e6d36db35f21ea3	2021-12-16 15:48:20.236573+00	1413
02f58c2190bd80d8ff33b60b3d6819173c1f782f	2021-12-16 15:53:51.63289+00	1414
ad615f5db8dd9a75d1649e0959d33313e1567fa0	2021-12-16 15:56:44.21494+00	1416
4e26dccb96527dfdb7617e732c240113b7461be4	2021-12-16 16:14:22.053161+00	1417
8b93b6290e5a9e6da13ab2ddb614f92b43d04d8f	2021-12-16 16:14:57.951757+00	1418
46f84bd0f7023dde991fcc7615556a73aa9de59e	2021-12-16 16:16:32.254163+00	1419
f0e1e92eef95075f1437b7be403eaf547226b049	2021-12-16 16:28:12.603108+00	1420
5fa05e9a09ff77c0a7afc03fe5a67d272b9a1cce	2021-12-16 16:33:06.17444+00	1421
cfd97f32cfea56f0cf0ebe826faabe848530ca4c	2021-12-16 16:35:03.803188+00	1422
0321a776d1fec97c9ffd992bc44ed39d98ccf900	2021-12-16 16:41:29.495846+00	1423
1b65838ab9f3b95e4546a0e425c76331d0d06c78	2021-12-16 16:51:14.632239+00	1424
89ccc31367cdddc6b890e5574abb7ae4a245fb33	2021-12-16 17:07:00.399876+00	1425
e7dafce57ea54d5e4398cf3738301e17a132f3d5	2021-12-16 17:19:41.487712+00	1426
aa654ecfe8c9e0b1db0ee766e549b0e5db1b53b7	2021-12-16 17:22:36.445199+00	1427
76246c9a664590abaa40e4579122587560799f4f	2021-12-16 17:50:04.06805+00	1428
458c7528f20fd9687dce82eae78a3e38ee101ce6	2021-12-16 18:17:18.451781+00	1429
b1f597b1d8a0c973d26aa9eb9e63ff0a993f9b21	2021-12-16 18:37:01.843537+00	1430
bc601923b3bae2551acdd9915de7de0e68b3b130	2021-12-16 18:50:08.494619+00	1431
15e1fc14aa7dc1f47ef72de928e6c4546246bb36	2021-12-16 19:00:51.285246+00	1432
5bc167b7535aff92d5e850af6271502b51714e56	2021-12-16 19:37:04.428949+00	1433
6c6346a106e1c9fde28ae12c19ee89de55819188	2021-12-16 20:13:05.162059+00	1434
b7e48172ef2f6660bca0df69c2e396bd49e84f10	2021-12-16 20:28:52.968468+00	1435
b6f5539e58bd27c8f770133a390c254577e11897	2021-12-16 20:59:10.403629+00	1436
7171618cbb417539102f11839d62ecb86a14d8ca	2021-12-16 22:02:50.806248+00	1437
0548f8411822fcffa753b56fa7a0f06254a63ec0	2021-12-16 22:28:20.601178+00	1438
69dc03c0a06733e76571688dc9211a8fb2461810	2021-12-17 02:33:39.241574+00	1439
ebd8de1e5b66797386c963ce64a50bbe3de9452e	2021-12-17 02:54:28.756623+00	1440
7e83650124f8c41adaa44425841fba555aa910d6	2021-12-17 04:00:04.90623+00	1441
2a4882cabe925f4a219fe1eabcabf61906f3a2fd	2021-12-17 04:08:55.357871+00	1442
617e4ae24c7042075b158ac5398f3fdb44542b41	2021-12-17 06:01:19.016051+00	1443
c5ac835404f00e57e43d3114c10429077130bba0	2021-12-17 06:28:27.298323+00	1444
c64edb5134fb6a10288346a9ea3baf4834ed28e6	2021-12-17 06:30:27.322991+00	1445
c17d803aefc4119abed9e39ce3755c90da9accba	2021-12-17 06:54:17.657954+00	1446
5b6926a19277c00e18f76c25abdecd624836fae2	2021-12-17 08:02:44.801238+00	1447
36cd8d9b2f2e0dba3f70e3945eab4f87a6dfcc12	2021-12-17 08:11:49.323369+00	1448
1de0575c495fdeee4d93f2a4f76dbbecf99937b5	2021-12-17 08:20:08.409268+00	1449
dcb96f1898e3ada8d6a8685a8fb46ba01f99a17d	2021-12-17 09:18:34.095448+00	1450
334db0844eb0fd1519cf4ce4305b6d611ef60773	2021-12-17 09:23:38.278724+00	1451
717eff779e7e43ef43aad277d8a5827550299cfe	2021-12-17 09:31:13.853035+00	1452
820c1d03e143c1d891d8b233adffc83bd03d9c58	2021-12-17 10:31:54.697276+00	1453
034f998b8c2696aa1b0887a9868741f26e70ab6f	2021-12-17 10:42:58.948353+00	1454
ce55817b0d96f3e6ed455cfd7928a8e3306c4e70	2021-12-17 10:45:48.962322+00	1455
5e47f13c7a941407574b1cb5d247ba6ecdff07d3	2021-12-17 11:10:16.295505+00	1456
7d28cb37fd160742f819bea83f8bd93f74382044	2021-12-17 11:10:47.13304+00	1457
9c9ff51e26571d2684b79bb4b1ed08ea4b94c5e8	2021-12-17 11:12:35.518237+00	1458
2bc97382b0951bf3d931144795e90814e6ab9d53	2021-12-17 11:13:07.058126+00	1459
51f86f63d2f6202b975646e0017e28fea388bf4f	2021-12-17 11:13:51.907862+00	1460
7de8a235e0c3d315300c9a111102bb443bea25e0	2021-12-17 11:14:15.947461+00	1461
6bca54c2832eeef4bd0dc9435dc904767f02e20a	2021-12-17 11:17:34.924635+00	1462
1d2dd4bcd7e2efa9e9b038107b8a9463ee559dd6	2021-12-17 11:17:55.246913+00	1463
ccaf0aee14ba982d0da9730deefb4b114c665d58	2021-12-17 11:18:45.832635+00	1464
70788ccd2ad1184b12c24938a2f34676504355cf	2021-12-17 11:19:32.401613+00	1465
22c96e0f4a964e874ec3606990212f6229fa640e	2021-12-17 11:19:50.955695+00	1466
8c898bed84737aa819eec04dbb5caeeea7673531	2021-12-17 11:21:45.365119+00	1467
f3947496a6185b7715fc96e68e9e6925b40a6b84	2021-12-17 11:21:59.19123+00	1468
cd7da12ea82f904623250bec672f7bec4a6e5fba	2021-12-17 11:22:02.122784+00	1469
d55f51f17fcbf2905ea30c66de284acd66097d4e	2021-12-17 11:22:54.302238+00	1470
783c684c122376d4a457783eb3e7d4d3ec7e4c42	2021-12-17 11:23:15.950385+00	1471
8823b38913639237b07c9a81b8d1e7d40c479d3f	2021-12-17 11:24:25.404773+00	1472
53ced839ef307d9d289e8da3740cbe8b313de60f	2021-12-17 11:25:34.589074+00	1473
7dfa5806d8b5dca59659b4d33c5a310bff375497	2021-12-17 11:26:08.149575+00	1474
98d47bb20d669ff41a4c8d38d55f7b77d2c8eaef	2021-12-17 11:26:59.709269+00	1475
058c25300f837cc6604c471c1d757a63430d0b4e	2021-12-17 11:30:04.221812+00	1476
44540b30c3c34301e2a33ad9ae98feb253759a49	2021-12-17 11:30:39.45241+00	1477
3377f53c5c4a0f783638851e514e3b0b62a54785	2021-12-17 11:31:14.538675+00	1478
0a529ea77ec740d677189e30384be99013217d6d	2021-12-17 11:32:31.084258+00	1479
8b16aaf94f5c0d5322eb216b4537c0d7082810cd	2021-12-17 11:33:18.282247+00	1480
c84739ead18a943b70bbaabf3823c7589370f5f7	2021-12-17 11:34:22.008117+00	1481
baab3aa764f6d623cda808438154951b3e6ff93c	2021-12-17 11:36:58.242727+00	1482
264fe43b3f5913fe5834c56073f4f988498fe5f0	2021-12-17 11:37:58.356396+00	1483
8a43097f2c651c2aa3877f573b4dc92d8ac21774	2021-12-17 11:38:03.234116+00	1484
b7d0998b258c9123659fe18aee8875c0224aa4a9	2021-12-17 11:39:26.921077+00	1485
4717b6b15e9b47f8480b515d3e89cd0ee5e2de07	2021-12-17 11:40:54.616188+00	1486
da9cd362987ed287b9459cd03c24197271874b0e	2021-12-17 11:41:44.046102+00	1487
02b361d724a3d273e65df924619d48e7c6bc97b4	2021-12-17 11:42:24.351076+00	1488
80fc8949ee80566cebb09ea381c862811e2f696c	2021-12-17 11:45:09.277798+00	1489
37aa2b95abb63b992eaaf8c57944147c59317150	2021-12-17 11:45:33.26387+00	1490
439ee617c12c045dea3f67e63a3c94f15c6def47	2021-12-17 11:45:39.873888+00	1491
ed99defec6ed8034be6e620e08f0e2ec6127bcdf	2021-12-17 11:46:21.296749+00	1492
178c904e8f6228e729b0be580d7947c5687ce8da	2021-12-17 11:48:31.445514+00	1493
3b935a1c8a8ab981e67f49abfed247cc01d84b5a	2021-12-17 11:48:39.183462+00	1494
49cfe2f0f8d41561d6615bb25a8b813dfa22aa68	2021-12-17 11:51:28.419463+00	1495
2f2701c1b8c703a26d90a5a3f60d58aa25fc3f55	2021-12-17 11:52:01.265201+00	1496
ce3cb6db903a822120d5dea398abfe4fdb8ed58b	2021-12-17 11:52:06.169159+00	1497
aa9d7f341bc2e7543f8baa93d3eb0051aae531c0	2021-12-17 11:53:53.482864+00	1498
51f3ddea1c67e5c916a29fe8560384c945a8a600	2021-12-17 11:53:54.84451+00	1499
b9d5cfad95486a2f60940cf70e0998c55062f1e6	2021-12-17 11:54:38.508437+00	1500
33ab784c14f1eb47b6ba3f3f4b94f47cbc6f6393	2021-12-17 11:55:45.23918+00	1501
75e555f57b0f69c205a9fa3a1d913a90af320001	2021-12-17 11:56:33.590211+00	1502
aedfda6306514519b742c221ce07f5a602c882b4	2021-12-17 12:01:41.278901+00	1503
bf825f78c813baabf2abeec19db428c25bf88831	2021-12-17 12:04:45.916085+00	1504
a70448e9ab34bcf4c967ddaf4830478a22fb2add	2021-12-17 12:04:49.689902+00	1505
108c20b464bead8a13992a72b925fc023c3dfa31	2021-12-17 12:05:39.814905+00	1506
e14d63c1dc801370c2cd8d02508943cc905ab832	2021-12-17 12:06:17.67498+00	1507
e3bc34d62b5e55abeca89d8438773e4f8e35af5e	2021-12-17 12:07:26.854573+00	1508
fb0fc27473026684cd4e980d3a0e00067553e4de	2021-12-17 12:09:02.262535+00	1509
0ee13e3be70d755f49e1c70ae26853bb17a96fd3	2021-12-17 12:13:16.493751+00	1510
4945ef8f51d5a6aa8bf4f100d9c244743e419128	2021-12-17 12:14:18.095167+00	1511
abcc4b0955385cf556c23014bae33f05b35f06cc	2021-12-17 12:14:23.864776+00	1512
9c8a08200188ef3b8f0417f84ec2a06c60d5ce62	2021-12-17 12:14:31.895938+00	1513
d59efa75361f32976a0b66461c4cd7c5fa941100	2021-12-17 12:48:03.025396+00	1514
17abb413eb90df6311cfadaa84410bf6bbe8a048	2021-12-17 12:49:17.292818+00	1515
6398cb84369450f72bd2e94e596636a91990473f	2021-12-17 12:50:39.848629+00	1516
e01adb584e3ce6d43e813b498f5134a284bdc6fd	2021-12-17 12:52:48.557781+00	1517
085924c8eb661628936d7fbd23bbcf5201f3ca70	2021-12-17 12:53:02.967377+00	1518
4d37c124e4a817c3cfc6971f5a2087dbaf846d3e	2021-12-17 12:56:45.923059+00	1519
694a49753b9043f13929bc28c373bfba10f9a86b	2021-12-17 12:56:49.50643+00	1520
18b665326481e2eec232efddea4bbeaabb891701	2021-12-17 12:57:24.011253+00	1521
f44b1747822fadc59dc04c328127b47a41f8f4f2	2021-12-17 12:57:25.073977+00	1522
effcaada2a58bd25d3aad756bf71e904c2d5e868	2021-12-17 12:57:33.408326+00	1523
470a5b92733a39adbe5a7265c2de052390efabd7	2021-12-17 12:57:36.754522+00	1524
06d19a46897569b2a0331d3439ca22413b600843	2021-12-17 12:57:41.532177+00	1525
4be5297f31c5e87b59bb740615a5f90f15365084	2021-12-17 12:57:45.139151+00	1526
365ec29d072e198dd71d55785c7186283810bd1e	2021-12-17 12:58:33.725596+00	1527
b193549de374d72f3524c51184e3b2d9047cf4e7	2021-12-17 13:01:30.919053+00	1528
955e9d3df267d41296c159869422896c26c8ca91	2021-12-17 13:01:34.948366+00	1529
5abbd8573e660e1f18db28693a5fb28897f0007e	2021-12-17 13:01:52.672614+00	1530
e68ae1526cb4bce5744e4fca2db07d853f16a9c5	2021-12-17 13:05:22.43231+00	1531
ce80aa8a129fa819491769cb0f18081879f72b60	2021-12-17 13:05:44.404636+00	1532
57be998ca9800cfa58f7a4a2e28ad4ee1a92edec	2021-12-17 13:12:22.383208+00	1533
e704d56f281dbcfe57cb1b33940fdfeefd177b09	2021-12-17 13:12:41.207191+00	1534
771e0e794b75137ba4f277bab3e56985c480f2ad	2021-12-17 13:15:02.235978+00	1535
905b1a29b5f61be52935f67eae9537cc99a010d8	2021-12-17 13:18:26.739456+00	1536
8124e24c2588c56a223da6cd9b05c80fd4824993	2021-12-17 13:21:08.933089+00	1537
6b0c7e844eb3ef24ccd1b0c6d334a3a235d836b9	2021-12-17 13:24:00.80403+00	1538
6bd7312950dd114802ea1669866371373b83c316	2021-12-17 13:25:20.641217+00	1539
0dc07ae73969d243e2baab03c42de85b60fafefe	2021-12-17 13:27:31.136459+00	1540
00983e9559133710f90456aa24ab8e9a4c5e7394	2021-12-17 13:27:55.723393+00	1541
995f138243d0c3167a5f2f7ced4146bc2a773319	2021-12-17 13:32:13.272447+00	1543
9a2f3c605d4f16adab610675e74bbd73bf7205a4	2021-12-17 13:33:40.727058+00	1544
88096cae60d2cec448694e973cc7be093343fe28	2021-12-17 13:38:46.880658+00	1545
afb2befa3d51f2de773c1879907834c9b77a2d84	2021-12-17 13:39:04.990581+00	1546
6465ba6696a0955936817c56eed391daa77f22f3	2021-12-17 13:41:48.558724+00	1547
0cc940fad60b9f316b96c29b7a322a439fee654d	2021-12-17 13:42:01.61558+00	1548
c212d76ee1a8fb1dfca9d5783eda7c4c2cdc0ab7	2021-12-17 13:42:49.548673+00	1549
e5763b8974bd10a3bbb206c9f84a6cc90bc79bc3	2021-12-17 13:43:40.458561+00	1550
bb3b0f9e3f6bdde47a41a3b34f151e5353dfcb17	2021-12-17 13:45:06.667463+00	1551
40750e3579f3b8a7fd471005030065277f381da0	2021-12-17 13:46:37.677273+00	1552
24d916a82cecbc082881f21bdef105e15f665225	2021-12-17 13:47:13.927969+00	1553
03fbd355153e67597a9bc72e875dcb41b0b754b9	2021-12-17 13:48:57.054649+00	1554
7c33b0b43c00e50f428dd65d0476e2e4cf8e7dc6	2021-12-17 13:49:03.905366+00	1555
21cff533bd32bdb0f92f4a13ac0b7c48525930a2	2021-12-17 13:52:51.866132+00	1556
2ee820bc5cbae386228adf001d54e2df36c8e562	2021-12-17 13:53:02.737304+00	1557
5a178cc153fc8f44de8f560661d4f927c49441d5	2021-12-17 13:54:18.883841+00	1558
2d765b8fb325a504763f1a78d264a05cc1dc4834	2021-12-17 13:57:20.046751+00	1559
884c27f21e0e29261e93c3b25ae19a8025be2312	2021-12-17 13:58:39.184463+00	1560
4112af09fd5e8fc6dea9d23271d18c79b1e4e031	2021-12-17 14:01:21.834472+00	1561
0d21a9c03af1a65540d750bc1885f7f35050fe32	2021-12-17 14:01:45.252858+00	1562
4f7213ce83095ce937f0d3e036cd298f6e24f51a	2021-12-17 14:03:36.347873+00	1563
fddbc6318791b0164b7346023399a0fd76a5f980	2021-12-17 14:06:43.2189+00	1564
e807df228ce702a51131c2773afad2c54be3c352	2021-12-17 14:08:34.756937+00	1565
b0e4deddb39dc6d07f2577bb78568201e6e2fefd	2021-12-17 14:09:27.094205+00	1566
c0973eed4165680cac6c6e634bc215126321c53c	2021-12-17 14:16:33.14119+00	1567
8f48fcf6f104332d3b411fa29ef7a65ae77fe7d6	2021-12-17 14:27:15.930504+00	1568
b1c541153f9fb582a1795418cd7823ff746998f4	2021-12-17 14:33:20.169628+00	1569
d0f564c5c60d49b7ed4abaa63c7bb94115ebda7f	2021-12-17 14:35:31.340187+00	1570
a9ed9ccbd5d1fd3f2201b6c697606393d6ba3d35	2021-12-17 14:40:06.124404+00	1571
955e46c75d94a3282dbbee0d5e6f3d699c9a2d39	2021-12-17 14:46:39.332066+00	1572
bf81cefc689b533be26d5908195a5ba56dd4df40	2021-12-17 14:50:15.464719+00	1573
febfaec70f776f8aa20cf90da15090c108798220	2021-12-17 14:52:32.913188+00	1574
0c57086d55563807d964fdd1233cbac26cda9fe4	2021-12-17 14:54:26.231868+00	1575
a9ee3aa2a94d0f3a259d912d6add8b54d41209e3	2021-12-17 14:54:44.458211+00	1576
3c7221f34a8570711ff72eb302bd19c513ff5a40	2021-12-17 14:56:24.536155+00	1577
fe15776a6838905090b257786ea24b87f13ab50e	2021-12-17 15:09:23.628581+00	1578
854ace637a70b20ee9a5e224822e98024e8eb8b4	2021-12-17 15:21:10.209026+00	1579
9698a70f38df51fd570f91ee41376c78319a08d7	2021-12-17 15:21:12.084437+00	1580
9d2c5d4832bbb2288607df62f28107c5fb376de9	2021-12-17 15:33:21.305002+00	1581
14ebf084bb0ffe453c6f4bbc73b1207a4ce30723	2021-12-17 15:43:28.510876+00	1582
689ce488ddb26b4061ef1eead2e035962ff1f39b	2021-12-17 15:48:43.071617+00	1583
185ef4978638c6728cd0d1426d3c0d3e46e38d4f	2021-12-17 16:10:44.134498+00	1584
78a49b4c617a3c6ea990f7e31aff944b78fbc874	2021-12-17 16:26:12.314604+00	1585
393c2823b822ab76e8b5084ec4a4981198bbae61	2021-12-17 16:45:15.936435+00	1586
3fc1de04007d9f6e2683ba991f028330bf6cc441	2021-12-17 16:51:19.584917+00	1587
90e24f9bc40e8a3542851256e1aa30e57761a641	2021-12-17 17:27:14.87858+00	1588
3f5af7084767f748c4b234444eb968d982d9c75c	2021-12-17 18:29:22.908166+00	1589
3f62393cddaaf7d2076dbc178b11ea083cf239b6	2021-12-17 18:39:10.684898+00	1590
9aad5858b5ef6e365795bdccf8008f6db2f50a31	2021-12-17 18:48:16.511683+00	1591
0787994883bb2714ed1e91c68c48e3451f96faf6	2021-12-17 19:01:34.762089+00	1593
3ec2ae4c411e5b5522c9510274951c99accdf917	2021-12-17 19:36:30.658029+00	1594
24d052e841ed44d94ddc60d48ba5570469299f49	2021-12-17 20:47:13.719177+00	1595
8f7925c60399d385c212896709399b2c85e68390	2021-12-17 21:17:08.304837+00	1596
26158a0256e35bae89d6eb3586ea757dc643356a	2021-12-17 21:19:06.254813+00	1597
6db556bb88be02e5ddfd9d269a499452d2b035c9	2021-12-17 21:53:03.143493+00	1598
2a220d176d456483b1ec2660c882bcbd18290f4d	2021-12-17 23:20:17.911246+00	1599
2ba8a9b829bbcffa876fa18adfa9b70c2705f007	2021-12-17 23:46:52.212776+00	1600
922c84207031949baa5910f4f14f49659aa02812	2021-12-18 02:45:15.451925+00	1601
849c761f23eb891ee1ebceb9468da05639311250	2021-12-18 04:19:34.165966+00	1602
0d8b6aa40d2bf46dd28b31e1fc3daf41aaa01549	2021-12-18 04:39:31.733229+00	1603
b902425951c47c8db1a0cc8e0c424be144a3f03f	2021-12-18 05:38:23.715534+00	1604
778078604a24c5a45b3de2d7398daa81d266bcfd	2021-12-18 05:48:25.225073+00	1605
2cbcad2daf5191f4f56fce9a42fbab9a3d817a48	2021-12-18 06:28:43.872575+00	1606
9a9b655f13d19be0fa9703bb50cacf13c5c3a4c0	2021-12-18 06:55:58.624356+00	1607
a7a692c42568d0a2615133e063693ead82a3a233	2021-12-18 06:58:54.667009+00	1608
51444ede8435f15a69941a217a199c6bf6b1bc05	2021-12-18 07:52:37.775314+00	1609
930452ac369518d3ed8bd91083d5e2f92c84526c	2021-12-18 07:58:55.852063+00	1610
0915e8ac04eacfb6df633dd9adef9ea620284eb7	2021-12-18 08:46:21.605396+00	1611
07dd5518498b69415c068cbaf636de54fbce495b	2021-12-18 09:52:14.822117+00	1612
aebb9a7d22591e71989689e1bbe218c68be7acd1	2021-12-18 10:01:07.698566+00	1613
c8833f8fbcdb9b6bb0fd5db0d8f6a07a562017fb	2021-12-18 11:34:11.1145+00	1614
25c137bf42477729861abfbb857af52be329617f	2021-12-18 11:36:27.938086+00	1615
30f14a8a4d0a2a3fdd01b587f5c52d4554058d15	2021-12-18 13:05:38.912804+00	1616
4ebe49ec32bc5209adf95fb30e6e2e1289bffdcb	2021-12-18 14:00:27.203318+00	1617
114cc7ffb84f5d6494a83d9206035fa760dec9f9	2021-12-18 15:02:11.446716+00	1618
bc2145ece178b08d0c9387ce9ada36cca5b59433	2021-12-18 15:04:57.715875+00	1619
b2989ff4d02ff89dab1a5fa2679fdddb898f5a65	2021-12-18 15:13:21.92781+00	1620
b0cdb3e69ba3ca40c9097ae9566f8473a843867d	2021-12-18 15:21:08.656858+00	1621
a1c8f77e0931c65faa079690eeefa3664b34e0ad	2021-12-18 15:44:42.11331+00	1622
b8f56bffdd6f769ddd681382313ef1a4c8ff4283	2021-12-18 16:30:51.533218+00	1623
064fc96f5828a77f7a9ea169603837a151ebb340	2021-12-18 16:55:55.596252+00	1624
f222d5e3a7527e7bf559491757d1e0781638e685	2021-12-18 17:11:27.154294+00	1625
ab682ac5774a817f7afe977c567a503e32d40d71	2021-12-18 22:16:56.932758+00	1626
67f5d82511c3440b31be7d30019114545ac64a3c	2021-12-19 07:07:50.220159+00	1627
0fdea795413a5af374cd3cbb35114d3eeb31affa	2021-12-19 07:20:27.89737+00	1628
3a0d85d8730ecf8afb8d8ee69b87322280cfc777	2021-12-19 08:21:19.159321+00	1629
74e1f76ed9f0c0fa1d27e6ec88a60bce7eb2a0ef	2021-12-19 09:15:17.567806+00	1630
01dbfd5c8252c1ca99cbe184c0226ddab30982ac	2021-12-19 10:19:50.62918+00	1631
4a373c5b87569a9e771dbbc72ca18888985760f8	2021-12-19 10:20:52.517191+00	1632
c53cffbaed88998069224ee4484d9a788876a9b4	2021-12-19 10:30:33.602313+00	1633
5b76812182db3012abc61d82b7cd43ff9dcb457f	2021-12-19 10:31:45.514514+00	1634
b536707c09f4d7486663ec6e04b1f7195b0c21df	2021-12-19 10:32:18.04548+00	1635
e654dbfcae03c73233e53c1504a839b33bc70820	2021-12-19 10:46:56.121159+00	1636
421435a0554992e0037efa011169cbd2c7453dbe	2021-12-19 11:14:05.879364+00	1637
8a7945eb521314a426833cbe5610d2e6bb73fa42	2021-12-19 11:16:01.598187+00	1638
172a2a059dc4124f54ba95e4a68d71871b9be479	2021-12-19 11:21:06.727379+00	1639
08dd6a3da7ed245449c5187123a47625b4381c8b	2021-12-19 11:26:37.450506+00	1640
d1cb456d5d7706ff1cf8bb8ccd3a32c37e6d9961	2021-12-19 11:34:14.233388+00	1641
ff8a1d7e5bfac1d982993bc7bb91b6b688554605	2021-12-19 11:35:02.101028+00	1642
cfc4ce324408e957772238bdf4f33d33e76485db	2021-12-19 11:35:14.237+00	1643
96636023953cda681b36970397e3e6a001efc602	2021-12-19 12:11:34.622086+00	1644
973ad6eed7f7e0fbc6f41c052f577658ea828a25	2021-12-19 12:16:47.077029+00	1645
cdcf82530b9d44abc6fbe681ec7ee532dcf07403	2021-12-19 12:32:27.248595+00	1646
ad2d4f1b31b8a7a14ac2dc49958cd9ec17648fb7	2021-12-19 12:53:02.807696+00	1647
4ad6f63ab2ca5c527acbf0ebb6b23a485ba920b3	2021-12-19 12:53:55.468039+00	1648
f50ad936ab1f2d991c752ccf290616a326e155e4	2021-12-19 13:00:09.450298+00	1649
7daeb7baf221cc7a01219e0f09db070936bbf652	2021-12-19 14:14:54.164823+00	1650
f3bf2bb0432f656270fc2a7cd80060785146a355	2021-12-19 14:21:55.862384+00	1651
2de51d017c2d4dfdafcc5ddcae621332c6a3e050	2021-12-19 14:50:27.313689+00	1652
d61751e17af5f5186b200998501557f91ca19cde	2021-12-19 14:50:59.483029+00	1653
c920eed27381a131fe128e8df7686fd9d2cc8eeb	2021-12-19 14:53:22.288713+00	1654
8a4ddf13d02b132910514a4cc74a39b52329633c	2021-12-19 15:08:20.391001+00	1655
7ab2b606952a8931ecb97043cfc33e76c13fff96	2021-12-19 15:16:22.697218+00	1656
a5f6f4f1664b4874a2e8c0f8b5e9e27ad67c37e2	2021-12-19 15:30:12.230467+00	1657
e516558ffc7c91e91c9ab34936d506d7d4e9e83b	2021-12-19 16:36:47.461222+00	1658
05edc8eee9b8a0c00ee2808fd87db997d5eb535b	2021-12-19 17:10:20.523181+00	1659
e76bbf2b68e04e2273ab6988eb1d37b2e2a97374	2021-12-19 17:35:03.335931+00	1660
8abce7fb48d9eceb0d38e08f8cf16e75287611d6	2021-12-19 17:42:55.305896+00	1661
30176f8c81613bdc082e53b10447aa4d3c2c5cf2	2021-12-19 17:44:31.520154+00	1662
9925037615481d9db7b7542a6c87f607350586cf	2021-12-19 17:47:33.45781+00	1663
2ba90599455ce9cde3f59c8786207308599c3ce8	2021-12-19 17:48:15.302531+00	1664
3d01142d91eb860b24401cb0e0ceca919759f681	2021-12-19 17:58:24.369839+00	1665
e65655fd25bdae2b94caf2da3893bf3b561c6701	2021-12-19 18:05:29.860082+00	1666
ef18b0ef05420e2913daaa9435b21618f536ad12	2021-12-19 18:25:35.476017+00	1667
33110a03b33c8fef95298420a17c60863d20b76e	2021-12-19 18:42:57.878433+00	1668
85ec7162018e305d660dcb10663bc8c231f816a2	2021-12-19 18:52:02.452617+00	1669
97ee34b71d7b01769dc8f8c6305e8378e7bf019b	2021-12-19 18:55:41.006582+00	1670
96d0ff771d0dcc290fcfe68ef4d3862669c17398	2021-12-19 18:58:46.410754+00	1671
0ff6a148b57aa918bdcfd6c324feaa1fe1347112	2021-12-19 19:08:30.244656+00	1672
8e978acf5e0445626398f58c10601460f6a7e632	2021-12-19 19:19:30.738756+00	1673
9205c0667bdfbf3aaccffba1c2e841240bc278d4	2021-12-19 20:36:47.324205+00	1674
f8b15efdcf3e753fbd3ea06dd073ad2c5d598d4a	2021-12-19 21:00:56.477818+00	1675
d321d9f8ac230bef157ce059f228177a671a665d	2021-12-19 23:06:14.02227+00	1676
6c7d8f80f18c88e5880ddbfc07ee5a760d5db3c2	2021-12-19 23:34:03.461745+00	1677
58e9f5085b5ef2d9e98cd71dcbca6f85a1c49518	2021-12-19 23:53:12.052626+00	1678
08d64f741fc74a17566ef04786cb18d93c961b20	2021-12-20 01:52:05.188069+00	1679
32a16affc3da97594ba771f26a77b71afa740186	2021-12-20 03:01:59.611758+00	1680
8a621d41785cf4fc68012d4c0ecf43b66782e690	2021-12-20 03:22:11.577594+00	1681
e1b388e12c2c1193ca5b3c0d24cbc7dd61b67ec8	2021-12-20 03:27:40.405687+00	1682
4adae47a2d33a89be7317cbe113580f13dceeb99	2021-12-20 03:44:39.155885+00	1683
a3b1346e05e22dd6cb5197cbfc0b2d72c0b54d55	2021-12-20 04:47:58.20051+00	1684
2c9eb39b6e8e5aeedd568706823c83c8335905b6	2021-12-20 06:19:09.926933+00	1685
4b9a042943edee0b7d6af26948d6bda0e379d333	2021-12-20 07:05:25.026788+00	1686
f15e5382d8970060a3088705ca5822f48c3c06f1	2021-12-20 08:35:04.455692+00	1687
607e0e674f2f17c81c69c604e1e6e3da045e81fd	2021-12-20 09:41:08.351488+00	1688
2cdb1828a47209fb0d319224a9894fd9a5c05aae	2021-12-20 10:35:03.262096+00	1689
e28a6dbddcd504484a4a9425271547d982b4e280	2021-12-20 10:40:07.615079+00	1690
17c4219a8258565759ce75a9a8e55058d22bd4f1	2021-12-20 10:41:45.256053+00	1691
4d3539a9ae769d826181547dd9e7156b6fba29fb	2021-12-20 10:47:07.042276+00	1692
4a3588ffde5a2d606c42084eacf8ffe94cfb130d	2021-12-20 11:10:14.35222+00	1693
9a81b6908dec58901e9cdafd72ebfb834153fc1b	2021-12-20 11:24:48.194599+00	1694
1663466026775db48902a1d99151b576bf41d400	2021-12-20 11:24:53.340926+00	1695
642110cf044511cc28967be538c941f71b00bd3e	2021-12-20 11:35:44.951806+00	1696
5a9be51fe5bc37cbb16f751909306edfdc7ed378	2021-12-20 11:41:27.247381+00	1697
2830e620dc1ffed85058dd26a2c336abff36ed83	2021-12-20 11:46:03.147295+00	1698
d50d2ce06cd90777c180294af4de6fac7e415445	2021-12-20 11:58:49.627425+00	1699
08228d96a440a6e0e5ecd238f0c6c250099b45bd	2021-12-20 11:59:28.849614+00	1700
51a9d5016e63b9a2d45d0165e18263b72cbfc20a	2021-12-20 12:02:41.798181+00	1701
f68ff28966e5e812b3aafe2125987dca5c3fd766	2021-12-20 12:34:42.017231+00	1702
a77af7236d7c15fbfcc1a4c87f3605dd68b3ac85	2021-12-20 12:35:43.701199+00	1703
2b934406ea898fd861f11917312c269b7417d93b	2021-12-20 12:58:19.833751+00	1704
00770891d291117e6829d7f71d24181b3015a061	2021-12-20 12:59:47.075015+00	1705
2921fdda913215e955b503f06d8ab230277c42ce	2021-12-20 13:03:53.712477+00	1706
fca6f4102d2e7493b74421fa624e4e2fc03835f5	2021-12-20 13:11:43.768442+00	1707
4002c3680dddaa7d2a3e0de085d6ea8501ede86e	2021-12-20 13:20:02.219592+00	1708
2ce31fac2f62967cf72f3ba349d963240fc9bf19	2021-12-20 13:22:51.280823+00	1709
d47a730112617c5f8cb70ff827b4e673d26f6961	2021-12-20 13:23:25.316716+00	1710
9ae8c8c9bfa867bd554eb7e6d39b38bfc95074bc	2021-12-20 13:23:59.213881+00	1711
801344fbe7684d04f5ffbecc485503e951aa9be6	2021-12-20 13:24:46.332776+00	1712
e9cdd2e95a901dc7c417ba775c8fd227a6dba6e0	2021-12-20 13:25:40.895231+00	1713
803f45663a4f70a39001d35963fdda6b3d1023a7	2021-12-20 13:25:41.577934+00	1714
aca72872e7c6b73c18546c452a0f4f387a43c92d	2021-12-20 13:27:05.192102+00	1715
bfbb22500a5f41dc68c0b692cce5ba10782f2736	2021-12-20 13:27:31.34463+00	1716
cf2e6b3f47bb986bf58fec1d6020d2b2eb35e27a	2021-12-20 13:28:15.70397+00	1717
3b3f500d54a9c5635fd72574b9b68736d7977279	2021-12-20 13:28:36.149678+00	1718
0ce94fa97bdb29453f8a5c4356289dcf2d8cd023	2021-12-20 13:29:24.554312+00	1719
4499e4c27812c2d5e934ceb54de849508b44d534	2021-12-20 13:29:55.750514+00	1720
fbdd9dd9f161e43db0cf4e94c17e9019457af609	2021-12-20 13:32:26.164398+00	1721
0ba4ec16aeabfbc4274471e5e62efbcc6e89f70e	2021-12-20 13:32:47.374851+00	1722
f9c02ea3fe5cc995634d89e685b6284f020ebdc3	2021-12-20 13:33:50.506556+00	1723
0b804e7838735e536e10e74e6f6fb7c5c32c385f	2021-12-20 13:34:00.769642+00	1724
57ea6edae84ff4def893afb5d56349725007f791	2021-12-20 13:35:07.456825+00	1725
e6c307e064b4a2b901c5c0fe5d3d74195edcf417	2021-12-20 13:39:16.298605+00	1726
d2d7717c8f304e097413f1858e0a6d9ffbaeb008	2021-12-20 13:46:17.309584+00	1727
263eba2a5ea8242a0f663c7b6947752bbcfc765b	2021-12-20 13:46:38.854931+00	1728
8c5e3205733d7266348e6276d5be259ffc05537f	2021-12-20 13:49:08.373038+00	1729
7b7d8b35bfbf07c8a5aa938d5f7956c9712b0114	2021-12-20 13:51:54.928559+00	1730
c64bf44d6473d4aa69d610aed9550acdb8bb5f10	2021-12-20 13:53:36.443034+00	1731
f3d6c40497391cd4fe94acacd903d1680965b57c	2021-12-20 13:56:54.459225+00	1732
6476854cb387e3faff6b18dd2d66c09e5b51abe5	2021-12-20 14:02:47.502896+00	1733
444413ea104519b87b2608eebf391cca1708a004	2021-12-20 14:03:36.566366+00	1734
a310114004a80847f2afae56be5b5c42be03cb5d	2021-12-20 14:13:29.411274+00	1735
180a28d1922b09aaea77e3c4f95cfb2ec4b27cd2	2021-12-20 14:14:26.68385+00	1736
308a38147f080b2bd07c68a00ecfafd0e04d7dca	2021-12-20 14:19:43.130778+00	1737
7175b96e5c177cd7b11bffeb76e031f95e0decf4	2021-12-20 14:20:07.149661+00	1738
061c8dae4e3a149d52d84861fed1c2187951e6c1	2021-12-20 14:22:17.112896+00	1739
1df1cbe7af62f30020e8fe31504ac485b43c196f	2021-12-20 14:26:28.9313+00	1740
7b37edfa0d7805dbcc683865a62165c3774425df	2021-12-20 14:27:02.081487+00	1741
4245254aac399d3e5d721e1c5b473ccb6f113d77	2021-12-20 14:35:57.956204+00	1742
50d7925360e7936ecbde7ca92cadef71e9c56506	2021-12-20 14:43:28.501366+00	1743
648bdcdaf12d9e71240d668964c5c7617d0aeab2	2021-12-20 14:45:26.42587+00	1744
62e180989285df67f3ef013151e5458ffe13c869	2021-12-20 14:47:49.098046+00	1745
2627dc727857e41dc8d6f49715a37b4cfaf30038	2021-12-20 14:49:12.002462+00	1746
6344ed4cceb94cde289a91c161f8e128b346a55c	2021-12-20 15:07:27.008762+00	1747
2a7fc2e524f70af16bcea63bb9dc3e10c1739df4	2021-12-20 15:08:17.10245+00	1748
13fa5fe2af0c338d95d225ccbda742f6ead6c53e	2021-12-20 15:08:23.955046+00	1749
41f3f836f24d1219ef03944e6f58891e95150a1d	2021-12-20 15:19:18.974283+00	1750
30cd6cdcf69c197269104266dec535395a8a5822	2021-12-20 15:20:55.268746+00	1751
1a123487deab131561769f3af5d9669c73e1ec04	2021-12-20 15:37:36.029405+00	1752
3df065e4cd37ee573d05b569c57350a64b511569	2021-12-20 16:08:21.96127+00	1753
86f3f1e125178eec3c5bcee94d99c1692aa5f8e0	2021-12-20 16:38:33.349542+00	1754
cae28216fbd64f894b3c35d6ddfd90a718f5c45f	2021-12-20 16:43:39.969265+00	1755
9abd4c6fe7fb95e4084da4dc6f2029a7f6c868a4	2021-12-20 16:56:00.150676+00	1756
a095c07615048e1c6449da36ad9263322e49403b	2021-12-20 17:01:48.332861+00	1757
c5ac4d4878eaf0348817983678c90bf68cb2b136	2021-12-20 17:10:21.4999+00	1758
158f62135645a6a983f91c367a30b5ddcec7d53c	2021-12-20 17:12:38.742487+00	1759
1d1dd72a54be890da367ea60a762fa046d291e52	2021-12-20 17:29:02.36582+00	1760
2cd3c18a873b35cc4e5698b2eee65569d42a3b4c	2021-12-20 17:39:31.419247+00	1761
652b135b69369079627372a0d2550aa1a02c8eed	2021-12-20 17:56:55.990405+00	1762
2962cd164b38b6c5eeb0c75c955f7b91e9c59841	2021-12-20 18:05:54.804859+00	1763
404fd2356342e05717c2f54b674e0a0fcc89a37c	2021-12-20 18:15:21.094305+00	1764
a4082e6bb68676636512c96405d951d8da95375d	2021-12-20 18:19:20.904575+00	1765
57f729161a6f7a7c3095ee33f27f4fcb7caa191f	2021-12-20 18:29:25.374617+00	1766
8a37e0afe59d0b9e35a38551dfd2340ea82e1286	2021-12-20 18:30:17.980844+00	1767
6064900050e3eb95c7ea815c448dd60a73420d80	2021-12-20 18:45:11.67298+00	1768
142c3bbae316d469d30e9bc5b7214949be9c0169	2021-12-20 18:50:31.015822+00	1769
458b1f835813e356e874512b64597ef8da5658ee	2021-12-20 18:54:21.173861+00	1770
220ceb2b49c8ee62e79671d90aea0198c7b750b0	2021-12-20 18:54:28.420465+00	1771
b8a041526ededdffe2c39e7502304fd30bc129a1	2021-12-20 19:34:30.35499+00	1772
a439e0b9a1ecbc4ad242f9c2c18baa877d035a99	2021-12-20 19:36:33.178976+00	1773
9a406bfa41160f53f610ad55a9f79f1826e77e4f	2021-12-20 19:46:06.256599+00	1774
ef67ae05e925fd3dd349a2e8183d25033bab660e	2021-12-20 20:02:41.71038+00	1775
4ed1e3eabf15ba8038f97f85fa121d9c93022c7b	2021-12-20 20:06:32.503482+00	1776
29d3ce4e4cfc08468f319f50d2e4a4b5887ebc0a	2021-12-20 20:09:53.284343+00	1777
cd70d73e22a24cba095332f7668c702f7da6884f	2021-12-20 20:15:24.297499+00	1778
335401433135c0b6649f482dc22d9732257c3fa1	2021-12-20 20:20:39.551404+00	1779
c492716b223d9031f382883e1c0c96ad8a25324b	2021-12-20 20:28:54.894232+00	1780
e083cd51c130cacfa2962938b7b6e8c069f7d51a	2021-12-20 20:52:54.491056+00	1781
1ea7d376e08058205bd857dd418b77b3673e2163	2021-12-20 21:00:47.423452+00	1782
df1c44e2b1d3ce6f5450ef203ff82b351c48e11f	2021-12-20 21:48:53.962373+00	1783
28321c114f397e694f6f3934582cd290310eee78	2021-12-20 22:05:25.998591+00	1784
eb2ff1e2bd5ad70e9116c3d315d9cfcabe7444d0	2021-12-20 22:24:14.755736+00	1785
255534c6c0d73c4ac4559535ad776ccd0da5f12a	2021-12-20 22:33:14.237317+00	1786
4dd670413be181e0bca167dbbb0b5d17c9fdc641	2021-12-21 02:26:10.912246+00	1787
9d673c2929288b5fed1d3ab5813a74ab19416d47	2021-12-21 02:34:16.849319+00	1788
8295388e7301c40eee27979940c731f9badae91e	2021-12-21 02:53:49.487419+00	1789
c9b4639886b742f44cd5a764554272980687f80e	2021-12-21 03:21:55.43188+00	1790
99071f8b4d3efbb057860cfe74abd6a40b6d5c84	2021-12-21 03:30:17.551836+00	1791
c0e86d09f0d8fb49394e4b7a1524200df2b05dcc	2021-12-21 04:07:30.939902+00	1792
457c30c6e50df66fce561b1d44d2f4d45c0d3ede	2021-12-21 04:40:58.390059+00	1793
e0fea2210e1bb4fcd9ecc54e03d6419a52956cec	2021-12-21 06:13:27.985426+00	1794
60ac10f97313c50d4d7bc47bcd022067e366df45	2021-12-21 06:48:15.555068+00	1795
bbdbd8847d1d4445c06f15b3be88452a5a61c594	2021-12-21 08:52:51.40063+00	1796
0a3cb1513050aedb58d6d6474e801829c0cce3e8	2021-12-21 10:18:09.910507+00	1797
49ffa184da214f169bc35617b32642f2925d9b9d	2021-12-21 10:34:23.583023+00	1798
0c789a9aa9336836d9f5d9b0032eda4c5e0833d8	2021-12-21 10:36:57.803034+00	1799
f7ce53af4bfa717829226ac1e234f5866d809e22	2021-12-21 11:04:27.267391+00	1800
8e5be14a703d0ec673f63bddfd22696fd81b9fb5	2021-12-21 11:20:37.268748+00	1801
845950794f9729cb8553dc79f0cbea464a87b11e	2021-12-21 12:44:28.760004+00	1802
2e37a3c187846c7e93127380b6a6fbfa2c621aed	2021-12-21 17:08:57.340865+00	1803
c39e70f0699f414e1dbaed06ceafc67e666d6616	2021-12-22 03:58:58.377677+00	1804
132bc74c2fa06d5a14090ce9c86f8a3b0ce0f055	2021-12-22 06:40:23.546699+00	1805
edcc24e6638e208896b58a61e4e6b07fe3b2936c	2021-12-22 08:34:30.214343+00	1806
3afd1ec1f65eb2c876d978466cd7f861fd4e2bdf	2021-12-22 09:23:47.371166+00	1807
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	userprogress
7	users	user
8	learning	subject
9	learning	lesson
10	authtoken	token
11	authtoken	tokenproxy
34	learning	testquestion
35	learning	questionanswer
36	learning	test
37	users	lessonprogress
38	users	subjectprogress
39	users	passwordkey
40	users	completedlesson
41	learning	testassignment
42	learning	testassignmentquestion
43	learning	lessonrating
44	users	completedtest
45	files	documentfile
46	files	imagefile
47	files	videofile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	learning	0001_initial	2021-10-09 22:14:40.587125+00
2	contenttypes	0001_initial	2021-10-09 22:14:40.598704+00
3	contenttypes	0002_remove_content_type_name	2021-10-09 22:14:40.609302+00
4	auth	0001_initial	2021-10-09 22:14:40.64393+00
5	auth	0002_alter_permission_name_max_length	2021-10-09 22:14:40.649624+00
6	auth	0003_alter_user_email_max_length	2021-10-09 22:14:40.654445+00
7	auth	0004_alter_user_username_opts	2021-10-09 22:14:40.659795+00
8	auth	0005_alter_user_last_login_null	2021-10-09 22:14:40.66585+00
9	auth	0006_require_contenttypes_0002	2021-10-09 22:14:40.668859+00
10	auth	0007_alter_validators_add_error_messages	2021-10-09 22:14:40.673838+00
11	auth	0008_alter_user_username_max_length	2021-10-09 22:14:40.67861+00
12	auth	0009_alter_user_last_name_max_length	2021-10-09 22:14:40.684313+00
13	auth	0010_alter_group_name_max_length	2021-10-09 22:14:40.689847+00
14	auth	0011_update_proxy_permissions	2021-10-09 22:14:40.695004+00
15	auth	0012_alter_user_first_name_max_length	2021-10-09 22:14:40.699862+00
16	users	0001_initial	2021-10-09 22:14:40.775977+00
17	admin	0001_initial	2021-10-09 22:14:40.795701+00
18	admin	0002_logentry_remove_auto_add	2021-10-09 22:14:40.801848+00
19	admin	0003_logentry_add_action_flag_choices	2021-10-09 22:14:40.809357+00
20	authtoken	0001_initial	2021-10-09 22:14:40.822977+00
21	authtoken	0002_auto_20160226_1747	2021-10-09 22:14:40.841151+00
22	authtoken	0003_tokenproxy	2021-10-09 22:14:40.845525+00
23	sessions	0001_initial	2021-10-09 22:14:40.858827+00
34	users	0002_auto_20211010_0956	2021-10-10 09:56:14.547865+00
35	users	0003_alter_userprogress_unfinished_lessons	2021-10-10 11:04:16.071343+00
36	learning	0002_questionanswer_test_testquestion	2021-10-10 19:27:08.205189+00
37	learning	0003_auto_20211010_2219	2021-10-10 22:20:02.600147+00
38	learning	0004_auto_20211016_1956	2021-10-16 19:57:01.067154+00
39	users	0004_auto_20211016_1956	2021-10-16 19:57:01.151207+00
42	users	0005_passwordkey	2021-10-16 23:04:13.983478+00
43	users	0006_alter_user_date_joined	2021-10-17 11:22:54.59495+00
44	learning	0005_auto_20211017_2029	2021-10-30 12:31:16.160551+00
45	users	0007_auto_20211017_2029	2021-10-30 12:31:16.185545+00
46	learning	0006_auto_20211030_1646	2021-10-30 16:46:28.408174+00
47	learning	0007_auto_20211101_1612	2021-11-01 16:12:33.739794+00
48	users	0008_lessonprogress_lesson	2021-11-01 16:12:33.759758+00
53	users	0009_auto_20211103_1944	2021-11-03 19:44:32.287717+00
55	users	0010_alter_completedlesson_user	2021-11-03 20:03:30.499973+00
56	users	0011_auto_20211104_1358	2021-11-04 13:58:29.634768+00
57	learning	0008_auto_20211105_0830	2021-11-05 08:31:59.912192+00
58	learning	0009_auto_20211106_1311	2021-11-06 13:11:42.484009+00
59	learning	0010_auto_20211106_1533	2021-11-06 15:33:40.971795+00
60	users	0012_remove_completedlesson_user_review	2021-11-06 15:33:40.982473+00
61	users	0013_auto_20211107_1608	2021-11-07 16:08:48.552024+00
62	learning	0011_alter_questionanswer_explanation	2021-11-08 01:17:57.342807+00
63	files	0001_initial	2021-11-08 09:35:37.619525+00
64	learning	0012_auto_20211110_1428	2021-11-10 14:28:53.66813+00
65	users	0014_alter_user_uuid	2021-11-10 14:28:53.680836+00
66	learning	0002_initial	2021-11-12 03:45:19.943747+00
49	learning	0002_lessonrating_testassignment	2021-12-12 09:31:43.114179+00
50	learning	0003_auto_20211207_1645	2021-12-12 09:31:43.118679+00
52	users	0002_completedtest	2021-12-12 09:31:43.127088+00
54	learning	0004_subject_image	2021-12-12 09:57:08.660197+00
68	learning	0005_auto_20211212_1322	2021-12-12 13:22:36.830453+00
69	learning	0006_remove_testassignmentquestion_image	2021-12-12 13:34:40.438764+00
70	learning	0007_testassignmentquestion_image	2021-12-12 13:34:51.500646+00
71	files	0002_auto_20211216_1204	2021-12-16 17:12:54.229719+00
72	learning	0008_merge_0002_initial_0007_testassignmentquestion_image	2021-12-16 17:12:54.233379+00
73	users	0003_user_foo	2021-12-17 14:37:22.631381+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
20e19simmh220p2ofgkiezreg8f1pbix	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mZhcD:WMxQr2hxL3WNFdxYMMeNREUzDMZIxUPEuhelKScznHI	2021-10-24 22:48:21.150038+00
fjmgl64czp7xu3iz9fxvb78dgwv02xpr	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mc2EF:0oG7rYrrTSRKdGlMgk9KsBhU3w6WnmLgMKrqeaZUEcE	2021-10-31 09:13:15.2393+00
43u0lqmj2vuciluhwycga5g4mlljohrw	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mgqm8:P0uJMMH8egzcwQ-7gqp2hNf_CTfTDfrj3zh4oE3hsro	2021-11-13 16:00:08.472153+00
eokp4u74qu9yhi6k4t4e11icpvb40l3b	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhZsj:u1bOB3nelRWaCRDmVtGFNCVNrpofPNb_hvQEwfPnkDo	2021-11-15 16:09:57.781111+00
i8cv8je75chb6s057ul00fsstuuzrrff	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhaQw:I-uaFkCb-R_xfnrXbrKYbCXJoJaAs3Xpi88Xpup22fM	2021-11-15 16:45:18.244072+00
71vwr3cndsclmwqnypxr0r71qrv5w5sh	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhuda:8etgnkVIAPyUMCY9tnzC7JUieu7ePYpi4E3OC4K-Qgg	2021-11-16 14:19:42.01833+00
rwgwjgpzeswupnqts0kz2hp8op88jbdk	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1miKsV:R7-aQGg_L82V5YqufNiW-Por5S_WvoC-qtSeaZNaiMg	2021-11-17 18:20:51.42612+00
fjry6al05gqjpbli9ufbpuiz7ttusrf8	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mkobi:kyO90tDvqx7HQQYWjZ8agH6zLbDVU2Lrnolix8PNniE	2021-11-24 14:29:46.328802+00
6p0d1jefsovanv9p5qp76oonyaw0l2rs	.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mlKbE:0sJ3Q91yUH1JJoTIiGAOODqlBKCX9wWhcM5gBCN9OHs	2021-11-26 00:39:24.713469+00
zlbokxwcwjnq75suf5x717lorzxcbty7	.eJxVjDsOwjAQBe_iGlle_5eSPmew1j8cQIkUJxXi7iRSCmjfzLw3C7StLWy9LGHM7MqUZZffMVJ6lukg-UHTfeZpntZljPxQ-Ek7H-ZcXrfT_Tto1NteE1KtVnlCBUjCIYCgElFbnWysoDzEnTopoApts5HSFAcpojcVQbDPF_uFN0Y:1mwYkO:HVqICB7VU_8oMrCsULtVcSZsfcPwEelE_lhvSNamjlk	2021-12-26 23:59:16.007895+00
\.


--
-- Data for Name: files_document_file; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.files_document_file (id, file, uuid) FROM stdin;
2	documents/3.docx	caa0976e-f1f9-463d-946e-4f4cee0de85f
\.


--
-- Data for Name: files_image_file; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.files_image_file (id, file, uuid) FROM stdin;
5	images/shiba-inu-helmet.png	48db2be6-3590-4467-8c99-3f1f43099a33
20	images/robot_emoji_WPs4HE4.png	b25f68b4-bb66-46da-a39a-11868b0cbf2e
21	images/robot_emoji_jawL63C.png	87d24dcb-9284-4e3b-ba72-2a4d98790eb7
24	images/theme_4.png	aafd86bd-5c1d-4704-8304-86f743cfadda
25	images/theme_5.png	193770a1-f9c0-42af-bebd-a2cbb576981a
26	images/theme_6.png	66290e7a-4bb0-4c8b-9537-306e8db59729
27	images/theme_8.png	15e068fb-8031-437a-ae7c-0026da6dd6f0
28	images/theme_10.png	95930da5-bf6b-4d7f-8652-360c4e9f433d
29	images/theme_18.png	92136cf8-9e6a-4707-8ee3-cdc30e9258da
30	images/theme_19.png	48257a19-6bd6-4172-be3a-8e0ef5cd794b
33	images/theme_3_lesson_8_outline_4.png	023769a3-de2c-4bdb-b38d-999a5395ccdf
36	images/theme_3.png	ae6be085-d371-443a-9f7c-a0b771655f87
37	images/theme_3_lesson_8_outline_4_oVBZZPj.png	2d27f092-ad6f-45ab-878e-97cab21665b0
38	images/theme_3_lesson_9_outline_0.png	580ab831-025e-4002-93d9-0c27d24a7099
39	images/theme_3_lesson_9_outline_2.png	e1024228-e7d1-4f53-84da-2c6f02e3fccf
40	images/theme_3_lesson_9_outline_3.png	e64e171e-7bc6-485d-b6c4-8d552b1a0167
41	images/theme_3_lesson_9_outline_4.png	8f58f1ab-8d2e-46ef-a9b7-12aebc34d71f
42	images/theme_3_lesson_10_outline_0.png	a0ea9521-91b6-44c8-ae7c-07ef4125c03a
43	images/theme_3_lesson_10_outline_1.png	6b789de5-dd75-4738-97e8-c9e8bc0b0815
44	images/theme_3_lesson_10_outline_2.png	62c739c0-c2e0-48a3-a6a9-dea91e0e2d56
45	images/theme_3_lesson_10_outline_3.png	7e948f53-b084-4488-85ca-f2d197e1de22
46	images/theme_3_lesson_10_outline_4.png	5351ae77-0030-4cf8-858e-a0641c94d242
47	images/theme_3_lesson_10_outline_6.png	9a5d42e8-a991-46da-8fe1-bf2e235c9b82
48	images/theme_3_lesson_10_outline_7.png	b86572d4-6665-4cb7-afaf-9d614f7cb46b
49	images/theme_3_lesson_11_outline_0.png	0138534b-f1b8-46da-b077-5d79b398b2a8
50	images/theme_3_lesson_11_outline_1.png	129e0dfe-5bf5-426e-8e51-b887ba0cd1d3
51	images/theme_3_lesson_11_outline_2.png	27a3c688-d4a9-403f-a2b8-c8c2bbd18789
52	images/theme_3_lesson_11_outline_3.png	3fb94034-b873-4c5b-8348-b46593deb024
53	images/theme_3_lesson_11_outline_4.png	4dd06862-61d1-40b4-9054-2e12868cf605
54	images/theme_3_lesson_11_outline_5.png	ce7b485f-4eff-4c8d-bdb5-16f6c94020fe
55	images/theme_3_lesson_11_outline_5_ah9boHQ.png	c9b3dad9-58f3-4d8d-a894-bed9382fe082
56	images/theme_3_lesson_11_outline_6.png	fdc3785f-ee24-49ff-a895-900b8b90045a
57	images/theme_3_lesson_11_outline_7.png	1266c5e8-8861-465b-ad29-72717f0c79e2
58	images/theme_3_lesson_11_outline_8.png	8700b5ac-4ae1-4576-9c9a-5f7e7776ab39
59	images/theme_3_lesson_12_outline_0.png	7ce7325b-61b5-44d0-926f-d482789a42f7
60	images/theme_3_lesson_12_outline_1.png	fdc47b92-a81f-4fe9-a9e7-1a21b78775a9
61	images/theme_3_lesson_12_outline_2.png	397eb459-7c4c-4919-aaa9-b212b4275165
62	images/theme_3_lesson_12_outline_3.png	da702d6f-48a1-45a5-bfd7-ad4a4aa4d1f6
63	images/theme_3_lesson_12_outline_4.png	9af0d3c5-f439-48f5-893d-5588f3ea0c2c
64	images/theme_3_lesson_13_outline_0.png	5f3c84a4-4e55-44fb-8a66-a158a5729de0
65	images/theme_3_lesson_13_outline_1.png	8ed165bb-8d75-4c8a-971a-a8aa1f0325ff
66	images/theme_3_lesson_13_outline_2.png	f97f5d64-475d-4d66-ab48-52cdea1e46f4
67	images/theme_3_lesson_13_outline_3.png	b5e2f32b-3673-48db-9bd0-c690d1dafc03
68	images/theme_3_lesson_14_outline_0.png	fcd6d55b-da45-44c1-b304-a41c71790729
69	images/theme_3_lesson_14_outline_1.png	7b33ebaf-c23f-42ee-8611-b19b52520f04
70	images/theme_3_lesson_14_outline_2.png	0c3b49cf-cce1-4a46-8955-81a50aa2600b
71	images/theme_3_lesson_14_outline_3.png	52346313-3ee9-465f-871a-ee0356c9c8a9
72	images/theme_3_lesson_14_outline_4.png	175e5fc2-1728-4540-a0ac-06132568e742
73	images/theme_3_lesson_14_outline_5.png	b7ae0a29-d5e2-4390-8f9b-3d3644584ded
74	images/theme_3_lesson_14_outline_6.png	b1a902df-aab1-41cc-95db-3b2d7370ffa8
75	images/theme_3_lesson_14_outline_7.png	58b30d99-db3f-4b3b-ac39-e59937c28bb4
76	images/theme_3_lesson_14_outline_8.png	2d588c18-b6c4-4ebf-81e3-e5f5efa53e44
77	images/theme_3_lesson_14_outline_9.png	2430275d-47e4-45cc-b81b-bdf005d59e06
78	images/theme_3_lesson_14_outline_10.png	eade278a-2d0b-4049-bbbc-0dd504274d8b
79	images/theme_3_lesson_14_outline_11.png	e6a4593a-9d72-42b9-9055-19ee8a22402f
80	images/theme_3_lesson_15_outline_0.png	38b57153-4dad-4199-941f-9ff1ae311d1c
81	images/theme_3_lesson_15_outline_1.png	18912758-c54a-4333-bc97-5e6a0829f6ac
82	images/theme_3_lesson_15_outline_2.png	83d72944-3183-447c-8eac-560b8c750e0f
83	images/theme_3_lesson_15_outline_3.png	eed2b4cf-03af-4f96-aa23-a979cc94e390
84	images/theme_3_lesson_15_outline_4.png	156bbb32-ae39-41ac-a191-f45d69afa2d7
85	images/theme_3_lesson_15_outline_5.png	a4b6ee83-48c7-4443-a001-3fd4414fd368
86	images/theme_3_lesson_15_outline_6.png	5e09fa2e-d301-4aa2-9378-a94dc4bf1fdf
87	images/theme_3_lesson_15_outline_7.png	01c71580-861b-43a5-82d9-1e3935c7b732
88	images/theme_3_lesson_15_outline_8.png	1d3e8460-45a2-4a66-aefb-1fdeff2db8c7
89	images/theme_3_lesson_15_outline_9.png	7de49e8d-f4ae-4515-9889-4c7489d41943
90	images/theme_3_lesson_15_outline_10.png	0adfa36f-0b70-42b2-bc0d-357a799cd78c
91	images/theme_3_lesson_15_outline_12.png	df9ac20e-7816-4c43-91ce-13a354f14b69
92	images/theme_4_lesson_7_outline_0.png	be36112e-cbb1-47f1-8b7e-cb1650f589be
93	images/theme_4_lesson_7_outline_1.png	cf5d0b27-bb3f-44a2-8eb9-de924e12d6e5
94	images/theme_4_lesson_7_outline_2.png	285234db-8695-429c-8970-ced827d55c7e
95	images/theme_4_lesson_7_outline_3.png	08243215-869f-4f3e-a58e-7a57dfcb4b8f
96	images/theme_4_lesson_7_outline_4.png	0df0bee6-c40e-4d49-91a9-0bf18d80c981
97	images/theme_4_lesson_7_outline_5.png	262900ad-603c-4083-bafe-b89715bed626
98	images/theme_4_lesson_7_outline_6.png	239a831b-dd58-40af-8ebf-b7fdbce7dbf2
99	images/theme_4_lesson_7_outline_7.png	f272ec3f-3e1b-4ed4-9a65-fde0e4879217
100	images/theme_4_lesson_7_outline_8.png	8327c79a-6da6-454c-9b75-c47e371e5f83
101	images/theme_4_lesson_7_outline_9.png	d86f2b46-b07c-4aeb-954d-39e0d170de79
102	images/theme_4_lesson_7_outline_10.png	49a5036f-6c17-4cc0-bd2a-3d4e72766863
103	images/theme_4_lesson_7_outline_11.png	5c624f01-3f26-4b2f-bf63-1f8b01f42469
104	images/theme_4_lesson_7_outline_11_XB0txLc.png	0c114b80-f823-4449-b3d5-0a71c2cd450a
105	images/theme_4_lesson_7_outline_13.png	46685c5f-e340-4c6b-8d06-505795006bad
106	images/theme_4_lesson_7_outline_14.png	6cc3e56a-b4a9-41d2-98e3-4f9e31858199
107	images/theme_4_lesson_7_outline_14_cUBl8AU.png	a0f47846-7aee-4b9f-bc48-e90701cb092f
108	images/theme_4_lesson_7_outline_15.png	447cf93f-f0da-498c-9d3b-256e3d851970
109	images/theme_4_lesson_7_outline_16.png	9a779491-e0c3-4454-ab78-52016e9251de
110	images/theme_4_lesson_7_outline_17.png	18251d63-9ffd-4c0c-88e4-2ffa05260574
111	images/theme_4_lesson_7_outline_18.png	c1c3a998-af07-4dd6-b10a-6bf5d608ac7f
112	images/theme_4_lesson_7_outline_19.png	08099a45-63a2-41c5-9bd0-9959e1ae584f
113	images/theme_4_lesson_7_outline_21.png	69a5b25b-327e-40fb-9876-94c3c0557e64
114	images/theme_4_lesson_7_outline_22.png	3c179928-3e7c-4aa0-97f7-89a460a1d787
115	images/theme_4_lesson_7_outline_23.png	b3767c0d-aa8a-4b0e-86ce-fb238fbff538
116	images/theme_4_lesson_7_outline_24.png	2d5fa9a7-426a-4dfb-aa6e-c05e5cf34010
117	images/theme_5_lesson_16_outline_1.png	488d141b-6fa3-4ef7-884a-68085b486ab2
118	images/theme_5_lesson_16_outline_2.png	c401f2b2-4350-4764-ac43-1188f4cff6da
119	images/theme_5_lesson_16_outline_3.png	6fdfacc7-8aec-4fb9-b5c3-d56d5a6c5b8f
120	images/theme_5_lesson_16_outline_4.png	7f972d58-31e7-4f18-a0fc-15d18f5bacdc
121	images/theme_5_lesson_16_outline_5.png	15464c8f-ec2e-4060-9b9e-d84ac61a1be8
122	images/theme_5_lesson_16_outline_6.png	2c43b632-a425-4137-a0ed-bbfc7357d9f2
123	images/theme_5_lesson_16_outline_7.png	ddbe1e09-14fd-4935-b437-2f705a976633
124	images/theme_5_lesson_16_outline_8.png	44bafea8-1a59-4073-aec9-0d826f8ce5c1
125	images/theme_5_lesson_16_outline_9.png	c4e15dc0-ec72-4462-a954-17ee21dd3c7e
126	images/theme_5_lesson_16_outline_11.png	020572a8-6a45-49b9-9daf-ba8554c6d149
127	images/theme_5_lesson_16_outline_12.png	61f17ca7-a389-43cf-ab2d-59f5082bbe7f
128	images/theme_5_lesson_16_outline_13.png	07bdb8a3-b028-44d9-a8ea-b8013d63fc37
129	images/theme_5_lesson_16_outline_14.png	6ad494ac-4800-467e-9052-d218b416eebc
130	images/theme_5_lesson_16_outline_15.png	528e8885-1be8-49b7-a915-5459c837d614
131	images/theme_5_lesson_16_outline_16.png	60ea205a-6230-46c5-9515-de9fd64486bf
132	images/theme_5_lesson_16_outline_17.png	4d486cfc-e8a6-4232-992a-5d42e1a4c429
133	images/theme_5_lesson_16_outline_18.png	1dd6563e-1733-4f64-9f8f-ae63f70ba8bb
134	images/theme_5_lesson_16_outline_19.png	f1ff641c-eb5c-4324-b6d7-07266ec0fc54
135	images/theme_5_lesson_16_outline_20.png	59b79aff-8716-4737-9a5a-4279690429e5
136	images/theme_5_lesson_16_outline_21.png	8ba07589-0601-4c14-b736-f95450e7a21e
137	images/theme_5_lesson_16_outline_22.png	ddcb841c-425c-4bcd-890b-3ba28af7b3e7
138	images/theme_5_lesson_16_outline_24.png	a7378c03-dea0-40df-b8cc-4247818a15b7
139	images/theme_5_lesson_16_outline_25.png	fdbd2373-26bf-4d25-8db4-3696ee906931
140	images/theme_5_lesson_16_outline_26.png	57849fcd-55fd-42fe-9057-d09600acb631
141	images/theme_5_lesson_16_outline_27.png	d36bfd0f-53e0-426a-8dee-f5bfad59075a
142	images/theme_5_lesson_16_outline_28.png	158db19b-e976-4687-80b0-cecd5557599d
143	images/theme_5_lesson_16_outline_27_EuRyuiW.png	efbf7571-7f00-4022-954b-6db97e0239dc
144	images/theme_5_lesson_16_outline_28_0GgN1Cn.png	f39ce71f-01c6-4d72-85c6-b5230bc26784
145	images/theme_5_lesson_16_outline_29.png	a53da2a9-cf44-4813-a529-29f365bdf00e
146	images/theme_5_lesson_16_outline_30.png	8b17573a-ba6a-4059-9570-b1df05845905
147	images/theme_5_lesson_16_outline_31.png	1d87ce44-6176-404b-9a13-8a19efd1e1d0
148	images/theme_5_lesson_16_outline_32.png	5544abd0-ee7a-4227-8019-56a0c78cd5f3
149	images/theme_5_lesson_16_outline_33.png	794f0c16-5118-4015-a9fe-8943daed2e88
150	images/theme_5_lesson_16_outline_34.png	43baade5-250c-4883-a499-7781c08d7b36
151	images/theme_5_lesson_16_outline_35.png	d43cf5f2-17c1-4144-9954-e3a4b6634ec7
152	images/theme_5_lesson_16_outline_36.png	2e7920f2-6a68-4aef-8cc8-acdd12d9a1a8
153	images/theme_5_lesson_16_outline_37.png	8f7eecce-2bd2-4f89-aa3a-04c5ba58c7c6
154	images/theme_5_lesson_16_outline_38.png	f3df7a5e-2367-4326-a172-746b3f02dcfd
155	images/theme_5_lesson_16_outline_39.png	2fd501f2-c70e-4d41-a669-648c07a5180f
156	images/theme_5_lesson_16_outline_40.png	382e990c-44e0-478b-827f-108125f102bd
157	images/theme_5_lesson_16_outline_41.png	8fe62a7d-dedc-4867-be69-3eefc0e1e816
158	images/theme_5_lesson_16_outline_42.png	5b86c55e-48ef-4d0f-ba77-21c3e34b5b6d
159	images/theme_5_lesson_16_outline_43.png	42f6382a-b69e-4d3d-83cc-c220cc554dd7
160	images/theme_5_lesson_16_outline_44.png	e7c3d4f4-212a-4978-86bc-782546453d88
161	images/theme_5_lesson_16_outline_45.png	0ed50476-b176-413c-8d1d-43c4740016f2
162	images/theme_5_lesson_16_outline_46.png	4adca6fd-1575-42b5-9222-b0014fa99496
163	images/theme_5_lesson_16_outline_47.png	2a7b3d10-d03b-49c4-a9ba-70ad198f7443
164	images/theme_5_lesson_16_outline_48.png	1a4f1a18-7c3b-490b-8a2c-70b354710dee
165	images/theme_5_lesson_16_outline_49.png	8393f643-f0d9-4da9-b1d3-25600d444d63
166	images/theme_5_lesson_16_outline_49_7hJJ9mM.png	b3d0acfe-b6aa-49dc-bebd-d8a9034fda3f
167	images/theme_5_lesson_16_outline_50.png	6a61695e-91b8-490e-8979-0545341a2ae8
168	images/theme_5_lesson_16_outline_51.png	645f3b58-9f3a-40f3-89b4-ad5b5b214b18
169	images/theme_5_lesson_16_outline_52.png	6eb608bc-5ca7-442a-b20e-0fe455f41d62
170	images/theme_5_lesson_16_outline_53.png	71f87ff2-a105-4b14-9cd2-f2c7ef9de347
171	images/theme_5_lesson_16_outline_54.png	2a40ee0b-e810-4757-befe-c0acbee2349a
172	images/theme_5_lesson_16_outline_55.png	3b703241-ed23-404b-b868-68783cd68e48
173	images/theme_5_lesson_16_outline_56.png	dcaf07c4-8c8a-4fda-89cb-2ddeedaf59e6
174	images/theme_5_lesson_16_outline_57.png	019b94c3-dc24-44cc-aeba-fd69d46bf092
175	images/theme_5_lesson_16_outline_58.png	c5e4fcca-d3f8-491b-ab8a-d11fe6db9e6f
176	images/theme_5_lesson_16_outline_59.png	c5a4e47b-705d-477d-b380-9a09bd8cc3d4
177	images/theme_5_lesson_16_outline_60.png	3a483d02-9257-494b-9536-34df89dc2091
178	images/theme_5_lesson_16_outline_61.png	0a9902b4-5698-4d7b-b845-ca8a49a09cc5
179	images/theme_5_lesson_16_outline_62.png	d80b26e5-76ba-40f3-8ece-5f3a7ff228bb
180	images/theme_5_lesson_16_outline_63.png	2b6d30ca-3d50-49ab-999a-e5f03482f51d
181	images/theme_5_lesson_16_outline_64.png	b5730c4b-c065-412c-905a-3e01455eb4d0
182	images/theme_5_lesson_16_outline_65.png	22b71b49-771c-46db-b061-31e07d789eb3
183	images/theme_5_lesson_17_outline_0.png	f0f0a9d6-1b69-4932-b615-c67581423768
184	images/theme_5_lesson_17_outline_1.png	6b08286a-630c-4f9b-b0af-621588eb150a
185	images/theme_5_lesson_17_outline_2.png	14733fba-5419-4da0-9c4c-0907cdf76843
186	images/theme_5_lesson_17_outline_3.png	f29ebf4d-a1ee-47cd-9ab6-fef9b223caba
187	images/theme_5_lesson_17_outline_4.png	8db77d55-509c-4aaa-b147-cddfd5c832f4
188	images/theme_5_lesson_17_outline_5.png	3e2a78fc-71bf-4799-b195-00c973ee10b1
189	images/theme_5_lesson_17_outline_6.png	7fbfdcc9-f830-4773-bb00-44e7b0132372
190	images/theme_5_lesson_17_outline_7.png	57f425bf-1de7-4b9b-9af8-dcd00278b317
191	images/theme_5_lesson_17_outline_8.png	64a19859-00c6-4e21-85fc-c9706ce5d930
192	images/theme_5_lesson_17_outline_8_ONlbj37.png	9dc3ea46-0f8b-4374-b346-1dfbbd6f8951
193	images/theme_5_lesson_17_outline_9.png	54367e5b-8d06-4598-84b0-37ba264560a6
194	images/theme_5_lesson_17_outline_10.png	ee09720d-5ba0-4cb0-8a50-bf91c8057227
195	images/theme_5_lesson_17_outline_12.png	4a01b5ae-56f7-44dc-8617-9b4ca5008def
196	images/theme_5_lesson_17_outline_13.png	c6875fc6-c3a6-427d-8a45-5d532fab68ec
197	images/theme_5_lesson_17_outline_14.png	d3bff3ef-4f12-439e-9606-df40b0076dc2
198	images/theme_5_lesson_17_outline_15.png	2fd88562-eae6-4256-a617-4722922262d3
199	images/theme_5_lesson_17_outline_16.png	e23a44ab-6146-41f9-ad6e-a5bce03b771d
200	images/theme_5_lesson_17_outline_17.png	1909c48b-0cbf-4e20-a569-df37226fcb4a
201	images/theme_5_lesson_17_outline_18.png	49cc5f79-fa75-4912-8ccb-e77694fc59e4
202	images/theme_5_lesson_17_outline_19.png	ac3ed2ce-8660-4fd7-b014-2be2b435e49d
203	images/theme_5_lesson_17_outline_20.png	1d49552e-f4f3-4781-8f43-3f0bc18b6137
204	images/theme_5_lesson_17_outline_21.png	a357296b-78c4-4d98-bec4-9ed2490c177f
205	images/theme_5_lesson_17_outline_22.png	eaf9a55c-c384-45c1-8e2d-bbbe0a004c0d
206	images/theme_5_lesson_17_outline_22_uCPKWWU.png	5e8e817d-045d-481f-a3fb-51ea0f4ff4d1
207	images/theme_5_lesson_17_outline_23.png	d30165ba-04a0-44e8-afac-50367ae882fd
208	images/theme_5_lesson_17_outline_24.png	5acf852b-86b2-47ee-b43a-51d1499c28c5
209	images/theme_5_lesson_17_outline_26.png	9a4636e0-5add-4b5e-9080-22bcf17814fb
210	images/theme_5_lesson_17_outline_27.png	5b990229-9e2c-401c-890d-a9731acde786
211	images/theme_5_lesson_17_outline_28.png	584a596a-90a7-470c-964e-02ac831a2be1
212	images/theme_5_lesson_17_outline_29.png	f35259f6-dd78-4bdd-849c-0162ba25ddfe
213	images/theme_6_lesson_19_outline_0.png	ed3a6b11-23f4-4177-866c-86a9e7b142a0
214	images/theme_6_lesson_19_outline_1.png	c3999fbb-f769-4611-ab9b-607ccc183c63
215	images/theme_6_lesson_19_outline_2.png	843629aa-77c3-42d1-812c-8cf087e08489
216	images/theme_6_lesson_19_outline_3.png	f3f62aae-48d4-4820-8c36-24731433394e
217	images/theme_6_lesson_19_outline_4.png	23aaeff0-e54a-46af-8586-70c8307b2d13
218	images/theme_6_lesson_19_outline_5.png	27ed026b-cf7f-4d48-9230-dac73bc72a1d
219	images/theme_6_lesson_19_outline_6.png	623969c9-4762-42ee-8b54-cef9e08cd5fc
220	images/theme_6_lesson_19_outline_7.png	b8554680-0b1f-4f1d-a791-fb0896e6ba84
221	images/theme_6_lesson_19_outline_8.png	88cb188b-4460-40fa-9d49-deb7ccce4e23
222	images/theme_6_lesson_19_outline_9.png	83c58ef5-67a3-47e6-9789-3218fa272109
223	images/theme_6_lesson_19_outline_10.png	fe984edc-15e6-4a38-a817-da633527ea62
224	images/theme_6_lesson_19_outline_11.png	bfde9232-d3e2-4228-9192-c9e80ad5a2d4
225	images/theme_6_lesson_19_outline_12.png	bbc5ccbf-3864-4f81-a43c-4e97c2e2f6b4
226	images/theme_6_lesson_19_outline_13.png	f7c292e9-3de2-43c2-b183-ab2eddfc6c45
227	images/theme_6_lesson_19_outline_14.png	2be96929-95e9-45ca-8306-f3789116fd3d
228	images/theme_6_lesson_19_outline_15.png	bc3ae581-d1e7-4156-9f80-961f65b1a518
229	images/theme_6_lesson_19_outline_16.png	56bb203a-f7df-4695-ab38-fad9e0ed0b98
230	images/theme_6_lesson_19_outline_17.png	923f78cc-cd24-405c-af9c-999d41ad6df7
231	images/theme_6_lesson_19_outline_18.png	21069e6d-d1df-443c-a5bb-895d8ba0a7ae
232	images/theme_6_lesson_19_outline_19.png	92e96dd5-f83b-4ca5-95b6-26a2f3b7503b
233	images/theme_6_lesson_19_outline_21.png	5c23d60b-bc58-4103-8a9a-8d61884e25f3
234	images/theme_6_lesson_19_outline_22.png	75dafd51-ce53-48c5-8425-ec7c1455e0e2
235	images/theme_6_lesson_20_outline_0.png	a1ddc732-5405-4b2d-868b-ec398e68bf35
236	images/theme_6_lesson_20_outline_1.png	173e0109-9c12-4132-b3d4-139ca8e5cd65
237	images/theme_6_lesson_20_outline_2.png	1feec1c8-1138-49d3-9c9c-701a004c131e
238	images/theme_6_lesson_20_outline_3.png	25241435-e09d-4200-bace-2d9d30194799
239	images/theme_6_lesson_20_outline_4.png	c16cc969-1c47-4998-b547-f7d7be7c7fed
240	images/theme_6_lesson_20_outline_5.png	90b951b8-85bf-4cc7-9c80-20976749d9a4
241	images/theme_6_lesson_20_outline_6.png	aeeda0d5-48e7-48b4-a91f-db97fbbef126
242	images/theme_6_lesson_20_outline_7.png	0a50b80e-0426-432b-8465-2c46191e5234
243	images/theme_6_lesson_20_outline_8.png	6118a94c-2d00-4ad7-a3fc-1f0f1ed7fc44
244	images/theme_6_lesson_20_outline_9.png	04f9c38d-f68b-4b9f-b705-e151beb2a8ac
245	images/theme_6_lesson_20_outline_10.png	085ae04c-0377-4e82-b435-24d2fdb31901
246	images/theme_6_lesson_20_outline_11.png	b518fceb-ba42-4f57-b8df-b7cc2e9c5505
247	images/theme_6_lesson_20_outline_13.png	33a626ac-3ff0-459d-9fec-b6d6ce6c8af0
248	images/theme_6_lesson_20_outline_14.png	2b37b7ff-7d18-448d-a71a-09a87257e17c
249	images/theme_6_lesson_20_outline_15.png	49b1b96f-f096-49df-bdc2-f9f63ca4f361
250	images/theme_6_lesson_20_outline_16.png	583be2ea-3945-466a-b812-02283ebdda8b
251	images/theme_6_lesson_20_outline_17.png	f9222fdb-aa5c-466e-a602-0a331e2125b3
252	images/theme_6_lesson_20_outline_18.png	3213e243-b85b-4c80-a58b-fea0a9fa2cd9
253	images/theme_6_lesson_20_outline_19.png	b947c3a4-2cdc-48c4-875e-eeccdc0ff274
254	images/theme_6_lesson_20_outline_20.png	0e55eb79-eae2-4152-84d8-5b087fd2fa5c
255	images/theme_6_lesson_20_outline_21.png	5efda1a2-200f-462f-a215-ebd732d2f8e6
256	images/theme_6_lesson_20_outline_22.png	5f6f7ade-e8f8-4285-b6f2-f5ee0706cf1d
257	images/theme_6_lesson_20_outline_23.png	9895d07f-eb6f-48f0-b63e-8536a9078709
258	images/theme_6_lesson_20_outline_24.png	f4ec369a-8592-48bb-825d-02647c42d415
259	images/theme_6_lesson_20_outline_25.png	21fbec7f-3e54-4654-98c2-1dc3eb2946c4
260	images/theme_6_lesson_20_outline_26.png	0b18ee5c-4889-4690-ac8d-158461be5a90
261	images/theme_6_lesson_20_outline_27.png	936e9d33-a912-4cd6-8e0b-6051e54ae844
262	images/theme_6_lesson_20_outline_28.png	c39bc484-45f9-4f76-b2ac-7e7d333d5652
263	images/theme_6_lesson_20_outline_29.png	d8e4e48b-2306-487d-afe7-41d7dee63ca0
264	images/theme_6_lesson_20_outline_30.png	a76fbb3d-b735-45f8-b135-ba4d3d378ca5
265	images/theme_6_lesson_20_outline_31.png	7044fa38-6317-47ba-9381-b9bcef3a2e17
266	images/theme_6_lesson_20_outline_32.png	161b3d14-14cd-400b-aced-41d637ad2f07
267	images/theme_6_lesson_20_outline_33.png	e45dd6fa-1dff-4d3c-8c68-f3154006ae60
268	images/theme_6_lesson_20_outline_34.png	c96a14d9-8533-4aef-8772-ff9a92a303d4
269	images/theme_6_lesson_20_outline_35.png	f0dd483d-8632-4f1d-b8b3-4e32e0f4a2d8
270	images/theme_6_lesson_20_outline_36.png	1f80aaea-c3b3-40c0-8164-1b00ab900238
271	images/theme_6_lesson_20_outline_37.png	f48317d7-8fa4-45c7-b4d0-54a06014ab19
272	images/theme_6_lesson_20_outline_38.png	5249147a-8550-470b-ace6-ad841ec8d40c
273	images/theme_6_lesson_20_outline_39.png	4ad584f9-71d4-46f9-8644-483a6559b9e2
274	images/theme_6_lesson_20_outline_40.png	d90ea525-d923-4e77-8a95-f018cb2e8ed7
275	images/theme_6_lesson_20_outline_41.png	6d96064f-531e-439c-a9d5-38150636f993
276	images/theme_8_lesson_21_outline_0.png	05d3d172-72f8-4dec-ada1-bbd400a6539f
277	images/theme_8_lesson_21_outline_1.png	0229e4e1-7042-47f7-9718-83feb957a81a
278	images/theme_8_lesson_21_outline_2.png	39f2b4fb-6d43-4ece-a767-0a5a39e44403
279	images/theme_8_lesson_21_outline_3.png	169cf427-5c1b-4d15-87e0-5bf785199fa4
280	images/theme_8_lesson_21_outline_4.png	572a2329-d2ab-45f5-b3de-729be70bff33
281	images/theme_8_lesson_21_outline_5.png	b7afda6f-54d0-4717-b0c4-135e93ddce62
282	images/theme_8_lesson_21_outline_6.png	ce8c2769-ca8f-4a9a-a555-b997d82fb961
283	images/theme_8_lesson_21_outline_7.png	05265fca-e28e-478d-a5d5-7b5f55dcd2ed
284	images/theme_8_lesson_21_outline_8.png	144fce30-5c09-4ca2-b3fb-6769adf8605c
285	images/theme_8_lesson_21_outline_9.png	6d177b6a-ce20-45c7-a95c-f14b8a740f51
286	images/theme_8_lesson_21_outline_10.png	c440552c-c3ee-4693-9b8c-71b7ce0c0d9a
287	images/theme_8_lesson_21_outline_11.png	00c5fa01-ae4e-4a26-b5fa-0794dd7b5b6a
288	images/theme_8_lesson_21_outline_12.png	6195cdb6-0edb-4a40-9c4a-e49b65c70b11
289	images/theme_8_lesson_21_outline_13.png	f21bde13-017e-44a3-a203-4f1bffcdedfa
290	images/theme_8_lesson_21_outline_14.png	1577bede-96bd-4f3c-9a67-d99254369f7f
291	images/theme_8_lesson_21_outline_15.png	5af8d575-8189-4269-b78e-f71f18188164
292	images/theme_8_lesson_21_outline_16.png	bac33528-b62b-44a3-a845-e899ddf62e8f
293	images/theme_8_lesson_21_outline_17.png	aca72798-22b1-4272-a304-54e697ade10c
294	images/theme_8_lesson_21_outline_18.png	e851f07a-5d32-4846-a7a9-67d4e03b28d4
295	images/theme_8_lesson_21_outline_19.png	3a0b3ab1-ca6b-44fc-bfa0-c774b721d480
296	images/theme_8_lesson_21_outline_20.png	73b397ec-f656-4d6f-82da-99c69c806b30
297	images/theme_8_lesson_21_outline_21.png	764344f2-bbfa-4148-9aa5-a7eb769db136
298	images/theme_8_lesson_21_outline_22.png	dc5fef0c-4df9-497c-883d-5ade7a06c845
299	images/theme_8_lesson_21_outline_23.png	1a54ebc3-193c-4c67-9408-435da3d6821c
300	images/theme_8_lesson_21_outline_24.png	08b6b013-f93d-40a5-bfad-0eb2df134798
301	images/theme_8_lesson_21_outline_25.png	c0830fd4-7734-4368-bd58-22e74f817ee3
302	images/theme_8_lesson_21_outline_26.png	9f8ff4c0-58f1-417a-a7fd-aeac36212fa5
303	images/theme_8_lesson_21_outline_27.png	868965c9-e66e-4a9c-b932-35117327c84f
304	images/theme_8_lesson_21_outline_28.png	65055ef8-8bc1-4f79-8276-576c442fa5cf
305	images/theme_8_lesson_21_outline_29.png	5821ac15-ff97-4a67-b651-dfddca3d715e
306	images/theme_8_lesson_21_outline_30.png	db14c1b1-0290-4b4c-bc1c-a5da1c0eabe4
307	images/theme_8_lesson_21_outline_31.png	9e9b9cb9-45c7-4342-8230-10c6e3461e41
308	images/theme_8_lesson_21_outline_32.png	eb8a3e08-6dc6-4971-83af-7c922d85c9bc
309	images/theme_8_lesson_21_outline_33.png	9cb7cb4f-154d-46e0-a628-60d6e748cd53
310	images/theme_8_lesson_21_outline_34.png	15b35e09-6ecd-4743-bd0b-f9b4c9f1de64
311	images/theme_8_lesson_21_outline_35.png	fda745a6-4a57-4b37-951f-fe54a9884b77
312	images/theme_8_lesson_21_outline_36.png	bdeec3b4-4ab1-4190-b5f5-95204c692b70
313	images/theme_8_lesson_21_outline_37.png	748347e5-8ccb-422a-bd68-a99295985dd3
314	images/theme_8_lesson_21_outline_38.png	0d475b4b-8da0-47b3-9643-581eaa8dd85d
315	images/theme_8_lesson_21_outline_39.png	a965ccd5-3e29-41aa-8bd4-a09b09b1d0e9
316	images/theme_8_lesson_21_outline_40.png	bedfe7f0-5c42-4b1f-8c44-512de0a6308f
317	images/theme_8_lesson_21_outline_41.png	65bbeda3-754e-4e6d-ab81-6481a0624f7c
318	images/theme_8_lesson_21_outline_42.png	ca543fbf-5ead-4283-a071-e6064ed8557c
319	images/theme_8_lesson_21_outline_43.png	f697e83f-8268-437e-b1b5-cb6d1b1fb2a0
320	images/theme_8_lesson_21_outline_44.png	eea466a8-fa23-48e3-b41a-67b064bb2723
321	images/theme_8_lesson_21_outline_45.png	5b54d839-3363-4bd1-a2e0-c70ccf569e72
322	images/theme_8_lesson_21_outline_46.png	6ace8e15-1c7a-4f99-8f2d-959a850bb92a
323	images/theme_8_lesson_21_outline_47.png	999eb26a-e34c-429f-af71-483b29ccc75e
324	images/theme_18_lesson_23_outline_0.png	b8f99b2d-6793-4ca9-b95e-5e03ced9fc8c
325	images/theme_18_lesson_23_outline_1.png	f932e302-de50-4642-b289-cc3053400cff
326	images/theme_18_lesson_23_outline_2.png	9b335079-fd1f-4dfb-9fcf-5d25db9beff3
327	images/theme_18_lesson_24_outline_0.png	5d60d598-35a4-48db-aacc-0c7fef0be694
328	images/theme_18_lesson_27_outline_0.png	75aa8b42-a941-401c-95fe-9e8da4680e6b
329	images/theme_10_lesson_28_outline_0.png	69d64063-cf58-482a-b990-8685fe2c9518
330	images/theme_10_lesson_28_outline_1.png	285d4a90-9c3c-4c0f-9537-5f309c1b9dc8
331	images/theme_10_lesson_28_outline_2.png	52c47286-cc79-497e-af3a-8ac7ca53959d
332	images/theme_10_lesson_28_outline_3.png	2dcfc49b-fa2e-41f5-a7f9-d1fd759fea41
333	images/theme_10_lesson_28_outline_4.png	cafe1a22-c08b-4df5-a260-e88034d9a741
334	images/theme_10_lesson_28_outline_6.png	6395578f-42bc-4c7e-8a89-058345842468
335	images/theme_10_lesson_28_outline_7.png	32cfe32e-7b4f-49b7-ba31-372b4b248fc6
336	images/theme_10_lesson_28_outline_8.png	e101bc59-4d71-43ef-8be5-72e116754d76
337	images/theme_10_lesson_28_outline_9.png	78b9439b-e715-4d9f-8f19-4f1201e1c263
338	images/theme_10_lesson_28_outline_10.png	7a928161-b319-4c6c-b745-27fad5889925
339	images/theme_10_lesson_28_outline_11.png	f93f11d3-4ef8-4b3a-bfef-81a8df307b7e
340	images/theme_10_lesson_28_outline_13.png	6437f4a0-bf00-4c5f-b821-682d4afcdb0c
341	images/theme_19_lesson_29_outline_0.png	c5de479e-6b0f-4485-97ab-3786fa3a027e
342	images/theme_19_lesson_29_outline_1.png	ebbff6e9-be0c-47ee-9b62-759e0abd5a33
343	images/theme_19_lesson_29_outline_2.png	c9b7511e-1dce-4c17-b612-9cc483b1df07
344	images/theme_19_lesson_29_outline_3.png	18923144-3669-4436-bb00-2a031b4a2365
345	images/theme_19_lesson_29_outline_4.png	cf4d6b6f-4ad5-4139-a992-3160dc8c8210
346	images/theme_19_lesson_30_outline_0.png	6563c752-accc-4380-9547-58687b7e7e69
347	images/theme_19_lesson_30_outline_2.png	6be69789-a209-4b76-a299-256ea9607892
348	images/theme_19_lesson_30_outline_3.png	c6606bb6-93c5-43e1-b58f-9cda9f7848ed
349	images/theme_19_lesson_30_outline_4.png	e3e7bb01-7e32-460c-b254-5fc4b14e6e8b
350	images/theme_19_lesson_30_outline_5.png	5dc2e19b-4ed4-44d5-afe2-7bb836007242
351	images/theme_19_lesson_30_outline_6.png	7d9594b5-cb73-49b2-968b-05c1c6e8464c
352	images/theme_19_lesson_30_outline_7.png	2fb1ea2a-f493-4147-848e-5e680c0c4bd6
353	images/theme_19_lesson_30_outline_7_39XDurH.png	4538ffb3-9604-4cb7-9265-62f7804aa549
354	images/theme_19_lesson_30_outline_8.png	89ae69b7-f23c-493f-ad72-fa015cde2dfc
355	images/theme_19_lesson_30_outline_9.png	9d634d91-3a21-42b4-adcc-f692f5696032
356	images/theme_5_question_1.png	1416371c-86f8-4784-8da6-3e95e266203d
357	images/theme_5_question_2.png	c4e105f1-b3c5-4d5b-93c1-eb6e141c4795
358	images/theme_5_question_1_A6SGWr7.png	7cf2da34-42b9-4764-84d4-b1170114dbbb
359	images/theme_5_question_2_QpR81Gr.png	41eea5e4-68c9-47ee-8d8d-6a37218a3414
360	images/theme_5_question_6.png	d625c7bc-21ba-40ba-96cc-3eaa35b25b8e
361	images/theme_5_question_7.png	42b3c3c9-eed2-4413-bbb3-c2f0f5487808
362	images/theme_5_question_1_MM9KZEz.png	da91a358-4e43-4be4-896f-28e551ae425b
363	images/theme_5_question_2_G54gJdo.png	5e204c23-cb60-4a48-9ceb-0ce8bdfea3b4
364	images/theme_5_question_6_uKQQ5sP.png	5107de56-8470-4eb1-91c0-babd61b2face
365	images/theme_5_question_7_TZkTdkN.png	1377af63-a87d-41a6-8ab6-30f8d162395a
366	images/theme_5_question_8.png	afb1c2d5-c91a-4705-9110-cf400928cd92
367	images/theme_5_question_9.png	8488d023-05d9-404b-9893-246f14b1609d
368	images/theme_5_question_13.png	ebb68517-89f5-44ae-8509-8dae7538e4f6
369	images/theme_5_question_19.png	98f9311a-f534-4821-99d5-676d935ae1da
370	images/theme_5_question_20.png	9aaff3ab-6e87-4f39-8154-0dc9eceb2045
371	images/theme_5_question_21.png	94e11d2f-c2bf-4a8b-b8ad-f8c57f54bc12
372	images/theme_5_question_24.png	6bd27b70-5a62-4902-8af9-8d0b1042d398
373	images/theme_5_question_28.png	111a5fb2-c346-45d5-b322-eee9e15a7f82
374	images/theme_5_question_32.png	529640b3-3b10-4b96-9bd2-f992da81e043
375	images/theme_5_question_35.png	8e8fca7f-61be-4e1b-b872-47d378754595
376	images/theme_5_question_1_QGrDtbO.png	38dc5de3-7d29-4e40-a993-6157d41e9ae7
377	images/theme_5_question_5.png	804964b1-0831-46a4-8d20-09f939d620ee
378	images/theme_5_question_8_QolQLIU.png	175ab7d6-80e3-484d-8190-3b0e13f3fe72
379	images/theme_5_question_10.png	d24ba6f4-5497-462b-b46d-5686a8ec9c31
380	images/theme_5_question_11.png	6a7974c8-39c4-4b2e-9c1d-74651eec43c3
381	images/theme_5_question_14.png	5da54f9b-6651-4007-b393-2a9e240fc6a2
382	images/theme_6_question_3.png	b7380c9c-f185-4a1c-9a66-9ffca23bf6aa
383	images/theme_6_question_5.png	1ec15301-2323-4b1d-891e-ff2b8561ce30
384	images/theme_6_question_3_Zk5EOZt.png	775a9005-4d1b-4c3a-8b15-033c137c20f4
385	images/theme_6_question_4.png	bc7f139d-15d2-4c38-b5d1-91fff4e92ac1
386	images/theme_6_question_5_SdeeBPa.png	4aaa8f85-0c20-4755-9f44-374c86ba5b88
387	images/theme_6_question_6.png	b3faa2b0-97b7-4ff7-9a8a-da1e862b91aa
388	images/theme_6_question_7.png	5867f852-b82f-4f71-9135-11fd915a0660
389	images/theme_6_question_9.png	e272ef7d-4f74-4462-820d-ab8336c233af
390	images/theme_6_question_10.png	751fe2ac-a3e6-4b6a-a7ce-adaea49c243d
391	images/theme_6_question_11.png	50152f2d-3466-4a49-8730-43529da4de6f
392	images/theme_6_question_12.png	091bef39-59f4-467a-9d80-28ee7264d8e4
393	images/theme_6_question_15.png	eec3b912-d816-40a0-995b-3c17ae312965
394	images/theme_6_question_16.png	17349781-0519-4b61-b3dc-15da09e17cd9
395	images/theme_6_question_17.png	661e986d-2ba5-4562-b575-97a8ff89d8bb
396	images/theme_6_question_19.png	738c004c-c717-4fa9-93b1-35128beb0329
397	images/theme_8_question_2.png	1cbd24fe-b606-449a-8f97-708561b937ab
398	images/theme_8_question_4.png	1f034dd2-132f-4400-81d4-62dbdc7e1271
399	images/theme_8_question_5.png	2a2b86bf-f3af-4db0-871b-89e2621a545e
400	images/theme_8_question_6.png	329491dc-d855-4b55-aa7f-39e190e0fd86
401	images/theme_8_question_12.png	5545b78a-6254-498e-b974-9e90e5a0d94a
402	images/theme_8_question_13.png	4a5568f3-5ee4-42ef-b322-467b8d67caca
403	images/theme_5_question_1_7xdFWF5.png	8cf6d46f-2115-4291-bf3e-e6f0757e6bce
404	images/theme_5_question_2_fE4wBEx.png	452e5c57-7cac-4d0a-91f0-0e1d67b43732
405	images/theme_5_question_5_SkYWCFU.png	887ca7ee-cd78-41b6-a04c-2438022e070d
406	images/theme_5_question_6_eAfAAbx.png	4cb24f49-ca3b-447a-85fb-ecbab67815f3
407	images/theme_5_question_7_Lz4z13D.png	ae4cd285-d066-452e-b34c-dde1f8b674bf
408	images/theme_5_question_8_kjaSwNF.png	84be109b-deb0-47ac-b357-309f01a1caeb
409	images/theme_5_question_11_yO9W6Tl.png	338de1cc-cee3-47bd-bcab-62e0aadb70b5
410	images/theme_5_question_16.png	28e656a4-f0f5-4eb1-9004-f1b0fa314100
411	images/theme_5_question_18.png	4455566a-2fce-48d0-92d3-3b2f17f0043a
412	images/theme_5_question_20_DhUv7vh.png	9af05435-37c5-44d8-a1b5-c3907a617179
413	images/theme_5_question_22.png	1f775481-26d7-40d5-a1f8-fbaa2ea53f41
414	images/theme_5_question_23.png	0126d431-c26c-47a5-aae9-a609831380b9
415	images/theme_5_question_26.png	51fb31f9-81d9-4b45-9a44-db6d89b6df0c
416	images/theme_5_question_29.png	72b888c3-4461-41f3-9e43-d47417fb552b
417	images/theme_5_question_30.png	8802b02c-d9d3-4276-9ad4-decde7395166
418	images/theme_5_question_1_QTqvE3q.png	80308bcb-20d8-4851-babf-87e6e1205bfc
419	images/theme_5_question_5_uJHxi6X.png	65c353b3-be5e-413e-90e7-4accc07fba89
420	images/theme_5_question_8_jAcMmRu.png	cd44a215-c981-46c0-bf21-10be6e7cc223
421	images/theme_5_question_10_KUAMQtm.png	02df1931-8c95-4c26-b8cc-c4f25b8fed2a
422	images/theme_5_question_11_EnMcFOV.png	f03111f3-b0d8-4ae0-ac56-143dc53ef7f4
423	images/theme_5_question_16_IGisHZb.png	42540090-c739-4bf3-9121-9662eef4f1aa
\.


--
-- Data for Name: files_video_file; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.files_video_file (id, file, uuid, url) FROM stdin;
10	videos/theme_6_lesson_19_video.mp4	12f754a5-68b8-4d46-9662-1dae1b93386f	\N
23		7f896f32-aedb-4c54-a59f-4036d46e5135	https://youtu.be/ziamlqJysMY
24		9f7a3b10-ff25-43b8-83ce-68022c7c1f53	https://youtu.be/ia7L4_GImtA
25		c1f44b30-c407-4dfe-b63b-f1e533621afc	https://youtu.be/qD-N3jEEGws
26		b6e1da1e-1502-4ed2-9bfe-7d97a1f9d5c9	https://youtu.be/aJBAig3kkyc
27		14374dab-873e-4e0e-a70e-b25644a5d9fb	https://youtu.be/ydOKlx4PNz4
28		8740ae4b-0b92-4c1e-baad-b5c5efcbc526	https://youtu.be/p4jOAdZEjt8
29		91a40d79-dc8e-4e68-97f7-5f0cdf018431	https://youtu.be/gDrUsAtaUgY
30		bc6f9272-6cb4-4ef3-b9f4-54a05bc24335	https://youtu.be/bMd6QHmm6dw
31		21fea32c-33a9-4d3b-ae26-a9ce94f18cc9	https://youtu.be/uNoWmFTMNKw
32		bac59a1d-42a2-493e-b101-63047ae99852	https://youtu.be/e29EDPBIFaM
33		84c770b5-5dec-4d99-a588-f1e37d3c2d65	https://youtu.be/2a_e_IQrAzE
34		a82174c0-d59b-4fa5-a5d4-b56add6c67a4	https://youtu.be/CV1TTJFFk8A
35		4ff3382d-c7ef-4983-bd3d-17078dce665d	https://youtu.be/8spkj6UtPLo
37		fdee5c11-cf6a-4cbc-999e-a908840f141d	https://youtu.be/cdrF7xwSkk4
38		24fdf5cc-baca-4ace-80f5-6032fbabeabe	https://youtu.be/lbWhVR4KIcY
39		50cf55b3-fc40-4ab9-ab25-bcfb3dbc322d	https://youtu.be/vvAqmDCQmEY
41		46aac27b-5de0-4938-8fec-33cf10b13638	https://youtu.be/cdrF7xwSkk4
\.


--
-- Data for Name: learning_lesson; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_lesson (id, "order", uuid, name, outline, slug, is_visible, document_id, image_id, subject_id, test_id, video_id) FROM stdin;
16	0	81126a8e-67cb-4591-ae48-607656d6e70f	Индикаторы	[{"text":"Дорогие друзья, приветствую всех на новой теме, если вы дошли до нее, то вероятнее всего уже прошли фундаментальный анализ или же просто решили запрыгнуть в эту тему первой :)\\n\\nЯ принял решение, что я напишу лучшее обучение, которое есть на просторах интернета. Максимально четкое и со всеми пояснениями\\n\\nПоэтому, если вы проходили мои предыдущие обучения, то прочитайте и это, вы найдете очень много нового\\n","image":""},{"text":"Начнем с того, что Т.А. ( тех.анализ) делится на несколько групп, все из которых мы с вами пройдем\\nГруппы : индикаторный анализ, графический анализ, свечной анализ Каждая из них имеет свои свойства и логику, мы начнем с самой первой и плавно\\nбудем переходить к следующим\\n\\nНа пути прохождения каждой группы я буду демонстрировать вам связки, которые отрабатывают себя лучше остальных\\n\\nСвязка = группа индикаторов или иных способов опознавателей роста или падения, которая с большей точностью показывает на возможный результат\\n\\n(2.1) RSI или Relative Strength Index\\nRSI - это индекс относительной силы. Был разработан Уэллсом Уайлдером в 1978 году Важное примечание - используется по сей день, что означает его компетентность и реальную пользу\\n\\nЧто же такое этот индекс относительной силы?\\n\\nВсе на самом деле просто - это отношение роста к падению за определенный период или наоборот. Таким образом, Уайлдер посчитал, что мы поймем, кто сейчас преобладает на рынке и что может быть с ценой\\n\\nДля расчета берут все свечи, которые закрывались выше предыдущих и все свечи, которые закрывались ниже предыдущих, затем с помощью ЕМА ( дальше пройдем эту тему ) определяется среднее значение прироста\\n\\nRS = EMAn(Up) / EMAn(Down) - так выглядит формула\\n\\n\\nСоответственно, чтобы удобно было просматривать данный индикатор на графике, для него придумали значения. Он находится в диапазоне от 0 до 100%  в виде кривой линии\\n\\nТакже, перед тем, как показать вам его и научить ставить на график, я расскажу о правилах :\\n\\n1)данный индикатор лучше использовать в связках, но не по отдельности\\n2)на младших ТФ ( таймфрейм - длина свечи ) часто врет\\n3)если находится в зоне ниже 30, то значит, что сигнал бычий. Если находится в зоне выше 70, то значит, что сигнал медвежий\\n\\nОсновные правила я вам рассказал, все более углубленные будут идти после прохождения всех индикаторов\\n\\nСначала переходим на сайт TradingView и проходим регистрацию, чтобы у вас был доступ к индикаторам\\n\\nПо правилам TV на бесплатной версии вы можете добавить только 3 индикатора на один график, не забывайте об этом\\n","image":"/media/images/theme_5_lesson_16_outline_1.png"},{"text":"Сверху есть кнопка поиска, нажмите на нее и введите желаемый тикер компании или ее полное название\\n\\nВ моем случае это Tesla ( TSLA )\\nДалее вам нужно просто нажать \\"открыть график\\" и все, вы перейдете туда, куда нужно Сейчас будем ставить с вами индикаторы на этот график и изучать RSI","image":"/media/images/theme_5_lesson_16_outline_2.png"},{"text":"Перед вами график, важные функции я подписал, посмотрите и запомните. Сверху меняем только ТФ и выбираем индикаторы, слева много функций","image":"/media/images/theme_5_lesson_16_outline_3.png"},{"text":"Чтобы поставить индикатор, надо зайти в индикаторы ( сверху выделил красным ), затем ввести полное название нашего индикатора -\\nrelative strength index и выбрать первый вариант или найти нужный\\n\\nОн должен быть от создателя Everget, как на скриншоте ( создатель пишется справа )\\n\\nЭтот RSI является стандартным и использование остальных видов не нужно\\n","image":"/media/images/theme_5_lesson_16_outline_4.png"},{"text":"Вот таким образом выглядит RSI\\n\\nКак вы видите, когда он заходит за зону 70 - начинает подсвечиваться зеленым и означает, что компания перекуплена и возможно падение. Если он заходит в красную зону - компания перепродана и ждет роста. Красная зона находится ниже уровня 30\\n\\nЗона, которая находится между 30 и 70 - зона боковика, находясь в ней, он не сигнализирует ни о каких возможностях роста/падения\\n","image":"/media/images/theme_5_lesson_16_outline_5.png"},{"text":"Давайте посмотрим, как будет вести себя этот индикатор на различных таймфреймах\\n\\nНапомню, что ТаймФрейм ( сокращенно ТФ ) = длина свечи. Если он равен 30 минут, то значит, что длина свечи 30 минут и каждая свеча будет по 30 минут\\n\\nПеред вами RSI на дистанции в 5 дней и 5 минутном ТФ","image":"/media/images/theme_5_lesson_16_outline_6.png"},{"text":"Что мы видим? Неплохую отработку, причем на удивление неплохую. При установке\\nодинакового стопа и тейка ( о стратегиях позже ) мы бы имели приятную прибыль Но у данного индикатора есть свои правила :\\n1)чем шире ТФ - тем меньше шумов и лучше сигнал\\n2)в одиночку работает так себе, следует иметь связку\\n3)может быть затяжным, что путает трейдера ( поэтому в связке есть MACD - следующим разбираем )\\n\\nВ целом, индикатор сильный и хочется рассмотреть его и на других ТФ, чем я вам и предлагаю сейчас заняться\\n\\nСделаем его анализ и посмотрим на поведение, а также на % прибыль по сигналам на 2 часовом ТФ и дневном\\n\\nНа 5 минутном ТФ средняя прибыль 0.7-0.8% с сигнала с соответствующим стопом\\n\\nТаким образом ведет себя RSI на ТФ в 2 часа и широте графике пол года\\n\\nМало сигналов, то они стали сильнее - средняя прибыль около 4-5%, как и стопы\\n\\nЕсли посчитать количество успешных = 4 к 2, то есть 2 раза по стопу 5%, два 4 раза по тейку 5%, итого прибыль 1.66%  к депозиту\\n\\nСогласен, результат не лучший, но мы и не будем торговать по одному RSI, да и ТФ 2 часа мой нелюбимый, смотрим дальше\\n","image":"/media/images/theme_5_lesson_16_outline_7.png"},{"text":"На готовом ТФ мы видим полную отработку сигналов от RSI. Ощущаете разницу? Когда мы\\nпереходим к более старшому ТФ, мы получаем более высокую прибыль и меньше сигналов, которые вызваны шумами\\n\\nСредняя прибыль с каждой сделки 15%, даже близко к стопу ничего не подошло\\n\\nУчитывайте, что я рассматриваю BOEING и он не был особо интересным в этом году, сейчас покажу другой более шумный пример\\n","image":"/media/images/theme_5_lesson_16_outline_8.png"},{"text":"Apple вполне интересная компания, которая показала за год 4 раза сигнал от RSI, 3 из которых были плюсовые, 1 минусовой\\n\\nНа самом деле минусовых тут нет, то объяснять сейчас не время почему, скоро узнаете ( p.s. до стоп в 3 случае не дошло )\\n\\nСредняя прибыль за сделку в районе 10%, вполне приемлемая прибыль","image":"/media/images/theme_5_lesson_16_outline_9.png"},{"text":"Итог по индикатору\\n\\nДостаточно сильный индикатор, который лучше показывает себя на высоком ТФ, но есть большие риски того, что он будет идти долго и придется докупать\\n\\nЛучший его друг, который поможет это избежать - MACD, ставится с ним вместе в связку и спокойно вытаскивается прибыль\\n\\nЕсли хотите торговать на короткой дистанции, то ставьте одинаковые стопы и тейки, но прежде проверьте отработку минимум за 1 месяц. Если она по индикатору меньше 60%, то не надо лезть. MACD накинет еще 10%  отработки сверху, что даст приятные 7 на 3\\n\\nПереходим дальше к индикатору MACD\\n","image":""},{"text":"( 2.2 ) MACD\\nMACD - индикатор расхождения или схождения скользящих средних. Скользящая средняя является результатом усреднения цены на графике за определенный период.\\nПосле чего добавляется на график в виде кривой\\n\\nMACD имеет две таких кривых и гистограмму, что позволяет давать неплохие сигналы и в разных направлениях\\n\\nЭтот индикатор был разработан известным Нью-Йоркским трейдером Джералдом Аппелем\\n\\nЭтот индикатор является и трендовым и осциллятором. Если первое его назначение понятно, то что такое осциллятор? Они представляют собой графическое отображение краткосрочной ситуации на рынке\\n\\nВот что из себя представляет MACD. Я показал прямо сейчас, чтобы объяснить принцип работы, ведь без него\\nнельзя продолжать изучение\\n\\nMACD имеет 2 EMA. Как вы поняли - это графическое отражение ситуации на рынке ( перекупленность или перепроданность )\\n\\nПервая EMA MACD получается за счет следующего - из быстрой скользящей средней вычитают более медленную.\\nИх скорость зависит от периода, который у них установлен. В основном из 12 вычитают 26\\n\\nПо полученным значениям строится линия MACD ( синяя), вторая линия сглаживается ЕМА 9 и получается сигнальная линия ( оранжевая)\\n","image":"/media/images/theme_5_lesson_16_outline_11.png"},{"text":"Мы узнали, как построить MACD, но теперь надо понять, как его использовать\\n\\nЯ предлагаю сразу перейти к теории и затем перескочить на практику с графиком\\n\\nВ теории мы должны узнать все сигналы, которые он дает ( их не так мало из-за гистограммы )\\n\\nПервый сигнал и единственный, который дают там линии : сигнальная и MACD - это их пересечение\\n\\nПри пересечении сигнальной линии линией MACD сверху-вниз задается нисходящий тренд и нам следует встать в шорт-позицию\\n\\nПри пересечении наоборот снизу-вверх задается восходящий тренд и нам следует встать в лонг-позицию\\n\\nДавайте посмотрим на графике, как это работает\\n\\nКвадратиками я выделил места на графике и непосредственно на MACD\\n\\nНачинаем смотреть слева на право\\n\\nПервый сигнал - шорт, так как синяя пересекла оранжевую сверху-вниз, как видите на графике, он последовал за сигналом\\nДалее идет восходящий сигнал в лонг, так как синяя пересекла оранжевую снизу-вверх Далее все понятно, сигналы то в шорт, то в лонг\\nИз 6 сигналов 4 плюсовых и 2 минусовых, но опять же - при связке RSI + MACD их было бы 5, а минусовых всего 1\\n","image":"/media/images/theme_5_lesson_16_outline_12.png"},{"text":"Далее мы можем упростить себе просмотр гистограммы и отключить линии. Для этого наводим мышку на название индикатора и выбираем шестеренку","image":"/media/images/theme_5_lesson_16_outline_13.png"},{"text":"После переходим во вкладку \\"стиль\\" и убираем галочки с MACD и Сигнал\\n\\nТаким образом, у нас с вами остается только гистограмма, с которой мы сейчас и будем работать\\n","image":"/media/images/theme_5_lesson_16_outline_14.png"},{"text":"Сначала теория\\n\\nКак вы заметили, у гистограммы есть 2 цвета - красный и зеленый\\n\\nВ целом, она показывает просто разность между сигнальной и MACD линиями, чтобы еще больше упростить индикатор\\nНас интересует несколько типов сигналов, а точнее - дивергенция и конвергенция По сути - это обычное расхождение, когда гистограмма MACD не согласна с графиком\\nи говорит, что он нас обманывает\\n\\nПроявляется это в следующем --->\\n\\nПервый сигнал - дивергенция. На восходящем тренде на графике мы видим\\nэкстремумы, соединив которые имеем стрелочку вверх ( направление вверх )\\n\\nНо гистограмма MACD в тот же момент эти же экстремумы рисует вниз, то есть говорит, что так быть не должно. Это медвежий сигнал, так оно и произошло. После двух дивергенций Apple, график которой мы сейчас рассматриваем, скорректировалась на 10%  ( для нее это существенно )\\n","image":"/media/images/theme_5_lesson_16_outline_15.png"},{"text":"Дивергенции могут быть и на красных частях при восходящем тренде, как, например,\\nперед моментом обвала в 2020 году, дивергенция по Apple предсказала это\\n\\nДва нижних экстремума графика указывают вверх, а MACD со своей гистограммой вниз, что и произошло через пару месяцев\\n\\nВся прелесть гистограммы в том, что она показывает очень сильную отработку на\\n\\nдистанции от года, то есть дневном ТФ\\n","image":"/media/images/theme_5_lesson_16_outline_16.png"},{"text":"Аналогичный сигнал в лонг называется конвергенцией. Он происходит на падающем\\nпериоде графика, когда гистограмма MACD с ним не согласна\\n\\nПеред вами подтверждение тому, что на дневном ТФ гистограмма редко врет ( но бывает и врет, нет 100% индикаторов )\\n\\nЭто график SPCE и двойная дивергенция. При покупке после первой, вы бы заработали 170% на пике, при усреднении на второй около 230%","image":"/media/images/theme_5_lesson_16_outline_17.png"},{"text":"Таким образом, вы знаете два индикатора : RSI и MACD\\n\\nНа самом деле они являются одной из самых интересных связок в трейдинге, хоть и использование без третьего трендового индикатора очень рискованно\\n\\nДавайте хотя бы в рамках теории рассмотрим принцип связки","image":"/media/images/theme_5_lesson_16_outline_18.png"},{"text":"То есть мы видим, как первым из двух сигнал дает RSI, а MACD его подтверждает\\n\\nЗапомните эту \\"теорию\\", так как в трейдинге есть три типа индикаторов : опережающие, основные и подтверждающие\\n\\nИ каждый индикатор в определенной связке может менять позиции\\n\\nНо это лишь теория, так проще понимать принцип действия каждого индикатора для новичков\\n\\nВ целом все связки достаточно просты, так как индикаторы показывают четкое направление\\n\\nВ нашем случае RSI в зеленой зоне + MACD пересекает вниз, таким образом мы получаем нисходящий тренд и входим в шорт\\n\\nЕсли бы было все напротив - RSI красная и MACD пересекает вверх, встали бы в лонг\\n\\n(2.3) Bollinger Bands\\n\\nBollinger Bands - это индикатор технического анализа. Является трендовым индикатором и построен на принципах стандартного отклонения\\n\\nДля начала я хочу объяснить вам принципы стандартного отклонения, а затем мы перенесем их на устройство Боллинджера и все поймете\\n\\nСтандартное отклонение - это наиболее ожидаемый результат рассеивания значений случайной величины относительно ее математического ожидания\\n\\nКажется все сложным, но на самом деле нет. Дам мини пример и перейдем к полноценному. Команда А каждый матч забивает ровно 3 гола, какое ожидание к следующему матчу? Вот вам и ответ) А теперь к полноценному примеру со стандартным отклонением, так как в этом примере оно равно 0\\n\\nВ таблице ниже приведен пример расчета стандартного отклонения\\n\\nУ нас есть 2 футбольные команды и 5 сыгранных ими сезонов. Количество очков = количество забитых мячей за сезон за все матчи\\n\\nСумма забитый мячей у обеих команд одинаковая, что невооруженным глазом даст нам понять, что они имеют одинаковую стабильность, но разве это так? Вовсе нет\\n\\nНадо посчитать стандартное отклонение у обеих команд. Мы можем это сделать следующим путем - считаем разницу мячей между соседними сезонами и делим на их количество. У первой команды это значение =  8/5=1.6\\nУ второй команды =  57/5=11.4\\n\\nЭто означает, что с математической точки зрения команда 1 намного стабильнее и если сложить все мячи и поделить на количество сезонов и прибавить +- 1.6 мы получим примерным результат, который она покажет в следующем сезоне\\n","image":"/media/images/theme_5_lesson_16_outline_19.png"},{"text":"Таким образом, логика в следующем\\n\\nПервая команда в 6 сезоне забьет =  66/5+-1.6 Вторая команда в 6 сезоне забьет =  66/5+-11.4\\n\\nЕсть разница? Конечно есть. У первой = 13.2+-1.6 У второй 13.2+-11.4\\n\\nТаким способом и работает наш с вами индикатор, давайте перейдем к нему!\\n\\nСейчас мы будем разбирать этот индикатор по его множителям и на основании стандартного отклонения, мы поймем, каким образом он работает и как нам с ним совладать!\\n","image":"/media/images/theme_5_lesson_16_outline_20.png"},{"text":"Bollinger имеет три множителя : 1, 2 и 3\\n\\nЕсли индикатор стоит на 1 множителе, это значит, что с вероятностью 68% цена не выйдет за его пределы, если стоит на 2 множителе, то это означает, что цена с вероятностью 95% не выйдет за его пределы, если стоит на 3 множителе, то это означает, что цена с вероятностью 99.7% не выйдет за его пределы\\n\\nТут я думаю все понятно, но надо разобраться, что это за пределы и как он вообще выглядит?\\n\\nДля этого переходим в TradingView и начинаем искать этот индикатор","image":"/media/images/theme_5_lesson_16_outline_21.png"},{"text":"Все как обычно - заходим в плашку\\nиндикаторы, вводим слова ( обязательно полностью ) - Bollinger Bands V2 и видим первый индикатор, может у кого-то будет не первый, но он от Nomadand\\n\\nНажимаем обязательно звездочку слева, что индикатор добавился в избранное и нажимаем на сам Боллинджер, чтобы он появился у нас на графике\\n\\nТеперь переходим к графику","image":"/media/images/theme_5_lesson_16_outline_22.png"},{"text":"Таким образом выглядит сам индикатор, вы видите, что он имеет три полоски, две из\\nкоторых мы сейчас будем разбирать\\n\\nВерхняя и нижняя линии как раз и определяют этот диапазон, где цена должна держаться и не выходить из него\\n\\nСейчас у нас включен второй множитель, это означает, что в 95% случаев график будет находиться внутри индикатора, то есть внутри двух кривых\\n","image":""},{"text":"Чтобы протестировать различные уровни, я захожу в настройки индикатора, скрин\\nниже","image":"/media/images/theme_5_lesson_16_outline_24.png"},{"text":"Затем я захожу в аргументы и меняю множитель на 3\\n\\nКак я и говорил ранее - их всего 3, самый слабый 1, самый сильный 3, средний 2\\n\\nЯ чаще всего использую третий множитель и широкий ТФ, но об этом чуть позже\\n\\nБольше ничего в настройках менять не стоит\\n","image":"/media/images/theme_5_lesson_16_outline_25.png"},{"text":"Перед вами слева направо расположены все три множителя с интерпретацией на\\nграфике\\n\\nКак вы видите, самый левый график охватывает все свечи и держит их внутри себя, средний график уже имеет проколы, а правый график имеет их слишком много, так как всего лишь 68% графика должны в нем находиться\\n","image":"/media/images/theme_5_lesson_16_outline_26.png"},{"text":"Вот мы и разобрались, что же такое Боллинджер, теперь предлагаю перейти к более\\nинтересному - разбору его сигналов и поведения\\n\\nЕсли мы устанавливаем 2-3 множители, то у нас с вами есть несколько видов сигналов\\n\\n1)Трендовый. Вы видите, что когда-то Боллинджер красный, когда-то зеленый. Таким образом он показывает тренд, Чем шире ТФ - тем сильнее и длиннее тренд. Против\\nтренда мы не торгуем, поэтому путем зрительного установления тренда по Боллинджеру мы принимает решения в какую сторону входить в позицию : лонг или шорт\\n\\n2)Точечный. Этот сигнал дается в тот момент, когда свеча или несколько свечей выходят за пределы полос Боллинджера. Так как мы понимаем, как работает\\nиндикатор, то с вероятностью 95% или 99.7% график должен находиться внутри полос.\\nТаким образом, мы делаем вывод, что вероятнее всего он вернется.\\nТут ведется торговля против тренда, она для рискованных. Сейчас приведут примеры\\n\\nЯ продемонстрировал пример на третьем множителе, где при выходе за границу индикатора,\\nвероятность возврата обратно куда выше\\n\\nКак вы видите, график и правда вернулся обратно, а мы могли заработать большие проценты\\n\\nЯ рекомендую использовать данную технику только на дистанцию 1-3 недели на дневном ТФ или годовом графике (это одно и то же, написал для простоты )\\n","image":"/media/images/theme_5_lesson_16_outline_27_EuRyuiW.png"},{"text":"Но у Боллинджера также внутри находится магнит, который тянет график к себе - ЕМА 20\\n\\nЭта информация вам нужна, чтобы понимать, что это за средняя линия находится посередине. Когда график находится выше нее - индикатор показывает восходящий тренд, когда ниже нее - нисходящий\\n\\nПоскольку 20 ЕМА не самая сильная, я и рекомендую использовать индикатор на дистанции около 1 года и выше","image":"/media/images/theme_5_lesson_16_outline_28_0GgN1Cn.png"},{"text":"Казалось бы, может хватит сигналов от этого индикатора? Но есть еще один, он не показывает\\nнаправление тренда, но может предупредить вас о всплеске волитальности\\n\\nБоллинджер часто любит сворачиваться в сосиску, три из которых вы видите на экране. Это сильное понижение волатильности компании и в 99.9% случаев после такого следует всплеск\\n\\nЧто с этим делать? Держать в уме и понимать, что бумага покажет в ближайшем будущем, проводить анализ по другим показателям и индикаторам и делать выводы\\n","image":"/media/images/theme_5_lesson_16_outline_29.png"},{"text":"В целом, Боллинджер очень сильный индикатор и я советую вас к нему присмотреться\\n\\nВ скором времени вы узнаете много сильных индикаторов и придется выбирать лучшие, но держите его в уме всегда\\n\\nЗапомните заранее - очень сильная связка = Боллинджер + Уровни Пивот + ЕМА + МАКД, не пожалеете, если хотя бы прогоните ее на тестовом графике по истории или симулятору\\n\\nСейчас предлагаю перейти к новому индикатору, который несомненно является лучшим из лучших, так как на нем строятся 90% остальных, Боллинджер в том числе\\n\\nЭто ЕМА - экспоненциальная скользящая средняя\\n\\n\\n\\n\\n\\n(2.4) ЕМА\\n\\nЧто же такое ЕМА и почему она является ключевой составляющей в 90% индикаторов?\\n\\nЕМА - экспоненциальная скользящая средняя, выглядит как кривая линия, располагается на графике\\n\\nМожет быть использована отдельно и в связке. При втором варианте отрабатывает себя лучше\\n\\nДля начала давайте поймем, как получается ЕМА из чего она состоит и почему ее все так любят ( может и не все )\\n\\n\\n\\nЕМА - производная от SMA\\n\\nSMA - простая скользящая средняя Сначала разберемся в ней\\nОна является усредненным значением графика за выбранный период. Работает это\\nследующим образом - если у нас стоит SMA 10, то это означает, что мы взяли цену закрытия за каждый из последних 10 дней, сложили и поделили на 10, таким образом мы получили кривую. Если SMA 50 дневная - берут 50 цен закрытия 50 дней, суммируют и делят на 50\\n\\nНо SMA очень ограничена в своих возможностях, поэтому была придумана EMA\\n\\nДля многих формула расчета окажется бессмысленной, но я все же напишу\\n\\nЕМА реагирует на график куда быстрее в связи с тем, что упор идет на получение последних и актуальных данных\\n\\nСчитается так : EMA =  P*A +  ( предыдущая EMA*(1-A)) Где P - текущая цена\\nA - сглаживающий фактор 2/1+N ( N - количество периодов )\\n\\nМожет формула и не нужна, так как все считается автоматически и показывается нам на графике, но понимать, как это происходит я считаю, все-таки необходимо для грамотной и осознанной торговли\\n\\nДавайте перейдем к примерам\\n\\nВот таким образом выглядит ЕМА. Я ставлю всегда ЕМА 12/26/50/200\\nЧтобы ее выбрать, в поиске индикаторов так и введите ЕМА и далее числа через /\\n\\nКак вы видите, это просто линии, которые без понимания ничего вам не дают.\\nСигналов и связок у ЕМА предостаточно, сейчас будем разбираться","image":"/media/images/theme_5_lesson_16_outline_30.png"},{"text":"Сначала, конечно же, мы пройдем все правила\\n\\n1)Чем меньше ЕМА - тем она резче реагирует на поведение графика\\n2)Чем больше ЕМА - тем она сильнее во всех своих проявлениях\\n3)Применяется на любом ТФ\\n4)Отлично работает в связке с уровнями и MACD\\n5)является как трендовым индикатором, так и индикатором отскока\\n\\nЕМА - универсальный боец. Многие не хотят ее торговать, потому что считают устаревшей, не принимая тот факт, что 90% индикаторов построены именно на ней без каких-либо изменений:)\\nПеречислять их смысла нет, вы сами все прекрасно видите или увидите в будущем Сейчас переходим к сигналам, какими ЕМА обладает\\n\\n1 сигнал - стандартное пересечение, которое встречается во многих индикаторах\\n\\nЕсли меньшая ЕМА пересекает большую снизу-вверх - задается восходящий тренд, если она пересекает большую сверху-вниз, то задается нисходящий тренд\\n\\nТакже, график, который пересекает любую ЕМА снизу-вверх, задает восходящий тренд, а сверху-вниз задает нисходящий тренд\\n\\nЧем больше была ЕМА, которую он пробил - тем сильнее тренд. Чем шире угол - тем сильнее тренд\\n","image":"/media/images/theme_5_lesson_16_outline_31.png"},{"text":"В стандартных рыночных условиях ЕМА 200 на ТФ от 1 дня до 1 месяца является\\nсильнейшей зоной поддержки. Чем шире ТФ - тем она сильнее. Зона поддержки будет в следующей главе, но для понимания - зона для отскока, где график развернется вверх\\n\\nЕМА 200 в нашем случае ей и является. На следующем слайде покажу один пример сделки, которую совершал буквально недели две-три назад\\n","image":"/media/images/theme_5_lesson_16_outline_32.png"},{"text":"Я одним глазом случайно увидел сделку на графике и на основании двух индикаторов\\nвошел в позицию. На дневном ТФ мы находились на зоне ЕМА 200, уже сколько раз за почти 2 года мы от нее отскакивали и в этот раз вряд ли было бы иначе. Риски есть, но они куда меньше, чем ловить падающие ножи\\n\\nПоэтому, я заработал достаточно быстрые 10%  и остался доволен\\n","image":"/media/images/theme_5_lesson_16_outline_33.png"},{"text":"На длинных трендах я не использую ЕМА 12 и 26, только 50 и 200\\n\\n50 я использую только на месячном ТФ и не меньше, пример ниже\\n\\nЯ использую систему двойного уровня. Покупаю на ЕМА 50 и докупаю в случае чего на ЕМА 200 сильные компании. Проходимость система огромная, так как очень и очень сильные уровни, как и компании, которые я выбираю\\n","image":"/media/images/theme_5_lesson_16_outline_34.png"},{"text":"Однажды на такой системе можно будет совершить сделку века на том же Apple\\nПочему на нем? Смотрите график ниже\\nНа протяжении 13 лет она отскакивает от зоны ЕМА 200 на недельном ТФ каждый раз без исключений и рост составляет после этого сотни процентов\\nПокупать начинать можно будет на ЕМА 50 и докупать на ЕМА 200, а затем получать неимоверную прибыль\\n","image":"/media/images/theme_5_lesson_16_outline_35.png"},{"text":"Таким образом происходит первый сигнал на дневном ТФ. Помните - чем меньше ТФ, тем\\nбольше сигналов и больше шумов = минусовые будут попадаться активнее в несколько раз\\n\\nВидно на скрине пересечение ЕМА и пробитие их графиком снизу вверх на двух левых и сверху вниз на правом\\nЗадавались восходящие и нисходящий тренды","image":"/media/images/theme_5_lesson_16_outline_36.png"},{"text":"Таким образом, ЕМА является очень важным индикатором, который создает 90%\\nостальных\\n\\nУ него есть свои правила и законы, как и у других, в этом нет ничего нового\\n\\nНо у ЕМА большая вариативность связок, так как он выступает в роли сразу нескольких типов индикаторов и имеет различные функции на разных ТФ\\n\\nНа большом ТФ он имеет минимум ошибок и задающийся тренд имеет такую силу, что можно позавидовать тому, кто вошел и держал достойную компанию по такому сигналу\\n\\nИспользовать этот индикатор или нет - право ваше\\n\\n(2.5) Поддержка и Сопротивление\\n\\nВ данном случае мы будем проходить индикатор уровни PIVOT, а не графический, который мы строим сами, так как второй будет в блоке графического анализа, а не индикаторного\\n\\nУровни PIVOT - построенные по формуле уровни, которые по сути отражают обычной линией важное значение цены, где она когда-то отскакивала или падала\\n\\nУровни PIVOT считаются по экстремумам дна и хая, чтобы определить значения Работает аналогично другим - чем выше ТФ, тем сильнее уровни\\nСейчас посмотрим, как они выглядят и я расскажу подробнее\\n\\nДля начала найдем этот индикатор и в поиске введем слова со скрина\\n\\nВыбираем стандартные точки разворота, ставим звездочку слева и переходим уже к настройкам на графике\\n","image":"/media/images/theme_5_lesson_16_outline_37.png"},{"text":"Единственное, что мы меняем - тип и\\nуровень P\\n\\nТип выбираем Фибоначчи, изначально будет стоять на классическом или традиционном, а уровень P делаем черным для удобства.\\nЗатем снизу слева от кнопки отмена выбираем еще раз по умолчанию и нажимаем ОК\\n\\nПосле этого на графике появится наш индикатор и мы начнем его использование","image":"/media/images/theme_5_lesson_16_outline_38.png"},{"text":"Выглядит он следующим образом\\n\\nУ нас есть 7 зон, которые в зависимости от направления графика являются либо поддержкой, либо сопротивлением\\n\\nЕсли график идет вниз - они поддержка, если вверх - сопротивление\\n","image":"/media/images/theme_5_lesson_16_outline_39.png"},{"text":"Пройдемся по зонам :\\n\\nЗона P - самая сильная и имеет название поддержка, хотя также может быть и сопротивлением, если график идет снизу-вверх\\n\\nЗона S1, S2, S3 является также и поддержкой и сопротивлением Зона R1, R2, R3 аналогично зоне S\\nВсего уровней 7 из которых самыми сильными являются центральные, то есть : P, S1, R1\\n\\nДалее по значимости идут S2 и R2 И только потом S3 и R3\\nИх значимость определяется силой, а сила - способность не пропустить график ниже\\nили выше себя. То есть оказать поддержку или сопротивление\\n\\nНо в этих зонах есть некоторое уточнение\\n\\nS3 и R3 становятся очень сильными в тот момент, когда график резко к ним летит или же просто без остановок приближатся\\nЗона R3 выступает мощным сопротивлением, а зона S3 выступает мощной поддержкой Если же график выступает за эти зоны на 10-15%  на дневном ТФ, возвращаясь обратно эти зоны\\nбудут слабыми. Если график закрепился над R3 или под S3, то они выступают мощными\\nподдержкой и сопротивлением. Закрепился = ушел далеко выше или ниже\\n","image":"/media/images/theme_5_lesson_16_outline_40.png"},{"text":"","image":"/media/images/theme_5_lesson_16_outline_41.png"},{"text":"В целом, в этих уровнях нет ничего очень сложного, нужно на опыте торговли\\nзапомнить и понять, на каком ТФ, какая зона сильнее\\n\\nСкажу на своем опыте - если вы торгуете на короткий срок, то прямо сильные зоны это S3, R3 и P\\n\\nЕсли вы торгуете на средний срок хотя бы на ТФ 2 часа, то средние зоны P, R1 и S1 будут достаточно сильными\\n\\nЕсли дальний срок, то есть от ТФ 1 день, то это зоны P, S1, R1 и S3, R3\\n\\nЭти зоны отлично входят в любую стратегию. У них есть несколько функций, которые можно применять на торговле, пройдемся по первой\\n\\nЗона P является разделителем трендов\\n\\nЕсли график переходит снизу вверх по зоне Р, то задается восходящий тренд и мы торгуем только лонг, если сверху вниз, то нисходящий тренд и мы торгуем шорт\\n\\nПомним, что против тренда торговлю не совершаем\\n","image":"/media/images/theme_5_lesson_16_outline_42.png"},{"text":"Вторая функция, как вы могли уже понять - поддержка и сопротивление\\n\\nО ней я рассказал на предыдущих страницах\\n\\nНо также, эта функция становится и точкой входа и выхода из позиции, что вполне логично\\n\\nЕсли график на дневном ТФ опустился до зоны S3, то вполне вероятно, что мы можем увидеть отскок и этот момент будет входом. Если график поднялся после этого условно к зоне S1 или P, то понимая, что это сильные зоны, мы можем выйти из позиций\\n\\nНо есть конкретное уточнение - мы делаем все это в связке, а не отдельно, так как без использования вспомогательных индикаторов, мы можем быть обречены на провал в связи с сильной потерей прибыли\\n","image":"/media/images/theme_5_lesson_16_outline_43.png"},{"text":"Еще один интересный пример использования данного\\nиндикатора - закрепление над уровнем\\n\\nПоскольку мы понимаем, что на ТФ от 1 дня все индикаторы становятся сильнее и почти все точнее ( этот становится ), мы применяем закрепление при пересечении уровня.\\nСильным закреплением является пересечение уровня P и смена тренда среднесрочного или любого другого, смотря какой ТФ вы используете\\n\\nВ нашем случае на скрине слева, мы видим, как три свечи закрепились выше уровня P, а четвертая оказалась нисходящей, но все же выше него. Это означает, что с большей долей вероятности мы дойдем до уровня R1, чем упадем к S1\\n\\nТакое правило можно использовать и не забывайте ставить стопы\\n\\nТаким образом, уровни PIVOT дают нам следующее :\\n\\n1)определяют тренд\\n2)дают точку входа и выхода\\n3)понимание закрепления над уровнем\\n4)применение в любой связке для пункта 1, 2 и 3\\n5)определение сильных и слабых зон, что дает понимание шанса движения графика за пределы или шанс его разворота от уровня\\n\\nИ многое другое, что вы сможете обнаружить, лишь начав использование в своей торговле\\n\\nДальше я предлагаю вам перейти к новому индикатору, который похож на этот, но все же имеет отличия - коррекция по Фибоначчи\\n\\n(2.6) Коррекция по Фибоначчи\\n\\nМногие из вас, кто имел отношение в своей жизни к математике, физике и многим другим наукам знает, что такое золотое сечение Фибоначчи, оно также применяется в трейдинге\\n\\nДля тех, кто не в курсе. Числа Фибоначчи - это элементы числовой последовательности, в которой каждое последующее число равно сумме двух предыдущих чисел\\n\\nЗолотое сечение Фибоначчи — это пропорциональное деление отрезка на две неравные части, при котором меньший отрезок так относится к большему, как больший ко всему\\n\\nТаким образом у нас появляется новый индикатор, который имеет 7 уровней и 5 зон, каждая из которых имеет свою значимость\\n\\nНачнем с того, как выглядит эта самая коррекция по Фибоначчи\\nОна представляет из себя разноцветную палитру уровней Пример сетки ( коррекции ) по Фибо","image":"/media/images/theme_5_lesson_16_outline_44.png"},{"text":"Суть у данного инструмента схожа с уровнями PIVOT. Кстати, как вы могли заметить,\\nтип уровней ПИВОТ мы использовали именно по Фибо, потому что он лучший!\\n\\nТеперь перейдем к практике - как поставить этот инструмент и что он нам показывает, как работать, какие уровни сильные, а какие нет\\n\\nЧтобы его установить, в левой колонке, где находится кисть, линейка и прочее третий сверху - коррекция по Фибоначчи\\n\\nЕсли у вас там стоит не она, то нажмите и выбирайте именно ее. Вероятно она находится снизу. Скрин прилагаю\\n","image":"/media/images/theme_5_lesson_16_outline_45.png"},{"text":"Затем, выбираем нужный нам ТФ. Сейчас я возьму дневной и буду растягивать сетку\\n\\nРастягиваем ее следующим образом - в два клика\\n\\nПервый клик мы делаем на самом нижнем экстремуме графика, затем тянем ее вверх слева направо до самого верхнего экстремума графика. Кликаем второй раз и получаем растянутую сетку. Пример также ниже! Экстремумы выделил красными блоками","image":"/media/images/theme_5_lesson_16_outline_46.png"},{"text":"Вот сейчас, давайте уже пройдемся по уровням и правилам использования\\nиндикатора!\\n\\nВсего есть 5 рабочих уровней из 7, так как два из них это 1 и 0, которые являются достаточно сильными и 0 является сопротивлением, а 1 поддержкой, так как первый находится сверху, а второй снизу\\n\\nДальше снизу вверх идут уровни : 0.786, 0.618, 0.5, 0.382, 0.236 Сильные из них средние уровни - 0.618, 0.5 и 0.382\\nЧто значит сильные? Также, как и в уровнях Пивот, они обладают большим шансом остановить график, неважно откуда он идет сверху или снизу. Все уровни также выступают сопротивлением и поддержкой, все зависит от направления графика\\n\\nВот так эти уровни подписаны. Всегда каждый из них пишется слева и в скобочках цена\\nна которой он находится\\n\\nПользоваться индикатором удобно и просто. Давайте разберем его на реальном примере","image":"/media/images/theme_5_lesson_16_outline_47.png"},{"text":"Перед вами график Модерны. Снизу вверх идут все названные на предыдущем слайде\\nуровни. Смотри, как они неплохо себя отрабатывают на недельном ТФ\\n\\nСмотрим слева-направо. Сначала падение остановилось на уровне 0.786, затем дважды не смогло пробить уровень 0.618, так как было оказано сопротивление","image":"/media/images/theme_5_lesson_16_outline_48.png"},{"text":"После этого график пошел к главному уровню - 0.5 и прошил его, это означает, что\\nвероятность полететь выше > чем упасть обратно\\n\\nТаким образом, мы не на долго спотыкаемся об уровень 0.382 и без проблем доходим до конца, до самого последнего экстремума, по которому сейчас уже протягиваем сетку\\n\\nНедавно я заключал сделку шорт по Модерне и держал месяц с целью 15-20% прибыли. Брал на скромные 5-6к$ ( уже сам не очень помню )\\n\\nЯ свое забрал и где вы видите падение в правой части графика до уровня 0.5 - там я продал, так как ожидал отскок от сильного уровня по Фибо. Продавал по 295 и 300 с копейками. Сейчас цена 340+ и скоро снова можно будет набирать шорт\\n\\nВот вам отработка уровней, сложного ничего. Просто запомните, что график привык ходить от уровня к уровню и коррекция по Фибо не исключение\\n\\nКоррекция по Фибо вполне неплохо сочетается с графической поддержкой и\\nсопротивлением, они подтверждают уровни друг-друга и помогают определить сильнейший из них\\n\\nОб этом мы будем говорить чуть позже, я заранее поделился с вами чем-то интересным, чтобы не пропадал запал:)","image":"/media/images/theme_5_lesson_16_outline_49_7hJJ9mM.png"},{"text":"У этого инструмента также есть свои правила, которые нужно соблюдать :\\n\\n1)использовать можно в любой связке, сделает только лучше, никак не хуже\\n2)растягивать снизу-вверх\\n3)растягивать с правого угла до левого\\n4)растягивать от тени свечи до тени свечи, если она имеется\\nТень свечи - полоска вверх или вниз или и вверх, и вниз по основанию свечи\\n5)не забывать про сильные уровни\\n6)график ходит от уровня к уровню\\n7)можно делать проторговку от уровня к уровню на короткие сроки\\n8)лучше всего покажет себя от ТФ 2 часа, но подходит и для 5 минутки\\n\\nСейчас мы будем переходить к следующему важному индикатору, который носит красивое название - Ichimoku\\n\\n(2.7) Ichimoku\\n\\nIchimoku - японский индикатор 30 годов прошлого века ( представьте, насколько же он хорош, что сохранился спустя столько лет )\\nОн определяет тренд и поддержку с сопротивлением\\n\\nОн не очень похож на предыдущие индикаторы, поэтому надо разбираться более досконально ( но работает на все триста )\\n\\nИнструмент имеет 5 линий - Tenkan, Kijun, Senkou A, Senkou B и Chinkou\\n\\nНо также и обладает областью между двумя линиями Senkou A и B, которая носит гордое название - Kumo\\n\\nЯ называю ее облачком и реальные названия линий вообще не использую, сейчас поймете почему\\n\\nПросто взгляните, как выглядит этот индикатор. Очень трудно что-то разобрать, верно?\\n\\nПосле того, как я расскажу вам про каждую линию отдельно, мы перейдем к реальному использованию всего инструмента и уберем лишние моменты","image":"/media/images/theme_5_lesson_16_outline_50.png"},{"text":"Линии Tenkan и Kijun - это две линии, которые определяют среднее значение за\\nопределенный промежуток времени. Этакие японские ЕМА\\n\\nНо Tenkan определяет за короткий период - равный 9-ти, в то время как Kijun делает это на периоде 26\\n\\nОни определяются, как сумма самой высокой точки на графике за промежуток и самой низкой, а она в свою очередь делится на два и получается линия\\n\\nSenkou A и Senkou B - это линии\\n\\nSenkou А - это среднее значение между Tenkan и Kijun, сдвинутое вперед на средний промежуток времени\\n\\nSenkou B - такой же, как и Tenkan с Kijun, просто сдвинут на очень длинную временную дистанцию в 52, также сдвинут вперед на промежуток времени 26\\n\\nЛиния Chinkou - простое повторение графика, сразу же убираем ее в настройках\\n( просто убрать галочку ), так как она бесполезна и только отвлекает и мешает просмотру графика\\n\\nНа самом деле, в данном случае поговорка - лучше 1 раз увидеть, чем 100 раз услышать, работает на все 100%\\n\\nНо пробегусь по правилам\\n\\n1)Использовать лучше без трендовых индикаторов на графике\\n2)На больших ТФ задает реально сильные тренды\\n3)Tenkan и Kijun бесполезные линии, которые можно заменить на EMA, будет результат куда лучше\\n\\nВ целом, можно перейти на график и посмотреть все имеющиеся функции\\n\\nСначала пройдемся по линиям Tenkan и Kijun\\n\\nОни аналогичны EMA и имеют лишь 1 отличие - если их пересечение произошло внутри облака ( зеленое ), то это \\"не считается\\", сигнал аннулируется и брать не стоит\\n\\nА так - синяя пересекает красную снизу-вверх = рост и наоборот. Синяя - Kijun, красная - Tenkan\\n","image":"/media/images/theme_5_lesson_16_outline_51.png"},{"text":"Самое интересное тут облако, поэтому на графике я оставляю исключительно его\\n\\nОблако состоит из двух линий, как я и говорил ранее - Senkou A и Senkou B Суть облака такова, что оно дает два сигнала :\\n1)поддержка и сопротивление. Каждая из линий служит и тем и тем. Если график идет\\nснизу-вверх, то он встретит сопротивление у обеих линий и наоборот, если он идет сверху-вниз, то встретит поддержку\\n\\n2)Пересечение облака графиком. Тут суть похожа на ЕМА. Если график все же пересекает облако сверху вниз - то задается нисходящий тренд, если снизу-вверх, то\\nвосходящий тренд\\n\\nВ таком случае интересно использовать на графике уровни Пивот или Фибо, чтобы понимать, до куда он может пойти дальше\\n\\nЧем выше ТФ у графика, тем реже будут пересечения, но тем сильнее будет их эффект и\\nодного хватит на год и десятки процентов прибыли\\n\\nНиже вы видите график SPCE и отработку сигналов на годовом графике ( дневной ТФ ) у облака Ичимоку","image":"/media/images/theme_5_lesson_16_outline_52.png"},{"text":"Перед вами два примера отработки облака Ичимоку как поддержка и как\\nсопротивление\\n\\nСлева - поддержка. Цена была поддержана на первой линии и шла ровно по ней.\\nСправа - сопротивление. Senkou не дала пробить себя и отправила график обратно вниз","image":"/media/images/theme_5_lesson_16_outline_53.png"},{"text":"","image":"/media/images/theme_5_lesson_16_outline_54.png"},{"text":"Ичимоку лучше ставить с Фибо или же Уровнями Пивот\\n\\nНа графике ниже привел пример с Пивот. Это нужно затем, чтобы при пробитии облака или оказанию от него сопротивления или поддержки, мы могли понять - куда дальше двинется график, где его следующая зона","image":"/media/images/theme_5_lesson_16_outline_55.png"},{"text":"В целом, индикатор очень сильный и достойный, но обязательно стоит использовать его в связке, то есть в совокупности с другими индикаторами для лучшей отработки\\n\\nМожно также в зависимости от цели и ТФ ставить вместо Tenkan и Kijun ЕМА 12/26 или 50/200\\n\\nБольше тут не добавить не убавить Предлагаю перейти к следующему индикатору\\n\\n(2.8) OBV\\n\\nOBV - индикатор балансового объема\\n\\nСуть работы очень проста. Если следующая закрытая свеча выше предыдущей, то ее объем прибавляется к общей сумме, если ниже, то вычитается\\n\\nГрафически индикатор представляет из себя кривую, которая показывает изменение накопленной вышеописанным образом суммы\\n\\nОсновным принципом работы индикатора служит - корреляция между графиком и кривой объема. Сейчас мы рассмотрим ситуации, как это работает\\n\\nВ целом, на OBV используют даже даже дивергенции и конвергенции, но как по мне они работают очень слабо, поэтому не стоит и пытаться\\n\\nПосмотрев на этот график, можно подумать, что объем его точна копия, но это не так\\n\\nКак правило, если мы смотрим ТФ от 1 дня, то объем будет показывать лишь 1 свой сигнал - подтверждение движения. Если идет рост цены, то будет и рост объемов, но иногда попадаются следующие моменты, которые мы и должны использовать","image":"/media/images/theme_5_lesson_16_outline_56.png"},{"text":"На графике четко видно, как цен резко пошла вверх в течение 3 дней, но что было с объемами? Они даже не дернулись. Первое правило найдено - если растут котировки, но не растет объем, то цена с большой долей вероятности вернется\\nобратно\\n","image":"/media/images/theme_5_lesson_16_outline_57.png"},{"text":"Такое, как правило, постоянно попадается на 5 минутном фрейме. Давайте проверим за\\nпрошедшую неделю количество подобных сделок и их успешность\\n\\nПроверять я буду на графике Tesla. Только за вечер две сделки. Каждая из которых могла принести вам от 1 до 3%\\n\\nЧетко видно, что график растет куда быстрее объемов. Правило себя отработало","image":"/media/images/theme_5_lesson_16_outline_58.png"},{"text":"Аналогичный пример мы наблюдаем за день до вчерашнего. Резкий рост котировок сопровождался полным игнорированием от индикатора OBV\\n\\nТакое \\"не прощается\\" и Тесла была наказана, опущена вниз и растоптана)\\n\\nМожно было отлично вставать в шорт позицию и забирать прибыль\\n\\nНа самом деле, создатель индикатора Джо Гранвилл сказал - свой анализ я всегда начинаю с показателей объема и что именно объем является движущей силой фондового рынка\\n","image":"/media/images/theme_5_lesson_16_outline_59.png"},{"text":"Следующий сигнал от OBV идет тогда, когда он растет, а котировки нет\\n\\nЭто означает, что они скорее всего скоро покажут быстрый рост\\n\\nПеред вашими глазами отличный пример, который показывает, что при падении котировок или их боковике при растущем OBV, вероятнее будет рост и откуп","image":"/media/images/theme_5_lesson_16_outline_60.png"},{"text":"Мне даже грустно, что у этого индикатора больше ничего нет, так как он слишком хорош для этого мира)\\n\\nНо я предлагаю вам рассмотреть идею адепта его \\"секты любителей объемов\\" и сравнить с оригиналом\\n\\nПереходим к новому индикаторы A/D\\n\\n\\n\\n\\n(2.8) A/D индикатор\\n\\nСоздал его Марк Чайкин, который и был вдохновлен нашим Гринвиллом и еще одним человеком, который придумал индекс накопления Лари Вильямсом\\n\\nВ основе индикатора A/D лежит сравнение цены закрытия с серединой диапазона от минимума до максимума, когда у того же OBV это только закрытие\\n\\nПо его словам он сделал это, так как в газетах редко писали про цены закрытия, что ему было неудобно или просто не нравилось\\n\\nДавайте разберемся в идее индикатора и чем же он отличается\\n\\n\\n\\n\\nМарк Чайкин сделал следующее\\n\\nОн взял разницу между минимумом дня и ценой закрытия, затем между максимумом дня и ценой закрытия. Получил разницу между ними и разделил на разницу минимума и максимума, затем умножается на объем торгов. После чего прибавил полученный результат к предыдущему значению дня по этой же формуле\\n\\nТак и работает его индикатор A/D\\n\\nВсе достаточно просто и в понимании и в использовании\\n\\nСейчас я предлагаю вам на него взглянуть и мы рассмотрим его функции\\n\\nДля начала напомню, что этот индикатор также ищется в обычном поиске, а не как коррекция по Фибо, поэтому просто вводим полностью его название Accumulation/Distribution и ставим первым от DovCaspi\\n\\nСейчас рассмотрим его и я покажу, какие сигналы он дает\\n\\nНа самом деле они очень схожи с OBV, за отсутствием\\nодного","image":"/media/images/theme_5_lesson_16_outline_61.png"},{"text":"1 его правило - направление тренда\\n\\nМы с вами торговцы только по тренду, для нас это важно. Поэтому когда движение A/D совпадает с движением графика, точнее подтверждает его движение, то мы с вами получаем восходящий или нисходящий тренд. Когда мы видим красный A/D, то стоит вставать только в шорт. Когда зеленый - только в лонг. Но помните, чем короче ТФ, тем быстрее меняются тренды и тем они менее заметные\\n","image":"/media/images/theme_5_lesson_16_outline_62.png"},{"text":"По моим наблюдениям, лучше всегда вставать в лонг, а шорт просто пропускать или накапливая долгосрочную позицию - докупать на дне этих красных бугорков\\n\\nОн часто запаздывает или плохо себя отрабатывает. Основное правило A/D заключается в другом","image":"/media/images/theme_5_lesson_16_outline_63.png"},{"text":"Поскольку у нас OBV плохо отрабатывает дивергенции и конвергенции, то A/D наоборот - это его главный \\"фокус\\", который кстати лучше работает на средних дистанциях в 2-4-24 часа по ТФ\\n\\nНа скрине слева вы видите, как график обновил своих хаи и закрыл вторую вершину выше предыдущей, когда A/D закрыл ее ниже, что следует из этого? Правильно! Сигнал дивергенции. Незамедлительно график отправился вниз и восстановил баланс)\\n","image":"/media/images/theme_5_lesson_16_outline_64.png"},{"text":"Таким образом выглядит конвергенция - то есть расхождение на восходящий тренд\\n\\nКак мы видим график указывает по своим нижним экстремумам на падение, когда A/D на рост. Таким образом, мы получаем ту самую желанную конвергенцию, которая толкает график вверх. Конвергенция тут сильнее, чем у MACD\\n","image":"/media/images/theme_5_lesson_16_outline_65.png"},{"text":"Также, этот индикатор можно использовать, как пробои уровней, но сейчас мы это разбирать не будем, да и толку мало, отработка слабая, но коснемся это в графическом анализе\\n\\nВыводы по индикатору :\\n\\n1)Использовать в связке\\n2)Хорошо подходит под дивергенции и конвергенции\\n3)Модернизированная модель OBV\\n\\nИндикатор интересный и полезный, его можно использовать в своих целях на разный срок\\n\\nСейчас мы переходим к изучению связок и стратегий, что является важнейшей частью индикаторного-технического анализа\\n","image":""}]	novyj-urok-8325	t	\N	\N	5	520	35
28	0	558e1a07-11dc-49bb-a707-24397d6db897	Временной и сезонный анализы	[{"text":"Что же такое временной и сезонный анализ? Сезонный анализ мы проводим на основании графика минимум за 10 лет и выявляем закономерности роста той или иной отрасли в определенное время года\\n\\nВременной анализ мы проводим на основании последних нескольких месяцев для торговли по : 1) индексу 2) отдельной компанией\\n\\nПредлагаю вам начать с первого\\n\\n\\n\\n\\nПоследнее время я активно использую данный способ для входа в сделки короткой торговли на 1-3 месяца\\n\\nЧтобы проанализировать сезонность, нам нужно просмотреть, как и было сказано - 10 лет графика (примерно), если у компании столько его нет, то хотя бы 7-8, меньше бессмысленно\\n\\nТакже, мы должны понимать, что это является лишь частью анализа, а не его финальным заключением\\n\\nКак правило, это первое на что я смотрю, когда нашел компанию интересную и хочется прикупить на спекулятивный среднесрок\\n\\nАнализ начинается с того, что включается 5 летний график или ТФ 1 неделя, чтобы упростить себе задачу и с легкостью найти те самые растущие сезоны\\n\\nДавайте рассмотрим это на примере Apple","image":"/media/images/theme_10_lesson_28_outline_0.png"},{"text":"Перед вами был график с 5 последними годами, где мной уже была найдена сезонность\\n\\nЭто сезонность компании Apple, она может послужить хорошей прибылью для тех, кто любит получать от 15 до 25% прибыли за 3 месяца\\n\\nНачинается сезонность прямо летом в июне и кончается в сентябре до презентации\\n\\nТаким образом, предлагаю вам проверить эту сезонность до 2012 года и сделать определенные выводы\\n\\nИз 10 лет всего лишь один раз сезонность подвела, а проходимость составила 90%, хороший результат? Я думаю восхитительный!\\n\\nДавайте немного обсудим эту тему\\n","image":"/media/images/theme_10_lesson_28_outline_1.png"},{"text":"Чтобы найти закономерную сезонность не нужно иметь 7 пядей во лбу\\n\\nТут все намного проще. Вы просто выбираете отрезок графика, который является растущим и затем сверяете, а не рос ли он случайно в прошлых годах\\n\\nЕсли рос - привет, сезонность!\\n\\nНо скажу сразу, что сезонность может быть \\"сезонность\\" по той причине, что не всегда она приходится на одно время года\\n\\nЭто может быть любой промежуток, хоть с октября по май, он может быть коротким и длинным, все зависит только от самой компаниии\\n\\nРассмотрим компанию PBF и попробуем найти у нее закономерность\\n\\nЯ сразу увидел ее в росте с периода с августа по октябрь. Только в 2020 году компания подвела свою сезонность, но тут все вполне очевидно. Точнее очевидны причины","image":"/media/images/theme_10_lesson_28_outline_2.png"},{"text":"Из 6 раз ( пока что ) 5 плюсовых, 1 минусовой. 3 гипер-плюсовых, 2\\nобычных\\n\\nСмотрим дальше, подтвердится ли сезонность. Как видим - подтвердилась. из 10 лет 8 плюсовых, 1 нейтральный и 1 минусовой\\n","image":"/media/images/theme_10_lesson_28_outline_3.png"},{"text":"У Теслы есть сезонность с мая по октябрь/ноябрь, тут кому как удобно\\n\\nВидите, сезонность очень длинная и назвать ее реальной сезонностью язык не поворачивается. Поэтому пусть будет просто инвестиционной сезонностью)\\n\\nПоказывать дальше особо смысла нет. Сезонность подтвердилась и было 1 минус и 1 нейтрально\\n","image":"/media/images/theme_10_lesson_28_outline_4.png"},{"text":"Сезонность, как и временной анализ очень короткие главы, но они короткие не потому что мне лень что-то написать, а потому что все гениальное просто и объяснять тему сезонности еще на 100 примерах - какой смысл?\\n\\nОсновные правила :\\n\\n1)Она либо есть, либо ее нет, не стоит придумывать за график\\n2)Сезонность не по временам года, может быть месяц, а может и пол года ( не может быть год, это уже не сезонность )\\n3)Является вспомогательным индикатором\\n4)Обычно является хорошей причиной для короткой сделки на пик сезонности\\n\\nДавайте перейдем к временной торговле, которая подходит только для тех, кто любит торговать внутри дня\\n","image":""},{"text":"Временной подход можно также называть - точка перелома, так как именно такая система находится внутри идеи\\n\\nЛично я пользуюсь ей редко, но может кому-то будет интересно и полезно узнать, что такое существует\\n\\nЛогика похожа на сезонность, но нужно проанализировать хотя бы 100 дней, что уже кажется немного сумасшедшим:)\\n\\nНо, есть выход - торговля по тренду\\n\\nВы можете проанализировать 1 раз график SPX 500 и все найти те самые точки его перелома, торгуя только топ компании из его списка ( идея самая адекватная )\\n\\n\\nОднажды вечером, когда мне не было куда потратить свое время с пользой, я решил пробежаться по графику за месяца полтора и глянуть, а что там сейчас по временным точкам\\n\\nИменно сейчас! Так как они меняются от фазы рынка к его другой фазе\\n\\nЯ выписывал в столбик время, когда происходили либо отскоки, либо сливы\\n\\nЛогика происхождения обоих одинакова, коим образом мне это не мешает приравнивать под одну гребенку\\n","image":"/media/images/theme_10_lesson_28_outline_6.png"},{"text":"","image":"/media/images/theme_10_lesson_28_outline_7.png"},{"text":"Таким образом, мной были выделены следующие временные точки ( диапазоны скорее )\\n\\n1) 18-18:40 ( обычно 18:30-18:40 )\\n2) 20:05-20:40\\n3) 21:30-22:40\\n\\nЕще раз, что это за \\"точки-диапазоны\\"\\n\\nВ это время по статистике за полтора месяца, которые я просмотрел, что-то происходит\\n\\n\\n\\n\\n\\nВы скажете, что значит \\"что-то\\"\\n\\nНа самом деле это не играет абсолютно никакой роли \\"что именно\\", так как мы отталкиваемся конкретно от того, был рост на рынке или падение, а также имеем важное правило - временные диапазоны ломаются в случае с происходящими на рынке независимыми событиями\\n\\nНа самом деле, как анализ, так и использование таких диапазонов штука сложная, ведь их нужно грамотно использовать, да и потратить немало времени\\n\\nДопустим, я только открыл график и сразу же перед нами резкие скачки и падения рынка 12 ноября\\nМагия или нет, то слева на право у нас идут временные диапазоны : 18:30, 20:30 и 22:30 То есть в 18:30 скачок вверх, в 20:30 резкий спад и в 22:30 снова скачок","image":"/media/images/theme_10_lesson_28_outline_8.png"},{"text":"Просмотрим то же самое слева-направо Это уже 11 ноября\\n18:30 низшая точка и отскок на 0.2% индекса ( 1-1.5% по волатильным компаниям )\\n\\n20:30 очередной отскок\\n\\n21:30 очередной отскок и в 22:30 уже слив\\n\\nФигурируют именно те даты, которые были названы, хоть я и анализировал их больше месяца назад\\n","image":"/media/images/theme_10_lesson_28_outline_9.png"},{"text":"Перед вами 10 ноября, мы просто идем по неделе в обратную сторону\\n\\nВремя слива догадайтесь) 18:30 Время откупа? 22:30\\nЭти временные диапазоны позволяют нам понять, что если происходит слив, то вероятно он будет идти до следующей важной точки, а если начинается отскок, то он будет также идти до следующей точки, только, если это не отскок или слив в конце дня","image":"/media/images/theme_10_lesson_28_outline_10.png"},{"text":"Перед вами 9 ноября и причина по которой я называл их все же временными диапазонами, а не точками\\n\\nСлив - 18:30\\nОткуп - 20:05\\nОткуп - 22:00\\n\\nНам даются диапазоны, среди которых будет точка, которая может показать тот или иной результат в зависимости от того, что происходит на рынке\\n","image":"/media/images/theme_10_lesson_28_outline_11.png"},{"text":"На самом деле эта тема очень интересна, но ей надо научиться пользоваться Допустим, что нам дает понимание диапазонов отскока или слива?\\nМы выбираем ту или иную компанию из SPX 500 ( допустим FB или Apple ) и торгуем ими по отношению к тому, что произойдет с индексом\\n\\nТут ничего нового, это стандартная торговля по тренду, которую мы с вами уже изучали, но есть важные дополнения - наши точки-диапазоны\\n\\nВот летит рынок вниз и в 22:30 начинает отскок, мы понимаем, что можем взять ту же Tsla на отскок, если она падала или сопротивлялась падению рынка ( это не важно, так как разница лишь в силе отскока ), а может она и вовсе росла, что даст невероятный рост при отскоке рынка\\n\\nПонимая это, мы входим в позицию, если рынок начинает свой отскок в 22:30\\n\\n\\n\\nЭти самые точки позволяют нам знать, в какое именно время стоит смотреть на рынок, а в какое он нам безразличен, понимаете?\\n\\nНо, скажу следующее - лично я анализировал лишь малую часть того, что действительно необходимо\\n\\nЕсли вам эта тема интересна, то просмотрите рынок за последние 100 дней и выпишите все точки разворота, которые в следствие станут диапазонами\\n\\nВыбирайте те, которые встречаются чаще всего и стройте по ним свои выводы\\n\\n\\n\\nИменно такие тонкие моменты и улучшают стратегии, которые у нас уже имеются\\n\\nВсегда думайте на 2 шага вперед. Рынок развивается, мы должны развиваться вместе с ним\\n\\nМногим из вас могут показаться эти точки угадайкой, но нет, это и правда рабочий инструмент\\n\\nПредлагаю открыть еще рандомную дату и проверить, будет ли эффект условно в мае или вообще в другом году\\n","image":""},{"text":"Все, как по фэншую\\n\\nИмеем нисходящий тренд, а в 18:30 начинается откуп и даже с поглощением ( хоть оно и слабое, так как находится всего лишь на 30 минутном ТФ\\n\\nКогда был следующий рост? Я не выделил, но в 20:00 следующая зеленая свеча и затем с очередным поглощением в 22:00\\n","image":"/media/images/theme_10_lesson_28_outline_13.png"},{"text":"одытожим тему\\n\\nЕсли вы хотите использовать данный инструмент временных диапазонов, то я советую вам еще раз самостоятельно и более детально прогнать статистику по последним 100 дням, так как она может меняться, хотя пока что указанные мной временные диапазоны вполне рабочие\\n\\nНе забывайте, что ни один из них не говорит, что будет рост или падение, это лишь переломные точки коротких трендов и не более. Тренд может продолжится, а может развернуться, так вот именно в это время его разворот или продолжение максимально эффективны\\n\\nДанный инструмент является лишь дополнением к торговле по тренду, которая в свою очередь является одной из лучших стратегий торговли на короткий срок, да и в целом - trend is your friend\\n","image":""}]	novyj-urok-5120	t	\N	\N	10	463	38
6	1	5c7b99c0-8109-4e98-b6d3-13564ce59b59	Мультипликаторы	[{"text":"Мультипликатор P/E\\nP/E - это отношение цены к прибыли. Но какой цены и для чего нам это нужно?\\n\\nЦена = стоимость одной единицы акции, а прибыль = EPS, то есть прибыль, полученная на эту акцию. Второе измеряется делением общей прибыли на общее количество акций, выпущенных компанией\\n\\nО чем говорит этот мультипликатор и какие значения должен иметь?\\nПростыми словами - этот показатель говорит инвестору, сколько времени потребуется, чтобы окупить вложения в компанию\\n\\nРазжевываю - цена акции 10$, прибыль на акцию 1$ ( все эти показатели общедоступны ), P/E = 10, так как 10/1 = 10 лет потребуется для полной окупаемости\\n\\nВы, наверное, подумали и испугались - \\"это как так? я вложу 1000$ и мне эти же\\nденьги вернутся только через 10 лет?\\"\\n\\nВовсе нет. Этот мультипликатор не отражает рост акций в цене, а лишь показывает настолько компания здоровая. Наоборот - чем выше растет акция в цене, тем выше становится этот мультипликатор ( как правило ), так как рост доходов не поспевает за ростом котировок\\n\\nУ нормальной компании данный показатель должен быть от 8 до 10. Если мы говорим про крупнейшие корпорации - 15-20\\n\\nЕсли показатель у обычной компании находится на отметке 100, а ее капитализация условно 10 миллиардов $, то очевидно, что ее переоценили.\\n\\nНо запомните! Мы никогда не судим компанию по одному показателю, берем только комплексный анализ, а о нем вы узнаете далее\\n","image":""},{"text":"Мультипликатор P/S\\nP/S - это отношение рыночной капитализации компании к ее годовой выручке ( не прибыли )\\nОн показывает,  сколько инвестор платит за 1 рубль  выручки компании Это достаточно важный показатель, так как с ним есть несколько хитростей :\\n1)если мы видим, что у компании растет прибыль и объем продаж, а P/S\\nостается на одном уровне или падает, то это говорит нам о том, что выручка предприятия растет намного быстрее, чем цена акций, такое не продолжается долго и, как правило, котировки подтягиваются вверх 2) обратная ситуация, когда P/S растет, а фин.показатели ( прибыль, объем продаж ) нет, то это сигнализирует о возможном откате котировок\\n\\nТаким образом, мы приходим к выводу - чем меньше этот показатель, тем лучше\\n\\nИдеальное значение мультипликатора от 0.5 до 1 - это говорит нам о том, что мы покупаем рубль выручки со скидкой\\n\\nЗначение от 1 до 2 является нормой, у крупных корпораций до 3\\n\\nЕсли значение 5-10-15, то это перебор и возвращайтесь к предыдущему слайду и читайте, что может быть с компанией\\n\\nСогласитесь, совсем несложно, когда каждый показатель объясняют простым языком и с примером, закрепляющим маленькую тему\\n\\nПереходим к следующему мультипликатору\\n","image":""},{"text":"Мультипликатор P/B\\nP/B - отношение рыночной капитализации к балансовой стоимости\\n\\nСравнивая рыночную стоимость с балансовой, инвесторы хотят понять, сколько они платят за чистые активы компании\\n\\nЧистая стоимость компании в свою очередь представляет из себя величину, получаемую с помощью вычета суммы обязательств из суммы активов организации\\n\\nТаким образом, мы получаем следующее :\\n\\nЗначение P/B < 1 = рыночная цена компании меньше собственного капитала = компания недооценена ( прекрасно )\\nЗначение P/B > 1 = рыночная цена компании больше собственного капитала = компания переоценена\\n\\nЗначение P/B = 1 = рыночная цена компании равна собственному капиталу и это в\\nрамках нормы, оценена по достоинству\\nЗначение P/B < 0 = компания на грани банкротства или же в очень плохом положении, лучше избегать таких активов, ведь сумма обязательств выше суммы\\nсобственных активов\\nЗначение P/B > 3-4-5 = рыночная цена компании намного больше собственного капитала = компания крайне сильно переоценена\\n\\nСложно? Нет! Кто читал внимательно, точно все понял!\\n\\nНо я кое-что приберег для вас. Вы же не думаете, что все отрасли имеют одинаковое среднее значение мультипликаторов...\\n\\nНе пугайтесь, ничего сверхсложного не будет, но вот сверхинтересное...не гарантирую...не гарантирую...\\n","image":""},{"text":"Мультипликатор Debt/Equity\\nDebt/Equity - соотношение заемного капитала к собственному. Чем выше данный показатель, тем выше уровень риска\\n\\nОбычно этот показатель считается одним из важнейших, так как фактически показывает - сколько же своих денег имеет компания, не много ли она набрала заемных ( долгов )?\\n\\nЕсли показатель выше 1 - значит количество заемного капитала преобладает над собственным и это не есть хорошо\\nЕсли показатель ниже 1 - значит своих денег достаточно, а долгов меньше, таким образом, это является положительным моментом в оценке той или иной компании\\n","image":""},{"text":"Мультипликатор EPS и Разводненный EPS\\nEPS - прибыль на акцию. Берется прибыль компании и делится на количество акций Разводненный EPS = Разводненная прибыль на акцию. Простым языком - это максимально возможное\\nснижение дохода на акцию\\n\\nЕсли с первым все понятно, то со вторым думаю нет. Тут нужно вникнуть в саму суть. Что такое разводнение? Это увеличение акций по средством дополнительной эмиссии, buyback-ов и многих других моментов\\n\\nЕще проще? Хорошо!\\n\\nПредставьте, что у компании 100 акций и 50 привилегированных. Держатели обыкновенных покупали их по 10 долларов за штуку. Но руководство решило разводнить обыкновенные акции и 50 привилегированных штук стали обычными. Теперь цена акции должна упасть\\n\\nпо той причине, что их стало больше. То есть резкое или плавное увеличение\\nколичества акций называется разводнением, так тот же показатель прибыли на акцию меняется, а в следствие и остальные мультипликаторы становятся на порядок хуже\\n\\nЕще не поняли почему? Вот вам пример!\\n\\nКомпания имеет 100 акций по цене в 10 долларов. Капитализация компании 1000 долларов\\n\\nЧему равен EPS, если прибыль за год составила 500 долларов? Правильно - 500/100=5 долларов на акцию\\n\\nНо, что будет, если случится разводнение? Главы компании добавят еще 50 акций и их станет 150?\\n\\nВерно мыслите! Если акций станет 150 штук, то прибыль на акцию сразу же\\nбудет составлять не 5 долларов, а 500/150=3.33 доллара на акцию, что намного хуже!\\n\\nТеперь, когда потенциальный акционер будет видеть компанию, он скажет - елки-палки, а EPS то уже не так шикарен. Но что будет с котировками и актуальными держателями активов? Правильно, подешевеют цены на актив, а инвесторы потеряют деньги\\n\\nТаким образом, мы пришли к ответу - что же такое разводненная прибыль на акцию и зачем она нужна?\\n\\nЗначение этой прибыли позволяет нам понять максимально негативный EPS ( прибыль на акцию ) в случае, если владельцы компании решат использовать разводнение по полной и использовать все возможные ресурсы\\n\\n\\n\\n\\nТаким образом, EPS - прибыль на акцию, а Разводненный EPS -\\nмаксимально возможное снижение дохода на эту же акцию в случае разводнения позиций\\n\\nДля чего нам нужны эти значения и как их понимать?\\n\\nПри выборе компаний из одной отрасли и одной страны, мы будем выбирать те, где EPS выше, так как компания прибыльней.\\nА Разводненный EPS поможет нам представить риски, которые мы берем при покупке актива\\n","image":""},{"text":"Мультипликатор Cash/Share\\nCash/Share или по другому Cash per Share - отношение наличных активов компании по отношению к количеству всех акций\\n\\nЭтот мультипликатор сложнее пройденных в связи со спецификой применения и понимания\\n\\nПо сути, смотря на этот мультипликатор мы видим сколько наличных денег приходится на одну акцию, похоже на EPS, но в нашем случае не прибыль, а именно наличные\\n\\nЕго используют для оценки компании в правильности действий. Понятное дело, что он не должен быть меньше 0, но что, если он 10-20-30$ на акцию?\\n\\n\\n\\n\\nВ целом, это должно быть вроде как и хорошо, ведь компания\\nимеет большой запас наличных средств, но с другой...почему\\nони не используются?\\n\\nПочему они не пускаются на дело, зачем они хранятся в наличных средствах? Для чего все это. Тут нет четкого понимания, сколько же должен составлять данный показатель в цифрах, так как это индивидуально для каждой компании, но давайте на очередном примере разберемся, что есть плохо, а что хорошо!\\n\\nПредположим, что у компании, где капитализация = 1.000 долларов, в обороте есть 100 акций, а\\nприбыль = 500 долларов. Таким образом, мы имеем следующее : EPS = 5 долларов, P/E = 2 и кажется из этих данных, что все максимально прекрасно. Но что будет, если я вам скажу, что маржа на товар/ услугу 1000% и прибыль в 500$ они получают, вложив всего 50$?\\n\\nВаше мнение еще не изменилось? Хорошо, объясняю дальше!\\n\\nУ компании прекрасный товар, который приносит огромную окупаемость, но она не пытается продать больше, вкладывает из года в год +- одно и то же количество денег на реализацию, сбыт и производство продукта\\n\\nОстальные деньги она не пускает в разработку чего-то нового ( НИОКР другими словами, будем проходить позже ), а оставляет в наличке, но для чего? Владельцы берут себе? Раскидывают между своими?\\n\\nЕсли так, то какая нам разница, что у них EPS 5$ и P/E =2? Если компания не пытается двигаться вперед, то в нее не стоит вкладывать ни рубля\\n\\nВы спросите - Антон, как же нам понять, что компания поступает именно так?\\n\\nВ этом вы окончательно разберетесь позже, но вкратце - есть НИОКР - Научно- исследовательские и опытно-конструкторские работы, данные по вложениям в которых открыты для всех\\n\\nЕсли мы видим, что у компании не идет развитие выручки, прибыль, а начинается обычная стагнация, зачем в нее вкладываться?\\n\\nЕще раз - компания делает стабильные деньги, имеет прекрасные показатели и отличную маржу на товар, таким образом и рентабельность на уровне, но она не пытается развиваться, не расширяет ассортимент, не увеличивает количество клиентов, не пытается пускать деньги в разработку, а лишь пожинает плоды от своей деятельности\\n\\nДайте мне ответ - вы вложитесь в такое? Если да, то перечитайте главу заново. У такой компании нет стимулов расти в котировках, умные инвесторы не дадут ей подняться\\n","image":""},{"text":"Мультипликатор Cash\\nFlow/Share\\nCash Flow/Share - денежный поток на акцию\\n\\nНо, чтобы понять, что же это такое, надо дать определение денежному потоку\\n\\nДенежный поток - это прибыль после налогообложения плюс амортизация в расчете на акцию\\n\\nТеперь надо понять, что такое амортизация\\n\\nАмортизация простыми словами - это выраженный в деньгах износ основных средств или нематериальных объектов. Суть состоит в том, чтобы путем амортизационных отчислений обеспечить постепенное возмещение стоимости объекта. Как? Эти суммы включаются в расходы\\n\\nТеперь возвращаемся к определению\\n\\nCash Flow/Share - это просто прибыль после налогообложения плюс амортизированные отчисления за износ основных средств и нематериальных объектов. И все это в пересчете на одну акцию\\n\\nПредставьте, если бы вам просто дали это определение. Сколько человек из 1.000 это бы поняли без пояснений? Я думаю не больше 5% ( сам в свое время во всем разбирался )\\n\\nМоя цель - дать грамотное и четкое объяснение каждой отдельной темы, чтобы после обучения вы вышли без шуток - знатоками инвестиций хотя бы в теории, а дальше дело за практикой\\n\\nВозвращаясь к нашему мультипликатору, хочу сказать вам следующее - нет четкого\\nопределения \\"денежному потоку\\"\\n\\nМногие экономисты интерпретируют его по разному, основные звучат так - совокупность распределенных во времени поступлений (притока) и выплат (оттока)\\nденежных средств, генерируемых хозяйственной деятельностью предприятия, независимо от источников их образования.\\n\\nПоскольку мнения разнятся, я предлагаю вам выбрать именно то, что ближе вам Теперь переходим к тому, а что нам с ним делать? С этим денежным потоком на акцию\\nЕсли у компании отрицательный денежный поток на акцию, это означает, что компания использует свой венчурный капитал для покрытия накладных расходов, и компания еще не получила положительного денежного потока от своей деятельности.\\n\\nПростыми словами - при отрицательном денежном потоке мы понимаем, что\\nвенчурный капитал уходит не в нужное русло, а на затраты, понесенные на организацию, обслуживание производства, реализацию продукции и управление\\n\\nЭто выражается в сумме денег, которые компания тратит сверх того, что она берет в месяц\\n\\nЕсли же у компании есть избыточный денежный поток на акцию, то это будет означать, что она может неплохо побаловать инвесторов своими дивидендами. Но помните, что новые и инновационные компании обычно не имеют избытков, так как все уходит в НИОКР и другие важные сферы для развития\\n\\nВы чувствуете, что НИОКР уже везде? Я тоже это чувствую, потому что вложения в него являются одним из важнейших показаний дальнейшего развития компании","image":""},{"text":"Мультипликатор P/FCF\\nP/FCF - цена/свободный денежный поток. На английском - Price/Free Cash Flow Начнем с понимания, что такое свободный денежный поток\\nСвободный денежный поток - это сумма, на которую операционный денежный поток предприятия превышает его потребности в оборотном капитале и расходы на основные средства.\\n\\nЧто же такое операционный денежный поток? - это сумма денежных средств, которые компания генерирует от операционной деятельности в течение конкретного периода времени. Операционная прибыль в свою очередь - это прибыль от основной операционной деятельности предприятия\\n\\nРасставим все точки над i?\\n\\nТо есть P/FCF =  цена/свободный денежный поток, основной задачей этого мультипликатора является определение способности компании выплачивать дивиденды\\n\\nЗначение ниже 15 означает очень здоровое состояние компании и способность к выплате дивидендов\\nЗначение ниже 20 означает приемлемое состояние компании и также способность выплаты дивидендов\\n\\nЕсли значения выше - компания не так здорова, как могла бы быть и платит меньше дивидендов или не платит вовсе\\n\\nЕсть несколько тонких моментов в интерпретации данного мультипликатора, о которых я вам сейчас поведаю\\n\\n\\n1 момент - как и все другие мультипликаторы все познается в сравнении. Мы\\nдолжны сравнивать конкретную компанию в своей отрасли, а не в целом по рынку, так как у IT все совсем иначе, чем у нефтянки, верно?\\n\\n2 момент - надо понимать откуда взялся положительный денежный поток.\\nКомпания \\"А\\" могла достичь его своим трудом и работой, а компания \\"Б\\" взяла кредит и перекрыла убытки, что будет в отчете? Правильно - положительные денежные потоки у обеих компаний. Я научу вас проверять это!\\n\\n3 момент - данный мультипликатор не может сказать нам даже о возможном изменении котировок компании, он лишь анализирует дивиденды, которые несомненно важны, но не являются ключевым при выборе компании, если вы не составляете дивидендный портфель\\n","image":""},{"text":"Мультипликатор Quick Ratio\\nQuick Ratio - это коэффициент быстрой ликвидности — финансовый коэффициент, равный отношению высоколиквидных текущих активов к краткосрочным обязательствам\\n\\nОн характеризует способность организации погасить свои краткосрочные обязательства ликвидными активами\\n\\nПричем, в ликвидные активы входят : дебиторская задолженность, наличные средства, краткосрочные финансовые вложения, да и в целом - все оборотные активы, кроме неликвидных запасов\\n\\nЧем выше коэффициент быстрой ликвидности, тем лучше для компании\\n\\nНормой считается значение 1 и выше, но прошу учесть в очередной раз, что мы\\nанализируем компанию относительно определенной отрасли, в которую она включена\\n\\nЭто означает, что коэффициент ниже 1 говорит нам о том, что ликвидные активы не способны покрыть краткосрочные обязательства, но если у условной компании \\"А\\" это значение 0.9, а по отрасли 0.2, то это является сильным положительным результатом, в то время, как у компании с таким же коэффициентом 0.9, а по отрасли 1.8 - плохим результатом\\n\\nЕсли вы вдруг сейчас задаетесь вопросом - вот я все это понял(а), что дальше? Где мне это смотреть, я ведь ничего не знаю!\\n\\nМой ответ - всему свое время, не стоит никуда спешить, давайте сначала изучать теорию, а только потом будем переходить к практике\\n\\nФундаментальный анализ - целая наука, которая не терпит спешки в своем изучении\\n","image":""},{"text":"Мультипликатор Current Ratio\\nCurrent Ratio - коэффициент текущей ликвидности. Он показывает способность компании погасить свои краткосрочные обязательства в течение одного года оборотными активами\\n\\nВы скажете мне - в чем же разница между Quick Ratio и Current Ratio. Я вам отвечу - в Quick Ratio должны использоваться только те ликвидные активы, которые могут быть переконвертированны в наличные средства в течение 90 дней, а в Current Ratio такие активы должны быть конвертированы в течение 365 дней или ровно 1 года\\n\\nТаким образом, если значение 2 и больше - это хорошо. Означает, что текущие оборотные активы могут в 2 раза покрыть краткосрочные обязательства. Все также зависит от определенной отрасли, не забывайте\\n","image":""},{"text":"Мультипликатор Asset Turnover\\nAsset Turnover ( далее просто AT ) - коэффициент оборачиваемости товаров.\\nПростыми словами - это коэффициент показывает, сколько раз в среднем реализуются запасы предприятия за установленный промежуток времени, отражая эффективность использования активов\\n\\nДанный показатель достаточно важный, но у него нет привычных цифр нормы или напротив, тут нужно проводить анализ относительно сектора компании. Если мы берем TSLA, то смотреть будем по отрасли автомобилестроения, если берем OIS, то по нефтяной отрасли и так далее\\n\\nНо для понимания скажу так - чем он выше, тем лучше. Если у компании маленький коэффициент оборачиваемости товаров, то ей стоит подзадуматься об эффективности использования своих активов\\n\\nПредлагаю вам немного разобраться, как этот коэффициент считается\\n\\nAssets turnover = Выручка (Revenue) / Среднегодовая стоимость активов (Average annual asset value)\\nЧто такое выручка понятно всем, но со вторым надо разобраться Среднегодовая стоимость активов (Average annual asset value) – это сумма стоимости\\nактивов на начало периода и конец периода, деленное на два\\n\\nСтоимость активов в свою очередь — это сумма внеоборотных и оборотных активов предприятия. То есть балансовая стоимость всех активов предприятия по данным бухгалтерского баланса на последнюю отчетную дату\\n\\nНадеюсь, что не запутал вас еще больше, но понимать, как это считается - очень важно\\n","image":""},{"text":"Мультипликатор Inventory Turnover\\nInventory Turnover - оборачиваемость запасов. Похож на предыдущий мультипликатор, но в данном случае не активы, а именно запасы\\n\\nПоказывает, сколько раз за анализируемый период организация использовала средний имеющийся остаток запасов\\n\\nПозволяет выявить остатки неиспользуемых или устаревших запасов. Прошу заметить, что под запасами понимаются : товары или сырье\\n\\nКак таковой нормы нет, желательно анализировать этот показатель в отношении среднего по отрасли, а еще лучше - по истории компании + по отрасли\\n\\nКак понимать мультипликатор, если неизвестно от чего отталкиваться?\\n\\nСначала давайте точно поймем - для чего он?\\n\\nЕсли у компании слишком низкий показатель, то она имеет слабую динамику продаж и слишком большое количество избыточной продукции = неэффективное управление запасами\\n\\nНормальный уровень = примерно по отрасли и чуть выше, вероятнее будет означать хорошее здоровье компании и меньшие риски от потери непроданного товара\\n\\nНо слишком высокие, оторванные от реальности и среднего числа по отрасли, показатели - могут сыграть злую шутку. Так как это означает, что компании приходится продавать практически весь товар, чтобы держать выручку/прибыль в норме\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nПонимать среднее значение нужно следующим образом\\n\\nНа ресурсе, где мы с вами будем рассматривать все показатели, есть графа средней по отрасли. Прибавляем 5-15%  к средней и получаем здоровую компанию. Если значение будем таким же, то тоже ничего плохого - значит это обычная рядовая компания по оному мультипликатору\\n\\nДалее мы с вами рассмотрим последний мультипликатор из этого блока и перейдем к рентабельности компаний\\n","image":""},{"text":"Receivable Turnover\\nReceivable Turnover - коэффициент оборачиваемости дебиторской задолженности. Он показывает, насколько эффективно компания дает кредиты и взыскивает долги\\n\\nКомпания, которая эффективно собирает кредитные платежи, будет иметь более высокий коэффициент оборачиваемости дебиторской задолженности\\n\\nСамое полезное - сравнивать эти показатели между средним по отрасли и анализируемой компанией\\n\\nНизкий коэффициент дебиторской задолженности будет показывать неспособность компании грамотно выстраивать денежно-кредитную политику со своими\\nклиентами\\n\\nМногие из вас подумают - \\"на кой нам все это надо знать?\\"\\n\\nОтвечу - если вы собрались стать квалифицированными инвесторами, хотя бы в своем понимании и значении этого слова, то стоит разбираться откуда берутся доходы компании, как она ими управляет, насколько эффективна в максимальном количестве аспектов\\n\\nПри выборе компании, я часто пытаюсь перевести аналитику в реальную жизнь\\n\\nКомпания имеет низкий коэффициент дебиторской задолженности - какой бы индекс имел я? Много раз не возвращали, я терял деньги. Стал бы я покупать акции имени себя? Конкретно по этому показателю нет, надо будет посмотреть на остальные и составить общую картину\\n\\nПонимаете смысл? Мы собираем максимальное количество данных и пытаемся сделать по ним грамотный вывод, чтобы верно вложить свои средства\\n\\n\\n\\nНа этом главу мультипликаторы мы с вами закончили\\n\\nПрошу вас посмотреть видео и пройти тестирование, а при его успешном завершении, пройти к главе 2 - рентабельность\\n\\nУ кого остались вопросы - \\"где нам смотреть все эти индикаторы?\\", я отвечаю - я разработал свою систему обучения, где сначала мы проходим материал и лишь затем практикуемся, чтобы не было никакой путаницы\\n\\nНебольшой спойлер - все эти мультипликаторы, а также будущая рентабельность смотрятся в одном месте\\n","image":""}]	novyj-urok-1331	t	\N	\N	3	524	23
17	1	f3268be3-bec0-4121-9d61-7b4ab8e41919	Стратегии	[{"text":"Я предлагаю вам начать со связок и только потом подстраивать их под стратегии Связка - объединение индикаторов для более точного технического анализа\\nЧтобы собрать связку, мы должны понимать принцип действия каждого из используемых индикаторов\\n\\nПочему? Так как они имеют часто схожие свойства и ставить одинаковые индикаторы не имеет никакого смысла\\n\\nПредлагаю вам рассмотреть первую связку, она очень простая, но поможет вам понять принцип действия\\n\\nСразу скажу. Количество индикаторов в связке не ограничено, но обычно от 3 штук, редко на длинной дистанции могут встречаться 2 индикатора\\n\\nЭта связка выглядит следующим образом. У нас есть три индикатора : RSI, MACD и Bollinger\\n\\nRSI выполняет функцию опережающего индикатора, который нужен, чтобы сигнализировать о том, что скоро рынок может развернуться. MACD основной индикатор, который при пересечении говорит, что пора входить в сделку, а Bollinger трендовый индикатор, он указывает нам, не ошиблись ли предыдущие индикаторы с выбором тренда","image":"/media/images/theme_5_lesson_17_outline_0.png"},{"text":"То есть мы входим в сделку только в том случае, когда все три индикатора говорят - ДАВАЙ!)\\n\\nВ эту же стратегию неплохо пойдет четвертый индикатор - уровни PIVOT, чтобы определять точки выхода и сопротивления. Тогда эта связка будет полной и отработка на уровне. Работает на всех ТФ, проверял. Если вы составляете свою связку, сначала прогоняйте ее по истории на 50-100 сделок, чтобы определить, сколько из них будут успешными\\n\\nНиже привел еще один пример\\n\\nПредлагаю разобрать его на следующем слайде, так как там есть показательный момент, как делать нельзя!\\n\\nВсе как обычно. Сначала RSI, потом MACD, а потом Bollinger. Сделка на дневном ТФ и прибыль по ней\\nвыше выше 15%  за неделю. Но почему же мы не вошли раньше, где Bolligner уже сменился на зеленый?\\nВсе просто, мы не увидели закрепления\\n\\nЗакрепление должно быть минимум двойной, а лучше тройной свечой и причем желательно, чтобы они были по направлению тренда\\n\\nДопустим - после пересечения Боллинджера с красного на зеленый, должны быть 3 зеленых свечи.\\nСлабее, если 2 зеленых и 1 красная. Еще слабее 1 зеленая и 2 красных. То же самое и в сторону шорта. Запомните это правило!","image":"/media/images/theme_5_lesson_17_outline_1.png"},{"text":"Предлагаю рассмотреть возможные ТФ по этой связке на разных дистанциях. От\\nдолгосрочной к краткосрочной. Сейчас открыт график Virgin Galactic и ТФ 1 день ( ширина графика в 1 год ), таким образом тренд будет средне-долгосрочный, но на 5 летнем графике сигналы будут слишком редкие, чтобы их показать\\n\\nЧто мы видим на этом графике? Правильно, прибыль по связке)","image":"/media/images/theme_5_lesson_17_outline_2.png"},{"text":"Как мы видим, максимальное количество сигналов могло быть 6, а на деле 5, так как 6\\nтолько сейчас и еще никакого разворота нет\\n\\nТаким образом, давайте посмотрим сколько сигналов было подтверждено MACD\\n\\nСейчас я хочу подробно разобрать суть связки, чтобы вы все поняли и в дальнейшем было проще\\n","image":"/media/images/theme_5_lesson_17_outline_3.png"},{"text":"Как мы видим по MACD - из 5 сигналов все 5 были подтверждены. Многие скажут -\\nтогда будем брать все 5, а внимательные заметили, что их тут всего 4 по нашей связке и 5 вовсе не идет\\n\\nГляньте на Боллинджер, который указывает тренд, ничего не заметили? Против тренда не берем, один сигнал лишний. Давайте разберемся","image":"/media/images/theme_5_lesson_17_outline_4.png"},{"text":"Здесь сигнал по Боллинджеру не прошел, он не развернулся и так и показывал\\nнисходящий тренд, поэтому и брать мы не будем\\n\\nНам не зачем рисковать, когда есть четкая инструкция к применению. Ждем разворота или новых сигналов на шорт. Предлагаю посмотреть, сколько прибыли мы могли заработать за 4 сигнала по максимуму за 1 год с этой компании","image":"/media/images/theme_5_lesson_17_outline_5.png"},{"text":"Немного пофантазируем и представим, что вы каждый раз заходили в сделку на 1 миллион рублей. Таким\\nобразом, за 1 год вы могли сделать по максимуму с 1 миллиона 11 миллионов 634 тысячи рублей. То есть 1063.4%\\n\\nКак? Посчитайте, что вы входили миллионом в первую сделку и затем всей \\"выигранной\\" суммой во все последующие. В общем, это так, на помечтать оставил вам:)\\n\\nТак идеально входить в сделки невозможно, но 50% от этого забрать можно было не умея выходить из сделок, но умея заходить по этой связке\\n","image":"/media/images/theme_5_lesson_17_outline_6.png"},{"text":"Вот как выглядит график на среднесрочной дистанции. ТФ 1 час и диапазон  3 месяца\\n\\nВыглядит скучно по % по сравнению со среднесроком, но что поделаешь. 4 сделки, каждая из которых зашла, давайте проверим, что по прибыли\\n\\nПрибыль на таком ТФ обычно 5% и не больше","image":"/media/images/theme_5_lesson_17_outline_7.png"},{"text":"Сделок здесь, кстати, 5. Общая максимальная прибыль с реинвестированием =  41%, но\\nреальная не более 15-20, так как чтобы четко и идеально выходить из позиций, надо иметь счастливую руку, реальные показатели всегда ниже. Поэтому я просто сразу же режу на 2\\n\\nНо в целом, отработка есть, минусов нет, давайте посмотрим на короткой дистанции","image":"/media/images/theme_5_lesson_17_outline_8_ONlbj37.png"},{"text":"Отработка сразу же сводится к нулю. Конечно, не полный ноль, но результат\\nминусовой на ТФ 5 минут\\n\\nДелаем вывод, что связка работает на среднесроке и долгосроке?\\n\\nДавайте проверим на другой компании","image":"/media/images/theme_5_lesson_17_outline_9.png"},{"text":"Выглядит паршиво, согласны? Я надеюсь, что да, так как эта связка не подходит под\\nторговлю внутри дня или нескольких по следующей причине Слишком много шумов!\\nЭти шумы от постоянной смены всех индикаторов, особенно MACD и Боллинджера,\\nпоэтому мы будем часто ошибаться. Давайте сделаем выводы по связке","image":"/media/images/theme_5_lesson_17_outline_10.png"},{"text":"Выводы следующие :\\n\\n1)связка хорошо идет на среднесрочной и долгосрочной торговле, то есть от ТФ 1 час до месяца\\n2)чем больше ТФ, тем меньше сигналов она выдает\\n3)чем больше ТФ, тем больше % с сигнала мы забираем\\n4)чем больше ТФ, тем дольше мы сидим в компании по сигналу\\n5)входим в позицию только при полноценном тройном подтверждении сигналов. Тройное = от всех трех\\n6)нужно проверять отработку сигналов по истории компании на выбранном ТФ, так как на SPCE она может работать отлично, а на условном RIG ужасно. Никакого\\nобобщения по всем компаниям не делаем\\n\\nИнтересно? Давайте таким же образом разберем последующие связки, чтобы в голове отложилось все наверняка, чтобы не осталось никаких вопросов\\n","image":""},{"text":"(3.3) Связка по OBV + EMA 200 + Ichimoku\\n\\nВ данной связке все совсем иначе, предлагаю разобраться!\\n\\nOBV будет выступать подтверждением тренда и расхождением в нем, если подобное будет. EMA 200 поддержкой и основным направлением тренда. Ichimoku более слабым направлением тренда и зонами поддержки/сопротивления","image":"/media/images/theme_5_lesson_17_outline_12.png"},{"text":"Как образом тут входить в позицию? Вариант входа практически один - когда график\\nкасается ЕМА 200 - мы входим в позицию, неважно с какой стороны, мы входим в позицию по тренду, так как все, что выше ЕМА 200 = восходящий тренд, а ниже - нисходящий\\n\\nТаким образом будет следующее. График условно идет вниз и прошивает Ичимоку, мы понимаем, что значит дойдет до ЕМА 200, ждем этого соприкосновения и берем компанию в лонг. Если бы график шел снизу-вверх, то в шорт, но я не советую рассматривать такие варианты и лучше брать всегда в лонг и торговать на сильных мировых фундаментальных компаниях!\\n\\nТаким образом, OBV подтверждает нам направления тренда и будет показывать от случая к случаю расхождения между ним и котировками\\n\\nПриступим к просмотру с долгосрока!\\n\\nВсе правильно и так, как должно быть\\n\\nСмотрите слева на право. Первый сигнал. Пробито Ичимоку, берем на касании, OBV показывает повторение логики графика, значит все хорошо, мы идем выше. Прибыль только по этой сделке могла быть 400%+\\n\\nДальше мы видим касание Ичимоку, но ниже не пошло. Рисковать не стоит, ждем. Затем касание ЕМА 200 и пробитый Ичимоку, мы берем в лонг. Максимальная прибыль 40%, но видим, что не увеличиваются объемы по OBV, а котировки растут, готовимся к падению и закупаем повторно на касании с актуальной прибылью 80%\\n","image":"/media/images/theme_5_lesson_17_outline_13.png"},{"text":"По сути три сигнала могли дать нам максимальную прибыль в 2.658 сложных процентов или с 1\\nмиллиона рублей 26 миллионов:)\\n\\nПосчитайте сами, если хотите. Первая сделка дала с миллиона 9 сверху, далее 48% к 10 миллионам и еще 95% почти к 15 миллионам, я даже слегка обсчитался. Такие проценты приветствуются на фондовом рынке для тех, кто умеет ждать и держать. На деле скорее бы забрали процентов 500- 600 в лучшем случае, так как сложно совладать с эмоциями и желанием зафиксировать, да и выйти идеально трудно. Поэтому в 5 раз порежем и все равно получим сильнейший результат за 1 год!","image":"/media/images/theme_5_lesson_17_outline_14.png"},{"text":"Рассматривая график 2 часа, то есть пол года дистанции ( среднесрок ), то правила\\nиспользования будут другими\\n\\nДавайте взглянем и посмотрим, в чес кардинальное отличие\\n\\nОно заключается в том, что ЕМА 200 не держит удар и будет служить прошитым трендом, по которому будем вести проторговку\\n","image":"/media/images/theme_5_lesson_17_outline_15.png"},{"text":"Нас интересуют короткие сделки, которые будут приносить 3-8% прибыли, стратегию\\nможно выбрать самому. Имею ввиду - какой % хотите забирать. Тут ставим стопы, которые должны быть равны прибыли или в 2 раза меньше. Расскажу еще один способ выставлять стопы в конце урока\\n\\nСистема следующая - график должен пробить Ичимоку и ЕМА 200 вверх или вниз, чтобы мы взяли в лонг или в шорт, а OBV будет подсказывать, нет ли тут ошибок по объемам\\n\\nТакже, присутствует очень важное правило закрепления свечей. После пробития ЕМА 200, мы должны дождаться закрепления трех свечей над ней и брать на 4. Если 2-3 свеча ушла выше ЕМА 200, то сделка отменяется\\n\\nДавайте посмотрим, как это будет работать на графике\\n\\nДля примера возьмем момент, когда закрепления не было\\n\\nКак вы видите, я обвел это в красный прямоугольник. 1 и 2 свеча оказались выше ЕМА 200, а третья ушла вниз, поэтому в сделку мы не заходили\\n\\nТеперь давайте перейдем к отработке связки","image":"/media/images/theme_5_lesson_17_outline_16.png"},{"text":"Смотрим, как происходит отработка\\n\\nИдет пробитие Ичимоку, потом переходим к пробитию ЕМА 200 и рост.\\n\\nАналогично происходит в сторону шорта. Средняя прибыль с каждой сделки около 10%. Есть и по 20% прибыли, есть и по 3%, как последняя, которую я не обвел. Также, самый правый прямоугольник перечеркнут, так как показывает, что закрепления не произошло","image":"/media/images/theme_5_lesson_17_outline_17.png"},{"text":"ногда стратегия может изменяться. Что это значит?\\n\\nЕМА 200 будет снизу, Ичимоку сверху при восходящем тренде и наоборот. Никакой разницы нет, система та же, только теперь мы при лонге ждем закрепления над ичимоку, а не ЕМА 200\\n\\nОтработку вы видите на скрине ниже, вполне неплохие проценты\\n","image":"/media/images/theme_5_lesson_17_outline_18.png"},{"text":"Торговать на 5 минутном фрейме я вам не рекомендую, так как это слишком рискованно\\n\\nПосмотрите на скрин ниже и сойдите с ума от количества сигналов и волатильности бумаги\\n\\nЛучше на краткосрок торговать полугодовой диапазон. Результат лучше, а сделки также\\nкороткие\\n","image":"/media/images/theme_5_lesson_17_outline_19.png"},{"text":"Теперь перейдем к возможности установки стопа, про которую я вам говорил в начале\\n\\nЭтот индикатор называется ATR. Сейчас покажу принцип его работы, но для начала давайте его установим\\n\\nДля этого нужно ввести в поиске индикаторов три буквы ATR и выбрать \\"средний истинный диапазон\\"\\n\\nИндикатор носит название \\"средний истинный диапазон\\" и применяется для расчета стопов и в целом волатильности","image":"/media/images/theme_5_lesson_17_outline_20.png"},{"text":"Он выглядит как кривая волатильности, поэтому, когда мы хотим войти в сделку, мы смотрим его\\nзначение и умножаем на 2 или 3, смотря на какой срок берем компанию и смотря, какая перед нами компания\\n\\nЕсли честно, я всегда выбираю умножение на 3, так как более практично\\n\\nДопустим, я навел на определенный момент графика и мы получили число 23.44 по ATR, получается войдя в лонг, мы должны из цены, которая была в тот момент вычесть 23.44 умноженное на 3 и это будет число стопа. Тогда цена была 680 долларов, выходит это минус 70.32 = 609.56","image":"/media/images/theme_5_lesson_17_outline_21.png"},{"text":"Если рассматривать сейчас, то его значение равно 36, а цена Tesla 1114\\n\\nТаким образом, если мы входим в лонг, то стоп ставим на 1114 - 108 = 1006, а если в шорт, то ставим стоп на 1114 + 108 = 1224\\n\\nВсе достаточно просто. Но раз уж у нас зашла тема про стопы, то есть еще 1 вариант стопа, который можно использовать\\n","image":"/media/images/theme_5_lesson_17_outline_22_uCPKWWU.png"},{"text":"Данный способ тоже простой и требует использования индикатора уровни PIVOT\\n\\nПравило одно - мы устанавливаем стоп на середине предыдущего уровня Посмотрите, как это работает и где именно","image":"/media/images/theme_5_lesson_17_outline_23.png"},{"text":"Проще говоря, если вы хотите брать в лонг, то вы берете предыдущий уровень и его\\nсередину, там и будет стоп\\n\\nЕсли вы хотите брать в шорт, то берете уровень выше и его середину и ставите стоп Нет разницы, какой ТФ, просто стопы будут или меньше или больше\\nПример ниже иллюстрирует, как сделка не закрылась бы по стопу, так как не дошло до середины уровня\\n","image":"/media/images/theme_5_lesson_17_outline_24.png"},{"text":"Подводим итоги по стратегии :\\n\\n1)Торговля может вестись на 2 фреймах - среднесрчном и краткосрочном, за первый выступает ТФ 1 день и выше, за второй 2-4 часа\\n2)Торговать на 5 минутном ТФ не представляется возможным\\n3)Стратегия меняется в зависимости от ТФ, нельзя об этом забывать\\n4)Торгуется по 2 индикаторам, но 3 является сопровождающим - OBV\\n\\n\\nСтратегия интересная и имеет место быть, поэтому мы ее и прошли :)\\n\\nПредлагаю перейти к следующей, которую уже можно использовать и на коротком сроке\\n","image":""},{"text":"(3.4) Alligator + PIVOT + MACD\\n\\nСвязка простая и добавляет долю пикантности в связи с новым индикатором и его смешным названием - аллигатор\\n\\nЯ не стал уделять внимания ему в отдельной главе, так как это просто 3 ЕМА разных периодов, которые смещены вперед относительно графика","image":"/media/images/theme_5_lesson_17_outline_26.png"},{"text":"У ЕМА большое количество производных, поэтому рассказывать про каждое не стоит\\n\\nУ Аллигатора есть всего 2 сигнала - восходящий или нисходящий, так как он является трендовым\\n\\nПри пробитии вверх всех трех ЕМА у Аллигатора, задается восходящий тренд, если пробиваются все три вниз, то нисходящий\\n\\nПробивается очевидно графиком, поэтому все как у ЕМА и ничего нового Единственно - нужно также закрепление 3 свечей\\nТеперь давайте перейдем к стратегии\\n\\nСмотрим слева направо. Первая зона на MACD у нас не торгуется, так как у нее нет\\nволатильности и график просто в боковике, потом пошел всплеск. Наша цель взять на закреплении и пройти 3-4 уровня, если берем на ТФ 1 день и выше\\n\\nИмеется ввиду прошить 3-4 уровня по PIVOT и выходить из позиции. Идем дальше и видим сделку в шорт - закрепление трех свечей и в путь. прошили 3-4 уровня и вышли. Дальше минусовая сделка,  так как не пошло в нужную  нам сторону и затем шорт сделка с пробитием 3 уровней\\n","image":"/media/images/theme_5_lesson_17_outline_27.png"},{"text":"Аналогичная ситуация происходит с ТФ 2 часа, то есть уже ближе к краткосроку\\n\\nЕсть только 1 различие - количество сделок будет больше, а качество хуже\\n\\nПоэтому учитывайте это и если торгуете так, то надо входить почти во все, дабы результат учитывался с вероятностью","image":"/media/images/theme_5_lesson_17_outline_28.png"},{"text":"Но вот по сравнению с предыдущими связками, эта отрабатывает себя отлично, когда мы\\nвключаем короткий ТФ 5 минут для торговли внутри дня или в течение 1-2 дней\\n\\nКак вы видите, 0 минусовых сделок, но есть одно условие и правило, которое сменяется на такой дистанции - торгует не от уровня к уровню, а по фикс %, которые желаем забирать\\n\\nВидим, что до конца уровня вверх мало, ставим 1%  тейк и забираем прибыль","image":"/media/images/theme_5_lesson_17_outline_29.png"},{"text":"Большего сказать об этой связке не дано, они все +- похожи и результат один, но\\nсейчас мы перейдем к более интересной, которая полностью отличается от предыдущих трех\\n\\nНо все же, подведем итоги :\\n\\n1)Неплохо торгуется на всех ТФ\\n2)На маленьком ТФ 5 минут прибыль забираем по %, а не от уровня к уровню\\n3)Аллигатор трендовый индикатор, основанных на трех ЕМА разных периодов\\n4)Сначала ждем сигнала от MACD, потом только от остальных\\n","image":""}]	novyj-urok-7714	t	\N	\N	5	548	32
29	0	07bf45b5-cb3f-44ce-bffc-75b1a3daa297	Обнаружение локальной коррекции	[{"text":"Что такое кризис знают все, но как мы можем определить его\\nпришествие\\n\\nДа, для этого надо обладать не малыми знаниями экономики, но есть упрощенный вариант для тех, кого волнуют кризисы на рынке, а не в целом\\n\\nОни отличаются, хоть и тесно связаны и по сути - кризис на фондовом рынке лишь вытекающее из основного, но разберем примеры\\n\\nЕсли кризис в глобальной экономике подразумевается, как что-то переломное, то на фондовом рынке он может быть запросто вызван обычным сезоном плохих отчетностей и мы получим сильное снижение индекса, которое никак не влияет на мировую экономику ( почти никак, по крайней мере глобально ), но сильно влияет на настроение инвесторов в моменте\\n\\nБыло бы неплохо распознавать именно подобные кризисы, чтобы понимать, когда может быть лучшая точка для входа или выхода\\n\\nМы разберем несколько инструментов, которые нам могут помочь в этом, а также пройдемся именно по анализу индекса, чтобы прикидывать, куда он может пойти. Для чего нам это? От него зависит движение 95% активов на фондовом рынке, которые мы держим у себя в портфелях\\nДовольна жена - доволен и муж. Растет рынок - растет и ваш портфель и наоборот\\n\\nНачнем с двух важных индексов, которые являются отражением результата торговли, но не предвестниками беды\\n\\nFear and Greed - индекс Страха и Жадности\\n\\nДанный индекс отражает поведенческое направление инвесторов, которое в данный момент преобладает на рынке\\n\\nКогда индекс находится в зоне жадности, это означает, что люди ощущаюсь эйфорию и безнаказанность за свою слепоту, скупают все подряд и не видят никакой угрозы\\n\\nКак правило, если индекс выше 70 ( измеряется от 0 до 100 ), то ситуация не сулит ничего хорошего и входить в позиции не стоит, так как вероятно они очень высоко, а люди и так перенасыщены этим\\n\\n\\n\\n\\n\\n\\nКогда рынок находится ниже 30, то это означает, что рынок 99% падал и многие покинули свои позиции и не спешат их набирать, так как боятся, что прольют еще ниже\\n\\nХочу вам сказать, что, если вы думаете, что при индексе выше 30 обязательно будет откуп или при индексе выше 70 будет падение, это не так\\n\\nОн лишь показывает вам настроение инвесторов, как один из принципов поведенческого анализа, который вы можете учитывать в понимании общего настроения рынка и куда он может двинуться в ближайшее время\\n\\nСмотреть данный индекс вы можете по ссылке - https://money.cnn.com/data/fear-and-greed/\\nВыглядит он следующим образом, пример ниже","image":"/media/images/theme_19_lesson_29_outline_0.png"},{"text":"В самом низу этого сайта вы можете посмотреть реальную статистику индекса за последние несколько лет. Как вы можете увидеть, после любого взлета - идет падение, особенно, если взлет был резким и быстрым, как сейчас, допустим\\n","image":"/media/images/theme_19_lesson_29_outline_1.png"},{"text":"Но, вопреки общему мнению, что сейчас индекс находится на значении в 82 и обязательно рынок должен упасть, я скажу следующее - он может упасть, а может и не упасть сейчас. Понимаете?\\n\\nОн не обязан падать прямо сейчас, так как он мог упасть и на 75 и на 78 и на 80, но уже 82. Он может упасть до 75 и потом на 90. У него нет обязанности падать сразу\\n\\nРаскрою секрет, как это обычно происходит\\n\\nИндекс забирается высоко-высоко и держится там какое-то время ( условно 1-2 месяца\\n), так как рынок ждет разгрузки и какой-то страшной новости. Когда эта новость приходит, он за неделю улетает на значение в 40-45, разгружая рынок\\n\\nДля всего нужна причина. Рынок всегда ее найдет, но не обязательно сразу\\n\\n\\nНо есть еще и второй индекс, который поможет вам понимать положение вещей\\n\\nИндекс волатильности VIX\\n\\nДанный индекс просто гуглится и представляет собой обычный график Чем выше этот индекс - тем выше волатильность у SPX 500 в данный момент\\nКак правило на росте индекса - VIX низкий, а на падении высокий\\n\\nПоэтому на WallStreet есть \\"поговорка\\" - если VIX высоко, это время для покупок, если VIX низко, то лучше продавать ( условный человеческий перевод )\\n\\nПеред вами VIX за пол года и как вы видите, сейчас он находится очень низко, почему? Потому что рынок растущий. Посмотрите на VIX в сентябре, когда мы летели вниз, что было? Правильно, он взлетел в небеса. Его стандартное значение 14-17, его высокое значение от 22-25 до бесконечности ( шутка, обычно не больше 60-70 даже в самые ужасные моменты )","image":"/media/images/theme_19_lesson_29_outline_2.png"},{"text":"Таким образом, у нас в голове проходит корреляция между индексами Fear and Greed и VIX\\nКоторая по сути представляет из себя достаточно простую математическую логику Если рынок перекуплен - VIX низко, а Fear and Greed высоко\\nЕсли рынок перепродан - VIX высоко, а Fear and Greed низко\\n\\nПерекуплен = не стоит покупать, стоит продавать Перепродан = стоит покупать, не стоит продавать\\n\\nПравила достаточно просты. Но разве этого не достаточно, чтобы предсказать падение индекса SPX 500?\\n\\nСо стороны подхода любителя, может быть и нормально, но мы же с вами куда лучше, верно? Стремимся к звездам и никак не ниже\\n\\nПо данным инструментам мы можем определить, что сейчас думают инвесторы на счет сложившийся ситуации, но нам ведь нужно понять, а когда все случится?\\n\\nРаз мы поняли, что все на пике своих возможностей и очень скоро случится падение или рост, падение в нашем случае, так как сейчас все высоко, то надо определять, какое событие послужит этому\\n\\nЧтобы это определить, нам надо вообще знать, какие события являются важными и на что они влияют\\n\\nПомогу вам в этом\\n\\nРазные события по разному влияют на рынок, что логично и понятно даже ребенку Какие-то из них являются краткосрочными, какие-то долгосрочными и так далее\\nОсновными короткими событиями для нас служат : 1) заявки на пособие по\\nбезработице 2) остатки сырой нефти 3) разрешение на строительство Почему они? Выходят достаточно часто и по наблюдениям влияют на рынок\\nЯ чаще всего обращаюсь к 1 и 3, еще чаще к 1, ко 2 почти нет. Сейчас расскажу почему\\n\\n2 и 3 влияют не на рынок в целом, а больше на свои отрасли, которые уже влияют на рынок. В связи с тем, что данные показатели не являются сильными, они в средней степени влияют на отрасль, а та уже очень слабо влияет на рынок и перетекает в дополнительны фактор, а не первостепенный\\n\\n\\nПолучается, что заявки на пособие по безработице являются сильным фактором?\\n\\nНет, они накапливающий фактор, но не сильный, есть большая разница\\n\\nВыходят каждую неделю и влияют на рынок внутри дня, но, если выйдет статистика 3-4 раза подряд и с динамикой ухудшения, то на 3-4 раз будет достаточно больно и возможно перерастет в длительный негатив и коррекцию\\n\\nПочему пособия важны? По сути они отражают \\"экономический успех\\" США, ведь чем меньше людей подают заявку, тем лучше, так как это служит следствием высокой занятости населения и расширением бизнеса и как следствие этого - рост экономики\\n\\n\\n\\n\\n\\n\\nОчень важным фактором в условиях нашей рыночной реалии являются выступления ФРС, даже Байден отошел на второй план со своими законопроектами, никто не ждет так сильно очевидных речей от него, но вот очевидных от Пауэлла пожалуйста\\n\\nДа, это не является даже правилом, так как в основном ФРС и тот же г-н Пауэлл привносят на рынок позитив, ведь в этом заключается их работа - поддерживать рост экономики любыми средствами\\n\\nНо они тоже могут влиять на краткосрочные коррекции, а особенно сейчас\\n\\n\\nНасколько вам известно, то основными триггерами к коррекции на фондовом рынке ( далее ФР ) служат : сокращение QE и ставка рефинансирования ( ключевая ставка )\\n\\nТо есть, при сокращении первого и увеличении второй мы увидим пролит индексов от 10 до 20% за кротчайшие сроки\\nКогда это произойдет? Очень скоро, но вы сами должны понять почему ФРС уже заявили о начале сокращения QE, которое было придумано для более\\nбыстрого восстановления экономики после кризиса в 2008 году, но используется по\\nсей день\\n\\nСтавку они повышать не хотят и логично почему\\n\\n\\n\\n\\nПредставьте себе повышение ставки через месяц-два-три\\n\\nЭто будет фиаско для американской экономики, которая еще не оправилась от коронавируса, да о чем речь, коронавирус еще даже не собирается уходить, а только развивается, мутирует, распространяется быстрее, чем в 2020 году, портит все вокруг и привносит мало полезного\\n\\nТаким образом, что же им делать? Сокращение QE Бог с ним, но ставка повлияет очень сильно, поэтому ее будут поднимать медленно, насколько это возможно и долго соответственно, чтобы не покалечить слабую экономику\\n\\nДа и делать это будут не раньше середины весны 2022 года\\n\\nФРС дает нам понимание более серьезной коррекции, хоть мы до этого и говорили про относительно краткосрочные\\n\\nНиже также предлагаю рассмотреть технический фактор любого спада","image":"/media/images/theme_19_lesson_29_outline_3.png"},{"text":"Давайте банально рассмотрим уровни, пока что только их Уровни сопротивления естественно, которые я начертил за полтора года\\nВзгляните на них еще раз, там есть 2 уровня и оба служат триггером к продажам, рынок пока что не готов перешагивать сопротивление и вряд ли это сделает в ближайшее время, только на гипер-положительных новостях\\n\\nОбъективно рассуждая, вряд ли они придут к нам со дня на день\\n\\nТаким образом, что мы получаем? Мы получаем постоянные уровни на ближайшее время, где будем иметь отскоки вниз = мини коррекции\\n\\nПочему ими не пользоваться? Не знаю, я пользуюсь\\n\\nУ меня есть еще один секрет, как я лично определяю, а точнее дополняю свой анализ по началу или предвестнику маленькой или большой коррекции\\n\\nСкрин также прикрепил ниже","image":"/media/images/theme_19_lesson_29_outline_4.png"},{"text":"У нас не особо стандартный рынок последнее время, как вы могли это заметить, он живет на стимулах и так далее\\n\\nПоэтому, я заметил некоторую закономерность, что после микро-коррекции рынок обычно проходит 3-4 уровня пивот и затем снова корректируется на 2-3 уровня и так из раза в раз с диапазоном 1.5 месяца в среднем\\n\\nЕсли коррекция была сильнее ( как в марте 2021 и сентябре 2021 ), то до этого он обычно проходит 4-5 уровней и падает на 3-4\\n\\nЭто лишь мои наблюдения, а не утверждение, что так все и происходит\\n\\n\\n\\nЕсли подытожить, то кратковременную коррекцию мы можем определить путем индексов Fear and Greed и VIX, анализом макроэкономических показателей, в особенности занятости населения, заявлениями ФРС о том, что будут увеличения/сокращения ( пока что только их заявлениями ) и графиком\\n\\nВсе это в моменте будет коррелировать между собой и вы это заметите\\n\\nВариантов действий 2 : освобождать средства для усреднения из сильно плюсовых позиций или, если вы краткосрочный инвестор - выход из позиций и заход позже или вставать в шорт по сильно перегретым бумагам\\n","image":""}]	novyj-urok-6382	t	\N	\N	19	470	\N
5	0	e5ab654e-977d-4dba-b700-1d00718645a9	Вводная часть	[{"text":"Вводная часть в фундаментальный анализ\\n\\nВ данной главе мы с вами разберемся, что же такое ФА ( фундаментальный анализ\\n) и для чего он нужен\\n\\nВ первую очередь, ФА - это определение состояния компании, насколько оно здоровое или напротив болезненное. Под словами \\"здоровый\\", \\"болезненный\\" понимается финансовая сторона актива. Пример - у компании \\"А\\" 10.000р капитализация и 10.000р долгов, у компании \\"Б\\" 10.000р капитализация и 1.000р долгов. В плане долгов какая компания имеет здоровое соотношение? Конечно, это \\"Б\\". Таким образом, по состоянию на отношение капитализации к долгами компания \\"Б\\" будет здоровой, а компания \\"А\\" больной\\n\\n\\n\\n\\n\\nТаким образом, практически вся информация по ФА будет заключаться в\\nпонимании состояния компании, как в примере выше. Есть, конечно, исключения, но о них я расскажу попозже\\n\\nВ данной теме мы будем проходить мультипликаторы, рентабельность, читать отчеты компаний, смотреть инсайдерские сделки и многое другое\\n\\nЯ научу вас определять на какой срок, какой показатель нам показывает. Как совмещать с другими типами анализа и многое другое!\\n\\nПрошу вас перейти к первой главе основной части!\\n","image":""}]	novyj-urok-5528	t	\N	\N	3	462	\N
8	2	545f0238-b484-466b-9435-88a108df15c8	Рентабельность	[{"text":"Рентабельность\\n\\nДавайте сначала разберемся, что же такое рентабельность!\\n\\nРентабельность - это показатель экономической эффективности бизнеса, который измеряется различными способами\\n\\nЕсть много вариантом проверки рентабельности, причем сама рентабельность не одна, а разделена на условные : рентабельность инвестиций, рентабельность активов и прочее\\n\\nНаша с вами задача разобраться в этой теме и плавать, как рыба в воде, чтобы понимать, какой реальный результат показывает компания и может показать в ближайшее время\\n","image":""},{"text":"Net Profit Margin\\n\\nИли просто Net Margin - один из показателей рентабельности бизнеса, который расскажет нам - сколько же денег становится прибылью из выручки в % соотношении\\n\\nЕще проще - компания заработала 1.000.000 рублей грязной прибыли = выручки, чистой прибыли из нее 100.000р. Наш показатель будет равен 10%, все просто!\\n\\nНо этот показатель является одним из ключевых и важных, я не просто так с него начал Данный показатель отражает насколько сильно можно \\"переживать за компанию\\"\\n\\nЕсли у компании очень высокая маржинальность ( высокий процент прибыли от\\nвыручки ), то мы можем предположить, что она будет вести себя лучше, чем остальные компании в ее же отрасли с меньшей маржинальностью при падении цен на используемое сырье или же просто свой товар\\n\\nЕсли у компании маржинальность слишком низкая ( опять же мы все сравниваем внутри отрасли ), то надо задуматься, стоит ли инвестировать в такой актив, вероятно их стратегия бизнеса дает сбой или что-то идет не так. А что будет, если упадут цены на сырье? Представьте себе нефтяную компанию с маржинальностью ниже средней по отрасли при падении рынка сырья - ей конец\\n\\nТакже, один из важных факторов этого показателя - его рост. Если вы видите, что у компании за последние 5-10 лет идет стабильный рост повышения маржинальности, то вы можете предположить, что она движется в правильном направлении, по крайней мере касательно процента прибыли от выручки\\n","image":""},{"text":"Pretax Profit Margin\\nЭтот показатель является небольшим дополнением к предыдущему, но я не могу вам о нем не рассказать\\n\\nЕсли прошлый рассказывал нам о том, сколько прибыли остается из выручки, то этот делает то же самое, но не учитывает налоги, что является в моем понимании более правильным при оценке реальной рентабельности компании\\n\\nИспользуя этот показатель, мы исключаем влияние посторонних эффектов на чистый результат. Так делают многие, ибо налогообложение даже внутри одной отрасли зачастую может разниться, что явно мешает определить четкую рентабельность бизнеса\\n","image":""},{"text":"Gross Margin\\nGross Margin - валовая рентабельность, а точнее, выручка компании за вычетом себестоимости уже реализованных товаров\\n\\nДругими словами - это остаток выручки от продаж, за вычетом понесенных затрат на реализацию проданного товара или услуги\\n\\nВы можете подумать - снова какая-то маржа? Но не поняв это, нельзя двигаться дальше. Если вы хотите понимать рынок и компании, то придется один разок разобраться\\n\\nЭтот показатель помогает нам понять, сколько же денег уходит на реализацию товара и чем выше данный показатель ( он показывает, сколько остается, я вам напоминаю ), тем лучше для компании, ведь тем больше денег она может пусть в благое русло на развитие\\n\\n\\nУровни валовой рентабельности могут сильно различаться от одной отрасли к\\nдругой, поэтому мы также проводим сравнение компаний только внутри одного \\"дела\\"\\n\\nСравнивать IT и Нефть мы не будем, это бессмысленно\\n\\nЕсть один большой минус - он не учитывает никаких других расходов, только затраты на себестоимость и использовать его лучше с полной оценкой всей рентабельности, а затем делать выводы\\n\\nВ целом, это очень неплохой показатель, как и все, что присутствуют в этом курсе, плохих я бы просто не дал вам. Но скажу для вашего же понимания - никогда не решайте судьбу компании по одному лишь показателю\\n","image":""},{"text":"ROE, ROA, ROI\\n\\nТри важнейших показателя рентабельности, которые отражают основную суть прибыльности бизнеса в трех разных аспектах\\n\\nНапомню, что даже, если каждый из них выше нормы - это не значит, что компания максимально привлекательна\\n\\nЗабудьте слова \\"сильно привлекательная компания\\", когда начинаете проводить анализ. Такой вывод можно сделать только в конце, но никак не по первым показателям\\n\\nROE\\nROE - рентабельность собственного капитала. Определяет меру прибыльности бизнеса по отношению к собственному капиталу\\n\\nБолее простыми словами - сколько копеек дохода приносит каждый вложенный рубль собственного капитала\\n\\nВеличина ROE помогает понять, насколько высокими могут быть дивиденды\\n\\nСоветую проводить анализ ROE по 1 и 5 летнему периоду. Если идет сохранение положительной тенденции у показателя на дистанции, то можно сделать вывод, что компания имеет правильную динамику развития ( не в целом, а по рентабельности собственного капитала\\n\\nROE не учитывает в себе заемные средства. Собственный капитал должен быть именно\\nчистым. В скором времени вы поймете, зачем я вам это написал","image":"/media/images/theme_3_lesson_8_outline_4_oVBZZPj.png"},{"text":"На примере выше вы видите, как за последние 5 лет тенденция ROE имела положительную динамику первые 3 года, а затем что-то случилось с компанией и она начала терять показатели\\n\\nЕсли бы мы смотрели цифры за последний год, то могли бы даже увидеть положительную тенденцию внутри 365 дней, но открыв 5 летку, мы сразу видим настоящую картину.\\nПоэтому всегда смотрите как за 1 год, так и за 5 лет\\n\\nROA\\n\\nROA - рентабельность собственных активов. Показывает эффективность использования активов для генерации выручки\\n\\nТеперь пришла пора понять - зачем я писал про не учитываемые земные средства у ROE. Потому что у ROA они учитываются и в этом основная разница. То есть идет учет без внимания на финансовый леверидж\\n\\nДумаю, что стоит внести в лексикон еще одно понятие - финансовый леверидж\\n\\nЭто отношение заемного капитала к собственным средствам или иногда называют эффект от использования заемных средств, когда не хватает собственного капитала\\n\\nROA также нужно использовать исключительно по отраслям. Как и у ROE и ROI адекватной оценкой является 10%, но в целом - смотрим по конкретной отрасли, чтобы понимать ситуацию не в целом на рынке, а именно в области той компании, которую мы рассматриваем\\n\\nПри анализе очень рекомендуется проверять на дистанции, как и ROE\\n\\nЕсли мы видим нисходящее движение, то стоит задуматься почему \\"либо-либо\\" : 1) падает выручка 2) растут обязательства\\n\\nЕсть и корреляция между ROA и ROE - если между ними большая разница, а чаще всего ROE выше ROA, то значит, что у компании большое количество заемных средств и надо определить, почему и идет ли конкретная тенденция или какие-то сторонние вмешательства ( долги у авиа компаний в связи с пандемией )\\n\\n\\n\\n\\n\\n\\n\\n\\nПри анализе этого показателя нам надо смотреть за динамикой и естественно желать\\nвидеть большее количество % по ROA, так как это будет означать \\"или-или\\" : 1) высокая выручка 2) малый % заемных средств\\n\\nПока что мы изучили два показателя из трех и как вы замечаете, они имеют между собой интересную корреляцию\\n\\nПри прохождении всего блока по фундаментальному анализу у вас в голове сложится картина, которая должна помочь вам в дальнейшем анализе\\n\\nПока что перейдем к ROI\\n\\nROI\\nROI - коэффициент рентабельности инвестиций. Простыми словами - окупаемость ваших вложений. По сути, таким образом мы определяем выгодной или невыгодной для нас и в целом является компания ( лишь по этой метрике )\\n\\nЕсли еще проще - на каждый вложенный вами рубль в компанию пори ROI 50%, она генерирует\\n1.5 рубля выручки или 50 копеек прибыли\\n\\nФормула расчета проста, как мир - выручка - затраты / затраты * 100 ( считается в процентах )\\n\\nУсловно : компания \\"А\\" имеет выручку 1.000.000 рублей, но чтобы его заработать, она потратила 500.000р, таким образом мы имеем : ROI = 1.000.000 - 500.000/1.000.000 * 100 = 50% ROI\\n\\n\\n\\nROI является очень важной для нас метрикой и слава богу, нам не нужно ничего из\\nвышеперечисленного считать, иначе мы бы сошли с ума\\n\\nЕсли брать во внимание последние 3 показателя, то они являются фундаменталом рентабельности, если так можно выразиться. Это основа-основ, а все остальное - дополнения вытекшие из них\\n\\nДалее мы с вами будем знакомиться с не менее интересными и важными метриками и будем переходить к следующей теме\\n\\nПомните - когда вы читаете всю информацию - пытайтесь запомнить и записывайте отдельные моменты для лучшего усвоения. В конце каждого урока вас ждет тест, а в конце каждой темы ( в нашем случае фундаментал ) вас ждет итоговый тест!\\n","image":""},{"text":"5 years sales, 5 years capital spending, 5 years EPS\\nВ этой главе мы будем рассматривать три метрики\\n\\nПервая - 5 years sales growth - показывает в процентах рост продаж на дистанции в 5 лет\\nЭта метрика нужна нам для четкого понимания динамики продаж в компании, идет ли развитие и если да, то в какую сторону\\n\\nКак правило, если это значение приближается к 10%, то результат является положительным и означает, что компания способная наращивать объем продаж и двигается в этом направлении\\nЕсли значение ниже 10%, условно 0-5%, то компания не особо стремится что-то развивать в себе и если нет никаких факторов, которые ей \\"запрещают\\" или сильно мешают, то компанию не стоит покупать с перспективой\\n\\n\\nЕсли значение ниже 0% - то опять же, вывод такой - компания не имеет\\nвозможности или желания наращивать объем продаж. Надо понять - если нет возможности, то, что ей мешает и временно ли это. Если проблема на их стороне и она фундаментально в компании, то проведите оценку данной проблемы и решите, а будет ли она развиваться после решения этой задачи? Развивалась ли она за 5 лет до этой пятилетки?\\n\\nДанная метрика будет идти в комплоте с со следующими, так как они тесно между собой переплетаются\\n\\nВ целом, для понимания - весь фундаментальный анализ между собой переплетается. Одно вытекает из другого и когда вы это поймете - вам станет намного проще\\n\\n\\n\\nВторая - 5 years capital sending - показывает в процентах рост количества капитальных затрат\\n\\nДанная метрика поможет нам понять - стала ли компания больше тратить на : приобретение, обновление и обслуживание физических активов, таких как недвижимость, заводы, здания, технологии или оборудование, а также на инвестиции и новые проекты ( часто используется )\\n\\nДостаточно важный показатель, который отражает желание компании развиваться, так как обычно такие затраты производят для увеличения масштабов своей деятельности и увеличения экономической выгоды от операции\\n\\nДругими словами, эта метрика показывает нам, на сколько за 5 лет вырос показатель\\nинвестиций в развитие,  а не просто затраты.  Почему не просто затраты?  Потому что тут и таится вся разница между операционными затратами - в нашем случае компания показывает их не в расходах, а в инвестициях и на своем балансе, а не в отчете о прибылях\\n\\nТаким образом, компании не так часто прибегают к капитальным затратам. Спросите почему? Потому что амортизацию никто не отменял. Но - важно видеть тенденцию по этому показателю, чтобы компания не стояла на месте, а двигалась вперед\\n\\nЕсли ее показатель отрицательный за 5 лет - значит, что она не удосужилась придумать или сделать что-то новое, да банально перейти на новейшее оборудование и прочее, тут много моментов. Что логично - момент отрицательный\\n\\nЕсли показатель положительный за 5 лет, хотя бы на несколько %, то это уже показывает положительную динамику. Он не должен быть 50%, это уже сумасшествие\\n\\nТретий - 5 years EPS growth - рост EPS на дистанции в 5 лет. Насколько вы\\nпомните - EPS это прибыль на акцию, таким образом, если он имеет восходящую тенденцию, то мы получаем вывод о растущей прибыли ИЛИ отсутствии доп.\\nэмиссии\\n\\nВ целом, EPS очень важный показатель, он не может отразить всех нужных нам моментов, но он показывает то, что не видят многие - тенденцию, а это самое главное\\n\\nЕсли компания вдруг за последний год заработала какие-то несусветные деньги и получила положительную прибыль, то стоит узнать - откуда деньги и чем вызван всплеск, потому что показатель EPS growth нас обманет\\n\\nНа деле обманывает компания, но показатель - это ребенок, на котором отражается вся хитрость его родителей\\n\\nЖелательно видеть рост EPS на уровне 10%  за 5 лет  - это будет говорить нам о том, что компания развивается в плане увеличения продаж и вероятно будет продолжать заниматься теми же вещами, не забывая о главном - о развитии\\n\\nЕсли мы видим отрицательный EPS, то варианта 2 : 1) падает прибыль 2) растет эмиссия\\nОба варианта отрицательные. Будь это первое или второе - надо четко понять, почему так происходит и была ли нарушена тенденция предыдущей пятилетки\\n\\nЕсли мы видим EPS в районе 0-2%, то смотрим, почему такой слабый рост и с чем это вызвано\\n\\nНо главная моя рекомендация - проводите сравнение со средними значениями по отрасли, иначе оценка будет необъективной\\n\\n\\n\\nНа этом пришел конец главы \\"рентабельность\\", но зато именно сейчас вы и\\nузнаете, где же смотреть все эти метрики, как их сравнивать с отраслью и прочие\\nмоменты\\n\\nЯ думаю, что самое сложное уже у вас позади, дальше с пониманием тем будет полегче, чем с мультипликаторами и рентабельностью\\n\\nВообще, принято считать, что самое сложное - мультипликаторы, так как их надо понять, чтобы грамотно использовать, надеюсь, что я смог вам все правильно объяснить\\n\\nСейчас переходим к долгожданному!\\n","image":""}]	novyj-urok-7258	t	\N	\N	3	105	24
7	0	cbdf6727-c245-481f-bfd4-105a6a5a9189	Макроэкономические показатели	[{"text":"Макроэкономический индикатор — числовой показатель, применяемый в макроэкономике, служащий для отражения экономического состояния\\n\\nСуществует много различных М.И ( макроэкономических индикаторов ), но мы будем говорить о самых важных, которые позволяют нам оценить состояние экономики в данный момент и ее прогрессию\\n\\nСкажу сразу, в основном работать будем на Investing\\n\\nВВП - внутренний валовый продукт ВНП - валовый национальный продукт\\n\\nДавайте разграничим эти два понятия, чтобы не путаться\\n\\nСделаю это на простом примере - Если США производит товар во Франции, то это ВНП, так как товар Американский, но продается вне страны\\nЕсли Франция производит товар в США, то это ВВП, так как товар Французский, но\\nпроизводится в США\\n\\nТо есть, ВВП включает в себя стоимость всех товаров и услуг произведенных внутри страны, а ВНП включает в себя стоимость всех товаров и услуг произведенных СТРАНОЙ\\n\\nНемного подтянули знания по экономике и вернемся к главному - период отчетности по данным ВВП\\n\\nСтабильным уровнем роста ВВП в год считается 3%+, если рост меньше, то это может негативно повлиять на жизнь американцев\\n\\nВ целом, почему ВВП важно, сейчас я объясню\\n\\nВВП - внутренний валовый продукт, чем он больше, тем сильнее расширяется экономика, так как повышается уровень занятости населения, это в свою очередь приводит к повышению доходов домохозяйств, это уже приводит к большим тратам на товары и услуги самими американцами, это в свою очередь поднимает доходы компаний, а они расширяют свой бизнес, добавляя новые рабочие места\\n\\nДа, это циклично, но не бесконечно, так как черный лебедь приплывал и приплывет еще не раз\\n\\n\\nИменно поэтому рост экономики от года к году в 7-10-13% невозможен на дистанции, так как пойдет процесс гиперинфляции и прочие вытекающие\\n\\nОтсюда следует, что ВВП должен держаться примерно на 3-4%, чтобы быть стабильным и долговечным, а не быстрым и коротким\\n\\nПонимаете важность ВВП?\\n\\nПеред самими результатами мы часто встречаем всплеск волатильности, а также при негативе может сильно просесть по индексам\\n\\nДавайте посмотрим на результаты ВВП и сравним их с теми же периодами, но на пару лет раньше\\n\\nПеред вами данные с Investing. Гиппер ссылка ведет туда, где все это смотрим\\n\\nЕсли заходите отдельно, то с главного сайта переходите на \\"календарь экономических событий\\" и там будут все ближайшие важные экономические показатели","image":"/media/images/theme_4_lesson_7_outline_0.png"},{"text":"Как мы видим, ВВП зашкаливает и с течением времени не уменьшается, а продолжает свой рост\\n\\nПомните, к чему приводит подобное? Рассказывал вам чуть ранее\\n\\nЧрезмерный рост экономики не продолжается долго, поэтому делайте свои выводы\\n\\nТаким образом выглядела статистика по ВВП США до коронавируса\\n\\nВсе вполне неплохо и стабильно, ниже рамок нормы, но раз это никому не мешало и все были довольны - почему нет? Это не приводило к ужасным последствиям, просто экономика росла не с такой скоростью, как должна","image":"/media/images/theme_4_lesson_7_outline_1.png"},{"text":"Можем рассмотреть 2008 год, как\\nпоказательный пример\\n\\nВ период депрессии был очень низкий рост ВВП и даже отрицательны, который доходил до -6.3% в квартал!\\n\\nНо в конечном итоге, даже из такого смогли выбраться, так как экономика продолжает функционировать и не умирает в одночасье\\n\\nЗа ВВП нужно присматривать, но не возлагать огромных надежд, если видите сумасшедшие цифры, то вы знаете, что за ними следует\\n","image":"/media/images/theme_4_lesson_7_outline_2.png"},{"text":"9.2Уровень Безработицы\\n\\nНасколько вы помните, в прошлой главе одним из факторов роста ВВП, а значит и экономики в целом был уровень безработицы, который не должен расти, а наоборот - чем меньше безработных, тем больше в конечном итоге откроется новых мест для работы, все в экономическом круге ВВП :)\\n\\nСтатистика по нему выходит там же на Investing\\n\\nСмотреть мы должны - заявки на пособие по безработице, данный показатель четко отражает ситуацию\\n\\nТак как мы видим, сколько же людей каждую неделю подают заявку, а значит не имеют рабочего места по различным причинам\\n\\nСтатистика, которая выходит лучше ожиданий - толкает рынок вверх и наоборот\\n\\nВот таким образом выглядит данная статистика\\n\\nОна выходит каждую неделю и мы видим ее реальное значение, справа находится ожидание и еще правее - предыдущее значение\\n\\nЗа последние 3 месяца мы наблюдаем позитивную динамику, как вы можете заметить. Количество заявок упало с 385к до 293к и это является прекрасным результатом","image":"/media/images/theme_4_lesson_7_outline_3.png"},{"text":"Давайте сравним с движением рынка за последний месяц\\n\\n2 и 9 сентября выходит ужасная статистика, которая в совокупностью с перегретым рынком дает падение с хаев\\n\\nПосле нахождения дна, мы якобы пошли вверх, до очередной статистики 23 сентября, которая снова отправила рынок вниз, пока ситуация не начала исправляться и мы не увидели положительную динамику","image":"/media/images/theme_4_lesson_7_outline_4.png"},{"text":"Скажу сразу, рынок реагирует не только на \\"заявки на пособие по безработице\\", но и другие факторы, в совокупности показывая такие результаты\\n\\nНо это один из факторов, который мы включаем, так как он является достаточно важным в экономическом благополучии\\n\\nЕсли заявки только растут, то у людей нет работы, если не работы, то меньше денег у компаний и нет расширения бизнеса и т.д и т.п\\n\\nСейчас разберемся, какими же должны быть заявки в нормах экономики, чтобы они не вызывали море негатива или позитива\\n\\nПеред вами падение в 2020 году, когда заявки по безработице были на своем пике и\\nприняли максимальное значение в 6.600.000, когда за несколько месяцев до этого они составляли примерно 210 тысяч\\n\\nПосле кризиса 2008 года статистика только улучшалась. Если в 2015 году нормой было 300к заявок в неделю, то в 2019 уже 200-220к заявок в неделю. Поэтому, чтобы вернуться в нужное русло, нам надо идти уверенно до 200к и затем продолжать динамику","image":"/media/images/theme_4_lesson_7_outline_5.png"},{"text":"Есть еще один фактор в безработице, который называется - уровень безработицы. Он\\nотражает соотношение количества безработных к тем, кто работает\\n\\nУ него есть несколько минусов : 1) получается путем опроса 2) выходит с задержкой на 1-2 недели, так как его выпускают каждую вторую неделю нового месяца\\n\\nНо в целом, данный показатель отражает ситуацию в США и может показать динамику, которая нам важна\\n\\nПредлагаю рассмотреть его с нескольких сторон\\n\\nПеред вами статистика с той же логикой : слева - дата выхода и время выхода, затем\\nактуальные значения, прогноз и предыдущие значения показателя\\n\\nКак вы видите, на растущем рынке и при растущей экономике мы имеем уменьшения\\n% данного показателя, по той причине, что все больше людей поступают на работу при\\nрасширении производств и прочего-прочего","image":"/media/images/theme_4_lesson_7_outline_6.png"},{"text":"То есть, по сути - чем ниже уровень безработицы, тем лучше, как и чем ниже\\nколичество заявок на получения пособия - тем лучше, но все ли так просто?\\n\\nС одной стороны - да, но у медали она не одна :)\\n\\nЕсли рассматривать данный фактор, как вечно падающее, то это невозможно, так как в связи с падением безработицы будут увеличиваться потребительские расходы, которые в свою очередь будут поднимать уровень инфляции, а дальше - все, как по книге\\n\\nКакой самый простой способ уменьшения инфляции? Запустить обратный процесс и поднять ключевую ставку\\n\\nФРС поднимает ставку, компании начинают зарабатывать меньше, идет обратный процесс и безработица увеличивается до нужного уровня, пока ФРС снова не понизят ставку\\n\\nПо сути, это бесконечный двигатель, который приводит к росту\\n\\nТак как процесс падения безработицы куда дольше, чем ее рост. Отсюда мы и имеем циклы в 5-10 лет, чтобы снова прийти к повышению ключевой ставки, в то время, как взлет безработицы занимает максимум год\\n\\nВзгляните на этот график и скажите себе, что вы думаете?","image":"/media/images/theme_4_lesson_7_outline_7.png"},{"text":"Все максимально очевидно, да?)\\n\\nНам дадут еще 1-2 года, чтобы наиграться в трейдеров и инвесторов, потом будет очередное повышение ключевой ставки, что приведет к короткому, но сильному регрессу экономики, но ее понижение на пикировании поможет ее же и удержать от разгрома и начнется очередной цикл роста\\n\\nФРС и всем остальным вряд ли нравится, как сейчас все выглядит, они сами об этом заявляют - мы далеки от восстановившейся экономики, но мы хотим повысить ставку, вот смешные ребята)\\n\\nПредлагаю вам не терять время и перейти к статистике по ключевой ставке и проверим, когда и как они ее поднимают и главное - что происходит дальше\\n\\nНа счет уровня безработицы - показатель выше 6% обычно ФРС повышает ставку. При выходе статистики, рынок редко двигается, только если она запредельно высокая или низкая. Она имеет слишком большую задержку для трейдинга, поэтому используйте ее только для определения глобального тренда и того, что может произойти в будущем и к чему мы идем\\n\\n9.3Ключевая Ставка\\n\\nЧто же такое эта ключевая ставка? Для тех, кто не знает - это ставка по которой ЦБ выдает деньги взаймы частным ( и не только ) банкам, а банки от этого строят политику кредитов и вкладов\\n\\nЧем выше ключевая ставка, тем дороже обходится кредит у банков от ЦБ и тем выше процент по кредиту у самих банков и ниже по вкладу\\n\\nПроводим корреляцию, чтобы все поняли\\n\\nПри повышении ключевой ставки от ФРС, частные банки берут дорогие кредиты и соответственно дорогими их и делают у себя, а вклады принимают под более низкий процент. Таким образом, компании берут кредиты у банков под более высокий процент и вынуждены отдавать больше, что вызывает меньшие доходы и далее по накатанной)\\n\\nВсе просто, главное вникнуть в суть этой \\"пищевой\\" цепочки\\n\\nТак, возвращаемся к экономике\\n\\nПри экономическом буме ( в плохую сторону ), как было с коронавирусом, чтобы спасти страну и бизнес, ФРС понижает ставку, делая существование компаний настолько приятным, отчего они растут, как на дрожжах, отсюда мы и видим дикий всплеск роста экономики, которая по сути и состоит из частных компаний, их продуктов и услуг\\n\\nСейчас находится на уровне 0.25% - стандартный уровень, который был и при кризисе 2008 года, но там он продолжался около 7 лет, так как не было такого сумасшедшего роста экономики\\n\\nТаким образом, повышение ставки происходит тогда, когда экономика насытилась мизерными кредитными процентами и начинается сильная инфляция, о которой мы тоже поговорим\\n\\nПомните, что все факторы в экономике связаны и надо лишь понять их, чтобы\\n\\nПеред вами статистика ключевой ставки за последние полтора года, как вы видите, все свое время она находится на уровне 0.25%\\n\\nВ подтверждение своих слов, на следующей странице я приведу пример инфляции за тот же период","image":"/media/images/theme_4_lesson_7_outline_8.png"},{"text":"Результат на лицо. Но кто-то из вас\\nспросит, почему рост инфляции не начался сразу же после подъема ключевой ставки?\\n\\nОтвет прост :  1)  рынку нужно было время, чтобы прийти в себя после сильного обвала 2) дополнительная эмиссия новых денежных средств в страну путем печатания, все ведь помнят пакеты Байдена? Один из которых, кстати, будет принят этой осенью\\n\\nПо ощущениям, им без разницы на инфляцию. Но это такой процесс, которому тоже без разницы на всех и лучше в такие игры не играть\\n","image":"/media/images/theme_4_lesson_7_outline_9.png"},{"text":"В целом, что такое инфляция? Когда мы говорим это слово, то вносим разный смысл\\n\\nЕсли цена на хлеб поднялась на 50%, то мы скажем - инфляция 50%. Будто это от хлеба зависит\\n\\nИнфляция - рост цен на товары и услуги внутри страны, зачастую это происходит из- за дополнительных эмиссий валюты ( ее увеличения )\\n\\nРост цен идет не только за счет одного хлеба, но и каждого товара и услуги, ведь многие из них не поднялись в цене, а некоторые и вовсе упали. Поэтому и высчитывается между всеми\\n\\nЭтот процесс очень важен для фондового рынка, так как он является определяющим фактором экономики. Страна, где инфляция на высоком уровне каждый год - вероятнее будет жить на порядок хуже, чем страна с его низким уровнем. Так как идет прямое влияние на всех проживающих внутри страны людей\\n\\nЕсли говорить конкретнее и направлять это в сторону экономической машины, то\\nинфляция является одним из факторов, который не дает ФРС держать низкую ставку и разгонять экономику страны и мира до сумасшествия\\n\\nПочему?\\n\\nСитуация, когда понижена ключевая ставка, компании развиваются, экономика растет - не продолжается вечно, так как из-за сверх-способности обычных потребителей покупать товары и услуги, начинает развиваться та самая инфляция. У людей слишком много денег на личные траты, поэтому такой эффект\\n\\nТеперь представьте, что Байден раздал по 2.000$ на человека. Уму не постижимо, правда?) Но и такое присутствовало, что только подлило масла в огонь и дало очередной толчок инфляции\\n\\nКогда она доходит до рекордных уровней, а безработица падает до них же - поднимают ставку, которая заставляет экономику замедлиться и инфляцию тоже\\n\\nмежду ключевой ставкой и инфляцией прямая корреляция, но есть одно НО - надо\\nсмотреть по остальным факторам макроэкономики, так как бывают случаи, что инфляция растет вместе с ключевой ставкой и наоборот\\n\\nТакие случае случаются, когда ключевая ставка поднимается на незначительное количество %, допустим всего лишь на 20% от своего нынешнего значения\\n\\nДопустим, если сейчас ставка 0.25% и ФРС поднимут ее на 0.3% - это не замедлит инфляцию моментально, да и вряд ли замедлит в целом, разве, что на самую малость\\n\\nВ следующих слайдах я приведу подобные примеры, но также и приведу примеры сильного подъема ключевой ставки, какой будет в скором времени у нас и фактическую реакцию инфляции на данное мероприятие\\n\\nТакже,  случается  такое,  что сильный рост инфляции вызван не только ключевой ставкой, а неким ажиотажем или другими факторами, поэтому в следствие поднятия ставки, это лишь замедлит рост, не даст улететь намного выше, но не уронит инфляцию","image":"/media/images/theme_4_lesson_7_outline_10.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_11_XB0txLc.png"},{"text":"Как вы видите, инфляция не\\nпрекратила свой рост, но и не особо прогрессировала. 1% за год на мега-растущем рынке это очень неплохой результат. Как вы\\nможете заметить, мы прибавили 4% за 2021 год, а он еще даже не закончился)\\n\\nЭто один из примеров, когда инфляция не может падать, разве что при радикальных мерах. Но повышение ключевой ставки не дает ей расти темпами, что очень важно\\n\\nИ прошу заметить, поднимали ключевую ставку \\"по-детски\\"","image":""},{"text":"На примерах ниже вы видите, как сильно на графике слева начали сокращать ключевую\\nставку, так как понимали, что грозит что-то невероятное, ипотечный кризис все-таки скоро начнется :)\\n\\nНа графике справа повышающаяся инфляция, которая стучится в дверь и ее нужно останавливать. Но из двух зол ФРС выбрали меньшее по их мнению, инфляция пусть растет, но может сможем вытащить компании или не дать разбиться путем понижения ставки. Они сократили ее за 2 года 5.25% до 0.25%, можете себе представить?","image":"/media/images/theme_4_lesson_7_outline_13.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_14_cUBl8AU.png"},{"text":"Таким образом, что вы узнали из пройденных глав по макроэкономике :\\n\\n1)ФРС циклична, ключевая ставка регулирует большое количество моментов\\n2)вечного роста быть не может, инфляция убьет страну\\n3)повышение ключевой ставки в нормальных условиях вызывает понижение или замедление инфляции, если ее не разгоняют денежными вливаниями каждую секунду.\\nТогда меры должны быть радикальными\\n4)понижение ключевой ставки приведет к росту экономики после сильного спада и это практически единственное оружие ФРС против дальнейшего падения. Так как это дает\\nразвитие компаний, экономики, рабочих мест и т.д\\n5)понижение заявок на пособие по безработице не всегда дает положительный результат. Если безработица находится в слишком сладких условиях, помните про\\nинфляцию, которая вероятнее всего уже очень высоко\\n6)при корреляции не забывайте использовать инфляцию, безработицу и ключевую ставку, они сильно коррелируют между друг другом\\n\\n9.4число выданных разрешений на строительство\\n\\nНа первый взгляд вам покажется - зачем эта информация тут? Разве это как-то влияет на экономику?\\n\\nОтвет - вспоминаем 2008 год и забываем в страхе и ужасе\\n\\nНиже вы можете увидеть падение числа выданных разрешений и вспоминайте рынок","image":"/media/images/theme_4_lesson_7_outline_15.png"},{"text":"Значимость этого показателя не только в том, что он влияет на силу доллара, но и в\\nтом, что это прямой пример, как один показатель может принести миллионы рублей/ долларов или миллиарды, смотря у кого какой объем инвестиций\\n\\nНедвижимость - очень серьезная тема в экономике и без нее никуда, но нам она важна для двух факторов, которые описаны выше\\n\\nНа следующих страницах мы разберем два примера\\n\\n1)отношение доллара на повышение числа заявок\\n2)отношение строительных компаний Проведем корреляцию и сделаем выводы\\nЭто будет вам примером, как можно анализировать отрасль по макроэкономическому\\nпоказателю, хотя в данном случае он является и микроэкономическим, но это неважно\\n\\nТаким образом выглядит график доллар/рубль, где начальной точкой я взял 2005 год, что не\\nсовсем верно, но я таким образом показываю вам реальное поведение доллара на мировой арене\\n\\n\\n\\nПочему не совсем верно? Я не нашел статистики по заявкам на строительство в эти года, поэтому\\nдавайте исходить из фактов\\n\\n\\n\\nС 2007 года они начали сильно сокращаться, очевидно с чем это связано. с 2007 года доллар\\nподешевел по отношению к рублю на 13%, достаточно? Более чем!\\n","image":"/media/images/theme_4_lesson_7_outline_16.png"},{"text":"Но что же происходит следом?\\n\\nПосле сильного спада - начинается рост разрешений на строительство, это вызывает что?\\nПравильно, рост доллара на мировой арене и его укрепление\\n\\nс 2010 по 2013 разрешения выросли на 100% с полумиллиона до миллиона, что было с долларом? Правильно - рост. Сильный? Нет, но это рост, а не падение и даже не стагнация!","image":"/media/images/theme_4_lesson_7_outline_17.png"},{"text":"Смотрим дальше. Что было с долларом на таком взлете разрешений на строительство?\\nКак вы думаете? Выросли на 34% за 10 месяцев с 2014 на 2015 года!\\n\\nДоллар прибавил 55% и улетел вверх. Вы скажете - это вовсе не из-за строительства. Я вам отвечу - конечно, нет! Но оно подстегивало его рост, это один из факторов роста и укрепления доллара, так как строительство является важной частью экономики США","image":"/media/images/theme_4_lesson_7_outline_18.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_19.png"},{"text":"Но, что же самое интересное в этом показателе? И почему он вдруг становится\\nмикроэкономическим?\\n\\nОн показывает четкий ориентир на строительную отрасль. Без приукрас, так, как есть!\\n\\nЕсли мы видим динамику роста разрешений на строительство, то почему отрасль не должна расти? Может должна?\\n\\nКаждые 20 лет в США численность населения растет примерно на 50.000 человек ( это средний и грубый показатель )\\n\\nПоказатель рождаемости увеличивается в долгосрочной перспективе, таким образом, домов то нужно больше? Строительство будет идти вечно? Вероятно, да!\\n\\nДавайте посмотрим на корреляцию разрешений на строительство и график компании Lennar ( одна из крупнейших по строительству в США )\\n","image":""},{"text":"С 2011 года разрешения на строительство только растут уже на протяжении 10 лет!\\nДинамика явно положительная и сейчас мы проверим корреляцию между компанией и выданными разрешениями\\n\\nКогда показатель вырос на 200%, компания прибавила почти 800%!\\n\\nМожете себе представить? Давайте проверим соотношение. Получается, что на каждые 100% роста показателя приходится 400%\\n","image":"/media/images/theme_4_lesson_7_outline_21.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_22.png"},{"text":"Данные показателя с апреля по сентябрь 2020 года.\\nРост на условные 50%","image":"/media/images/theme_4_lesson_7_outline_23.png"},{"text":"Такого бешеного роста строительная компания не показала, но 100% за 6 месяцев явно неплохой результат, верно? То есть краткосрочное соотношение где-то 1к2, долгосрочное 1к3-4\\n","image":"/media/images/theme_4_lesson_7_outline_24.png"},{"text":"Таким образом, делаем вывод, что число разрешений на строительство\\nвлияет не только на поведение доллара и его силу, но и на микроэкономику, которой можно пользоваться и зарабатывать деньги\\n\\nВероятнее всего, я создам бота по микро и макро экономике, который будет на основании прошлого и выхода новых данных предполагать будущее, поживем увидим, тут можно много интересного придумать!\\n\\nВот мы и завершаем фундаментальную часть нашего обучения\\n\\nСейчас вам предстоит пройти итоговый тест по всем урокам, которые были, надеюсь, что вы справитесь!\\n\\nУспешность его прохождения пойдет вам в статистику, которая видна исключительно в личном кабинете, не освещается на публику и прочее, чтобы вы могли подтянуть темы, которые хуже усвоили\\n\\nЯ надеюсь, что смог вам дать те знания, которые вы легко усвоили, ведь цель была именно в этом - помочь в усвоении. Никакой лишней информации, только практическая\\n\\nВсех жду в следующей теме по Техническому анализу!","image":""}]	novyj-urok-7834	t	\N	\N	4	160	29
21	0	b04b0140-dff0-4f45-b78b-a95022558a99	Волны Эллиота и Вульфа	[{"text":"Внутри волнового анализа мы будем разбирать с вами только эти два типа волн и сделаем вывод, какой вариант лучше, каким пользоваться, а каким не стоит\\n\\nВолны будут еще, но не на графике, а экономические, которые будут находиться в теме под названием \\"начало кризиса или как его идентифицировать\\"\\n\\nСейчас к теме - что же такое волны в целом?\\n\\nЭто закономерность в графике, которая попросту объединена линиями и это называют волнами:)\\n\\nНачнем с первого варианта - волны Эллиота ( спойлер - по моему мнению они устарели )\\n\\nВолны Эллиота бывают двух типов :\\n\\nДвижущие и Коррекционные\\n\\nДвижущие это : 1,3,5,B Коррекционные это : 2,4,A,C\\n\\nСуть заключается в том, что есть восходящий тренд и нисходящий тренд. Тренд будет длиться до той поры, пока не проявятся все 5 волн и дальше он либо : 1) пропадет 2) перейдет в коррекцию волн A-C и потом будет продолжен\\n","image":"/media/images/theme_8_lesson_21_outline_0.png"},{"text":"Абсолютно аналогичная ситуация происходит и в том случае,\\nесли волны перевернуты\\n\\nУ нас имеется длительный нисходящий тренд и по его завершению на 5 волне мы получим либо-либо : 1) конец тренда 2) начало отскока с продолжением тренда вниз","image":"/media/images/theme_8_lesson_21_outline_1.png"},{"text":"Каждый цикл объединяется в больший и так далее, пока не будет последней картинки снизу\\n\\nСначала мы имеем полную картину волн Эллиота, это должно произойти трижды и затем 2 коррекционные\\n\\nА для полного цикла 2 цикл должен также повториться 3 раза и затем два коррекционных\\n","image":"/media/images/theme_8_lesson_21_outline_2.png"},{"text":"У каждой волны есть свое правило, какой она должна быть и как далеко должна идти\\n\\nМногие трейдеры неверно их интерпретируют и придумывают свои, но изначально длина волн считалась по числам Фибоначчи и имела определенное отношение к длинам предыдущих волн\\n\\nПеред вами классическое соотношение волн по теории Эллиота\\n","image":"/media/images/theme_8_lesson_21_outline_3.png"},{"text":"Если первая волна всегда неизвестна и она может быть любого размера, то вторая\\nволна должна быть либо 0.382, либо 0.5 или же 0.618 от длины первой волны\\n\\nТо есть, если вторая волна больше 1 волны, то это априори не волны Эллиота или они формируются неверно или вы неправильно смотрите\\n\\nНиже два примера, где на одном правильная вторая волна, а на втором нет\\n\\nНа левом отношение 2 волны к 1 = 0.5, на втором близко к 1, что в корне неправильно, даже если ее минимум находится выше первой волны","image":"/media/images/theme_8_lesson_21_outline_4.png"},{"text":"Многие трейдеры пишут, что Волны можно не считать по Фибо, но тогда их смысл\\nтеряется полностью, они не идентифицируются по-настоящему и имеют 0 практического смысла\\n\\nИдем дальше. Третья волна чаще всего должна быть самой большой и иметь отношение к 1 волне : 1.618, 0.618 или 2.618\\n\\nОпять же, многие трейдеры говорят, что волна 3 обязана быть самой большой. С чего вдруг? Есть вероятность 0.618 от 1 волны и это никто не отрицал. Они придумывают свои правила построения волн\\n\\nНа следующем слайде разберем, какой может быть 3 волна, а какой нет\\n\\nНа рисунке слева третья волна имеет длину 0.618 от первой волны и является\\nправильной, когда на втором рисунке 0.25 от 1 волны и явно неверной\\n\\nМногие думают, что третья волна просто должна быть огромной, но если она будет 3-4- 5 длин волны 1, то это не волны Эллиота и нарушена концепция их построения\\n\\n","image":"/media/images/theme_8_lesson_21_outline_5.png"},{"text":"Четвертая волна должна быть 0.382 или 0.5 от длины 3 волны\\n\\nТаким образом, на примерах ниже покажу возможное расположение этих волн\\n\\nПравильное построение волны 4 представлено на рисунке слева, так как она является 0.5 от волны 3, в свою очередь на правом рисунке длина волны = 0.3 от длины 3 волны, что является в корне неправильным","image":"/media/images/theme_8_lesson_21_outline_6.png"},{"text":"И наконец 5 волна должна быть равна 0.382 или 0.5 или 0.618 от длины волны 3\\nПо сути, почти как 4 волна, но может быть и чуть больше и доходить до 0.618 Опять же - слева адекватный рисунок и волна 5 = 0.618 от волны 3, а справа она равна\\n5 от волны 3, поэтому и волны не являются правильными","image":"/media/images/theme_8_lesson_21_outline_7.png"},{"text":"Первая волна коррекции A должна быть равна 1, 0.618 или 0.5 от 5 волны\\n\\nТаким образом посмотрим на рисунки ниже и слева будет реальная волна с коэффициентом 1, а справа с коэффициентом 0.1\\n\\nДвижение коррекционных волн напоминает движение первых трех, соотношения тоже очень похожи","image":"/media/images/theme_8_lesson_21_outline_8.png"},{"text":"Волна коррекции B должна быть 0.382 или 0.5 по отношению к A\\n\\nТаким образом, на рисунке слева она имеет значение 0.5, а на рисунке справа 0.2 Осталась последняя волна C","image":"/media/images/theme_8_lesson_21_outline_9.png"},{"text":"Волна C должна иметь отношение к волне А такое как : 1.618, 0.618 или 0.5\\n\\nНа рисунке слева это отношение равно 1.618, на рисунке справа 0.25, таким образом рисунок справа становится полностью неправильным, а рисунок слева, хоть и слабо похож на привычные нам волны Эллиота, является абсолютно верным","image":"/media/images/theme_8_lesson_21_outline_10.png"},{"text":"Таким образом, Волны Эллиота достаточно сложны в их интерпретации и нахождении\\nна графике, так как имеют большое количество цифр и значений по каждой волне\\n\\nНо, они на то и сложные, чтобы ими могли пользоваться только умные люди, которые знают свое дело, такие как мы с вами\\nПо началу будет трудно, но в конечном итоге всегда становится проще Поэтому, предлагаю вам перейти к примерам, чтобы четко понять, что же такое волны\\nЭллиота и с чем их подают\\n\\nУдивительное рядом, только я открыл график Теслы, как сразу же увидел пятую волну\\nЭллиота на недельном ТФ. Прошу заметить, что чем выше ТФ, тем сильнее тренд, так как больше % он принесет\\n\\nПосмотрите внимательно на скрин ниже и на следующих слайдах мы его разберем подробно\\n","image":"/media/images/theme_8_lesson_21_outline_11.png"},{"text":"Начинаем разбирать по волнам :\\n\\n1 волна - произвольная длина\\n2 волна - 0.382, 0.5 или 0.618 от волны 1 Что мы видим у нас? 0.382, значит все верно!\\nКстати, хочу сразу сказать - определяем на глаз, обычно все вполне очевидно. Не нужно сидеть с линейкой и стараться высчитать длину каждой волны до сотых\\n","image":"/media/images/theme_8_lesson_21_outline_12.png"},{"text":"Дальше у нас появляется третья\\nволна, которая должна иметь отношение к первой волне по следующим пропорциям : 1.618, 0.618\\nили 2.618\\n\\nУ нас очевидно 1.618 и опять же третья волна четко вписывается в описание волн Эллиота\\n\\nТаким образом, мы считаем и 4 волну","image":"/media/images/theme_8_lesson_21_outline_13.png"},{"text":"Соответственно 4 волна будет иметь отношение к волне 3 таким образом : 0.382 или\\n0.5\\n\\nМы видим четкие 0.382 и понимаем, что имеем дело с закрытием 4 волны и началом 5, что же делать в таком случае?\\n\\nОбычно по волнам Эллиота входят в начале волны, но мы с вами увидели ее только сейчас, поэтому надо посмотреть, до какого уровня может дойти 5 волна","image":"/media/images/theme_8_lesson_21_outline_14.png"},{"text":"5 волна имеет отношение к волне 3 : 0.382, 0.5 или 0.618\\n\\nТаким образом, у нас есть 3 варианта события, которые я отобразил на графике. Каждое из них подразумевает дальнейшее продолжение роста. Чаще всего волна 5 принимает значение в 0.5 от волны 3, поэтому у нас есть основания полагать, что цена дойдет до уровня от 1.577 до максимума в 2.900\\n","image":"/media/images/theme_8_lesson_21_outline_15.png"},{"text":"Таким образом мы можем прямо сейчас войти в позицию и даже учитывая то, что\\nТесла находится достаточно высоко, по волнам Эллиота мы видим неплохой апсайд и с текущих значений\\n\\nДа, риск куда выше, обычно волны Эллиота используют, обнаруживая их на 3 или 4 волнах, чтобы войти на 3 и забрать большую прибыль, так как она чаще всего является самой большой, либо зайти на 5 и забрать всю волну, ибо интерпретация не бывает четкой, может быть и 0.35 и 0.7 и это будут правильные волны\\n\\nСейчас я предлагаю вам разобрать еще один пример, который будет полностью завершен, но ваша задача будет понять, правильно ли он построен и является ли это Волнами Эллиота в целом\\n\\nЭто график SPCE, после окончания\\nволнового образования мы еще немного откатились вниз, но затем показали очень сильный импульс вверх, что дало нам неимоверный рост на сотни процентов за 1 месяц\\n\\nНо посмотрим на график и волны, верны ли они?\\n\\nНет ли у них никаких ошибок, предлагаю разобраться вместе, чтобы вы случайно не попались на такого же рода ловушку\\n","image":"/media/images/theme_8_lesson_21_outline_16.png"},{"text":"Разбираем первые три волны\\n\\nВспоминаем правила - первая волна произвольная и длится столько, сколько пожелает нужным\\n\\nВторая волна должна иметь длину 0.382, 0.5 или 0.618 от волны 1. В нашем случае 0.618 и все правильно\\n\\nТретья волна должна быть равна 0.618, 1.618 или 2.618 от волны 1, все тоже верно, у нас 1.618 и вполне пока что совпадает\\n","image":"/media/images/theme_8_lesson_21_outline_17.png"},{"text":"Затем мы смотрим на 4 и 5 волны\\n\\n4 волна должна быть 0.382 или 0.5 от длины 3 волны, у нас близко к 0.5, поэтому можем закрыть на это глаза, но что с 5 волной?\\n\\nОна имеет длину 0.382, 0.5 или 0.618 от волны 3, но в нашем случае она намного больше, чем любое из этих значений. Она в целом длиннее, чем волна 3, что в корне меняет ситуацию и подрывает теорию волн Эллиота, рассматривать далее данный пример, как тему разбора смысла нет\\n","image":"/media/images/theme_8_lesson_21_outline_18.png"},{"text":"Все же ради интереса мы рассмотрим\\n\\nПервая коррекционная волна А должна быть равна 1, 0.618 или 0.5 волны 5\\n\\nЕсли закрыть глаза на точные подсчеты, то она близка к 1, но учитывая, что 5 волна нарушает правила, то это бесполезно\\n\\nКоррекционная волна В должна быть равна 0.382 или 0.5 от волны А. Тут все верно, 0.382 подходит. Волна коррекции С должна быть равна 1.618, 0.5 или 0.618 волны А. Тут снова не сходится, она занимает 5/7 от волны А, что равно 0.714 и является большим разбросом\\n","image":"/media/images/theme_8_lesson_21_outline_19.png"},{"text":"Так можно ли считать этот пример верным? Скорее нет, чем да\\n\\nЕсли бы не волна 5, то все было бы совсем иначе\\n\\nВидите синюю линию? Как правило, крайняя точка коррекции волны С находится чуть выше или на том же уровне, что и пик волны 1, у нас он находится значительно ниже, примерно на уровне 0.7-0.8 от волны 1\\n\\nМожно списать это на погрешность, можно не списывать, тут дело лично каждого","image":"/media/images/theme_8_lesson_21_outline_20.png"},{"text":"Но вопрос остается открытым - могли ли мы тут заработать?\\n\\nОтвет - конечно!\\n\\nМы узнали, что волны Эллиота начали сбиваться только на 5 волне. Таким образом, мы могли входить и на третью и на 4 и на 5 волну вполне себе успешно и ничего бы нам не помешало, но торговать дальше мы бы вряд ли стали, так как увидели бы расхождение в правилах и реальном графике\\n\\nТогда главный вопрос - почему же Волны Эллиота слабо работают и какую замену можно им придумать? Они слабо работают, так как часто сбиваются и их очень сложно найти\\n\\nОни неплохие в целом, но очень уж сложно с ними работать, если вы намеренно их ищите\\n\\nЕсли вы торгуете и они вам попались на большом ТФ - это удача, которую можно хватать за хвост, но в противном случае есть более удобный вариант\\n\\nВолны Вульфа\\n\\nБилл Вульф - имя и фамилия человека, который создал этот инструмент графического анализа, которые подразумевает собой создание некоего паттерна посредством волн\\n\\nУ этих волн также есть свои правила и есть свои направления, они также могут идти и вверх и вниз, давайте приступим к разбору\\n\\nНо для начала я хочу сказать вам, чем эти волны отличаются от Эллиотовского варианта\\n\\n1)они чаще появляются и на коротких фреймах тоже\\n2)они имеют четкую волну на которой надо входить в позицию\\n3)как по мне - более понятны и просты\\n\\nКак я и сказал выше - бывают два типа волновых паттернов : медвежий и бычий\\n\\nОни отличаются лишь тем, что при бычьем сам паттерн направлен вниз, а при медвежье вверх\\n\\nСейчас мы будем разбирать правила применения и использования графического индикатора\\n","image":"/media/images/theme_8_lesson_21_outline_21.png"},{"text":"Для начала разберем модель бычьего паттерна\\n\\nВолна 1 – основание модели\\nВолна 2 – какая-либо значимая вершина. Выход за максимум волны 1 необязателен Волна 3 – новый минимум. Эта волна всегда должна пробивать минимум волны 1 Волна 4 – всегда выходит за минимум волны 1, но никогда не должна выходить за\\nмаксимум волны 2\\n\\nВолна 5 – новый минимум, выходит за минимум волны 3\\n\\nВолна 6 – начинается после окончания волны 5 и является самой мощной из всех волн в модели Вульфа\\n\\n\\n\\nОсновное правило - идентифицировать волны Вульфа можно только в том случае, когда уже имеются 4 волны, а входить лучше только после 5, так как 6 волна является самой мощной и на ней делаются основные деньги и проценты!\\n\\nЧтобы определить куда пойдет волна 6, а точнее ее максимум, мы соединяем линиями точки волн 1, 3, 5 и 1, 4, получая некоторую расширяющуюся формацию, верхняя точкой которой и будет являться целью 6 волны\\n\\nПредлагаю сейчас на рисунке разобрать, как это должно происходить в теории\\n\\nМы будем подробно разбирать каждый шаг, чтобы вы четко поняли тему и\\nмогли легко воспользоваться данным инструментом на практике Перед вами волна 1 бычьего паттерна\\nЭто просто волна, которая шла сверху под нисходящим трендом и остановилась на каком-то моменте, чтобы образовать волну 2","image":"/media/images/theme_8_lesson_21_outline_22.png"},{"text":"Я делаю сразу на двух вариантах, чтобы вы понимали, где в итоге будет правильная\\nкартинка, а где нет\\n\\nСейчас мы добавили волну 2, она везде выполнена правильно, так как волна 2 - обычная значимая вершина, выход за пределы пика волны 1 необязателен, хоть и возможен, как на рисунке справа\\n\\nСейчас мы добавим волну 3","image":"/media/images/theme_8_lesson_21_outline_23.png"},{"text":"Вот и пошли расхождения, что вы думаете, где правильный вариант?\\n\\nОчевидно, что слева. Почему? Правила гласят, волна 2 может быть как выше, так и ниже максимума волны 1, но волна экстремум волны 3 обязан быть ниже волны 1, а не выше его, как показано на рисунке справа\\n\\nДалее везде будут правильные волны, но посмотрим, к чему приведет ошибка на одной волне рисунка","image":"/media/images/theme_8_lesson_21_outline_24.png"},{"text":"Тут тоже все верно\\n\\nВолна 4 должна быть ниже волны 2 и выше волны 1, что у нас и получилось на обоих рисунках\\n\\nКак вы заметили, тут нет никаких чисел Фибоначчи, без них куда проще, правда ведь?","image":"/media/images/theme_8_lesson_21_outline_25.png"},{"text":"По задумке мы уже могли определить, что перед нами волны Вульфа и войти в шорт\\nпозицию на пятую волну, но для уверенности я вам советую сначала дожидаться окончания 5 волны и затем только брать на 6\\n\\nПочему? Вы можете допустить ошибки, которые рынок не простит вам Волна 5 должна быть ниже волны 1 и 3\\nРисунок справа не удовлетворяет условиям, слева все правильно","image":"/media/images/theme_8_lesson_21_outline_26.png"},{"text":"По сути график не изменился ни на 1, ни на 2 рисунках, но мог бы, если бы это были\\nреальные свечи, вероятнее всего после закрытия волны 3 над волной 1, не было бы никаких волн 4,5,6\\n\\nСейчас мы рассматриваем вариант слева. Мы проводим линии между экстремумами волн 1 и 4, а затем 1,3,5 и получаем следующее","image":"/media/images/theme_8_lesson_21_outline_27.png"},{"text":"Вот таким образом будет выглядеть волна\\nкартина\\n\\nМы проводим от 5 волны линию до верхней границы сопротивления, которую построили через точки волны 1 и 4, тем самым получая волну номер 6, которая и является ключевой\\n\\nСразу после 5 волны мы входим в лонг позицию и получаем самый большой рост, который показывает этот паттерн\\n\\nНо есть один небольшой момент, который я бы хотел обговорить на берегу перед тем, как мы заберемся по колено в море\\n","image":"/media/images/theme_8_lesson_21_outline_28.png"},{"text":"Иногда 5 волна заходит чуть ниже, чем\\nдолжна и нижняя линяя проводится между точками 1 и 3, без учета 5 волны\\n\\nВ таком случае, мы входим в позицию только тогда, когда начинается разворот и начало 6 волны, только тогда, когда график войдет в этот треугольник, в эту расширяющуюся формацию\\n\\nМы не берем, когда волна 5 еще идет вниз, мы защищаем себя от лишних рисков\\n\\nСейчас предлагаю вам перейти к разбору волн Вульфа на нисходящий тренд или медвежий\\n","image":"/media/images/theme_8_lesson_21_outline_29.png"},{"text":"Разбирать мы будем по такой же системе - я буду чертить 2 рисунка и в 1 из них будет\\nдопущена фундаментальная ошибка, мы посмотрим и правильный и неправильный\\n\\nПервая линия ( волна ) идет снизу-вверх и не имеет никаких правил - где закончится, там и закончится\\n\\nЗатем строится вторая волна, сейчас расскажу про правила","image":"/media/images/theme_8_lesson_21_outline_30.png"},{"text":"Вторая волна - имеет значимый экстремум, но не обязана быть выше или ниже\\nминимума волны 1, просто как правило это так. Вторая волна не имеет никакой практической информации, поэтому она просто должна быть и все, такие правила\\n\\nВсе основные правила привносят волны с 3 по 5, к которым мы сейчас и переходим","image":"/media/images/theme_8_lesson_21_outline_31.png"},{"text":"Волна номер 3 всегда является максимумом и перебивает волну номер 1\\n\\nЕсли волна номер 3 ниже, чем волна номер 1, то это не Волны Вульфа или они себя сами не подтвердили\\n\\nДва примера, где слева - все грамотно, а справа нет, там максимум волны 3 ниже 1 волны","image":"/media/images/theme_8_lesson_21_outline_32.png"},{"text":"Волна 4 имеет такое правило, что на нисходящей фигуре всегда выходит за максимум\\nволны 1 и никогда не выходит за минимум волны 2 Проще говоря, она должна быть просто между ними\\nНиже примеры, где слева все правильно, а справа волна 4 поставила новый минимум\\nпод волной 2 и нарушила правила\\n\\nТакже, добавил пример и обвел волну 1 и 2, чтобы вы понимали, между чем и чем она должна быть","image":"/media/images/theme_8_lesson_21_outline_33.png"},{"text":"Дальше строится пятая волна, которая должна быть выше максимумов 1 и 3 волны\\n\\nЕсли данные условия удовлетворяют, то мы чертим линии и думаем, когда нам войти в позицию, так как профи заходят на 5 и 6 волны, а новичкам советуется только на 6, так как она самая очевидная\\n\\nЗдесь мы будем вставать в шорт, давайте расчертим уровни и посмотрим","image":"/media/images/theme_8_lesson_21_outline_34.png"},{"text":"Рисунок справа неправильный, слева правильный, так как справа была ошибка во\\nмногих волнах\\n\\nРазберем верный рисунок - волна 5 вышла за рамки, мы ждем, когда она вернется и пробьет красную линию, которую мы провели через волны 1 и 3 ( этот момент я выделил синим цветом ), а затем берем в шорт и по оранжевой линии зарабатываем","image":"/media/images/theme_8_lesson_21_outline_35.png"},{"text":"На самом деле, все предельно просто, просто нужно вникнуть, чтобы не забывать какая\\nволна под какой или над какой идет\\n\\nЯ предлагаю вам закрепить этот момент на практике, чтобы наверняка все запомнить и понять\\n\\nСейчас разберем несколько примеров : одну восходящую фигуру и одну нисходящую и после этого закроем тему полностью\\n\\nСейчас разберем результат восходящей\\nфигуры Вульфа, чтобы понять, какие подводные камни существуют и с чем лучше применять этот индикатор графического анализа\\n\\nСлева от вас график, где я начертил 3 волны на дневном ТФ\\n\\nПроверяем :\\n\\n1 волна произвольная, вторая волна также произвольная, выход на 1 вершину не обязателен\\n3 волна ниже минимума 1 волны, пока что все верно\\n","image":"/media/images/theme_8_lesson_21_outline_36.png"},{"text":"Появились волны 4 и 5, по правилам должно быть следующее :\\n\\nВолна 4 ниже экстремума волны 2, а волна 5 ниже экстремума волны 3 и 1\\n\\nВсе правильно?\\n\\nДа, все верно, сейчас мы должны начертить линии и понять, куда пойдет график дальше, а точнее до какого уровня\\n","image":"/media/images/theme_8_lesson_21_outline_37.png"},{"text":"Волну 6 я выделил зеленым цветом,\\nчтобы всем было понятно\\n\\nКак вы видите, она не дошла до своего ценового уровня, почему так?\\n\\nПотому что это реальная торговля и появляются свои правила, которые не всегда допускают ход волны четко до своей цели\\n\\nКак же тогда работать и что именно помешало волне, разбираемся!\\n","image":"/media/images/theme_8_lesson_21_outline_38.png"},{"text":"Вот основная причина, почему график не смог\\nпойти дальше\\n\\nМы потерпели поражение перед важнейшим уровнем на недельном ТФ ( очень большой ТФ ) и не смогли пробить его\\n\\nО чем нам это говорит? Когда вы входите по волнам Вульфа, обязательно смотрите на ценовые уровни. Волны это не панацея, которая спасет вас от всего, такие уровни не пробиваются за раз\\n\\nЧтобы заработать, просто выходите из 6 волны чуть раньше, дабы не вводить себя в заблуждение\\n","image":"/media/images/theme_8_lesson_21_outline_39.png"},{"text":"\\nЗа 3 недели прибыль по неполной 6 волне составила 22% прибыли\\n\\nХороший результат? Отличный!\\n\\nДавайте рассмотрим еще один важный пример, который поможет вам понимать Волны Вульфа лучше\\n\\nЯ вообще считаю, что чем больше примеров - тем проще будет на практике Поэтому советую вам тщательно смотреть каждый из них\\n\\nПеред нами такой отрезок графика, видите ли вы на нем волны Вульфа?\\n\\nВ самой левой части мы видим окончание 6 волны предыдущего примера, давайте попробуем найти что-то еще\\n","image":"/media/images/theme_8_lesson_21_outline_40.png"},{"text":"Может быть тут может крыться волна Вульфа? 3 ниже 1, 4 ниже 2, пока что все верно, посмотрим далее\\n\\nМожет 5 волна удовлетворит наши требования и тоже покажет подтверждение?\\n\\n","image":"/media/images/theme_8_lesson_21_outline_41.png"},{"text":"Увы и ах, но 5 волна оказалась на уровне с 1 и выше 3, а должна быть ниже обеих\\n\\nТаким образом, мы не можем дальше рассматривать этот пример и если бы это был реальный график и мы увидели, что волна 5 не дошла до своего значения, то брать не станем\\n\\nОна может не дойти капельку до линии, но условия обязана выполнить - ниже волн 1 и 3","image":"/media/images/theme_8_lesson_21_outline_42.png"},{"text":"от же она - настоящая и единственно верная волна, которая выполнила все условия,\\nпринесла 16% за полторы недели и оставила своих художников довольными и богатыми Волна 1 ниже волны 3, а волна 3 ниже волны 5 - верно!\\nВолна 2 произвольная, волна 4 ниже волны 2 и выше волны 1 - верно!\\n\\nВолна 5 вышла немного за рамки, подождали возврата и взяли в лонг - дошло четко до уровней, так как ей ничего не мешало!\\n","image":"/media/images/theme_8_lesson_21_outline_43.png"},{"text":"Подведем небольшой итог по восходящей формации :\\n\\n1)волны должны четко выполнять свои правила\\n2)5 волна может немного заступать, берем на возвращении в формацию\\n3)6 волна не обязана доходить до конца, если есть серьезные уровни сопротивления, которые мы можем посмотреть : 1) коррекция по Фибо 2) Уровни Пивот\\n4)никогда не берите раньше времени, просто в расчете на то, что вы правы Такие вот правила на восходящей фигуры, перейдем к примерам нисходящей\\n\\nВспоминаем правила нисходящей формации - волна 3 выше 1, волна 5 выше 1 и 3\\nВолна 2 произвольная, но волна 4 выше 2 и ниже 1 Проверяем на скрине ниже, что у нас\\nВолна 1 и 2 произвольные, волна 3 выше 1 - делаем вывод, что пока что на данный\\nмомент все верно и мы двигаемся дальше","image":"/media/images/theme_8_lesson_21_outline_44.png"},{"text":"Первые три волны мы проверили, осталось проверить еще 2 и сделать выводы, до куда\\nможет пойти график дальше\\n\\nВолна 4 оказалась верной, находится ниже 1 и выше 2, таким образом волна 5 должна быть выше всех волн, но главное - 1 и 3, так и случилось. Волна 5 также подходит по нашим требованиям, что прекрасно!\\n\\nДавайте определим, где будет находиться волна 6 и когда нам входить в шорт","image":"/media/images/theme_8_lesson_21_outline_45.png"},{"text":"Вот вам и Волна Вульфа, все выполнено грамотно и закрыты все из 6 волн\\n\\nМы четко вошли в шорт позицию, как только началась 6 волна и пошла вниз, прибыль 17% за 15 дней или 11 торговых дней\\n\\nПредлагаю разобрать последний пример для закрепления и полностью закроем главу волнового анализа\\n","image":"/media/images/theme_8_lesson_21_outline_46.png"},{"text":"Перед вами как раз тот пример, который\\nпозволяет понять и увидеть, что волна 5 и 6 не обязаны всегда касаться своих линий\\n\\nВолна 1,2,3,4 выполняют свои условия, так как волна 3 выше 1, волна 5 выше 1 и 3, волна 2 произвольная, а волна 4 выше волны 2 и ниже волны 1\\n\\nТаким образом, волна 5 выполнила свои условия, но немного не дошла до линии, разве это проблема? Нет! Условия она выполнила и это главное\\n\\nВолна 6 также остановилась на своем важном уровне, который мы могли бы посмотреть на Пивот или Коррекции Фибо","image":"/media/images/theme_8_lesson_21_outline_47.png"},{"text":"Подведем итог по волнам Вульфа :\\n\\n1)встречаются намного чаще Эллиота\\n2)легче идентифицировать и понимать\\n3)заходим на 6 волне, на 5 только с опытом\\n4)5 волна может выйти за пределы линии, которую проводим от волн 1-3, чтобы войти на 6 волну, надо ждать возврата\\n5)можно торговать на любом ТФ, но желательно от 1 часа\\n\\n\\nЯ часто использую эти волны, так как они мне интересны и показывают неплохой результат\\n\\nОбычно, я устанавливаю связку под каждый найденный паттерн, так как без нее мне не понять, дойдет ли 5-6 волна до линии или нет. Как правило это просто уровни пивот или же коррекция по Фибо\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nЕсли в целом подводить итог по двум видам волн, то скажу следующее\\n\\nВы можете использовать любой из видов, но волны Эллиота лучше отрабатывают себя на долгосрочном тренде, чем краткосрочном, учтите это\\nВсе остальные особенности были написаны в итогах каждого вида Сейчас я предлагаю вам перейти к новой теме, от которой зависит 50% успеха в\\nинвестициях - психологии","image":""}]	novyj-urok-8708	t	\N	\N	8	393	34
30	1	340e39ed-1b45-4b1e-bdda-b937eb5a6939	Обнаружение глобальной коррекции и не только	[{"text":"Циклы Китчина, Жюгляра, Кузнеца и Кондратьева\\n\\nЧтобы определять фазу рынка и его средне-долгосрочную перспективу, а также понимать примерное время глобальной коррекции, нам нужно воспользоваться трудами перечисленных выше экономистов\\n\\nИх фамилии были использованы для обозначения собственных циклов, многие из которых были открыты примерно столетие назад\\n\\nСейчас мы будем разбираться в каждом из них отдельно ( они имеют свои сходства, но и кардинальные различия )\\n\\n\\n\\n\\n\\n\\n\\nЦикл Китчина\\n\\nДанный цикл был открыт в 1920 годы и является рабочим до сих пор, что определенно внушает доверие в его логику\\n\\nХотя, если понять логику любого из циклов, вопросов про работоспособность идеи даже не будет возникать, а лишь наоборот - расстроит, что рынок настолько ничтожен перед реальными фундаментальными факторами и ничего с этим не поделать\\n\\nПредлагаю начать разбор с того, что это за цикл и дать ему объяснение\\n\\n\\n\\n\\nОн длится от 1 до 5 лет\\n\\nЛогика заключается во временном лаге между поступлением информации по смене спроса и произошедшим изменением спроса, а также все это усиливается временным диапазоном реакции производства на информацию\\n\\nВ основе всех этих изменений лежат колебания в объемах запасов\\n\\nПока что кажется не совсем понятным, но мы во всем разберемся, не переживайте\\n\\nэкономист предположил, что толчком к возникновению открытых им циклов являются колебания мировых «золотых» запасов\\n\\nНо в условиях нынешней реалии такое объяснение не может быть удовлетворительным, хотя циклы сохранились, поэтому им дали другое объяснение\\n\\nСейчас появление краткосрочных циклов интерпретируют такими моментами:\\n\\nПсихологический – людям, занимающимся управлением хозяйствующим субъектом, необходимо время на осмысление информации относительно происходящих на рынке перемен\\n\\nТехнологический – для внедрения в производство принятых решений также требуется время\\n\\nВот вам простой пример, чтобы вы все поняли наверняка\\n\\nКомпания А занимается производством продукта В, до руководства дошла информация, что на рынке спрос сильно превышает имеющееся предложение, таким образом, что начинает делать руководство? Правильно - увеличивает мощности, дабы производить больше товара и зарабатывать больше денег\\n\\nКажется и что в этом такого? Причем тут цикл и где плохие новости\\n\\nДело в том, что пока компания увеличивает мощности и доходит до назначенного уровня, спрос на продукцию В уже не так велик и на складах остается нереализованный продукт, который в свою очередь : 1) может портиться 2) просто не нужен в связи с пониженным спросом\\n\\nКомпания получает повторно информацию о понижении спроса и понижает мощности, а к моменту их снижения, спрос может появиться снова и это экономическая ловушка\\n\\n\\n\\n\\n\\n\\nВдобавок к этому идут : 1) время на создание плана по увеличению мощностей\\n2) время, пока дойдет новость, что спрос увеличился 3) время, пока нарастят объемы производства 4) проявление эффекта от созданных условий и так далее\\n\\nТо есть образуется временной ЛАГ, который заставляет компанию всегда находиться на несколько шагов позади\\n\\nКогда спрос есть - они еще не знают, а когда узнают, то нужно еще много времени на реализацию увеличения мощностей производства. Когда же это будет реализовано, то спрос уже не будет так велик, все просто\\n\\nИменно так и получаются циклы Китчина, отсюда они и берутся. Среднее время их прохождения 2-4 года\\n\\nНа картинке ниже вы видите в целом распорядок составляющих цикла","image":"/media/images/theme_19_lesson_30_outline_0.png"},{"text":"Все последующие циклы будут иметь различное объяснение, но в основном будут включать предыдущие\\n\\nДопустим, цикл Жюгляра включает в себя Китчина полностью и не жалеет об этом :)\\n\\nПросто все дальнейшие циклы крупнее своих собратьев, поэтому зачастую и включают их в себя\\n\\nС первым циклом и пониманием его мы разобрались, перейдем к следующему\\n\\nСкажу сразу - сначала разбираемся в циклах, потом пытаемся понять, как их использовать\\n\\nЦикл Жюгляра\\n\\nДанный цикл длится от 7 до 11 лет и одной из его составляющих является цикл Китчина\\n\\nОсновной смысл цикла заключается в том, что он идет сразу за Китчиным, а также его дополняет, так как начинает учитывать колебания в объемах инвестиций\\n\\nЕсли цикл Китчина построен на временном лаге, то Жюгляр уже учитывает колебания инвестиционных процессов, ведь вливания в основной капитал не происходят мгновенно, нужно время для установления инвестиционной политики, создания мощностей и т.п.\\n\\nПолучается, что в добавок к временному лагу, который представляет из себя задержку между событием и реакцией на него, добавляется также запаздывание, связанное с инвестиционным решением, таким образом цикл становится длиннее\\n\\nВливания в основной капитал происходят в среднем раз в 10-летие, таким образом начинает повышаться производительность и предприятие расширяется, когда же оборудование изнашивается и становится плохим, то происходит спад=регресс до следующего вливания в основной капитал для обновления оборудования и в целом имущества\\n\\nЦикл Жюгляра нестандартно разделен на большее количество фаз\\n\\nФазы старта и ускорения - начальный толок в связи с волевым решением руководства/ мощности расширяются, вливания средств увеличиваются\\n\\nФазы роста и перегрева - Производство увеличивается так сильно, что перекрывает весь спрос/спрос перекрыт, но объемы растут\\n\\nФазы краха и спада - затраты перестают окупаться/уменьшение вливаний и объемов производства\\n\\n\\n\\n\\nФазы стабилизации и сдвига - перекрытие спроса запасами и объемом после уменьшения/запасы уменьшаются, а производственный уровень слабый, чтобы перекрыть спрос, начинается увеличение мощностей и\\nобъема вливаний\\n\\nНа самом деле это все подфазы основных фаз - рост, пик, спад, депрессия или ( оживление, процветание, рецессия и депрессия )\\n\\nСтандартная ситуация - фаза подъема длится 4-5 лет, остальные 3 по 2-3 года, таким образом и получается среднесрочный цикл\\n\\n\\nОсновные причины кризиса :\\n\\nЗначительное и не всегда адекватное увеличение цен на ресурсы: недвижимость, сырье, оборудование и т.д.\\n\\nСверхнормативный спрос на кредитные продукты и чрезмерное увеличение объемов инвестиционных вливаний\\n\\nПоявление спекулятивных операций с фондовыми и товарными продуктами и разрастание их масштабов до неадекватных размеров\\n\\nРост числа высокорискованных операций.\\n\\n\\n\\n\\nПричины кризиса появляются на отдельных этапах и фазах, чтобы мы с вами могли понять, а где же сейчас находится наша экономика и чего мы можем ждать дальше?\\n\\nЦикл Жюгляра имеет отличительное свойство - он разделен на подфазы, что позволяет с большей точностью определить наше положение внутри цикловой системы\\n\\nСейчас мы перейдем к циклу Кузнеца, который является еще более долгосрочным\\n","image":""},{"text":"Для начала стоит прочитать описание каждой фазы, чтобы понимать, что за ними стоит\\n\\nПосле этого переходите далее","image":"/media/images/theme_19_lesson_30_outline_2.png"},{"text":"Цикл Кузнеца\\n\\nСаймон Кузнец был американским экономистом и после 2 мировой войны в мире был вопрос - куда двигаться дальше?\\n\\nИменно тогда было уделено большое внимание циклическим колебаниям, которыми и занялся Саймон\\nОн определил, что циклы в большей мере зависят от : Демографии\\nВливания средств в капстроительство\\nПеремещение капитала Изменение национального дохода во времени\\n\\n\\n\\n\\nДалее он определил, что основными факторами являются демографические сдвиги и инвестиции на длительный срок в капитальные объекты\\n\\nКузнец вывел свои волны еще в 1930 году, они развивались под воздействием миграции рабочих, которые реализуют себя в строительстве. В мировой экономике эти циклы совпадают с изменением цен на недвижимость в развитых странах\\n\\nДлина одной волны составляет 15-20 лет Далее рассмотрим фазы и их характеристики\\n","image":"/media/images/theme_19_lesson_30_outline_3.png"},{"text":"На самом деле все очень однотипно, просто имеет разную продолжительность и причины возникновения\\n\\nОднотипные я имею ввиду фазы и их описание. Допустим - фаза спада характеризуется понижением экономических показателей. Логично ведь?\\nКонечно понижением, на то она и стадия спада :)\\n\\nЯ дал вам описание для общего понимания, что происходит на каждой фазе, но в целом они практически идентичны, основные различия заключаются в обосновании фаз\\n\\n\\n\\nСейчас определить цикл Кузнеца не очень то и просто, потому что миграции рабочих с целью занятости в строительстве не так высоко и отслеживается с трудом\\nНо сам цикл сохранился и даже обоснование его не убрали Кузнец работал не только над циклами, но и выделил 6 характеристик\\nэкономического роста. Для чего они вам? Как же определять фазу \\"роста\\", а\\nзатем плавного перехода в \\"пик\\"?\\n\\nПонимая характеристики роста, мы можем определить стадию\\n","image":"/media/images/theme_19_lesson_30_outline_4.png"},{"text":"Цикл Кондратьева\\n\\nСамый длинный цикл из нами рассмотренных - он занимает 50-60 лет\\nСтруктура самого цикла заключается в определении быстрого и медленного развития экономики Ученый выделил эмпирическим путем четыре ключевые закономерности длинных ритмов.\\nНакануне развития повышательной волны (иногда уже в ее начале) происходят кардинальные и принципиальные перемены, затрагивающие условия хозяйствования. Они могут быть вызваны внедрением в практику изобретений и новаторских подходов, появлением на экономическом поле нового игрока в виде очередной вышедшей на рынок страны, изменением условий в обращении денежной массы и т.д.\\nВременные отрезки, на которые приходятся повышательные части длинных циклов, обычно характеризуются яркими переломными событиями в социальной сфере (войны, революции и т.д.).\\nТогда как в период понижательных волн такого не наблюдается.\\nПонижательные отрезки длинных волн сопровождаются затяжной депрессией, разворачивающейся в сельскохозяйственном секторе.\\nДлинные ритмы проявляются в точно такой же динамической последовательности, как и происходящие в экономической системе средне- и краткосрочные колебания. То есть для них характерны те же этапы развития: подъемы, кризисы, депрессии.\\n\\nПеред вами датировки экономических циклов Кондратьева начиная с 1803 года Экономисты считают, что в 2018 году начался новый цикл","image":"/media/images/theme_19_lesson_30_outline_5.png"},{"text":"В основе Кондратьевских циклов лежит ВВП и основные экономические показатели стран\\n\\nПредлагаю вам рассмотреть описание каждой фазы этого цикла, может вы заметите что-то похожее на реальность\\n","image":"/media/images/theme_19_lesson_30_outline_6.png"},{"text":"","image":"/media/images/theme_19_lesson_30_outline_7_39XDurH.png"},{"text":"Если вам это ничего не напоминает, то перечитывайте столько раз, пока не напомнит :)\\n\\nПо циклам Кондратьева мы находимся на первом этапе, об этом же говорят и экономисты\\n\\nВ практику внедряются изобретения с предыдущего этапа - этапа депрессии в 14-15-18 годах, когда экономике было тяжело\\nУ нас значительные темпы инфляционных процессов, а также скоро мы перейдем к повышению ставок\\n\\nНо даже Кондартьев вам говорит, что повышение ставок это не конец, а переход к стадии пика, а учитывая, что цикл длится 50-60 лет у нас впереди большой рост\\n\\nСтадия пика в основном характеризуется катаклизмом, который был при коронавирусе или при второй мировой войне, да и в целом мы говорим про что-то мирового масштаба\\n\\nНа самом деле по фазам Кондратьева мы находимся в смешанной фазе, которая не была им выделена\\n\\nВдумайтесь, мы попали в пандемию, которая не дает экономике восстановиться, победить пока что мы ее не можем, но с другой стороны у нас далеко не стадия депрессии, хотя отчасти она тоже замечается. У нас происходят инновации, которые подстраиваются под \\"новый дивный мир\\", но также инфляция летит вверх и повышение ставок не за горами\\n\\nЗамечаете, что нынешнее положение понемногу отовсюду?\\n\\n\\n\\n\\n\\n\\nЛично мое скромное мнение\\n\\nЯ считаю, что требуется пересмотр фаз, иначе трудно определить, где именно мы находимся. Если бы цикл был короткий - запросто, но он длинный и по логике мы на конце фазы депрессии, но когда она закончится, у нас уже будет инфляция в небесах, а ставки повышаться\\n\\nЭто только касательно коронавируса, на деле все стадии отлично себя показывают, а от нас они требуют инноваторских решений\\n\\nЕще помните про список циклов? Смотрите их объяснение","image":"/media/images/theme_19_lesson_30_outline_8.png"},{"text":"Каждый цикл = прорывная способность и что-то инновационное, что-то новое, переход на новый этап\\n\\nЯ считаю, что экономисты правы и либо цикл уже начался, либо мы очень близко к его началу\\n\\nСмысл заключается в том, что внутри этого цикла находятся все остальные и на самом деле основной идеей тут является прорывная инновация, новый уровень, то, чего не было раньше, а не ключевая ставка, которая меняется каждый год-два-пять-десять, это неважно\\n\\nКонкретно цикл Кондратьева мой любимый. Почему?\\n\\nОн сглаживает все шумы. Для него ФРС - назойливая муха, которая просто мешает спать, но не может заставить тебя не спать год, ты ее прихлопнешь, верно?\\n\\n\\n\\n\\n\\n\\nИнновации и долгосрочное развитие экономической системы приводят к тому результату, который был заложен первоначально\\n\\nСейчас мы закончим на этом и перейдем к объяснению практического использования циклов, который мы только что изучили\\n\\nСпасибо за уделенное время на прочтение\\n\\nЯ думаю, что отвечая сейчас на вопрос, зачем нам нужны циклы, 99% уже все поняли, так как это вполне очевидно\\n\\nПутем исследования мы понимаем на какой стадии находимся\\n\\nДавайте представим, что мы разбираем цикл Кузнеца и посмотрим его стадии, сравнив с реальным временем\\n\\n","image":"/media/images/theme_19_lesson_30_outline_9.png"},{"text":"Просто прочитайте описание фазы \\"роста\\", ничего не напоминает?\\n\\nУ нас сейчас происходит ровно то же самое. Вы спросите - как так? Ведь циклы были придуманы еще в 20 веке. Ответ прост - они фундаментальны и не меняются\\n\\nУ нас сейчас происходит все 1в1 - растет спрос на рабсилу, новые рабочие места, уменьшается безработица, спрос потребительский увеличивается ( увеличивая инфляцию ), расширение производственных объемов, ВВП на душу растет\\n\\nВы спросите - почему же мы не на стадии \\"пика\\"? Где сказано, что все на максимумах.\\nПотому что мы еще не восстановились от коронавируса и он до сих пор гложет весь мир\\n\\nМы перейдем на стадию пика в тот момент, когда коронавирус будет побежден хотя бы по большей его части и будет повышена ставка рефинансирования от ФРС\\n\\nСравнив наше время с описанием Жюгляра, мы можем понять, что мы на переходном моменте между фазами оживления и роста ( пика, как отдельной фазы просто нет ) или мы на самом начале роста\\n\\nЛадно, вот мы определили, что мы находимся тут или там, дальше что?\\n\\nПредставьте, что мы определили, что мы находимся на фазе спада. Будете закупаться среднесрочными активами? Очевидно. Может будете шортить? Если рынок падает и подтверждает вашу теорию\\n\\nДрузья, тут вариантов миллион и всем есть свое применение\\n\\nКому-то, как мне, просто достаточно понимать, что впереди есть еще год-два, чтобы мы могли порасти, а там уже можно и закрыть позиции, еще раз проанализировав ситуацию\\n\\n\\n\\n\\n\\n\\nЭто последняя тема во всем обучении\\n\\nЯ надеюсь, что вам было полезно для практики и для теории прочитать все то, что я писал примерно 2 месяца\\n\\nБольшое спасибо, что доверились и оказались тут\\n\\nДальше темы будут дополняться, не так часто, но зато очень важные Всем еще раз спасибо!","image":""}]	novyj-urok-5914	t	\N	\N	19	471	39
14	8	dfe7a3b7-6352-43dd-89c2-d8ac486142cb	Инсайдерские сделки	[{"text":"Кто такие инсайдеры и почему их сделки могут быть для нас важны?\\n\\nВ предыдущем курсе по Ф.А. я рассказывал про это, но сейчас я предлагаю более углубленно подойти к этой теме и затронуть многие важные аспекты, которых не было в предыдущий раз\\n\\nИнсайдеры - обычные люди, которые являются директорами компании или занимаюсь высокую должность в ней, а также владельцы крупных пакетов акций ( от 10% )\\n\\nИх сделки - общедоступная информация, которая публикуется на сайте https://finviz.com/insidertrading.ashx ( кликайте )\\n\\nрасными блоками я выделил основные моменты, которые нам нужно видеть\\n\\nСправа в верхнем углу мы можем переключаться с покупок на продажи инсайдеров или выбрать, чтобы видеть все сделки\\n\\nСлева мы видим тикер компании, затем идет имя инсайдера, затем его должность, число покупки, цена покупки за акцию, количество акций в покупке, сумма покупки, сколько всего акций компании у инсайдера и последнее - дата появления уведомления от инсайдера о покупке\\n\\n","image":"/media/images/theme_3_lesson_14_outline_0.png"},{"text":"Почему данная информация может быть для нас полезна?\\n\\nИнсайдеры вызывают интерес у публики, а точнее у инвесторов, которые, как пчелы на мед, скупают акции той компании, где была крупная сделка от сильного инсайдера\\n\\nЧто значит сильный инсайдер? В основном - занимающий высокую должность или является крупным пакетом акций\\n\\nЕсли какой-то директор купит компанию на 10.000 долларов, то это никому неинтересно, слишком маленькая сумма, чтобы двинуть рынок\\n\\nНо, если он же купит компанию на 1.000.000 долларов, то это уже внушает доверие, значит, что он что-то знает и ждет\\n\\nИменно такое мнение бытует среди обычных инвесторов, но разве это не так?\\n\\nОтчасти правда, но мы с вами будем умнее и углубимся в эту тему, чтобы раскрыть все карты\\n\\nВсегда ли покупка на 1.000.000 долларов является сильным триггером для роста и действительно инсайдер что-то да и знает?\\n\\nВовсе нет. Сначала надо проанализировать, что это за инсайдер и может быть - это попросту его зарплата или премия. Очень часто вознаграждения выплачивают в виде премии и чем крупнее компания - тем крупнее они могут быть, что спутает обычных инвесторов в ценности инсайдерской сделки\\n\\nКак это проверить?\\n\\nДля начала надо проверить, продает ли инсайдер эти же акции сразу после их \\"покупки\\"\\n\\nДля этого нам потребуется перейти на сайт https://www.secform4.com/ и вбить в поиске по тикеру\\nнужную компанию, затем найти сделку и проверить инсайдера Приступим!\\nНа FinViz мы увидели покупку неким крупным акционером компании REPX на сумму\\nболее 400.000 долларов\\n\\nПосле этого вводим тикер этой компании в поиске и нажимаем SEARCH","image":"/media/images/theme_3_lesson_14_outline_1.png"},{"text":"Переходим и видим следующую картину - большое количество сделок на покупку ( это плюс ) и бОльшая их часть от 10% владельца акций Libin Alvin Gerald, причем покупает он компанию с цены в 17$ и продолжает это делать и по сей день при цене в 25.97$","image":"/media/images/theme_3_lesson_14_outline_2.png"},{"text":"Нажимаем на его имя и смотрим все его сделки. Каждая из них - REXP, что сразу\\nвызывает внимание, так как : 1) он видит потенциал компании и ближе нас всех находится к ней 2) ни одной продажи за это время 3) это не зарплата/премии, так как он не является работником\\n\\nЗначит инсайдер что-то да знает. Причем, заметьте - суммы увеличиваются с ростом цены\\n","image":"/media/images/theme_3_lesson_14_outline_3.png"},{"text":"Обязательно смотрим в гугле, кто этот человек и\\nчем занимается\\n\\nВ нашем случае - канадский бизнесмен, филантроп, который имеет компанию, занимающуюся услугами по управлению инвестициями, специализацией на домах престарелых, отелях, нефти и газа, недвижимости и финансовых услуг\\n\\nС ним все понятно, интересный бизнесмен, который также занимается инвестициями напрямую, а не косвенно\\n\\nНо что же у нас за компания?","image":"/media/images/theme_3_lesson_14_outline_4.png"},{"text":"Так, так, так, что тут у нас? Нефтегазовая промышленность в энергетическом секторе\\n\\nНаш инсайдер как раз покупает такие и специализируется на них\\n\\nТаким образом, пока мы видим такую картину - некий г-н бизнесмен и филантроп, который имеет свою инвестиционную компанию, покупает акции некой компании REXP, которая находится в нефтегазовой промышленности, а он на таком и специализируется","image":"/media/images/theme_3_lesson_14_outline_5.png"},{"text":"Причем, покупает он не просто один раз, а по нарастанию цены и увеличенными\\nсуммами, таким образом, явно ожидая более высоких котировок\\n\\nДаже не копая глубже, мы можем сделать вывод, что 1% своего портфеля не жалко оставить в этой компании, хотя бы ради интереса, так как большое количество факторов говорит нам о том, что есть вероятность роста, если наш инсайдер не дал сбой\\n\\nНо, учитывая то, что он активно покупает ее с августа и наращивает позиции, он что-то да знает\\n\\nПрошу заметить, до августа 2021 не было от него покупок этой компании, знаете почему?\\n\\nОн представлял, когда нефть начнет дорожать. Как? Его спросите\\n\\nИнсайдеры - дело серьезное и я начал копать по остальным. Остался всего один и он\\nпредставляет собой в переводе \\"поместье Энтони Вандербринк\\", что ни о чем нам не говорит, которое покупает акции с апреля 2021 года и последняя сделка была 17 сентября. Суммы тут покрупнее, но надо как-то разобраться, что это такое Зацепкой будет являться Texel Resources ( см. нижние две сделки )","image":"/media/images/theme_3_lesson_14_outline_6.png"},{"text":"Единственной зацепкой связи первого инсайдера Элвина Либина и этой компании\\nявляется их нахождение в одной стране","image":"/media/images/theme_3_lesson_14_outline_7.png"},{"text":"Аналогичная ситуация и с Поместьем Энтони ВанденБринк\\nБолее ничего интересного по компаниям нет, поэтому вернемся к размышлениям","image":"/media/images/theme_3_lesson_14_outline_8.png"},{"text":"У компании есть 2 инсайдера, которые начали покупать акции примерно в одно время,\\nесли только не брать в учет весенние покупки от второго. Я имею ввиду, что второй возобновил покупки, а первый начал\\n\\nОба находятся в Канаде, совпадение?\\n\\nВторой является дочерней компанией серьезной американской компании Lydall\\n\\nПокупки от первого инсайдера пришли на момент роста нефти - угадал или что-то знал?\\n\\nВ целом, я готов рассматривать компанию дальше по ее мультипликаторам, рентабельности и прочему, так как по инсайдерским покупкам она максимально привлекательна\\n\\nНо как понять, что покупка или продажа инсайдера не окажут значительного\\nвоздействия на акции и на самом деле это просто бонусы за работу или же зарплата?\\n\\nЯ переключился на вкладку на FinViz по продажам от инсайдеров и нашел сделку EXEL Вбил ее на SecForm4 и вижу следующее\\n","image":"/media/images/theme_3_lesson_14_outline_9.png"},{"text":"последняя продажа инсайдером на миллион долларов и должна была сильно столкнуть акции вниз, но...\\n\\nЗахожу и смотрю, какие еще сделки совершал инсайдер. Одни продажи и снизу последние 5 штук, начиная с июня 2021 года\\n\\nЧто странного тут вижу? Количество акций под продажу часто совпадает, но самое главное - я не вижу покупок, но вижу рост количества акций в столбце справа. Откуда они? Значит начисляют за работу. Это не его рациональные покупки","image":"/media/images/theme_3_lesson_14_outline_10.png"},{"text":"Он продавал акции практически каждый раз, когда они отрастали намного выше. Почему так?\\nПотому что ему без разницы. Его продажи не влияли ни на грамм на котировки, так как они были не обоснованы, а являлись обычным выводом такого вида поощерения за работу во всеми любимый кэш:)\\n\\nНо, даже, если бы они не были \\"бонусные\\", а были реальные, то судя по последним сделкам инсайдеру верить не стоит, он не особо понимает в своей же компании","image":"/media/images/theme_3_lesson_14_outline_11.png"},{"text":"аким образом, мы делаем следующие выводы :\\n\\n1)проводим анализ инсайдера\\n2)смотрим, кто этот инсайдер является\\n3)смотрим, откуда у него акции и не бонусные ли они\\n4)пытаемся найти связь между инсайдерами, если компания третьего и второго эшелонов\\n5)проверяем по его предыдущим сделкам, влияли ли они на котировки и был ли он прав по отношению к своей же компании\\n\\nИнсайдерские сделки - очень неплохое дело, но использовать надо с умом и грамотно\\n\\nЕсли вы будете бездумно покупать по каждой сделке и каждую компанию - ничем хорошим это не обернется!\\n","image":""}]	novyj-urok-4836	t	\N	\N	3	526	26
15	9	81b0d2e3-f95f-45c5-b002-4b8eb2b04bcf	Корреляция	[{"text":"Чувствуете, пахнет чем-то интересным? Эта тема является одной из конкретных и практических внутри Ф.А.\\n\\nКорреляция - взаимная связь между друг-другом. Она может быть среди людей, предметов и даже компаний внутри отрасли, о чем мы и будем говорить\\n\\nГлавный интерес, который представляет корреляция - найти расхождение среди движения котировок акций - когда все идут вверх, а 1-2 не реагируют на рост или наоборот\\n\\nПоиск подобных ситуация позволяет нам сделать вывод в пользу запоздалого движения по отставшим от отрасли бумагам\\n\\nКак вы поняли, то в этом и заключается практическая суть корреляции Поэтому, давайте не будем лить воду и перейдем к делу\\nНа примере ниже я привел конкретный пример по корреляции между цены на нефть и одной из крупнейших мировых компаний в нефтяной отрасли","image":"/media/images/theme_3_lesson_15_outline_0.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_1.png"},{"text":"Тут четко видно, что в период с 20 августа по сей день нефть имеет сильный восходящий тренд, но вот ExxonMobil первый месяц показала рост всего лишь на 1.71%, что явно не коррелирует с ростом нефти\\n\\nТаким образом, эта компания являлась отстающей в своей отрасли, но в скором времени начала подгонять котировки и прибавила 16% в цене меньше, чем за месяц\\n\\nНиже привожу пример роста компании из нефтяной отрасли за период с 20 августа по 21 сентября, чтобы показать, что рост был\\n","image":"/media/images/theme_3_lesson_15_outline_2.png"},{"text":"Кто-то из вас скажет, но остальные компании также имели просадку к 21 сентября, где же тут корреляция? Давайте сравним. Рост с 20 августа по 21 сентября в среднем по двум компаниям выше составлял 10-17%, в то время, как у Exxon 1.71%\\n\\nЗатем, за период с 21 сентября по сей день все три компании сделали следующие %","image":"/media/images/theme_3_lesson_15_outline_3.png"},{"text":"Exxon +16.69%\\nOis +25%\\nPBF +53%\\n\\nДавайте измерим соотношение : Ois/Exxon =  1.49, PBF/Exxon = 3.17\\n\\nВ то время, как в период с 20 августа по 21 сентября соотношение было  Ois/Exxon = 6.35%, PBF/Exxon = 10.12\\n\\nВы видите разницу? За два периода корреляция между компаниями уменьшается, так как Exxon начинает догонять своих товарищей по отрасли\\n\\nВ этом нет ничего странного, это стандартная закономерность, когда одна компания, которая имела отставание от своей же отрасли, нагоняет ее в будущем. Ближайшем будущем\\n","image":"/media/images/theme_3_lesson_15_outline_4.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_5.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_6.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_7.png"},{"text":"На примере выше вы можете посмотреть и проанализировать топ 4 компании строительной отрасли США\\n\\nКак вы уже заметили, они все имеют +- одинаковые графики, так как зависят от одних и тех же факторов, что даже отчеты у них +- равные, ведь деньги идут или уходят по одному принципу\\n\\nТакие компании проще всего коррелировать между собой\\n\\n16 июля было для них всех отправной точкой, которая задала тем роста на ближайший месяц, затем снова вниз и снова все вместе\\n\\nНо как же выбрать, какую компанию купить, если они не все ходят друг за другом?\\n\\nЯ называют этот эффект \\"скрытая корреляция\\", но помните, что такого понятия в целом в экономике скорее всего нет, а если и есть, то обозначать будет совсем другое\\n\\nЕсли в первом примере мы с вами имели явную корреляцию, когда крупная компания не шла за рынком нефти, то тут они все идут нога в ногу и что же делать?\\n\\nВыбирайте самую волатильную. Это и будет эффект скрытой корреляции\\n\\nПочему скрытой? Потому что по графику они все идут одинаково, но если присмотреться, то $TMHC сделала в 2 раза больше своих собратьев, когда они сделали по 10-12% роста, она за тот же период 24%, но также сильно и откинулась назад, чтобы график был повторен практически полностью:)\\n","image":"/media/images/theme_3_lesson_15_outline_8.png"},{"text":"\\nРазница в падении также существенная, ведь в сравнении с топ 1 рынка она составляет 2.2 раза!\\n\\nНо, самые внимательные заметили еще один интересный фактор корреляции, который можно будет применять к компаниям строительной отрасли\\n\\nСейчас разберем его дальше!","image":"/media/images/theme_3_lesson_15_outline_9.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_10.png"},{"text":"Внимательно присмотритесь к волатильной компании из отрасли строительства.\\nВы видите, что она начинает падать раньше других, а расти позже?\\n\\nЕе пик был 28 апреля, когда у остальных 10 мая, а нижняя граница пришла к 19 июля, когда у остальных 16 числа\\n\\nЕсть ли в этом смысл корреляции? Давайте разберемся Не буду вас томить, решил немного подшутить)\\nТакого рода постоянной корреляции существовать не может, тогда все давно были бы миллиардерами, правильно? Если можно точно понимать, что будет дальше\\n\\nНо есть и реальное действие, которое сейчас покажу\\n","image":""},{"text":"Эта компания действительно ходит за рынком, но с бОльшим разбросом по процентам, что дает нам возможность хорошо зарабатывать\\n\\nПрисмотритесь - падают обе, но как только летит вниз первая, а когда у всего остального рынка происходит разворот, она снова тормозит и дает пару дней для нас, чтобы мы это заметили\\n\\nНижний экстремум у рынка был 27 января, у нее 29 января и затем она ракетой отправилась вверх, как и весь\\nрынок\\n","image":"/media/images/theme_3_lesson_15_outline_12.png"},{"text":"Итоги главы по корреляции :\\n\\n1)Суть заключается в том, чтобы найти компанию, которая не идет за отраслью, а тормозит\\n2)не пытайтесь найти четкие закономерности - потеряете деньги\\n3)выбирайте небольшие компании в отрасли, так как именно такие имеют эффект запаздывания\\n4)корреляция может быть скрытой - когда компания имеет задержку всего в 1-3 дня и повышенную волатильность на взлетах и падениях\\n\\nЭто очень полезная информация в вашей голове, она может пригодиться не только в инвестировании\\n\\nПредлагаю вам перейти дальше!","image":""}]	novyj-urok-6404	t	\N	\N	3	527	28
9	3	f7445178-1ba6-44ba-a3e9-bf5da0c69705	Где смотреть показатели	[{"text":"Вероятно, что у вас будет возможность смотреть его уже на нашей образовательной платформе, но, если еще нет, то милости прошу на https://investing.com/\\n\\n\\nПерейдя на сайт выше ( просто кликните на ссылку ) вы увидите следующую картину","image":"/media/images/theme_3_lesson_9_outline_0.png"},{"text":"Как вы уже понимаете, я выделил стрелочками именно поисковик, куда вам надо нажать.\\nЭто верхняя часть сайта. Сайт на английском и кто не понимает - запоминаем действия или переводим с помощью программ ( гугл имеет встроенный переводчик )\\n\\nВведите любой тикер, любой компании, чтобы продолжить разбираться\\n","image":""},{"text":"После ввода тикера у нас\\nпоявляется список всех компаний, которые подходят под него\\n\\nОчевидно, что нас интересует только первая с биржи NASDAQ и американского происхождения:)\\n\\nПоэтому нажимайте на нее и смотрите дальше","image":"/media/images/theme_3_lesson_9_outline_2.png"},{"text":"Нажав на тикер, вы попадаете на страницу компании и над графиком у вас будет список того, что доступно посмотреть\\n\\nНас интересует только Financials в данный момент. Наведите курсор мыши ( или нажмите пальцем ) на данное слово и затем выбирайте Ratios\\n\\nВторой список появится после наведения курсора, ничего сложного\\n\\nСмотрим дальше","image":"/media/images/theme_3_lesson_9_outline_3.png"},{"text":"У вас перед глазами сразу же\\nпоявится то, с чего мы начали - мультипликаторы\\n\\nВам они покажутся знакомыми и на душе станет тепло, ведь все из них мы прошли и разобрали. Тут нет тех, которые вы не знаете\\n\\nКак вы видите, справа от мультипликатора идет два числа и над ними подпись : 1) Компания 2) Индустрия ( сектор )\\n\\nИменно так мы и сравниваем значение по компании и индустрии\\n","image":"/media/images/theme_3_lesson_9_outline_4.png"},{"text":"Таким образом, пролистав ниже, вы найдете все оставшиеся мультипликаторы\\nи метрики\\n\\nКаждая из них будет иметь сравнение со своей отраслью и это очень удобно, так как не надо больше гуглить подобные моменты или искать на сторонних ресурсах\\n\\nТут все просто, я просто показал, где мы смотрим эти мультипликаторы\\n\\nНадеюсь, что мы добавим то же самое себе на обучающую платформу, чтобы упрощать вам работу в нашем непростом деле!","image":""},{"text":"","image":""}]	novyj-urok-7144	t	\N	\N	3	137	\N
20	1	d9033698-9108-406a-9649-a9851e60c700	Поддержка и сопротивление + Паттерны + Поглощение + Хайкен Аши	[{"text":"Поддержка и сопротивление\\n\\nИзучая индикаторы мы уже знаем, что это такое, но их можно строить и самостоятельно. Бывают они двух типов : горизонтальные и вертикальные\\n\\nГоризонтальные встречаются чаще всего у компаний, которые постоянно то падают, то растут, образуя \\"горы\\" на графике\\n\\nДавайте посмотрим на такой пример и определим, где же будут находиться поддержка и сопротивление\\n\\nВзглянем на график QIWI и проанализируем\\n\\nМы видим, что эта компания каждый раз ходит то вверх, то вниз, у нее нет растущего тренда и я бы вообще пропустил такую покупку, но кто-то любит риск-компании с горизонтальной поддержкой\\n\\nМы должны взять на графике верхние и нижние экстремумы и объединить их в сопротивление и поддержку\\n","image":"/media/images/theme_6_lesson_20_outline_0.png"},{"text":"Что мы сделали? Выделили верхние экстремумы и создали блок, который будет\\nявляться сопротивлением, также сделали и с нижними экстремумами, но без актуального, так как мы не знаем как низко падет компания. Если пойдет вверх, то это будет являться поддержкой. Нижний блок в данный момент является сопротивлением, но когда компания пересечет его, он станет поддержкой\\n\\nТут нет ничего сложного, но я предлагаю рассмотреть больше примеров для четкого понимания темы\\n","image":"/media/images/theme_6_lesson_20_outline_1.png"},{"text":"Компания SWBI имеет похожую логику. У нас есть четкий график до резкого взлета,\\nкогда компания ходила по своему горизонтальному каналу и имела поддержку и сопротивление. Потом она улетела вверх и сопротивление верхнее стало ее поддержкой. Затем она пробила его снова вниз и как видите, график стукается об этот блок, как об сопротивление, хотя еще пару месяцев назад отскакивал от него, как от поддержки. Удивительный графический анализ)\\n","image":"/media/images/theme_6_lesson_20_outline_2.png"},{"text":"Перед вами график SPCE, как вы видите, тут все вполне просто - верхние 2 экстремума\\nэто сопротивление, а нижние экстремумы = поддержка\\nВ этой теме нет ничего сложного, мы просто определяем место, где чаще всего были отскоки, это и будет зоной поддержки, а также зоны, где график не пошел дальше - сопротивление\\n\\nАналогичная ситуация будет и дальше, когда мы начнем изучать каналы и строить зоны по поддержке и сопротивлению вертикальные","image":"/media/images/theme_6_lesson_20_outline_3.png"},{"text":"Сразу хочется добавить, что правила те же - чем шире ТФ при построении поддержки\\nили сопротивления, тем она сильнее. Она может сыграть вам на руку и отправить акцию в космос за 1-7 дней и короткая торговля тут вполне уместна\\n\\nПеред вами ниже график, как вы думаете, что на нем видит трейдер?","image":"/media/images/theme_6_lesson_20_outline_4.png"},{"text":"Он видит возможность, как можно \\"выиграть\\"\\n\\nПочему? Посмотрите еще раз на график ниже. Это максимально четкие поддержка и сопротивление, которые в свою очередь создают торговый канал. Он является важной частью графического мира технического анализа\\n\\nКанал восходящий, тренд восходящий, мы находимся на нижней поддержке. Риск 70-75%, потенциальная прибыль на высоте. На 50% от желаемой суммы брать можно, остальную на докуп в случае чего\\n","image":"/media/images/theme_6_lesson_20_outline_5.png"},{"text":"Мы по сути просто видим канал. Четкий канал движения акции. Чем шире ТФ - тем\\nсильнее канал, все также очевидно. Чем сильнее канал - тем меньше шанса оказаться пробитым и с лосем в кармане\\n\\nЯ использую такие каналы постоянно, если анализирую компанию и не представляю торговлю возможной без них. Почему? Потому что они выступают основным принципом логики в ТА, сейчас объясню почему!\\n\\nКанал - движение акции в определенном направлении и ограниченное поддержкой и сопротивлением. Обычно, сильные компании идут прямо по сопротивлению вверх, как у ФБ на скрине выше\\n\\nНо, что мы получаем, когда компания резко вырвалась из торгового канала и полетела вверх? Это о чем-то говорит? Полетела неосознанно, случайно! Без супер важных новостей, просто на ерунде или мировом пампе! Что с ней по вашему будет? Сейчас расскажу на примере Модерны\\n\\nПеред вами торговый канал Модерны, который выполнял свои функции до ее летнего\\nвзлета. После пробития канала, она выросла на 100%. Это объективный рост? Нет.\\nКомпания стала зарабатывать в 2 раза больше или получила очень мощный контракт?\\nНет! Просто увеличилась заболеваемость и многие \\"эксперты\\" выражали свое мнение на счет продолжения локдаунов и прочего. Поэтому люди решили покупать Модерну.\\nЯ в это время ее шортил, начиная с 380 долларов и закрыл со средней около 400 долларов на цене в 285 долларов. Почему же она упала? Сейчас скажу","image":"/media/images/theme_6_lesson_20_outline_6.png"},{"text":"У компании был четкий канал и четкие экстремумы. Если она необоснованно выходит за его\\nпределы, то по условиям Фундаментального анализа должна вернуться к стандартным значениям. Что есть эти значения? Варианта 3 :\\n\\n1)Если до этого компания была совсем мусор, то на нижнюю часть канала к поддержке\\n2)Если компания имеет что-то за собой, как Модерна, то к сопротивлению, которое станет поддержкой для нового тренда и нового канала\\nМожет немного зайти ниже сопротивления, где-то до середины и оттуда начать новый\\nпуть наверх с новыми силами и новым каналом","image":"/media/images/theme_6_lesson_20_outline_7.png"},{"text":"Давайте посмотрим еще на один канал и как бумага ведет себя в нем\\n\\nПеред нами долгосрочный канал Apple. Бумага торгуется в нем с самого своего основания и вероятнее будет торговаться всегда. Сейчас и в 1998 годах у нас были ложные пробои, бумага с огромной долей вероятности вернется в канал, хоть может и походить вокруг да около еще 1-2 года на таком широком фрейме","image":"/media/images/theme_6_lesson_20_outline_8.png"},{"text":"Зачастую происходит следующим образом - растущая сильная компания вырывается\\nиз своего канала и создает новый, более вертикальный и сильный, чтобы развиваться дальше и торговаться уже в другом диапазоне\\n\\nТакое было, допустим, с Apple в 2005 году, когда она пробила сопротивление и оно стало ее поддержкой на недельном фрейме","image":"/media/images/theme_6_lesson_20_outline_9.png"},{"text":"Небольшой урок практики. Взгляните на это и скажите, что вы видите и какое\\nдвижение можете предположить\\n\\nТолько для себя, никто это проверять не будет, дальше я расскажу, что думаю сам и что я тут начертил\\n\\nНе думайте, куда пойдет компания, подумайте какие варианты движения есть. Только по каналам направление не определяют\\n","image":"/media/images/theme_6_lesson_20_outline_10.png"},{"text":"На данном скрине вы могли увидеть два канала и 1 горизонтальную поддержку\\n\\nТаким образом, варианта развития событий три : 1) сразу идем вверх к сопротивлению основного канала 2) стукаемся об доп.канал и идем вверх к сопротивлению основного\\n3)стукаемся об доп.канал, идем вверх к основному, но не можем его пробить и идем вниз к доп каналу. Это будет означать, что компания регрессирует, так как покинула\\nосновной канал и перешла в менее вертикальный","image":"/media/images/theme_6_lesson_20_outline_11.png"},{"text":"Подведем итоги по поддержке и сопротивлению :\\n\\n1)строятся по экстремумам\\n2)бывают горизонтальные и вертикальные\\n3)вертикальные создают каналы\\n4)каналы могут меняться. Если на более вертикальный - компания показала миру свою мощь и перспективы\\n\\n\\nВ них нет ничего сложного. Накладывать можно каждый раз, когда вы анализируете ту или иную компанию. Если она вам понравилась по граф.анализу, то вы можете продолжить ее анализ по всем остальным факторам\\n\\nПредлагаю перейти к поглощениям, не менее интересной теме\\n\\n\\n\\n\\n\\n\\n\\n(4.2) Поглощение\\n\\nЧто такое поглощение? Это элемент графического анализа, который подразумевает полное покрытие зеленой свечой красную или наоборот - красной зеленую. Этот означает сильную смену тренда. Чем выше ТФ - тем сильнее поглощение отразится на компании\\n\\nКак правило, поглощения в лонг сильнее, чем в шорт и продолжаются намного дольше Сейчас рассмотрим, как они выглядят и что стоит ли использовать их на коротком ТФ","image":""},{"text":"Перед вами стандартное поглощение. Как вы\\nвидите, красная свеча своим телом ( основной частью ) перекрыла тело предыдущей зеленой свечи и задала нисходящий тренд, причем мощный, так как перед вами недельный ТФ\\n\\nЕсть несколько типом поглощений и это один из них. Следующий тип подразумевает полное поглощение и даже тени свечи ( хвостика ), но я не считаю, что тут есть какая-то сильная разница и для меня это +- одно и то же, но для понимания давайте рассмотрим","image":"/media/images/theme_6_lesson_20_outline_13.png"},{"text":"Выглядит это следующим образом\\n\\nТо есть свеча следующая перекрывает предыдущую полностью, даже хвостика не оставляет за своими пределами\\n\\nКак вы видите, также задается нисходящий тренд, но все они, как по мне достаточно короткие, рассмотрим восходящее поглощение","image":"/media/images/theme_6_lesson_20_outline_14.png"},{"text":"Перед вами лонговое поглощение, которое использую я. Тело следующей свечи поглотило тело предыдущей, а тень это\\nмусор, который в данном случае меня не интересует\\n\\nКак вы видите это поглощение намного сильнее, чем в шорт, я выделил его цветом и показал прибыль в моменте максимума\\n\\nТакже, есть важное правило у поглощения. Мы заходим в сделку на следующей свече, после которой было поглощение, чтобы точно увидеть, что оно свершилось, а не взять компанию в надежде, что закроется положительно, а в итоге потерять деньги\\n\\nСейчас мы с вами будем проверять правило, что чем больше свечей поглотила одна свеча, тем сильнее будет рост","image":"/media/images/theme_6_lesson_20_outline_15.png"},{"text":"Посмотрите разницу в падении при поглощении 8 свечей и при поглощении одной\\nРазница на лицо и даже говорить тут ничего не надо, все очевидно становится сразу Поэтому переходим к просмотру поглощений на короткий фреймах и их отработку.\\nСейчас обзор велся на недельном фрейме, будем смотреть на 6 месячном","image":"/media/images/theme_6_lesson_20_outline_16.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_17.png"},{"text":"На следующих скринах вы увидите отработку на 6 месячном ТФ, как вам?\\n\\nПо мне - ужас и провокация, я не стану смотреть на такой ТФ и ниже. Минимальный ТФ для просмотра дневной и выше. Лучше недельный и месячный, чтобы видеть, какой тренд будет задаваться в дальнейшем\\n\\nВ ТФ меньше слишком много риска, который ни к чему\\n\\nЕсли вы не хотите торговать более глобальные тренды, то просто не используйте поглощения или используйте их для понимания, куда будет двигаться компания в ближайшее время, чтобы определять направление своих сделок","image":"/media/images/theme_6_lesson_20_outline_18.png"},{"text":"Давайте подведем итоги по теме :\\n\\n1)поглощения бывают полные или только тела свечи\\n2)чем больше свечей противоположенного направление поглощено, тем сильнее будет тренд\\n3)чем выше ТФ - тем сильнее и дольше тренд\\n4)ниже ТФ 1 дня лучше не торговать\\n5)не используйте поглощение отдельно от индикаторного или другого типа анализов\\n6)если торгуете на короткие сроки, поглощения на больших ТФ задают направление ваших сделок\\n\\nДалее мы перейдем к отработке паттернов, также в графическом анализе. Скажу сразу - я дам только те, которые потенциально себя могут отработать, всякие чашки с ручкой ищите в интернете, я ими не пользуюсь, это фактически мусор\\n\\n\\n\\n\\n(4.3) Паттерны\\n\\nПаттерн в техническом анализе означает фигуру, которая строится по графику и имеет некоторое значение, а точнее - показывает, куда пойдет тренд в будущем\\n\\nНа вопрос - как они работают, если это просто рисунки, ответ есть - слишком много людей в них верят, именно поэтому мы будем рассматривать самые популярные и фигуры, а не все подряд\\n\\nЕсли вы сейчас придумаете фигуру и найдете какую-то взаимосвязь в графиком, то шансов на ее реализацию будет минимум, так как сначала надо внушить остальному миру, что она рабочая :)\\n\\n\\n\\n\\n\\n\\n\\nНикаких чаше с ручками, звезд, китов и прочей ерунды, мы пройдем только те, что\\nдействительно имеют вес в мире ТА :\\n\\n1)Двойное дно, тройное дно\\n2)Двойная вершина, тройная вершина\\n3)Голова и плечи, перевернутая голова и плечи\\n4)вымпел\\n5)бриллиант\\n\\nНа каждый из паттернов я приведу двойной пример, чтобы было понимание темы и закрепление в голове, как он выглядит. Приступим!\\n\\nПеред вами пример Двойного дна ( ДД )\\n\\nГрафик начинает падение, затем небольшой откат, затем снова падение и уже восходящий тренд. Мы входим в позицию, когда он пересекает красную линию двойного дня и закрепляется там свечой. Лучше двойной свечой, так увереннее ( если свеча не улетела слишком высоко, в такой случае мы не входим )\\n","image":"/media/images/theme_6_lesson_20_outline_19.png"},{"text":"Аналогичный пример двойного дна,\\nсистема не меняется\\n\\nСначала падение, потом выкуп, потом падение, потом начало тренда восходящего\\n\\nВходим после красной линии. Красную линию берем не з головы. Проводим ее между началом падения и точкой отскока после первого дна, там мы получаем продолжение линии до закрытия фигуры и понимаем, где входить в позицию и ждать закрепления\\n","image":"/media/images/theme_6_lesson_20_outline_20.png"},{"text":"Тройное дно не имеет никаких фактических отличий, кроме дополнительного дна. Мы\\nтакже ждем три похода вниз и пробитие общей линии. Тройное дно встречается 1 к 10 по сравнению с Двойным дном, поэтому его вы редко увидите. Сильнее оно не считается, но как паттерн работает, так как по сути отражает поддержку и тренд","image":"/media/images/theme_6_lesson_20_outline_21.png"},{"text":"Аналогичная ситуация обстоит с двойной и тройной вершинами\\n\\nСейчас я приведу несколько примеров их реализации, как и обещал. Правила те же , только тренд уже задается нисходящий","image":"/media/images/theme_6_lesson_20_outline_22.png"},{"text":"Тройная вершина также имеет достойную отработку, но опять же встречается намного\\nреже\\n\\nНапоминаю, что правила абсолютно те же. Сначала мы дожидаемся полной отработки паттерна и только потом входим в позицию, после пробития трендовой линии","image":"/media/images/theme_6_lesson_20_outline_23.png"},{"text":"Паттерн голова и плечи очень похож на\\nтройную вершину за одним простым исключением - центральная \\"горка\\" намного больше остальных\\n\\nКак вы видите, у нас есть левое плечо, голова посередине и правое плечо\\n\\nЛогика та же, если вы видите этот паттерн, то строите линию между нижней его частью, она будет являться трендовой и затем входите в позицию в шорт в том случае, если она ее пробила вниз, лучше после 1-2 закрепленных свечей\\n","image":"/media/images/theme_6_lesson_20_outline_24.png"},{"text":"Еще один пример отработки ГиП ( голова и плечи )\\n\\nОчень яркий пример на графике $SPCE. Все четко видно и понятно - левое плечо, голова и правое плечо, их соединяет трендовая линия, на моменте пробития мы входим в шорт позицию и зарабатываем деньги :)","image":"/media/images/theme_6_lesson_20_outline_25.png"},{"text":"Аналогичная ситуация с пГиП, просто происходит все в обратную сторону и нужно вставать в лонг-позицию, после закрепления над трендовой линией.\\n\\nВстречаются они одинаково часто, хоть и обычный ГиП будете видеть чаще, но это связано лишь в тем, что он\\nпривычнее\\nОтработка обеих фигур вполне неплохая, поэтому я их и добавил к нам в список\\n","image":"/media/images/theme_6_lesson_20_outline_26.png"},{"text":"Фигура вымпел выглядит следующим образом\\n\\nУ нас есть 2 верхних и 2 нижних экстремума, между ними проводятся линии и получается такой треугольник, где нет горизонтальной нижней или верхней линии, обе вертикальные и +- симметричные относительно центральной линии, если таковую провести\\n\\nЭто один из самых часто встречающихся паттернов и при выходе из вымпела происходит восходящий тренд\\n","image":"/media/images/theme_6_lesson_20_outline_27.png"},{"text":"Он достаточно прост в своем понимании и эффективен, его легко распознать в отличие\\nот предыдущих паттернов, да и встречается он куда чаще Запоминайте его, так как видеть будете постоянно :)\\nЕсть также восходящий и нисходящий треугольники, но их отработка оставляет\\nжелать лучшего, я остался недоволен, как на истории графика, так и в реальной торговле\\n","image":"/media/images/theme_6_lesson_20_outline_28.png"},{"text":"Последняя фигура - бриллиант или алмаз, называйте как угодно. Она представляет\\nсобой ромб, который имеет точки соприкосновения с каждой из стороны и похож на 2 вымпела в разные стороны, которые просто объединены. У него нет четкого выхода, в лонг или в шорт, смотря куда он пойдет\\n\\nЕсли график выходит из бриллианта вниз - значит в шорт, если вверх - значит в лонг В нашем случае на скрине ниже явный шорт. Ждем 2-3 свечи после выхода и заходим","image":"/media/images/theme_6_lesson_20_outline_29.png"},{"text":"Бриллиант не всегда имеет четкую форму, он может быть и подобным, как на скрине\\nниже\\n\\nГлавный признак - обязательное соприкосновение экстремумов на каждой из точек\\n\\nЯ не советую использовать данный индикатор новичкам, так как он может ввести в минус и быть неправильно интерпретирован\\n","image":"/media/images/theme_6_lesson_20_outline_30.png"},{"text":"\\nТаким образом, подведем итоги по паттернам :\\n\\n1)используются только в связках либо для поиска компаний, либо для подтверждения идеи\\n2)четко определяются своими границами\\n3)нельзя додумывать паттерн, иначе это будет стоить вам денег\\n4)паттерн = дополнение, а не основа, не забывайте об этом\\n\\nЗнать паттерны нужно, но не стоит возлагать на них огромные надежды, так как встречаются они не так часто\\n\\nДальше мы изучим с вами свечи Хайкен Аши и будем работать с ними!\\n\\n\\n\\n\\n\\n\\n\\n(4.5) Хайкен Аши\\n\\nХайкен Аши - это трендовые свечи, которые будут помогать нам определять направление движения цены без лишних шумов\\n\\nПерейдем к правилам и потом к сигналам :\\n\\n1)Хайкен Аши не используются с другими трендовыми индикаторами\\n2)Хайкен Аши лучше всего коррелируют с MACD и RSI и в целом стохастиками\\n3)Хайкен Аши не являются обычными свечами и новый максимум может не означать максимум цены в реальности\\n\\nХайкен Аши является сглаживающим индикатором, который по своей сути\\nнапоминает EMA Считается он следующим образом :","image":"/media/images/theme_6_lesson_20_outline_31.png"},{"text":"Эти свечи не похожи на обычные, так как тут и наблюдается эффект сглаживания\\n\\n\\n\\n\\n\\n\\n\\nУ Хайкен Аши есть свои правила пользования, которые мы сейчас пройдем :\\n\\n1)должна отсутствовать нижняя тень при восходящем движении и верхняя при нисходящем. Это будет означать здоровый тренд\\n2)при растущем тренде тело последующей свечи становится больше\\n3)тренд подтверждается на 3 свече одного цвета после начала движения\\n4)\\"доджи\\" сжатие свечи означает конец тренда\\n5)при консолидации идет ряд свечей любого цвета с малым телом, чтобы понять выход из нее - используем боллинджер\\n\\nСложных правил нет, сейчас будем разбирать все это на примерах\\n\\n\\n\\n\\n\\n\\n\\nПункт первый - отсутствие нижних теней на\\nвосходящем тренде\\n\\nАналогичная ситуация и с нисходящий трендом, на нем отсутствуют верхние тени свечей\\n\\nЭто случается в 99.9% случаев и лишь является правилом понимания, а не использования\\n","image":"/media/images/theme_6_lesson_20_outline_32.png"},{"text":"Мы начинаем входить в позицию в том случае, если свечи увеличиваются в своих телах, так как это является фактором расширения и развития тренда\\n\\nЕсли свечи наоборот уменьшаются, то входить в позицию \\"запрещено\\", так как тренд будет только затухать, а не развиваться\\n","image":"/media/images/theme_6_lesson_20_outline_33.png"},{"text":"Мы не входим в позицию, если нет подтверждения третьей свечой, это видно на скрине\\nниже\\n\\nНо вы скажете, вот же есть 1 из 3 примеров тройная свеча, почему не берем?\\n\\nВсе просто - смотрите предыдущий пункт - свечи в этом случае сжимаются, а не расширяются, никакого тренда тут не будет\\n","image":"/media/images/theme_6_lesson_20_outline_34.png"},{"text":"Доджи - это сжатие свечи. Не скажу, что оно особо часто себя отрабатывает, но по\\nкрайней мере дает нам понять, что есть возможность разворота тренда и входить в позицию сейчас лучше не стоит\\n\\nПредлагаю чуть заострить внимание на этом пункте и рассмотреть еще пример\\n","image":"/media/images/theme_6_lesson_20_outline_35.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_36.png"},{"text":"По доджи можно выделить несколько правил :\\n\\n1)смотреть его стоит только после длительного тренда, так как обрубать короткие у него не очень получается\\n2)после него могут быть небольшие заскоки, которые как правило ложны Использовать данный пункт или нет - право ваше\\nЯ не вижу в нем ничего плохого, да и что-то кардинально он не меняет, поэтому при\\nвозможности его появления, надо быть внимательным и учитывать правила\\n\\nСтандартные периоды консолидации, которые ничего нового нам не привносят\\n\\nЕсли честно, я их вообще не использую, они почти не отличаются от обычных свечей и не дают мне никакой практической пользы\\n\\nПоэтому я просто знаю их и понимаю, но боковик и есть боковик, сторону выхода найти они вам не помогут, к сожалению","image":"/media/images/theme_6_lesson_20_outline_37.png"},{"text":"Вот вам четкий и понятный пример, для чего нужны Хайкен Аши\\n\\nЭто свечи для тех, кому надоели шумы, которые только отвлекают от реальной торговли, чем помогают в ней\\n\\nВ целом, если бы не было шумов, то прибыльность сделок была бы в 10 раз выше, но, к сожалению полностью от них не избавиться","image":"/media/images/theme_6_lesson_20_outline_38.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_39.png"},{"text":"В целом Хайкен Аши неплохо себя отрабатывают даже в простой связке с MACD, на\\nпримере ниже разобрал ее на короткой дистанции с ТФ 30 минут\\n\\nВполне неплохая отработка, если заходить просто по цвету. Если ждать сильного тренда с увеличением последующей свечи, то вряд ли дождемся нормального","image":"/media/images/theme_6_lesson_20_outline_40.png"},{"text":"Отработка на дневном ТФ оставляет желать лучшего, но тестируя и добавляя связки\\nможет получиться вполне хороший результат\\n\\nЕсли брать сумму сделок и прибыль, то она есть, но небольшая, так как были и минусовые заскоки. Стоит добавить в эту связку RSI или уровни, можно Боллинджер","image":"/media/images/theme_6_lesson_20_outline_41.png"},{"text":"На этом графический анализ подошел к концу, но только в рамках этой\\nглавы, далее мы разберем в отдельной главе \\"волновой анализ\\", который на деле является частью графического, но я решил вывести в отдельный, чтобы ему придали особое значение, так как он таковым и обладает\\n\\nПоэтому предлагаю вам перейти к следующей теме нашего курса и изучить новую тему\\n","image":""}]	novyj-urok-4840	t	\N	\N	6	331	33
22	0	c98547a3-a042-48f1-8498-a165c276ab94	Психология понимания рынка	[{"text":"Чтобы начать углубляться в себя и в психологию в целом, мы должны понять, как устроен рынок и почему психология в нем играет ключевую роль\\n\\nДля начала вот вам пример - Компания А занимается CRM системами ( если не знаете что это, то гуглите ), в течение 5 лет она росла по показателям и доходности, ее отчеты выходили в рамках ожиданий или выше, показывая положительную динамику роста, но вдруг в 2021 году она заявляет, что понижает ожидания по отчетам на ближайшие 2 квартала. Предположим, что ожидания по выручке были 600 миллионов, а стали 590 миллионов ( что все равно выше предыдущих значений, но ниже прежнего ожидания ), на второй квартал вместо 650 миллионов - 635 миллионов\\n\\nВы держали эту компанию на 1.000$, что является 5% от депозита, что вы сделаете в случае, когда участники рынка прольют ее на 15-20%? Ответьте и смотрите дальше за правильным ответом\\n\\n\\n\\n\\n\\n\\n\\n\\nЕдинственным правильным ответом будет являться - докуплю компанию, менее\\nправильным, но не критичным - ничего не буду делать, пусть лежит\\n\\nПочему мы должны предпринимать такие действия? Потому что фиксировать хорошую компанию в минус это глупо, особенно, если причиной является какое- то понижение выручки на мизерные проценты в течение 2 кварталов\\n\\nНа рынке слишком много дилетантов, которые часто помогают нам заработать, как? Спросите вы! Сейчас отвечу и также приведу пример\\n\\nВернемся на секунду к примеру с CRM компанией, когда ее скинули на 15-20% из-за\\nпонижения отчетов Знаете, как это происходит?\\nГруппа хомяков видит результаты и не намерена держать такую \\"ужасную\\" компанию,\\nтак как они рассчитывали на рост ответов и чтобы они были выше ожиданий\\n\\nКогда они начинают сливать свои акции, остальные видят такое падение и в страхе падения еще ниже также начинают сливать и свои акции, все это образует снежный ком, в котором каждый хомяк продали свои акции, как правило себе в убыток и ждет обвала дальше\\n\\nЧто же происходит дальше?\\n\\n\\n\\n\\n\\n\\n\\nДальше их ждет грусть и разочарование, потому что, как только основная масса\\nдилетантов продаст свои акции этой компании, вес покупателей станет больше и начнется отскок или боковик\\n\\nБольшая часть из хомяков продали свои акции по минимальным ценам, просто из-за того, что они не понимают, а что делать, когда компания падает? Они не понимают, почему она падает, может что-то серьезное? Они не понимают, что такое понижение отчетов и насколько это чревато\\n\\nИз-за своей глупости они теряют деньги, но зачем терять деньги нам?\\n\\n\\n\\n\\nВ психологии инвестирования есть несколько фраз, которые ставят наше\\nбушующее сознание на место :\\n\\n1)Если ты покупаешь, значит кто-то продает, ты знаешь по какой причине он продает? Может он что-то знает?\\n2)Если ты продаешь, значит кто-то покупает, ты знаешь по какой причине он покупает? Может он что-то знает?\\n\\nОбычно на ответы уходят месяцы, но в данном случае он очевидный\\n\\nЕсли я покупаю, а они продают, то они ошибаются в интерпретации новостного фона и неверно оценили ситуацию, если вообще хоть пытались ее оценивать\\n\\n\\n\\n\\n\\n\\n\\nНа самом деле, благодаря тому, что на рынке 90% торгующих хомяки, мы\\nможем зарабатывать намного больше и читать рынок становится куда проще\\n\\nЕсли бы их не было, то мы бы не видели проливов на таких тупых новостях как\\n: инсайдер продал акции, понизились ожидания, отчет вышел хуже на 0.000001% и прочее\\n\\nНадо просто понимать, что, если мы будем двигаться по той же траектории, что и остальные, то мы придем к тому же результату, а на рынке зарабатывает лишь 5%, остальные терпят убытки\\n\\nЕсли говорить более грубым языком, но понятным - у каждого хомяка есть свой\\nкукловод Почему? Все просто\\nЛюди, которые не пытаются разобраться в инвестициях, в психологии и прочем, не\\nтакие как мы с вами, они всегда имеют человека или группу людей, мнение которых им важно\\n\\nУсловно - есть в США огромная толпа людей, которые слушают Крамера, который часто говорит интересные вещи, но часто и пропагандирует некоторые не очень интересные\\n\\nОни его слушают и повторяют действия точь в точь. Но Крамер не дурак, он работает по фундаментальным принципам компаний, он анализирует их также, как и мы с вами, поэтому мы с ним видим одно и тоже и зачастую получаем один вердикт\\n\\nЕсли мы получаем +- один вердикт, то его сила направления толпы поможет нам\\nзаработать деньги, разве не так?\\n\\nВы думаете, что сентябрьская-октябрьская коррекция была естественной? Правда что ли?\\n\\nПочти в один день 3 крупных банка США и инвест дома соответственно заявили, что ожидают коррекцию на 10-20% прямо сейчас и приводят в пример огромную кучу факторов, но я писал про эту коррекцию еще в середине сентября, задолго до их слов\\n\\nПочему так получилось? Потому что мы видим одно и то же. Наша с вами задача читать рынок, \\"читать мысли\\" этих акул, чтобы предпринимать действия заранее до их громких слов\\n\\n\\n\\n\\nЕстественная коррекция была в 2020 году, в 2007 году, в 2001 году, но не в\\nоктябре 2021\\n\\nЕстественность порождает какой-либо фактор извне, а не слова топ менеджера какой-то пресловутой компании\\n\\nСледует понимать, что мы полагаемся только на свое мнение. Мы можем черпать идеи извне, но проверять их и поддавать сомнению каждый раз, когда этого делать не хочется\\n\\nЕсли вы хотите научиться торговать, то это необходимо\\n\\n\\n\\n\\nТак в чем же таится эта психология понимания рынка?\\n\\nОна таится в деталях, словно дьявол, кроется в них и ждет, когда кто-то это заметит\\n\\nМы должны принять тот факт, что толпа управляема. Если кому-то надо будет, то на идеальном рынке при идеальной экономике S&P 500 улетит на 50% вниз. Причины найдут всегда\\n\\nНо мы должны с вами читать рынок, понимать что и как\\n\\nДля этого мы изучаем фундаментальный анализ, технический анализ и графический анализ\\n\\n\\n\\n\\n\\n\\nДавайте разберемся по порядку\\n\\nПочему же спросите вы, если все всегда подстроено, если толпа управляема, мы должны изучать какие-то анализы. Для чего они вообще нужны, если являются неприменимыми, учитывая вышесказанное\\n\\nЯ вам скажу - вы ошибаетесь, как раз анализ и есть тот дьявол в деталях, который поможет нам опережать мысли и действия толпы, чтобы быть в одном из первых вагонов\\n\\nКаким образом фундаментальный анализ поможет нам в торговле, если все равно все действия основаны на психологии\\n\\nВсе просто, следите за четкой цепочкой и вы ответите на свой вопрос\\n\\nЕсли у компании хорошие фундаментальные показатели, положительная динамика отчетов и прочее, то именно на нее будут обращать в первую очередь свое внимание кукловоды, а затем и хомяки\\n\\nИменно ей будут ставить высокие ожидания от \\"топовых\\" инвест домов мира сего Именно эти компании будут в приоритете на покупку, когда придет очередной спад И многое другое\\n\\nПроще говоря, если вы понимаете фундаментальный анализ\\n\\nЕсли вы верно интерпретируете его сигналы, то вы опережаете других игроков, которые обратят свое внимание на эту бумагу чуть позже, когда она будет стоить дороже и дороже\\n\\nКогда ей поднимут консенсус прогнозы или же отчет выйдет намного выше ожиданий и прочее\\n\\nТакже, фундаментальный анализ позволяет нам опережать новости\\n\\nВедь все это новости : положительный отчет ( смотрим динамику ), новый продукт ( смотрим НИОКР ), положительная рентабельность и мультипликаторы ( смотрим фунд.факторы) и многое другое\\n\\nЗачем же нужен технический анализ? Как он нам поможет в торговле\\n\\nСкажу откровенно честно - весь технический анализ построен исключительно на вере людей в те или иные индикаторы ( точнее практически весь, примерно 95% индикаторов )\\n\\nЕсли бы ЕМА 200 не была популярная среди трейдеров и о ее свойствах и силе знали только мы с вами, то никакого бы эффекта не было от слова совсем\\n\\nСила технического индикатора зависит только от того, сколько людей его используют в торговле\\n\\nИменно поэтому ЕМА, Боллинджер и прочее и являются сильными индикаторами, так как они одни из самых популярных\\n\\n\\nКак это происходит\\n\\nМы видим, что компания падает на 30-40-50% внутри своего канала и подходит к его нижней границе\\n\\nЭтот канал существует 10 лет, мы предполагаем, что котировки будут расти после касания линии, верно?\\n\\nПочему они должны расти? С чего вдруг? Потому что 5-10% трейдеров и инвесторов видят этот момент также, как и мы, затем начинают покупать вместе с нами, начиная загонять цену выше и выше, это видят остальные люди, которые не имеют ни малейшего представления про ЕМА и просто покупают акции, загоняя их выше и выше, таким образом и работает Технический анализ, только таким\\n\\nЧто же касательно волнового анализа? Почему он важен?\\n\\nЛогика такая же, как и в техническом анализе, но работает он чуть хуже тех же ЕМА и прочих топовых индикаторов\\n\\nПочему? Потому что его сложнее использовать, это не просто линия, которая является сильно поддержкой, мы еще должны найти фигуры и прочие моменты. То же самое касается и обычных паттернов - голова и плечи и так далее, которые мы уже с вами проходили\\n\\nКак только часть игроков видит сигналы  от волн,  они начинают покупать  или продавать бумагу, тем самым перебивают объемы остальных на покупку или продажу, что заставляет хомяков продавать или покупать вместе с нами\\n\\nИменно таким образом будет расти или падать цена\\n\\n\\n\\n\\nИменно из такого понимания психологии рынка и вытекают все\\nостальные правила, которые мы с вами будем проходить далее\\n\\nМы должны принять, как факт, что на рынке царит психология и эта психология тесно связана с любым видом анализа, будь это ФА или ТА или ВА - никакой разницы\\n\\nПонимание всех видов анализов и их комплексное использование, позволяет нам в большей мере прочитать рынок и представить дальнейшее поведение котировок","image":""}]	novyj-urok-5606	t	\N	\N	18	464	30
23	1	d71b07cd-1639-4206-8e18-0dd8c6519d1a	10 правил	[{"text":"Сейчас мы пройдем с вами те 10 важнейших и основных правил, которые помогут вам принимать верные решения при различных ситуациях на рынке\\n\\nПравил на самом деле намного больше, но на них мы не остановимся и будем разбирать конкретные примеры, чтобы в тот момент, когда ситуация из примера станет явью - не допустить ошибку\\n\\nПриступим!\\n\\n\\n\\n\\n(1)Контролируйте лишь то, что вы способные изменить или удержать\\n\\nВ чем смысл переживать на бумагу, которая упала на 20%, если перед покупкой вы ее проанализировали и на момент падения не произошло никаких коренных фундаментальных перемен?\\n\\nКотировки не зависят от вас и вашего поведения, они - необратимый и непрерывный процесс всех инвесторов, а не именно вас\\n\\nДа, вы тоже имеете долю вклада в рост или падение котировок, но слишком маленькую, чтобы как-то пытаться это изменить\\n\\n\\n\\n\\n\\n\\nПросто поймите, если вы будете переживать за каждую компанию, которая пошла\\nне по вашему прогнозу, то через 10 лет на вашей голове не останется ни одного цветного волоса, вы поседеете полностью\\n\\nНикогда не стоит жертвовать своим здоровьем ради того, что вы даже не в силах контролировать\\n\\nПросто подумайте, насколько бесполезны ваши бесконечные проверки котировок, переживания и прочая ерунда. Вы абсолютно ничего не меняете, а лишь портите свое психическое и моральное состояние, которое прямым образом отражается на\\nвашем здоровье\\n\\nПример такой биржевой деятельности четко проявляется в повседневной жизни\\n\\nВы знаете, что такое обцессивно-компульсивное растройство?\\n\\nКогда человек повторяет одни и те же действия по несколько раз без конкретной цели, а просто так, потому что \\"так надо\\"\\n\\nЭто психическое заболевание, которое мешает жить и портит нервы. Пример простой - по 10 раз проверять утюг и прочее при выходе из квартиры. Человек может по 10 раз проверять закрыта ли дверь, спуститься на улицу и загонит в себя мысль,  что сейчас она открыта или утюг все таки не выключен\\n\\nЧеловек вынужден возвращаться домой, тратить свое время, силы и моральное состояние становится ниже, как и количество нервных клеток\\n\\n\\n\\nНа самом деле, этот пункт я считаю одним из важнейших, так как именно\\nпсихологическое состояние позволяет нам грамотно распоряжаться инвестициями\\n\\nЕсли человек очень вспыльчив, он может запросто продать в панике актив или купить актив, которые не стоит ни продавать, ни покупать\\n\\nВсе это исходит от нашего сердца, которое ошибается в 99% случаев\\n\\nОсновная цель - научиться контролировать это и не переживать за счет инвестиций, так как в этом нет никакого практического смысла. Вы ничего не меняете своим волнением, а только ухудшаете, как я уже говорил ранее\\n\\n(2)Воспринимайте падения рынка как возможность, а не как неудачу\\n\\nПорой это кажется сложным, но это также одна из истин успешного инвестирования\\n\\nВ среднем инвестор каждый год встречает коррекцию на 10%, каждые 2-3 года на 20% и в эти моменты ваш портфель может просесть до таких низов, что страшно представить\\n\\nНо надо понимать, что за черной полосой - две белых полосы, особенно на рынке\\nТакими коррекциями стоит пользоваться, а не пытаться их избегать Вам дают хорошие компании по скидке, а не пытаются отнять ваши деньги\\n\\nПонимаете, если вы хотите всегда видеть только рост, то я вас расстрою - это\\nневозможно\\n\\nЕсли вы не готовы увидеть ваш портфель на -30%, то даже не начинайте инвестировать, так как через такое проходит чуть ли не каждый инвестор и трейдер\\n\\nДа, когда вы уже находитесь на бирже долгое время, то коррекции съедают только ваш плюс, но если вы его еще не наработали, то они съедят все, что у вас\\nесть\\n\\nНо это будет являться поводом к тому, чтобы усреднить свои позиции или докупить новые, которые являются перспективными в ближайшее время\\n\\nПонимаете, рынок растет всегда\\n\\nДаже, если случится какой-либо коллапс, мы отрастем выше точки, которая была до него\\n\\nПоэтому усредняя позиции, вы делаете лучше своему портфелю, а не пытаетесь как-то обмануть себя\\n\\nНо стоит понимать, что к усреднению годятся не все активы. Если вы напокупали RIG, HYLN и прочие компании 3 эшелона и ваш портфель целиком и полностью состоит из них, то вы потерпите такой удар, что вряд ли захотите что- то усреднять\\n\\nНе забывайте про правила диверсификации, чтобы выходить сухим из воды\\n\\n(3)На рынке нет места азарту\\n\\nЕсли вы привыкли делать ставки на спорт и ваша идея заключается в том, что купив 10 компаний, одна из них точно стрельнет - продавайте все акции, закрывайте этот курс и занимайтесь другими вещами\\n\\nХорошие инвестиции - скучные инвестиции, это факт\\n\\nРано или поздно вас настигнет такого уровня неудача, что перекрыть ее станет практически невозможно\\n\\nМожете верить или нет, но в основном деньги зарабатывают инвесторы, а не трейдеры, так как повезло однажды - не факт, что повезет дважды и трижды, вы понимаете о чем я\\n\\nЯ не говорю, что трейдером быть плохо, просто надо понимать, какой вы именно трейдер\\n\\n\\nЕсли вы грамотно подходите к выбору инвестиций на 2-3-4 недели, анализируете\\nкомпании, не входите в мусорные 3 эшелона перед отчетом в надежде на ракету и прочее, то это не есть плохо\\nЯ говорю конкретно про тех,  кто является  прародителем азарта в инвестициях К такому относится : покупка под отчет, покупка под одобрение ФДА, покупка под\\nлюбую другую значимую новость\\n\\nТо есть трейдер покупает компанию наугад и просто надеется, что сейчас ему повезет\\n\\nТакой трейдер не задержится на рынке долго\\n\\n\\n\\n\\n\\n\\n\\nКаждая ваша инвестиция должна быть обоснована\\n\\nДа, вы можете ошибиться и неверно вложиться и также потерять деньги, но вы хотя бы будете знать, где именно была ошибка и не допустите ее дважды\\n\\nА люди, которые просто рассчитывают на удачу, могут даже не стараться задержаться на рынке, их удел мы все прекрасно знаем\\n\\nМы все понимаем, куда это приведет и как больно будет при неудаче\\n\\n(4)Всегда думайте своей головой, а не полагайтесь на чужое мнение\\n\\nОдной из больших проблем 90% инвесторов считается перекладывание ответственности с себя на другого человека\\n\\nМне ли да и не знать об этом. Сколько людей писали мне и проклянали, что они вошли в SPCE по 28, когда я выкладывал свою покупку, а он упал в итоге до 15- 16, где я усреднялся, а они продавали\\n\\nЗатем эта компания принесла 100%+ прибыли, но я все равно был виноват, не они, а я\\n\\nПочему? Потому что так проще принимать поражения\\n\\n\\n\\n\\n\\nТак устроен человек, многие не смогли побороть внутреннего я и всегда во всех своих проблемах обвиняют других\\n\\nЭто начинается от повседневной жизни и переходит в работу, бизнес, а также и инвестирование\\nПоэтому думать всегда надо своей головой, чтобы не винить других Какой бы авторитетный источник информации не был, вам следует\\nперепроверять его на своем собственно анализе, а не пытаться скопировать\\nчужую идею и потом за нее же кого-то обвинять\\n\\n(5)Не сожалейте об упущенной прибыли\\n\\nЭто правило несет в себе глубокий смысл, так как с подобной ситуацией мы встречаемся очень часто\\n\\nМногие из нас вкладываются в компанию \\"А\\" и зафиксировав прибыль в 50%, жалеют через год, что не оставили деньги в ней, так как сейчас было бы 150% прибыли и входят снова, просто в надежде, что рост продолжится\\n\\nЭто ошибка. Инвестирование всегда должно идти с конкретной целью. Если вы хотели заработать 50%, вы их заработали и не думайте об этом больше, никогда не вините себя в том, что компания выросла выше и не пытайтесь входить в нее на хаях, так как об этом говорит не ваш разум, а ваше серцде\\n\\n\\n\\nУпущенная прибыль штука такая, очень интересная так скажем\\nНо она не должна мешать вам смотреть в сторону других компаний Если вы упустили некоторую прибыль, то лучшее решение будет следующим -\\nпересмотрите свои взгляды на инвестиции, так как вероятно, вы являетесь среднесрочным-долгосрочным инвестором и ваше желание забирать большие проценты\\n\\nЕсли вы являетесь  краткосрочным инвестором,  то ощущение потерянной прибыли будет преследовать вас всегда, так как в 80-90% случаев после продажи в 10-20-30% прибыли, компания будет продолжать свой рост\\n\\n(6)Инвестируйте по своим планам\\n\\nПредставьте, что ваша цель купить машину дороже на 1 миллион рублей и сделать это в течение 2 лет\\n\\nВы кладете деньги на брокерский счет, условные 3 миллиона и получается, что вам нужно сделать примерно 33% прибыли, чтобы достигнуть того, о чем вы мечтали\\n\\nТаким образом, стоит ли вам вкладываться в компанию под названием Virgin Galactic?\\n\\nОпределенно нет. Но многие забывают о своих планах и меняют их на ходу, потом жалея и виня себя в том, что отошли от заданного маршрута\\n\\n\\nЕсли вашей целью являлось делать 15% в год, то вы должны были вкладывать деньги в менее волатильные компании и более предсказуемые, где ваши кровные не могут быть заблокированы на большое количество времени\\n\\nРиски есть везде, но нужно правильно их оценивать\\n\\nМожно вложиться в FB в 2018 году и больше года находиться в минусе, но шанс этого был куда ниже, чем покупать SPCE по 60 в феврале и ждать роста до 75-80 прямо сейчас\\n\\nВезде есть своя градация рисков, которую нужно понимать и сопоставлять со своими целями\\n\\nЕсли ваша цель делать 5-10% годовых в долларах, то вкладывайтесь в\\nгигантов США, где высокие дивиденды и стабильный рост на маленькое количество %, все это диверсифицируйте облигациями в $ и живите себе спокойно\\n\\nНо я знаю сотни примеров, когда люди желая видеть такую доходность, становились голодными и боялись упустить возможность и прибыль, поэтому вкладывались в мега-волатильные инструменты, участвовали в IPO и многое другое, чтобы делать не 5-10% годовых, а 50-100%\\n\\nПотом, конечно, жалели, так как не разбирались в инвестициях от слова совсем. Они отошли от своего плана, от своей цели, потерпели неудачу, которая может запросто напрочь отбить все желание инвестировать\\n\\n(7)Никогда не спешите, инвестиции - не уходящий поезд\\n\\nМногие из нас постоянно спешат купить ту или иную компанию, тот или иной актив\\n\\nПо какой причине? В связи с нашим сознанием и воспитанием, у нас есть ощущение, что если это не сделать сейчас, то оно пропадет вовсе или уже будет не так доступно и привлекательно, как было на момент раздумий\\n\\nРешения не должны приниматься хаотично и на эмоциях, а особенно в спешке От наших решений зависит успешность наших инвестиций\\nЕсли вы будете спешить с их выбором, то окажетесь не в лучшем положении\\n\\n\\nЕсли вы видите где-то интересные актив и о нем пишут людей, то начните его\\nизучение, вероятность того, что он уйдет на 10-20-30% выше за несколько дней настолько мала, что о ней можно даже и не беспокоиться\\n\\nСтоит понимать, что каждый актив имеет свои риски, покупая его и не определяя их - вы ставите под удар свои инвестированные деньги\\n\\nМой совет - всегда тратьте время на анализ. Лучше купить компанию на 5% дороже, чем она была, но понимая, что она этого заслуживает, чем купить мусор и потом жалеть об этом\\n\\nПомните - поспешишь, людей насмешишь\\n\\n(8)В этот раз все точно будет по другому\\n\\nТакие слова я слышу из раза в раз от заядлых оптимистов, которые считают, что экономика меняется и в следствие этого меняется и ее цикл, но это не так\\n\\nДа, экономика несомненно меняется и спорить с этим глупо, да я и сам считаю также, но экономические циклы вариативны и их не волнует, что именно сейчас заставляет экономику расти, они лишь отражают следствие этого роста\\n\\nУ циклов есть 4 стадии ( иногда выделяют больше, но это основные ) : рост, пик,\\nспад, депрессия\\n\\nСколько бы вам не твердили, что в этот раз все будет совсем по другому, будет так, как написано в цикле\\n\\nПонимаете, экономика не работает по другому\\n\\nЦиклы не работают по другому, у всего есть одна общая концепция\\n\\nДаже, если вам кажется, что в этот раз не будет никакой стадии спад или депрессии, то в 99.9% случаев вы ошибаетесь. 0.01% мы оставляем на реальное отсутствие депрессии, такое и правда возможно, так как сейчас экономика стала слегка сильнее, чем в нулевых и показывает нереальные скорости восстановления после резких падений\\nНикогда не стоит полагаться на то, что в этот раз все будет по другому Наоборот, примите тот факт, что рынок - отражение экономики, а она циклична.\\nПусть циклы бывают разными, но : рост, пик, спад и депрессия существовали всегда\\nи будут существовать, иначе теряется момент риска\\n\\n\\n\\n(9)Не ловите падающие ножи\\n\\nВ нашей человеческой психологии можно выделить забавный момент, который вы можете заметить и на себе\\n\\nНас больше привлекают те активы, которые менее потенциальны к росту Почему так? Не знаю, я не психолог, но это факт\\nМы любим покупать компании, которые упали на 50%, а не покупать те, которые за это же время показали рост на 50%\\n\\n\\n\\n\\nПо сути данный эффект можно назвать \\"эффект падающих ножей\\" и связан он в\\nосновном с тем, что дешевое нам кажется более привлекательным, чем дорогое\\n\\nЕсли компания упала на 30%, то дальше будет отскок и рост. Почему? Вы задавали себе такой вопрос? У компании мог случиться фундаментальный сдвиг и потенциал пропал на года вперед, но нам все равно кажется, что актив отличный\\n\\nКогда реально потенциально растущие активы нам кажутся не очень, ведь они уже и так выросли\\n\\nНам кажется, что мы должны искать какие-то ракеты, чтобы заработать денег, но это не так\\n\\nЯ полагаю, что в 2016 году многие думали, что падать RIG больше некуда, но какого было их удивление, когда через 5 лет компания упала еще на 75% ( по текущей цене )\\n\\nПочему? Потому что актив-мусор, для чего его покупать? Очередное казино","image":"/media/images/theme_18_lesson_23_outline_0.png"},{"text":"За то же время с 2008 по 2016 года Apple показала рост на 350%, явно казалась\\nинвесторам переоцененной и вообще компания не очень...Она ведь даже не упала на\\nмиллиард процентов, о чем речь?\\n\\nНо, как показало время, с 2016 года она прибавила еще 450% до текущего момента, в то время, как RIG потеряла 75%\\n","image":"/media/images/theme_18_lesson_23_outline_1.png"},{"text":"Понимаете, какие выводы стоит делать?\\n\\nРастущие компании будут продолжать рост с большей вероятностью, чем падающие отрастать обратно\\n\\nДа, вы можете попасть и поймаете сотни процентов прибыли по таким компаниям, как RIG, но в основном вы будете на таком только терять\\n\\nИ сразу же можно вернуться к азарту в инвестициях, подобного рода активы и есть азарт, так как вы отключаете рациональность вашей идеи и включаете лишь желание заработать сотни процентов на \\"реально недооцененной компании\\"\\n\\nЭто ошибка и чем раньше вы это поймете, тем скорее начнете зарабатывать\\n\\n(10)Не стоит полагаться на предыдущие успехи и гарантировать такое же в будущем\\n\\nТакая ошибка также встречается среди инвесторов\\n\\nМы часто думаем, что если компания показала рост на 100% за месяц, то следующий месяц у нее будет ни чуть не хуже, а того и лучше предыдущего!\\n\\nЭто огромное заблуждение, которое приведет ваши инвестиции к полному краху,\\nколлапсу\\n\\nВы должны понимать, что предыдущие результаты никаким образом не влияют на будущие, так устроен рынок\\n\\nДопустим компания FB выросла на 80% за полтора года с 2016 по 2018, но в\\nследующие полтора года она не прибавил ни процента, а того и вообще показывала\\nминус своим держателям\\n\\nОзначает ли это, что компания плохая? Вовсе нет, но это говорит о том, что предыдущий результат не должен влиять на ваш выбор при анализе будущего","image":"/media/images/theme_18_lesson_23_outline_2.png"},{"text":"На этом основные правила подошли к концу\\n\\nДалее мы будем разбирать конкретные примеры, чтобы в моменте вашей торговли, вам было куда проще анализировать ситуацию и принимать верные решения\\n\\nПредлагаю не тянуть и сразу перейти к первому из них, который является достаточно важным и может помочь вам приумножить ваши средства в несколько раз","image":""}]	novyj-urok-1415	t	\N	\N	18	465	31
19	0	fb0e315d-c47c-49a8-a785-9ff8c3e2b04f	Торговля по тренду	[{"text":"\\nЧто же есть эта торговля по тренду? Да все просто.\\n\\nТорговля по тренду - расхождение или схождение графика компании между графиком индекса, в котором она занимает весомую долю\\n\\nЕще раз - компания Tesla с весом более 1.5%  индекса растет, пока индекс S&P 500 падает, о чем это говорит?\\n\\nЧто она сильнее рынка в данный момент и если рынок развернется, то она улетит еще выше, а он всегда разворачивается. В этом нам уже поможет анализ временных зон торговли, что тоже очень интересно:)\\n\\nТема будет длинной, поэтому давайте сначала установим правила :\\n\\n1)Если компания растет, а индекс падает - хорошо и она с отскоком вырастет еще больше\\n2)Если компания растет, а индекс растет - нейтрально, тут все логично\\n3)Если компания падает, а рынок растет - плохо, она слабее рынка и при падении улетит в бездну и там канет\\n4)Если компания падает, а индекс падает - нейтрально\\n\\nЕсть некоторые моменты. Иногда компания в течение дня следует четко за индексом, а потом происходит \\"эффект запоздания\\" в ее котировках, это играет нам на руку. Таким образом, при росте рынка у нас компания будет в боковике и начнет рост через 10-20 минут, также с падением. Но это только, если компания до этого следовала рынку и его движению. Если она просто стоит в боковике, пока рынок растет - отрицательно\\nЕсли она стоит в боковике, пока рынок падает - положительно\\n\\nИсходя из логики торговли трендом, мы берем сильные компании, которые занимают\\nвесомое положение в индексе S&P 500 или NASDAQ, смотря что вы выбрали торговать Я торгую SPX 500 и сейчас покажу четкий пример с Tesla, как она следует рынку\\nСлева - движение рынка за выделенный период и справа - движение Tesla за тот же период\\n","image":"/media/images/theme_6_lesson_19_outline_0.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_1.png"},{"text":"Давайте пойдем по анализу графика\\n\\nПеред вами пример, когда SPX находился в боковике ( скрин слева ), а Tesla шла вниз ( скрин справа ), таким образом, при падении рынка мы должны получить сильное падение по Тесле, а при его откупе, мы должны получить боковик и слабый разворот по нашей компании\\n\\nВ этом случае рынок начал снижаться и сейчас покажу, что из этого вышло","image":"/media/images/theme_6_lesson_19_outline_2.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_3.png"},{"text":"После начала падения SPX 500, Tesla моментально на это отреагировала и сильно\\nпошла вниз. При общем падении индекса на 1.2%, Тесла потеряла с того же времени 2.25%, а за весь день 3.3%\\n\\nТаким образом, я показал вам один из вариантов, когда рынок в боковике, а компания падает, перейдем к следующим","image":"/media/images/theme_6_lesson_19_outline_4.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_5.png"},{"text":"Перед вами пример, когда идет запаздывание реакции компании\\n\\nИндекс показал рост к 17:00, а Тесла в это время была в боковике, таким образом, при падении индекса - она будет лететь вниз\\n\\nНо она оказалась запаздывающей в этот день и пришла к росту в 21:00 и обрела свой пик на 2.3% в 21:50 того же дня\\n","image":"/media/images/theme_6_lesson_19_outline_6.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_7.png"},{"text":"Но индекс снижался все это время и продолжил свое снижение и дальше, таким образом, Тесла\\nотреагировала снова с задержкой, которой можно было воспользоваться и встать в шорт-позицию\\n\\nКак мы видим - слева падение индекса, справа Tesla. Тут находится еще один положительный сигнал, который мы сейчас разберем.\\n\\nРынок падает, а Тесла после падения встала на месте и вошла в небольшой боковик. Что означает сильный откуп в момент разворота рынка на рост\\n","image":"/media/images/theme_6_lesson_19_outline_8.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_9.png"},{"text":"Обычно Tesla растет на 100% сильнее рынка, то есть в два раза\\n\\nА в этот раз почти в 3 раза, то есть на 200% сильнее\\n\\nЧувствуете, как все условия коррелируют друг с другом? Начинаете понимать торговлю по тренду? Надеюсь, что да!\\n\\nТаким образом, откуп Теслы не заставил себя долго ждать\\n","image":"/media/images/theme_6_lesson_19_outline_10.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_11.png"},{"text":"Сейчас мы разобрали с вами следующие варианты :\\n\\n1)Индекс в боковике, а компания падает\\n2)Запоздание компании по отношению к индексу\\n3)Индекс падает, а компания в боковике\\n4)Компания движется за индексом Сейчас мы с вами разберем оставшиеся варианты\\nПриступим?\\n\\nПеред вами пример, когда индекс падает вместе с компанией, но потом компания\\nпоказывает силу и при продолжении падения индекса начинает расти. Такой рост вероятнее всего окажется взрывным\\n\\nПросто посмотрите, за одно и то же время Тесла упала в 7 раз сильнее! Давайте посмотрим, что будет дальше\\n","image":"/media/images/theme_6_lesson_19_outline_12.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_13.png"},{"text":"Но взгляните, что было после\\n\\nКогда рынок продолжил падать и показывал мини-откупы, Тесла летела вверх. На момент падения индекса на 0.42%, в то же время Тесла показала 4.3% прибыли. Что же было, кода индекс развернулся?","image":"/media/images/theme_6_lesson_19_outline_14.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_15.png"},{"text":"Тесла показала рост еще на 2.37%, когда индекс сделал всего 0.86%\\n\\nЗа все время, начиная с момента роста, Тесла показала 6.35% прибыли, а индекс 0.56%.\\nРазницу ощущаете? Разобрали с вами еще один пример, когда рынок падает, а компания растет\\n\\nСейчас разберем ситуацию, когда рынок растет, а компания падает. Что же будет, когда рынок тоже начнет падать?\\n","image":"/media/images/theme_6_lesson_19_outline_16.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_17.png"},{"text":"Взгляните на это - рынок растет, а FB падает. Падает на негативных новостях, но кого\\nэто волнует? За 1 день новости редко меняются, скажу даже так - очень редко!\\n\\nПоэтому, как только рынок начинает показывать разворот вниз, можно брать в шорт и получать прибыль. После этого FB повалился намного быстрее, что являлось важным фактором, так как таким образом он быстрее дойдет до точки, когда индекс снова станет для него путеводной звездой","image":"/media/images/theme_6_lesson_19_outline_18.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_19.png"},{"text":"Чтобы понять, как долго может рынок лететь вниз или расти, мы должны\\nвоспользоваться знакомым нам инструментом - Уровнями PIVOT\\n\\nБез них стратегию использовать не стоит, так как вы просто прозеваете выход или вход, таким образом она становится бессмысленной, правильно?\\n\\nНемного правил - лучше торговать движения от S2 до R2. Идеальная проторговка от S2 до P и от R2 до P ( это уже в случае шорта )\\n\\nМожно брать на отскок от уровней S3 и R3 ( в шорт ), если есть знаки поворота. Если нет - ждем, когда прошьет и заходим уже при возвращении и пробитии в нужную нам сторону уровней S3 и R3\\n\\nДавайте пробовать!\\n","image":""},{"text":"На скрине ниже вы видите пример, как\\nнужно было торговать по индексу.\\nСмотрим куда направляется индекс и берем цель на 2 уровня выше или на 2 уровня ниже. В случае на графике слева, мы просто проторговали от зоны P до зоны R2, в случае справа, мы подождали, пока график зайдет наверх за уровень R3 и начнет возвращаться, чтобы мы могли зайти в шорт до уровня R1\\n\\nТут также действует правило закрепления свечей ( их должно быть 3 )\\n\\nНо мы торгуем не индекс, а компании, давайте посмотрим, что было с FB в это же время\\n","image":"/media/images/theme_6_lesson_19_outline_21.png"},{"text":"Это сделки, которые происходили в то же время\\nна графике ФБ\\n\\nПервую сделку мы совершаем просто по той причине, что ФБ находится в индексе и следует за ним. Поэтому при росте - берем в рост, если компания показывает повторения движений графика, как в нашем случае\\n\\nВо втором случае мы уже используем правило, которое изучили в этом уроке - индекс в боковике, а компания падает = компания упадет при развороте рынка вниз\\n\\nСмотрим предыдущий скрин. Индекс начинает падать, ФБ уходит очень низко\\n\\nПрибыль с каждой сделки по 2%\\n","image":"/media/images/theme_6_lesson_19_outline_22.png"},{"text":"Таким образом, мы можем торговать по тренду\\n\\nТакже, здесь можно использовать временной фактор. Есть статистика по времени отскоков и сливов, которую я вам предоставлю в конце всего блока по ТА\\n\\nСейчас давайте подведем итоги по индикаторному анализу Сложно торговать? Вовсе нет!\\nМы изучили важнейшие индикаторы и связки, которыми можно пользоваться, также\\nпоняли, как торговать по тренду\\n\\nВы можете сами составлять свои связки, но и полный список связок вам будет предоставлен в конце этого блока, вместе со временным фактором\\n\\nПредлагаю вам перейти к графическому анализу\\n","image":""}]	novyj-urok-3925	t	\N	\N	6	329	\N
10	4	944e653d-a13d-485a-9ea4-0b2492abebfe	Финансовая отчетность	[{"text":"В данном блоке мы будем рассматривать финансовую отчетность с двух сторон 1 - готовая фин. отчетность ( далее просто Ф.О. )\\n2 - определенные моменты из первоначальной Ф.О. на SEC\\n\\nПредисловие - отчетность это очень важная составляющая анализа компании. Из двух интерпретаций выше я больше ориентируюсь на первую. Почему? Потому что из второй мы уже получили все самое необходимое в мультипликаторах, тратить свое время на счет того, что уже посчитано, я не очень хочу\\n\\n\\n\\n\\nГотовая Ф.О. находится на том же сайте, где мы смотрели рентабельность и все\\nмультипликаторы - investing.com\\n\\nКак раньше, мы должны открыть любую компанию, которая нас интересует и нажать на financials, а затем на earnings и получим следующее","image":"/media/images/theme_3_lesson_10_outline_0.png"},{"text":"Я делал поиск по Tesla,\\nсоответственно получил при нажатии диаграмму за последние 4 отчета и последний отчет в цифрах.\\nНа которых я вижу, что Tesla отчиталась лучше, чем от нее того ожидали аналитики и получила 50% сверху к ожиданиям по EPS и +-5% сверху по выручке. Таким образом, понимая, что EPS = прибыль на акцию, мы понимаем и то, что прибыль у TESLA растет, что является важным показателем","image":"/media/images/theme_3_lesson_10_outline_1.png"},{"text":"листнув ниже, мы увидим похожую\\nтаблицу, нажимая постоянно Show More - мы будем получать более старые результаты по отчетам\\n\\nДля чего нам это? Чтобы сделать выводы на счет развития компании за весь промежуток, но желательно за последние 5 лет, так как нам важно понимать, насколько она может быть интересной в будущем и есть ли у нее та самая динамика роста и развития","image":"/media/images/theme_3_lesson_10_outline_2.png"},{"text":"Разберем на конкретном примере, который был на предыдущем слайде, а точнее Tesla\\n\\nМы видим, что в Мае 2016 года выручка составляла 1.15 миллиарда долларов, а прибыли не было совсем, так как EPS отрицательный\\n\\nПочему так могло быть? Есть выручка, но нет прибыли - банальное развитие и расширение компании. Помните, мы говорили с вами про компании, которые являются технологичными или просто стремятся к расширению своего влияния в отрасли, Tesla демонстрировала именно это\\n\\nЧто мы видим дальше. Выручка растет, а в октябре 2019 года появляется стабильная прибыль, которая в основном бьет все ожидания аналитиков, кроме одного отчета. Этот отчет вышел на момент  списания  400.000  машин  из-за  дефекта  мульти-панелей внутри автомобиля ( дисплеи )\\n\\nВ итоге мы приходим к 12 миллиардам выручки и по прогнозам тех же аналитиков через пару кварталов мы увидим почти 15\\n\\nНе могу сказать, будет так или нет, им виднее, я Tesla не держу и не особо анализировал ее финансовые показатели, но если брать исключительно динамику развития - для долгосрока отличная компания, с учетом развития альтернативной энергетики\\n\\nНо Tesla это результат недооцененности до ее взлета по показателям, а не после. Есть же компании, которые не оценены по достоинству и в наше время. Они имеют прекрасные отчеты и динамику, но инвесторы распродают их акции по тупым причинам, за такое надо хвататься\\n\\nОдними из примеров будут мои сделки в августе этого года по LYFT и UBER\\n","image":"/media/images/theme_3_lesson_10_outline_3.png"},{"text":"","image":"/media/images/theme_3_lesson_10_outline_4.png"},{"text":"Перед вами два скрина, где на левом - отчетность LYFT, на втором - график LYFT\\n\\nВ следующем слайде разберемся, почему покупка была потенциально прибыльной\\n\\nУчитывая специфику бизнеса ( в основном такси ), мы должны понимать, что\\nкоронавирус очень сильно ударил по компании и прервал восходящую динамику в отчете на май 2020 года, но далее шло четкое восстановление своих позиций и дальнейшее развитие. За полтора года компания вернула себе прежние показатели и уверенно идет вперед, как танк\\n\\nЧего только стоит одна динамика EPS, да и выручки за последний год-полтора Теперь посмотрите на правый скрин - минус 30% за полтора месяца, а знаете на чем?\\nСуд Калифорнии признал работников компании не партнерами, а именно\\nсотрудниками, за которых нужно платить и страховку и налоги и многое другое, а все это время, как и везде ( у нас в РФ также ) - те же таксисты являются не сотрудниками, а партнерами, которые имеют статус самозанятого и спокойно работают, но это уже совсем другая история\\n\\n\\n\\nТаким образом, мы получаем два фундаментальных фактора : 1) несерьезность новости,\\nтак как по аналитическим данным ( из открытых источников ) на Калифорнию приходится не более 12%  выручки компании, так много, ведь она является одним из крупнейших штатов. Также, была подана апелляция на изменения решения суда под предлогом полного ухода из штата сервиса LYFT и такая же ситуация с UBER\\n2)рост выручки и прибыли компании, положительная динамика и явное расхождение\\nрезультатов\\n\\nЧто я имею ввиду - акции упали на 30%, хотя даже в худшем случае компания потеряет 12%  выручки, может чуть больше\\n\\nИнвесторы переоценили риск и затем последовал выкуп, на котором я заработал хорошие деньги, также, как и те, кто покупал вместе со мной\\n\\n\\n\\n\\n\\nДанный тип анализа мы будем проходить немного позже, пока я лишь рассказал про его структуру\\n\\nВедь здесь также есть доля Технического Анализа, которую пока что я не посчитал нужным раскрывать\\n\\nЕсли брать вкратце : 1) новость не соответствует падению 2) положительная динамика роста и развития компании = возврат вверх до адекватного уровня\\n\\nДальше я хочу показать вам пример компании-реверсивной схемы, когда все падает, а котировки растут и то, к чему это приводит\\n","image":""},{"text":"Внимательно смотрим на график и\\nпытаемся проанализировать ситуацию\\n\\nКомпания GTHX - фарма, но никто не отменял значимости отчетов\\n\\nВидите, как резко взлетает до февраля на очень сильном отчете и новости о подтверждении их препарата от FDA, но что дальше? Негатив со стороны инвесторов, можно даже не разбираться чем он вызван ( в нашем случае, так как мы просто проводим корреляцию ), просто взглянем на график и отчетности\\n\\nИ самый интересный момент - все было правильно, отчетности падают - компания летит вниз\\n","image":"/media/images/theme_3_lesson_10_outline_6.png"},{"text":"","image":"/media/images/theme_3_lesson_10_outline_7.png"},{"text":"Но вот - 5 мая и отчетность в очередной раз ухудшается, а компания не падает, а растет\\n\\nЧто я имею ввиду под словами ухудшается : 1) ДИНАМИКА, только она имеет вес.\\nАналитики могут занижать и завышать ожидания по отчетам, а динамику не проведешь. Выручка падает - прибыль стоит на месте, а в тенденции только падает 2) Посмотрите на EPS, ожидания по нему катятся вниз, а инвесторы этому радуются\\n\\nЧто мы получаем в итоге?\\n\\nПосмотрите на график и все поймете\\n\\nПричин тут масса, конечно же, не только отчеты, но они играют большую роль.\\nЗамечая динамику и тенденцию развития компании, мы можем делать выводы на счет реальной ее стоимости и рисков. Стоит ли покупать компанию на ожиданиях по FDA, когда она без этого ничего не представляет? Стоит ли покупать компанию, которая имеет нисходящую тенденцию развития, стоит ли покупать компанию, которая решила пойти против фундаментальных факторов? Решать только вам, но я не стану\\n\\n\\n\\n\\nНо обязана ли расти компания, которая имеет стабильное развитие и рост\\nприбыли/выручки? - Нет, это лишь один из факторов, который помогает нам понять, что ее оценивают не по достоинству и упускают нужные факторы\\n\\nОценка компании по ее финансовым отчетам = добавочный пункт к общему анализу, но не самостоятельная единица полной оценки\\n\\nВ целом, в ФА и ТА нет самостоятельных единиц, посмотреть на которые вы скажете - тут 100%  надо брать в лонг/шорт\\n\\nНадо анализировать компании комплексно, а мы с вами по этому еще пройдемся и не раз\\n","image":""}]	novyj-urok-6197	t	\N	\N	3	119	25
24	2	c0a9908d-b22d-45f9-b100-aedc2e94ef29	Ждем цену до последнего!(?)	[{"text":"Стоит ли ждать своей цели до малейшего цента или лучше забыть про\\nтакой подход к инвестированию?\\nЭтот вопрос мучает многих уже несколько веков Великие инвесторы писали о нем в своих книгах неоднократно и\\nосновываясь на своем собственном опыте и на словах людей вышестоящих, я делаю некоторые выводы, которыми делюсь с вами\\n\\nДавайте сразу разберем конкретный пример, чтобы вы вообще понимали, о чем речь\\n\\n\\n\\n\\n\\nВы решили купить компанию AMD по цене в 100$ за акцию, цена на данный\\nмомент составляет 102$ за акцию, ваши действия?\\n\\n1)Вы купите, не смотря на 2$ разницы\\n2)Вы не купите, так как желаемая цена покупки на 2$ ниже\\n\\nДанную ситуацию стоит рассматривать с двух сторон : 1) со стороны краткосрочного трейдера, где ответ однозначен - ждать 100$, так как там находится какой-то из важных уровней, а трейдер такого плана не зарабатывает много % и 2$ могут сыграть свою разницу 2) со стороны инвестора, который допустим инвестирует на 1-3 года, а то и дольше\\n\\n\\nДавайте пораскинем мозгами, стоит ли инвестору ждать 100$ или стоит сразу\\nкупить по 102$\\n\\nНе буду вас томить - не стоит ему ждать эти несчастные 100$, так как 2% разницы не являются ключевым моментом при покупке на срок хотя бы от 1 года, когда прибыль считается десятками таких процентов\\n\\nОсновное правило для инвесторов - не быть жадными. Если компания и правда стоящая, то она покажет вам большие проценты и эти 2% не будут даже замечаться на фоне заработанного, а если вы сжадничаете, может случиться ситуация описанная в книге \\"Обыкновенные акции и необыкновенные доходы\\" Филипа Фишера\\n\\n\\n\\nИстория повествуется о двух людях, один из которых является инвестором, а второй финансовым советником\\n\\nОднажды, этот финансовый советник предложил купить акции интересной компании на длительный срок с большими целями, на момент предложения цена была условные 52 доллара за акцию\\n\\nНо инвестор сказал следующее - я не хочу покупать так дорого, я считаю, что акция не должна быть куплена дороже 50.25$\\n\\nТаким образом, он приказал поставить ордер на покупку в том случае, если цена коснется этого значения\\n\\nС одной стороны сумма покупки акций компании данным инвестором была весомой и разница в 4% достаточно большие деньги\\n\\nКогда цена компании пришла в зону 50.50$, что на 25 центов больше, чем хотел купить инвестор, финансовый советник еще раз предложил приобрести пакет акций по заданной цене\\n\\nНо инвестор отказался, так как уже почувствовал себя очень умным аналитиком и по прежнему не собирался платить за акцию этой компании больше, чем назвал изначально\\n\\nКак вы  понимаете,  итог этой истории очевиден Инвестор никогда не дождался цены, которую назначил\\n\\n\\n\\n\\n25 центов жадности не дали заработать инвестору сотни тысяч долларов прибыли, так\\nкак он : 1) посчитал себя самым умным 2) оказался жадиной и не знал основных принципов инвестирования\\n\\n25 центов разницы это меньше 0.5%, согласитесь - смешно?\\n\\nКонечно, смешно! Но разве у вас не было таких ситуаций? Думаю, что были И у меня были, что ж тут греха таить\\nНо главное - понять ошибку и больше ее не допускать, а не пытаться оправдать свои\\nдействия ошибками других, понимаете, как все в психологии связано?\\n\\nЯ принял этот урок, как должное и одной из последних моих сделок, которые это\\nподтверждают - TDOC\\n\\nЯ хотел взять эту компанию на касании S1, но когда она стала подходить к нужной зоне, я взял ее дороже и не дожидался этого бесполезного касания\\n","image":"/media/images/theme_18_lesson_24_outline_0.png"},{"text":"Пусть этот урок и пример из книги Фишера поставят вас на путь истинный, ибо\\nдопускать ошибки связанные с психологией инвестирования является недопустимым\\n\\nПочему?\\n\\nПотому что можно допустить ошибку при анализе, можно не так понять смысл индикаторов или волн, но действовать против логики не является рациональным\\n\\nПоэтому, я советую вам со всей серьезностью относиться к теме психологии инвестирования и пытаться запомнить каждый пример, который был до этого и будет далее\\n","image":""}]	novyj-urok-1603	t	\N	\N	18	466	41
25	3	6a2c6dea-daca-4948-b456-fb19582b9362	Переиграть рынок	[{"text":"Кажется, как можно переиграть рынок? Что значит \\"переиграть рынок\\"?\\n\\nВсе просто. Это выражение подразумевает чрезмерную веру в свой анализ и свои предположения, даже если она основана на реальных фактах, не стоит возводить ее в абсолют, так как вероятность, что она ошибочна, имеется\\n\\nДавайте разберем конкретный пример, который касается данной темы и вы сразу можете узнать в нем себя\\n\\nМногие насладились примером из фильма, где группа инвесторов переиграла рынок и\\nпредсказала его падение в 2007 году Фильм носит название \\"игра на понижение\\"\\nНо мало кто помнит или знает, что прежде, чем персонажи из фильма ( и реальные\\nлюди, которых играют актеры ) забрали огромную прибыль, они сидели в таких минусах, что едва ли кто-то из нас смог бы это переждать\\n\\nУ них была идея, которая основывалась на фактах, они заработали на своей идее, но я думаю, что не только они это заметили\\n\\nЧто я имею ввиду? В истории говорится о нескольких группах людей, которые сделали в 2007 году состояние, но сколько было таких же людей, которые не выдержали минуса и не смогли вписать свое имя в историю фондового рынка?\\n\\nВы даже не представляете сколько таких персонажей, мы о них просто не знаем\\n\\nИстория всегда дает нам знания только о тех, кто \\"победил\\", но о проигравших ни слуху, ни духу\\n\\nМало того, что их идея могла быть ошибочной, так надо было еще переждать колоссальные убытки, вы бы смогли? Только честно\\nЯ думаю, что только 0.0001% из всех, кто это читает, смогли бы это переждать Идея этой главы заключается не в том, что вам не нужно изучать рынок и его\\nструктуру, не в том, что не нужно пытаться найти дивергенции в общем поведении и поведении рынка, а в том, что прежде, чем принять важное решение, вам стоит 10 раз подумать, а правильно ли вы все рассчитали?\\n\\nПосле истории 2007 года миллионы инвесторов пытались предсказать\\nпадение рынка и вставали в шорты индексов и прочего, но сколько из них заработали?\\n\\nв 2015, 2018 годах ожидая такой же провал, как в 2007, люди теряли миллионы и миллиарды долларов, просто пытаясь повторить успех коллег из прошлого\\n\\nКак итог я скажу следующее - развивайтесь и пытайтесь находить дивергенции, но будьте аккуратны со своими выводами, фондовый рынок не любит выскочек и будет до последнего вздоха пытаться вас потопить\\n","image":""}]	novyj-urok-4686	t	\N	\N	18	467	\N
12	6	9dbfe9d8-23b1-40c8-88d2-8d38adee996f	НИОКР	[{"text":"ИОКР - Научно-исследовательские и опытно-конструкторские работы\\n\\nВ прошлом курсе по Ф.О. я не уделил должного внимания этой теме, прошло время и я понял, что ошибался. Я придавал ей значение средней или слабой важности, но сейчас я переквалифицирую ее в высокую\\n\\nПочему? Потому что в условиях нынешней реалии они слишком важны. Сейчас на коне находится та компания, которая дает инвестору надежду на будущее, а не живет настоящим. Именно НИОКР и будет отражать реальную действительность и динамику компании в этом направлении\\n\\nПредлагаю сначала немного разобраться, в чем же суть данного показателя\\n\\nОна состоит в следующем - чем больше траты НИОКР у компании, тем больше средств уходит на новые разработки : лекарства, технологии, новые продукты и прочее\\n\\nЧем \\"прогрессивнее\\" будет продукт и чем инновационнее, тем активнее пользователь будет его приобретать\\n\\nМы живет в век технологий, когда бумажные книги заменяются электронными носителями, а бензин - электричеством\\n\\nТаким образом, новые продукты становятся также приближеннее к желанию пользователя\\n\\nПоэтому смотреть НИОКР компании является очень важной составляющей Ф.А.\\n\\nГде вообще его смотреть?\\n\\nКонкретно траты на НИОКР мы будем смотреть в отчетности компании ( из предыдущего урока )\\n\\nТам же мы будем сравнивать траты по сравнению с периодами предыдущего года и анализировать, понимает ли компания, что пора развиваться или нет\\n\\nНо это еще не все. Мы проверим, а что же такого она изобрела и на что были потрачены эти деньги в реальности\\n\\nПредлагаю перейти к технологической компании Apple, которая последнее десятилетие фигурально являлась одной из передовых в данном направлении\\n\\n\\nДействия аналогичные :\\n1)заходим на gov.sec\\n2)вводим название/тикер компании в поиск\\n3)нажимаем на последний отчет 10-Q\\n4)ищем оглавление и жмем на первую строчку","image":"/media/images/theme_3_lesson_12_outline_0.png"},{"text":"Листаем чуть ниже и находим следующее - операционные расходы \\"исследования и разработки\\"\\n\\nСправа есть значения в сравнениях с периодами предыдущего года\\n\\nВ нашем случае компания Apple потратила на НИОКР за 3 месяца на 20.1% больше, чем годом ранее\\n","image":"/media/images/theme_3_lesson_12_outline_1.png"},{"text":"Если рассматривать те же данные, то мы увидим интересный фактор, который также\\nможно применять в своем Ф.А.\\n\\nОбъем чистых продаж, по сути это и есть выручка. Таким образом, мы можем посчитать НИОКР к выручке и получим, что Apple потратила 7.02% на НИОКР от выручки, что является очень неплохим показателем. Но опять же, все познается в сравнении\\n","image":"/media/images/theme_3_lesson_12_outline_2.png"},{"text":"Перед вами располагается компания FaceBook, давайте сравним расходы на НИОКР с\\nApple\\n\\nДоход компании 29.077, а расход на исследования и разработки 6.096, таким образом имеем формулу ( исследования и разработки/выручка ) * 100 = 21%\\nЭто соотношение явно бьет Apple, еще можно сравнить с маркетингом и продажами, расход на которые около 11%\\n\\nПредставляете, какое щедрое у FB руководство? Компания смотрит в будущее, она понимает, что на рынке победит лишь тот, кто даст пользователю лучшие условия","image":"/media/images/theme_3_lesson_12_outline_3.png"},{"text":"Иногда показатель НИОКР важнее всех остальных вместе взятых\\n\\nЕсли компания не имеет прибыли, а всю свою выручку ( условно ) направляет на разработки и исследования, то : 1) она может прогореть с минимальным шансом, если все пойдет не по плану 2) с большим шансом в перспективе добьется именно тех высот, о которых так грезила\\n\\nИ поверьте, это не звучит банально, это жизнь и так все и происходит\\n\\nЕсли вы жадничаете, не хотите отдавать свои кровные за свою же идею, то может идея и не такая уж хорошая? Может вы в нее не так уж и верите?\\n\\nПоймите, это вселенское правило - чем больше отдаешь, тем больше получаешь, также работает и с НИОКР. Эти разработки помогают пользователям в выборе продукта определенной компании\\n\\nКак пример - взгляните на одну из моих любимых компаний SalesForce ( CRM )\\n\\nОна занимается CRM системами, что является очень перспективной темой в будущем.\\nВпервые я взял ее в декабре 2020 года и долго ждал хотя бы плюса, а не минуса.\\nСейчас я имею 35% плюса по позиции в долларах и доволен, но держу дальше, так как я вижу, как сильно они стремятся к развитию и шанс на победу в моей сделке намного выше, чем, если бы они не развивались","image":"/media/images/theme_3_lesson_12_outline_4.png"},{"text":"авайте просто посчитаем наш показатель - ( исследования и разработки/выручку ) *\\n100 = 16% ( отличный показатель )\\n\\nНо прошу учесть и затраты на маркетинг и продажи, который составляет 43%. Вы можете себе такое представить?\\n\\nСуммарно оба показателя дают 59% от выручки. Все эти деньги уходят в развитие компании, в разработки и маркетинг, понимаете?\\n\\nВот так сильно компания хочет стать лидером, вот так сильно они не допускают конкурентов ( Oracle, Google ) на первое место, поэтому я в них и вкладываюсь\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nЯ думаю, что вы поняли всю важность этого показателя и впредь будете смотреть на\\nнего и возможно, анализировать, отталкиваясь от его значения\\n\\nЯ не знаю, есть ли такая формула в реальности, где мы ищем % НИОКР в выручке, но стандартное значение должно быть около 10%, а также смотрите по отрасли среди конкурентов, это еще важнее\\n\\nДальше, мы будем с вами проходить тему, которая имеет косвенное отношение конкретно к Ф.А, но она очень важна, для понимания рынка","image":""}]	novyj-urok-2450	t	\N	\N	3	135	\N
11	5	4fd56841-a6a7-40f2-8330-eae0ed900406	Данные из отчетов	[{"text":"Данные этой главы будут сильно разниться с предыдущей, кто бы что не подумал, так как схожи только названия\\n\\nСейчас мы не будем смотреть прибыль и выручку, а посмотрим, откуда появляются по ним данные и что еще там можно найти ( также, данные по всем мультипликаторам )\\n\\nДанный источник носит именитое название SEC - https://www.sec.gov/\\n\\n\\n\\n\\n\\nПерейдя на него, мы попадем на что-то непонятное, но на самом деле,\\nнас интересует только окошечко для поиска в верхнем правом углу\\n\\nКуда мы должны ввести интересующий нас тикер любой компании с американской биржи, а затем нажать на него\\n\\nСмотрите пример ниже","image":"/media/images/theme_3_lesson_11_outline_0.png"},{"text":"Нажав на название компании, нас перекидывает на новую страницу, где мы уже имеем\\nвыбор с плане отчетов. Их есть несколько видов : 1) 10-Q и 10-K - квартальный и годовой отчеты. Они показывают нам все цифры, которые произвела компания за это время, а также риски, судебные дела и многое другое 2) 8-K - отчет, который может выйти в любое время и несет в себе \\"экстренную\\" информацию, чтобы предупредить инвесторов, допустим, о смене руководства","image":"/media/images/theme_3_lesson_11_outline_1.png"},{"text":"Допустим, нас интересует последний квартальный отчет у Tesla - 10-Q\\n\\nОн самый верхний от 27 июля, нажимаем на него и переходим уже на страницу самого отчета, сейчас я покажу, как удобнее их читать при всем своем желании!","image":"/media/images/theme_3_lesson_11_outline_2.png"},{"text":"Листаем немного ниже и находим оглавление, где расписаны все темы, касающиеся\\nэтой компании. Можете включить перевод и без проблем все поймете\\n\\nРаскрою секрет - первая часть до item 4 в основном служит для собирания информации для мультипликаторов ( в основном )\\n\\nПоэтому, если вы хотите узнать о компании что-то интересное, посмотрите вторую","image":"/media/images/theme_3_lesson_11_outline_3.png"},{"text":"Например, правовые разбирательства. Скажу честно - редко что-то тут встретишь, но\\nиогда находишь такие вещи, от которых волосы встают дыбом и ты думаешь - почему об этом никто не пишет, это никто не знает?\\n\\nУ Tesla нет серьезных разбирательств, но как вы знаете, суды очень сильно могут влиять на котировки, как в моменте, так и на длительной дистанции, если судятся за что-то серьезное. Поэтому зайти и прочитать небольшой текст не будет сложным перед покупкой очередной компании","image":"/media/images/theme_3_lesson_11_outline_4.png"},{"text":"Также, есть риски, которые описываются сразу же в следующей главе\\n\\nВ предыдущем своем обучении по Ф.А. я придавал им значение, но сейчас даже не читаю\\n\\nСпустя много времени я понял, что в основном эти риски одинаковые и никто не будет писать реальную угрозу, пока она не произойдет, ты должен найти и обнародовать ее сам\\n\\nВ основном там пишется \\"нытье\\" о том, что \\"вот, мы не знаем, будет ли популярным Tesla через 5 лет, принимайте риски\\" или \\"мы не знаем, дадут ли нам штраф за экологические нарушения на заводах\\" и прочие клише, которые пишет каждая компания\\n\\n\\n\\n\\n\\nЕсть достаточно интересный пункт, который я показываю вам ниже\\n\\nВ чем можно увидеть, что компания делает вбросы акций, то есть увеличивает их количество, тем самым размывая долю каждого из акционеров и проводя к сокращению котировок\\n\\nБудьте внимательны к этому пункту, если торгуете в краткосрок, если смотрите только в перспективу - он вам не нужен\\n\\n","image":"/media/images/theme_3_lesson_11_outline_5_ah9boHQ.png"},{"text":"Отчетность формы 8-К\\nОтчетность 8-K - это такой тип отчетности, который предоставляет нам срочные \\"новости\\", а точнее перемены в компании\\n\\nЭтот отчет публикуется в любой день, не бывает квартальным или годовым. Что-то происходит - выкладывают\\n\\nОбычно это назначение нового человека на должность и увольнение старого или его понижение\\n\\nУметь читать такие отчеты не надо. Как только он выходит - вы его увидите и узнаете в чем дело\\n\\nИсходя из изложенной новости, мы будем делать определенные выводы\\n\\nДля примера взята компания $VLDR\\nОтчетность формы 8-К находится прямо над 10-Q/K\\nНажимая мы видим, что только за лето и первые 9 дней осени мы получили 5 важных уведомлений от компании, давайте посмотрим, что в них","image":"/media/images/theme_3_lesson_11_outline_6.png"},{"text":"Мы сразу видим важную новость, что идет разбирательство против бывшего директора, который украл и использовал 300.000 данных компании в своих целях. Суд говорит, что он на стороне VLDR, если специалист признает реальное использование украденных материалов на Электронных носителях вора ( Дэвида Холла )\\n\\nЯвляется ли данная информация важной? Разбираемся дальше!","image":"/media/images/theme_3_lesson_11_outline_7.png"},{"text":"Первое, что можно вынести из данной новости - компания могла потерять на\\nнегативе от такого воровства. Потерять котировки имею ввиду, упасть в цене, так как инвесторы расценили такой случай, как слабую защиту систем и распространение огромной базы информации ( это я так думаю )\\n\\nНо, если посмотреть в будущее, то суд будет выигран, если VLDR не пытались оклеветать бывшего директора ( вряд ли ), а выигранное дело всегда дает позитив\\n\\nПокупать компанию на день суда, конечно же, дело неблагодарное, поэтому такую информацию лучше оставить у себя в голове и использовать при\\nдальнейшем анализе\\n\\nВ одном из следующих отчетов мы встречаем увольнения и назначения на важные\\nдолжности с подробным описанием нового директора, чтобы мы понимали, кто это и на что способен. Так как смена руководства всегда является важной информацией","image":"/media/images/theme_3_lesson_11_outline_8.png"},{"text":"Таким образом, мы можем посмотреть все реальные цифры, которые уже потом преобразуются в мультипликаторы. Можем также их и посчитать при большом желании. Можем посмотреть, что же нам говорит компания, о чем таком срочном хочет предупредить и многое другое\\n\\nИз важного : 1) можем посмотреть судопроизводственные моменты 2) можем посмотреть размытие доли держателей акций 3) можем узнать о резких переменах\\n\\nОтчетности важная штука, но большая их часть интерпретируется через мультипликаторы в 100 раз удобней, чем напрямую через каждый показатель\\n\\nВы можете делать так, как вам удобно, это лишь моя рекомендация к использованию определенного ресурса\\n","image":""}]	novyj-urok-7742	t	\N	\N	3	127	\N
26	4	ac938fb0-5f0b-4ece-8591-699581a4bd56	Кто главный враг?	[{"text":" Единственный ваш враг - вы сами\\n\\nЭто выражение носит в себе глубокий смысл, который нужно раскрыть и понять на конкретных примерах, чтобы находиться в контакте с самим собой и понимать, когда за вас говорят эмоции, а когда разум\\n\\nДавайте сразу перейдем к примерам, чтобы не заниматься пустой\\nболтовней\\n\\n\\nПредставьте, что вы взяли компанию FB в 2017 году в расчете на рост, что вполне\\nлогично\\n\\nПосле чего вы получили прибыль в 50%, но поскольку ваша позиция долгосрочная, вы не продаете и держите дальше с условной целью 500%\\n\\nНо вот в 2018 году случается обвал, который делает из вашей прибыльной позиции\\n-10%\\n\\nПредставьте ситуацию, что у вас в ней 1 миллион долларов и вместо прибыли 500 тысяч вы видите минус 100 тысяч\\n\\nУжасные новости произносятся из каждого утюга и что вам остается делать?\\n\\nВарианта всего 3 : 1) продать в минус 2) оставить, как есть 3) докупить\\n\\nРаскрыть секрет? Примерно 70-75% людей выберут первый вариант, около 20% второй и только меньшая часть третий\\n\\nПочему так? Это наша психология, наше человеческое...\\n\\nНам трудно смотреть на неудачи, мы начинаем вникать в каждое слово, которое слышим везде, где только можно\\n\\nЕсли какой-то хрен с горы скажет вам в такой ситуации, что стоит продать, так как мы пойдем еще ниже и там купить заново, то с вероятностью 80% вы так и сделаете.\\nПочему? Потому что вы потеряны, вы не знаете, как поступить, у вас впервые такая ситуация\\n\\nИ представьте себе, вообще неважно, анализировали вы компанию перед\\nпокупкой или нет, вы не будете верить в ее дальнейший рост и будете думать только о плохом\\n\\nПочему так происходит? Я не знаю, не являюсь психологом, но я знаю одно и очень точно, в такие моменты надо найти контакт с собой и понять, что вы хотели получить и какова вероятность, что ваши цели все еще реальны\\n\\nДля начала, когда у вас произойдет такая ситуация, я советую вам отсечь советников, которые будут болтать отовсюду, только бы что-то сказать\\n\\n99% из них даже не держат никакой позиции по вашей компании и слушать\\nих говор бестолку\\n\\n\\n\\nПлан действий должен быть такой :\\n\\n1)Понять, стала ли компания хуже, если нет ( что вероятнее всего так ), то зачем ее продавать?\\n\\n2)Падал ли фондовый рынок бесконечно вниз, если нет - чего бояться?\\n\\n3)В этой позиции ваши последние деньги на существование? Если нет, то почему не подождать? Если да - вы допустили катастрофическую ошибку\\n\\n4)Есть ли у вас деньги на усреднение? Если да, то почему не купить хорошую компанию по скидке? Если нет, то почему их нет? Ошибка инвестирования\\n\\n\\n\\nНа момент такой ситуации вам следует отключить эмоции и поддаться только\\nразумному мышлению\\n\\nНе стоит думать, что это конец для всего, что вам так не повезло и больше шансов нет\\n\\nЕсли бы человек и искусственный интеллект торговали одни и те же бумаги, то второй заработал бы в 100 раз больше, так как не обладает эмоциями и не стал бы поддаваться панике в те моменты, когда она совсем не нужна\\n\\nВ целом, на фондовом рынке вы должны думать головой, а не сердцем, иначе можете сделать себе хуже\\n\\nКак и было сказано в самом начале - \\"единственный ваш враг - это вы сами\\"\\n\\n\\n\\n\\n\\n\\n\\nЕсли вы хотите, чтобы ваша торговля была успешной, то вы должны\\nпридерживаться собственного плана, иначе для чего он нужен?\\n\\nЕсли вы хотели сделать на FB 500% прибыли - делайте, почему ваше сердце должно помешать?\\nНе стоит делать из себя врага, лучше быть другом и товарищем Всегда полагайтесь на факты, а не эмоции, иначе рано или поздно вы\\nпотеряете столько денег, что это отобьет у вас всякое желание инвестировать","image":""}]	novyj-urok-9365	t	\N	\N	18	468	37
27	5	a18cabfd-88e6-4218-b4fe-e64f3d457be0	Последние правила	[{"text":"Всегда понимайте, что плохое, как и хорошее - рано или поздно заканчивается\\n\\nЕсть одна интересная картинка, которая иллюстрирует данное правило","image":"/media/images/theme_18_lesson_27_outline_0.png"},{"text":"Конечно же, пример выше описывает не просто это правило, но и психологию\\nинвестирования в целом, что на самом деле упрощает мне работу\\n\\nПредлагаю сначала разобрать его, а потом косвенно перейдем к основной теме, вытекающей из будущего изложения мысли\\n\\nВзгляните на картинку еще раз, не напоминает ничего? 19 шагов, которые сделают вас бедными, можно назвать это даже так\\n\\nКогда мы видим рост, который продолжается определенное количество времени, нам сложно войти в позицию морально, так как, как я вам и говорил - нас больше привлекают активы, которые падают, а не растут, в них мы видим меньше опасности обвала\\n\\nМы можем ждать коррекций, чтобы войти подешевле, это основная ошибка инвестора.\\nПочему? Потому что он ждет коррекции без оснований на нее\\n\\nПовторяюсь - если вы проанализировали ситуацию на рынке и сделали выводы, что коррекция может начаться очень скоро, то входить в позиции и правда нет смысла, но если вы просто так для себя решили, что коррекция начнется, потому что компания уже выросла на большое количество процентов, то это дилетантский подход, простите за грубость\\nНо мы собрались, чтобы этот дилетантский подход искоренить, а не развить Таким образом, ожидая коррекцию, которая не придет, мы понимаем, что ошиблись и\\nвходим в позицию, дабы залететь в последний вагон\\n\\nЗнакомо такое выражение? Так вот на фондовом рынке оно встречается повсеместно\\n\\nПоверьте мне, сколько же людей за последний год написали мне с проблемами в\\nих портфелях и 50% минусов были именно из-за жадности. Неспособность оставить мысль о покупке компании приводит к таким результатам, чего же тут удивляться?\\n\\nВернемся к теме - мы входим в позицию и надеемся, что продолжится рост.\\nДалее случается вовсе не рост, а коррекция, где приходится усреднять позиции почти до бесконечности, так как и зарезать актив мы не можем, в связи с жалостью\\n\\nПочему? Мы ведь ждали коррекцию, не дождались ее и принять второе поражение в ряд очень трудно, да и кто этого хочет\\n\\nВ расчете на то, что мы снова ошиблись, начинаем усреднять и усреднять позицию\\n\\n\\n\\nВ какой-то момент усреднение позиции уже кажется сумасшествием, так как\\nминус растет, а денег то уже и нет\\n\\nЧто происходит далее? Моральное выгорание\\n\\nУ разных типов людей оно проявляется по разному, обычно варианта 2 : 1) продаю все к ******** ******* и больше никогда не инвестирую 2) я уже в полном забвении, пусть хоть полностью сгорят эти деньги, но я не продам позицию\\n\\nЕстественно логично, что оба подхода неверные, хоть в случае со вторым шансов выйти в + намного больше, но он не гарантирует вам, что вы не вложились в условный RIG, который только падает без шансов на рост на дистанции\\n\\n\\n\\nЕсли анализировать ситуацию на картинке в начале главы, то второй тип\\nчеловека заработает денег, но это не так :)\\n\\nВероятнее всего, он не продаст на росте и будет ждать сумасшедших процентов, а когда компании в следующий раз уйдет в коррекцию, он уже перейдет к первому типу, так как так долго ждать уже не может\\n\\nА первый тип человека просто потерял свои деньги и в итоге будет перезаходить в надежде на удачу\\n\\nСлишком большую роль отводят удаче в нашем с вами деле, надеюсь вы не\\nделаете также?\\n\\n\\n\\nКакие же выводы - зададите вы мне такой вопрос\\n\\nВыводы очевидные :\\n\\n1)перед входом компанию анализируем\\n2)на волатильные активы ставим стопы\\n3)усреднять надо с умом, а не каждые 5% вниз\\n4)если брали сильную компанию и случилось глобальное падение - продавать не стоит в 99% случаев\\n5)меньше думайте сердцем и больше головой\\n6)не думайте, что умнее всех и не пытайтесь злорадствовать\\n\\nПравила простые, но важные, надеюсь вы усвоите их и торговать станет проще\\n\\n\\nВозвращаемся к хорошему и плохому и то, что они рано или поздно заканчиваются\\n\\nЭто одно из правил, которое вытекает из картинки в начале главы\\n\\nЭто вселенское правило распространилось и на фондовый рынок тоже, конечно же, оно имеет логичное объяснение, которое называется \\"волны\\" или экономические циклы\\n\\nЯсное дело, что падение и рост компании в течение 5-10 дней не является циклом и даже не близко к нему, но это волна, она как и цикл имеет 4 стадии : рост, пик, падение, депрессия, просто они укорочены и необъяснимы\\n\\nВы просто должны понимать, что правило \\"за черной полосой две белых полосы\\" работает на фондовом рынке и все имеет свой конец\\n\\n\\nПод словами \\"все имеет свой конец\\" я подразумеваю соответственно смену трендов. Не\\nможет быть бесконечного нисходящего или наоборот восходящего тренда Рано или поздно первый или второй закончится\\nЧем больше ТФ, тем больше на это требуется времени, но факт есть факт, все рано или\\nпоздно и падает и растет\\n\\nДавайте так, не все, но 99.9% компаний рано или поздно будут падать и отрастать.\\nЕсть примеры банкротств, когда уже ничего не отрастает обратно, к огромному сожалению\\n\\nТакая вот глава, которая подарила вам несколько интересных знаний, я надеюсь!","image":""},{"text":"Понимание инвестирования\\n\\nЕсть одна интересная фраза - инвестирование должно напоминать наблюдение за тем, как сохнет краска или растет трава. Если вам нужен азарт - возьмите 800$ и поезжайте в Лас-Вегас\\n\\nСогласны ли вы с этим высказыванием? Я думаю, что более 80% из тех, кто сейчас читает эти строчки вовсе не согласны или согласны отчасти, но есть один небольшой секрет, который я вам раскрою\\n\\nБолее 90% из тех, кто это читает не имеет прибыли на фондовом рынке и все равно не согласны. Более 95% инвесторов в мире не согласны с высказыванием или согласны отчасти, но не имеют прибыли и не могут даже сохранить свои деньги\\n\\nЭто вовсе не упрек, это лишь мои наблюдения\\n\\n\\nПо своей натуре человек очень азартен, фондовый рынок лишь подогревает его\\nазарт, заставляя совершать те действия, которые вовсе не нужны\\n\\nЛично я согласен с автором высказывания, так как понимаю, что можно трейдить в плюс, можно даже трейдить в плюс на дистанции и это совсем не ново!\\n\\nНо инвестор заработает больше. Инвестор на дистанции сделает намного больше денег, чем трейдер, потому что удерживание позиции позволяет ему зарабатывать сложные проценты\\n\\nЯ не исключаю варианта, что в мире есть и не один десяток трейдеров, которые показывают изумительные результаты, которые во много крат обгоняют доходность S&P 500, да и любого инвестора в целом\\n\\nНо какова вероятность, что одним из них окажется кто-то из нас?\\n\\nСогласитесь, очень маленькая\\n\\nЛично я не могу себя относить к таким. Я неплохо занимаюсь трейдингом, но больше инвестирую в долгую, так как мне так удобнее\\n\\nЯ люблю \\"жить жизнь\\", а не сидеть каждый день у графиков, чтобы доказать себе - я могу также!\\n\\nТрейдинг отнимает огромное количество времени, нервов и что самое главное совсем не гарантирует результат\\n\\nИнвестиции не отнимают время, разве что немного, нервы могут, но меньше, результат также никто не гарантирует, но вероятность положительного исхода куда выше\\n\\nНа самом деле успешного трейдера и инвестора от неуспешного отличает в основном\\nпсихология и  понимание  рынка Вы можете в это не верить, но это так\\nЕще раз - если посадить робота и человека, допустим меня и дать нам одинаковые\\nусловия, дать нам одинаковые знания, робот выполнит работу в 10 раз лучше, так как у него нет эмоций\\n\\nНаша задача, пока не появился искусственный интеллект, который будет зарабатывать нам \\"миллионы миллиардов\\", пытаться быть прототипом того самого робота без эмоций\\n\\nМы должны понимать, что любой зов сердца будет приносить нам скорее убытки, чем прибыли\\n\\n\\nМожно еще десятки и даже сотни страниц обсуждать  психологию  инвестирования,\\nно основные знания  положены  в том,  что было выше\\n\\nПонимание важности психологии большинству из нас приходит только с опытом, а не через литературу или иное чтиво\\n\\nМы  можем знать  сотни правил,  которые уже были доказаны  на опыте других людей,  но в основном надо потерять  свои деньги,  чтобы  усвоить  их железно\\n\\nНадеюсь,  что блок психологии инвестирования  не пройдет даром и вы  примите для  себя  важнейшее правило -  будьте бесчувственным роботом,  которого не интересуют зовы  сердца.  Выполняйте свою  работу четко по плану,  который вы  для себя  же и построили.  Не стоит суетиться  и совершать  необдуманные действия","image":""}]	novyj-urok-620	t	\N	\N	18	469	\N
13	7	3e017a48-5e6b-4be3-a701-7fbccfb641fa	Покупка компаний	[{"text":"Странное название, не находите? Покупка компаний...о чем это он сейчас будет рассказывать? Неужто о том самом...\\n\\nО чем самом я не знаю, но желаю в данной главе поведать вам о простой истине, которую мы будем разжевывать и получать реально полезную и практичную информацию\\n\\nТолько с вашего позволения, начинаем!\\n","image":"/media/images/theme_3_lesson_13_outline_0.png"},{"text":"","image":"/media/images/theme_3_lesson_13_outline_1.png"},{"text":"Что общего и что разного у этих\\nкомпаний?\\n\\nМожете ли вы мне ответить?\\n\\nЧто это за цифры 1 и 2 на первом графике, кто скажет?\\n\\n\\n\\n\\nОдна компания падает и падает, а\\nвторая растет и растет, так вопрос в следующем - как выбрать ту, что будет расти и расти, а не падать и падать\\n\\nКакой такой секрет, который сейчас вам будет раскрыт, существует в нашем деле\\n\\nПеред вами график за 5 лет до графиков выше, компании те же. Сможете ли вы\\nответить на 2 вопроса : 1) какой график к какой компании принадлежит 2) в чем же смысл...?","image":"/media/images/theme_3_lesson_13_outline_2.png"},{"text":"","image":"/media/images/theme_3_lesson_13_outline_3.png"},{"text":"Полагаю, что сейчас ответ очевиден. Если нет, то намекаю - падающее падает, растущее растет\\n\\nПоговорим об этом подробнее\\n\\nПеред вами находились две компании : растущая Apple и падающая Transocean Ltd.\\n\\nТеперь встает вопрос, а в чем смысл, что мы должны были понять?\\n\\nИстина находится на поверхности и я вам ее описал на предыдущем слайде То, что растущее - растет, то, что падающее - падает\\nПонимаете, в этом есть какой-то вселенский смысл\\n\\nПока все вокруг пытаются поймать падающие ножи, вы заработаете куда больше на растущих компаниях. Я заметил и проверил это и на себе. БольшАя часть падающих ножей, которые я подбирал в итоге все равно уходили в минус еще больше и не давали мне нужный результат, а растущие компании росли и росли, им никто не мешал выполнять свою главную функцию. Так вот и вопрос, а в чем же смысл?\\n\\n\\n\\nСмысл в намеке, что не нужно пытаться ловить ножи, куда прибыльнее купить\\nрастущую компанию\\n\\nЧисто математически шанс продолжения ее роста выше, чем шанс полного разворота падающей, таким образом вы и будете получать прибыль, а не ждать, когда же на наконец развернется\\n\\nУчитывая то, что падающие ножи покупают вообще бездумно, то лучше так покупать компании растущие ( не путать с компаниями роста и стоимости, о них позже )\\n\\nПредставьте, пока все вокруг бегают, чего-то ищут,  пытаются  заработать,  можно купить fb, aapl, spot и еще парочку интересных компаний и получить профит? Думаете так легко быть не может? Проверьте\\n\\n\\nПомните, что я лишь пишу свое мнение на этот счет, а не утверждаю, что прав\\n\\nВыбор всегда за вами, но проверьте среди выбранного вами списка компаний ( любой список )\\n\\nСколько компаний из растущих в течение год показали убытка/прибыли, а сколько из падающих убытка/прибыли, вы удивитесь, как это соотношение будет с треском выиграно растущими\\n\\nПредлагаю надолго не зацикливаться на одной простой теме и двинемся дальше. Будем изучать инсайдерские покупки и что они из себя представляют\\n","image":""}]	novyj-urok-1071	t	\N	\N	3	138	27
\.


--
-- Data for Name: learning_lessonrating; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_lessonrating (id, uuid, rate, lesson_id, user_id) FROM stdin;
3	1bc115f5-ad4e-4a69-82fa-b2a08f3ed680	5	5	939
4	fb68717c-74fb-4ead-8965-69006abe23fa	5	6	1365
5	b8cd7615-7f5a-4734-b0f8-dd879a1dc4be	5	6	939
6	712193e1-c429-4cd1-8317-d67da620dfbc	5	5	438
7	e27af152-b499-4516-9ed3-4bdd43099ddb	5	8	939
8	7ada49e9-d82c-4731-aca5-60a2fdc4290f	5	9	939
9	c02fb320-4e19-4853-8db1-978f18c87cc9	5	10	939
10	3003b324-3c10-470c-828f-69cf655c66ef	5	11	939
11	7717202a-c0de-4ab7-947a-3e4eba3ef2b7	5	5	333
12	faed2f8e-a246-49d2-b2c8-fc1c122980d6	4	6	1266
13	9710f0d0-a110-4558-be99-d93338d3cd4e	5	5	393
14	d87ac982-0800-40f3-b870-0b653cdc9347	5	5	617
15	efd92283-2914-4197-a904-6e9398dda43f	3	5	1370
17	892c28ec-f3ad-433c-8026-4b95cb92f353	5	5	418
18	fdce5fbf-5eff-4b30-b9af-1546c7c67c2d	5	5	264
19	acec5712-9615-45b3-8865-12a40366c9c9	4	5	1369
20	34575f74-2454-4d89-80dd-a5c6d997ae63	5	5	199
21	6c1dfc7c-5da5-4a50-ba89-8579dbad8a87	4	5	479
22	d199eafc-91b1-4311-8193-a5f813e843f8	4	5	1136
24	d0367b49-9404-48fa-8340-d60c3aca450a	5	5	419
25	748ffcd2-a74e-4dda-bfd6-92f3fdb67a66	5	5	1037
26	d3cc9d74-2c0a-41d0-a3b6-e858c2a466c2	5	6	702
27	2d63c33b-c508-4b1f-be8f-21ea632a8b47	5	5	1079
28	1e368684-ca9b-4ea0-bc1a-a2e0ab5922a1	4	5	985
29	7b585e82-452e-4922-a279-28de9eab1a3f	5	5	925
30	b00335e2-cec8-4d29-8ae6-7fb081dc8153	3	5	1030
31	5653bd92-af47-4882-beb4-b1a26567bdca	4	5	487
32	ad9bbd57-1f7c-4511-946c-93c8de6d7828	5	5	832
33	83266a6b-280a-4113-b0b9-ccbfaeb2fedd	3	6	937
34	ea9e55f5-6ded-4e6a-9fa5-23efa64ee744	5	5	498
35	42c2f266-adf0-49d3-9d09-31c72c466a12	5	13	939
36	52607afd-916c-4abf-9484-de850c8df4ef	5	5	936
37	44c2551c-5569-42b7-b92a-2fb6b805b6d9	5	22	1226
38	6d3ddf50-0272-4aa9-b636-a02114e80a3f	5	5	1050
39	b63b245e-db5e-4f44-8a31-d0f48b65403f	5	5	1167
41	8949603d-b274-4ef4-9f02-4e75caa5526f	5	14	939
42	f2d55784-0577-4710-9da8-8f1730439ebf	5	23	1226
43	beca8ee4-547c-4677-83b9-01724d365d90	4	24	1226
44	fed7c2c7-5793-4ffe-9d9d-363f4d9b1a30	5	5	1350
45	1cb2b48c-6879-4ce5-b39f-e656ad02b40c	5	5	643
46	7fce704b-528e-4489-95a7-8300aab654a7	5	26	1226
47	76ebb304-1bfe-4b45-9052-7572ae829979	5	27	1226
48	388cc55d-9130-41bb-a523-b8f36d99bc5c	1	5	761
49	a1595e8f-aa7c-49d4-9efe-4624de22cf44	2	5	1202
50	f7ea430e-d6f4-41ac-99b6-191e09a96b95	5	5	1388
51	564ea09b-e43b-4817-9330-495da5553f31	5	5	1083
52	16cebb5d-8e8e-4e3a-bb21-377b21f14a04	4	5	290
53	9a4efd9a-bc96-427e-bd79-4e70fb415ffb	5	8	199
55	fa49f1fe-e2f9-44ae-a996-045433bca4d9	5	5	1391
56	a5b10d59-f1ff-4cfb-bbee-9ed748782e35	5	5	1179
57	2b624d86-5bf7-49cd-964b-e4656306067d	5	6	335
59	d3005493-cf27-4124-b2cd-a8b337e2d3a2	4	5	212
61	e66264b3-2cbd-4cf7-ac5a-1584d848735f	5	6	674
62	124be991-2174-41f5-8f72-f0fb85a3d67f	3	5	147
63	62f609de-b1cc-4242-9972-b9073ec15562	5	5	276
64	d7525b48-1095-4863-9650-ff5516e179b0	4	5	968
65	2e791012-725f-418b-9bf2-4354f2b0b084	5	5	383
66	fb3c6241-1faa-47bc-9a70-915f27eff8d7	5	5	437
67	9c3e4efe-9845-4b2e-bc8a-da4f6906d473	5	5	1131
68	2648adaf-66cf-4b78-a74c-a92f073d218a	3	5	183
69	73439541-957b-4b81-b77b-7b156e5d35da	5	6	254
70	a1aef5df-336d-46f2-af5c-ed29e548977f	5	6	276
71	c7e4ad93-e44d-40f8-ba2c-076e08f1dc3c	5	5	655
72	898a0d79-6653-48d0-812d-35154784fa3a	3	5	1352
73	606789e2-ff0f-4708-9a54-fc22670314b7	4	6	487
74	cd80eb69-5bd2-41bd-8b00-5a7f576f6485	3	5	1305
75	56a53f4d-db87-4186-ae91-ac90d8f0d9fb	4	5	732
76	ea0242ed-a341-4fe3-a3b8-82caadba75df	4	5	1051
77	3f14f32f-f053-4690-873f-fed54f87a650	4	5	1133
78	717263b2-cfa7-46e7-a145-3d2707750581	5	5	1400
79	c95b2033-e94b-4816-b10b-6f608420b201	5	5	570
80	40e335ed-2073-42d7-af35-0c604c962993	5	5	1233
81	281026c9-e0ea-410d-bada-9e20fe4c6c21	5	5	715
82	54625d20-366b-4176-921a-83d550dfcd62	5	5	853
83	6b406d43-b86f-4389-b8ba-14a8c35ea892	5	5	228
84	57896afb-53d9-467a-be0d-6e3b8cd1dfd9	3	6	212
85	72bc49c1-5b0e-4b28-bc09-7cc33484f16c	5	5	142
86	7e652082-2993-4f82-8f1e-011eed48078f	5	5	243
87	8448cec8-6b3e-4580-ab64-80a88cd1d51f	4	5	1226
89	0f76a490-6073-4c5c-86b7-57a22e23b79a	5	5	294
90	c835dc7d-cbbf-49e5-be7c-7653a230cc20	5	5	1186
91	110f4cec-5af7-44ae-b289-cd628fa1d579	5	5	934
92	b1ee8061-d464-4765-8698-5896d5ae496c	4	5	1371
93	7d42a512-3606-4fc1-bdcd-3048670c455a	5	5	522
98	bd270404-3d8d-4f65-a285-c6e5da11096a	5	5	1061
99	b9ad3556-4d10-4983-9779-792d193e75b0	5	5	1068
100	1a4a90ab-3bdc-4de5-8a41-d3f84af668c8	5	5	242
101	db9fd3a2-bb79-4c1d-bffd-3d1651b8c07b	5	5	250
102	e7cc1b37-ac65-4789-ba4d-07ad3d7f3c3e	1	6	366
103	f4585629-f612-4079-89ff-4647799a78a6	5	5	1409
104	0f5a7a29-db9d-453e-86e8-7629fa8c6685	5	5	1417
105	ad0257a6-8536-4f13-b11b-36897e5d17e4	4	22	847
106	150b17a0-d98f-4367-8ead-f231812c81d4	5	6	250
108	617e7cfd-0d10-46ed-beea-b6024ed41d27	4	23	847
109	fa17f7a6-2c53-4788-a8b8-b103cc16ff18	5	5	1429
110	76ffedda-5bbd-4499-a3d5-5f8c89d8c652	5	5	462
111	58dff7e9-9880-404d-9ebe-029f9ccf0ad2	5	5	840
112	0cc6d92a-591b-48a6-8cca-d84f5c50017f	3	5	1333
113	41f86df0-d2e4-4d8f-85e0-6ae4822540ec	5	5	516
114	23662ba0-202f-4f6b-830c-5bad226160ad	5	5	210
115	aab7c9a7-83ac-4fec-bac2-638b1a7ad45e	5	8	437
117	c1daa4a4-4d56-4127-9c67-9883e483cd59	5	16	435
118	cb90d529-55a0-4440-8d9a-89f13159d905	5	6	1302
119	8f99c2d8-f4a4-4749-a46a-320a927cf00b	5	5	494
120	68f95924-c59f-47d9-860a-6372d9fdc881	5	5	1060
121	5fac2f1b-4082-44d6-a39b-e63c90561b8c	5	6	1226
122	12cf5628-6a32-4344-85a0-2194010b8930	5	22	133
123	327f5d27-b68d-44a4-8fc6-5647776f0b71	5	5	1377
125	b1c9e94f-881a-41e0-9997-11d5c1470747	5	7	521
126	8aeac065-0dcf-4e41-93d8-f0738875e351	5	23	371
127	4675b436-0922-4ab6-8048-7c1ad0607d1d	5	28	371
128	4f610bd6-bbbc-4916-a7e4-2b0420bda44b	4	5	1178
129	222c0ee1-31b8-4879-8b60-b96c547086d6	5	5	895
130	e534c4c4-7100-4838-b052-48a4735baf54	3	5	1082
131	348b8129-6b2f-4a93-bb64-0e2a169ea011	5	5	767
132	f51dc8db-4652-418b-9a7e-6c15707422de	5	6	794
133	43a7d343-2894-4f0c-a043-0abd35084e40	3	5	1231
134	a95322fe-6abe-4ff4-9f50-5175ec8e00dc	5	27	133
135	42209694-50aa-4cbe-b38a-ffacf925186c	5	17	435
136	608f7ea0-8385-436c-93f1-432deecbaecd	5	5	1232
137	cf46f8bd-a7b2-4b2b-bcd4-6ce6d8b44efb	5	5	1296
139	235ca93a-da47-4a03-adf6-3790b889cd74	5	5	345
140	b438835b-cf03-471f-9ce3-d60764a5cbe9	5	5	1325
142	65f8ecf2-0a09-4cc9-a8b1-c80e5a30e54a	5	5	197
143	868ad424-9963-4ee6-9517-7465c42970cd	5	9	674
144	242859d2-f4aa-40fb-94fd-76f010fd9336	3	5	897
147	27df78df-93e5-4d7e-8b03-dcd006608da5	5	5	1114
148	c83e5f03-b177-4a33-a2f2-fb26b9eaeb1c	5	5	681
149	f82a5854-6fce-4ec6-8959-f8efc9757e78	5	5	1342
150	f4fc9b8b-629f-4291-b7c8-c79f33e5ef90	5	5	948
151	ed72533e-fbd8-4a7d-853a-0c17b7f66b02	5	5	1033
152	b21b5a07-a538-4211-94c1-e3b1d7eb9c97	5	8	335
153	1bfbfa7f-9f7b-4fab-a2c1-d571568f5a33	4	5	1450
154	dc1b19e3-0da3-46f7-adb8-5b3edbf9b8ef	3	5	1072
155	ed6b7e08-7b60-43ba-824e-83dea96d760c	5	5	1053
156	a035fb3e-33ff-4bc2-9284-bed545ddc8e6	5	5	396
157	b48d1539-7bf4-426a-a836-4355ecfd1827	5	10	325
158	909fef80-2933-4cfd-b954-5bf46cba811e	5	5	991
159	cd0e83ad-5618-43b8-b000-5ea3f7c2fec3	5	5	1460
160	842c8b62-e6bc-4e06-a1a2-d63f76bca0dd	3	5	1489
161	d62e2647-7ed3-4244-b8bf-6c46bb9a8e1a	5	5	1495
162	5cc12942-2991-4a82-81c3-84730923cc2f	5	5	653
163	8daceb3f-0e6c-459d-8cb9-7e2d1297f564	5	22	913
164	415d7381-2c50-4333-9926-f3134dbd49ad	5	23	913
165	150ca6f2-e4cc-426b-90ea-042476285343	5	25	913
166	0b1c96d8-e73d-49a3-9657-98702ea22409	5	5	806
167	9f32533c-b1cc-4535-9aea-dde179631518	3	5	751
168	6d133c51-c8b4-43e4-93c9-52742772bf99	5	6	1342
169	438c73e8-bcee-468c-abe6-667d23748ea9	5	6	1137
170	a37020fa-d1be-4ebc-bee8-49cf0b998f89	5	6	1037
171	9d56c3c3-2000-4e76-b31b-90f20bc5cf4e	5	5	951
172	354596ee-d48b-4c89-bb16-e2bb30c4de49	5	22	558
173	71160def-118a-4b31-b1df-78a841371fb7	5	8	1037
174	a41158b5-eea3-42c7-a80f-4fd0bede0537	5	22	1537
175	da6a3b19-79a2-4eb5-8ef9-ee99d3a96220	5	23	558
176	6238d79b-7a7f-4f35-8b03-f25438301e96	5	24	558
177	b9d97a73-ae37-488a-a36e-17c07c67b7ba	5	22	247
178	117d32cb-8204-42b3-869b-504bb29627f9	5	23	1537
179	6ade3d19-b451-4654-b91a-4e1a16b9ae2a	4	5	1576
180	1b6cca6e-552e-4c1b-bcc2-c3a3d8a9940a	5	5	1467
181	4a7e7836-44d4-4867-b01c-5943bd53ecd1	3	5	1527
183	896c964d-1e90-4bd9-a811-309930dc3197	5	5	1207
184	bda00dca-bc08-43ed-998b-c51c9c72f582	5	5	209
185	2eccf20a-6316-4fdf-9254-3a8fba5cee3f	5	5	387
186	70717498-1bca-4af9-a78a-cde8122227d7	2	19	1341
187	edfb387c-a26f-472e-9bcd-67cd30b15ea2	5	5	353
188	464f776b-c274-49f0-a397-a464ec929fae	5	6	242
189	b576a8b8-f59a-4ab8-bdeb-f1303ba33bd5	5	5	1552
190	0a42eb6d-32bf-405a-bf84-fe1b64c48cba	5	23	247
191	cb6eda9d-79f9-436c-b1e5-4c6022093389	5	17	506
192	ace1d15c-62d4-4d7f-99db-55448ec5d067	5	9	1302
193	1b1d27cd-6c8c-4138-9858-c477126e96b4	5	24	247
194	9a739910-551f-4ba8-8a03-d298ea089c8c	5	11	1302
195	06984707-7b15-4f11-bae4-7c633b7fcb0f	5	13	1302
196	293bac82-e4fa-4e8e-8e6f-c5fb5aab9f8e	1	21	1591
197	69d5f781-97df-4cb1-a178-c44bb36f9691	1	19	1591
198	5a126ef4-8e51-4e4a-9857-4d06c83a96eb	5	6	437
200	2366462c-1923-43a7-ae09-fadb97edf8f5	5	22	895
201	e09bdfdb-9543-4a25-8ee5-59aec200edc9	5	23	895
202	2702e063-bcf2-4842-97b9-e0ee6a574714	5	24	895
203	6daefb5d-05f6-4fe5-86a1-9e423b54bfee	5	5	513
204	e64caaba-4e02-4572-8fa5-928ed4a91d88	5	25	895
205	8e27b053-4024-41cc-a4ef-cec5eeb31190	3	5	1428
206	74434d82-4a4c-4111-9dec-8d6c911020cc	5	15	1302
207	0be18c20-224d-4a22-bcd1-710a4f8acf32	5	26	895
208	53fa17df-72ae-4120-864b-6b9a3c8b7a8d	5	5	606
209	8d8150f1-7e44-4e66-b014-910eb274d70e	5	16	160
210	1aa7c783-c91e-4beb-8fc6-cc96c18f95d0	4	25	558
211	55145051-46bf-4cf0-8298-00fba7334ea0	5	6	1083
213	d71cacc4-913f-402f-8f5c-7b2baa5b655f	5	27	895
214	ff76346b-698e-4879-acd0-7b24224d3b89	5	27	558
215	36ed1ad2-f89d-4521-8632-75c56164078f	5	21	895
216	39adca8f-2926-4199-bb24-f9c2a3ee17bb	5	5	1474
218	8f78cc09-fb64-42ce-b84e-b0641c6da77d	5	16	895
219	4082d2f2-797d-4177-ba7a-d7d70a2fb1ce	5	5	1463
220	428e66cd-c249-4ea1-8dcb-8a2a457a8e6a	5	9	1333
222	aeecc18a-2a44-4ee3-958c-2b6fecbfb747	5	6	1232
223	45b95a2a-26ff-4109-99fc-b02d776365eb	5	22	1552
224	f454966c-f74a-44f7-8cfb-0c0f415b6a5e	5	5	1332
225	f37eeaf3-0789-4aca-a174-5e13c7e734c4	5	9	192
226	23f9d78c-4629-4bc9-b44a-e2ecc18d4860	5	5	192
227	22f3288f-aac5-4414-ad88-58dfbc43e468	5	6	192
228	4320e73c-b537-404a-aa98-a38bde1a2186	5	8	192
229	433ab502-e425-4299-b4c4-79b371a2ab5e	5	7	1302
230	8bfdc3e6-a599-4c74-9be2-8938e510863b	5	24	1537
231	5a81c371-d849-45aa-8707-50ee73c6c427	5	25	1537
232	454cdb32-8a2a-42a0-9024-168de65b0008	5	26	1537
233	cf83a1a1-2673-4d61-a266-5a7d9e87fd8f	5	27	1537
234	54c7b2bb-b85b-4601-a82b-d71bbeba2483	5	19	160
235	0d532d17-e0b9-4775-b465-d743ea7ecbb1	5	5	446
236	c89dcd57-ea62-42ee-ade7-9d75b80f2143	5	6	1378
237	29853315-2402-469f-87a8-ef6326ef03ef	5	20	160
239	8fe3c54d-ba03-4297-ad4d-2e28127ef281	5	22	387
240	bd0b6d93-a389-4a4b-97e7-292b2487c8b8	4	8	1378
241	f948008b-ddc5-44c4-93d0-1331cfbfcdda	5	9	1232
242	aae22d7d-ef27-4579-b553-a88123ee42a8	5	5	1511
243	b43d1652-f7c0-4cd6-9b22-8cab3b8ed29f	5	9	1001
244	21497dcb-bb5e-42b3-8be6-950450f82614	5	5	1609
245	da8175f8-683f-4fe4-9a0c-673bdbf290d8	5	10	1232
248	7a71d885-c06c-4336-a330-9408063278d1	5	11	1232
249	c2642771-ec69-4505-b5fb-47bbc33f1990	5	5	1499
252	27bd99a7-71b7-4208-b401-8d6be470652c	5	6	325
253	9a2f26ef-c49b-476a-8f8b-3e20703f526b	4	22	1545
254	53a5a406-4058-4ba0-bf28-bc004dba0245	4	6	1397
255	bb497f2c-1ddb-4558-b579-bb1c5a253b5e	5	7	1204
256	e554d191-a92e-44e9-a829-886334499440	4	9	419
257	200cf90e-3cd3-4014-88db-3f12045772e8	5	14	254
258	9d669431-122b-4a8b-a3da-395f249bca5b	5	6	1204
259	ae489a23-5500-49e3-b848-000eaad49b38	5	16	1204
260	614fba24-6dc0-458a-9450-fa63dae86d56	5	5	858
261	e37b46cf-1ef9-4e6e-842a-ee6eeafdf7b4	5	8	1307
262	07e48c26-6498-4938-8ce3-71ea3905cd07	4	13	419
263	d97030d2-038e-4085-84f5-ac1c9527b8f4	5	12	1232
266	78cce50e-3158-4626-8e1c-b02940d3214d	5	5	234
267	82e6371f-29ba-418f-8375-0134a0896614	4	23	1545
268	5058f6d9-b800-4a05-be47-0916797ca877	4	24	1545
269	bf3d045a-8b70-408d-b63d-b0755b5b87d5	4	25	1545
270	6bc28135-be69-48e4-8895-cbecd7de1745	4	26	1545
271	884e6a17-a738-4d05-97e3-3556eae32789	4	27	1545
272	feba00c4-c59c-438b-b25b-be2071f57ede	5	5	1295
273	01115f4b-f0e7-45ab-a070-448f4a7249ed	5	9	335
274	8fe3c65f-7120-4f43-a20a-a791c3351024	4	5	1615
275	158ebe4f-32ae-4b63-922c-c587a558c826	5	16	414
276	eb5ad1fe-e190-4b24-808b-8ef74bd3681b	5	10	335
277	49bd4526-a05e-489e-950a-d6a468e40411	5	11	335
278	ac4adf97-44c6-4059-bb14-6d0908d34df8	5	20	495
279	fce10218-3c1a-4cd3-bc57-f4f0f4e9ed6b	5	5	1084
280	126be63c-2462-410c-8921-15c036fc16c5	5	23	476
281	6bb1e8dc-8b1d-42dd-b03f-c7fba9c2faeb	5	24	476
282	43535688-965b-4ca7-b50b-11cae9042999	5	25	476
284	c100169f-d676-47de-8c8e-1be50f9737ca	5	26	476
285	ec9df467-050a-4585-ab72-206bbcef0624	5	27	476
286	fcbdc583-3084-4d6d-8abf-9355db68a8bb	5	12	437
287	9c9632a6-d006-41eb-a0cf-14f22e6d3f90	5	16	1014
288	c59f4998-4c82-48af-b3d1-df8e60d5eff2	5	5	454
289	4d0cc8db-88a7-408d-8521-857f4fc3336a	5	29	702
290	9a224f59-e1a8-4a49-be9f-288e43372594	4	27	247
292	e6541afc-f4b4-4309-a35d-fc1269c0bed1	5	17	895
293	988765ad-c2a3-4ae2-a97a-4aa393a40b79	4	5	258
294	1bfc9a12-b610-4bc9-9273-ad260fb8f44a	5	5	1626
296	83a7f3e5-5bd8-4e2d-9a12-d8bcefa1153b	4	5	1600
297	c991eb41-43b5-4993-86e4-90520b0cd7b8	5	6	1426
298	7fe1c113-d9b9-4dd3-8866-be750fa63ce0	5	5	235
299	6e44702b-a28c-48c7-8018-f81a0dcf61c6	5	13	1232
300	a54b483a-b1f4-4022-8efe-2477ff62e2df	5	14	1232
301	059b834e-c6ec-4cd9-8415-d8dda5cbcbe0	5	5	1241
302	35e4599a-0f45-46a9-aef4-f300080ac4ba	5	12	335
303	2a8656f7-9007-4b26-8f99-7aa4c18c958d	5	13	335
304	1730ded7-3968-4f2e-8935-a133599fd4fd	5	14	335
305	58ed4b26-e6bb-47e5-9452-1588076dd323	5	15	335
306	c88f956f-d7d8-43f6-bc50-c025df631703	5	7	335
307	59057f1f-dfff-407a-9220-5e3fbf021eaf	5	10	1037
308	19b0c239-6f47-44bd-bda1-bb5c32fd91b9	5	5	1217
309	c24ff029-ff50-42ef-afb8-e4a5d20c89fb	5	6	1217
310	577133ae-1312-450a-8f95-85380f4fdf6b	5	8	479
311	250c0fb2-594c-48a9-8983-0f6f43f1e3a9	5	9	479
312	bdab3b6a-0f31-486d-9881-7e64bd32640e	5	15	1232
313	1c49b154-c793-4cf2-8109-9d011b50f107	5	16	335
314	c2059f67-5fc3-4109-92d8-8cb95aada77c	5	10	479
315	6f6ed629-2434-4728-86f6-18b5844255e9	5	5	269
316	f63096ec-aaf1-4bb3-b725-0f4d9d5f110d	5	17	335
317	9b25435a-d910-48ed-8508-a15cc4d48033	5	13	325
318	e563c455-9404-46ae-bb3b-b1124a263958	5	5	259
319	633d7f8a-04b1-4696-9d2b-bb30c2146e80	1	22	501
320	6a0b10b4-06d7-4a3e-adf0-a592dfba5cbe	5	26	703
321	dd08a559-3a5b-44ea-a97d-72981602b830	5	23	501
322	58903829-60d4-4a01-a640-313858c0ef8d	5	27	703
323	55ee0d97-663b-4525-a2d8-6c681a019646	3	6	1527
326	b7547190-f2b7-4462-a0ac-b4191abce485	5	16	1615
327	9159120b-97ea-4cee-92e7-513f8dda1bc7	5	6	259
328	82481ca2-8653-41f0-a5ab-ad9747d35d83	3	8	1527
329	65c390dc-553b-4f05-8f01-a9f54f395692	5	5	476
330	2557361e-0b4c-4e4b-a9bd-bc1aa7fdd387	5	6	141
331	e289eb65-69af-4c68-a976-3ec6937a515d	5	6	953
332	f423d14b-8769-4f3a-a13b-c8ba8e78f487	5	8	1207
334	dd0714a2-f8ca-4ae6-b63a-2f7ab6392e63	3	9	950
335	134e62ad-587b-41cd-a62f-3c9764f96b90	4	22	945
336	cb4228ba-74ef-4781-8181-72ce877deda0	3	24	896
337	15090bc3-0769-4cbd-8191-fee0f8160d7f	4	23	945
338	e26a09a1-558f-4ed4-80a9-88fa40600af9	3	26	896
339	27c82550-5113-4726-b2bc-9cd55a22c2c4	4	24	945
340	a3d41dbb-b4a4-4961-84ae-e0973ac8d9c1	5	5	1359
341	a14a26a0-3db1-4e24-8f92-c97ed6d24041	4	25	945
342	0c89a7b1-1aaf-4fa5-b4e2-d65309198ce7	4	26	945
343	d2ea40d9-4052-4c91-8091-bb21133a2486	5	9	1114
344	074ffb2d-61d0-4e8d-a041-ce1e79e6d643	5	8	259
345	04794585-c66e-44d5-84a9-d51a98eeee1d	5	27	945
346	c224e34d-2967-43ac-b983-e180e46aa51b	4	5	1652
347	c490ec02-1afb-490b-8ce9-7179c160c0c1	5	10	259
348	f6d6e907-80a9-400d-ae1e-d7cbb0a37956	5	10	1307
349	c599d16a-2491-422f-b61b-eef476c1526f	4	27	896
351	e7012a99-5e73-409d-92bd-e265dc5a83ef	5	11	1307
353	6290f745-6558-4bc2-88ef-da8157d8475d	5	7	1232
354	68b1f540-1312-4472-8da3-079a0871df30	5	28	1062
356	73f20f41-cb50-4725-b8f3-db2ab61103da	4	6	1523
357	9cd96836-cca8-47bc-a217-43eb561d9769	3	5	1398
358	75e729a3-5a6c-42cd-99db-07b9bd913356	3	5	896
359	c49e6f6b-07d8-4a45-b77f-2ac2810caf70	5	7	489
360	a88d13d2-6ae9-48ff-b59d-ca7c40acfd4f	5	6	489
361	5a4d5373-ec2c-4c3a-9c4f-3d8fa12b8e8f	5	6	977
362	f4be4c49-6096-4e01-8034-e44dc4fdf128	5	9	1523
363	53acad81-1702-471f-a51d-e85857931e8c	5	5	1664
364	abc1819e-9327-4839-a752-b0f4659858a2	4	12	487
365	f3fafe8a-fb4b-45e3-bc79-6d4fb20de92a	5	17	414
366	9e673bd4-391f-4159-9704-e58cd004f16a	2	5	1604
367	53d5895b-d4e3-4326-b625-7c6d74d52ba6	5	6	1641
368	8238f384-ead0-49e2-bdb1-c7265c5a5f9b	5	5	1662
369	e6920d4f-62e2-4a62-9028-07503390ea85	5	5	1667
370	c265d87a-7d47-4796-816e-95e325c5a46c	5	5	1580
371	1aba04b3-7ad9-403d-b649-555e8bc235a6	5	5	1141
372	367d042a-853f-486c-af28-77c9a533f3d2	5	12	142
373	fa7e8825-2d70-481d-84d5-64d9266576b1	5	13	142
374	4ca7fd58-7934-419a-a964-4313708576ce	5	5	941
375	6844173d-d634-48c3-919c-4d80232425ab	5	5	553
376	f1d52d40-8a94-4000-8379-3f3a1a1ceadc	5	9	1162
377	a4fe25aa-c3ff-4d89-9acb-6c520bd11807	5	5	1571
378	3f73b57b-5c1a-4f77-8cfe-a59442fab948	5	5	1661
379	96447269-f0a3-42b7-a00a-7e38b76fdb72	4	5	1530
380	9a60e9db-8b9b-419b-b717-ff333f2ef08b	5	6	1530
381	8056ae53-4044-4f5a-a1ae-02955ba71c69	4	5	1677
383	5d33b69a-0ee6-4dd9-a6be-2ed76a063893	5	5	1684
384	5dffe97a-a686-4a87-a6f3-c5d3785db235	5	5	155
386	5bc1c69d-8d33-4254-9a3b-54d64c55744f	3	8	937
387	f1dcc9ea-82b6-4b0e-9280-b4cf1070db69	5	6	155
388	321daba0-f64c-4ee3-a71e-ab93d49e47e7	3	9	937
389	8fbb5ffa-4047-4f76-a7db-2921bf953cf2	5	5	1091
392	3b85edbc-0353-4f6f-b88c-8197d3f4fc1b	5	6	897
393	0cfa1c33-433c-4e42-82d8-44e434cac550	5	17	1492
394	593c009e-19e4-4cd9-b283-e66522971755	4	6	1033
395	20b12277-a395-4204-b1e2-0c379fbaecd7	5	5	1291
396	2322645a-da1d-4c94-8e27-8a47fd9c9847	5	6	345
397	ff7f5c31-e617-4412-acc2-674485e2bcfa	5	6	208
398	f6d52b99-3780-49ed-ac29-724762035487	4	5	1201
399	70bdc446-e887-4e19-9bbd-d0f4c52c7780	4	7	419
400	808d16d7-0abb-4f50-85dd-9f5dbc9f2ee0	5	6	1022
401	7cb0ddf3-f965-4ef9-82c8-dd24b68207a0	5	6	1201
404	a3935f79-ff87-4128-9c68-a4a52b50f268	5	9	1342
405	bf1674b6-7c4c-4336-b7b5-779c32aab34b	5	27	1037
406	72f088ce-8b56-48d6-a3df-97373289f62f	5	5	238
407	3b8897dc-9b2f-4087-9c4f-a3598c38e436	3	5	825
408	1fe7d479-4f23-49b1-9929-6543a0b92938	3	6	825
409	b7748d14-9d25-478d-b2f2-2e44f1c8f2ba	4	22	385
410	73f2b252-2cdb-4394-ae77-315a61f71616	5	22	1037
411	76ef7fbd-c775-4156-9951-12a12e048889	5	23	1037
412	17030ef5-aa25-46b8-a04e-908b6c8194a9	5	24	1037
413	0c7210d3-8315-4fed-87f4-0fc5be953b17	5	25	1037
414	180bbd76-8d9b-40e7-b681-d2f8b95c8b94	5	26	1037
415	40167846-f466-40bf-a147-052f77a7960d	4	5	1698
416	33c15577-34f7-4dc7-9112-887aaf2aa82c	5	6	643
417	dd088b32-3dfb-4a16-a9d3-cb0ea9fa778c	3	5	1688
418	f76cd32a-9d3a-4d45-b530-c4fe619f6eb4	4	5	1697
419	2f39657a-90d9-4df7-ad1b-f4ebdb1b2429	5	27	385
420	c05bebdb-93b7-48c6-bbb5-1c38f37a77f8	5	13	1342
421	620907ad-4e0f-448a-9e2d-9e7ef0ff1ded	5	5	1227
422	1b759fd7-a5db-493d-a8e9-0f55e01b8fef	5	14	1342
423	45ece28d-7d51-45de-994d-95b53a2ad7bd	5	7	142
424	b78dbfc8-072e-4966-966c-0246e188f841	5	15	1342
425	dc65e0ed-8777-4af4-8b00-9d2ddb58109a	3	5	727
426	c1969653-d1dd-458b-961a-673097063e2d	3	5	1752
427	4c0be419-1f90-411b-83ee-9cff0c8f1416	4	5	1745
428	f95a7247-b07e-45a6-bb47-b5814733bb7b	3	6	727
429	da39956a-ffd4-4878-8ded-3541d55a7cf1	5	19	414
430	d408fba8-fb2c-4a4a-bf4a-dda203a1619e	5	24	501
431	9b9f34ab-bf07-4056-860a-99129d7a037a	5	9	242
432	f34fd17c-c478-4f07-acd4-1d5771e7e103	5	25	501
433	58365fe0-9a35-492e-b1c1-7bc6e4c329a7	5	26	501
434	6852d52c-d92e-471f-ab3c-e28192064030	5	6	1708
435	11a40b26-228f-4ad4-b767-506741355fbd	5	20	414
436	c2ed7061-9f30-4016-8842-66e29b84663c	5	5	901
437	59fe31c9-e416-43e0-94ab-ff1783a0996c	5	27	501
438	0c2539e4-9803-439d-9706-58531ae393c0	3	6	1321
439	8d270be8-221a-425d-a017-88d482b9b050	5	5	422
440	93eee19c-1f48-4fbf-888a-0324a5b15c77	5	12	1114
441	dedae46b-7fd6-4440-a9ca-e15ebc3275aa	5	5	1663
442	e1dc51a1-cb01-45f0-9498-8add3a79bfa5	5	20	142
443	7d61d9da-923a-4598-bba3-73cf9cee70e2	5	13	437
444	c9eb9b9c-422b-48b2-ad2d-05108618ab71	4	6	758
445	ea6a9cf9-4af2-4c06-a90e-01e9786111ec	5	5	1701
446	16348b21-17bd-4d8b-b7ed-3922ed334085	5	8	275
447	f14f71d7-c3a6-4330-907a-3c45e5a41dac	5	9	275
448	b208cf5d-ad8f-4a67-b8af-8dfd9e656735	5	6	266
449	b36766ca-eb64-401c-82a8-d62e7299b5fa	5	14	437
451	d45d1d3b-e242-49f1-a982-0b31bf1636f4	1	5	1769
452	354f1927-ccce-4aed-b62e-1ef9e2384574	3	5	1598
453	9ad57995-04b3-4c14-9e5c-4260d92cc637	5	5	1703
454	fc9677d6-2b45-4b48-a7ca-4dc77ffc8ef1	5	10	275
455	ef858bd7-4681-4e49-ac88-de0e5f89f2af	5	11	275
456	e0f6b7b4-4076-4390-99c4-f6535b76b5b8	5	12	275
457	1b4d3433-3cd1-4c9f-a3ae-85b6b30c1d46	5	5	807
458	9523a9e5-712e-48c1-ad90-a8c63383a22e	5	15	437
459	7528d8fd-33a4-4703-bb78-0c03788d46a5	5	5	1793
460	b1f473e6-1b5c-40c1-ab10-e9e7228b20d0	5	6	624
462	fae901e2-bb57-48d8-8c59-6b5809bde073	5	9	1332
464	135e0565-71b2-41ed-8cf3-b41e432f8d3d	5	5	1766
465	8799bcca-fbb4-410d-98f1-5e37a59b6646	3	5	1475
468	51d36852-aa0f-4ec5-b60b-ffe11000108c	5	8	624
469	ab79f8af-de93-41dc-8706-91b78e7ff3a3	5	6	258
470	40f5c4ed-f2a1-4ee9-95fd-ebd34ee488a3	4	8	1060
471	68f8026e-bdef-42cf-8237-c72e86801243	5	9	1060
472	63d72f6b-dd40-423c-8ad2-b0d3fc2abb4e	5	10	1060
473	6ffe618e-5d0f-4f03-aadf-7cc2fb229fe2	5	11	1060
475	f1d66488-0c17-48ad-83ed-5710ddf5d36f	3	9	624
477	ed848e14-763d-45de-8ca8-13f95032cfaa	5	12	1060
478	3ffbbc11-6321-444d-8682-d569cd989990	4	13	1060
481	edb5ef9d-2f4b-47b4-9579-97498bd57545	4	5	1440
482	033d8696-d20e-46be-be7b-8c9104729b83	5	14	1060
483	7dcf7ee5-09c6-41f5-b7eb-3c7a080a970f	5	15	1060
484	a16e05dd-0a87-44b0-98b7-dd7f59efbff7	1	19	1345
485	3b7a6c70-49a5-452a-9a4b-118a9e5903af	5	5	1676
486	0c4f1195-fb2a-426b-918e-1a4ebed906be	5	5	1023
487	719c374b-1807-4afd-8f48-1cdad547008c	5	15	325
488	012ce9a4-f80d-4232-88dc-6f44688fa4bc	5	5	1597
489	9dbc8498-b2d3-43ba-9e11-e893eb502476	5	28	142
490	876c7a1d-e960-4b50-9820-7b435a7bc7e2	5	5	1107
491	43484e48-8d40-4881-bb7f-b19db6d2132b	4	5	1643
492	4d46b804-1fb2-4068-9190-511183155cf9	5	5	1693
493	5dd3e5be-b590-4dd0-bbb9-7b52bfdf1187	4	5	1648
494	f9ba2c61-fc2b-4ba7-bf69-351eab92a039	5	22	142
495	297e23e8-da76-4233-ac43-2891523ce263	4	10	1697
497	7ec31dab-9a68-4896-a70d-b4b0180a90f5	5	5	1477
498	3b9bf315-5d46-4182-b903-ba8cf30e95f1	5	5	1730
499	3c9786a0-3655-4d56-84f8-9d067b446fac	5	9	1207
501	e3461267-6804-4b7c-abbd-f7c8a9cabee7	5	5	544
502	b42f148a-c352-4b71-8b10-eed824c6894e	4	5	469
504	550dbe5d-dadd-493f-a4ba-239634c7f18f	5	23	142
505	4352eefd-3f99-4da8-be28-a36da5465a67	5	6	1207
506	b3b21f51-720b-49ff-9a83-25fcbca3cf7f	4	6	1752
507	272f197b-32b0-4b9a-bff6-99a3924fef3c	5	6	1552
508	27fb8552-7467-4bd5-b444-4f51d6360268	3	8	1033
509	e7e2be1f-138f-4423-ba36-e447d5938b73	5	9	948
510	195b1e4f-3368-4bc8-9653-f77a995969be	5	22	1559
511	a1839498-7607-4e92-afa4-8e7a20e34a7c	1	6	1273
512	2d7e9167-454e-40a7-83b8-8560d2916998	4	19	257
513	b424bf3c-a731-4f51-8431-131c005ade16	5	5	1447
514	520592fd-9e01-46dc-ad1c-b1795a53dbf1	5	5	1423
515	23a29039-8445-4dbe-bcd1-54e00aed15d8	5	5	1803
516	27348559-5787-4dec-9e21-759f5d06f2f4	5	6	1167
517	0ce27731-5d6a-4cb8-a5a2-4999b77c57ce	5	13	275
518	7800edda-97aa-430a-ad89-742e36b2dc57	5	14	275
519	25b96d1a-6cf8-4ed3-ae7f-4aa8bc8c70f4	5	6	544
520	8b51b6ec-920c-4895-8155-bf432ae560aa	5	16	840
521	930af489-20e4-41e1-92ff-52100eac99ed	4	5	1253
522	a6577025-6f87-4c08-ba6f-7a6f65a0c73c	5	15	275
523	b3725819-e4af-463a-9f5b-4922cdd67768	5	22	1213
524	d0e0825d-b8d3-41ac-a0a5-0d39fbd48154	5	23	1213
525	e364cca1-c364-4ef8-a6b4-3abbe7ad08a6	5	5	406
526	ee1dfce2-6bb7-4c1b-b673-98af9112a9c5	5	5	1480
527	4078fffe-f891-43b1-b8a1-a97cb5eb7063	5	19	371
528	033ea66a-965c-45e8-8947-fdf50a620218	5	10	192
530	addd0bf3-d2b8-4332-a4a6-cdbcf98ab41a	5	5	103
532	1f6d2973-138f-4a96-9c6c-5c5cb26f8160	5	10	624
533	ed22db29-f04e-4bee-982d-8fd9518a3301	5	24	1213
534	82d64d67-a001-48b5-86a4-224e87460880	5	25	1213
535	002bc8e2-3bb0-4dcd-a432-bd208c9d5102	5	11	624
536	4992b3f7-b741-4e17-806a-246f938bb173	5	26	1213
537	57b6b6ba-5e85-48ad-b57e-0c4e70a64b08	5	27	1213
538	73acf9a4-6b2c-48d4-a1ce-1c2cbaf69d44	5	6	1730
539	e8556e92-2776-44c7-9c0c-75c61985bb69	3	15	1527
540	2f2ab4d2-02a4-449d-a803-dc9419ad18f1	5	22	1184
541	23f188fa-38de-4195-aa70-ed24ab5e29e0	5	5	964
542	4ca989fb-a5b3-4cd9-92e8-252b15ce1dcc	5	23	289
544	b19f1504-ca5e-42a9-8295-84e00d5f6783	5	5	529
545	8bdba0be-47c9-4abd-bece-f764f1a761d4	5	24	289
546	beb335ae-6cf4-4fde-aefc-84453de9da21	5	25	289
547	e63833ca-18a1-4ff4-936f-e6c15f66b52d	5	26	289
548	b292466b-8155-427c-a172-242a7c7fb6fd	5	13	1114
549	06cd3323-11e7-4122-97b0-d92b44a45663	5	23	1184
550	94460699-99fb-48a6-a220-3ae805e7967d	5	6	1213
551	8caac7b0-4394-4304-8bd6-34a816a27655	5	27	289
552	d346ea42-b7a5-4dc3-990c-bcd841c35ca4	5	5	1138
554	cad97609-2320-4d49-beb2-0ff30a760545	5	7	1342
555	7b04ecd8-343d-4e00-b716-76cf842bbe1e	4	9	1198
556	84935ebd-0dec-4770-b30f-6e6b27351415	5	14	1114
\.


--
-- Data for Name: learning_questionanswer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_questionanswer (id, "order", uuid, answer_text, is_correct, explanation, question_id) FROM stdin;
23	0	4455bf99-a595-4a5a-8fd2-80b6d863149b	string	t	string	13
8885	1023	41e0859c-f322-4a16-b68f-65ba713112cd	0	t	0	3956
9056	1024	2ce4b848-4c8d-4c5b-aea2-ccc6cdf401a2	Верно	f	неверно	4040
9057	1025	c8e0eb61-d7e5-488c-941f-3ef58f9f4f67	Неверно	t	верно	4040
9058	1026	18b452e5-7f45-40a1-9680-de37db8dbb47	верно	t	правильно	4041
9059	1027	bf979809-0649-412d-83d3-59db56ae0a63	неверно	f	неправильно	4041
9060	1028	938738a7-e512-408f-a18c-44c010f8a90b	Должен быть	f	неверно	4042
9061	1029	017156c9-c3c2-4a95-b4b1-d704bad0bb91	Не должен быть	t	верно	4042
9062	1030	13a13325-a06f-4cf4-ace2-dbd9f555571d	Верно	t	правильный ответ	4043
1435	381	8c1559f1-244f-41e0-af41-d0800ec714df	Которая выросла	t	Верно	635
1436	382	60abf8c6-ef51-49c0-bfbb-790c62aeb8f5	Которая упала	f	Неверно	635
1437	383	d9ea735f-0182-4d53-9b84-c0651a432c55	Да, ошибка	t	Верно	636
1438	384	ef7cc040-ff58-4c79-b6e3-ddc381fea978	Нет, это не ошибка	f	Неверно	636
1439	385	ecf31d78-13f2-443b-9378-c7b8b387b9dc	Первый вариант	t	Верно	637
1440	386	0cbe2063-7237-4012-ad98-573bb90f3fbc	Второй вариант	f	Неверно	637
1441	387	b994fe30-52cf-4318-be9d-fcdcdf4368e2	Ошибочно выглядят перегретыми	t	Верно	638
1443	388	c5c9173b-6a7d-49df-8b49-d4d0b9823a7b	Они им нравятся, их покупают больше	f	Неверно	638
1445	390	a69ab3e5-145f-472f-9780-4b0823ddcedc	МОМО лучше	f	Неверно	640
1447	391	a9e0855e-dc77-425a-9ed7-ab2f76fb91b4	Apple лучше	f	Верно	640
1465	402	fe807393-71c0-44d1-a3d7-e1cdc0dd5935	0	t	0	650
9063	1031	409524c6-cd37-4c6a-a903-35abbe8aabc8	Неверно	f	неправильный ответ	4043
9064	1032	24b6b533-30db-4bb0-84f6-3e7ba8369dcb	Стоит	t	верно	4044
9065	1033	81f8dc73-6b02-4ad2-9173-1f6ed3c61d76	Не стоит	f	неверно	4044
9066	1034	2af76be0-2b42-488c-97a8-15d9040a4e71	Верно	t	Правильный ответ	4045
9067	1035	62392c5b-80c1-4042-b7ec-dc0e818c025d	Неверно	f	Неправильный ответ	4045
9068	1036	d1a8e90f-c69f-43ce-9cdb-733f57c1860b	верно	t	правильный ответ	4046
9069	1037	1eb43b2b-d472-4381-9dc7-a81d2c5d70e3	неверно	f	неправильный ответ	4046
9070	1038	84fd9e2c-a8fb-4977-8011-6441feb66b82	Верно	f	неправильный ответ	4047
9071	1039	27f431b5-f843-4d3d-9732-f5654d899d1b	Неверно	t	правильный ответ	4047
921	115	5c98aa59-3603-471c-941e-3d71f5d62301	отчетность компании об ее деятельности за прошедший период	t	Верно	427
922	116	c36d869c-fab8-4135-a36d-641628051c8e	Рентабельность	f	Неверно	427
923	117	01f4b1ba-af96-44a8-8e51-c4be171aff06	отчетность компании об ее деятельности за прошедший период	t	Верно	428
924	117	fb30f212-a62f-4c46-9f8d-ebfa71ad20a0	Прибыль и убытки	f	Неверно	427
925	118	e0e59423-16e2-4a23-b84f-87a01bc314dd	Рентабельность	f	Неверно	428
926	119	3884a82f-0ddb-476d-b05d-ce5954ec4e98	Прибыль и убытки	f	Неверно	428
927	119	0abdce6d-63d0-465e-8475-e7ee7172a68e	Положительная динамика роста	t	Верно	429
928	120	81b100e7-9775-47a2-bd83-1ce1192cf249	Отрицательная динамика роста	f	Неверно	429
929	121	5c48c4ff-c8e0-47fc-9dfb-6f7f21423ec7	Положительная динамика роста	t	Верно	430
930	122	0ecc5ad9-af10-426a-9c94-4489b1e8b971	Отрицательная динамика роста	f	Неверно	430
931	122	33f197e7-1819-41e5-b9be-58271cc612ac	1 год	f	Неверно	431
932	123	561dfea1-cd71-4039-ab61-2539c032862a	5 лет	t	Верно	431
933	124	345dd065-f056-4c24-8157-6dd61e984b85	1 год	f	Неверно	432
934	125	dd32695b-ae4b-4b78-b585-5ef88ad36ecf	5 лет	t	Верно	432
935	125	40665dee-aed9-4bdf-9b91-6bf7e95247a3	Откупу	t	Верно	433
936	126	19724192-1747-4e56-a761-cbb56032495e	Проливу	f	Неверно	433
937	127	dbf203a7-3c61-462b-a714-199132aeba6b	Откупу	t	Верно	434
938	127	fb05dfcc-812e-415c-870d-0d22a10b2807	Боковику	f	Неверно	433
939	128	ee4d64d9-5ccb-4199-bf78-9d939b829ed4	Проливу	f	Неверно	434
940	129	d8aab66c-ae1a-4af0-b5c7-da659d9978c1	Боковику	f	Неверно	434
941	129	20620f45-9899-48dd-b10f-eaa0e9630da3	Несомненно!	t	Верно	435
942	130	7ddb5053-1e70-4250-b7a3-e4fcbf1a3dfd	Не важна	f	Неверно	435
943	131	466a1792-bfc3-4584-9457-234b09c33353	Несомненно!	t	Верно	436
944	132	a067a91d-e3be-4ce1-9768-2ff985d0b4f9	Не важна	f	Неверно	436
945	132	ffc122b7-74f0-4297-8740-8df59bc936dc	Перспктивам	f	Неверно	437
946	133	d3b60d2e-8d2d-4b9b-83e0-13b456ad53a1	Динамика роста + перспективы	t	Верно	437
947	134	1a48f4d1-cb8d-4d1f-9aef-35adffe3d38b	Перспктивам	f	Неверно	438
948	134	fa1b5c4a-edf5-4bdf-a995-5704101316f7	Новости	f	Неверно	437
949	135	63a6b094-3589-4699-8ca6-d8e7bad6b2d5	Динамика роста + перспективы	t	Верно	438
950	136	bf55c371-6f85-4cd8-842c-bbeff494a6d5	Новости	f	Неверно	438
951	136	ea570a0d-d6a4-47c5-a426-90f5fdb6534f	Выручка	t	Верно	439
952	137	0fcbdb05-5c86-46fc-a060-462673b605aa	EPS	f	Неверно	439
953	138	0db71d41-9106-4a7a-9fb6-a369e2e1725b	Выручка	t	Верно	440
954	139	c4999fae-92cc-4da9-9458-abc5d2163673	EPS	f	Неверно	440
955	139	cda37bcf-7b53-46be-83bb-1f6b22ee0283	Компания теряет статус и вес	f	Неверно	441
956	140	eb6f5aee-aafd-40fc-8c79-c1bd69f37ea8	Стандартная практика, случается у всех компаний	t	Верно	441
957	141	e83e149b-bae9-4e8b-a325-42f0a905164c	Компания теряет статус и вес	f	Неверно	442
958	142	59714cbb-e495-40b9-ac05-d049b641cb14	Стандартная практика, случается у всех компаний	t	Верно	442
7576	948	571d6793-9e1b-4b70-bc46-c638059111ee	0	t	0	3323
9072	1040	d8f44925-0c81-4bc2-b613-148eb2a7eb9a	Верное суждение	t	Правильный ответ	4048
9073	1041	85e49ee4-3303-426a-a2d0-4037d44913ef	Неверное суждение	f	Неправильный ответ	4048
9074	1042	f5e9eb4e-afe3-48d5-a6dc-421b5be67d8d	21:30-22:30	t	верно	4049
9075	1043	8af47bf6-c5af-4af6-be97-5b50112bf00e	21:10	f	неверно	4049
9076	1044	4b184d2d-e895-476f-b1ef-b860156432c9	23:45	f	неверно	4049
9077	1045	69c12e29-9ea6-4a85-843a-7a9e65fe0fa0	Можно	f	неверно	4050
9078	1046	0b56e697-abae-4130-8577-7b8b8bdabc6a	Нельзя	t	верно	4050
9079	1047	943fc927-4365-4345-ab60-b29583b487f0	Нужно!	t	верно	4051
9080	1048	c4714257-269e-4f80-9d08-cce66b3687dd	Нельзя	f	неверно	4051
777	63	f9c6a84b-12d6-43db-aed6-207fc7e431ec	Показатель экономической эффективности бизнеса	t	Верно	365
778	64	8f4d5238-12ab-444f-a440-a7f4bd776376	Политика бизнеса	f	Неверно	365
779	65	f8f0e715-217b-43df-a51a-9b4734e0f7a9	Сложный мультипликатор	f	Неверно	365
780	66	326d2a47-d620-4f61-bb6d-696eaeffa181	сколько прибыли осталось от выручки в %+	t	Верно	366
781	67	3dfa0ecf-1bf5-4f13-a82f-80a47558c1da	сколько выручки осталось от прибыли в %+	f	Неверно	366
782	68	72f0aa58-bd75-4c93-a7fb-78d7976cd749	слабой маржинальности, маленькой прибыли от выручки	t	Верно	367
783	69	a3678ec4-cd63-471e-85fd-6b4fc4558a35	Высокой маржинальности	f	Неверно	367
784	70	2e1d7d8c-21ab-401a-ada9-0f4b8c7b0123	Буду	f	Неверно	368
785	71	a3aa0d3b-7804-45eb-ac86-1e5542d63ce1	Не буду	t	Верно	368
786	72	b975820d-b86b-47cd-a74e-ac10dae9edc9	Учитывает налоги	f	Неверно	369
787	73	94ee6c29-6efb-4345-a1e8-df9bd618a7b2	Не учитывает налоги	t	Верно	369
788	74	eed38b3e-652c-4376-96dd-a4f9af34b4f5	выручка компании - себестоимость проданных товаров	t	Верно	370
789	75	12d56d9b-a180-495f-b75e-6b9b387bd59a	выручка компании+ себестоимость проданных товаров	f	Неверно	370
790	76	2464783a-2fb1-4c22-923a-6d8d9eaa1784	сколько денег уходит на покупку товара	f	Неверно	371
791	77	77028940-4b84-47f0-8402-cc48852059d2	сколько денег уходит на реализацию товара	t	Верно	371
792	78	d0d02e11-f4ad-4b99-82b6-f778ccbc8f7f	Лучше	t	Верно	372
793	79	2e8f2e0f-9545-443e-a268-07afffd9eba2	Хуже	f	Неверно	372
794	80	4a8cf36d-883d-47fa-a88f-ee06d18764b5	Рентабельность бизнеса	f	Неверно	373
795	81	106928e7-430f-4ca1-b6a8-07dc26dacf61	Рентабельность капитала	t	Верно	373
796	82	05d27f3c-2212-466c-9a8c-170e5d483dad	Рентабельность инвестиций	f	Неверно	373
797	83	fed82626-f0a2-444c-9553-21c6d3b10509	Может	t	Верно	374
798	84	41a343f7-a1ff-4585-aa20-57ab129a015f	Не может	f	Неверно	374
799	85	ee7292dd-dcd5-4f25-98c6-d2c6815f3e3d	Рентабельность активов	t	Верно	375
800	86	655636b7-7601-4a94-8f56-10df18de3e44	Рентабельность инвестиций	f	Неверно	375
801	87	4843d3bc-3e49-4689-9054-c9c3ab6b3424	Рентабельность объектов	f	Неверно	375
802	88	df0d0a12-1ad4-475c-bc76-27f0687dd4ef	он учитывает заемные средства	f	Неверно	376
803	89	36c1d0c2-0558-4902-b81b-38dfe5c48c94	он не учитывает заемные средства	t	Верно	376
804	90	671388ab-b22c-44e8-81f3-4ba3239fb9c9	Рентабельность инвестиций	t	Верно	377
805	91	bd3a25e2-3c80-4a0d-92b2-edd387fa9e38	Рентабельность активов	f	Неверно	377
806	92	8b3a7f36-395b-46d1-8b82-7e0b0b87eee1	50р	t	Верно	378
807	93	11930268-26d9-4fc4-9aa8-89088b5239cd	150р	f	Неверно	378
808	94	eccb23fb-4a6e-4612-8058-ed57eef338b8	15р	f	Неверно	378
809	95	000ce3b6-95fb-48b1-9172-6c7cc8088499	Рост продаж за 5 лет	t	Верно	379
810	96	aa7b5b4e-76ed-47a2-85ec-5c9a5c4ef32a	Рост активов за 5 лет	f	Неверно	379
811	97	07941ce6-0cf4-4e57-a13b-828c187d7c81	10%	t	Верно	380
812	98	9accfcfb-a9dd-4ca0-9d61-e68ce61b646c	3-4%	f	Неверно	380
813	99	7aa91dea-8ae8-4952-8762-080779c78369	60%	f	Неверно	380
814	100	dbd67804-6217-4d89-9d42-ac604ce2110d	компания стремится наращивать объем продаж	f	Неверно	381
815	101	1f0b0e40-bb61-408f-8e49-68e7b765415c	компания не стремится наращивать объем продаж	t	Верно	381
816	102	fa8081e3-c59c-4b22-8247-2eba4716e3b0	Капитальные затраты за 5 лет	t	Верно	382
817	103	368d5651-1d6a-43a2-add8-6769befc57bc	Рост уставного капитала	f	Неверно	382
818	104	a86de88e-4de5-42fd-9b41-8a5c0997e6bc	Рост количества сотрудников	f	Неверно	382
819	105	65752030-dfed-4c78-bc66-1cfdf8264a34	Отражает	t	Верно	383
820	106	e1606fe1-bb91-4238-bfcf-bb8851c34a42	Не отражает	f	Неверно	383
821	107	1b222f80-668d-4d36-9f44-de166ff3726b	10+	t	Верно	384
822	108	0f7136eb-044a-425a-96d0-6983240b1e71	20	f	Неверно	384
823	109	2529ccc4-25aa-4134-896a-c20d3926e760	1-3	f	Неверно	384
824	110	3c983e32-a111-4918-8a7b-824a265e8197	рост разводненного EPS за 5 лет	f	Неверно	385
825	111	b0095dd8-5f4a-4dad-b1a6-4020633a3b26	Рост обычного EPS за 5 лет	t	Верно	385
826	112	c6b524d4-685a-4a12-8bf4-c7fffa047bc1	10+	t	Верно	386
827	113	a36d8ce3-b1c1-4356-968e-29fceba81477	5	f	Неверно	386
828	114	53d59ab2-b9a8-4c00-a5e6-46d83ac9742c	150-200	f	Неверно	386
13361	1579	e361c46b-666d-4a46-b17e-ea86b03c474d	Буду сливать	t	неверно	5847
13362	1580	a9a22426-2cea-46bf-8c5a-1f2c8a6b1d88	Не буду сливать	f	верно	5847
13363	1581	fc304469-2fad-40d9-a71c-12ef339c4a50	Не буду, она же упадет еще ниже	f	неверно, так мыслит каждый хомячок	5848
9932	1122	a36b5bad-5ea2-44c5-9571-302ddb62621c	день	t	верно	4461
9933	1123	a7d127ec-91a8-4a75-b8a4-2835c9aa516d	4 часа	f	неверно	4461
9934	1124	557c5947-aae7-4890-87c9-d65577e9b41f	Нет, для чего они?	t	верно	4462
9955	1145	f71f52cc-961f-4ca6-9d6e-c597f72bb39c	0	t	0	4471
13364	1582	573b8f61-5a24-4546-a5fd-37944c9d27ab	Буду, сильная компания, толпа всегда ошибается	t	верно	5848
13365	1583	1b89e2b5-413c-4b68-898c-0bc5c3280d3c	Хомяки	f	неверно	5849
13366	1584	c0133478-d08d-44d2-ba42-8c01f1822936	Спокойные инвесторы	t	верно	5849
13367	1585	8d527f51-d3d5-4b13-9702-394a218eeae4	Не поддамся на провокации	t	верно	5850
13368	1586	34735eae-0ae6-4787-a8f1-7acbf784fcfc	Придется сливать, толпа убьет	f	неверно	5850
13369	1587	79a934f2-66e4-49bf-8df1-3f4fc37cf2f2	Да	t	верно	5851
13370	1588	5bf26e83-4132-4a40-ac7d-b4ff65493480	нет	f	неверно	5851
13371	1589	44be8755-f037-4326-9baf-1470c4b24407	Да, солью	f	неверно	5852
13372	1590	18cf128c-fe53-47d2-9a66-e1cd12d13d47	Откуплю или оставлю	t	верно	5852
13373	1591	4b3611f6-3024-4066-95eb-9e54fa863861	Да, такова моя натура	f	Тогда рынок вероятнее не для вас или адаптируйтесь	5853
13374	1592	8269f2c9-4acc-4506-948b-19044a7cc39a	Нет, я стал(а) умнее и не буду переживать	t	верно	5853
9752	1106	738d9336-6e3b-4d6d-9662-66c160ace62c	Да, конечно	t	Верно	4384
9753	1107	19d2ddf5-2a74-4b9c-bab3-6195cd0ea376	Нет, не могут	f	Неверно	4384
1033	143	2f140682-6530-461a-bafb-9f9f3a6d07e6	для составления мультипликаторов и рентабельности	f	неверно	474
1034	144	f5c24fb2-a755-4a24-85bd-60e29a3b7499	Для рисков, судов, НИОКР	t	Верно	474
1035	145	19963a35-a4ca-46fc-8c7c-5b244ed11273	8-K/10-J	f	Неверно	475
1036	146	a596a528-a6cd-4899-80d0-d6af0e40a328	10-Q/10-K	t	Верно	475
1037	147	a499737d-ce7e-4999-929b-e447b3c40b9d	16-K/29-M	f	Неверно	475
1038	148	ad3f46b1-7f59-46cc-a498-3faa72ecb31a	10-F	f	Неверно	476
1039	149	92d52cfd-f28f-4326-94d4-353f0d39fe0a	15-F	f	Неверно	476
1040	150	81a8bfa2-7d54-4a96-9b9f-11810c78827d	20-F	t	Верно	476
1041	151	53da48c2-4334-4ebf-916f-a759325c6a6e	Нет, там нет ничего полезного	f	Неверно	477
1042	152	380e05aa-c601-4a0b-9675-dcbc1d330587	Да, если вам это интересно	t	Верно	477
1043	153	91ed1d5c-7076-4d6e-b5c8-e013c37f3099	Очень. Вспоминаем ENDP	t	Верно	478
1044	154	289a0316-0ae9-4c16-9b17-b58f9b567aaa	Нет, не очень важный	f	Неверно	478
1045	155	ecf609d9-3f36-41c6-85f5-53f3013605d4	Стоит, риск оправдан	f	Неверно	479
1046	156	0992e992-802e-49b9-b99e-9e8da343f754	Не стоит, риск слишком велик	t	Верно	479
9754	1108	bd5b16f7-f79a-4f27-9c4e-f48fd37556bb	Отчетов	t	верно	4385
9755	1109	6a42c74d-da82-4481-b248-a33dda4a190b	их выдает компания, как готовые мультипликаторы	f	неверно	4385
9756	1110	c1d28cab-dfc6-4f2f-886d-0b9b23785c12	Да, есть!	t	верно	4386
9757	1111	59408eb8-40ae-455c-a1ae-9acfce21c6ba	Нет потенциала	f	неверно	4386
1108	157	ff7ce4d6-112b-444a-b8dc-124c3e944b31	Да, но не у всех компаний	f	Неверно	508
1109	158	83f4f91a-cd9b-4c3b-bbd5-5d12b5cd9301	Является важным у всех	t	Верно	508
1110	159	a1ddd785-14d2-47df-a99e-af9ed861ede4	Спорный момент, надо узнать, почему нет более крупных вложений	t	Верно	509
1111	160	3ad17347-7115-4eab-91c8-f9772a58dc86	Можно, все наладится	f	Неверно	509
1112	161	196c213e-25e0-40ff-ac25-aff11de3ff0c	Рассмотрю к покупке и проанализирую по иным показателям	t	Верно	510
1113	162	c7a98838-01dd-4f88-8e0b-d1d156ed6235	Куплю	f	Неверно	510
1114	163	d090a5c9-e380-4b2a-8042-86c815899364	Не куплю, слабо	f	Неверно	510
1115	164	dd32fefd-b24d-4d4f-acd2-660dbedcd6fb	Важны, также, как и НИОКР	t	Верно	511
1116	165	cb7e56b9-92a2-44ce-81e9-ede56443bbfe	Они важнее	f	Неверно	511
1117	166	68b0da68-39d5-423d-8ba1-399b069991b2	Компания права и знает лучше гиганта	f	Неверно	512
1118	167	9c940800-c8ad-4b9a-ab83-724a174e801b	У FB выстроенная модель роста, не стоит идти против логики	t	Верно	512
1119	168	5b275df9-2115-4cd0-a504-a4addc2b186a	Да, почему нет?	t	Верно	513
1120	169	f232451a-411e-4407-83dd-90a4e2e4e5a9	Не стоит, очень слабо!	f		513
9758	1112	d7c2117c-26e3-44b5-adca-0377132f5f26	Да, важные	t	верно	4387
9759	1113	2cf3ede6-8aae-4f5f-afa5-0feb5364989a	Нет, есть куда важнее	f	неверно	4387
9760	1114	811214b0-1032-4e46-939a-3f4a42169185	Только если иск не навредит финансовой составляющей	t	верно	4388
9761	1115	9c6a94d1-bf1d-4f2e-9bb8-c18cf657478d	Не буду	f	неверно	4388
9762	1116	bf4db30b-b48e-40fb-8a6f-f50b7d68aaa3	Да	f	Неверно	4389
1141	190	0e232934-9759-4680-b214-f76c39c5f3a5	0	t	0	521
1142	191	2fca62c5-3e74-4a3d-a2df-869abbc33086	0	t	0	522
9763	1117	bb29c03a-4f65-4dfc-952e-686ef4cb5f2f	Нет, сначала анализ	t	верно	4389
9764	1118	98b4a3d9-b7dc-4b7e-a236-88290603053e	Они улетят на все 30-40% вниз	t	верно	4390
9765	1119	2ee38de6-3936-448c-8388-5510d97b63c6	Они будут в боковике	f	неверно	4390
9766	1120	571de345-1879-4fd0-85ad-20c1a60a345a	да, конечно!	t	верно	4391
9767	1121	9c4ad75c-e4ee-4118-b8ed-19ee68334aed	нет, конечно!	f	неверно	4391
13375	1593	cb58f337-0918-4080-ad04-6023f3bae17b	Хорошо	t	верно	5854
13376	1594	06fbb136-5909-414f-9051-d366aa694973	Плохо	f	неверно	5854
13377	1595	bff979a2-87b9-4214-bab4-6fd1dbc2187f	Конечно, а вдруг что	f	неверно	5855
13378	1596	ca7814eb-ef8c-403f-9381-7a167084d23f	Не стоит	t	верно	5855
13379	1597	756c32e1-1def-4d26-b102-1c06b1eb1ea3	Стоит	f	неверно	5856
13380	1598	06494b86-786b-4ecf-9c15-02c947dd76bb	Не стоит	t	верно	5856
13381	1599	41d6cee1-3200-4a75-ba8e-862231203916	Не стоит, оставьте компанию	t	верно	5857
13382	1600	658857e4-8231-4c78-af40-4330a66a9cf3	Стоит, это второй шанс	f	неверно	5857
13383	1601	d72aec9c-e04b-4d56-a552-4991b7c35446	Стоит, там большая прибыль	f	неверно	5858
13384	1602	7742f26b-f427-4a25-9d67-b6e2c2fcac5f	Не стоит, она не входит в мой план	t	верно	5858
13385	1603	915295a6-307b-4e3b-b2e3-c8208d7762a6	Стоит взять	t	верно	5859
13386	1604	cf02bd18-40e5-4aa7-9975-88165749a780	ждать до последнего	f	неверно	5859
13387	1605	42c4eb7c-7c4d-478a-88cb-7289defac9c6	прибыльней, чем по рынку	f	неверно	5860
13388	1606	b5426f98-60d0-4789-85e2-60ac73c3cc48	убыточна и заберет ваш депо	t	верно	5860
7557	930	7c8f9683-3db2-40a0-b34d-1c5b02c7c6ee	Улетит вверх	t	верно	3313
7558	931	64ef513b-6845-4d0b-afac-bf18eee81095	Полетит вниз	f	неверно	3313
7559	932	9dcd9ebe-1ac3-4a47-bab4-b4d60a780b02	улетит вниз еще сильнее	t	верно	3314
7560	933	ff85a6c2-b32e-4596-8761-a7c4c091bfc2	уйдет вверх	f	неверно	3314
7561	934	12921153-e111-4ccc-a6cc-8fa1d711ab7e	Скорее всего компания быстро начнет расти	t	верно	3315
7562	935	ebb936ef-1b07-404d-8193-5120df321456	Скорее всего будет падение	f	неверно	3315
7563	936	61583833-2ee0-4dc2-b359-ee4c4647bc28	Индекс падает - копания растет	t	верно	3316
7564	937	c22a1bd4-33d9-4de1-96d4-8cad593d3a49	Индекс растет - компания падает	f	неверно	3316
7565	938	b4eb0126-7bc3-4bdd-9763-4756a811bc9a	да, конечно	t	верно	3317
7566	939	a2560192-f04d-47ee-b0c5-ec111d803150	нет	f	неверно	3317
7567	940	c8f59f72-db52-4aba-867f-dcef3832b2a1	Против рынка	f	неверно	3318
7568	941	ed73ff51-3da0-4b42-826a-cc8df22f1efc	Следует за рынком	t	верно	3318
7569	942	dae4c24f-08a8-4377-abe6-051693e31486	Можно	t	верно	3319
7570	943	407ba983-9c61-4119-976b-d0b0668d51b9	Нельзя	f	неверно	3319
7571	944	bcb151ec-8864-4767-8ed9-ec7cd7805b4e	Можно, но вряд ли будет что-то интересное	t	верно	3320
7572	945	97dfa122-9b01-4ed0-8587-3bb4756e4c69	Нельзя	f	неверно	3320
7573	946	a38b7ee0-e82d-49c6-939a-8de0ababf187	Применима	t	верно	3321
7574	947	4cd87166-e684-499a-b5a4-c19e66168606	Не применима	f	неверно	3321
11969	1345	8a285cfd-4109-4bfb-be53-f5aa3da0c8a2	Стоит	t	верно	5324
11970	1346	2d5eef81-244a-4b6d-95d6-006d6990ae20	не стоит	f	неверно	5324
2223	728	eb97c717-4cdb-4cbe-bc3d-b7ed11e93707	Продукт произведенный внутри страны	t	Верно	985
2224	729	cae7db1d-ba27-4451-bd7c-20787d13db07	Национальный продукт	f	Неверно	985
2225	730	1c51ba93-ba69-4177-adda-b30a58418c11	ВНП	t	Верно	986
2226	731	f4c02f5b-344e-458b-bd04-08cd21c5f692	ВВП	f	Неверно	986
2227	732	862ea5dd-1975-4ecf-b7ea-8554d34cf631	ВНП	t	Верно	987
2228	733	5f1eec43-ae3e-42d6-b7ff-e55c074122be	ВВП	f	Неверно	987
2229	734	947cd9d0-493d-46af-bda2-3b12900b4c86	2-3%	t	Верно	988
2230	735	5e2b9041-b1d4-4c30-9c34-8cb2bf03921c	1%	f	Неверно	988
2231	736	37b5b3f3-c56b-4053-a45a-e16c9650eb52	7-8%	f	Неверно	988
2232	737	39a06e44-36e1-427c-9b46-cca2882b02c6	Нет	t	Верно	989
2233	738	254b707d-7300-40bc-9788-b539d548bd6d	Да	f	Неверно	989
2234	739	121ce0cc-bff7-465c-bada-e446518ccd2e	Хуже	t	Верно	990
2235	740	affb05b2-4b46-4cf2-9a8f-fbf62c3d237d	Лучше	f	Неверно	990
2236	741	b022ff75-6151-4914-bce7-cd2bee0e206d	Хуже	t	Верно	991
2237	742	e37d7c73-4ad4-41ba-8f16-d88b3a0a04d0	Лучше	f	Неверно	991
2238	743	2cbee46a-9552-431b-a69f-519457938343	Рынки отреагируют снижением	t	Верно	992
2239	744	595f7729-8a71-460e-8645-691e4fe4f954	Не отразится	f	Неверно	992
2240	745	429391ed-c77b-4ef1-918e-8f1e89120783	Да	f	Неверно	993
2241	746	900ed942-5c3e-4158-94fe-bcea5bdb991a	Нет	t	Верно	993
2242	747	4c4fb744-1b73-41d8-be8a-e63758d8778b	Опроса	t	Верно	994
2243	748	89245d4e-2f42-4994-a11b-3c297fa37867	Голосования	f	Неверно	994
2244	749	12dfdc7d-f141-4cb6-a560-5037a7b8dc31	Может	t	Верно	995
2245	750	a99b0ce3-48d5-4deb-8a0e-a9240865ec98	Не может	f	Неверно	995
2246	751	a546d324-c21b-4828-b467-577b2fafac40	Вниз	t	Верно	996
2247	752	66aad250-a179-4e3f-96ef-574401323387	Вверх	f	Неверно	996
2248	753	0d343d21-4865-4ec2-b621-4ba1b50af3e7	Растет ставка - растет безработица	t	Верно	997
2249	754	bdfd145c-cef7-4380-a160-2c65a85552ce	Растет ставка - падает безработица	f	Неверно	997
2250	755	8a578ef6-22b3-4473-b2b9-09aca1fa67a3	Дать больше ликвидности на рынок и подогреть рост экономики	t	Верно	998
2251	756	ce98f09c-de95-4692-baa8-802c09d18993	Понизить инфляцию	f		998
2252	757	bf561d78-fa2e-4847-b1d5-985e8e2ba1c7	Обязательно	f	Неверно	999
2253	758	a257ddc6-0d2b-4d10-9924-edf3e544875a	Сдержит точно, но есть и другие факторы	t	Верно	999
2254	759	1207ff64-a2e0-4edc-8cf7-09681b29114f	Может	f	Неверно	1000
2255	760	1c21b662-f132-4e07-bab7-d6e2e98f7800	Не может	t	Верно	1000
2256	761	a8bbd826-6e35-4527-a814-19c5fed2d3f3	Не приведете ни к чему	t	Верно	1001
2257	762	ea7095c8-d946-4365-a919-88147f728cbd	Приведет к понижению инфляции	f		1001
2258	763	7a0c13d6-2a70-4254-a6ff-f13c157e76de	Могут, почему нет?	t	Верно	1002
2259	764	4539ad95-a707-4a9c-bcb4-04d00d13799d	Не могут	f	Неверно	1002
2260	765	fe25c142-1c1f-4012-911f-d0a3d28ac5e7	Влияет	t	Верно	1003
2261	766	43847b67-c96c-44f3-8977-64b9d3d2fc89	Не влияет	f	Неверно	1003
2262	767	39031100-00e3-40f7-aef4-74dd3e6388dc	Наоборот	t	Верно	1004
2263	768	f59c66a5-602f-484e-8168-88427eb67ed2	Да, так	f	Неверно	1004
2264	769	cd6a3bfe-1ee2-4ed0-93e0-cff8305b84d4	Может	t	Верно	1005
2265	770	2384129b-69bb-4ecc-8384-991f22816b2a	Не может	f	Неверно	1005
12487	1497	620203fc-69a6-4f17-96f9-72c2b7bd8b48	Куплю	f	Неверно	5515
12488	1498	17680288-78bd-42ad-ac5a-158c447f314d	Продам	f	Неверно	5515
12489	1499	87aa4438-7bc7-4ff1-895d-7b4895a3a05c	Нейтрально	t	Верно	5515
12490	1500	ecb9f07a-dd0c-499e-aa53-115acb7d3d49	Куплю	f	Неверно	5516
12491	1501	a1c826b4-4044-49f3-a372-77d7da3ba657	Продам	f	Неверно	5516
12492	1502	c6777f6c-1e92-43a8-8660-8cfe7ec4a21c	Проанализирую	t	Верно	5516
12493	1503	05404577-18fb-45d8-801d-6b97d81bec22	Куплю	f	Неверно	5517
12494	1504	2422d39e-c47a-40a3-95e3-eddf710f8bcb	Продам	f	Неверно	5517
12495	1505	a0436020-449c-4c18-8156-7058d05d41c6	Проверю инсайдера и его сделки	t	Верно	5517
12496	1506	45f57e90-84ce-4965-a0e1-b9da89ac778a	Да, продам	f	Неверно	5518
12497	1507	706483fd-d4e8-4769-9e89-36e36a0c3848	Не отреагирую, ведь это премиальные	t	Верно	5518
12498	1508	3369be25-d5cb-488a-86b2-e5b2b1f7ef9d	Мелкие сделки, не буду	f	Неверно	5519
12499	1509	e33e5e49-12c2-4ebe-aef6-f4da3fe3f50b	Буду, он может разбираться в вопросе	t	Верно	5519
12500	1510	65cd37c7-d2e6-41b2-93fc-ff2a61c09ad1	Директором, он ближе к компании	f	Неверно	5520
12501	1511	23a980f9-25b1-42d9-843a-982b850708b3	Владельцем пакета, у него нет премиальных	t	Верно	5520
12502	1512	df20a7af-bf2f-4069-92a0-472c2bb0b39e	Можно купить после анализа	t	Верно	5521
12503	1513	6cff64e6-9b7f-4875-ba66-76c86defafad	Не стоит покупать	f	Неверно	5521
12504	1514	de1d2b03-ca36-43fa-80bd-a2c3593951e5	Стоит	t	Верно	5522
12505	1515	f1dd074d-f61c-47a6-81f4-503bd6f8df06	Не стоит	f	Неверно	5522
12422	1432	53581c24-5d05-4170-9943-0296f5967d50	Коэф. валовой ликвидности	f	Неверно	5486
12423	1433	fd343d08-dcdc-4168-b032-4ad70caaf01c	Выражает способность компании погасить обязательства активами	t	Верно	5487
12424	1434	509e474e-edcb-4486-82bc-7aefa54b4580	Показывает максимальное количество дивидендов в след. квартале	f	Неверно	5487
12425	1435	18a1c495-78b5-4631-87e2-26796d5c3e20	Нет	f	Неверно	5488
12426	1436	566acd29-9719-45f3-af76-cef011ccd5fd	Да	t	Верно	5488
12427	1437	5563311a-d157-4442-9810-a00741cd2dc5	Большим	t	Верно	5489
12428	1438	181b1f6a-84b3-43fd-a637-92d27906e472	Маленьким	f	Неверно	5489
12429	1439	28869f05-34ff-4aaa-94db-402d289ba34d	2	f	Неверно	5490
12430	1440	6889c300-b9cc-4a99-9632-c20894070894	1	t	Верно	5490
12431	1441	e2badbab-9890-462a-ab04-ec573d7e4e39	0.1	f	Неверно	5490
12432	1442	de6a9de8-5d7d-48a4-8451-36161b5cbfb2	Коэф. текущей ликвидности	t	Верно	5491
12433	1443	f77d5867-cdea-4004-82d6-f3d548d41b0f	Коэф. прошлой ликвидности	f	Неверно	5491
12434	1444	49a0ada4-9358-43ea-9e1c-a5f804cb5619	Коэф. будущей ликвидности	f	Неверно	5491
12435	1445	9057e6cc-dea3-41fe-b15a-74e64f9b62d2	Во времени погашения	t	Верно	5492
12436	1446	1de63e43-94f4-4f38-89db-cc5fee321e61	В сумме погашения	f	Неверно	5492
12437	1447	b5af3849-e925-4014-b16d-58c842746700	В принципе погашения	f	Неверно	5492
12438	1448	c10546b2-c40c-48ff-9b18-993b0baaf7b7	Коэф. оборачивоемости товаров	t	Верно	5493
12439	1449	d0039b2d-aa26-4d58-898f-4112b25000c1	Коэф. сжимаемости товаров	f	Неверно	5493
12440	1450	23711604-96a7-47d9-8447-921b2f95b110	Лучше	t	Верно	5494
12441	1451	f8b643a3-050e-4e63-9883-311817f3380b	Хуже	f	Неверно	5494
12442	1452	4395e1b9-f3dc-4771-9a64-15f935991bd9	Без разницы	f	Неверно	5494
12443	1453	3d4dfa03-e631-4025-ae15-351b06fe659b	Коэф. оборачивоемости инвестиций	f	Верно	5495
12444	1454	a69d43c0-0c4d-4075-8ec0-ee9d86e4e4c9	Коэф. оборачивоемости запасов	t	Неверно	5495
12445	1455	fc222a9a-b718-4bff-aa4d-c2845abff205	Остатки запасов	t	Верно	5496
12446	1456	be88896b-328b-4475-b20e-336eaf02ca34	Излишек запасов	f	Неверно	5496
12447	1457	e710e504-5f63-4b72-9f72-52da12a2d71b	Отсрочку запасов	f	Неверно	5496
12448	1458	a689e15c-b6b7-4ca0-892b-a8234e0e7a83	Большое количество запасов и слабую динамику продаж	t	Верно	5497
12449	1459	5950ac8b-f4e0-4361-ac39-95986c86cb59	Маленькое количество запасов и высокую динамику продаж	f	Неверно	5497
12450	1460	20c5f913-be9c-4be9-8136-563c0164f82e	Да	t	Верно	5498
12451	1461	387a8d70-36f8-4439-aea9-40371816f98d	Нет	f	Неверно	5498
12452	1462	d7c5224d-a5b4-48e3-a41f-7cd29d03957a	Нейтрально	f	Неверно	5498
12453	1463	fb66328b-fd9a-4fa6-aeed-cb17e8dd3a68	Коэф. оборачивоемости кредита	f	Неверно	5499
12454	1464	6d6a7a48-3c5c-41c8-9b5b-1ce03c0189da	Коэф. оборачивоемости деюиторской задолженности	t	Верно	5499
12455	1465	f226378d-a5a5-446e-8b9d-c0b534199e8e	Коэф. оборачивоемости долгов компании	f	Неверно	5499
12456	1466	ee249872-1259-41b9-9f4a-295fdf037df3	Способность компании вести правильную политику и взымать долги	t	Верно	5500
12457	1467	9aa36c8f-988c-459b-8ca1-d8ec10bf7491	Способность компании к востановлению после кризиса	f	Неверно	5500
12458	1468	d1d2a292-c8e9-4b19-9093-5cdcc5a2f53a	Способность компании искать средства	f	Неверно	5500
12506	1516	f2b34b1a-d67b-4289-8933-7eda172076e5	Которая выросла	t	Верно	5523
12507	1517	43c249c0-41d1-4c70-aab9-12070509ed00	Которая упала	f	Неверно	5523
12508	1518	bd3330a6-8488-405f-89e7-cc00bdec00b8	Да, ошибка	t	Верно	5524
8854	992	383c9e58-4b2b-4e09-8ed8-471c0eb07341	Фибоначчи	t	верно	3942
8855	993	024560ed-120a-47e9-b1fe-524febcb03c8	коэффициенту 0.618	f	неверно	3942
8856	994	e89cda81-bf28-4a13-bb7d-1eeb32f0ab9a	Может	t	верно	3943
8857	995	65f6a6cc-bb42-4d04-91da-5f8e75232036	не может	f	неверно	3943
8858	996	3f84a942-3420-4461-be55-26b48bba64b2	Да	f	неверно	3944
8859	997	e74920aa-63e6-4b18-9cd1-a8a21cc14122	Нет	t	верно	3944
8860	998	79a977f4-31fd-40f5-a0b0-7e96ae563198	4/4	t	верно	3945
8861	999	1b1f2daa-3b98-48c1-9b55-8f7710f18abf	2/6	f	неверно	3945
8862	1000	5ce41bbd-77c7-42d5-865e-7b5d7140c662	Да	f	неверно	3946
8863	1001	85df0508-0332-4e05-ba0e-b4ec39e84ba9	Нет	t	верно	3946
8864	1002	42dfff55-f5e7-4b6d-affc-0f3146a1a501	1 волна	f	неверно	3947
8865	1003	ee907df7-f6a2-4dc9-89ad-cc13a3228343	3 волна	f	неверно	3947
8866	1004	8631ff21-f199-424f-a0f4-9a99b34fec87	волна А ( 6 по счету )	f	неверно	3947
8867	1005	caebd2bf-c4a8-4f90-a941-b6149ea1ef9c	волна Б ( 7 по счету )	t	верно	3947
8868	1006	2f3da7d9-9a58-498d-b6f9-26e91394b8a2	Ошибка в волне 2	f	неверно	3948
8869	1007	6afd39dc-8a72-4d36-b588-8b2538a85cdf	Ошибка в волне 4	t	верно	3948
8870	1008	06db91bb-b9d4-4155-8d42-71e75611e5d0	Можно	f	неверно	3949
8871	1009	eecc00b6-86e9-4b4b-a9b6-d604093c1182	Нельзя	t	верно	3949
8872	1010	7b59a3b0-548e-4de2-be00-d3944fa03971	Можно	t	верно	3950
8873	1011	b078caf5-9601-4788-b5d3-9976c4f8ee13	Нельзя	f	неверно	3950
8874	1012	3ee118b8-fdf1-4ed1-b03b-9a3e1386b65e	Да	t	верно	3951
8875	1013	50ede81e-3379-4a0a-b9e2-a76742411d99	нет	f	неверно	3951
8876	1014	28014583-d5ee-4add-a4ca-f309cf96a992	3	f	неверно	3952
8877	1015	42ea9570-f098-4d85-b80e-81e6b7dd67bd	4	f	неверно	3952
8878	1016	adf6d2bd-6b78-4f07-a6f2-7d68c45d3a1f	6	t	верно	3952
8879	1017	77fc887d-db7c-4cd6-b6b4-416200598f2f	Отменяется	t	неверно	3953
8880	1018	1cc0cd7b-98c5-4213-8ec9-d5407197cb3a	Все нормально, ждем возврата	t	верно	3953
8881	1019	cdd9361c-ceb3-4c82-873e-e0359e9ec5a4	Волны Вульфа	t	верно	3954
8882	1020	d57846a1-af4b-48b9-8372-9297e36ff5a8	Обман	f	почему обман?	3954
8883	1021	13a5cc61-a304-4290-b70b-2d972d4f7026	Волны Вульфа	f	волна 5 не ниже 3	3955
8884	1022	61f44a96-70da-453e-a24d-175680ecdaf7	Обман	t	верно	3955
12337	1347	e7a227a7-4ce0-4b71-ac60-456fff45e58e	Единицы технического анализа	f	Неверно	5457
12338	1348	874eb686-c0cb-49aa-9415-3e99a3df8d01	Формулы для рассчета здоровья компнии	t	Верно	5457
12339	1349	b1c178a6-5c32-4b88-bb07-df3093aea39b	Составляющая графического анализа	f	Неверно	5457
12340	1350	a9b53d63-d5a7-4542-b96a-0acdf19c6b10	Цена/прибыль	t	Верно	5458
12341	1351	49e94809-0d16-4eb3-b72c-f164a0f03bf0	Выручка/прибыль	f	Неверно	5458
12342	1352	ca675cb5-fbb1-4d00-b0fa-4d59eb972052	Долг/капитал	f	Неверно	5458
12343	1353	d59e95fe-f723-43eb-ab87-ec2e485a72a4	6-8	f	Неверно	5459
12344	1354	e22d1792-4d85-4ec2-b9ac-75f268bf27ad	8-10	t	Верно	5459
12345	1355	67b475ba-7206-4359-8988-94fc149a7d4e	12-16	f	Неверно	5459
12346	1356	24e9f6f1-a8c7-4075-89cf-738375e959cd	Да, критично	f	Неверно	5460
12347	1357	516d415f-9294-4dcf-8e9d-39265f07ba3a	Нет, не критично	t	Верно	5460
12348	1358	d19368c4-cb8a-43c5-8eaa-a710f8e9438b	Капитализация/выручка	t	Верно	5461
12349	1359	ef31556e-4d66-427f-9bb0-9a54948b11e9	Капитализация/прибыль	f	Неверно	5461
12350	1360	27766a1b-4036-40c0-95c5-78992341016b	Прибыль/цена на акцию	f	Неверно	5461
12351	1361	e3162625-ade2-4770-a12d-dbe22e2d1266	1-2	t	Верно	5462
12352	1362	d554fc0e-27a0-470a-8456-a5bd78a7824e	0.5-0.7	f	Неверно	5462
12353	1363	d4498868-bf7c-4015-abd5-94a419ebdb61	3-4	f	Неверно	5462
9935	1125	f440d141-961f-4fa4-a956-5c6aaf0b4577	Да, лучше определим тренд	f	неверно	4462
9936	1126	4d61abfa-3575-4b3b-9382-a75cd76943dd	Боллинджера	t	верно	4463
9937	1127	af716938-563b-415f-a51b-1e237dc05a74	RSI	f	неверно	4463
9938	1128	eef3c0cd-9b95-4106-8549-9bc3607c4f0f	MACD	f	неверно	4463
9939	1129	750b3bda-13dd-46f4-ad8c-3d6569983f7a	скорый всплеск волатильности	t	верно	4464
9940	1130	19aec0ac-038e-4116-ac3d-15813a6959d9	падение	f	неверно	4464
9941	1131	218ce642-dce6-49df-a915-f5675fa263d6	ничего	f	неверно	4464
9942	1132	56ed287e-fef4-44db-9a87-f3f152a5d673	ЕМА	t	верно	4465
9943	1133	d6dc644c-b9b6-4788-9d0c-804c5099f683	Боллинджр	f	неверно	4465
9944	1134	8e0e4063-97eb-40df-a9b4-6a430e4f5feb	MACD	f	неверно	4465
9945	1135	a525f75f-1a62-416a-b6bc-50b19a26ef34	Сильный	t	верно	4466
9946	1136	16aecb27-4ae0-4679-ad14-94041365a31e	Слабый	f	неверно	4466
9947	1137	f888d3ba-c887-4e42-84f1-e504359a46f3	Да, очень!	t	верно	4467
9948	1138	c70e20fd-881d-47fc-974a-540d92bf85ee	Нет, слабый!	f	неверно	4467
9949	1139	e141ce73-e52b-4b7a-87fb-a37f2539ea64	выкупа	t	верно	4468
9950	1140	38d69ecc-219c-4910-a106-948882700809	продолжение слива	f	неверно	4468
9951	1141	75dd9c09-5f0c-4b9b-96a0-d0bce96c3239	достаточно 60-80%	f	неверно	4469
9952	1142	be055d57-0121-4db3-a006-b971fe07a356	всех	t	верно	4469
9953	1143	5f754cf2-efe0-4f4e-a6de-b0dc28c9dcdb	огромная вероятность	t	верно	4470
9954	1144	6be33ca4-32aa-45a8-a9d8-9645e57a0ba6	маленькая вероятность	f	неверно	4470
9956	1146	ef37922b-dd74-49a9-9a4c-0bd6ca6d995a	0	t	0	4472
9957	1147	a04855dd-41c4-4508-ae0b-5ac1d72194bb	0	t	0	4473
9958	1148	06512d5e-124f-42d8-96c4-bd23846ede89	0	t	0	4474
9959	1149	f0a78099-bcf2-4bce-b276-2992774d8b06	0	t	0	4475
9960	1150	192b22f9-65e0-4ac0-80de-ad074b2ddbae	0	t	0	4476
9961	1151	4ec6aa81-932a-4f18-81f6-079e82652631	0	t	0	4477
9962	1152	0faa69d7-3495-4841-a65b-391865683c59	0	t	0	4478
9963	1153	abd81279-fd78-456b-a5a1-9e8491123997	0	t	0	4479
9964	1154	a5a12a9c-8af2-41aa-84ac-bc1a4b916cae	0	t	0	4480
9635	1077	5f047ab2-25d4-4fc9-81bf-ef9e29a7b747	Индекс страха и жадности	t	верно	4326
9636	1078	1084c349-752c-49ef-b95e-eac91940bf10	Индекс волатильности	f	неверно	4326
9637	1079	ac3462ff-844a-4c82-91eb-df60688c7cf8	Индекс страха и жадности	f	неверно	4327
9638	1080	0d21cb2c-01af-4195-ba99-6c6a06ecf4dd	Индекс волатильности	t	верно	4327
9639	1081	bb350834-3242-4c21-9335-b7c0a8fea1b1	Рынок перекуплен	t	верно	4328
9640	1082	a4d9d819-9c04-49f6-a024-e5bb297d51e6	Рынок перепродан	f	неверно	4328
9641	1083	fadd86ba-e1c3-4d5e-95b5-7167636fbd89	рынок перегрет	t	верно	4329
9642	1084	ac926137-a78a-4d96-b62a-74bdf0a0b1f9	рынок перепродали	f	неверно	4329
9643	1085	7019d0a9-4fe0-48b6-ac1c-6391ad467278	Скорая распродажа на рынке	t	верно	4330
9644	1086	ceaa6218-c53b-4a6b-b92e-907d3f0b0b92	Пора покупать	f	неверно	4330
9645	1087	e6d145f6-3628-464d-a972-1b2bdcbc327e	падение рынка ( локальное )	t	верно	4331
9646	1088	00c08f8c-fe39-4a4e-9572-0a7a71d23557	Ничего	f	неверно	4331
9647	1089	9be1d55a-3683-460c-bfc8-ef232c8fc1f2	Падение рынка в моменте	t	верно	4332
9648	1090	9f393fec-69a6-475a-986d-7290818126d0	Рост рынка в моменте	f	неверно	4332
9649	1091	6579403a-ee45-47b8-9677-3d4327f0d3a3	да	f	неверно	4333
9650	1092	05a018de-afb8-4ead-a940-7883da4de68f	нет	t	верно	4333
9651	1093	f3aeb22d-597f-4788-b281-afab460f9951	Конечно!	t	верно	4334
9652	1094	a06123cb-a975-4158-8dc5-2f247a1f88b1	Нельзя!	f	неверно	4334
9653	1095	cda9434c-ca5f-434e-945a-1edb00fe187d	Верно	t	правильный ответ	4335
9654	1096	a3ad9554-d07d-4f2b-b7a0-0978809a5814	Неверно	f	неправильный ответ	4335
9655	1097	e9c660ff-3fd3-4e38-b5d8-fcdd73e576fd	На временном лаге	t	верно	4336
9656	1098	1e048ca3-f3f6-4714-be8d-22072a8f9c30	На передвижении масс	f	неверно	4336
9657	1099	83f982cf-4c2c-4adb-9b7d-1c59d36fb34e	На ВВП	f	неверно	4336
9658	1100	d24beb48-5952-42dd-9ff4-ce6240fa589b	Стоит ждать обвала и шортить	t	верно	4337
9659	1101	05055fbe-e10e-4195-a41b-4f1a956a6261	Стоит войти в лонг	f	неверно	4337
9660	1102	9b0256ee-01cd-4dfa-8bde-eb87a519fc72	не можно, а нужно!	t	верно	4338
9661	1103	4bcb4748-e3a9-4f7e-8255-e85e0ab1c9ec	нет, не можем	f	неверно	4338
9662	1104	f4ed3130-d05c-4b26-922e-2f8f47251780	Верно	t	правильный ответ	4339
9663	1105	1a3fc7c6-da11-4c5f-bf6b-24aa1a36cdb2	Неверно	f	неправильный ответ	4339
12354	1364	a77ab2eb-d223-4ced-892f-883b05469c36	Капитализация/балансовая стоимость	t	Верно	5463
12355	1365	6d2d9600-9f26-4d36-b9eb-5948a0c9e31f	Капитализация/EPS	f	Неверно	5463
12356	1366	f3163098-ab0f-4776-b90e-40a5721e3e5a	Прибыль/балансовая стоимость	f	Неверно	5463
12357	1367	57ea7708-9523-4af0-8c4a-ff94f16b8fd5	4-6	f	Неверно	5464
12358	1368	bc8e5939-1a79-4be5-825b-19c425944a10	0.5-1.5	t	Верно	5464
12359	1369	8fdeed47-8225-421e-9bdb-afbbc3f0b6df	3-4	f	Неверно	5464
12360	1370	10dc992a-45ad-4531-9b22-b3aff9c83724	Отношение собственного капитала к заемному	f	Неверно	5465
12361	1371	98f255df-36ce-426e-be73-f8a9c74c0ecf	Отношение заемного капитала к собственному	t	Верно	5465
12362	1372	be6ede90-36d5-4952-bb08-0c3735c7e263	Отношение уставного капитала к собственному	f	Неверно	5465
12363	1373	04fe05e2-b58d-44f8-827d-b110851df2e2	Выше	f	Неверно	5466
12364	1374	24ab22e0-627e-43ce-bfe3-f0de0b497407	Ниже	t	Верно	5466
12365	1375	fb3073f7-0674-4ba8-859a-f1e125a6292c	Без разницы	f	Неверно	5466
12366	1376	6081848f-95d5-4995-b5c4-91db70560016	Прибыль на компанию	f	Неверно	5467
12367	1377	79cb30b5-cb37-4926-b8c8-561db5f550a0	Прибыль на акцию	t	Верно	5467
12368	1378	74bee6da-97e9-4b2e-8205-d6e74c19e1d7	Прибыль на облигацию	f	Неверно	5467
12369	1379	ea23d2e3-b97e-4bd7-abbe-006ec44a6489	Расти	t	Верно	5468
12370	1380	eb04f5a7-9135-4ea0-acb9-b6f2d986100e	Падать	f	Неверно	5468
12371	1381	cfa5150e-3072-4c43-b63b-ae83dc733442	Никакой разницы	f	Неверно	5468
12372	1382	95bab25f-a098-4328-a267-6beb6a351c8e	5	t	Верно	5469
12373	1383	e5839467-1b14-4cb7-98d4-6674029ac0b3	50	f	Неверно	5469
12374	1384	bcbb8145-2ab3-4516-9523-beca5e0eec9c	0.5	f	Неверно	5469
12375	1385	df7d656e-0b0f-4dcc-a5b0-4165db5d17e9	Обычный EPS + налоги	f	Неверно	5470
12376	1386	8390ccbd-0a3a-4fd7-b930-8bf6ccf9d8ad	Упрощенный EPS	f	Неверно	5470
12377	1387	94c6823a-a2d9-4e76-8e4a-d250610b7011	Допустимый EPS при доп. эмиссиях, переводе префов и прочее	t	Верно	5470
12378	1388	17639547-1ec8-4acd-a255-2610ab9025a7	Лучше	f	Неверно	5471
12379	1389	53cf0ae4-474c-4da7-98a3-f5a8a6074b63	Хуже	t	Верно	5471
12380	1390	0a001e6f-a01d-4744-886c-867fd330fcd8	Нейтрально	f	Неверно	5471
12381	1391	f0153a36-e228-4c6c-b82c-9525e6758865	Отношение заемных средств ко всем акциям	f	Неверно	5472
12382	1392	9417de97-2e9a-46b5-9b1e-41971765da75	Отношение налички ко всем акциям	t	Верно	5472
12383	1393	85395107-53cf-4ad9-be86-d46239bdf0ae	Хорошо	f	Неверно	5473
12384	1394	8b25e512-d4b8-4c53-b583-9a1b12b4ba50	Плохо	t	Верно	5473
12385	1395	05bb948e-d021-487c-99f0-ee72b9d0a941	Нейтрально	f	Неверно	5473
12386	1396	6d22c055-284b-4664-ac73-db15603d4786	Деньги не направляются в нужное русло	t	Верно	5474
12387	1397	727eaa14-d9b0-453b-9755-841b4d2d45cd	Это наоборот хорошо, много свободных средств	f	Неверно	5474
12388	1398	a080d315-03b0-458a-8330-89c6f19d4937	Плохо	f	Неверно	5475
12389	1399	37e58ad6-8449-4e9f-97dc-21ab2de3c42f	Хорошо, если деньги идут на развитие	t	Верно	5475
12390	1400	a1ed28f9-5974-4938-8468-6a819596b234	Нейтрально	f	Неверно	5475
12391	1401	b264ea16-1002-47cc-ab93-ed7d7e9ad4d8	Валовый поток на акцию	f	Неверно	5476
12392	1402	7c418182-6053-4d3a-aa5b-4a6b6ca2e158	Денежный поток на акцию	t	Верно	5476
12393	1403	85a73a3b-b258-4d91-8673-69811730ff6a	Кредитный поток на акцию	f	Неверно	5476
12394	1404	e4917048-fe97-4860-b4d7-e7902cac0066	Прибыль после налогообложения	t	Верно	5477
12395	1405	b4d7f878-b79b-46f7-92a5-1c86ea77d071	Прибыль до налогообложения	f	Неверно	5477
12396	1406	0191f0d9-2f19-4518-9fbc-b20b19afcfb7	Прибыль без участия налогообложения	f	Неверно	5477
12397	1407	628bd8f0-96c4-4b71-9281-07d712ce55a0	Износ основных средств или нематериальных объектов	t	Верно	5478
12398	1408	aa3efba1-d265-4310-b631-3537734f317a	Износ зданий	f	Неверно	5478
12399	1409	2adac5a3-46ee-40b7-b725-f723e4dc11dd	Износ сотрудников	f	Неверно	5478
12400	1410	aa1237e2-ad83-44ee-b68b-c3778356ce4b	Отрицательным	f	Неверно	5479
12401	1411	65707d4e-acc5-4f22-8283-84aa55f38f53	Положительным	t	Верно	5479
12402	1412	cee7baab-e20b-490f-ba6f-d8b96075c25b	Да	t	Верно	5480
12403	1413	38940755-8293-4098-8590-6f27e531b3e8	Нет	f	Неверно	5480
12404	1414	ef1ed813-8c72-42ea-b20b-001534ad89f1	Нейтрально	f	Неверно	5480
12405	1415	53bf1d94-b14f-4d2f-a804-6858dfb31529	Цена/свободный денежный поток	t	Верно	5481
12406	1416	5c69cd44-8bcc-45ec-a227-77bbee0ce3e5	Цена/закрытый денежный поток	f	Неверно	5481
12407	1417	3c874035-1cc9-4517-9cb1-a95078bfed34	Прибыль/свободный денежный поток	f	Неверно	5481
12408	1418	f7ee9695-f4af-46c3-9b39-76953d685f26	Прибыль от второстепенной деятельности	f	Неверно	5482
12409	1419	e2cbb01d-2896-471e-a16a-aa4f03cf9eab	Прибыль от основной деятельности	t	Верно	5482
12410	1420	3b39d6e5-7d33-46c6-874c-eb4ae5a72702	Прибыль от кредитования	f	Неверно	5482
12411	1421	4b59ba57-a3be-4fee-b258-85f979aeee26	Определения потенциальных дивидендов	t	Верно	5483
12412	1422	1b0d102f-16c0-4e1f-b6f0-8c30bb7e893a	Определения потенциальной прибыли	f	Неверно	5483
12413	1423	1a678c62-19db-4688-bc34-eabe8e4f542a	Просто так	f	Неверно	5483
12414	1424	f8632254-4c62-42d9-b55d-e84dac7b6b1c	Ниже 20, но лучше ниже 15	t	Верно	5484
12415	1425	5396d3fa-852c-4d28-8089-9d3602bb6882	Ниже 40	f	Неверно	5484
12416	1426	7140fac0-612e-4266-9ced-f9d1af446197	Ниже 25	f	Неверно	5484
12417	1427	897e1a73-f28d-4155-901c-96c667baf88e	Да	t	Верно	5485
12418	1428	3c8ee497-076c-4d16-bbe4-b09077b906cc	Нет	f	Неверно	5485
12419	1429	9b53578b-cd5a-493f-9585-d8b61fb68c8f	Без разницы	f	Неверно	5485
12420	1430	629b1106-c2b0-42f8-84ee-fb198790c27c	Коэф. быстрой ликвидности	t	Верно	5486
12421	1431	6c8e062a-c523-48d8-8d3e-240494e73e16	Коэф. медленной ликвидности	f	Неверно	5486
12509	1519	52307d2b-0d65-41b8-8c33-09337f87516f	Нет, это не ошибка	f	Неверно	5524
12510	1520	08e581c4-7a4e-4e27-836f-d6084a44e985	Первый вариант	t	Верно	5525
12511	1521	6f556c7b-9660-4786-a4ca-3a1ae69ab130	Второй вариант	f	Неверно	5525
12512	1522	1ee4d739-f4fc-4300-a755-f46f9968e3bc	Ошибочно выглядят перегретыми	t	Верно	5526
12513	1523	df5d241c-a33f-4eb5-a4a2-ed37d7eb9fbc	Они им нравятся, их покупают больше	f	Неверно	5526
12514	1524	afcd6c53-10fe-4569-b17d-6ec0ae410d8f	МОМО лучше	f	Неверно	5527
12515	1525	8a727df9-ba8c-4b6a-b28e-d891f01dfb89	Apple лучше	t	Верно	5527
13308	1526	f8877809-7f4d-42b3-b093-48570fc03712	RSI	t	Верно	5827
13309	1527	b8ba747f-1438-428a-84a9-3e7529847947	MACD	f	Не верно	5827
13310	1528	d2fdb61d-0538-496e-9b78-75025ada0634	Bollinger	f	Не верно	5827
13311	1529	41be2ee1-4246-42a7-a5d8-808bef50f95a	Да	f	Не верно	5828
13312	1530	94a36c11-9ee0-40dd-af42-889e27ed6168	Буду в шорт	t	Верно	5828
13313	1531	3892f2bd-8fcf-4d4e-99c3-3c2e4cc9e78a	Тут нет сигналов	f	Не верно	5828
13314	1532	8e7d0bc4-d0bd-488d-83cc-6f0e4da7268a	Меньше прибыль со сделки	f	Не верно	5829
13315	1533	8966ad61-c383-4671-aa6a-c440e25c12d1	Больше прибыль со сделки	t	Верно	5829
13316	1534	d98e6066-c728-4041-b6de-35e63c3c7a12	Прибыль не меняется	f	Не верно	5829
13317	1535	f805165d-0298-4406-8aae-aad6962eec34	Да	f	Не верно	5830
13318	1536	f57c8d69-1d75-4b4d-9187-0c6d9cb2af64	Нет	t	Верно	5830
13319	1537	cdcef2df-dcd4-44fd-b7d3-148e8f70f0cb	Нейтрально	f	Не верно	5830
13320	1538	20c26197-ab71-48a0-9132-dec5ccca3335	5%	f	Не верно	5831
13321	1539	28f8dee1-cddf-4037-9fba-b9a8ab6c352c	1%	t	Верно	5831
13322	1540	ca645fb1-ca21-40d4-9a57-a6070f89ef0e	0.3%	f	Не верно	5831
13323	1541	ebc329af-ba16-4537-a6f7-42edbfacb9b2	Можно, но на большом ТФ, хотя бы от 2 часов	t	Верно	5832
13324	1542	1aff9b90-aa30-41e5-bcba-bba5a2cdffd2	Нельзя	f	Не верно	5832
13325	1543	0ea89752-c4f1-4f8b-aa68-27de690f60a2	Да	f	Не верно	5833
13326	1544	9c940a74-f6db-4ecb-9e9b-12e2091e92c8	Нет	t	Верно	5833
13327	1545	ddec8605-132b-4f45-a850-70ac41a82986	Да	f	Не верно	5834
13328	1546	18f3c0cc-6fce-4057-b1d6-4b7261ca06ff	Нет, надо ждать всех	t	Верно	5834
13329	1547	3da198c9-4ede-4260-a096-2d71a59b62f5	Беру в лонг	t	Верно	5835
13330	1548	31b795ee-a916-463d-b65a-b7504608f5b8	Не беру в лонг, надо ждать OBV	f	Не верно	5835
13331	1549	84079234-1e91-4385-8f38-b5fc7753209b	Да	f	Не верно	5836
13332	1550	f30a622f-fdfe-48c0-97e2-0c5cf29474b7	Нет, много шумов	t	Верно	5836
13333	1551	564b8c02-3b4c-4862-aec8-e1dd78a7fb36	Лонг	t	Верно	5837
13334	1552	e384cffa-9f71-4b90-ab7c-2f3a95bdc681	Шорт	f	Не верно	5837
13335	1553	8f8d19d9-afc6-4090-8ebf-8883cb18e134	Никуда	f	Не верно	5837
13336	1554	411ea857-8ea1-490c-96d9-c71fab8ef65e	Лонг	f	Не верно	5838
13337	1555	02e85ee4-3da6-4861-bdbd-c3affcbdcebb	Шорт	t	Верно	5838
13338	1556	543353a8-ecc0-4d17-a0cc-8b6316dcacbe	Никуда	f	Не верно	5838
13339	1557	56190cc0-6b12-471b-97c9-67abd94c557e	Установки стопа	t	Верно	5839
13340	1558	f2f923b5-4665-4844-94a6-f2b434770dbf	Установки тейка	f	Не верно	5839
13341	1559	73420864-22f5-4941-a5df-67f4ac19032d	Установки объема	f	Не верно	5839
13342	1560	1a9ecf14-61d1-4765-9ad1-864f80b52601	5	f	Не верно	5840
13343	1561	530169e3-d9a4-4544-845b-1e39749ec80d	1	f	Не верно	5840
13344	1562	267cf824-f8a3-4625-883c-6912444c0e6d	3	t	Верно	5840
13345	1563	7683f25f-d38d-46c1-ba95-8d86a83e8eec	На предыдущий уровень	f	Не верно	5841
13346	1564	28a4bcbf-2b57-47cd-9885-8e2b070baa17	За предыдущий уровень в конце	f	Не верно	5841
13347	1565	ca85e37b-5971-406c-b832-0cfc6f0d2bac	На середине предыдущего уровня	t	Верно	5841
13348	1566	ef09fdbb-db3f-4005-9a69-de4db206d867	Да	t	Верно	5842
13349	1567	ab79a5b3-5f53-493a-9ca5-d05f399c978d	Нет	f	Не верно	5842
13350	1568	8b71774c-54f3-435b-93ad-5f6c9d5f1234	Лонг	f	Не верно	5843
13351	1569	94c04b6f-54d8-4eb3-b7b5-08af1ff272bb	Шорт	t	Верно	5843
13352	1570	bd85baf9-d1ea-4591-94a9-0b1b7ff587d2	Никуда	f	Не верно	5843
13353	1571	61af93cb-86ca-4604-b6f8-2418bbeb88a1	Да	f	Не верно	5844
13354	1572	7c961ff4-3648-429f-aeff-6489f8e21d74	Нет	t	Верно	5844
13355	1573	8cacb727-3b27-4fb7-8714-63c090a796d0	Без разницы, не влияет на результат	f	Не верно	5844
13356	1574	d9c17a2a-d30b-4d72-a0d7-dd9c8a64a9da	Индикатор на основе трех EMA	t	Верно	5845
13357	1575	264a04e6-ab5d-4aca-86a7-1d9357ff4ce2	Индикатор на основе трех OBV	f	Не верно	5845
13358	1576	912a85f7-5445-4d07-980b-f33c08a87315	Индикатор веса	f	Не верно	5845
13359	1577	d6cbf4fe-2694-42c1-a1af-8a181df639a2	Можно	t	Верно	5846
13360	1578	6e95bd3b-95be-404d-b466-21d13006664d	Нельзя	f	Не верно	5846
11901	1277	1e985780-46fb-4bcc-916e-416926c69ad5	Индекс относительной силы	t	верно	5294
11902	1278	194390f8-e983-4f63-86f5-93dc85d407e0	Индекс волатильности	f	неверно	5294
11903	1279	97a568e4-a73d-4beb-b618-197a684a66c1	Индекс волн	f	верно	5294
11904	1280	121e16a0-b5cc-4d27-86a9-e99e06d168b2	Рост	f	неверно	5295
11905	1281	1ee2346f-f6d4-433e-be80-70e50ba87c8d	падение	t	верно	5295
11906	1282	af94d8a4-c9e4-4288-85c6-62347b73906e	Рост	t	верно	5296
11907	1283	a1720b8f-0013-483e-a8c3-cde5e77b36f8	падение	f	неверно	5296
11908	1284	bc98b35c-917d-4c6b-a911-6e07459a33ea	0 до 100	t	верно	5297
11909	1285	372bcab7-3c96-493a-82be-57ca9caf3fb6	30 до 70	f	неверно	5297
11910	1286	480beef0-174c-4b64-a000-a560a51b9176	20 до 80	f	неверно	5297
11911	1287	dc2931b2-5d75-4cbd-9345-3e9a755fa5e6	расхождение и схождение скользящих	t	верно	5298
11912	1288	ef8f2df6-ab1b-47e9-8c1a-12ffc2e3fb84	коэф. силы	f	неверно	5298
11913	1289	435fbfee-30b2-45a4-a310-2abd82991771	коэф мощности акции	f	неверно	5298
11914	1290	2bee192d-d62e-4f43-b4bd-468cf263901b	рост	f	неверно	5299
11915	1291	0dbaa849-a45a-4a50-b1d9-ab3bc9fd2ba4	падение	t	верно	5299
11916	1292	825f7107-4d2d-45d2-8bfa-705c6833eb6c	рост	t	верно	5300
11917	1293	d76eca7f-59ca-4167-a6cd-61bb97eee524	падение	f	неверно	5300
11918	1294	a86d5974-3ab3-4729-889f-5752e83aa62c	дивергенция	t	верно	5301
11919	1295	31ee5f89-77bd-42a5-824b-7e17eff11480	конвергенция	f	неверно	5301
11920	1296	412a39a8-c6a4-4a7e-8938-6c07c388a9fe	Рост	f	неверно	5302
11921	1297	3764e8ae-cda8-4267-aea3-6c3059b0f22e	Падение	f	неверно	5302
11922	1298	ec7622cd-26c9-48d5-b04f-07da30c4b015	Никакого, они говорят о разном	t	верно	5302
11923	1299	acbf50ea-50f3-4339-8d83-65c9c6d1ecf9	индикатор, построенный на принципах стандартного отклонения	t	верно	5303
11924	1300	297b6ce2-9232-4a45-a637-a44bbc97fcfe	индикатор, построенный на принципах отклонения от оси	f	неверно	5303
11925	1301	af683958-c869-45b7-aa71-f13cf998c619	индикатор, построенный на принципах волнового отклонения	f	неверно	5303
11926	1302	192796d8-3822-43a2-a7c4-eba0b112607f	75%	f	неверно	5304
11927	1303	228c376b-a59e-4d29-85a0-6a4b484c626a	95%	t	верно	5304
11928	1304	2f989659-9347-4c70-a9fd-0bdcc0ba2f53	85%	f	неверно	5304
11929	1305	3581839f-3dd2-4d7d-aca3-79bd62249341	Рост	f	неверно	5305
11930	1306	9ebb0074-0d33-496a-aafe-eaf35e7882cd	Откат	t	верно	5305
11931	1307	da4a359c-080b-4de2-9c5a-fb2defd4c23c	Хорошая	t	верно	5306
11932	1308	2b2025d6-4ea4-41b9-8a78-cb3ce3ed98f3	Много индикаторов	f	Их немного, всего 4	5306
11933	1309	8219dc5c-2034-4edf-8d39-79a20a061587	экспоненциальная скользящая средняя	t	верно	5307
11934	1310	ce9bd002-8638-4c25-b56e-0cec2d2eab81	экспоненциальная простая средняя	f	неверно	5307
11935	1311	212616f7-2c9a-4640-8c9f-2b7296013538	простая скользящая средняя	f	неверно	5307
11936	1312	673f59d3-cafb-4d66-9634-cc60ddeb4a51	Можно, это связка исключение	t	верно	5308
11937	1313	50e96772-2e13-4227-ad46-72bb5c684b84	Нельзя, мало индикаторов	f	неверно	5308
11938	1314	66a5203f-6f41-4165-9c03-6aec8baa2667	Определенно да	t	верно	5309
11939	1315	25790a02-b463-4e5e-8964-3381626c02fd	Определенно нет	f	неверно	5309
11940	1316	4b61d68e-0e46-40be-972c-bd585de39003	Восходящий	f	неверно	5310
11941	1317	9d5fdaa1-fd09-4f50-b30c-4e936473eb0b	Нисходящий	t	верно	5310
11942	1318	a69f381e-9302-4ca2-8247-09f8dd7e4c18	поддержка и сопротивление	t	верно	5311
11943	1319	28815bdb-be77-4fb5-9334-dbb14e976c96	просто поддержка	f	неверно	5311
11944	1320	77567aca-f0d5-42f8-8a42-d96c688d8f67	просто сопротивление	f	неверно	5311
11945	1321	900ddf03-640e-4c75-81c0-c99527684145	Вверх	f	неверно	5312
11946	1322	1a4b5df4-6348-4f39-a74c-702f37426c76	Вниз	t	верно	5312
11947	1323	6b19572a-7eac-4215-9169-59d87c79c600	Является	t	верно	5313
11948	1324	9df4de38-3ebb-40d4-afb5-524943f3e9d9	Не является	f	неверно	5313
11949	1325	eb61d790-d1f5-4995-a193-7cdb7c53c3e2	Рост через отскок	t	верно	5314
11950	1326	54cb3378-3232-494e-b73e-d9f62ec5f485	Пролив	f	неверно	5314
11951	1327	e9747e4a-e49c-49ae-bb9c-dd3e42d2cf2b	индикатор уровней и зон	t	верно	5315
11952	1328	326a668b-3031-4cbf-9543-f572ab735c28	индикатор силы и относительности	f		5315
11953	1329	91a22bbc-1085-4f01-b3e0-34c2f08c720d	Рост	t	верно	5316
11954	1330	bb9dc214-4ad3-4006-9208-50c3bd661ec0	Падение	f	неверно	5316
11955	1331	2f5911ea-8ab1-4d64-b0b5-3fbfc8d7310a	Может	t	верно	5317
11956	1332	67270c2b-fe4f-46ae-af4c-7c414f3e44c1	Не может	f	неверно	5317
11957	1333	34d3cb22-7daf-42cb-af51-4e904163046a	Верно	t	правильный ответ	5318
11958	1334	cf69d548-5ae2-4f19-bd20-f321c6929b24	Неверно	f	неправильный ответ	5318
11959	1335	53280d73-02a8-43f1-96eb-72d0a9ae7c0b	японский индикатор поддержки и сопротивления	t	верно	5319
11960	1336	a365efe3-6dd8-491a-b4b2-449becfb3fbb	японский индикатор силы	f	неверно	5319
11961	1337	1aacf69e-0f2f-4aa7-b887-465b8ea3781c	вверх	t	верно	5320
11962	1338	bc5b844f-7e94-46d9-8bd7-10ae48f282af	вниз	f	неверно	5320
11963	1339	7d4fd445-ac29-4b57-ac51-565973e54678	Нет, только тренд	f	неверно	5321
11964	1340	ced2658a-68c8-47ba-88d8-b1e2692ff04b	Может	t	верно	5321
11965	1341	92655dde-f86b-4078-850f-945591c6baec	Балансовый объем	t	верно	5322
11966	1342	67c48809-9887-4898-a469-cd43f3924bdb	индекс относительности	f	неверно	5322
11967	1343	9bdb3a51-07ef-481f-853c-24e1d5f1ac54	наверх, объемы не упали в конце	t	верно	5323
11968	1344	40d3dfc7-5053-4b13-93f4-4a8613b2493a	вниз, продолжение тренда	f	неверно	5323
\.


--
-- Data for Name: learning_subject; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_subject (id, uuid, name, slug, "order", summary, is_visible, test_id, image_id) FROM stdin;
19	d1f33641-7e4d-4b45-83c9-9e66cf633e2f	Обнаружение локальной и глобальной коррекции	novaja-tema-4	7	Тоже говорящее название\n\nМы будем говорить про коррекции и, используя различные методы анализа, определим, когда рынку стоит остыть или вовсе рухнуть	t	438	30
6	e6fd5480-0fdf-446b-a84e-48699156ef20	Технический графический анализ	novaja-tema-6	3	В данной теме мы разберемся с вами в графическом анализе, будем строить каналы и блоки, а также много важного!\n\nВсем приятного просмотра	t	\N	26
5	d1074560-498b-403c-83b7-9d7a1ba386b4	Технический индикаторный анализ	novaja-tema-7	2	В данной теме мы будем проходить с вами индикаторы и их применение в связках\n\nПриятного просмотра!	t	461	25
4	ac9986e2-9e6e-41bb-b93b-bb880da581ab	Фундаментальный макроэкономический анализ	novaja-tema-5	1	В данной теме мы разберем с вами влияние макроэкономических факторов на фондовый рынок\n\nПройдемся по важным метрикам и поймем, как их читать	t	187	24
10	f4d795a0-b61f-4cd8-a553-2e5ab0d6cf05	Сезонный и временной анализы	novaja-tema-10	5	В данной теме мы разберем с вами сразу два типа вспомогательного анализа\n\nЯ советую уделить особое внимание информации, которую вы сейчас прочитаете\n\nВсем приятного просмотра!	t	405	28
8	19c7ef93-90e4-4ae3-8a71-a100489f4d77	Волновой анализ	novaja-tema-8	4	В этой теме мы пройдем с вами волны Вульфа и Эллиота более углубленно, разберем множество примеров и закрепим это на графике\n\nВсем приятного просмотра!	t	392	27
3	1cbb51e7-8204-43d3-aee4-5d1712b4c33c	Фундаментальный анализ	novaja-tema-2	0	В данной теме мы пройдем с вами несколько видов фундаментального анализа и познакомимся со многими важными моментами\n\nПрошу вас отнестись серьезно и впитывать информацию. По возможности даже выписывать в тетрадь для курса, чтобы лучше усваивалась информация	t	448	36
18	6fd79755-d296-41ec-8565-0f546ce6d119	Психология инвестирования	novaja-tema-1	6	Садитесь удобнее, так как вас ждет одна из важнейших тем в истории фондового рынка\nи торговли - психология\n\nМногие пренебрегают ей и получают тот результат, которого они опасались - минуса в портфеле\n\nНикогда не пренебрегайте психологией, так как именно она приведет вас : 1) к спокойствию и вы не потеряете миллионы нервных клеток 2) к истине, которая кроется в панике от других игроков на рынке	t	549	29
\.


--
-- Data for Name: learning_test; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_test (id, uuid, lesson_id) FROM stdin;
\.


--
-- Data for Name: learning_testassignment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_testassignment (id, uuid) FROM stdin;
24	b2cd57ab-002c-4c09-896c-46547a404a49
405	ff34a3d7-bfcf-4eb0-bea0-e6a3ba4556d7
118	6f505bd1-1a46-4955-9c0a-d45974403b21
119	14e98d6d-58d5-4052-b3ba-e5ca99a3ad04
187	dc1dea36-ce2c-4366-a84d-eb9775945bcb
127	c9c39f84-b2eb-465c-aac6-85290f7acd17
135	8ec94403-9bf0-4fd4-bea2-162e1e2c211a
137	a8c64f3e-255d-4fac-bd7f-c3932be289f6
138	ccc03e0c-2926-4940-aabe-b9806c3321c2
157	7ac12208-c194-463a-940a-5aa76308dd39
105	c8b6fb3b-bb62-43ae-badd-9973b9f6c81e
160	611343ee-5e9a-45a7-974f-9d25709e33a6
438	bc244dde-286e-4c8b-97c9-92c1342692c0
329	ff4f3d0b-fbfd-47c1-9aa7-7e4417dd1bfa
331	d98edd3e-d092-4ab4-a79c-0d2dfcd3034d
448	f6094dc4-3fd0-46aa-918e-74b88eb90427
392	cfe59185-5e2f-4994-8ad5-3ffa9ca76356
393	a7358d38-7846-42aa-8287-5252f0638d50
520	48729254-ccc5-487c-918c-4643f451f9e7
524	a1ed667b-aa50-4462-830e-731c030ac022
526	eba422d2-be3d-471d-979f-999ce3ecf85c
527	7c14ec14-6d48-44ec-aa45-24321e3e7696
461	1d48e3ae-be4c-4556-9c81-f27295a3b5d3
462	ba7ad360-708a-43e9-9d8a-587c9b78abdb
463	3619f890-7488-4439-bf29-eb7975c3b1b2
464	abfa1077-40cf-4779-a98f-7df1ef12bce5
465	9487f717-d228-4243-bc61-0913ce0f7a17
466	63f70b99-5458-40a9-8b6c-6ae26e8bf1bc
467	df808a06-9cd0-46f1-97e8-768af3849ed8
468	fda583cc-632e-40d7-a22f-86b351a6d341
469	d398e9bc-1b9e-48ac-b037-1c9a912dc539
470	9198cad6-9d26-4930-a65e-dd2a93cd1cae
471	a1232795-e7fc-4988-8aa3-b6cc217c80af
548	e32124f7-67f4-488c-84bc-5f049f689bdc
549	c301c1dc-3611-4687-9b60-362df352b2af
\.


--
-- Data for Name: learning_testassignmentquestion; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_testassignmentquestion (id, "order", uuid, question_text, test_id, image_id) FROM stdin;
13	0	16be0328-6df6-4c2b-a664-430023484329	string	24	\N
4471	479	87dcf40b-7f7c-4d8b-8e96-9d71483b32c8	0	462	\N
5457	564	ad7856f7-fa9b-4abe-8d77-fdb738dcbf9d	Что такое мультипликаторы?	524	\N
5458	565	c93fb3bc-6208-46a2-956c-82b54a617658	P/E — это	524	\N
5459	566	227b7400-fa2a-49ab-bab9-ec75ca179d36	Норма P/E	524	\N
427	49	22d9b272-60a4-442b-a62d-ee8912171ed9	Финансовая отчетность - это	118	\N
428	50	78abfa90-d4dc-496e-908c-47d7ee1d2000	Финансовая отчетность - это	119	\N
429	51	59efe729-8849-4589-b6b8-95d07bbb31f1	Главный показатель отчетов на Investing?	118	\N
430	52	c717052b-b034-4631-a731-13e396ae7c0d	Главный показатель отчетов на Investing?	119	\N
431	53	5dfc4ce9-dac9-4bb6-8142-a3611dc9eca1	Анализ динамики происходит на дистанции	118	\N
432	54	43a1e52b-ee8c-4e8f-aeb5-0b718c79c867	Анализ динамики происходит на дистанции	119	\N
433	55	4b402027-d0f7-49d8-8cd3-963748c7c777	положительная динамика отчетов и падение акций на слабой новости приводит к	118	\N
434	56	db00df7c-b692-43a1-811d-73c2b34df6c8	положительная динамика отчетов и падение акций на слабой новости приводит к	119	\N
435	57	f9323189-c479-4548-95f9-cf0925674be7	важна ли динамика для анализа?	118	\N
436	58	b8f5af97-c63b-4c23-8918-abfc341d882b	важна ли динамика для анализа?	119	\N
3956	420	120cd52d-742c-49dd-b543-8d27eae9aa84	0	393	\N
3323	384	5b109370-0fa5-4306-8846-9356d40d6436	0	331	\N
437	59	320d0669-89e7-4084-948a-de89d5cbc5f8	Динамика в будущем определяется по	118	\N
438	60	b7785b0b-cd38-4058-a4f5-8f783c56b177	Динамика в будущем определяется по	119	\N
439	61	57809662-c943-4ff0-b44b-e0e6a65aafe4	По какому показателю определяется динамика?	118	\N
440	62	19d14324-0116-4a05-a3f6-b2882e4b792e	По какому показателю определяется динамика?	119	\N
365	27	0c51a7d8-68d2-4523-af75-a1fc85a1e343	Рентабельность - это	105	\N
366	28	e432845e-b96e-4c12-91da-9c2419c8a8a7	Net Profit Margin показывает	105	\N
367	29	0f3f2b97-9118-4b8d-9023-0e690e087b9c	Маленький % говорит о...	105	\N
368	30	b0404949-02f1-4be9-bc59-ba2dfbff4ab8	будете инвестировать в компанию, которая при повышении цен на сырье может уйти в глубокий минус?	105	\N
369	31	3e25728d-fe07-42a3-acb5-502bd45f4e50	Pretax Profit Margin отличается от предыдущего тем, что	105	\N
370	32	9e7dfaa5-1e01-424d-9de6-e5846b36ded7	Gross Margin - это	105	\N
371	33	c1e8079b-5331-496e-8ae9-c9037ce411d9	Этот показатель помогает понять...	105	\N
372	34	274216f0-8d6f-474c-aa06-544aa40fb89c	Чем выше этот показатель тем...	105	\N
373	35	58397181-29a3-475f-bd4b-e9e985ab4234	ROE - это	105	\N
374	36	e571123b-762f-4f7b-84a1-1ba3466fe663	Может ли ROE отразить возможные дивиденды?	105	\N
375	37	77310a8c-873e-4073-97ff-432da27cc403	ROA - это	105	\N
376	38	00c21f61-e46b-4662-be4f-7fca9471a866	Ключевое отличие ROA от ROE  в том, что	105	\N
377	39	2d0fae52-6d7d-4984-85a9-e869ee13849b	ROI - это	105	\N
378	40	02aea32b-a4ca-456a-84c6-b2830935b7b9	Вы вложили 100р в компанию с ROI 50%, сколько прибыли она генерирует	105	\N
379	41	b699b2d5-1ace-4b0d-a6e0-c36118b16640	5 Years Sales - это	105	\N
380	42	651bd594-c413-463d-8dee-8911c4503618	Норма показателя	105	\N
381	43	a0487a8e-4908-4558-b573-0dbcfc93df65	Если этот показатель около 0%, что это значит?	105	\N
382	44	56690f86-ea3a-44ca-9407-7ef0e540928f	5 Years Capital Sending - это	105	\N
383	45	2b33ddc2-15fa-4058-8d3e-6c8f8a51d7f9	Отражает ли показатель развите компании?	105	\N
384	46	0b8a6c9b-ae2e-4ea9-ba18-dcf733163948	Норма показателя	105	\N
385	47	a22fa1d7-5acf-40f7-b752-eac6ab249a09	5 Years EPS Growth - это	105	\N
386	48	977920c5-c2b5-4e82-94cd-fcc8c49807ba	Норма показателя	105	\N
441	63	f4d2b8f1-e574-4728-9e9c-98b27ae0575a	Если у компании была положительная динамика в течение 10 лет, но 2 отчета подряд результаты хуже ожиданий, это значит, что	118	\N
442	64	bdee9592-e5a3-43d9-9602-99a194af7542	Если у компании была положительная динамика в течение 10 лет, но 2 отчета подряд результаты хуже ожиданий, это значит, что	119	\N
474	65	be5723d9-a9d8-4ff3-b065-89c89e2ca2ec	Для чего смотреть отчетность SEC?	127	\N
475	66	da56d353-1479-4c89-b644-227eb3f413de	Форма квартального и годового отчетов	127	\N
476	67	5911016e-3816-42ad-ba48-d2e9d5237cc8	Форма отчета у зарубежной компании	127	\N
477	68	7682f886-e3be-45d6-8b9b-47c8de13d4e8	Стоит ли тратить время на прочтение рисков из отчета?	127	\N
478	69	bf5561cb-863f-4faf-bb39-7d2c84dc706c	Судопроизводство важный момент?	127	\N
479	70	547c7111-a693-4130-aa28-9103a92561d3	Стоит ли входить в компанию с риском штрафа 1 миллиард $ и капитализацией 2 миллиарда $	127	\N
4326	447	713dd7be-51a4-4a62-bf0e-1e067b667f1d	Fear and Greed - это	438	\N
4327	448	eade8dd5-141a-4b1a-a5f0-0c5d7f9d0f13	VIX - это	438	\N
4328	449	e47a9973-4104-4fb9-9296-2838940df2b3	Если Fear and Greed выше 70, это означает, что...	438	\N
4329	450	9563b372-5ba4-4b6b-979f-f7d1f4b3c3d5	Если VIX на уровне 13, это означает, что...	438	\N
4330	451	fcf21a72-9e7e-4054-a3e1-51fb4799680c	Если fear and greed высоко, а VIX низко, что из этого следует?	438	\N
4331	452	14cb2355-ae01-482f-8f33-6e46debce10f	Если заявки на пособие по безработице выше ожиданий 3 раза подряд, что следует?	438	\N
4332	453	7a7dd7a4-6685-4b31-ad54-89eb2dee395e	Если повысят ключевую ставку и сократят QE, что будет следовать?	438	\N
4333	454	aeba753f-18b6-48eb-8029-64a46d9ca2fe	При росте ключевой ставки экономика США умрет?	438	\N
521	84	75c1f36a-c08d-43a3-bd26-85b4a47f9835	0	137	\N
4461	469	326c6586-d569-47e8-ba08-3fa3e3e0a121	На каком ТФ сильнее тренд?	461	\N
5460	567	086ba1af-6551-48d3-9ece-eb0cca9730a7	У Facebook P/E больше нормы — это критично?	524	\N
5461	568	08705299-5184-4271-b6bd-fe33e7f16793	P/S — это	524	\N
5462	569	15afac35-3682-4f68-a68a-a822e9889dc2	Норма P/S	524	\N
5463	570	2298e283-2f8f-44cc-ac21-f61acd9b5a90	P/B — это	524	\N
5464	571	73b2c404-5aeb-4964-85e9-e5d2b7420122	Норма P/B	524	\N
5465	572	334d1cd3-d314-4465-afe6-d20ed978b9a4	Debt/Equity — это	524	\N
635	154	06d2168e-01f4-41db-8416-447f985dab2d	Что лучше купить ( при равных показателях ) - компанию, которая выросла за 10 лет на 10000% или которая упала на 95%?	157	\N
636	155	ec12bcd1-f3b4-4ae7-9f33-4cbd46986b87	Является ли ошибкой постоянная покупка падающих компаний, которые упали на 70% за 5-10 лет?	157	\N
637	156	c56f2a93-e472-4ee8-bd09-91294e3c33fc	Что лучше купить для стабильного роста? FB+AAPL или RIG+PBF	157	\N
638	157	65e5719a-db3f-4493-9afc-8aa0936e7d8c	Почему растущие компании не нравятся инвесторам?	157	\N
640	159	f7c70474-5e6a-4e26-8483-5fa246451e08	Покупка МОМО лучше, чем покупка Apple? ( сравните графики обеих компаний )	157	\N
5466	573	d532ff87-fd90-4877-ad56-9332455a64b5	Показатель должен быть выше или ниже 1?	524	\N
5467	574	f5bb890a-465f-47a8-b203-50dc485cc6e3	EPS — это	524	\N
5468	575	33e48e9d-8673-405f-8194-5ba368cd1623	EPS должен расти или падать?	524	\N
5469	576	cc964230-d80e-4271-9044-d4aa04d1ed68	Чему равен EPS, если выпущено 100 акций, а прибыль за год 500$?	524	\N
5470	577	3e9b20f9-a062-4cd9-953b-c32da81e4e96	Разводненный EPS — это	524	\N
5471	578	0bca169f-6bae-460a-91cc-e2f89fcb1451	Чем EPS ниже — тем	524	\N
5472	579	24211a46-5715-490b-adc3-bbf70a584ac8	Cash/Share — это	524	\N
5473	580	c8151a17-bee6-4667-a2ed-ebbf87228d16	Большой запас налички — это	524	\N
5474	581	413c9387-dfb2-4006-b133-94adab64a9ee	Почему большой запас налички — это плохо?	524	\N
5475	582	ae4bc987-8b27-449e-8388-b9e3b951b9ee	Компания с большой маржой и маленьким количеством налички — плохо?	524	\N
5476	583	9ed56d3c-35a4-48bd-a199-74b2f9ca9e2b	Cash Flow/Share — это	524	\N
5477	584	7c58227b-7e2c-4f2d-9ae3-aa0a47067616	Денежный поток —	524	\N
5478	585	bf5ab3bf-cfb1-48b7-8f70-43311f5d15d7	Амортизация — это	524	\N
5479	586	d3a05ecc-6e8d-4415-812b-47befb73570b	Денежный поток должен быть отрицательным или положительным?	524	\N
5480	587	6886e712-5538-4ee6-b650-730d7e5da1a4	Положительный поток на акцию подразумевает бОльшие дивиденды?	524	\N
5481	588	ed5afe60-b1e9-4908-a3b5-5be55bc952db	P/FCF — это	524	\N
5482	589	fd43b99e-c21f-4ccd-8d5c-4a52f5d4c632	Операционная прибыль — это	524	\N
5483	590	6d918492-165c-468c-97a8-073be4c83ec9	Для чего нужен P/FCF	524	\N
5484	591	69da1707-87bb-420c-a9f5-e8edf9121ea7	Каким должно быть значение?	524	\N
5485	592	d588f5cb-b4d1-4ce4-b53e-d543509b96bd	Стоит ли сравнивать мультипликатор по отрасли?	524	\N
5486	593	885fa288-136d-4142-901c-4c0c12e8b7f8	Quick Ratio — это	524	\N
5487	594	0190e62d-be5c-4c86-a544-cc29cee72a28	Для чего он нужен?	524	\N
5488	595	8b561c11-d9aa-4a6b-bbb8-58130c9acf76	Входит ли дебиторская задолженность в ликвидные активы?	524	\N
5489	596	85ff4e14-c34c-481c-9970-f77e2fc68a8d	Quick Ratio должен быть	524	\N
522	85	acde2f56-4ea4-4ba2-a365-08b49bbad67d	0	138	\N
4472	480	a9b2f786-fd10-4068-89c7-ff4b2e096f07	0	463	\N
5490	597	d79d3655-5ad4-415b-97eb-759452728431	Норма для мультипликатора — это	524	\N
5491	598	4e2df5af-7ff5-4f0a-a29e-4404ef33d25f	Current Ratio — это	524	\N
5492	599	a26a6812-b44a-402b-a0a8-43ab93fda5ce	В чем разница между Quick и Current?	524	\N
5493	600	bb272775-9f6e-4589-9444-74546e9a5428	Asset Turnover — это	524	\N
5494	601	8f4d4a61-0fb3-4bc3-a69c-41637263f5b8	Чем он выше — тем...	524	\N
5495	602	90bc1d3b-8eda-401c-a63f-f7102ca37348	Inventory Turnover — это	524	\N
5496	603	abafe1f9-a97e-4d3f-a766-0db5152507ac	Позволяет выявить...	524	\N
5497	604	4d501a7d-7ac4-4057-bbd6-448b55dd78d6	Маленький показатель означает...	524	\N
508	71	bcb5c8cc-aa8a-4f23-8149-1da52d11c583	НИОКР является важным показателем?	135	\N
509	72	758f3cfa-2115-4a44-bfab-ed919bc57aea	В случае, когда НИОКР меньше 2-3% от выручки, стоит ли рассматривать компанию в долгосрок?	135	\N
510	73	a55f2559-d087-4508-8d78-79c1684e4460	Если НИОКР = 20% от выручки, а компания занимается перспективным направлением - что вы сделаете?	135	\N
511	74	ccf73172-4bb0-43e5-b084-338b6532b03d	Важны ли траты на маркетинг? Если да, то насколько	135	\N
512	75	37a82f3c-83db-466e-95fa-5635d169c2e1	Если компания маленького размера тратит на НИОКР и Маркетинг 10% от выручки в сумме, а FB 25% ( условно ), стоит ли думать, что компания знает что-то лучше ФБ?	135	\N
513	76	d01f36c6-a226-4c4a-bb2b-c93854e46e3f	Если вам понравилась идея компании и их бизнес, но НИОКР и Маркетинг в сумме дают 25%, то стоит ли входить в нее?	135	\N
3313	375	241c62b6-e1bc-4967-bb1a-8b245a26f594	Компания растет - индекс падает. Какой будет результат при отскоке индекса?	329	\N
3314	376	17bde98c-2172-4611-ba82-38c5ed453931	Компания падает - индекс растет. Какой будет результат при проливе индекса?	329	\N
3315	377	39e1d9e7-a9fb-4ce5-b875-a6e6b04b5b47	Компания в боковике, а индекс падает. Какой будет результат компании при отскоке индекса?	329	\N
3316	378	f0553dc2-f979-4a93-87c3-bc7210346c69	Проанализируйте график. Что вы видите? ( график индекса слева )	329	382
3317	379	4e4acede-bb0b-4a6a-a5b8-39c21f25b86b	Если весь день компания ходила за индексом, а начиная с 20:30 перестала и показывает силу, это повод в следующий раз при отскоке индекса примерно в 22:00 войти в компанию в лонг?	329	\N
3318	380	5bc59948-246c-47b7-bce7-32ad31634093	Перед вами график, что вы видите? Компания идет против рынка или за ним?	329	383
3319	381	0a0eda63-f3a3-40f7-94fd-48234167c228	Можно ли торговать по тренду на дистанции в 5 минут ТФ?	329	\N
3320	382	65f0946c-f944-4bfa-ac4f-d464e0cf092f	Можно ли торговать по тренду на дистанции в 2 часа ТФ?	329	\N
3321	383	cb7101ca-eaac-48ce-aaa1-96625d8fd4c9	Торговля по тренду не применима ни с чем, кроме себя самой	329	\N
650	165	f74b3626-56e2-4606-b2b8-4ec7dca6e1f5	0	160	\N
985	292	17f76fa5-3401-496a-a122-7f1e96eaf52d	ВВП это	187	\N
986	293	faaa09ed-fb78-4298-a3a6-5b7184db59ff	Если компания Nike производит кроссовки во Франции и продает их французам, какой это продукт?	187	\N
987	294	02c6c16e-1bcf-434e-93fd-0726bb903ea7	Если компания ZARA производит одежду в США, какой это продукт?	187	\N
988	295	7cabd73d-19fb-425f-8d0a-6b6198a14761	Стандартный рост ВВП в год?	187	\N
989	296	36021929-8eca-4ea8-9809-8255fdec2914	Рост ВВП на 2-3% в год это критично?	187	\N
990	297	4a8cfd9c-84a0-4884-b631-1586a966b283	Чем выше уровень безработицы, тем -	187	\N
991	298	2f3d747c-a279-4e24-83b5-bec3cff9a626	Чем больше количество заявок на пособие по без.раб, тем -	187	\N
992	299	d6baa0d0-bf45-43f0-bf0c-f4f315736219	3 раза подряд заявки на пособие увеличиваются, это критично?	187	\N
993	300	774244a9-a037-46b3-b07f-8baa7ac75cc7	Может ли безработица падать или расти бесконечно?	187	\N
994	301	2037405a-57b9-4cc3-ad07-17b9b8ddb134	Как получают статистику по безработным? Путем...	187	\N
995	302	841d8f89-7773-4ae5-87dc-867a70c3aae6	Может ли низкий уровень безработицы повлиять на инфляцию?	187	\N
996	303	579ac884-4135-4155-ac3a-620a82baad81	При повышении ключевой ставки куда пойдет инфляция?	187	\N
997	304	7a5e42d3-9edb-45b4-b78a-c6fbfb50bb6f	Как ключевая ставка влияет на безработицу?	187	\N
998	305	d7cb5d48-70f6-4fc5-9020-455fb4a8a7c1	При понижении ключевой ставки ФРС хочет	187	\N
999	306	c7b8e3cb-13c9-4888-914e-49548b07f513	Обязательно ли при повышении ключевой ставки упадет инфляция?	187	\N
1000	307	9f8f2c7f-6111-4755-9e8d-ee5d7bf8cd3d	ФРС может всегда держать низкую ставку?	187	\N
1001	308	729be4af-11ff-4044-9ee0-18baca1bb07e	Повышение ключевой ставки с 0.25% до 0.26% приведет к чему-либо? ( 0.26% быть не может, но это просто пример )	187	\N
1002	309	12749ff2-2d9a-4ada-9863-f62435590261	Могут ли повышать ключевую ставку просто для сдерживания инфляции? Чтобы она не росла	187	\N
1003	310	0d7fd891-c5b4-48e8-9b03-4e6bd73197f8	Число выданных разрешений на строительство влияет на доллар?	187	\N
1004	311	7817525d-86af-477a-8140-0e5a3da884a7	Чем больше разрешений выдано, тем ниже доллар будет?	187	\N
1005	312	452d99c4-7eeb-42f8-be43-c079337188b3	Показатель может стать микроэкономическим?	187	\N
5498	605	503e0e7b-75f1-4f37-9a45-f11471c3d0b6	Стоит ли сравнивать по отрасли?	524	\N
5499	606	e83a3723-613e-4967-b79a-3fabcc382c9a	Receivable Turnover — это	524	\N
5500	607	922048b4-1d4f-41bc-9a9f-0202ad49f7fb	Что отражает?	524	\N
4473	481	7902e9c9-5f47-4a41-8503-c96bc885bcc0	0	464	\N
4040	421	7fb27bad-b978-4d6e-a7dd-2de0cdbbeb1d	Сезонный анализ торгуется на диапазоне 1-3 месяца	405	\N
4041	422	57c698b6-ce5e-477d-aafa-3ee37229afa4	Сезонный анализ может торговаться и 9-10 месяцев, если есть такая сезонность	405	\N
4042	423	8e796218-2e48-4a50-969f-2dbff982f5ad	Сезонный анализ обязательно должен быть внутри одной сезонность ( лето, осень и т.д )	405	\N
4043	424	1c9ffe28-8bee-43be-8e30-6cd3cd446d52	Проверяется на диапазоне от 10 лет	405	\N
4044	425	08389fdd-f2f8-4549-b45b-145ccb1dd635	Если из 10 лет 8 подтверждают сезонность, то стоит ли подобное рассматривать?	405	\N
4045	426	01dd30a4-f707-4dce-b6f3-e9b153b1cfd3	Является вспомогательным индикатором, к которому нужно добавлять другой анализ	405	\N
4046	427	7820737d-b5bf-4806-a1cf-94023abd5428	Временной анализ проводят в течение 100 дней	405	\N
4047	428	3a9eefc2-76b9-471b-88cc-63ce908f844e	Временной анализ точно указывает, когда будет разворот тренда	405	\N
4048	429	2eb53f51-b34e-40af-949d-069185166e5d	Временной анализ показывает время, когда рынок имеет потенциал продолжить тренд до следующей точки или развернуться	405	\N
4049	430	b70b7996-9843-437d-88f8-5133221fd490	Если рынок падал до 18:30 и развернулся в это время, затем в 20:30 начал падать. До какого времени он будет падать?	405	\N
4050	431	34101032-3524-4868-be6e-dd4dc71d144c	Можно ли пользоваться временным анализом без понимания бумаг и их анализа	405	\N
4051	432	b6cf97e5-a349-4b18-8c20-bf38b3f7c534	Можно ли торговать по тренду при временном анализе?	405	\N
3942	406	f09a0fdc-5a65-4478-8d12-4a250e1d1e57	Волны Эллиота считаются по	392	\N
3943	407	85e66d2d-869a-479d-9b59-38d16a1f92a3	Может ли волна 3 быть меньше волны 1?	392	\N
3944	408	4233b9bd-761a-4bcf-b494-a6ca25c82cbb	Перед вами график, это волны Эллиота?	392	397
3945	409	99879f20-2f5d-4b5a-9ec9-d7e85ce07743	Сколько коррекционных, а сколько движущих волн?	392	\N
3946	410	b3a4162a-9f35-4cef-818c-670d5fa1b27d	Данная картина является волнами Эллиота?	392	398
3947	411	89b9dac1-82b4-4c14-b398-7cc53b245c08	Вопрос сложнее - в какой волне допущена ошибка и почему это НЕ волны Эллиота?	392	399
3948	412	b81e3697-0da1-4978-9fc7-608a6fb2e3e0	Правильные ли перед вами обратные волны Эллиота? Или есть ошибка	392	400
3949	413	ef8e8613-f23a-4deb-98d3-f7b0fa16de60	Можно ли входить на 2 волну эллиота в лонг?	392	\N
3950	414	c12c1e79-37f1-44e6-93bf-ce1ba305d2ec	Можно ли входить на 5 волну в лонг?	392	\N
3951	415	4f3309b5-cdee-400c-8181-5ff708f68264	Если 4 волна Вульфа находится между 1 и 2, это правильно?	392	\N
3952	416	085f0e5c-648e-464b-9e52-f0b225d7da39	На какой волне Вульфа входим в сделку?	392	\N
3953	417	cbb9f938-4bf6-4872-bfc6-da83783d1d30	Если волна 5 вышла за пределы формации, паттерн отменяется?	392	\N
3954	418	f4f13bd0-87f7-4fd7-bd6b-f16b17d9ddc3	Перед вами волны Вульфа или обман?	392	401
3955	419	b6892c84-a01f-4807-82b9-e124fbcd9bc0	Перед вами волны Вульфа или обман?	392	402
4474	482	1eae9236-edf0-41df-b39f-189c47d66463	0	465	\N
4462	470	71a4c1e6-3484-4ba1-b8d1-929d8101ad41	Если в связке 3 трендовых индикатора, это хорошо?	461	\N
4463	471	aa7611a2-24b2-48e7-a9ff-fb7f02535079	Стандартное отклонение присутствует у...	461	\N
4464	472	4648c8ae-23e6-4063-9cd7-9be4f4b733f1	сжатие в "сосиску" у трендовых индикаторов означает...	461	\N
4465	473	2d4ec79d-00c8-4978-aab3-998334da03ca	Самый сильный индикатор в ТА	461	\N
4466	474	d70cb60a-6034-4de3-9a13-7ca50fd179ac	Если свеча поглотила 7 свечей, то сильный будет тренд или слабый?	461	\N
4467	475	6f99ddad-ba88-4fc3-a626-51c5ab8ac36f	0.5 по Фибо сильный уровень?	461	\N
4468	476	70a53ec4-9cd2-41d1-8d6e-037f489ee5bf	Если OBV растет по объемам, а котировки падают, то чего ждем?	461	\N
4469	477	dbdd741e-b919-4168-9bfd-757659fa7840	В связке мы ждем всегда всех индикаторов или 60-80% из них будет достаточно?	461	\N
4470	478	72650613-457e-458f-bb7b-24dc427c9505	Если компания вышла из канала вверх, есть вероятность ее возврата на сопротивление бывшего канала, как на поддержку?	461	\N
5523	630	33b5cdf0-44ec-40ac-85b3-144b79cb7b90	Что лучше купить ( при равных показателях ) - компанию, которая выросла за 10 лет на 10000% или которая упала на 95%?	527	\N
5524	631	e6fc048c-2afc-44a0-a764-85579e97d3b3	Является ли ошибкой постоянная покупка падающих компаний, которые упали на 70% за 5-10 лет?	527	\N
5525	632	6ca58ce9-fd80-40bc-b647-0146f219fc37	Что лучше купить для стабильного роста? FB+AAPL или RIG+PBF	527	\N
5526	633	b6fb97eb-645c-461f-b835-f1b3d7a82cd7	Почему растущие компании не нравятся инвесторам?	527	\N
5527	634	ce87abdf-f48e-4dd8-9a67-7d63bb779eb5	Покупка МОМО лучше, чем покупка Apple? ( сравните графики обеих компаний )	527	\N
4475	483	29262096-5b12-4a14-9e04-5bdcd2e2086f	0	466	\N
4384	461	9da5ed40-3211-4644-b671-03e2f6dbe618	Мультипликаторы в совокупностью с рентабельностью могут показать достойный уровень оценки?  Если еще использовать НИОКР и некоторые фишки ФА	448	\N
4385	462	1e52f369-6306-48e5-b089-cc254f0ee246	Данные для составления мультипликаторов берут из ...	448	\N
4386	463	344ce62a-1a26-40b3-a034-a718656c9d41	Если акции выросли на 200% по выручке, а сами котировки всего на 30%, есть потенциал роста?	448	\N
4387	464	e35b1a37-406a-4046-b551-c3f51ebeb96e	НИОКР и расходы на маркетинг - важные статьи в отчете?	448	\N
4388	465	2f369b11-fb80-47db-92b5-91f6a8486bd9	Если есть риск суда, вы будете вкладываться в компанию?	448	\N
4389	466	191f6c58-41a1-408b-97eb-b4599f21dabc	При покупке инсайдера мы сразу входим в позицию?	448	\N
4390	467	f03bd74a-36ab-4c15-bf6b-1498702cee8e	Что случится с нефтяными компаниями, если цены на нефть упадут на 20%	448	\N
4391	468	0d5c45fd-5df8-493a-bc55-7ece408e3fff	Влияет ли нефть на доллар?	448	\N
5515	622	9348b270-8dd9-406a-928c-762963e9d664	Если инсайдер купил компанию на 10 тысяч долларов, ваши действия?	526	\N
5516	623	5065ebf7-bddd-4f52-9c3c-79bd71195acf	Если инсайдер купил компанию на 100 тысяч долларов, ваши действия?	526	\N
5517	624	98e34f49-7bab-4dd3-8963-e92586468ff7	Если инсайдер купил компанию на 10 миллионов долларов, ваши действия?	526	\N
5518	625	43a1564a-a090-4542-a05b-e957fca86e17	Вы держите позицию по компании "А", инсайдер продал ее на 100 миллионов долларов, но это акции с премиальных за 10 лет. Вы продадите за ним?	526	\N
5519	626	38e95fce-473e-4e42-8bf4-c7e4429816bc	Вы видите сделку инсайдера, который покупает компанию частями. Он является владельцем фонда, специализирующимся в т.ч. на нефти. Будете ли вы анализировать компанию и инсайдера, если сделки по 30-40 тысяч долларов, но их 10-15 штук?	526	\N
5520	627	8d6d7e1f-a539-40ba-95bd-9d41ddb444b0	Что лучше - покупка акций директором или владельцем 10% пакета?	526	\N
5521	628	71d6fcb7-155e-4d9b-bbfe-947e1bbb1dc8	Если за инсайдером замечены покупки компании в прошлом и на графике она сразу росла. Сейчас он совершил покупку этой же компании, стоит довериться?	526	\N
5522	629	0a9c4cf9-39a9-48f3-aa35-542d81592342	Стоит ли вообще анализировать компанию после инсайдерской сделки?	526	\N
4476	484	da27d67a-247b-4a27-9fff-1099239ebdae	0	467	\N
5827	635	6baa6897-db06-49bf-96c2-78e9d0f8bf96	Какой индикатор в связке RSI + MACD + Bollinger является опережающим?	548	\N
5828	636	6bbb1912-77e6-4395-9340-13e0b63688f6	Перед вами график, будете брать в лонг?	548	418
5829	637	cedbf6b8-0a78-4661-93af-d972c574aa84	Чем больше ТФ по связке выше — тем ...	548	\N
5830	638	0676bd2f-9157-41f1-b077-a7b2c53e6045	Если идет долгий RSI, можно брать без подтверждения тертьего индикатора. Верное суждение?	548	\N
5831	639	38b97efa-93ae-4ee2-bfe7-670c33a40ebf	Какую прибыль стоит ожидать по свзяке на ТФ 5 минут?	548	\N
5832	640	2b7bd663-266d-4d1d-813f-4aaf478c3327	Можно ли входить в шорт при неполном касании RSI?	548	419
5833	641	d2fb7749-7c3a-402a-9000-699d900f20a4	Хорошо ли себя отрабатывает связка на ТФ 5 минут?	548	\N
5834	642	ddba63b2-ede7-45d7-8cc6-a2e673fc281d	Можно ли входить в сделку, когда 2/3 индикаторов подтвердились?	548	\N
5835	643	defdaa22-296f-4dc2-8065-de2b8f46675b	Перед вами график с новой связкой Ichimoku + EMA 200 + OBV на ТФ 1 день, ваши действия?	548	420
5836	644	6c1c4b20-0f4b-4392-8e40-50b401142a59	Можно ли торговать на связке  выше на ТФ 5 минут?	548	\N
5837	645	e47227b4-d1b9-461e-8b73-24bb1c35e2bb	Перед вами график, куда будете заходить? Лонг или шорт?	548	421
5838	646	c5f6f9a6-ac8e-4cd0-a645-cf0b65ff2590	Перед вами график, куда будете заходить? Лонг или шорт?	548	422
5839	647	032595b2-d9c8-48fa-853d-836fbcbb1405	ATR используется для ...	548	\N
5840	648	700da240-5247-4200-98b2-b4d3aac702f2	На сколько нужно умножать ATR для стопа?	548	\N
5841	649	eaa923e0-edb7-4a05-8840-7b6decd406d7	Как ставить стоп по Пивот?	548	\N
5842	650	0c179d2e-69fa-4b2a-9832-cd4c193e275b	Стратегия Alligator + Pivot + MACD подойдет для 5 минутного фрейма?	548	\N
5843	651	2a1bc185-c8d6-4d46-97e1-ae8612c281c2	Перед вами график, входить в лонг или шорт?	548	423
5844	652	8fbc7b0a-c032-46cc-8212-0bcdfe12c70a	Когда MACD в боковике, стоит входить в позиции?	548	\N
5845	653	5a87297f-82d7-450c-a1fc-1f8ca030d6de	Аллигатор — это	548	\N
5846	654	93951e09-39d8-4963-b60a-de20e01fbd4a	Можно ли торговать эту связке на ТФ 5-30 минут?	548	\N
4477	485	9c3c68d8-9d3a-4e72-a567-7800af341de6	0	468	\N
5847	655	c10b2cbc-913b-4e97-9bc8-458f9af77234	Компания имела динамику на отчетах 10 лет, но ближайшие два будут значительно хуже ожиданий, будете сливать вместе с толпой, чтобы не уйти в еще больший минус?	549	\N
5848	656	af33954a-84c5-496e-9de0-25bed3669192	Сильная компания ( допустим Apple ) упала на 25%, будете докупать?	549	\N
5849	657	ed876866-02ca-4096-b4b5-39b3c9e56744	Кто создает панику на рынке?	549	\N
5850	658	2e31ef54-5163-48e8-873a-c568fd36cce1	Манипулятор проводит действия в свою пользу и пользу своего круга, роняя рынок, поддаваться на провокации? Вдруг за этим армагеддон последует?	549	\N
5851	659	17503fb4-e76a-43f2-bbbb-456d77ae6018	Правда ли, что каждые 2 месяца ( примерно ) мы встречаем коррекцию?	549	\N
5852	660	8d592b7c-670e-4fee-9709-7df3265a89dc	Ваша компания упала на 20%, вы ее анализировали и были в ней уверены. Она не сильно пострадала, будете сливать?	549	\N
5853	661	7729d441-fd55-425d-9d4d-c21780aa73cd	Если ваш портфель упадет на 20%, вы испытаете желание все продать поскорее?	549	\N
5854	662	2e2f9839-4bba-469c-af8c-cb28b520a472	Падение рынка - хорошо или плохо?	549	\N
5855	663	f5949db3-9fe4-4078-b015-7eca0aa15fcb	Стоит ли раз в день проверять свой долгосрочный портфель?	549	\N
5856	664	6b997d43-3b93-40a4-ba7e-ee8c81cc7aec	Стоит ли полагаться на чужое мнение, а свое откладывать на второй план, так как вы считаете себя менее осведомленным(ой)	549	\N
5857	665	7383e019-0ba9-4dcd-8577-5e9b8c9c4dac	Вы продали компанию и она показала рост на 100%, стоит ли жалеть об упущенной прибыли и впрыгивать обратно?	549	\N
5858	666	51e04b6c-37e2-4e1a-ac6d-3b4d9803f159	Если вы хотите делать 10% годовых, стоит покупать вирджин галактик?	549	\N
5859	667	bbd25812-a46a-4323-b632-511428c943ab	Компания не дошла до нужной цены для покупки на 0.5%, стоит ли взять или ждать дальше?	549	\N
5860	668	e49b3e95-a22c-472b-b8a2-c7d1b29a6b2b	Торговля против рынка...	549	\N
4478	486	c7d863ad-9dd4-43be-b066-06ce9fdedd1b	0	469	\N
4479	487	d1fcb216-37bc-4e29-9246-5550d57f94bf	0	470	\N
5294	533	79e97f96-42f2-434c-9f10-e2e5aad1455a	RSI - это	520	\N
5295	534	89927d61-5803-411b-b688-1fc11e68e753	Какой сигнал дает RSI?	520	403
5296	535	0f62e644-f6d2-4434-9a0d-f650e975e9f8	Какой сигнал дает RSI?	520	404
5297	536	2a002e53-ebf6-4387-b94b-6621264b6d2e	RSI измеряется в диапазоне от	520	\N
5298	537	f1d68465-396e-46e5-9585-80d0948dbdb2	MACD это	520	\N
5299	538	75f0426d-8740-4261-ad04-7b794c219874	Какой сигнал дает MACD?	520	405
5300	539	42ebac2e-d938-440d-a3e5-43276f88d500	Какой сигнал дает MACD?	520	406
5301	540	e5c6f2f5-fb86-4993-87e5-b3cda9767ce4	Какой сигнал дает MACD?	520	407
5302	541	35668c7a-fe44-43ac-b255-bffe740b847e	Какой сигнал дает связка MACD + RSI?	520	408
5303	542	185c194b-0cec-45e9-a300-8e2eaad79da0	Боллинджер - это	520	\N
5304	543	74138a95-d383-4230-a44a-b7681f4a1418	Второй множитель у Bollinger сколько % поглощаемости графика?	520	\N
5305	544	2d1de91d-667b-4480-847d-d4d31673353e	При таком условии графика, что произойдет?	520	409
5306	545	ced95f9a-61bb-499e-8150-d0f1066b0639	Боллинджер + Уровни Пивот + МАКД + РСИ - хорошая связка?	520	\N
5307	546	5672e8d5-2a45-4836-bfb1-c83e8b2fe0cd	ЕМА - это	520	\N
5308	547	3b36df71-850e-4751-9a1a-d2d3ed5768a7	Можно ли на графике 5 лет использовать ЕМА 200 + уровни поддержки как связку?	520	\N
5309	548	cd64a8ac-0077-484c-88ac-21965ae56bdb	Если график коснулся ЕМА 200 на дневном ТФ, триггер к покупке или рассмотрению компании?	520	\N
5310	549	8b9e5d1f-cd61-48d0-bed1-8fffed62acb5	Какой тренд задается в данном случае?	520	410
5311	550	b5cf5089-e090-496b-9765-cd7f684a26a7	Уровни Пивот - это	520	\N
5312	551	abaa3aab-c4ba-4851-9217-3d7a6d794d1d	Опишите возможное дальнейшее движение графика	520	411
5313	552	f7a58ad6-8a1e-41aa-8faa-131c603f73ed	Уровень Р является сильным?	520	\N
5314	553	6f0825a9-d5ae-423b-ad5d-d1e0dc1b1257	В такой ситуации на графике, что вероятнее случится? Дневной ТФ	520	412
5315	554	bf16ea52-7c4e-469f-a6dd-425f3b477410	Коррекция по Фибо это	520	\N
5316	555	ec102b43-2509-418a-8ce7-715633279a33	График подходит к уровню 0.5 по Фибо на дневном ТФ, какое может быть продолжение?	520	413
5317	556	6d8ae495-ac33-4787-ba75-421cab65b9f0	Может ли быть оказано сопротивление?	520	414
5318	557	f8136e0d-12b6-4a8f-a5ce-03f981edb1f3	Чем выше ТФ - тем слабее индикатор	520	\N
5319	558	cfef4ca7-bd64-40a9-bed5-53f5c9a56a02	Ichimoku это -	520	\N
5320	559	3f2e008f-9765-45e1-b9be-3789543e1e74	По графику определите дальнейшее движение котировок	520	415
5321	560	2cfd49b8-5708-4960-8964-c85d41f27852	Может ли облако служить сопротивлением или поддержкой?	520	\N
5322	561	6e839ccc-b6ee-460d-bfb7-0fe9756ef8a9	OBV - это	520	\N
5323	562	6547b57b-cef4-445a-beca-91b9af537638	На основании графика определите, куда пойдет график	520	416
5324	563	4b928d96-25b2-4365-89ec-5d022889abd4	Стоит ли вставать в лонг с индикатором A/D?	520	417
4334	455	bf899884-fee1-444a-9966-7bc6e1001e49	Можно ли пользоваться ПИВОТ и канальной системой для определения зон сопротивления и поддержки рынка?	438	\N
4335	456	cda79926-4e45-4b05-add9-82730195a9e5	Циклы показывают, где мы сейчас находимся?	438	\N
4336	457	1aee686b-19d6-4463-8328-f2328ad6567c	На чем основан цикл Китчина?	438	\N
4337	458	79fa4442-b5f6-4fb4-86f8-ca55c8eafc1a	Если мы находимся на пике по Жюгляру, стоит входить в позицию?	438	\N
4338	459	b5d04a62-d468-4b73-b437-706436de3e1d	У каждой фазы цикла есть объяснение, можем ли мы это интерпретировать в реальность?	438	\N
4339	460	8feecc1c-1554-43bd-9145-b52687b2b335	Использовать циклы можно для обнаружения фазы, но а также, для понимания экономики в целом, так или нет?	438	\N
4480	488	58ba08c4-193b-49aa-ac54-723568486cd5	0	471	\N
\.


--
-- Data for Name: learning_testquestion; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_testquestion (id, "order", uuid, question_text, image, test_id) FROM stdin;
\.


--
-- Data for Name: users_completedtest; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_completedtest (id, uuid, completed_at, test_id, user_id) FROM stdin;
15	50648d65-6e7c-4d4e-b0c5-1b26e27fb1a7	2021-12-15 21:57:22.827863+00	462	85
16	432799cc-7394-4d01-9e4b-1bb20249d762	2021-12-15 22:29:48.609352+00	393	85
17	41d22e34-e265-425b-a722-0833e9ac7d9a	2021-12-15 22:31:23.109199+00	393	85
18	cb16cee2-1840-453b-943f-fb592b187f71	2021-12-15 22:31:49.046513+00	463	85
19	2afa4478-8f69-4bdf-bad7-35b358324380	2021-12-15 22:32:05.65846+00	470	85
20	c29b74b3-9179-4a2c-9a4a-2031f5ef2542	2021-12-15 22:32:15.236775+00	471	85
21	39ae6629-6684-4d45-83f0-daafdd4d4c16	2021-12-15 23:29:52.954157+00	462	1137
22	a924d021-1a1b-4f1f-84ac-8a20101091d3	2021-12-15 23:36:47.142312+00	462	939
23	33552dcb-7230-44c5-9958-7f7c51ca89b4	2021-12-15 23:44:59.741099+00	462	1365
24	7556cf13-7337-4d1f-9af7-a8bdca704f99	2021-12-15 23:47:01.834732+00	462	777
25	bd2cf3fd-9746-4994-b7ca-39bf84db879a	2021-12-15 23:49:04.258205+00	462	1372
26	7948d5e8-d004-4c43-9ded-b62a77b1602d	2021-12-15 23:50:14.721081+00	462	1372
27	30890344-bd90-4858-b04f-b841a2533169	2021-12-15 23:50:43.510342+00	462	1297
28	f4ffe96c-79cb-4e79-88a9-42832f1857b7	2021-12-15 23:52:58.579805+00	462	1099
30	0f4c61bf-40f0-42d8-99ed-172ae560db3a	2021-12-16 00:24:29.605164+00	462	1056
31	4c0b2a86-e2ba-4c8d-85cb-5e1080dd4bdc	2021-12-16 00:30:52.020027+00	462	1237
32	72095599-2719-49d3-965f-b1f827b30f58	2021-12-16 00:34:01.340419+00	462	1229
33	0b775418-616b-4436-8d9b-91c7dd6f94b8	2021-12-16 00:40:08.958466+00	462	458
34	fcb937a1-2801-45b7-a06c-a42c793c78b1	2021-12-16 00:46:59.936841+00	462	438
35	71d32896-b4cb-415a-a582-989121ca6334	2021-12-16 00:54:16.739279+00	462	350
36	2e16ffb5-c68d-4493-87d5-b82a988d5b7c	2021-12-16 01:01:23.645694+00	462	417
37	ac530d49-3531-425e-93ca-d8983d45217f	2021-12-16 01:10:00.804906+00	105	939
38	b0ebbd2d-f73d-4b67-9737-2602573ecc7b	2021-12-16 01:13:37.776692+00	137	939
39	54558593-c21b-44d5-a18b-3617469b8716	2021-12-16 01:18:57.294621+00	462	254
40	86523d5b-437b-49b4-a2a2-4274955d5ec5	2021-12-16 01:22:27.363144+00	462	1244
41	8ba6e4fd-461c-44f5-93ea-7309bd2aaaef	2021-12-16 01:23:37.668382+00	462	1285
42	9aebe22c-3e5d-4a1a-b91e-157e7beef3c9	2021-12-16 01:25:29.772126+00	462	1234
43	863f549d-f088-4d27-a857-950d5a919eb3	2021-12-16 01:38:42.334889+00	462	782
44	bbf040a7-2b1b-4d3d-be56-61b8f849a59f	2021-12-16 01:38:56.354258+00	119	939
45	d8ca3c18-ddf9-4aef-899a-e62f817cc4aa	2021-12-16 01:42:45.317866+00	462	126
46	164f10c6-afbc-4373-ab8a-15cb5a126992	2021-12-16 01:50:50.265159+00	127	939
48	9f8ddc3c-3ee9-4dcc-b830-5baa9d480d00	2021-12-16 02:00:07.832447+00	135	939
49	b8884384-da27-4d92-8d2d-cb21f7a5e53f	2021-12-16 02:05:56.827103+00	105	254
50	8d5c3241-403a-4ecf-b3ac-d118fd777ac5	2021-12-16 02:08:20.337829+00	462	1210
51	e595b569-7e83-4c8d-9e4d-585d5506fc3a	2021-12-16 02:10:52.806371+00	462	1113
52	0bb67aa1-059d-4d24-9b48-1261e4cb230e	2021-12-16 02:19:11.785252+00	462	586
53	188eb647-d608-41c6-8c52-6718d80941ca	2021-12-16 02:24:53.954806+00	462	333
54	3af84b82-3a6e-4657-b83e-1f4487a84032	2021-12-16 02:34:49.294665+00	462	254
55	a1c2b900-5fab-464e-8d91-672e4e6facfd	2021-12-16 02:37:20.038898+00	462	1266
56	921b9cad-e472-47de-ad97-6d2213b4d713	2021-12-16 02:58:05.888515+00	462	348
58	c2c1b92c-7654-4c0b-8eb0-3c412c851fdc	2021-12-16 03:08:39.398329+00	462	1185
59	d22a5578-5de6-4429-959d-d66b0e0590f8	2021-12-16 03:19:23.178385+00	462	393
60	55b52fb4-20fe-468b-932a-2f3cb9314e7b	2021-12-16 03:44:05.565632+00	462	1100
62	064c7ee4-b051-43e5-ada2-9888448fc8be	2021-12-16 03:51:16.608047+00	462	867
63	8fc265cf-fdda-4dd9-8401-83292a14a4d5	2021-12-16 03:56:33.339577+00	462	702
65	001828cc-7721-45a9-87d2-9d372f9bb74f	2021-12-16 04:03:15.949765+00	462	937
66	0405d571-57ba-4194-9ac8-e04659858451	2021-12-16 04:04:20.701206+00	462	617
67	d321c734-b782-46c6-b631-ea849d3ec764	2021-12-16 04:08:58.652792+00	462	506
68	4d3e209d-153c-439c-8b3c-47735bf4e99e	2021-12-16 04:13:47.453859+00	462	1073
69	43807aaf-24ed-4da4-8843-f61d8dfea543	2021-12-16 04:17:26.453614+00	462	1370
70	0d89567d-02ab-4021-9019-7e1bf1f2ca3f	2021-12-16 04:17:36.829623+00	462	1370
72	833a95ef-d066-4d02-be72-fb1c64a78165	2021-12-16 04:27:57.775091+00	462	1037
73	c6893663-7478-4d0a-9038-77da603a7e9c	2021-12-16 04:28:09.456619+00	462	1319
75	1ef7e2b4-2dae-4c8e-9cd5-08c84acb407d	2021-12-16 04:33:46.442413+00	462	1351
76	308901af-a916-4675-86c5-0932ed1e998a	2021-12-16 04:35:42.633515+00	462	1334
77	40261b12-d44c-48b6-b010-bcdce30acb15	2021-12-16 04:39:16.775306+00	462	709
78	99c8d2f9-db50-4b31-8ab7-22fb027a14f5	2021-12-16 04:44:38.62459+00	462	418
79	ca07ea65-6903-4ea0-94ba-b97e9b337e98	2021-12-16 04:45:23.867886+00	462	706
80	6125619c-fb5c-4992-b3e4-d2a78927a14f	2021-12-16 04:47:34.09041+00	462	1184
81	9aa4932e-e37a-488e-9cff-17126e88aad4	2021-12-16 04:56:20.608791+00	137	254
82	e3966ebf-b8d4-4dfc-a5c3-268c5bd2cddc	2021-12-16 04:58:21.2259+00	462	990
83	9ad044c5-a130-45a3-9c87-12d93d6b1e1a	2021-12-16 04:58:38.176483+00	462	706
84	9aef7514-f4e4-41ce-908f-738bc0c8c2cc	2021-12-16 04:59:10.343855+00	462	1324
85	56a53d4e-8a26-41f8-947d-142ccf152621	2021-12-16 04:59:12.683253+00	462	990
86	240ba413-6f6e-4c94-b89c-48a0003f40cb	2021-12-16 04:59:18.975576+00	462	264
87	e49c33a9-8887-46a4-9214-c2519f5c5920	2021-12-16 04:59:31.606728+00	462	990
88	3fb97520-6d4a-4229-9163-8476e7580bf4	2021-12-16 05:00:23.318865+00	462	1213
90	9eefb757-1147-4649-a923-513721a758e1	2021-12-16 05:04:02.812549+00	105	333
91	4cb84d81-070c-4fea-842b-edab02cf336a	2021-12-16 05:04:15.153636+00	462	952
92	45c0a1dc-67e9-4c59-bf79-ad58b16d5b33	2021-12-16 05:06:44.034027+00	520	348
93	3494abf4-67c2-47cc-a0f6-430c23488d1f	2021-12-16 05:06:54.402389+00	462	601
94	cdb87259-3f12-4cd0-a50f-603cf1a2002c	2021-12-16 05:08:49.701445+00	462	1176
95	28461dd0-9a84-48db-bf5a-c0440e100fce	2021-12-16 05:09:33.53978+00	137	333
97	f345ceef-3f00-472e-a996-deb720564885	2021-12-16 05:15:15.743418+00	462	642
98	982ba1b5-f3c2-4369-a588-cbc9422b788e	2021-12-16 05:17:03.398277+00	462	1320
99	195161e6-2467-44f8-b4b7-529b16991208	2021-12-16 05:17:08.121036+00	462	254
100	15a58a46-1f25-4983-a703-8bcab025d805	2021-12-16 05:19:32.422871+00	462	753
101	58080cc3-9e99-4f66-8eb0-e028117cdeb0	2021-12-16 05:22:14.888482+00	462	962
102	21f64e57-f7d8-46c2-ad22-5f876b0d70b3	2021-12-16 05:23:42.741624+00	520	213
103	6229c5a1-c370-4391-8391-29ae0e92ef8c	2021-12-16 05:26:26.555672+00	462	361
104	3db665ce-aec9-4943-b129-87ba20f03337	2021-12-16 05:27:08.771836+00	119	333
105	9000f8c7-b22d-4c28-b739-d66e4f93152e	2021-12-16 05:33:21.278278+00	462	1369
106	30b8e5fc-02ff-4671-95e8-af283d6ba896	2021-12-16 05:33:22.44268+00	462	1174
107	bcc72030-4662-411c-812d-5498984a67f2	2021-12-16 05:37:54.286491+00	127	333
108	bffe5e21-79d1-40f8-b33f-41767aa9145c	2021-12-16 05:39:09.954566+00	462	199
109	596f9fa7-a718-476f-9519-b41ed58548e3	2021-12-16 05:42:58.156241+00	462	1182
110	4b6cf3b8-a13a-4559-9cfc-c0023c16655f	2021-12-16 05:43:46.140814+00	462	990
111	abaecccf-d1c7-41d8-84a7-d9c70b103056	2021-12-16 05:45:51.703115+00	462	961
112	10596240-bca5-46c7-89db-19417a50100e	2021-12-16 05:47:02.595171+00	462	325
113	f4c3ec59-5795-4975-8d8f-57b14d156d59	2021-12-16 05:50:17.750692+00	462	479
114	f99c041d-0869-4fd0-abac-a7b756c9b7bb	2021-12-16 05:54:52.421017+00	462	338
115	34f6c063-d5d4-48e2-9c1a-e2db6b0fdc54	2021-12-16 05:55:26.479995+00	462	132
116	c5b0f5a9-2215-4cc1-bf19-7ad8d9b6e4c0	2021-12-16 05:59:44.251649+00	462	1376
117	8e106e0e-8214-4250-b7fd-d3d191a597e5	2021-12-16 06:00:17.569681+00	462	375
118	33ee507c-269b-4d8c-bcd5-d835951af6e5	2021-12-16 06:04:03.588411+00	462	1272
119	b14b8183-7551-45cd-b323-efbe1934deaa	2021-12-16 06:04:12.807261+00	160	348
120	79f69e72-eab1-4580-ae51-e27fda3b523c	2021-12-16 06:07:13.928428+00	462	348
121	782645f2-e8cc-4752-b768-c36815976212	2021-12-16 06:09:41.893253+00	462	674
122	a966be0b-6232-4b84-8cbc-f3d068f09fbd	2021-12-16 06:15:16.024318+00	462	1136
123	38df48d9-c40d-4384-a375-2d150d72d121	2021-12-16 06:17:44.083299+00	105	1351
124	ba512f1e-1b46-40da-8705-14b960031700	2021-12-16 06:18:21.139867+00	462	996
125	294a3d80-7d60-4d45-b828-6eb958b29652	2021-12-16 06:19:00.467084+00	137	1351
126	35078a14-1b0b-43a6-aff8-0c157056c43c	2021-12-16 06:19:20.097578+00	462	404
127	550807a4-5408-41f0-a647-fc2951dc93eb	2021-12-16 06:21:35.102006+00	470	1117
128	07f4537a-df13-4a44-b280-c9ac80c7b383	2021-12-16 06:28:26.476393+00	119	1351
129	66285023-e930-43aa-8824-b85b2668d49c	2021-12-16 06:30:43.030838+00	462	787
130	05667d24-339d-4f89-80ae-f7f0254c039d	2021-12-16 06:31:08.349428+00	462	444
131	bfcdc29c-0938-4f0c-86c3-6974bda7d7ad	2021-12-16 06:31:36.343515+00	462	444
132	c1e332da-7255-44a9-b4c8-2c0e4dbd4288	2021-12-16 06:33:51.0692+00	127	1351
133	36f9d742-58d9-4993-b5d3-f7d51f9fbc6a	2021-12-16 06:39:41.223868+00	462	1055
134	4e55b4c4-593f-454e-a4a8-e60bdd5d7599	2021-12-16 06:39:55.198531+00	462	1109
135	b4140f8c-dce2-49ae-a55a-f312cb7cc2c5	2021-12-16 06:41:20.810554+00	135	1351
136	119589a1-fed2-4389-9849-a0c7ba755661	2021-12-16 06:47:42.752547+00	462	1378
137	51b8b58b-c872-4d55-ad87-3129633ad251	2021-12-16 06:50:46.974723+00	462	1114
138	2f095060-eda4-44e3-87b4-f613651d186e	2021-12-16 06:50:59.661542+00	462	1114
139	0de78b22-109c-4d58-ab3d-94a6f91fcc1c	2021-12-16 06:51:18.672357+00	462	421
140	2c0734bc-a79e-45f2-8942-726f767d6bbd	2021-12-16 06:53:16.990993+00	462	933
141	5f4255c9-81fc-42d8-9754-fb2ba09c6ea6	2021-12-16 06:53:44.676857+00	462	933
142	0746d1f6-dfe1-4fc7-bba0-43039bc942aa	2021-12-16 06:55:30.740968+00	462	1087
143	17a536b3-915e-4968-b775-5c71646fa2c9	2021-12-16 06:58:48.453146+00	462	690
145	c2b0bc90-4701-4a0e-bdd4-f053a9e9418c	2021-12-16 07:09:02.239955+00	462	892
146	bcd0aa44-14ea-43c2-bdcf-bc3734db8c40	2021-12-16 07:14:54.833637+00	462	1048
147	adbfedb0-8783-4145-9014-08dd7b2cb189	2021-12-16 07:15:37.660161+00	462	339
148	21bfa9ed-8399-40bc-8d23-1e490da65074	2021-12-16 07:15:57.229676+00	462	380
149	df4420e1-071f-4750-9b47-bbe9ef5fb09f	2021-12-16 07:16:01.419246+00	462	1156
150	f35a2ef2-dde7-4692-b05e-0b03f58e329d	2021-12-16 07:16:13.170329+00	462	1237
151	5de52d90-dcc7-476d-a6ce-18ee2604d1fc	2021-12-16 07:16:22.15757+00	462	339
152	cb30e348-870c-4049-8e51-a01c7903ae4b	2021-12-16 07:18:14.003996+00	462	199
153	bb1c0eb6-d71f-4d74-b30b-c4d72e758804	2021-12-16 07:27:59.155381+00	463	579
154	ea377472-5c60-4deb-bf8a-ce3003ef5144	2021-12-16 07:29:47.492337+00	462	616
155	4230e8ae-bb68-4b84-8087-376f70fb3f51	2021-12-16 07:33:21.947368+00	462	419
156	205bf501-9813-4401-8e84-57cf82f4f3c6	2021-12-16 07:37:29.108463+00	462	1382
157	48928259-76dc-4654-8f76-1055b43b141e	2021-12-16 07:37:31.883854+00	462	1382
158	4c221061-ad0e-46bc-ae82-9f4c8d8eee81	2021-12-16 07:38:39.321765+00	462	259
160	cc1fc076-6d5c-4022-88de-8fea65d2d6bb	2021-12-16 07:39:42.034521+00	462	1177
161	bf7aae56-2f1a-4910-95ab-10467d1a826f	2021-12-16 07:41:11.113756+00	462	1225
162	71d47a87-2824-4275-9068-ffca87d2e066	2021-12-16 07:44:31.725235+00	462	1315
163	ffcb1589-ba83-4de3-9ed6-05ca93e4a0d1	2021-12-16 07:45:06.475155+00	462	373
164	57d9561b-763e-43f1-a9a5-7c011bc80fe1	2021-12-16 07:49:03.490609+00	462	1037
165	3f188912-a700-4bf4-a9a9-ae62a91c66ce	2021-12-16 07:49:36.79032+00	462	1162
166	c5c17dd1-91de-4529-9bb1-18397e818ba4	2021-12-16 07:52:25.132926+00	393	1351
168	b39314e9-ed09-49d4-954f-dd69be43a3af	2021-12-16 07:55:39.965606+00	462	1283
169	4edd1918-9bfb-450a-bf4f-70e772990286	2021-12-16 07:58:04.447134+00	462	1146
170	a817917c-ce8c-4149-a363-732d375f9788	2021-12-16 07:58:57.484956+00	462	1079
171	e4d6032a-1005-4ef5-92e3-7d84a215abf9	2021-12-16 07:59:58.64394+00	462	1321
172	4c0de3e3-d0c0-4d66-9d15-3a7d03d44d94	2021-12-16 08:00:09.890253+00	105	1109
173	b6563d2d-fe3b-48b4-a709-0d66186e74c0	2021-12-16 08:04:08.812303+00	329	1351
174	58641fd8-1587-4136-8116-58ff8aa82561	2021-12-16 08:07:50.913208+00	137	1109
175	d0db4e3a-0c5b-409c-b730-287a06789d8b	2021-12-16 08:07:57.083755+00	462	1287
176	c888357e-8dd3-4b5d-9827-c4932c4eda24	2021-12-16 08:08:36.661639+00	462	399
177	76643a93-1134-4eaf-ae1f-fbe22023d726	2021-12-16 08:08:39.551346+00	462	1337
178	ae8e75c3-8c83-4407-a472-b3203543a819	2021-12-16 08:09:10.126626+00	462	1011
179	f033eb10-5162-4147-9dc3-e9620aa0e5fe	2021-12-16 08:09:24.847955+00	462	1383
180	f9574a12-beb8-4419-9819-c960c80f01cf	2021-12-16 08:11:50.747994+00	462	985
181	75e6929c-98bb-4be8-a904-875a9a8a9963	2021-12-16 08:17:29.816837+00	119	1109
182	50b9b301-1165-4ab4-a025-5ca74d8d7b97	2021-12-16 08:18:03.309612+00	119	1109
183	4ccc7e63-0d20-4b7d-a77e-2f6c57544678	2021-12-16 08:22:33.298272+00	462	925
185	6b4ccb3a-3508-4cba-8646-61c28fc26f09	2021-12-16 08:26:41.07418+00	331	1351
186	f2702d20-a40d-4479-91c7-aa32513f3ddc	2021-12-16 08:29:27.16044+00	462	324
187	a5a569cd-05e3-43fa-b273-a496211aa1bb	2021-12-16 08:33:18.182357+00	462	1337
188	e8f0a918-b158-4484-977b-5e43aee990b6	2021-12-16 08:34:46.201369+00	462	967
189	4977d0ed-7745-439d-b1b3-e4e996484b83	2021-12-16 08:41:31.306939+00	462	1030
190	0adbfdba-27f2-4264-bb69-076df8913f8a	2021-12-16 08:43:37.941341+00	462	487
191	4f39cb4f-f405-4f45-8ded-8f177fc1b4e3	2021-12-16 08:46:05.067861+00	464	821
192	a93fa244-d315-4381-95df-280dc07aba77	2021-12-16 08:51:14.589618+00	462	1085
193	b7bb693f-0c2d-4682-b15c-18217112f222	2021-12-16 08:52:07.965881+00	462	774
194	5c446f36-9c1e-4368-946e-17424acecf7e	2021-12-16 08:52:52.954544+00	331	1351
195	1d4fdc8b-f2b7-442a-984a-2557fae50b5a	2021-12-16 08:52:58.083092+00	138	1351
196	d5a3dd67-500a-441b-a2ee-aad3dc5dd24f	2021-12-16 08:56:28.128269+00	462	1058
197	e5f3754c-4acd-4407-b2a4-0a503233dd8a	2021-12-16 08:56:31.488456+00	462	832
198	899ab8c7-3cae-47d8-81f5-ea6e56222425	2021-12-16 08:56:46.858267+00	462	937
199	38bb3216-371e-419b-87ee-d6705e575bda	2021-12-16 08:56:51.722913+00	462	832
200	06da7b5a-9623-41dd-9762-ca85a59368f9	2021-12-16 08:57:34.946011+00	462	878
202	368cc3c8-61c5-4384-a85f-b6d4aa14b8a8	2021-12-16 08:59:27.402402+00	462	498
203	94d0059b-e55a-4fcb-b956-4312509a6d02	2021-12-16 09:00:46.28817+00	138	939
204	b554d0da-e213-4a95-89e4-8f67cb1a76a3	2021-12-16 09:01:31.09451+00	462	936
205	5bd4f12a-5116-4a7d-920b-5a0aca446725	2021-12-16 09:02:30.690456+00	464	1226
206	138f1c6c-5b7f-4eae-b3f7-69a3d28501c3	2021-12-16 09:02:50.893156+00	462	1050
207	99f69662-fef1-4a1f-ad8d-7a717b0ce9b5	2021-12-16 09:03:21.98213+00	462	1167
208	e62911dd-fb3b-4a0e-957e-029ab7a342e4	2021-12-16 09:03:45.188781+00	462	728
210	2056f71c-bf6a-491d-aa1e-379f136efad1	2021-12-16 09:05:22.008006+00	520	1351
211	7ef82db3-9d66-46f3-8360-5d7e3ae7f5e3	2021-12-16 09:07:37.893926+00	462	192
212	ffb9372f-5fc9-4bc0-a4b9-ca74ee6cd7b8	2021-12-16 09:09:06.640491+00	135	333
213	0651759b-e2c5-44fd-b327-c5b06940d0a3	2021-12-16 09:10:05.637066+00	462	1385
214	73954a2c-f28f-4641-b1d2-be958075cd44	2021-12-16 09:10:53.720922+00	462	1385
216	e8b0e6e6-78f5-453e-b91f-2bc3ada81626	2021-12-16 09:14:09.952328+00	138	333
217	7f41c687-6883-4564-b23b-8cb00f475b5c	2021-12-16 09:16:17.708713+00	465	1226
219	bac8e484-6263-4f71-917e-5bb4344be964	2021-12-16 09:19:33.106997+00	462	947
220	a0618f0b-4af9-452e-99e7-435f37664247	2021-12-16 09:19:38.747621+00	466	1226
221	45513d00-941d-426f-9a24-d1b3a3fb0d04	2021-12-16 09:22:00.65455+00	462	975
222	0d80a124-f638-4c93-8784-17cf7f812fba	2021-12-16 09:22:01.417833+00	462	623
223	899baeda-0885-452e-967f-747520b4e50f	2021-12-16 09:27:00.171829+00	462	1350
224	6d823316-f6c9-4804-86e0-5e58cc3d3d0b	2021-12-16 09:29:20.556514+00	467	1226
225	185ad2e7-dca9-4306-87c4-aea30346e909	2021-12-16 09:32:47.846237+00	462	1204
226	b0900dfb-f9d9-4bd4-acc8-116bc3a417ba	2021-12-16 09:33:02.361956+00	462	643
227	1e6d50a6-33ec-4497-8fbf-178e941b6d29	2021-12-16 09:33:57.202927+00	462	1204
228	f9821981-8e00-47ca-b873-788d0f1c2a08	2021-12-16 09:36:32.603037+00	468	1226
229	17b66b03-a3bf-4f64-bf21-0599deb00ba4	2021-12-16 09:39:32.345854+00	462	424
230	00abedc0-c48f-473c-bef1-830a3ffed295	2021-12-16 09:39:32.781959+00	462	424
233	5d4d1d89-cf56-4189-a525-b70f5c241777	2021-12-16 09:43:54.419201+00	462	1035
234	491ad9e3-9da8-4160-9807-52ecaabc6eed	2021-12-16 09:44:08.563913+00	469	1226
236	7a0e60f1-6a63-4361-9045-16c24c61bc68	2021-12-16 09:47:51.636778+00	462	761
237	a6ef74c6-6e76-420c-9d71-59d66f736755	2021-12-16 09:50:12.96988+00	462	913
238	06191b86-2865-4ef9-be4a-f9627b1a753d	2021-12-16 09:56:33.784384+00	462	949
240	67b9f8b4-1359-4b09-8ea8-b0a10dbf8015	2021-12-16 09:58:36.370645+00	105	782
241	1a3b15fa-7e6d-45ef-b7b5-b9a1a8fe04a0	2021-12-16 09:59:29.899969+00	462	1202
243	3298797c-7e47-4bba-b24b-50389aa732cb	2021-12-16 10:04:47.135292+00	137	782
244	2b283d35-a863-403c-ab10-116ec84ea379	2021-12-16 10:05:56.565193+00	462	1168
245	abf2fc6e-3b35-437b-9a04-f1405fd9bc65	2021-12-16 10:07:26.583524+00	462	1388
246	8a497818-7fdd-4daf-ac7f-4cd400d83cac	2021-12-16 10:07:26.683664+00	462	319
247	0855f25b-90a7-4091-9be5-5b6c0fa6a3e0	2021-12-16 10:07:44.28236+00	470	1351
248	a9a086cf-25d3-4574-9eea-830768fe324a	2021-12-16 10:08:13.299472+00	471	1351
249	81458a83-40bd-479d-bb44-26e0dd865d1c	2021-12-16 10:08:18.722973+00	462	1279
250	40db764f-e5fc-4e29-bbbf-d9a796ca182b	2021-12-16 10:13:01.409928+00	462	1083
251	a53e25b0-88c4-4ba9-b257-dde4afecf59e	2021-12-16 10:18:24.821058+00	465	821
252	6975b79c-9595-4670-b0bb-ffd04806fb74	2021-12-16 10:22:45.445662+00	462	1302
253	d0c604c2-b996-4572-82d5-1c9b31b30a85	2021-12-16 10:23:30.990542+00	462	113
254	1db3758d-63e5-4fee-bf2e-b0c138655cb9	2021-12-16 10:27:53.92351+00	466	821
255	59f35348-9848-4e4b-81b6-86c46981564e	2021-12-16 10:30:15.432712+00	119	782
256	d0ebd513-2888-4f7e-8b1b-887a291695cb	2021-12-16 10:32:19.979015+00	467	821
257	fde5e17e-536f-404f-8952-ae4c589cae7d	2021-12-16 10:32:23.804615+00	462	1368
258	b2969acd-92b2-4835-a1e8-a2401d3ccc36	2021-12-16 10:33:20.775417+00	464	1261
260	c6dd3cfd-57f9-4a37-8d25-9d530654f6d8	2021-12-16 10:38:20.301877+00	105	1085
261	f011cf26-0021-43ee-a134-e14ca26337e6	2021-12-16 10:38:42.097489+00	468	821
262	c7c09bcd-17fc-4437-829e-dec7ddc60837	2021-12-16 10:39:06.940235+00	462	426
263	e1267e11-7c20-4728-b8de-7a57d4e7accc	2021-12-16 10:44:50.961033+00	462	465
264	19d7901e-f901-448c-a23f-25c29014d138	2021-12-16 10:47:53.186517+00	462	290
265	772043a9-4b7b-4bbd-ba54-4b3978ec6c2f	2021-12-16 10:49:37.597559+00	462	1215
266	a196bb74-d0f7-4055-acdd-93979f9efcbb	2021-12-16 10:49:44.458535+00	462	248
267	e4622e3b-54c8-44dc-bd1a-a225ca584089	2021-12-16 10:55:27.385146+00	462	1105
268	4d41e703-8a23-460e-97cc-ceabfe8be938	2021-12-16 10:55:55.468731+00	462	879
269	0f647d36-9406-4823-aa80-e5686d93abeb	2021-12-16 10:59:30.869052+00	520	1365
270	38cb35d0-c257-4ed6-9f6f-b8e87896bb73	2021-12-16 11:00:59.068351+00	462	1073
271	70ecfff7-2513-4a11-9f60-b1dfe40e49f3	2021-12-16 11:05:06.630985+00	469	821
272	fca8b7b4-52fb-4add-8320-2aeaaeffedca	2021-12-16 11:06:05.574828+00	462	1073
273	b7cb0182-327d-4af2-b222-d106ae284c16	2021-12-16 11:06:13.733356+00	462	1398
274	69c81a98-4033-4725-9795-48eceb1fb462	2021-12-16 11:06:35.222008+00	462	794
275	dc89bf0e-d625-418a-a965-972516dd535b	2021-12-16 11:08:56.069928+00	105	199
277	6598e54c-3a05-4c4e-be5f-447ca420963c	2021-12-16 11:10:33.491835+00	105	1365
278	d81702af-43b2-4109-bfce-4f4e22daf775	2021-12-16 11:18:44.993312+00	462	405
279	c66dc8d5-b3a0-46d8-829c-0e96d7edce89	2021-12-16 11:19:07.666327+00	464	143
280	5920fbf9-d54d-4020-9446-413f355ead12	2021-12-16 11:25:11.1006+00	462	997
281	1d69f200-40e0-4ead-b23e-e6203e3c626a	2021-12-16 11:25:39.952775+00	462	133
283	74d3d992-e6fe-4609-8028-23b279f442fc	2021-12-16 11:27:22.633711+00	462	405
284	e7da9ced-f7ec-4a82-b1ee-528510873fc5	2021-12-16 11:28:00.734298+00	462	1294
285	9860242d-55c2-4481-9b56-b6f383dfb18e	2021-12-16 11:28:18.487341+00	462	585
287	563e8ea1-791e-45f0-b3d7-1c21dbcfc813	2021-12-16 11:33:08.688521+00	462	1391
288	60ce481b-cfca-48a1-a30a-a491ce8dad65	2021-12-16 11:36:38.71456+00	462	335
289	f7259ddc-7363-4c03-a31d-7f1cff529b04	2021-12-16 11:37:20.705818+00	462	1317
290	edbe0ad4-6b10-45c1-8bd8-d01366f046ac	2021-12-16 11:38:03.4033+00	462	131
291	f29b8670-0b7d-45d3-8d0a-503dbd133d8f	2021-12-16 11:38:55.37924+00	462	576
292	143c887d-2f79-4ce3-8533-99786f86da5e	2021-12-16 11:40:12.918848+00	462	1278
293	834589ab-3288-416d-917c-5ea4a34e28b9	2021-12-16 11:42:29.875876+00	462	1349
294	127b2e52-12e5-4cf8-9a2f-519005ab027a	2021-12-16 11:43:50.556893+00	462	143
295	57e94812-1d4e-462f-a205-79038116578f	2021-12-16 11:44:40.210439+00	462	821
297	3825c877-14ae-4bdc-a9d8-e343b596034f	2021-12-16 11:46:17.087255+00	465	1261
298	745c7622-92f9-453b-8ae0-085ae8bb7ba4	2021-12-16 11:46:36.786205+00	462	1179
299	bb257beb-dadd-40d3-90a5-6cbd565b7a35	2021-12-16 11:47:09.508785+00	462	1291
300	e24c05c6-bc8b-443c-b584-9a4afbb6e36d	2021-12-16 11:51:25.551417+00	466	1261
301	f59e5a02-78aa-4a7e-9e6b-f61f89e670fc	2021-12-16 11:52:28.446309+00	462	240
302	7037f88e-3bf0-45c2-9bcf-ddc6be593793	2021-12-16 11:52:35.942462+00	462	1356
303	2cb6eb7b-a3bc-4d1d-9594-21a4831f83bc	2021-12-16 11:54:01.417867+00	467	1261
304	e7de8a14-9a61-45c8-8817-6ad29ca8961f	2021-12-16 11:57:44.164666+00	468	1261
305	d5da82c5-1201-4511-9d5c-0bb0eb32a7af	2021-12-16 12:00:16.161657+00	462	935
306	c21bde78-f8a3-4ac3-8466-f42d866cfac2	2021-12-16 12:03:50.956379+00	462	918
307	7dda1afd-e77c-475e-89f8-bd09420f3b33	2021-12-16 12:07:19.055362+00	462	1046
308	f7b09d4b-c3fa-4c85-ae19-62f98f3420b0	2021-12-16 12:07:47.993213+00	464	534
309	6fd5f865-8db6-4538-98f7-bdd4d884189a	2021-12-16 12:09:07.34837+00	469	1261
311	9c44af64-361a-4244-8c5a-f2e635b01965	2021-12-16 12:10:47.9588+00	462	779
312	cd0075de-5ae5-4e3d-83ff-a9d4b9e8dc28	2021-12-16 12:12:11.175867+00	105	375
314	0da0fb65-7559-44a1-bdce-f1ea84fc2b3d	2021-12-16 12:13:36.72231+00	462	212
315	2253497d-1754-4e3e-9c81-dec88a0f7129	2021-12-16 12:13:53.571689+00	137	375
317	49aeb454-0a74-4a91-ba73-48f1c56975c3	2021-12-16 12:14:37.305603+00	462	387
319	34fcc1c4-5882-4d4b-9f09-ac1a59356a64	2021-12-16 12:16:30.941487+00	137	375
320	a98c08ef-bd9d-479d-a63d-9a5cf2dae771	2021-12-16 12:16:51.914918+00	465	534
321	eee753e9-849f-4c26-9665-0b632b0bfd15	2021-12-16 12:19:21.664029+00	466	534
322	6d151784-3b7b-4b52-a47c-f45df42ce2d5	2021-12-16 12:20:08.278735+00	467	534
323	8d1324ce-8075-46d1-9fa5-e3828ab06f90	2021-12-16 12:20:25.799163+00	462	212
324	c0ac9828-14f3-4231-8db5-84e357bf403d	2021-12-16 12:20:31.322545+00	462	212
325	033ecdd7-eaad-4a57-af2d-fbd690cfc88a	2021-12-16 12:21:43.719668+00	468	534
326	5442d86e-d5a2-4604-9cd1-fefab4950345	2021-12-16 12:21:51.906388+00	462	825
327	bc0ac9d7-71f3-4fee-bf6c-1bfe89156d9e	2021-12-16 12:23:59.058072+00	119	375
329	211babe8-a923-4c26-b9df-ccf3a51b5646	2021-12-16 12:28:03.175034+00	462	522
330	a4555aef-f966-433c-8c6b-a6c85cea3632	2021-12-16 12:28:11.474197+00	462	522
331	407d99ed-40f1-4603-9639-8a6bbe1dec02	2021-12-16 12:29:08.071289+00	127	375
332	f75b2f05-bef5-4177-8455-c43fa92c2106	2021-12-16 12:34:47.109114+00	462	1273
333	99a85cf7-4b2d-44d3-beed-2144ad49104d	2021-12-16 12:36:28.406422+00	405	579
334	11b2f618-7468-4ece-bd81-426deb8146e5	2021-12-16 12:37:03.391104+00	462	1000
335	6f65afa6-f5ad-41a0-a838-fd3818e16a90	2021-12-16 12:38:40.072293+00	462	147
336	00169bde-cbfb-4467-8aed-b73f1a6517f1	2021-12-16 12:39:06.366749+00	462	449
338	7c421fd0-9305-4d4b-8040-e3349190ba00	2021-12-16 12:43:05.378438+00	462	606
339	9d00a8c7-0f8a-4c1f-b707-aae0c1b8ba3d	2021-12-16 12:44:15.034382+00	135	375
340	1a63ce1f-3b12-4bb1-b4f7-adda81c2f810	2021-12-16 12:46:13.559204+00	105	1073
341	c1c12061-fe35-4295-8472-c6922794a329	2021-12-16 12:47:04.566531+00	138	375
342	64234f42-3a46-4c17-815f-a73dcddc8b55	2021-12-16 12:47:30.273432+00	462	1071
343	d2cb8f53-d3ee-4ed9-a3bc-24f108637f74	2021-12-16 12:49:11.145026+00	137	1073
344	06fe2d0f-5a6d-4a1a-8ba5-c333609becaa	2021-12-16 12:51:31.598047+00	462	276
345	320b7f27-eae4-44bc-8590-952707c3b3ac	2021-12-16 12:51:57.70239+00	470	85
346	0c9041c4-72b7-4e60-a223-ac7d3f7bbbd8	2021-12-16 12:53:14.571122+00	462	968
347	415450c2-11f4-4214-9018-1529360dbffd	2021-12-16 12:55:18.79531+00	462	383
349	16e13843-fe5f-4958-a38f-0cbc88a95b34	2021-12-16 12:58:34.89775+00	462	437
350	b26d448e-47e2-4bfc-aa6a-d5a76029003c	2021-12-16 13:00:23.261638+00	137	375
351	a921e54c-f2f8-449b-a57f-233e2449d9d8	2021-12-16 13:04:09.455507+00	462	1131
352	e5dfee6f-763a-4b5e-ad66-d6ab37966664	2021-12-16 13:07:18.69551+00	462	183
353	16290096-09c6-4250-9c2f-0b2d9cf6e082	2021-12-16 13:08:35.224351+00	105	325
354	1284ed8c-9fda-4f6c-a99e-4eb7cc7060c1	2021-12-16 13:15:20.655589+00	137	325
355	41ae37d6-806c-4ceb-bc3b-de8669decebd	2021-12-16 13:24:31.216288+00	105	1317
356	d881fde7-4484-4f03-9745-a7017383fe46	2021-12-16 13:30:53.591274+00	462	617
357	9e494f66-7236-4fcf-8b77-73e054120cfb	2021-12-16 13:31:24.113887+00	462	1222
358	e81aa932-3c04-441c-9037-cd03c21baaa5	2021-12-16 13:32:05.595594+00	462	655
359	65e73960-a54b-4e26-95b0-f5e985ba8295	2021-12-16 13:35:00.049468+00	462	1392
360	a8ff012e-f764-42fb-89b8-ada4572e8b46	2021-12-16 13:36:23.138965+00	462	1352
361	a231e80f-4622-4f73-8880-7c99ae14aef7	2021-12-16 13:39:44.420774+00	462	139
362	cce7f537-283e-4d55-8ea3-1d9f1f66489d	2021-12-16 13:41:04.100026+00	462	1210
363	569ffb1d-e2e0-4559-8226-f6e37d116993	2021-12-16 13:41:05.439619+00	462	437
364	482a6251-954a-4bce-a58d-b1a0355f7f27	2021-12-16 13:41:22.749395+00	462	437
365	920c24ab-4f51-4050-994f-9f0717f5ee21	2021-12-16 13:42:19.237856+00	462	437
366	72ebb6ae-2554-4ad3-b71a-a3ce127d288f	2021-12-16 13:43:10.802798+00	464	720
367	7b96ac99-bc83-4ec7-b9bc-73b539973091	2021-12-16 13:54:02.214103+00	462	1261
368	56f7b311-2b7e-4b3c-a4c3-d4c0da22f7b8	2021-12-16 13:54:08.229446+00	462	1261
369	25367e2b-9ecb-4d16-a468-526a70ff9583	2021-12-16 13:54:33.14998+00	462	529
370	9c811cfe-fbaa-429f-a1c5-badd29e004f2	2021-12-16 13:56:03.2173+00	462	1210
371	4dfe8feb-42f9-423d-9c94-4e897639b27f	2021-12-16 13:56:20.629303+00	463	534
373	8471152d-8092-49b5-a44a-26adef1db309	2021-12-16 13:58:22.327862+00	462	1305
374	8923e79d-3296-4457-ac25-5e3661ad6921	2021-12-16 13:58:46.406278+00	462	1181
376	20a2969c-062b-4c3e-8e7f-00c83beafba2	2021-12-16 14:03:51.091209+00	105	674
377	68913161-da1c-49d0-a471-4a0f08d51015	2021-12-16 14:06:27.049809+00	462	1290
378	01135c8d-0ffd-44cc-8106-bd2a7d7a37d3	2021-12-16 14:10:31.97053+00	462	732
379	c350f2e2-8f58-4520-9b73-2df6c72850d4	2021-12-16 14:14:11.791423+00	462	358
380	0cf24536-4eb3-498b-9fde-1ad9e53ffc1e	2021-12-16 14:14:19.795655+00	462	1290
381	d00351de-5999-4c96-8518-9aab55056ce7	2021-12-16 14:15:51.48145+00	462	1051
382	7982fd7d-23a2-419b-b2c5-3937ca6419f6	2021-12-16 14:22:17.624247+00	462	1133
383	1fce25d0-3e7e-4ea7-8767-c8c9ad5437f0	2021-12-16 14:22:34.299939+00	462	1400
384	176465ae-7e4e-40d6-bc9f-e65124e7318f	2021-12-16 14:26:59.743664+00	462	482
385	a0b85e00-18c9-4ea4-861f-242d474d222e	2021-12-16 14:30:39.277427+00	465	720
386	0cfaab9b-6ede-44a2-9349-4ef6c3913b6e	2021-12-16 14:36:14.61828+00	462	1237
387	260b85fc-495c-4dea-b646-0e4ba6971f4b	2021-12-16 14:38:59.905455+00	462	799
388	081f7a8d-8cde-4fab-913f-4b1e319029e7	2021-12-16 14:46:20.013593+00	466	720
389	2e5b6366-1e75-4a16-9e2c-5e188ef68447	2021-12-16 14:49:12.425465+00	462	570
390	4d509330-5e0e-469d-a8e9-698b6dd7a5d6	2021-12-16 14:51:09.938118+00	467	720
391	779a91d5-ae22-4675-919e-98c307e7ebe6	2021-12-16 14:52:44.308125+00	470	799
392	5121eb86-5f17-49ff-8c7f-371950dacf93	2021-12-16 14:53:11.406007+00	462	1233
393	4660c34c-2a58-4c4c-955e-d19fc5a387fd	2021-12-16 14:53:43.731805+00	462	1233
394	579e959f-d8f9-4bc9-b8ba-2ccdeb6161e7	2021-12-16 14:56:26.405166+00	462	742
396	89920735-ba2f-44ab-89a3-6fbe6fddde31	2021-12-16 14:59:15.968574+00	462	1248
398	4c653d00-207d-40e0-9312-1992a3d9f2dd	2021-12-16 15:04:48.845091+00	462	1397
399	2423918f-7021-40d2-b790-9f4684bfd103	2021-12-16 15:07:25.740156+00	462	824
400	8f552b15-a62c-4826-8a35-be16156e34d5	2021-12-16 15:14:27.12695+00	462	1022
401	6cf4d61d-d93c-48c9-a48e-aa610aeb6a1d	2021-12-16 15:19:23.203498+00	462	1399
402	e75c0538-9837-4f84-9a73-6c52c0c3a437	2021-12-16 15:21:34.422176+00	462	1352
404	6cf735da-f45e-40be-9e39-e3a397411d54	2021-12-16 15:24:49.579569+00	462	934
405	1b2d2e93-7580-462c-88a5-1c01c17b6d89	2021-12-16 15:25:56.284486+00	462	715
406	27ae5367-dc57-434b-b3c7-76f1f73b3948	2021-12-16 15:29:39.830984+00	462	579
408	395505d6-1507-4a86-9812-4c45cc429aaf	2021-12-16 15:31:37.244391+00	462	842
409	1fc561ba-6535-4df2-8d28-974b6026a17c	2021-12-16 15:31:58.508789+00	462	1344
410	d31df148-bca8-43a1-a585-9c7dbb180c0c	2021-12-16 15:32:46.472297+00	468	720
411	86fd55a8-07ec-4f26-a411-c2d2207ee8cc	2021-12-16 15:33:56.141528+00	462	386
412	f2bd12f0-227b-45f9-8868-d8619bfdffb4	2021-12-16 15:38:39.816458+00	469	720
413	02b30e01-60a6-411b-ac09-77979baba6fc	2021-12-16 15:39:38.638753+00	462	672
414	7732b692-1694-4033-89dd-798565471569	2021-12-16 15:48:36.898614+00	462	1385
415	4046606f-9244-44f8-b0e4-08e9419a13a3	2021-12-16 15:49:57.503171+00	462	1397
416	7709a360-52a0-45fd-ba4e-836ba6aaeb91	2021-12-16 15:50:17.112042+00	462	691
417	36010305-cbec-46bd-8c3e-753e47bcd300	2021-12-16 15:52:45.715427+00	105	324
418	7084ce21-8af9-400f-bd40-6c73540e196a	2021-12-16 15:53:08.997553+00	462	745
419	dd41c6e3-88a6-4b7b-91e9-19539a363465	2021-12-16 15:53:37.34427+00	462	1385
421	67cf1258-e4dd-4439-88bc-40faadba96a2	2021-12-16 15:55:32.413505+00	462	853
423	ef6363e6-ae9d-459b-81d7-ba4f30a61cbe	2021-12-16 16:01:17.960602+00	462	437
424	332d11c8-ee1e-4ff9-8b3d-9c76a495db10	2021-12-16 16:01:44.742052+00	462	963
425	1fd95566-1e48-41c9-abbb-0f70571870a4	2021-12-16 16:01:50.119772+00	462	228
426	3d181ad6-683b-42d3-8270-c84d7ed46897	2021-12-16 16:03:36.295719+00	462	131
427	4b1bed57-1c1c-46f9-a9e5-a0b46c8f6f5a	2021-12-16 16:05:23.390778+00	462	366
428	7925177e-00db-4843-96c0-1570cdac7dc4	2021-12-16 16:07:05.526162+00	462	857
429	27018d39-5eeb-412d-87c9-bc3b0324e369	2021-12-16 16:08:10.736694+00	462	1229
431	486ba065-5d9b-4b33-b6ab-4b8b990023a2	2021-12-16 16:08:30.853122+00	462	256
432	0259a6c3-1750-4c32-9941-9d87170baf12	2021-12-16 16:08:40.950229+00	462	839
433	262a16df-3183-48f5-8509-5d188c8aad39	2021-12-16 16:10:29.42475+00	462	277
435	4b751a11-fa6b-4460-b872-1c354ccc344c	2021-12-16 16:13:11.60323+00	462	1416
436	131db4fe-3bc5-4e66-8050-e63e212cba62	2021-12-16 16:16:38.625177+00	462	825
437	9b2ad1cc-c652-44cd-a0bb-3e46757e0414	2021-12-16 16:20:24.571537+00	462	899
438	62936b46-8bd4-496b-860a-4ce011fcbdc4	2021-12-16 16:23:51.047673+00	462	1354
439	58624aa3-34fe-405b-85a3-73e55226a800	2021-12-16 16:24:21.151095+00	462	243
440	07ecafcb-b7ff-4d7e-91a9-43f1da80c8ab	2021-12-16 16:27:58.450909+00	462	1226
441	ae6bd8f1-b953-4492-8cd5-1accfe23a62f	2021-12-16 16:29:38.748992+00	462	448
442	af45fd1f-fd35-46fc-a9e0-a9ace8c487ac	2021-12-16 16:32:22.588018+00	462	1185
443	26317fbc-b66b-4de0-89f9-e28cd9d06eec	2021-12-16 16:35:54.526246+00	105	212
444	9be790dd-a5ec-4a32-bfc1-23a00f02412e	2021-12-16 16:36:18.19005+00	462	294
445	f97ad9a5-b5eb-4491-af7a-b75bd854889c	2021-12-16 16:36:35.436341+00	462	1025
446	7619bc79-50c0-499b-9e54-c11d0a8cb440	2021-12-16 16:36:45.581131+00	462	1025
447	cefcd06e-1ac5-4cde-82ed-97380d57e45d	2021-12-16 16:39:35.543387+00	462	294
449	31e6a2c3-94e5-4152-a7bf-2453adafdac2	2021-12-16 16:41:12.747686+00	462	1300
450	65e7a18c-2a2d-436e-a7cb-fd3165eef3b6	2021-12-16 16:41:15.925221+00	462	1186
451	be3e5f98-1755-492f-bde7-87deb523f02e	2021-12-16 16:41:42.087365+00	462	1300
454	35cdf40b-6542-46d4-8dc1-22b66b9d6c13	2021-12-16 16:43:09.530335+00	462	1300
455	b41d9337-f369-4aaf-991c-6a7fa6fa385b	2021-12-16 16:43:35.110498+00	462	934
456	2d20d276-5415-4f51-8214-0dd55f0f57c7	2021-12-16 16:44:44.862566+00	462	1371
457	10125cfe-9bbe-4c09-893b-ef92302392a1	2021-12-16 16:45:08.742649+00	462	934
458	6bae45fc-0e64-48bf-a76a-3d98bcdfb4ab	2021-12-16 16:45:35.554742+00	462	1371
459	075c8eb3-6149-4d49-aea6-153f76e8219c	2021-12-16 16:46:00.536715+00	462	1371
460	1ba2a7f3-6554-4109-b1e0-2714aa02a912	2021-12-16 16:46:40.415944+00	462	522
461	7c84581d-8702-4bb5-baa5-7a59a1f847a2	2021-12-16 16:47:42.667971+00	462	1034
462	abacfa0f-47a0-4e6f-91db-b3573d64893a	2021-12-16 16:48:09.006122+00	462	1034
463	ce44aa38-0ea8-4ca4-82e7-bb438b203e9e	2021-12-16 16:51:09.11922+00	462	1402
464	8256d717-fc8f-4415-aa49-8e5b6c172d9d	2021-12-16 16:53:18.183317+00	462	1385
465	adf5ce25-d7f8-41af-84ef-da2a10851c2d	2021-12-16 16:53:28.37295+00	462	1385
466	b122ed70-84ca-432e-a6e9-43a4bfba9c53	2021-12-16 16:54:12.786557+00	462	242
467	9349f2c1-6c2c-49ef-be39-57607a9e0a79	2021-12-16 16:54:20.739578+00	462	1385
468	4a473c72-cf60-4e4c-a9a0-04393fb0daee	2021-12-16 16:55:12.072801+00	462	242
469	bedd5731-0adf-4eb2-84b8-25fb6b51bcd6	2021-12-16 16:55:12.834106+00	462	1385
470	9404c50e-9d88-4b8a-9439-95347a562196	2021-12-16 16:55:44.204743+00	462	242
471	955deb30-f0b8-4976-8cf1-fa3ee75affe1	2021-12-16 17:01:01.31085+00	462	934
472	e0a4ed3a-aa74-4919-b129-40e929cf4169	2021-12-16 17:01:31.019824+00	462	242
473	7c9ed0d6-c7d8-4601-88fa-906aeeb330be	2021-12-16 17:01:31.916495+00	462	1336
474	21ec6889-ec3e-47fd-840b-f782b594ffea	2021-12-16 17:01:31.994412+00	462	242
475	466a584e-3d35-4dd4-8e40-003a7507453f	2021-12-16 17:02:41.192806+00	462	1336
476	2c08c2a6-2120-442a-8010-909158404375	2021-12-16 17:04:24.11943+00	462	1336
477	a6ac7171-3e11-4a9d-acd0-78b4b2203667	2021-12-16 17:05:33.105538+00	462	285
478	8026ddc2-33fd-424a-b442-a71c95cd29be	2021-12-16 17:09:20.318575+00	462	285
479	64a81ccd-bcd0-4982-bf56-0f8db71fe51d	2021-12-16 17:09:30.943362+00	462	1233
480	1920a024-6dff-4bad-92d6-1f0b4b1513aa	2021-12-16 17:09:51.840131+00	462	1233
481	c1e38ad7-34f5-4e26-be6b-72ee10314e04	2021-12-16 17:11:57.585039+00	462	219
482	92671935-cfd1-4c6c-94ed-07111d172caf	2021-12-16 17:12:15.234377+00	462	294
483	8d8cd158-79d6-428a-ba09-1736b2c853b8	2021-12-16 17:15:36.248996+00	462	196
484	7392289f-fc68-457f-9c50-f1faf3f11de8	2021-12-16 17:15:44.605488+00	462	196
485	2e66040f-3f37-4bf3-92ad-ff0da574a35c	2021-12-16 17:16:08.251682+00	462	1006
486	f2eb115e-6e09-46f0-86c1-1300e4d8601d	2021-12-16 17:17:13.14433+00	462	437
487	ce6a93bc-a992-497b-9026-e1157bf7a3f4	2021-12-16 17:20:11.825994+00	462	423
488	57a66b62-603e-42e6-bfef-fb7d0e368038	2021-12-16 17:21:38.360157+00	462	1061
489	987e8d83-1ed0-4dda-83fa-5b6cb55073d2	2021-12-16 17:22:26.300236+00	462	1068
490	012b9c70-5663-43c4-8801-1d6e3089544c	2021-12-16 17:23:28.59317+00	462	1116
491	b5118720-2baa-48b6-a30e-cd07cac447a9	2021-12-16 17:24:26.40033+00	462	1426
493	f2ee88a3-db42-4b8e-92b2-eb9d5ad01f48	2021-12-16 17:27:47.580001+00	462	671
494	d4e5fc20-c924-4bc0-8c29-5f271be01820	2021-12-16 17:28:46.905826+00	462	242
495	8434acb6-fd17-4c89-b4d1-006cc0d78c0b	2021-12-16 17:30:42.887205+00	462	1013
497	0bba30e4-231c-4559-b292-96c5218bbf9b	2021-12-16 17:32:17.60006+00	462	1007
498	64559781-65e6-446d-b2c7-ac45fc8d944d	2021-12-16 17:33:36.811808+00	462	1425
499	bcf54aaf-e650-4d0e-bcde-34278b15237a	2021-12-16 17:34:03.757205+00	462	720
500	052fd455-bd5f-4223-b951-0967c98af1d2	2021-12-16 17:37:53.884952+00	462	1013
501	b05a7044-1d0e-49d9-bbb7-83b7284bc652	2021-12-16 17:38:45.299182+00	462	496
502	8c55313e-0374-4425-9da3-85e678933383	2021-12-16 17:40:17.419641+00	462	250
503	d0777f4f-d695-4ecf-a790-31dbbca80d4d	2021-12-16 17:42:07.887512+00	105	1399
504	6f9624d1-328e-4257-ac39-0ad00adc956a	2021-12-16 17:46:30.110332+00	462	969
505	3f00760e-a49a-4662-ac45-baec741cb13a	2021-12-16 17:47:01.562634+00	462	624
506	4b26c25c-f1ca-41d2-913e-6a2004767f1e	2021-12-16 17:53:41.998904+00	463	375
507	03f9b925-6ab5-4750-a068-de64cee879c0	2021-12-16 17:54:38.846521+00	462	1013
509	c528f5b6-2371-4247-99da-3420ea017665	2021-12-16 17:54:43.991829+00	462	299
511	eeaeffd8-f3ef-4c3f-a3c2-a819eb105718	2021-12-16 17:56:51.716631+00	462	1389
512	cf415b8f-3b1c-4ade-ac4a-4d66341f5b20	2021-12-16 17:56:58.641085+00	462	1409
513	be6c1ed0-256b-4072-820e-8bf0299c9f3e	2021-12-16 17:57:02.814706+00	464	726
514	eab3cad2-3be0-4669-8fe5-7700df98e69e	2021-12-16 18:01:11.295715+00	462	1417
515	726b37bc-79e5-4bcb-8641-86f0c7e402b7	2021-12-16 18:07:53.447738+00	462	1400
516	396bdb15-a03b-41db-850d-bab60d83ce14	2021-12-16 18:08:22.558876+00	462	1365
517	f8b50319-0325-46b1-8d14-e4b2dac78775	2021-12-16 18:09:32.285439+00	462	1247
518	b0473710-e3b2-43d9-a242-b3127494a1c7	2021-12-16 18:10:42.946501+00	462	956
519	2c449b23-1b77-4f67-9505-ee79dd51aef3	2021-12-16 18:12:56.59603+00	464	847
520	1ec1033b-1c07-4fb0-86e8-265c6c82dbde	2021-12-16 18:13:40.406433+00	462	461
521	32be60a6-187e-4da9-8bc5-36bb7627b12f	2021-12-16 18:13:43.866421+00	462	1405
522	a832e95d-babd-4486-8003-e4641f702493	2021-12-16 18:15:49.023186+00	462	1296
523	bbdbdf95-1ac8-4100-b9af-13b8c8684ca0	2021-12-16 18:17:48.334693+00	520	375
524	02c948e3-8b2f-4bbb-adaa-681a65c79f52	2021-12-16 18:17:52.833439+00	462	1135
525	7597f172-35c4-4a99-bd33-6d77fad6dc82	2021-12-16 18:18:52.541019+00	462	681
526	e2026bc3-5c0f-4b50-a59e-079fae27fdc8	2021-12-16 18:21:59.939258+00	462	1233
527	74f81747-197d-4ee1-a843-ca28d668a3b0	2021-12-16 18:22:07.596737+00	465	847
528	8ca5c6e6-6bf7-41e7-b4fb-f9d51c100015	2021-12-16 18:24:08.233949+00	462	1429
529	2a135631-b817-460c-bf0e-498b3c76a4b5	2021-12-16 18:24:08.361546+00	462	142
530	795267fe-80a6-4d8b-97e3-e03a92db19e0	2021-12-16 18:25:51.172062+00	462	1406
531	9f2718cd-cfe7-416d-b69d-a6eacbddcf80	2021-12-16 18:30:59.831967+00	464	92
532	e5fad56c-f8c0-474b-a26e-07f349b32100	2021-12-16 18:31:24.34883+00	462	1340
533	8ddd8462-be4b-46e0-9d9c-62aa7c039c89	2021-12-16 18:32:29.812525+00	462	907
534	b758e0be-cac0-4043-b35b-9db127f5c8ec	2021-12-16 18:32:55.571855+00	462	841
535	c4684c70-7359-402c-ae42-3e92204f0d9a	2021-12-16 18:37:37.414802+00	462	1117
536	ea777995-d3e2-4e8e-ba38-6f77c3aeda57	2021-12-16 18:38:25.51847+00	462	462
537	8a0ecbc2-36f0-4bfe-889d-06b55d0ad234	2021-12-16 18:38:44.241476+00	462	1078
538	c91e8589-274a-4eb9-bc8f-3efec5f235e9	2021-12-16 18:39:45.739781+00	329	375
539	fdff347e-aff9-4091-98e2-b0a435854344	2021-12-16 18:40:09.593696+00	462	840
540	2141313b-cf14-49b3-8405-893a6e5fa6cd	2021-12-16 18:41:10.001809+00	331	375
541	790bc3bf-7c2e-4b9c-bf72-990751193bb2	2021-12-16 18:41:52.189808+00	462	1307
542	c3605648-c162-456f-b024-75965b5d2ea6	2021-12-16 18:44:15.710731+00	462	1365
543	64f6717b-7d37-498c-89a6-35d29feb725d	2021-12-16 18:44:46.112754+00	462	1428
544	d74bbf42-24a8-43da-908d-24e0714f4114	2021-12-16 18:45:03.915175+00	462	1373
546	835d560b-3dac-43cd-a34d-44152bb344d5	2021-12-16 18:53:06.887725+00	462	1430
547	acc318f9-18c8-4478-9cb0-00a78beee3ef	2021-12-16 18:53:14.926366+00	462	84
548	bbb06679-5528-4d7a-8928-b7418f9d7260	2021-12-16 18:53:30.078867+00	464	375
549	4465ceb0-b587-4336-a963-9bd727f3f69e	2021-12-16 18:54:51.824996+00	462	1333
550	26f86428-2d5a-4fe4-97b8-add3de11c467	2021-12-16 18:55:37.220622+00	462	84
551	986de6ba-ac55-4d30-a2dc-f3df8f24930c	2021-12-16 18:57:31.169136+00	465	375
552	7d247e57-4016-419b-8362-3ff0d61f3ecb	2021-12-16 18:59:28.300398+00	466	375
553	df8246f1-2a19-4dbf-91b9-c72f36c4bea1	2021-12-16 19:00:03.289785+00	467	375
555	5d7cc4cb-418f-41ec-b508-208045560217	2021-12-16 19:01:46.03475+00	462	1074
556	59f532e5-cc37-48f3-9f16-aa94e2d6be39	2021-12-16 19:02:30.246079+00	462	516
557	393504d8-87c9-4e40-84eb-3fdc46cd3b4b	2021-12-16 19:02:31.878234+00	468	375
558	9eed23c3-9adb-491d-89a9-ec6e4b5bc675	2021-12-16 19:04:55.252528+00	469	375
559	f0850d44-4359-4d75-bc57-3ef8a13cab47	2021-12-16 19:05:26.763917+00	463	747
560	2a44ee5a-4aee-4fb0-b245-32a44305e705	2021-12-16 19:05:54.743766+00	463	747
561	679df1a1-67d5-4a99-bb9b-d038290fdde8	2021-12-16 19:06:01.28293+00	470	375
562	8b3be56e-0816-432b-a8b2-dcd8ce7c35a7	2021-12-16 19:06:18.594168+00	462	524
563	0ce24277-ac69-4e21-81f1-856eb092c718	2021-12-16 19:06:21.040543+00	471	375
564	67d72874-274d-4af2-ab85-e0a8e0e187cf	2021-12-16 19:07:00.602112+00	462	210
565	e9994f18-7cd6-4b7d-aa73-22ceeca27471	2021-12-16 19:09:15.850378+00	462	266
566	27c1d3d2-a5d2-46b1-95b0-c3ec741ac2be	2021-12-16 19:11:01.058496+00	462	1176
567	9e2c4066-3f26-49ef-954c-1e40379b46df	2021-12-16 19:14:10.37443+00	105	437
568	4bb73c04-2692-4c35-bb51-4294bc18d5a5	2021-12-16 19:19:26.30255+00	462	275
569	ba13d846-c7b8-4e5b-9469-388683629cb2	2021-12-16 19:20:32.839988+00	462	1408
570	7fd6709f-b827-4c46-8142-5e5ce0ba1664	2021-12-16 19:20:46.35588+00	329	747
571	6ceb5a10-9faa-4918-9e44-dbee3e74d04d	2021-12-16 19:26:41.776794+00	462	906
572	5fa08188-9785-4a95-85c4-286a7a3027e2	2021-12-16 19:28:25.052902+00	462	1418
573	e1f0cc4d-7563-408b-82e6-3a544b762467	2021-12-16 19:30:42.203669+00	105	437
574	439d47ef-1ffb-44cc-972e-c4d443fc2531	2021-12-16 19:31:28.700596+00	462	695
575	ca87f1bb-0814-4403-8bda-016e9783a7c4	2021-12-16 19:34:05.608948+00	462	1253
576	67cc9478-702e-4191-9170-166291fe41d2	2021-12-16 19:34:54.10936+00	462	246
577	7f550d7d-a252-42a9-a096-0b63a74ea6ca	2021-12-16 19:35:32.413556+00	464	85
578	49909040-b866-4739-acda-b95644bfa1e8	2021-12-16 19:35:42.589685+00	465	85
579	208d7037-2306-4623-94b7-4eeefc31bffe	2021-12-16 19:35:51.76313+00	466	85
580	e9168954-86f2-4b2b-b09b-07aef7809e0a	2021-12-16 19:35:57.443101+00	467	85
581	6fb9c223-e882-4853-a77f-a5f7985413d5	2021-12-16 19:37:11.151521+00	467	85
582	da794637-64b9-45c3-91a6-90a66037c3a1	2021-12-16 19:37:13.39595+00	468	85
584	d7d2df7b-8d96-4ee9-b836-67445bba2927	2021-12-16 19:42:19.511825+00	466	85
585	47c386b7-ec7a-482f-9748-d23fb0392bc1	2021-12-16 19:42:29.525979+00	467	85
587	5b83b8b0-4b53-442a-9381-a0331cb8c1bb	2021-12-16 19:48:02.107725+00	520	435
588	94374b05-74c5-4e11-93d2-a1071fa7fca4	2021-12-16 19:48:18.957701+00	464	133
589	003b8302-d656-4ecb-b869-1203d57b9501	2021-12-16 19:51:21.387014+00	462	827
590	04d37fa7-d2ff-44f0-ac2c-33d8d9aac535	2021-12-16 19:51:30.174338+00	462	827
591	820ded25-03a4-457a-b646-0e5748355f0f	2021-12-16 19:57:09.418008+00	462	494
592	625b5b7d-7b0a-4e78-9658-b10cf7e689d1	2021-12-16 19:57:23.540625+00	462	494
593	d56dc7b2-ab15-4f46-a39b-c43a07219971	2021-12-16 19:58:38.795471+00	462	1176
594	ecdc8c9b-c8c2-4a8c-9130-8b3f123ef0df	2021-12-16 19:59:50.738867+00	470	798
596	c5ba4d24-4ee1-4531-bd6f-8a13d28d8f8e	2021-12-16 20:02:10.339315+00	462	198
597	7d298c50-bda1-4747-b638-abcc299d119a	2021-12-16 20:02:12.884153+00	462	660
598	797ff752-70e1-47b7-a85a-7fa6d80b8f1f	2021-12-16 20:02:29.793886+00	464	133
599	fd2a3c1b-0970-4bef-93da-d26ae5f325c7	2021-12-16 20:08:55.333817+00	462	1026
600	2be95024-94bf-4de8-8974-b80261dbfd93	2021-12-16 20:10:23.482561+00	462	100
601	02f79536-518e-44f7-950e-00d6419bfa66	2021-12-16 20:10:54.577455+00	462	1097
602	0df8c4bf-1b23-4c46-a949-20954048f311	2021-12-16 20:11:44.118581+00	462	1027
603	74672025-f4ec-400f-bb16-56a87666333b	2021-12-16 20:13:57.150171+00	464	371
604	c6394175-067c-44e6-8350-98b13c3ea72d	2021-12-16 20:14:40.336161+00	464	534
605	5f1512ad-d011-416c-88ba-63c35e476e37	2021-12-16 20:14:55.801672+00	465	534
606	3fae991e-7691-4da4-a1fe-0829aa0e3697	2021-12-16 20:15:07.963858+00	466	534
607	3402b8ac-38cb-4768-8d3b-6529962a5f58	2021-12-16 20:15:11.098947+00	462	1377
608	248f31c1-f19a-456d-a8c6-461b5e317856	2021-12-16 20:15:11.77984+00	467	534
609	5ecb20bd-e2ad-40ae-aab6-b706b66e016b	2021-12-16 20:15:20.189767+00	468	534
610	a532386a-6452-4d32-a766-6f32b1ab3c44	2021-12-16 20:15:30.540732+00	469	534
611	cf424ae7-c8db-496d-8d98-98ccbfafe6b9	2021-12-16 20:19:04.568648+00	160	521
612	aa58b224-b5b4-42f3-8bfc-1739a8025b38	2021-12-16 20:20:07.683819+00	520	934
613	497ff197-7c87-47e5-990d-a3d0e45ab568	2021-12-16 20:21:42.164798+00	105	821
615	a8596455-549c-4b2c-b85e-2d2a3a239432	2021-12-16 20:39:54.786934+00	462	1019
616	4f3c86e3-2e22-4cfc-9516-7359ec61b45a	2021-12-16 20:41:39.942637+00	119	1073
617	195c8ac3-8079-448d-8208-27859d9e9e36	2021-12-16 20:43:19.639438+00	462	840
618	179a3261-8af8-437d-867c-8e7d211ddcb7	2021-12-16 20:44:15.411332+00	463	371
621	3def367f-1844-4d58-9a80-43c8707079f1	2021-12-16 20:52:36.250577+00	462	1212
622	4407e2d8-604d-48c6-bef2-a39b62c424a0	2021-12-16 20:57:40.746575+00	462	1178
623	2f5c82da-d8d1-4f94-8ca2-746b5e614bda	2021-12-16 21:04:25.422345+00	105	1234
624	fbb70c49-c1a8-42db-954f-a6b4443e9bcb	2021-12-16 21:05:55.942937+00	462	1418
625	7ed9e241-4d44-4d80-a137-2b5d9f617f96	2021-12-16 21:06:14.239764+00	462	1069
626	23825ff3-0a97-45cc-b4b3-3a4b2d5a6cfe	2021-12-16 21:07:24.285104+00	462	246
627	37a0b47d-ff88-4fc6-9eed-b8f9e9e283b4	2021-12-16 21:16:17.03984+00	137	1234
628	7f3ba999-9102-4019-884c-1fc57263d03e	2021-12-16 21:26:33.995378+00	462	895
629	6815055e-f95c-48fd-8fc8-88e96dff7a8c	2021-12-16 21:30:49.049671+00	462	973
630	d6ca2b11-9375-4db0-8255-af6e261ee0b0	2021-12-16 21:41:47.623327+00	462	1082
631	586ee540-b2ee-4e86-a1df-b7e5635f02bd	2021-12-16 21:43:18.258842+00	462	767
632	133eef3c-55e3-4f14-b75b-cdf114ffe739	2021-12-16 21:46:00.206002+00	462	794
633	1b03cf51-1532-4433-be7d-460f32934055	2021-12-16 21:48:04.743456+00	119	1234
634	7fa0b974-2734-47a7-a0e9-342f85dbb26a	2021-12-16 21:58:50.044548+00	127	1234
635	96ebb58c-bee0-4c90-b2e0-2a22e9e37ef0	2021-12-16 22:02:52.326705+00	462	1231
636	0efc629b-cd31-45cb-ad21-c59ea3ad1141	2021-12-16 22:08:30.124018+00	135	1234
637	d1e7b929-8492-401f-9f5d-fe6b2f885232	2021-12-16 22:14:09.28084+00	138	1234
638	922040bf-b0e0-4d7f-99a8-6f274281da74	2021-12-16 22:19:00.843586+00	465	133
640	d6c7e281-5189-4efd-a776-dd5f406789c4	2021-12-16 22:53:45.849768+00	464	1206
642	b32805b1-d007-48d4-805c-cc3e7ccd479a	2021-12-16 23:00:43.457946+00	466	133
643	67eeb411-8bad-4f9c-af4a-5e6aaee18d44	2021-12-16 23:10:55.81634+00	467	133
644	fecd7758-71a3-4df8-b775-95341743b702	2021-12-16 23:15:15.465085+00	468	133
645	4d266729-9e77-492c-b91b-7b791b64b6ef	2021-12-16 23:22:40.221375+00	462	917
646	46c6217e-b33a-4231-891a-db9f87513b69	2021-12-16 23:27:20.916491+00	467	133
647	21c59dae-2bc6-4a12-b2de-33e2191e8db6	2021-12-16 23:27:34.170387+00	468	133
648	44729380-0b7d-4d34-b57e-e0cae8d43684	2021-12-16 23:27:59.280918+00	469	133
649	166d5f86-4a48-4009-85dd-ccadb22200bd	2021-12-16 23:28:16.68879+00	469	133
651	f2fd2c8e-3b6a-4ff6-ae44-ea12967a9aa0	2021-12-17 00:44:33.23737+00	462	1246
652	953dcdee-82a8-419e-a543-8e831bfaf5d7	2021-12-17 01:52:18.890189+00	464	777
653	ddd0531b-9638-48ad-91d0-0a4b52db66b1	2021-12-17 02:24:38.152809+00	462	430
654	f0e12ae6-45be-4907-a13a-da6b397a3a45	2021-12-17 03:07:29.202028+00	462	1232
655	23983972-c862-44ba-9956-6f9a961ac85c	2021-12-17 03:41:54.975464+00	462	769
656	a9d2650f-c7a2-41bc-bb4d-fca2a9406855	2021-12-17 04:09:02.77897+00	462	1250
657	b38f9eb4-e860-4efe-bda8-0a1af18073ae	2021-12-17 04:10:08.792644+00	462	1441
658	f198a4b0-b0d4-4619-ad20-10f4a83b5a0b	2021-12-17 04:13:04.610019+00	462	661
659	3b682c0a-d3c4-44f1-8982-50cc151db2fc	2021-12-17 04:14:56.271508+00	105	437
660	9ea47ebf-914e-4034-962a-c30159d1ae93	2021-12-17 04:15:04.254834+00	137	437
663	e4be9828-d511-40a3-89c1-9c1846b65838	2021-12-17 04:40:40.888069+00	465	777
664	64b4ba3a-d6d4-4fbd-aaca-f1973e895a06	2021-12-17 04:43:19.918744+00	466	777
665	49624d26-6e44-451e-b1f4-95e168cc967a	2021-12-17 04:46:04.427728+00	462	1296
666	66fe6852-19eb-444d-a408-c0bbf36a12f6	2021-12-17 04:46:18.325876+00	462	1296
667	6e559fcb-c274-4c58-9361-e189627f7db5	2021-12-17 04:46:47.178897+00	462	1001
668	bbc8c0a9-96e1-4f1e-8736-132ab5380ec3	2021-12-17 04:48:57.280171+00	467	777
669	4710ea4c-ed01-4380-821e-e3e2b2a2c894	2021-12-17 04:49:50.630369+00	462	131
670	bc6c3440-6aa9-419e-9fe5-7ef9f9961bab	2021-12-17 04:50:56.643971+00	462	624
671	d1b5e873-c9de-4edb-bd24-cbc3a0a8109f	2021-12-17 04:51:35.041769+00	468	777
672	b25c8e7f-b67d-4a9e-9df6-c4b8d14d4089	2021-12-17 04:56:21.400441+00	462	131
673	55576a11-2a55-403e-8f6a-0d0ad86bb4e3	2021-12-17 05:03:14.510667+00	469	777
674	9554f614-7909-40c9-a1f7-babffb14acfe	2021-12-17 05:10:21.78633+00	462	203
675	c3112df5-5c42-41e5-8845-8ea0383274b8	2021-12-17 05:44:41.368992+00	462	219
677	063c0756-de76-47c4-a45b-a66864635648	2021-12-17 05:52:00.172149+00	462	740
678	1ae48c2f-e453-4791-b663-3f10c465f375	2021-12-17 05:53:38.580542+00	462	996
679	4ca201e0-3da0-4f8b-bac2-0925b08e1ffb	2021-12-17 05:58:04.807751+00	462	632
680	e77dd41b-9861-4dd9-8f86-756b50668716	2021-12-17 05:58:11.140633+00	462	345
681	c1b7fcbb-a67e-484b-9616-e1d3c883c3a0	2021-12-17 06:01:42.430896+00	462	1325
682	7d4d2a07-41fa-4552-8b82-827810a52529	2021-12-17 06:10:11.227137+00	462	1384
683	d065d28f-fce7-4ace-a2e4-9799a9866e10	2021-12-17 06:18:54.133789+00	329	448
684	b054edfe-832b-4539-ab41-c5b4fec3d2ee	2021-12-17 06:32:03.265813+00	464	527
685	3dccbd1a-bf77-4bb1-81ca-301a166a13e9	2021-12-17 06:32:57.974686+00	462	197
686	33564654-0001-425d-9d43-114cda14cf65	2021-12-17 06:39:17.964654+00	462	265
687	b7b6ce36-74b0-4f1f-997d-02bd141d6319	2021-12-17 06:40:25.724301+00	105	196
688	cb160284-e239-4b52-8005-6b5b47dff23e	2021-12-17 06:42:18.313074+00	137	196
689	8e293872-8fa2-465f-82a9-d676c47e52b1	2021-12-17 06:46:59.826967+00	462	1160
690	97e68217-e1c1-45f4-b47a-5af07544bd35	2021-12-17 06:49:20.937508+00	137	674
691	6b3b1c39-a00a-4158-8b5c-cbccb9f7ec76	2021-12-17 06:49:25.07084+00	462	897
693	ba2fc3e0-1c20-43a6-8bf0-851850a4beab	2021-12-17 06:58:39.587131+00	465	527
694	66bd3c99-6cf8-4a3a-8128-28c71d9cd7cf	2021-12-17 07:01:42.665033+00	119	674
695	37c3d73c-ec79-4f8a-8928-1d8a886652a1	2021-12-17 07:12:59.899919+00	466	527
696	b7dce358-37a4-45e6-a414-11f2e1a03353	2021-12-17 07:13:33.342832+00	467	527
697	7d4e16f7-f048-45fe-8c1b-2b456c146fdc	2021-12-17 07:14:45.282957+00	468	527
698	dfdd57c0-b424-40c4-bf5d-180c477dc292	2021-12-17 07:15:02.229512+00	469	527
699	30e0f4ff-e9ab-417a-8dfe-bb3016942248	2021-12-17 07:19:12.963751+00	462	1445
702	7bf949b4-ef0e-4e16-a674-bd27451c486b	2021-12-17 07:40:55.709247+00	462	1098
703	21bafc5c-052f-4408-a220-66db2d9b6114	2021-12-17 07:42:12.040939+00	105	1302
704	a765af1b-2df4-4e4b-8eeb-d2215fca0ef6	2021-12-17 07:45:30.97713+00	137	1302
705	1e2ac206-117b-4969-87ce-71162e0614e7	2021-12-17 07:45:31.909449+00	462	1114
706	9fc669e0-eff0-4898-8731-66644a62a8aa	2021-12-17 07:54:26.173457+00	462	681
707	2c3671df-3ed6-4f44-a5df-acb166fd36a7	2021-12-17 07:54:40.910427+00	462	681
710	ed99a70b-aefa-4e14-b995-979a34224962	2021-12-17 08:08:49.763693+00	127	674
712	5a59d4ae-c74a-43d4-bd0a-d9da85d99ca1	2021-12-17 08:10:53.031+00	462	1342
713	801b0910-dc2b-4f2b-b241-97e82745ddef	2021-12-17 08:11:05.208807+00	462	1342
715	eb27e269-938e-4bb7-a6a8-b03a7e9e1327	2021-12-17 08:15:21.787753+00	135	674
717	92cb81f1-06ad-48ea-a481-7d507658a073	2021-12-17 08:33:50.85843+00	462	1378
720	7d34bb33-4a66-47e8-83ec-8233c7145a02	2021-12-17 08:44:23.489317+00	105	1445
721	ed7b2e1d-410c-49d0-9f54-32ee7a2373dc	2021-12-17 08:48:59.854163+00	137	1445
722	a3d1dddf-8e57-4563-b2fd-30c7abd98f78	2021-12-17 08:52:18.276637+00	138	674
723	818db5b4-3e90-4b4f-95e6-089bd5f5b95c	2021-12-17 08:52:36.000754+00	462	948
724	08f0dd8f-2aee-4682-8c31-9957fd7d76c4	2021-12-17 08:56:30.707885+00	462	1383
725	26bc9d60-ec9f-4726-a232-2a4dcf63da29	2021-12-17 08:59:25.692347+00	119	1445
726	e1413626-d818-48ef-8419-3c627d34ec9f	2021-12-17 09:00:48.16493+00	462	558
727	9abab07a-fe1e-4336-84fa-c07e332548b6	2021-12-17 09:03:08.156534+00	462	1033
728	579863bc-b651-4a56-9e66-fb80a5c3c8d1	2021-12-17 09:06:03.291949+00	470	623
729	8c6dd9ec-3fb2-49c9-9bba-4f86681b5b51	2021-12-17 09:06:47.235285+00	462	1179
731	95e4d867-e396-4d01-84c8-bca68be09084	2021-12-17 09:10:50.127845+00	105	335
732	88b8d043-797d-4374-a520-8d676dd4a6ae	2021-12-17 09:11:35.848553+00	462	980
733	0083ae80-75c8-46c1-9d00-6631e4ef6939	2021-12-17 09:12:36.066162+00	462	274
734	dbc461bb-ceef-454f-9688-c3919779c78f	2021-12-17 09:13:09.289202+00	462	980
735	2e81eee1-ba7d-4042-8d43-7170b140e28d	2021-12-17 09:18:50.462087+00	105	1160
736	408ff5c0-cb7a-484d-bfdc-adcab133ec67	2021-12-17 09:26:31.201938+00	462	1450
737	dc25d74f-5821-4e25-a71b-1a00978c675c	2021-12-17 09:28:02.050914+00	462	451
738	ca04dd9f-cad8-4b7e-9d1b-2929bea7408b	2021-12-17 09:28:19.941794+00	462	705
739	9af960cc-6a2e-47be-af97-e6decca4e6e4	2021-12-17 09:29:40.987577+00	462	980
740	b476c271-0bf5-4604-89db-8b4976e96226	2021-12-17 09:30:58.253337+00	470	684
741	ef58f4d3-e976-4b9a-9273-7e4dddddbc1a	2021-12-17 09:31:23.547031+00	462	116
742	f33f011f-822b-46f9-89a7-3c43f9d8fe49	2021-12-17 09:36:32.210715+00	462	854
743	d298a5e1-bd6f-42f5-81fe-2e55f58380e9	2021-12-17 09:41:38.388616+00	471	684
744	52ebb624-a9e1-47de-ad5b-a3718a6afb71	2021-12-17 09:43:53.998462+00	438	684
745	e9ca4adc-8b64-444e-8a60-dd9db7781b80	2021-12-17 09:48:00.102716+00	462	1017
746	9ef0266e-3479-4c39-aae8-e6d912c78c37	2021-12-17 09:55:16.439544+00	462	621
747	b8963060-bc2e-4e2f-91c4-c404d1aa4e19	2021-12-17 09:55:28.141525+00	462	705
748	0ff0e483-0853-4993-91bb-a11ad69351a8	2021-12-17 10:01:34.244098+00	105	487
750	bd9cc58e-9359-4569-bfc0-d429228b7270	2021-12-17 10:06:16.854297+00	137	487
751	1178f887-c2e6-45bf-b73e-44c16dc11851	2021-12-17 10:06:57.398651+00	462	792
754	be1590f3-c567-4e46-b4e9-0583597a4cf6	2021-12-17 10:22:40.591573+00	462	1072
755	162ee2bf-ea8a-46d4-bfd4-4c17436f1f57	2021-12-17 10:26:54.20314+00	462	1053
756	5799ca6a-133e-4bd9-8f01-deda76a4f3d9	2021-12-17 10:28:36.838002+00	462	839
758	006f35e1-20f4-46e8-aeb2-c43899b871ca	2021-12-17 10:48:24.40457+00	462	287
759	b16992f7-9f8d-43a4-a6bd-125ddb6cd6e7	2021-12-17 10:48:28.877159+00	462	287
760	04c33b47-2026-4cf2-a41e-f3078f3ed8ca	2021-12-17 10:49:18.646549+00	462	396
761	06dc3e1f-1935-4fc7-953b-57c9cae3d975	2021-12-17 10:53:35.687538+00	119	325
762	777250f5-f7ed-487e-9dd3-67d34443d65f	2021-12-17 10:58:58.918301+00	463	1117
763	011aae82-0b69-44ec-b765-b32396b3b92b	2021-12-17 11:13:22.430985+00	462	991
764	c55abb3a-ad7b-440a-a1ca-75bc261e54ed	2021-12-17 11:22:15.859885+00	462	675
765	005ebc4f-9053-4ed2-ae14-6fe42604fd76	2021-12-17 11:23:53.361075+00	462	1460
768	cf772fef-f4e0-4287-a182-e93d0074c672	2021-12-17 11:31:23.462089+00	462	1457
770	42e067ae-b984-4ce9-a478-92a9f7009d26	2021-12-17 11:39:50.534244+00	462	1013
771	0945922c-bb2f-4586-8915-3a2fbc2a4aff	2021-12-17 11:41:46.517616+00	462	743
772	9f8a1e8e-6d60-4a29-b1a8-a76588aab835	2021-12-17 11:50:03.873642+00	462	608
773	0d8d42df-fb18-41ae-9837-7b50e21557b7	2021-12-17 11:51:04.018394+00	462	1489
774	4e507b4f-d43f-458c-a0e4-6a4b19cc44ea	2021-12-17 11:51:07.431472+00	462	1489
775	a5a5ce5c-bb7a-4418-89ad-5bfda5f2aa4a	2021-12-17 12:01:08.457644+00	462	1495
776	e10f947d-0cc8-43b1-ae1a-2d7e4c61921c	2021-12-17 12:02:19.154434+00	462	1489
777	43144a7b-530a-4370-afc7-f55caf53ea26	2021-12-17 12:02:58.769663+00	462	118
778	2bbaa7b6-66de-4fec-970b-be26972c17b1	2021-12-17 12:03:04.436583+00	524	254
779	2298b5ef-22d9-45bb-bb2b-de333590eafa	2021-12-17 12:07:54.752123+00	462	1335
780	248b0c9d-aa81-4ddf-bd71-7e9bcac1f84e	2021-12-17 12:10:15.308653+00	462	969
781	0c7c3b0f-5b18-4943-8ec9-4d5656de04f8	2021-12-17 12:11:01.122643+00	105	254
782	9df270ca-cf10-4b98-9829-3c6e42f82e8e	2021-12-17 12:15:20.063745+00	471	798
783	809f8d1a-e243-45da-a89c-318e3c4627cf	2021-12-17 12:15:30.055208+00	462	1428
784	d6c06941-25dc-487f-b661-f76583687c55	2021-12-17 12:18:39.167172+00	462	865
785	b09b162a-11a7-4056-a7f4-3f0547b370df	2021-12-17 12:52:26.323183+00	462	1501
786	f636572b-e38b-415f-9a96-5ee6d4ea3ce2	2021-12-17 12:52:52.403441+00	462	591
787	d4ddb90f-03a2-4f62-bd61-5abf7bfc04ba	2021-12-17 12:54:37.762859+00	524	1337
788	1ddcf96b-63a5-433f-bc78-139bddd2920d	2021-12-17 12:55:49.470224+00	524	601
789	6f02dec0-4aec-43f1-b4e5-245501751c3f	2021-12-17 12:57:02.757756+00	524	854
790	f48bfe43-0b43-40aa-bc45-4ba04ece086d	2021-12-17 13:03:14.513995+00	462	865
791	c8278306-69df-49da-a86e-84eee004eda7	2021-12-17 13:03:40.587748+00	462	653
792	6eb45dcf-851e-43d8-a062-544ee8e7012f	2021-12-17 13:04:23.222588+00	105	854
793	c059e5e2-684a-4020-87df-323b4833d3e5	2021-12-17 13:04:44.887345+00	462	977
794	661839c7-80cf-4344-9173-265668f5adfa	2021-12-17 13:07:30.095371+00	462	1144
795	be8cab09-e2fc-4c56-827f-568b50d0e86a	2021-12-17 13:07:55.310863+00	137	854
796	bc119e54-c159-4238-a1ca-65c4a31162e4	2021-12-17 13:09:10.057967+00	462	653
797	705824e2-ef5a-47ec-a0cb-407573f5bab8	2021-12-17 13:09:11.672209+00	462	1477
798	d4b0b548-54d3-49b5-ab50-05d12633c642	2021-12-17 13:12:00.419177+00	462	694
799	6b30de40-48c0-4b64-a243-19c3a87b2eb9	2021-12-17 13:12:24.958385+00	464	913
800	7fbb244b-26ad-4996-94b7-42fc361de766	2021-12-17 13:12:37.095126+00	465	913
801	8861312b-cca7-43a1-8dfd-861b5517b221	2021-12-17 13:12:41.393971+00	466	913
802	31426139-cc8e-4c9f-a4cf-32b42c7da747	2021-12-17 13:12:46.069899+00	467	913
803	fcc2b66d-a997-487a-a2d7-abaac59ebec6	2021-12-17 13:12:57.724315+00	468	913
804	3c2fb426-f453-4679-a809-8eeb350fafdf	2021-12-17 13:13:01.947302+00	469	913
805	1394afa7-8123-4458-b3f4-e69fb219b42e	2021-12-17 13:14:27.447772+00	524	1202
806	35d4ddc9-c5f6-4352-97e7-40d41162383e	2021-12-17 13:20:23.227527+00	462	1532
807	76f3c04b-8117-4456-ad10-55f7debea156	2021-12-17 13:21:26.361958+00	462	816
808	8ace5de8-8b2f-4c8c-9057-97e1aaa1e631	2021-12-17 13:21:35.112702+00	462	95
809	15660213-3756-4c1a-ad7c-2de9c7aded6d	2021-12-17 13:24:49.319771+00	462	718
810	dafdd679-ecdb-4635-ba0d-75c997c81c30	2021-12-17 13:28:28.822137+00	462	806
811	a7f67dc8-a152-44f9-8ec4-a63e573f808f	2021-12-17 13:29:10.207803+00	462	1137
812	3fb5cd92-0ce6-4f93-a5b5-2b1e3a1baa28	2021-12-17 13:32:09.160647+00	524	1340
813	12b59b32-15ed-4ac2-a3f6-cd572b469cbb	2021-12-17 13:32:23.557136+00	462	1433
814	cb2b9d41-1952-46a5-9603-ec6383bda678	2021-12-17 13:40:17.715922+00	462	1543
815	05bb4de5-3238-47ae-96bc-2d530af609e1	2021-12-17 13:50:51.502263+00	462	751
816	0d911bda-9d2a-4a88-aaab-622e7b7ab950	2021-12-17 13:52:24.355283+00	462	341
817	c1c195fb-3e8f-4694-b6c6-5ca442bbc503	2021-12-17 13:52:26.529853+00	520	1492
818	08373c4e-189e-43e3-b9cb-cc8d30a3f4b9	2021-12-17 13:53:22.195525+00	524	1307
819	169da35f-479c-4731-af4f-74d493734050	2021-12-17 13:58:39.298129+00	462	1510
820	7a9daaa4-6359-4e4c-bc1c-ed70e85f9fe5	2021-12-17 14:03:44.117089+00	524	816
821	9ce19747-dfa9-46a9-bf35-01507b09eaf7	2021-12-17 14:10:00.386676+00	524	1336
822	34bcaadc-b528-4938-b7cc-5f79be695fe8	2021-12-17 14:12:28.202783+00	524	1333
823	dff0faf4-01b7-43fd-a524-5eab7d1cd65c	2021-12-17 14:14:22.473586+00	526	674
824	a4b7e22b-efc0-4f31-9906-74bb999fc593	2021-12-17 14:14:34.15264+00	462	1390
825	69ded294-c27c-4f16-bee2-e716a83bf1e8	2021-12-17 14:16:32.177573+00	462	504
826	03e477f4-8e2f-4a0f-b68d-c801ffef1549	2021-12-17 14:19:45.441992+00	119	854
827	d5d91839-4004-4f35-a9dd-1924833275d1	2021-12-17 14:22:05.074998+00	462	935
828	d4108885-6e83-48a8-9f52-80889311db80	2021-12-17 14:22:19.026748+00	462	1544
829	ed4d01a6-9185-4662-a05c-57b05620955f	2021-12-17 14:26:08.545378+00	524	1342
830	8530c4c6-2edd-4070-b790-f9693ea56e1e	2021-12-17 14:31:18.423187+00	524	1137
831	1acc6a19-00f4-47cb-8489-134868229ad3	2021-12-17 14:38:36.185464+00	524	1037
832	e81ea316-0af4-47a5-aabe-20f7d851eb7f	2021-12-17 14:40:33.18499+00	524	1179
833	7a2e50c1-b2e4-420f-9bc4-998f2ed4397a	2021-12-17 14:41:54.066042+00	462	185
834	59a980f4-6f80-4f45-81b6-4d04ebfd6e17	2021-12-17 14:47:22.005484+00	462	951
835	624db304-e75f-4027-925e-2a25c9ad2b85	2021-12-17 14:50:00.746889+00	462	1572
836	add678d5-f37e-480f-874b-ee3a35039a39	2021-12-17 14:50:25.071195+00	464	558
837	a0d4dbda-10d9-41e1-ada0-1784fdca5bc1	2021-12-17 14:52:58.689076+00	127	854
838	3066ed08-4241-4153-9b02-b63b23370eb1	2021-12-17 15:01:27.036194+00	462	1523
839	f393a01d-9e97-4fd2-a93d-b14862030f4a	2021-12-17 15:01:35.537787+00	462	1171
840	cf4c5e52-a66f-422b-8333-f625aecbc9c6	2021-12-17 15:02:20.308378+00	464	1537
841	fb213467-8f94-43c6-a088-fba2399938f2	2021-12-17 15:02:21.035818+00	465	558
842	569e72c6-c7c0-4b30-963f-f7b6d14cea29	2021-12-17 15:03:20.80588+00	105	1037
843	50fd9311-a87e-4c36-9292-5aff32599dbd	2021-12-17 15:06:41.50812+00	137	1037
844	0bd23765-a4b0-4b48-97a7-09f42e6f200e	2021-12-17 15:07:27.827064+00	462	1568
845	b14e8892-1694-41ee-bc8e-33374a6d7df4	2021-12-17 15:08:55.588989+00	466	558
846	a399bccf-f097-43ec-8cd2-3f24893198db	2021-12-17 15:12:04.882786+00	524	1186
847	41396d27-66ae-4896-8831-f3570a79cae8	2021-12-17 15:12:41.30056+00	135	854
848	efd63550-4b83-4ace-b92b-195379985d32	2021-12-17 15:16:49.279916+00	524	769
849	248cc007-341c-47e4-8931-193c034ecdd3	2021-12-17 15:16:50.89662+00	462	1282
850	7b3e8881-1229-4331-bd40-68694a648e78	2021-12-17 15:19:29.386439+00	464	247
851	907ec1a7-8628-4cca-bf0e-364cbfc8c9d6	2021-12-17 15:21:30.005027+00	105	1137
852	fd652ba4-a519-4c1f-92f1-77c7badadc55	2021-12-17 15:22:28.514841+00	462	1259
853	c1a0f64f-afe3-4b1b-bf43-1f3c91908a19	2021-12-17 15:23:02.349676+00	465	1537
854	bc5a8881-42fb-484d-b0b3-6e554862d1fd	2021-12-17 15:25:20.61126+00	462	1576
855	0363218d-1b10-4483-ad73-3bfe6248e934	2021-12-17 15:25:39.646067+00	524	1229
856	c55fae02-ee95-4575-8fd3-76bffa46c17a	2021-12-17 15:26:56.361108+00	138	854
857	58282719-840f-4701-9c38-caecba68f094	2021-12-17 15:27:58.36783+00	462	1505
858	a55f3442-16a8-4bb5-8119-a69dd64f4bd8	2021-12-17 15:29:41.670047+00	105	1229
859	9ce5a439-7b88-4496-92dc-0c2a08a1fe00	2021-12-17 15:35:11.349215+00	462	1559
860	5f5af06e-2812-4740-a462-8367cf2c1924	2021-12-17 15:36:14.73841+00	105	769
861	ef7f90e7-9db2-482e-844a-7376a9c6ad9c	2021-12-17 15:37:07.360457+00	137	769
862	e8651e23-d94d-491a-98c2-251e01fc05dc	2021-12-17 15:37:46.600197+00	524	248
863	00c52895-ace8-4e7b-aba6-0503c5236878	2021-12-17 15:39:34.246792+00	462	1306
864	86646206-cd71-46e4-9f56-48ced82d3460	2021-12-17 15:40:36.700595+00	462	1467
865	434ff393-6302-455f-9405-fb859743bba4	2021-12-17 15:41:45.337146+00	462	1310
866	410ba7e0-939f-4e8a-a038-c4e42887731c	2021-12-17 15:42:44.108662+00	524	1392
867	b4abb8db-279f-4d60-a639-347ffd57ec2e	2021-12-17 15:46:02.683847+00	526	854
868	c33c813e-6519-40a2-aee2-85d17a2aea1d	2021-12-17 15:49:23.239282+00	119	769
869	435beb7d-d0cb-407c-a328-332b4bb3121d	2021-12-17 15:55:41.533204+00	462	863
870	abc7c95a-b997-4c89-a7d5-67ce5c25ac93	2021-12-17 15:58:24.946546+00	462	1443
871	a61472a3-6ac8-4a91-a8bd-b5eeb3d355d2	2021-12-17 16:00:51.418798+00	462	1548
872	a64be321-5543-49d8-bede-9c0f72935029	2021-12-17 16:10:33.840134+00	462	1248
873	2d218627-f455-4732-aa41-f23c10807413	2021-12-17 16:13:38.868658+00	524	705
874	b2e954d8-9fa9-443d-803b-67f11076b83d	2021-12-17 16:25:43.77403+00	527	854
875	4f40ba03-e5e3-4360-9869-2abaded9b079	2021-12-17 16:26:34.049044+00	524	694
876	05e23271-8e5e-43dd-9bfa-5edb8229d30a	2021-12-17 16:28:47.745473+00	448	1365
877	6b08a49e-95ab-48f1-bb8c-a6389d1d3bec	2021-12-17 16:34:40.017671+00	137	1365
878	58cd1e99-984f-42d9-887a-ac0c239baf55	2021-12-17 16:35:12.306719+00	119	1365
879	1490cd6a-6727-42d3-baeb-0a7b267b4855	2021-12-17 16:35:25.449654+00	127	1365
880	12d97d9c-5b1a-47f9-945e-8fe496b4428d	2021-12-17 16:38:19.349438+00	462	1081
881	ea5c501e-c20a-46bb-bd3d-c0988a288423	2021-12-17 16:39:13.219435+00	135	1365
882	82ea4c7b-28d5-4742-a02a-19a7c46e9dfb	2021-12-17 16:39:17.595589+00	138	1365
883	81014a11-3172-402e-b785-c584ce5c50dc	2021-12-17 16:39:49.349054+00	526	1365
884	307da57d-085e-4dd9-acb9-a255f80a7bfe	2021-12-17 16:40:03.210717+00	527	1365
885	35e04f86-fa15-47fa-8e8f-2a0dcb3d2aa9	2021-12-17 16:45:15.284123+00	524	980
886	cb9a356b-909f-4a6a-b023-abd3b385a3e4	2021-12-17 16:45:18.362434+00	462	1527
887	57e67eb0-fa79-485d-ba35-d2fae966ba62	2021-12-17 16:54:35.589894+00	462	1111
888	44d7010d-1439-4ecf-b357-0f6e588c8c4e	2021-12-17 17:00:11.834477+00	524	1365
889	70d4d8d5-9a5b-4da1-94e3-922aa42ce64f	2021-12-17 17:00:31.141053+00	527	1365
890	4a82f94c-93b0-4530-9e74-dc7ef320f6c5	2021-12-17 17:07:21.920072+00	462	1185
891	d78595c4-50e8-4f49-a6e3-aca7ce538ab9	2021-12-17 17:08:44.024811+00	524	1489
892	711c1cee-41a7-4b5e-b135-a6fc387237bb	2021-12-17 17:11:35.935435+00	462	966
893	80d0738a-f036-4d2c-a838-a6d21e5c3542	2021-12-17 17:17:57.402103+00	462	160
894	ee9a8a4e-03aa-414c-9180-b373c87cd42b	2021-12-17 17:20:02.259325+00	524	196
895	ac2c6da0-edd1-436a-9045-32f9d14b4170	2021-12-17 17:21:10.414288+00	462	792
896	cde911ca-3e3a-4233-9081-48d6e35b3d25	2021-12-17 17:24:01.150011+00	464	667
897	f490d763-141c-4d8e-a9f8-54e4c3c1000b	2021-12-17 17:25:09.944917+00	462	1207
898	0e5fc64b-2b80-4377-ac2c-5ba5de4912e2	2021-12-17 17:25:50.160245+00	119	196
899	d1e1eb39-39c6-49b0-838a-6d23c698d519	2021-12-17 17:27:42.027041+00	462	1447
900	e057283c-99d0-48ed-bdf5-e1affd88748f	2021-12-17 17:34:59.887714+00	462	209
901	5a68b25f-01db-4025-9e07-ff5887d78562	2021-12-17 17:35:22.204616+00	524	1081
902	662b05a5-036e-4592-9ada-1bd683efc1a3	2021-12-17 17:36:39.180289+00	465	667
903	bcfa068f-39d5-4059-a729-9d82180bbe21	2021-12-17 17:39:18.100032+00	466	667
904	e61c7dd2-d3b3-4ad5-ad5b-77c933465fe1	2021-12-17 17:40:56.180947+00	467	667
905	9c8ad07a-8b25-4e80-919a-4fa8ff1c37b8	2021-12-17 17:43:36.546981+00	462	419
906	9c1d49ba-5053-43e9-99d3-72424be82359	2021-12-17 17:45:34.441978+00	524	1287
907	243df382-67d8-4e40-87d0-a7dec4da6b6b	2021-12-17 17:46:19.609027+00	329	1585
908	8a33fca1-fbf6-4144-9105-7b7baa5b4710	2021-12-17 17:47:00.703227+00	329	279
909	9928f420-6030-4efb-9e6d-a2f35af3aaa6	2021-12-17 17:50:33.064448+00	468	667
910	3cbb08cb-35c3-45fa-a739-90538882d77c	2021-12-17 17:52:36.864651+00	105	1081
911	abc0e7b8-6911-44ce-b75d-9fdd672d9f65	2021-12-17 17:54:13.364297+00	137	1081
912	a321633a-5167-4901-b4b8-eb774298f2eb	2021-12-17 17:57:19.701489+00	469	667
913	13b09ab6-0ad4-4e4a-a504-f14da0876136	2021-12-17 17:59:43.27775+00	464	476
914	46d80213-c71f-4491-8191-249e16ca7bb3	2021-12-17 18:00:13.848346+00	119	1081
915	995cb7ef-7e7f-4da2-ba5c-c86bc92d792f	2021-12-17 18:00:29.201533+00	462	353
916	f17220cf-8507-4e7d-9933-ac1fb028e335	2021-12-17 18:05:51.226289+00	127	1081
917	b19dab7e-f4e3-4ac8-9c69-1c8135105ff0	2021-12-17 18:10:01.41872+00	135	1081
918	b98c4252-ba75-44bb-9703-c85485736fd3	2021-12-17 18:11:28.038165+00	138	1081
919	68f61c72-e9d5-40da-a28e-5bc63c3d3af6	2021-12-17 18:18:13.335766+00	462	1132
920	dda65264-9b30-4a7f-9d0c-3ded8c0557c3	2021-12-17 18:24:17.498443+00	524	1233
921	e29d3827-6d5d-4781-8b6e-3b0c28487604	2021-12-17 18:25:19.854105+00	462	1439
922	505418f5-303d-41c6-99d6-412210a538b8	2021-12-17 18:25:27.885645+00	526	1081
923	717fd9b4-0b3c-4ca9-8efe-b433cf56f93a	2021-12-17 18:25:46.497503+00	524	242
924	0ede7d45-49c6-4238-a523-04565fd1de26	2021-12-17 18:28:14.045304+00	462	1479
925	e5bfb136-954c-4724-b935-56378fbc0a38	2021-12-17 18:29:11.124248+00	527	1081
926	2282bc2e-07a4-4278-bae7-f439424969d1	2021-12-17 18:30:43.930421+00	105	980
927	5d5bcb10-0883-4dcc-962a-6b23d95acfe2	2021-12-17 18:33:28.907889+00	462	1515
928	4e489987-0fc1-4e37-9631-82fee326997c	2021-12-17 18:41:17.18765+00	462	1552
929	d8109b5b-451e-4e8a-b422-f3f428039e9a	2021-12-17 18:56:03.464989+00	462	1407
930	e807cf9f-1cf0-457e-94a2-53496d8dfebe	2021-12-17 18:58:40.262264+00	465	247
931	941140cc-913d-4cc9-a3f4-4821f6c37734	2021-12-17 19:01:50.193902+00	462	489
932	9da13db0-7f41-4612-8e17-adcb7afa0fae	2021-12-17 19:02:35.759887+00	462	1300
933	21e4a648-3f08-4afe-9331-c0e18c397795	2021-12-17 19:03:38.182946+00	331	279
934	383b2579-e71a-4ee0-a274-58edb2d823a1	2021-12-17 19:05:15.634391+00	462	1591
935	0e85931f-408f-4e73-8e09-6b52f49f6883	2021-12-17 19:05:24.499989+00	520	506
936	35d7000b-e980-4cec-87c8-fa03c7105216	2021-12-17 19:08:46.945731+00	462	1211
937	b85e84b0-c891-4b9f-972e-ef72e418fecb	2021-12-17 19:12:02.872458+00	524	1300
938	1a84b459-2999-4780-a620-6f744c7617e9	2021-12-17 19:12:43.951064+00	137	1302
939	8e45e1df-4a59-4744-9c9b-4dc0200cbf3d	2021-12-17 19:13:33.392993+00	466	247
940	df2650af-82bf-401f-9d2e-5a9d5d38016a	2021-12-17 19:13:50.655428+00	462	810
941	3a64480e-38ac-4b0b-b1f0-a9a45915ca75	2021-12-17 19:13:54.733169+00	464	402
942	2d35ba2d-6e7d-4ed6-87e0-d7a3d32834d7	2021-12-17 19:14:00.199042+00	465	402
943	4667baab-10da-4198-bca6-0681b32f4225	2021-12-17 19:14:09.869103+00	466	402
944	d08e3013-c38f-4a86-8857-7ebd060d69e1	2021-12-17 19:14:20.569778+00	467	402
945	aed1aff1-e5ae-4ffd-a809-9c570f0f7025	2021-12-17 19:14:25.785632+00	462	1549
946	badcf41d-6278-4c90-a3b0-e921b8321edd	2021-12-17 19:14:35.050472+00	468	402
947	a0f77aa3-1a5e-477a-bb86-a650682e4f89	2021-12-17 19:14:46.387629+00	469	402
948	a2fc8238-5ad9-497c-9fb7-cb84efe1a8ea	2021-12-17 19:15:43.902664+00	524	1591
949	83efa8a9-db12-4378-a60c-20918e391525	2021-12-17 19:16:15.713561+00	524	1073
950	fd0cef31-4bbc-40d1-a92e-d968dc6494e4	2021-12-17 19:18:36.89288+00	137	324
951	a4e1186e-ca28-4822-8133-65c2202ab469	2021-12-17 19:19:16.892858+00	462	1199
952	409e0f37-4347-4c9c-8c4b-94edc21e051b	2021-12-17 19:22:58.418455+00	119	1302
953	c49a7cd9-bf84-496a-aa29-a0e086b5c6f7	2021-12-17 19:29:28.124017+00	127	1302
954	16c97df4-4492-4fd8-ab25-2376b228beaa	2021-12-17 19:30:05.302479+00	462	402
955	c8120f99-bda8-4049-b9ac-a22ddb82db41	2021-12-17 19:34:25.988092+00	462	1211
956	8204bcae-c98f-42e0-a2ef-2513de2ae2af	2021-12-17 19:35:41.952527+00	464	279
957	399987d0-6b2b-4a5e-9093-1a1e52b1a1c2	2021-12-17 19:36:44.29+00	135	1302
958	86c723ec-82fe-4b49-8da1-94f613bf23b5	2021-12-17 19:38:15.106494+00	462	1486
959	afee80df-7cb3-47a4-a53f-da8aa90c2c21	2021-12-17 19:40:27.989689+00	138	1302
960	8626eded-5c80-4613-92df-42bea90c1a0f	2021-12-17 19:49:53.621674+00	393	176
961	2616465b-3972-4861-8b2d-4ac08335127e	2021-12-17 19:54:36.844625+00	526	1302
962	a3aa5c45-3e5d-4f11-845c-251acb5e9a32	2021-12-17 19:56:33.482748+00	393	1591
963	cdfc7538-6923-429d-a6c4-ca982774bf91	2021-12-17 19:57:32.637175+00	526	1234
964	fd0c3c6d-f3ab-4c64-880a-2984de7ef41a	2021-12-17 19:58:03.956093+00	462	437
965	23661ccd-387f-4fa5-886a-88cae75689c0	2021-12-17 19:59:32.304327+00	329	1591
966	f1317bef-3474-4e33-8ea9-3be0e00dfdb8	2021-12-17 20:01:39.043433+00	462	1428
967	7862d7de-657a-4c43-b660-afc4caebe018	2021-12-17 20:02:32.554652+00	465	279
968	4f7b93c5-12fb-4bfa-b236-94f60d7bcbf1	2021-12-17 20:02:46.378275+00	462	1549
969	d92e59d2-c854-41d3-8607-b72fc3fb29d6	2021-12-17 20:03:23.653411+00	464	895
970	3b1ff0b0-f309-47d5-bd3b-6bab94b55aab	2021-12-17 20:05:00.687263+00	464	895
971	7cf7ed5c-4f9d-4e92-82a4-245827e76ce8	2021-12-17 20:05:17.660322+00	464	895
972	9b4ba837-8f5b-46a0-a907-f82ef3162706	2021-12-17 20:15:22.131851+00	462	951
973	61ef3894-6dbb-4229-8f20-85790927888a	2021-12-17 20:18:37.143775+00	465	895
974	ed59a403-bc3c-4741-a6f2-7e68fe4947e9	2021-12-17 20:21:51.547174+00	466	279
975	e00447f5-356f-42de-a040-425531e5581b	2021-12-17 20:22:02.198063+00	467	279
976	876abcc9-ae48-4b19-9757-121343ea9e15	2021-12-17 20:22:15.161672+00	468	279
977	a72f187b-ff8d-41f7-b734-29a0aa40c0c7	2021-12-17 20:22:22.978204+00	466	895
978	80cbca43-bb3e-4d7d-8478-db93e23ea41f	2021-12-17 20:23:11.10927+00	527	1302
979	5d42fb64-2d1c-46ca-9d69-d1f05364f419	2021-12-17 20:23:25.808938+00	462	513
980	8e7f205c-c6ab-4982-9e28-5dff25dd63e2	2021-12-17 20:23:42.829384+00	462	513
981	dd8a90c1-7f9a-407f-8586-a9479102aa87	2021-12-17 20:24:02.668497+00	527	1302
982	8410b289-6967-440a-9d97-b0cc467eb750	2021-12-17 20:25:25.476606+00	467	895
983	aa3caed6-769e-4db6-96b6-5a7927e6ed81	2021-12-17 20:25:30.789441+00	462	1428
984	84fec917-82d9-4a12-b0ed-0bb6a06128e1	2021-12-17 20:25:40.321196+00	462	1468
985	ea322c13-c875-4fe4-95fd-50df1cb9bb85	2021-12-17 20:26:14.584254+00	469	279
986	a2239778-b712-44e0-bdb7-fda0e8b72c86	2021-12-17 20:26:16.260142+00	527	1234
987	ce704b28-6980-4bf2-b764-5751167ef256	2021-12-17 20:26:24.932473+00	469	279
988	46a15b87-3a84-4c1c-b1ff-df200f3d3104	2021-12-17 20:26:28.260216+00	527	1302
989	6a261a2f-e8ac-431f-9c7b-332e7f6c5c38	2021-12-17 20:28:34.664471+00	468	895
990	604a676b-0574-40b4-a0c1-9161791f8b29	2021-12-17 20:29:18.524102+00	462	606
991	1289c4c4-ebc9-4ddb-907d-0b82a2b4a761	2021-12-17 20:30:11.206716+00	524	402
992	0bbff78a-d68c-49a9-bff7-a207715da768	2021-12-17 20:31:09.83879+00	524	1234
993	074ab80b-a414-4fd8-88d7-f97e9e52c640	2021-12-17 20:31:22.341459+00	331	1585
994	969c7500-552c-494c-a82a-acbe8ce38a2a	2021-12-17 20:31:54.981142+00	462	1585
995	e973ae5d-db58-4986-aa88-cf2f398e6aff	2021-12-17 20:33:42.640787+00	105	1234
996	ed643673-03bc-4e48-a38a-85a15e004b7c	2021-12-17 20:35:49.418168+00	448	1234
997	0f69ddcb-e646-43a6-9545-2bccb7006b95	2021-12-17 20:37:10.982919+00	524	1479
998	64f74a45-1f25-45c4-b627-9ca9e034daee	2021-12-17 20:41:18.275347+00	524	1178
999	9662dc61-53bf-4f8a-a6e9-e31b86e5b20a	2021-12-17 21:02:53.233762+00	467	558
1000	3956f7c5-7302-4359-873a-9b51411b489d	2021-12-17 21:05:44.306957+00	468	558
1001	80f27078-9652-4187-8327-b0f0f036283f	2021-12-17 21:07:33.245069+00	524	1176
1002	4a997fb6-f80a-4db2-9bf9-a2b72f480ab4	2021-12-17 21:08:36.302219+00	520	160
1003	6e339a9f-decc-44ee-87d6-a3fe90a3a7dd	2021-12-17 21:11:07.68156+00	524	1083
1004	21c39142-7447-4fff-ac3f-e823847b1a00	2021-12-17 21:16:55.731083+00	469	895
1005	cfdc703d-4432-4b52-b442-faddd1bcf713	2021-12-17 21:17:17.17687+00	469	895
1006	41f1ed12-c8a1-4d4f-b75e-777607165118	2021-12-17 21:24:41.940055+00	469	558
1007	1911d5fd-fa66-4655-a9ad-700009b319a4	2021-12-17 21:36:13.873435+00	524	290
1008	b967bebd-438c-47ed-abc9-b0b0ca64a4f4	2021-12-17 21:48:53.319201+00	160	1234
1009	88c9ae88-1377-49e9-b183-c02cd73df1ee	2021-12-17 21:49:25.952617+00	464	266
1010	420148b1-0213-40b5-8420-941b2b8dbd34	2021-12-17 21:57:27.399044+00	187	1234
1011	8346d5fc-0761-434e-a9fe-194f90880611	2021-12-17 22:01:26.111389+00	393	279
1012	73f557c6-f3a6-4adf-a480-1ee32e75dae9	2021-12-17 22:13:43.516795+00	105	1479
1013	bcd8c2e3-ebab-4acb-af49-2aec841111ba	2021-12-17 22:42:14.605166+00	524	810
1014	2d041a28-f3e2-496f-bce9-746a833666fc	2021-12-17 22:42:50.968342+00	462	1590
1015	f63d32f8-9776-4109-9ea6-ba1ce2b0ce72	2021-12-17 22:45:10.181445+00	393	895
1016	975178f5-a1b6-401f-8022-221b43022088	2021-12-17 22:48:10.018517+00	462	1474
1017	5f9c2aa0-8d03-4485-804a-19c982e88a39	2021-12-17 23:33:28.05729+00	462	1298
1018	d349011e-7d4d-4833-8d56-5db1a4c4f66a	2021-12-17 23:34:28.312836+00	520	895
1019	b4801a65-a41b-42f1-934e-b1bb8bc44ec8	2021-12-17 23:36:24.153583+00	462	1463
1020	6d33dc70-0064-463c-841c-8225ec6ea248	2021-12-17 23:38:08.685875+00	520	895
1021	de5402f0-d0e4-47a5-8208-1e4721ab4cd3	2021-12-18 01:27:09.745432+00	520	126
1022	f3abfdf0-d883-455c-a9ad-af8f54ac3afe	2021-12-18 03:30:19.062516+00	105	1333
1023	8d1daaf6-e940-49e7-803f-977d6e6dea90	2021-12-18 03:32:44.365343+00	462	780
1024	c10d9897-8707-4f70-997a-57efc2e58cd0	2021-12-18 03:42:18.827144+00	137	1333
1025	821b8b35-593b-4474-9fc4-cc2e1340fd24	2021-12-18 04:00:45.609016+00	524	192
1026	d5bcd44c-07b3-4c87-b293-2564aa1e3318	2021-12-18 04:11:25.153015+00	524	1232
1027	edded622-eb87-4c83-8269-a604d414928f	2021-12-18 04:14:17.336132+00	462	1217
1028	7f111e97-446d-49ad-9e7a-e3abecd7005d	2021-12-18 04:24:41.25052+00	462	1528
1029	d99d35aa-6fcb-4122-bc05-8745d470f725	2021-12-18 04:27:42.334061+00	137	437
1030	f287bd00-05e0-445d-8f60-ebc99e745c6c	2021-12-18 04:38:18.293198+00	524	1433
1031	66e57afc-8511-4e3d-ba91-bcf3865eafb2	2021-12-18 04:47:33.442339+00	105	192
1032	0fd688c3-b037-49c2-bc94-57b3da6a11b3	2021-12-18 04:50:04.051231+00	119	437
1033	a9a3c33b-9b62-470f-ba21-7967e9e74c6b	2021-12-18 04:50:20.812681+00	464	1552
1034	43a97b6d-58b8-474b-9ff1-8d9193719edf	2021-12-18 04:50:39.054817+00	105	192
1035	0d19c5fe-ef86-462a-9139-3cf1bc54231a	2021-12-18 04:52:21.643273+00	462	1332
1036	31ee7ae7-d0a8-40df-93c5-994d8dc39c02	2021-12-18 04:52:35.240347+00	462	1332
1037	4ad1c2f5-9de2-430c-9c29-f6f819e02408	2021-12-18 04:53:40.839945+00	470	158
1038	b9129ee8-2a96-4ae8-a091-7e58e8ec4709	2021-12-18 04:57:20.811558+00	137	192
1039	6a88f8c0-f5ee-4996-8f62-ae97fbf54648	2021-12-18 04:57:45.028781+00	462	192
1040	e2c79295-1a6c-442e-9c2e-549f2171b300	2021-12-18 05:02:58.135636+00	524	192
1041	c6a4875d-0130-409b-bf60-bf0451664283	2021-12-18 05:05:21.820874+00	119	254
1042	aa83ad97-895f-4883-97d5-87b073f6fdd9	2021-12-18 05:10:09.87326+00	471	158
1043	7ae7a419-b90b-4147-aba9-59b06cc9bdba	2021-12-18 05:24:29.586134+00	524	1001
1044	ad6dfa34-78c0-4041-af9e-b8527f3736d7	2021-12-18 05:27:21.490765+00	160	1302
1045	b942ef33-0436-414f-a233-1dcd05450061	2021-12-18 05:42:59.533756+00	466	1537
1046	09c36fcb-3188-4e91-bfb6-9942efb4b7c1	2021-12-18 05:45:40.515576+00	467	1537
1047	ce21d1f3-cd6f-49c4-892b-908a1606334d	2021-12-18 05:49:24.34393+00	468	1537
1048	b78c19a8-d735-47f5-b0d3-652c0c8c2bf2	2021-12-18 05:51:17.535161+00	462	1605
1049	ebba13d5-044a-4422-b195-a65251fe66fb	2021-12-18 05:58:24.152377+00	469	1537
1050	475de5ce-7758-4823-b22a-404303567da9	2021-12-18 06:00:27.961964+00	462	1603
1051	b80a0b22-9958-4f25-9658-ad5d08eb1f82	2021-12-18 06:00:36.055556+00	462	1603
1052	05087e28-bb03-4df0-9195-444562741da3	2021-12-18 06:01:57.952622+00	329	160
1054	732bed84-4376-4336-821e-9c77a2b1945e	2021-12-18 06:16:53.033791+00	127	254
1055	b0289405-88a6-4941-8f3d-e0ad57baf63a	2021-12-18 06:20:46.912539+00	105	1001
1056	e6ae42b6-d5dd-403b-9f6f-b2670f52a56b	2021-12-18 06:28:37.934025+00	462	1604
1057	6f4c2421-2824-4e86-a690-4b04416573e8	2021-12-18 06:29:51.694328+00	462	446
1058	ea30579b-ba20-4353-a89f-2bf32d78a8cc	2021-12-18 06:32:39.770523+00	462	1606
1059	66c6084d-5473-4fe6-9ec6-bea0f699b54f	2021-12-18 06:38:02.044046+00	462	611
1060	53870154-63b2-4775-bea0-f1f77e322b17	2021-12-18 06:41:19.613971+00	331	160
1061	ecd05cd7-751a-456d-8969-6340bf79aeff	2021-12-18 06:44:12.660906+00	524	1378
1062	338c6e90-a68f-419f-bf8f-f7725ab28ef9	2021-12-18 06:50:47.439231+00	524	1378
1063	7d459c00-1924-4d7e-b4af-50463d17fb9d	2021-12-18 06:56:56.737696+00	524	1603
1064	3e620972-bda4-48f7-a84b-536150341001	2021-12-18 06:58:15.648101+00	462	198
1065	54db6a52-9722-4967-88e2-a558e27f72e6	2021-12-18 07:01:33.347987+00	462	278
1066	41423c51-a14a-4eca-b0b0-a572365ce8da	2021-12-18 07:09:33.564713+00	464	387
1067	c1f6d937-e611-4b16-a5de-09adc1fab978	2021-12-18 07:09:35.327795+00	524	1439
1068	c0c9b07a-6a48-449b-8b5c-3b8ac8fb33e4	2021-12-18 07:13:25.273451+00	462	1608
1069	3aedd8e5-c4fb-4ded-bf52-a2983fe7ef93	2021-12-18 07:15:46.244409+00	462	521
1070	7940adc4-291d-49f6-941d-96f63e6b02c7	2021-12-18 07:20:05.769031+00	462	625
1071	8db7c0ef-4820-45b3-863f-85b0047e050f	2021-12-18 07:20:22.941695+00	462	625
1072	7f16cfa3-70e1-4466-b5da-83e7b0c8b065	2021-12-18 07:21:31.24485+00	464	840
1073	450a0d03-1af7-42a8-ab0b-decb3bd6b9d7	2021-12-18 07:25:19.969426+00	105	1232
1074	c611a8ec-023a-4c1a-8c66-03324cedfe72	2021-12-18 07:29:55.396966+00	462	494
1075	922152cb-f115-4aef-b779-9e529a850edf	2021-12-18 07:30:33.955968+00	135	254
1076	c99adb10-84fb-4617-80f2-8599cfa2b829	2021-12-18 07:32:04.345631+00	137	1232
1077	e097933e-1bac-47f8-8067-583837602a73	2021-12-18 07:34:59.301072+00	462	555
1078	bf23ca96-a977-419c-afa0-d0eb95257c2c	2021-12-18 07:35:17.915722+00	462	555
1079	f85c0f43-2dc4-40f5-924f-ac8235380c4f	2021-12-18 07:41:08.686476+00	138	254
1080	a737ae85-024a-488e-b231-8ffad5ed3692	2021-12-18 07:43:03.225554+00	462	112
1081	c188de8d-c02d-4a2e-b5ec-9bda13ef315b	2021-12-18 07:54:26.720433+00	462	1511
1082	5f770e9a-49f6-42e9-a3b1-625b1abd35e8	2021-12-18 07:57:13.453328+00	524	419
1083	ef15792f-12a6-49d2-a667-0408788893a4	2021-12-18 07:57:54.034698+00	137	1001
1084	ba3dbdd3-3e12-417e-8227-5e7667c38713	2021-12-18 07:58:16.46311+00	137	1001
1085	513df360-eb5a-45eb-997f-88063213b2cc	2021-12-18 08:00:57.616897+00	524	555
1086	47ef803d-8d46-43e3-83b7-f4db34b391f6	2021-12-18 08:01:25.922022+00	462	1609
1087	cc6606c5-29d8-411c-8196-5b2aebb35ec3	2021-12-18 08:02:47.562339+00	462	1610
1088	a12110f9-57d0-4191-8c03-34e43d6587b6	2021-12-18 08:13:05.716637+00	137	1001
1089	dd321bb8-c449-4d70-8dc0-a00a338f36fc	2021-12-18 08:18:09.623368+00	127	325
1090	445a7202-8515-43f6-bcf1-36a52daed4ca	2021-12-18 08:23:22.788815+00	119	1001
1091	c87af614-25ee-4d4a-ae2a-2f426812761a	2021-12-18 08:30:17.416966+00	462	1582
1092	cec47005-a01a-4e73-a08d-d48d5774e246	2021-12-18 08:34:36.207146+00	119	1232
1093	355b3206-0d67-40e2-ac85-089f3720b5aa	2021-12-18 08:37:26.632795+00	462	1116
1094	13ae0778-9d9d-4043-91b5-7a86373dcbc6	2021-12-18 09:09:25.053472+00	462	754
1095	a4a4c8db-f521-470f-b377-f760ef6b434f	2021-12-18 09:11:22.416832+00	470	770
1096	50fef3ce-f04a-4b03-bdb7-04a042c4f460	2021-12-18 09:11:41.218223+00	462	608
1097	025f3f36-5715-4c6a-a8c9-5f4c4d577151	2021-12-18 09:13:29.456899+00	462	1163
1098	14dd3690-f3a4-4663-80ff-893febef89c7	2021-12-18 09:15:40.594426+00	127	1232
1099	c34319f3-28e4-4c6a-9346-06c0552054be	2021-12-18 09:22:50.45335+00	462	1318
1100	153ef446-1073-4f9a-87c8-6d6ae50ff140	2021-12-18 09:23:59.837474+00	524	1332
1101	51203920-3d7c-4fdc-9d9a-ac5428c2e499	2021-12-18 09:27:13.055022+00	462	1499
1102	9a85a047-87e9-435a-bb57-234fe47aeebc	2021-12-18 09:27:26.694955+00	462	1499
1103	de4e60aa-f1a5-4f5a-918a-5bb10dbea8f6	2021-12-18 09:27:50.685936+00	464	160
1104	8fe191a3-8d6d-420f-b850-3d5beadc531e	2021-12-18 09:42:52.134776+00	465	160
1105	a39a1fab-fc4c-4012-aa32-b0da774f1520	2021-12-18 09:43:03.015899+00	524	1590
1106	66bd624f-a6a3-44a3-85c3-238ba04cf36e	2021-12-18 09:46:16.377083+00	524	325
1107	4c5a429c-1c2e-42cf-83f2-e996808eb27a	2021-12-18 09:49:29.363026+00	466	160
1108	49c25f9e-a7f6-4116-9472-c36e9400ef82	2021-12-18 09:50:25.847658+00	462	1611
1109	7ebbb7c9-86fa-40cb-8f8a-6543558d31fe	2021-12-18 09:51:18.46451+00	135	325
1110	c0ee16ba-3262-41a9-9d5f-481ff9b4bcde	2021-12-18 09:54:02.813911+00	467	160
1111	806c5010-d913-430d-b564-478ec49ac5ec	2021-12-18 09:55:31.114524+00	464	1545
1112	103f2976-d308-4aed-94a5-03c90aca1565	2021-12-18 09:56:50.944511+00	468	160
1113	c44cfde0-9015-411c-bd0e-d2ee5c10881f	2021-12-18 09:59:58.855764+00	127	1073
1114	313e88e9-ac18-4cd4-aa20-e06fece3086f	2021-12-18 10:02:20.991331+00	462	1428
1115	bfb661af-55c7-4756-b6f8-138a38933175	2021-12-18 10:02:31.088914+00	462	1016
1116	82aa79b8-ae55-490e-9d05-50a19d5ffa77	2021-12-18 10:05:49.738968+00	524	1397
1117	d3442dc5-974e-4e83-bc85-bb125d7801fa	2021-12-18 10:06:18.798472+00	462	1498
1118	d5bad407-0610-4dc9-9624-61475507fcba	2021-12-18 10:14:17.38976+00	138	254
1119	071eab96-095d-454c-a855-194d021503c4	2021-12-18 10:18:52.195679+00	469	160
1120	59bf87cf-618a-4e53-a1e9-0c72525de8a4	2021-12-18 10:22:55.08457+00	160	1204
1121	92e0002c-cb67-42f7-972e-6e8a3c9b3478	2021-12-18 10:24:09.517746+00	462	129
1122	d4aa048b-1721-40b0-97da-fd954dec3998	2021-12-18 10:24:58.550173+00	524	1222
1123	6ff91b5f-4c5c-4207-986d-87836e5a6c3c	2021-12-18 10:25:39.958006+00	462	494
1124	7b75e5b8-4938-46eb-8475-f087bb8c9996	2021-12-18 10:30:22.115448+00	105	419
1125	4958c97a-11a1-4f75-84fb-5f7174ef70b1	2021-12-18 10:31:31.431169+00	137	419
1126	61a1edc3-adff-44c6-a418-7f8d0ffe7655	2021-12-18 10:38:05.846954+00	462	1431
1127	c8bcee08-ff4c-4212-acd8-7ef2392b7773	2021-12-18 10:38:47.735646+00	524	1430
1128	4093250f-4377-4e06-aeea-32a032b0812d	2021-12-18 10:39:38.489712+00	462	185
1129	53e94e55-9fd4-4aca-a110-6c8a4d93d2ee	2021-12-18 10:39:40.351357+00	187	1204
1130	cd471721-a047-4a2e-85c1-73d0bec877d0	2021-12-18 10:42:46.98994+00	105	1222
1131	d3924f72-7814-4951-932b-792367a1d9c8	2021-12-18 10:44:27.501342+00	137	1222
1132	a3b0a912-1805-4753-9855-85352c0dfdb3	2021-12-18 10:46:34.958172+00	465	247
1133	60c62bc2-92fe-4841-9431-8cb2eb38f944	2021-12-18 10:46:43.547989+00	466	247
1134	2b42fd24-6255-4598-8205-6b326c8c82f5	2021-12-18 10:47:02.610618+00	467	247
1135	4da38d8b-b2b4-432c-86d5-181d1859f8ce	2021-12-18 10:48:03.029323+00	468	247
1136	4ca4dbba-b3b3-44d3-af15-22bc7f338649	2021-12-18 10:48:43.080427+00	466	247
1137	f8be4d07-81e3-4392-a44d-6fb066bef28e	2021-12-18 10:52:06.783703+00	467	247
1138	4e5191c9-a895-4e1f-bc9a-7062e9884c90	2021-12-18 10:52:18.512346+00	468	247
1139	8ffdf962-78d3-4549-8b17-6f15ebba701d	2021-12-18 10:54:30.477819+00	462	1496
1140	69f879eb-eba6-49b2-9d27-e094cc988b51	2021-12-18 10:56:35.640551+00	119	419
1141	3698d6a3-b73b-46bf-bdb2-3798338afe58	2021-12-18 10:57:20.135812+00	119	1222
1142	56e9c414-880e-4d8e-a8d5-2686770832c6	2021-12-18 11:03:54.772585+00	127	1222
1143	0e9afb9a-ca04-4a82-831c-8575b6fb5e2a	2021-12-18 11:17:40.573218+00	462	1064
1144	933a34d8-7dbd-4b30-bca9-a13cb4f098cc	2021-12-18 11:18:08.429702+00	462	858
1145	732a1603-b009-425b-9090-1e022d96f083	2021-12-18 11:21:01.189292+00	462	1517
1146	8aefb7a8-52ce-4c3a-98bb-c6e62547f544	2021-12-18 11:21:38.975445+00	464	1525
1147	97fadddc-8cab-4f94-a1a3-e587378a4f29	2021-12-18 11:26:19.525334+00	105	1307
1148	88fe427e-b9c3-4392-b6ae-81195b5f440d	2021-12-18 11:28:36.298194+00	462	205
1149	16ea39e6-ccb8-4d11-aaa2-450e07042469	2021-12-18 11:29:59.524739+00	127	419
1150	41e2fc84-8dd3-4144-a35f-be8b21792923	2021-12-18 11:33:17.972452+00	524	1428
1151	165359d9-bde3-416e-ace4-4311bc740022	2021-12-18 11:33:42.273612+00	135	419
1152	54e314cb-4193-4086-81a8-0d0dfcdd6453	2021-12-18 11:42:24.168889+00	462	205
1153	c857a936-3b93-4142-aa86-0c057591c6e2	2021-12-18 11:46:46.216853+00	526	254
1154	2b74d6c0-ce72-416e-8672-cfe631b1cc10	2021-12-18 11:54:07.807398+00	138	419
1155	75575d4e-9a82-494f-ac75-9d65b9d35fd2	2021-12-18 11:59:07.389979+00	135	1073
1156	f81bc9a7-d3f8-4eb8-998e-b53b3fc7f2f5	2021-12-18 12:09:15.88309+00	138	1073
1157	f993a137-60bd-407e-97a6-3f013c71f5c8	2021-12-18 12:13:50.017213+00	462	796
1158	c1b481bb-510b-44cf-802a-09d6b7f78311	2021-12-18 12:15:58.319916+00	526	419
1159	6caec4b7-bff9-43e6-a59e-fd94b53c9aa2	2021-12-18 12:16:15.567628+00	526	1073
1160	00e45e7d-f42a-4892-8877-ec80be15eb67	2021-12-18 12:20:50.250433+00	135	1232
1161	c7f59c1d-01ca-4938-82f3-70ce9f0c68bd	2021-12-18 12:27:52.659297+00	462	543
1162	53b5de67-e9c1-47d2-8d4e-aa2ddde1fede	2021-12-18 12:27:54.022302+00	462	543
1163	f1360825-ec0a-4da7-9c90-70cf32f7068d	2021-12-18 12:28:41.381999+00	527	254
1164	bd1de0d4-baed-429e-bb51-2ce681402072	2021-12-18 12:32:48.496459+00	527	419
1165	41ae9655-d921-450c-a10c-842023c78080	2021-12-18 12:36:19.928295+00	448	254
1166	850136a7-f8d9-4a5e-b5ad-b5d85c838409	2021-12-18 12:36:51.011042+00	527	1073
1167	c83ef8c2-bbc7-4a36-b19f-27f8d09cfaa8	2021-12-18 12:36:52.886515+00	527	419
1168	2d930f77-ec11-4f9e-90ee-1cdf269dfa3c	2021-12-18 12:37:46.21704+00	138	1232
1169	6e5b7453-3f7c-41e1-b173-1c62b495b1c2	2021-12-18 12:38:16.670406+00	138	1232
1170	5bd23298-e3d0-43ce-8170-8659b94cf075	2021-12-18 12:38:26.766477+00	527	419
1171	4b2a8686-57a9-4b12-82a5-cc12f3180d2e	2021-12-18 12:38:34.269867+00	462	141
1172	1269917f-104b-4d8f-b229-de79c7902a70	2021-12-18 12:48:15.839254+00	527	1365
1173	98980509-9b3f-45a9-954e-2f421340dd63	2021-12-18 12:51:49.931579+00	462	234
1174	f8ba5da6-b05f-4bfb-aa11-10b66b399012	2021-12-18 12:52:47.486235+00	524	203
1175	13a67376-9a19-49f0-818a-38ce6a91df29	2021-12-18 13:25:26.462009+00	448	1073
1176	48884414-1e79-49d7-944d-de52d298920f	2021-12-18 13:25:55.911572+00	105	203
1177	68a6989e-f7d8-4914-bbf8-fa0d718750e4	2021-12-18 13:28:37.695992+00	462	226
1178	af61dc7f-2e1a-4f7d-b496-00d09bd5c640	2021-12-18 13:28:52.668809+00	462	226
1179	c23605ec-cbfa-4c6b-a5bc-061b101cf84d	2021-12-18 13:32:32.36883+00	462	974
1180	2c2a58db-90b2-40ca-b7cf-2d2caf326356	2021-12-18 13:41:44.227359+00	137	203
1181	5d6941ba-37b9-4f7e-b90c-3bd11687fc7a	2021-12-18 13:46:47.619273+00	462	667
1182	5a267b54-2c04-49e7-8d93-7b00a66041d4	2021-12-18 13:51:52.364355+00	462	279
1183	6669c28a-cb04-4105-8def-a257aace38b9	2021-12-18 13:51:56.109314+00	127	769
1184	172b875a-b695-4be0-845e-add75681150c	2021-12-18 13:52:34.235632+00	160	854
1185	74462de7-b5a7-4ea4-affb-c11b8491517d	2021-12-18 13:54:44.759462+00	137	980
1186	3816d174-1356-400d-9d8d-74af29d865ee	2021-12-18 13:56:57.569569+00	135	769
1187	3a5d635d-a4b8-4de8-b7a1-81f2d5218019	2021-12-18 14:00:33.720179+00	138	769
1188	5f673b9a-e37c-4098-9443-91e53222368d	2021-12-18 14:00:43.854672+00	138	769
1189	508d5677-829a-49e6-af96-548743be9704	2021-12-18 14:02:13.91704+00	520	854
1190	613cb1d6-e1ef-4e79-b0aa-9ac41226d499	2021-12-18 14:03:02.653889+00	524	1211
1191	dbacfbe7-9902-4180-a837-a4f865866fbc	2021-12-18 14:05:36.110009+00	470	1117
1192	50eab01c-d99f-4fd9-bfb3-532ff0902f38	2021-12-18 14:11:31.588758+00	465	1545
1193	2f3bd765-258f-4560-a247-e390a2cdfaad	2021-12-18 14:12:48.221454+00	137	980
1194	87ba4424-d6fb-4718-a093-328fe7a13c76	2021-12-18 14:14:44.421449+00	462	414
1195	485a7ebe-7fec-4a60-a6df-c4cca7a08288	2021-12-18 14:16:23.390785+00	462	1106
1196	3e77d479-61be-4c9a-aeb3-e6b188d8050d	2021-12-18 14:26:45.017486+00	526	769
1197	ce9b617f-b26b-47a5-ab9e-8acf3a66ca7a	2021-12-18 14:27:49.994547+00	466	1545
1198	0afdecf6-ba7c-47bc-9632-7fb7ca52e2ce	2021-12-18 14:28:11.997546+00	467	1545
1199	8936f871-78bb-4427-a1fd-67354800f4ad	2021-12-18 14:29:16.491398+00	524	521
1200	1775f4a2-7428-42d3-8b2c-514cc516e949	2021-12-18 14:29:34.273123+00	468	1545
1201	7af3272a-d7ac-482c-8b8a-00181e3e1474	2021-12-18 14:33:51.379572+00	469	1545
1202	97899993-f385-4242-b975-263635e5c718	2021-12-18 14:35:23.227141+00	527	769
1203	56898837-0ca9-4385-8756-1d9df9688ae1	2021-12-18 14:35:58.001616+00	462	414
1204	dc46bd52-347a-452f-8e6a-218b9c6a7597	2021-12-18 14:36:53.264942+00	448	769
1205	a01af462-24b5-4398-80aa-69dfce56da8a	2021-12-18 14:37:06.049994+00	462	1295
1206	871a7b8c-e5be-4c4a-aee2-ef3436140d07	2021-12-18 14:40:50.319071+00	524	1294
1207	97eb0437-d7a4-42e4-9c7e-bf3add3655a8	2021-12-18 14:41:26.217709+00	462	1006
1208	442b9ed3-5787-45cb-bf1a-965ac5f36b37	2021-12-18 14:44:35.832549+00	160	1073
1209	dcc34517-f2ef-4d28-8099-279807e21f44	2021-12-18 14:49:14.45922+00	187	1073
1210	76f10629-1b11-4bd2-b96d-9a4522b54840	2021-12-18 14:54:38.250044+00	463	1073
1211	97ac6882-2a57-482d-9026-34da782ca755	2021-12-18 14:57:36.030392+00	405	1073
1212	64cbe10f-2e9b-4efd-9d2c-b51f6fa88d53	2021-12-18 15:02:17.193695+00	105	521
1213	0115598e-83a7-4e94-a08d-40bc7e648adc	2021-12-18 15:02:56.673093+00	160	1117
1214	3bd58010-e87e-4f72-8def-9bcc497d2356	2021-12-18 15:03:21.624393+00	462	564
1215	3f851272-281b-4a65-bedc-a40cdef01c43	2021-12-18 15:03:21.966865+00	524	1087
1216	7d95e932-5fa2-4b97-ac3f-65a0497fa33f	2021-12-18 15:05:32.041869+00	160	769
1217	475e6468-e07b-45b8-a9e2-4d8ad7001aeb	2021-12-18 15:07:28.883656+00	462	1604
1218	1fca4342-31af-402c-b7b6-1769318a893c	2021-12-18 15:08:39.134035+00	462	1106
1219	a4814024-1c5c-4886-a463-05f08b2c0df3	2021-12-18 15:09:41.221641+00	462	1194
1220	0fea7bc4-f1fc-458b-921d-32cc6597e626	2021-12-18 15:10:49.876696+00	462	1106
1221	ee881ea1-fd01-425a-ac97-78ba2607725a	2021-12-18 15:10:56.663968+00	462	1106
1222	2667dec4-3a9d-4837-862b-505d4078dad7	2021-12-18 15:11:19.66226+00	524	667
1223	46482537-a3fe-445a-940d-0374edb62f65	2021-12-18 15:13:38.655023+00	105	1294
1224	20893cd3-3f26-4b45-bea8-405eee8861c8	2021-12-18 15:15:36.693114+00	137	1294
1225	691f7fa9-5e18-4ade-95c8-1d61144f25b5	2021-12-18 15:15:37.233486+00	524	1376
1226	d9bbf071-2bad-4e38-8878-5178e005f2de	2021-12-18 15:15:45.323027+00	137	1294
1227	76e48407-c157-4251-99be-fa66dde53930	2021-12-18 15:18:14.821721+00	462	1203
1228	2e83137a-a4f8-4e0a-97e0-1c41b3979992	2021-12-18 15:29:06.745271+00	470	1073
1229	d3ba0102-d2be-4c05-814d-175e9ec1db35	2021-12-18 15:30:49.414583+00	119	980
1230	dee40f10-ddf1-4d77-9190-a23dbd1d5952	2021-12-18 15:32:17.707596+00	524	1117
1231	f9c4c398-ca7c-4bc2-84b8-6663aa002ac5	2021-12-18 15:33:05.349745+00	119	1294
1232	8cb00c6e-138b-4109-93d0-09a6da5e6b7d	2021-12-18 15:35:00.979061+00	524	1106
1233	4f795705-c573-487f-a430-59a07536f75d	2021-12-18 15:40:44.136019+00	524	335
1234	8017d4f9-2a4f-4246-9e8f-8cc38f2a1fcd	2021-12-18 15:42:50.199179+00	462	162
1235	03399f2d-8146-4eeb-8ec0-5fd1d2e9cb3d	2021-12-18 15:43:44.064091+00	137	335
1236	249bfd13-9ee8-463b-8dcb-730a471a9dc0	2021-12-18 15:45:19.287008+00	462	1615
1237	096bf972-c053-4f56-b15c-59799cf1d898	2021-12-18 15:46:25.60693+00	105	1428
1238	62cef840-e8ac-4db9-a3ee-2e1fd65c590d	2021-12-18 15:49:27.79496+00	127	1294
1239	bf45dc79-f7e7-4ffa-a94e-5af1b68771b4	2021-12-18 15:51:01.532033+00	137	1428
1240	05673383-f317-4cb3-a193-02f8e88a050a	2021-12-18 15:52:18.15511+00	520	414
1241	d7566991-157f-4111-bc41-1e67caa68966	2021-12-18 15:55:13.121906+00	119	335
1242	0eb13bbc-1658-4bda-bf34-91cc7dbde60b	2021-12-18 15:57:34.810352+00	187	769
1243	52d643b9-d17b-4ad1-97c0-79c5ff86ab0a	2021-12-18 16:01:52.468064+00	524	399
1244	0cbcfcf5-d582-4bba-af95-366d2af3b9a9	2021-12-18 16:03:46.276562+00	135	1294
1245	29ccc848-23fd-4f8d-bf2f-a532666f4aaf	2021-12-18 16:08:19.587075+00	329	495
1246	c06e72a7-8a55-4a3b-b256-745b43d2df47	2021-12-18 16:09:00.24541+00	520	769
1247	b0a7a03d-332a-4e2b-b481-68adc66991e1	2021-12-18 16:11:03.812658+00	138	1294
1248	2084201b-9008-4904-902b-d7012de9e09b	2021-12-18 16:16:43.339074+00	524	1604
1249	8471bd84-8622-48f5-8713-899482b6f714	2021-12-18 16:22:31.263612+00	470	1073
1250	c8bd206b-edbb-48f1-93c5-9b4b676e8c17	2021-12-18 16:30:48.390187+00	462	504
1251	3dff20a4-b531-4fe7-a6ef-7767f0f59165	2021-12-18 16:36:34.207085+00	127	335
1252	88e02cca-74e3-4b4e-9c13-630786204b36	2021-12-18 16:37:29.33932+00	526	1294
1253	d963704f-0d3f-40be-bb51-ffed62ab6630	2021-12-18 16:39:06.16093+00	462	1122
1254	bfd79dcf-ef95-4c7f-b981-a35b7081352f	2021-12-18 16:41:35.785487+00	524	1064
1255	8d8fd251-77ee-43ea-975e-1786a6abdad3	2021-12-18 16:42:36.964682+00	331	495
1256	c5a3041e-ef4e-44f0-92a8-cee176c139fd	2021-12-18 16:46:45.895556+00	462	1122
1257	7a60bf9e-6b17-4918-8856-8603d0f0dd8f	2021-12-18 16:46:57.226807+00	462	1122
1258	bb9d1258-cdef-42d8-8519-6ce16e1b90ff	2021-12-18 16:58:09.203232+00	462	1084
1259	f394705b-8c13-40c3-9847-b96e76cc2ca6	2021-12-18 17:00:10.147711+00	527	1294
1260	9f7c1c20-9fc0-4a3b-8175-9712abb3d361	2021-12-18 17:00:43.917598+00	471	1073
1261	cd845bd0-b6f9-4d32-96c1-3b35e2cf925a	2021-12-18 17:01:37.435406+00	448	1294
1262	8727e4fd-5fc9-40a4-ba86-016a6ef7a0a8	2021-12-18 17:03:01.890023+00	438	1073
1263	dd4b9137-d8ae-4c8b-be9d-803ef9da9f4d	2021-12-18 17:03:24.53913+00	462	1487
1264	834f5ef7-f048-40b7-b2db-aebf66b1a80b	2021-12-18 17:08:16.779308+00	524	1215
1265	9d03826e-919a-498d-baeb-de9ad77e108f	2021-12-18 17:10:12.262218+00	465	476
1266	c7544ad9-adc0-415e-a8e6-18b8ace63bcf	2021-12-18 17:13:40.366516+00	524	446
1267	21bd7a1b-4124-4a56-a9af-701a00100197	2021-12-18 17:14:03.864857+00	462	1299
1268	1c64906e-4915-4637-a572-8061974d6bee	2021-12-18 17:14:30.490416+00	462	1299
1269	ffc78979-f35d-447c-8ddf-2cc47c99f900	2021-12-18 17:15:02.583085+00	466	476
1270	e3d86253-8ea8-47e0-bb8e-a9f894746efb	2021-12-18 17:17:37.48392+00	467	476
1271	966419fc-e504-4c47-bb60-51d9d88cc85c	2021-12-18 17:19:46.475018+00	137	1479
1272	ffc09ea2-6c0a-4f10-b818-78772ac1c3de	2021-12-18 17:22:35.159242+00	462	1201
1273	166561ac-9485-4bc4-876c-30460bd745cf	2021-12-18 17:25:49.943652+00	468	476
1274	d294f8dd-615f-47ff-a0c9-348c70fdf6e4	2021-12-18 17:28:19.644491+00	393	379
1275	eded80ac-d5a3-40a6-9100-ec21c16af265	2021-12-18 17:29:20.765051+00	119	1479
1276	3006f53b-d41c-4b27-914a-1600e4c25237	2021-12-18 17:32:08.113411+00	127	437
1277	51ae1d1e-5808-41aa-b1dc-0b465e55584c	2021-12-18 17:35:33.893811+00	127	1479
1278	5ef44c1c-bce0-421a-b635-4140d44e1110	2021-12-18 17:37:40.570469+00	464	896
1279	8f0e377f-33d5-4c71-aa95-d24daded6af7	2021-12-18 17:38:57.699563+00	469	476
1280	8be5cb95-d8d4-4ed7-8dd2-b385c5c8cf74	2021-12-18 17:40:34.561751+00	135	1479
1281	c23ea405-16c2-46ea-86c9-c2b782d060a8	2021-12-18 17:47:29.896823+00	138	1479
1282	b7911d1c-7c35-4e43-b970-f3e33722de8e	2021-12-18 17:47:37.007371+00	135	437
1283	9f2d64d8-b0a5-45f7-bc0b-c200d16facca	2021-12-18 17:51:40.712516+00	462	758
1284	ce4f5591-1fa4-43b3-94f7-84ef8e4a1d03	2021-12-18 17:51:52.26776+00	462	1201
1285	773ed7f0-2811-4663-bdd6-3366b4642543	2021-12-18 17:58:26.45786+00	160	1294
1286	e3ae673c-0845-4732-9cd7-249f02ba957d	2021-12-18 18:04:34.67317+00	187	1294
1287	cb3c083a-521c-4101-83d1-6197602f88f4	2021-12-18 18:13:10.563456+00	105	1336
1288	a2d4ff15-3fc8-488d-bbff-1715fae6c9c6	2021-12-18 18:14:16.173691+00	137	1336
1289	147b10fb-f2f7-44a9-910b-34a4e1e6a3d0	2021-12-18 18:14:42.782448+00	520	1014
1290	b014d196-9746-4af6-82f3-2cf0e467db0f	2021-12-18 18:16:34.435549+00	462	1221
1291	51d76c0e-88b4-4df5-b82d-2625e69bf3e9	2021-12-18 18:16:52.627962+00	462	1221
1292	b7e96613-224c-4094-a373-30a9ebb2ec78	2021-12-18 18:19:35.54136+00	462	454
1293	07467026-8629-4a18-8892-5d4c8702a1bb	2021-12-18 18:27:14.801138+00	465	896
1294	dddca217-9157-45fd-845f-750e0c805618	2021-12-18 18:29:16.027335+00	119	1428
1295	9671d1ed-2862-4f95-82e9-74812e42f711	2021-12-18 18:32:01.878742+00	127	1428
1296	3bf59e51-a36e-414a-9369-afbf62d44e37	2021-12-18 18:34:30.462416+00	135	1428
1297	68948065-2a9a-41b7-b0d5-e0f53b8f7e87	2021-12-18 18:38:50.831237+00	470	702
1298	6f44980b-ddc8-44f1-b2e9-905f5a75e1c2	2021-12-18 18:46:41.241985+00	105	1376
1299	93e51cfc-34db-42cf-95ca-cbe217829884	2021-12-18 18:47:33.843423+00	137	1376
1300	dcec44ad-7fcf-4828-86ac-27206035ef31	2021-12-18 18:49:07.855273+00	105	290
1301	c2bca19a-5a8b-4cb3-b728-f174f24fc120	2021-12-18 18:52:58.263723+00	462	285
1302	453480c6-3181-42f8-a26e-6fad82ee0e53	2021-12-18 18:54:33.279422+00	468	247
1303	de605e7f-2520-461a-9b89-4c6758e9e182	2021-12-18 19:15:27.911892+00	462	544
1304	9cd7a7ea-b738-4a3a-8418-e64145ce04e7	2021-12-18 19:23:17.204446+00	469	247
1305	316b96f1-7c14-4507-967a-cd6376b789bd	2021-12-18 19:28:59.536931+00	105	705
1306	40d571d6-05d7-423f-9cec-cb37d208433e	2021-12-18 19:31:59.746518+00	137	705
1307	42bc9d60-4697-4373-9c5b-7e0339b40234	2021-12-18 19:38:39.041452+00	462	1193
1308	5d5518ed-61f8-4397-9364-8ecf4afa8a58	2021-12-18 19:40:54.803701+00	119	1336
1309	241bd031-0cd9-4057-a4bf-912ca82ec26b	2021-12-18 19:43:18.642962+00	127	1336
1310	353bef7f-b9ec-4e8e-810b-ac53e6743cdb	2021-12-18 19:48:32.165458+00	524	951
1311	c6b34491-616e-496d-abbc-9c72c74db21f	2021-12-18 19:50:52.845289+00	135	1336
1312	4be8d536-a221-4f00-a028-f99159e0496f	2021-12-18 19:55:10.989139+00	462	395
1313	2dc21674-ba98-46d2-9110-532cc782c277	2021-12-18 20:00:48.396109+00	137	1229
1314	8d82b6e9-7dcc-48c3-a07e-9ab84b86b9f6	2021-12-18 20:02:42.137824+00	329	702
1315	8ab8885e-5218-4fd6-823c-49d5b4fb8ae1	2021-12-18 20:04:07.738036+00	137	1160
1316	7a26c921-4222-4f03-a06c-7e8725b97667	2021-12-18 20:12:23.969664+00	462	336
1317	f286af17-6852-49bd-803b-d2b8ff6107a6	2021-12-18 20:15:12.226182+00	119	1160
1318	42fc7097-08e6-40bc-a819-3493841dae3c	2021-12-18 20:17:01.899472+00	105	810
1319	92c40951-6341-4b9b-94d6-d5e6f75cb17c	2021-12-18 20:17:02.454907+00	524	285
1320	e4221dd8-90b2-4364-9567-31f71081213d	2021-12-18 20:17:29.91259+00	462	1424
1321	593b9ee2-789e-4080-8995-269f9b01eaa9	2021-12-18 20:17:38.652868+00	462	1424
1322	61694973-230b-4b20-ab2f-db651ad2adb5	2021-12-18 20:22:29.980873+00	137	810
1323	783fa8e9-a193-4bca-aa61-02ee17a83e6c	2021-12-18 20:22:50.443396+00	119	1229
1324	e1ea727f-cad8-4c94-8c86-7cab2ed57ec1	2021-12-18 20:24:56.141996+00	462	1029
1325	e3bd3e41-ea4c-46d1-a08c-b69d8c0b83b3	2021-12-18 20:25:26.827049+00	462	1029
1326	7651e588-be3c-407a-84f5-85960dd140fc	2021-12-18 20:42:35.750339+00	329	312
1327	583150fc-d74d-48b0-8aa2-82355ccea183	2021-12-18 20:48:13.136053+00	105	290
1328	3d727b88-a480-4635-bcc2-1b165e87df75	2021-12-18 20:48:49.338962+00	524	522
1329	aaaecdd1-1e57-4d04-ab8d-a6f8e37a7f3b	2021-12-18 20:53:16.542432+00	524	522
1330	6fdea704-4c76-4313-957f-0dfc64fd631c	2021-12-18 20:55:14.713617+00	331	312
1331	aba4c38e-ac68-4f76-8778-6b4bb0f2825f	2021-12-18 20:55:23.767514+00	119	810
1332	df23cece-723b-4351-a799-840acad5e8ca	2021-12-18 20:55:48.822+00	524	973
1333	871daa65-1656-40b3-8a25-5980c1c8665a	2021-12-18 21:03:25.260281+00	105	1215
1334	6a60f792-eb40-4291-b7eb-281b8b59d9e5	2021-12-18 21:03:48.524046+00	137	1215
1335	fdcaba5c-e99b-4650-a87f-a733010677d8	2021-12-18 21:03:50.293406+00	127	810
1336	067234a0-a55f-4b24-beb9-748d2f4e69a1	2021-12-18 21:10:19.550482+00	135	810
1337	67bcaf83-0b56-4764-971f-1c5276788725	2021-12-18 21:13:48.142457+00	463	1505
1338	7615c558-b057-407f-85f4-0eb14305149c	2021-12-18 21:15:41.187936+00	119	1333
1339	113d28c3-c0ee-4309-94b3-ee0f85e965b5	2021-12-18 21:24:38.741567+00	405	1505
1340	ef6aa575-5274-412d-8cec-ec427c81a156	2021-12-18 21:24:39.744883+00	520	983
1341	eaff7466-b72f-480d-a677-673caea36a3d	2021-12-18 21:34:12.40928+00	462	1490
1342	dcb28a2f-348d-4464-ae86-f5073c68cc85	2021-12-18 21:59:57.85584+00	462	258
1343	5b512e1d-2333-4d13-9ed3-ddbd4d074120	2021-12-18 22:24:53.946616+00	462	1626
1344	17dbbc75-5e48-4e48-bffa-5eae48ed10cf	2021-12-18 22:32:07.682018+00	520	1234
1345	97d2cf5c-06a3-4000-a7a2-18ecf54c22c6	2021-12-18 23:24:54.843279+00	105	973
1346	776ba3e7-768b-4001-8f6b-22a8cf1b0d9e	2021-12-18 23:27:18.37009+00	137	973
1347	93c024ad-c09a-4728-b106-728e438559e2	2021-12-18 23:39:02.11409+00	119	973
1348	3e35d249-1719-41e1-91f8-ae4a6a1afe4c	2021-12-18 23:44:25.609145+00	119	973
1349	56f5c008-478c-4e2c-b1c9-b6fda942cdfa	2021-12-18 23:48:37.34339+00	138	1232
1350	d5ce982d-9704-4a1c-8e0f-70caf61496f7	2021-12-18 23:52:26.71975+00	127	973
1351	32069435-a189-4caa-9355-1066e230aa2c	2021-12-18 23:59:18.072958+00	135	973
1352	8168c055-fb8d-4bf4-a159-7e773489bc38	2021-12-19 00:16:06.787239+00	462	1600
1353	c207f110-f482-4f1e-a7d7-b4d25cebd639	2021-12-19 00:25:30.053747+00	462	235
1354	f98615c2-939e-48c1-a99c-bff02faa8270	2021-12-19 00:27:39.596476+00	524	1426
1355	0bfedc9d-366c-4aa0-b890-67a2875baa30	2021-12-19 00:34:49.003564+00	138	810
1356	1fec965f-2f61-49f6-86b2-b0bb6eb166bd	2021-12-19 01:45:06.806511+00	462	1526
1357	faaab3bc-486f-49ea-ad25-8ac08dbdf44e	2021-12-19 04:14:56.169234+00	462	623
1358	bcbdddfc-aa37-45fe-9d89-86f6f171ce76	2021-12-19 04:31:34.525343+00	524	623
1359	b2cf39bc-ecc3-4e88-8dbc-ee55c9036fd4	2021-12-19 04:41:20.700498+00	138	1232
1360	e143071d-f7f1-4099-ae11-82d6b615d12e	2021-12-19 04:43:42.717494+00	462	1288
1361	dceb9b1d-9fe4-45e5-aff8-542d9976bfe9	2021-12-19 04:43:59.522551+00	462	1288
1362	1567d2ab-d916-4a8c-9df3-3b95a1f76b80	2021-12-19 05:00:10.82455+00	526	1232
1363	18e49ef6-d3d2-4c47-b1f1-dce128b32898	2021-12-19 05:00:29.04165+00	462	1527
1364	099733cd-0b49-4c27-ad23-2dfd04b2f322	2021-12-19 05:03:09.548496+00	462	435
1365	007b2edb-bcfd-4f66-9bcb-dcd0a327b8a7	2021-12-19 05:38:37.828013+00	462	929
1366	c017ac51-704c-408e-a229-a383fa26c1a8	2021-12-19 05:49:20.620958+00	524	1319
1367	ca60874e-4b83-4f98-914e-a86045b634eb	2021-12-19 05:57:02.740246+00	462	1241
1368	599818ab-0e62-4c45-90e5-8e5475ccf32a	2021-12-19 06:01:54.697963+00	462	412
1369	0b6a2e30-c0f8-48c3-8d27-2ba9dc75bb8d	2021-12-19 06:04:06.628828+00	135	335
1370	42bd31f5-f717-4de6-bff8-90d574333d7b	2021-12-19 06:08:13.266528+00	138	335
1371	a2f7baa7-06a5-41ae-8093-995c9dd37201	2021-12-19 06:14:03.137027+00	462	1012
1372	4b29d755-9364-4485-bb89-4e3b5eb2ef6b	2021-12-19 06:19:22.571802+00	526	335
1373	1ab37a29-9678-4783-8139-99e76b03fb37	2021-12-19 06:25:42.601846+00	127	1160
1374	85745b8b-4e18-498e-88ee-0fde1af7a326	2021-12-19 06:27:34.430152+00	527	335
1375	e115eca8-63c4-46e4-bcba-6f0f77261039	2021-12-19 06:29:45.848668+00	448	335
1376	44d7cdb1-d52f-434e-8bd5-c045228e4848	2021-12-19 06:32:24.529247+00	524	1549
1377	a3d2f94a-7309-4801-9a16-2f8b85506924	2021-12-19 06:33:32.798235+00	524	642
1378	c508bbe6-82c4-4c20-bd93-ea4c1e37b2ca	2021-12-19 06:37:45.882719+00	135	1160
1379	dfcb76ef-4b41-4c6f-a265-f93361d67452	2021-12-19 06:42:14.358961+00	105	642
1380	5013324a-8a88-4d39-ab08-d1efacc5769b	2021-12-19 06:44:32.158247+00	137	642
1381	c909dc1c-0c08-40dd-ac0f-11b394042d7a	2021-12-19 06:47:50.007706+00	524	996
1382	81dad0c5-abe8-4578-b414-d2d230b64008	2021-12-19 06:49:29.584938+00	524	1417
1383	6e9e146b-5934-4a1b-8587-c64cffc3739f	2021-12-19 06:50:09.899058+00	119	642
1384	137b4499-47eb-4c35-8323-65e100d719de	2021-12-19 06:51:24.276252+00	138	1160
1385	5afe21d9-f3a5-4c6f-bb1c-6f36067503af	2021-12-19 06:52:43.914787+00	127	642
1386	076e92e9-4464-4262-9bc6-4f30cdb25678	2021-12-19 06:54:49.259237+00	127	1001
1387	5aeb6365-430b-4537-a8a1-add4f81cac0d	2021-12-19 06:56:59.573799+00	462	950
1388	ab301d0d-11b3-40b5-91bd-1a015268f479	2021-12-19 06:58:25.016856+00	135	642
1389	5f427583-da9f-46d6-98e0-79647e9e9233	2021-12-19 07:11:04.294071+00	135	1001
1390	fde28624-507b-43ca-914d-0822d8b60bae	2021-12-19 07:16:27.378922+00	526	1160
1391	06ad9beb-2946-4b57-bba1-4c32bfe7e585	2021-12-19 07:21:55.788446+00	329	520
1392	5f6034dd-1b61-4999-9b14-1f7f88c2f7b0	2021-12-19 07:21:56.204095+00	524	1114
1393	4b49b2af-20d6-4cd4-afd5-c6c662baa75b	2021-12-19 07:22:22.866575+00	138	1001
1394	e78b7e03-73ff-4d6f-b33b-c076f42240cb	2021-12-19 07:28:49.127578+00	160	335
1395	7acfed65-d5eb-4368-807a-78ef8de5d644	2021-12-19 07:28:56.061438+00	462	520
1396	5c24c9ef-4b14-40aa-83de-9eb5cb3899bd	2021-12-19 07:34:31.884531+00	187	335
1397	5cd05b12-400e-467d-a32d-49d55f1d7e56	2021-12-19 07:45:03.461325+00	524	479
1398	b637f3d6-18ae-467d-bab2-23dc7f13a2ee	2021-12-19 08:00:30.599754+00	526	1001
1399	31d4c989-1140-4862-ba50-cd51c473acc5	2021-12-19 08:01:40.950367+00	119	1037
1400	9efd7d04-8af7-498d-b961-e09654ea49bb	2021-12-19 08:03:47.149304+00	462	1217
1401	0e13bc5a-ed90-40e3-a898-387e8a04d7b8	2021-12-19 08:04:05.460579+00	526	1479
1402	5e2a0685-dddf-4d12-a06e-3fe445589814	2021-12-19 08:10:15.328154+00	527	1479
1403	c3b7b976-e8ac-42d7-ae7d-9367fa29dfc1	2021-12-19 08:11:31.134264+00	105	1417
1404	5ff08b22-c36d-4a46-bbfd-99eaf2b8d0f5	2021-12-19 08:13:35.565995+00	137	1417
1405	83af809f-350f-4228-8dd2-090472556f15	2021-12-19 08:18:04.145096+00	105	479
1406	41ebd33e-7ea5-4d2e-9aea-614a455f885a	2021-12-19 08:19:23.564641+00	137	479
1407	c90aaeb9-3d9c-4043-87f3-d5b803ce95b0	2021-12-19 08:30:18.440709+00	524	977
1408	9da0dd30-e11b-4fe6-8ae3-6d61f613acc8	2021-12-19 08:31:01.908147+00	527	1232
1409	28ad0a82-4f5a-49c5-bf65-354b2bde89ab	2021-12-19 08:33:34.590248+00	462	603
1410	ca012ecd-c4e9-4772-bcbb-82d24fcc4ee5	2021-12-19 08:34:35.191066+00	448	1232
1411	59c23ec1-b33a-450f-9569-4972df9695f0	2021-12-19 08:35:18.559665+00	462	603
1412	6ca47bd9-adc5-4518-9192-88037c23471a	2021-12-19 08:40:19.193313+00	462	1104
1413	1db82b52-2fd9-451b-8b61-49c96ad40528	2021-12-19 08:40:40.229152+00	462	1104
1414	699d7799-5375-49ae-ba02-e7b117153e14	2021-12-19 08:43:08.419787+00	462	574
1415	7799995f-f0ee-4c74-ab72-4943fc9d1048	2021-12-19 08:43:19.685429+00	462	574
1416	a117723a-c8be-4f37-8a6b-35d6d741a271	2021-12-19 08:48:00.705726+00	520	335
1417	5fcd030f-1fda-4b33-bf6d-dd5c351778ab	2021-12-19 08:49:35.65914+00	524	1568
1418	91aef2b8-53de-4084-9675-941d903283ea	2021-12-19 08:52:21.682965+00	524	950
1419	e1e8a120-32f7-40f8-ac49-4079c99f8275	2021-12-19 08:52:58.010781+00	119	642
1420	53b89d60-233a-44a6-97dd-76f87d506bba	2021-12-19 08:53:37.169826+00	127	642
1421	9cf8ae71-59de-4a3a-b012-da776e2b0ccc	2021-12-19 08:54:11.406493+00	135	642
1422	72a4008a-f5f3-407c-bb6d-7fd3317a8ca4	2021-12-19 08:55:14.101759+00	462	829
1423	adb626fb-a985-402a-87a3-b4881315a632	2021-12-19 08:56:04.441104+00	138	642
1424	9e081b2c-ec08-4193-a343-7a9d5af99bc6	2021-12-19 08:56:15.109298+00	464	703
1425	b9857917-cf77-40bb-bc86-c53a86e89996	2021-12-19 08:59:13.080306+00	526	642
1426	0b628487-7069-4a15-ac54-95f58890edb1	2021-12-19 09:00:08.721624+00	119	479
1427	32100846-2e29-4287-9fe0-2cf2f6908dd2	2021-12-19 09:00:15.567888+00	527	642
1428	bb74b172-f6e8-4846-b88e-23f9011eecb5	2021-12-19 09:00:30.053769+00	462	602
1429	c4cd54b8-33c5-490a-ab80-d1f1952b16d2	2021-12-19 09:01:48.683852+00	462	514
1430	75687cb7-7b2d-4101-a7ad-d5176fa78fb2	2021-12-19 09:05:51.950068+00	462	496
1431	211672d9-e060-42ab-bc2b-cb4d6bc1d01d	2021-12-19 09:07:41.007097+00	105	1426
1432	ca8c30e8-fd43-4bd4-aaa3-1736917f89be	2021-12-19 09:08:05.553308+00	462	642
1433	12981506-fc65-4965-a11a-84bbedb1a99c	2021-12-19 09:11:10.695654+00	137	290
1434	96d0f634-ad14-4a6f-973a-d3a1404d6106	2021-12-19 09:11:11.770662+00	524	642
1435	b6b5ebb9-04c4-492f-a867-5758450ca1b4	2021-12-19 09:14:33.812183+00	524	1511
1436	5806bbe6-2418-485f-8e98-6025b1bf4203	2021-12-19 09:18:25.247894+00	105	446
1437	2a181c1c-2714-4697-81d3-6c7ff86982c6	2021-12-19 09:18:59.223119+00	462	1442
1438	83eb0e43-884a-44f1-880b-f1c3fc81a364	2021-12-19 09:20:04.133914+00	137	290
1439	a22c5603-8ce0-4c08-a70f-2d83bb369889	2021-12-19 09:20:18.684769+00	462	922
1440	ae3ab722-d679-47c5-bbc1-53e570c59bd3	2021-12-19 09:20:52.451753+00	465	703
1441	0299d104-1a78-4197-a580-c8569bdd79f5	2021-12-19 09:21:24.668958+00	119	290
1442	bf3943b7-0775-48c7-a6eb-30085b6f06a3	2021-12-19 09:21:53.331488+00	462	518
1443	cda07133-630f-4f9a-b149-426a94b60adf	2021-12-19 09:23:39.121553+00	527	1001
1444	fef33625-b09e-4941-adfa-0850dd67a140	2021-12-19 09:28:01.881121+00	526	810
1445	7833d5e7-21f5-4c65-becd-e37d31c70be6	2021-12-19 09:29:33.065697+00	448	1001
1446	292225ca-1d3d-4de1-9550-cf87ad7ccb7f	2021-12-19 09:42:12.289279+00	138	325
1447	a8a57dba-ac7f-4303-9d7c-9a48b92c35c7	2021-12-19 09:46:14.701537+00	464	413
1448	e49c36ba-4479-4030-a901-834847e57e88	2021-12-19 09:52:51.979434+00	105	555
1449	83b68be0-9376-40b0-a612-5532441c4d18	2021-12-19 09:55:33.882118+00	462	1627
1450	cbc8d039-57c8-4361-863d-ba69888f53d7	2021-12-19 09:55:54.934132+00	105	1117
1451	eb5c0ff5-4de0-4363-8e1b-57fad301c116	2021-12-19 09:56:25.410864+00	137	1117
1452	0500fc41-f1fd-4ab9-b9ab-37cfadae0dc7	2021-12-19 09:59:51.244395+00	137	555
1453	e4e218fb-601e-4077-99eb-1d63005c837b	2021-12-19 10:01:27.010237+00	524	435
1454	7841ac74-10e0-4ddb-89b6-6b923e38e22e	2021-12-19 10:06:43.715085+00	524	922
1455	bf8b11fd-c3d2-4c63-aaca-da117b69eb67	2021-12-19 10:08:11.896867+00	119	555
1456	664188c7-6b6c-4e7e-8524-7bf53c1d07d9	2021-12-19 10:14:18.151472+00	127	555
1457	18e764bd-0842-4b0c-927e-e678d6cd44e7	2021-12-19 10:19:53.441395+00	135	555
1458	a6076f82-5058-49b3-bd65-3489923ae92d	2021-12-19 10:21:21.549858+00	462	1360
1459	aaa1bdb0-4af4-40aa-9267-81dbe699f312	2021-12-19 10:24:24.382899+00	465	413
1460	cede45e6-cbd4-425d-9ae7-c7120db69e0b	2021-12-19 10:24:48.649071+00	462	1089
1461	61e98d43-d8ad-49c2-b5f7-a613b90c2173	2021-12-19 10:27:55.330936+00	462	1524
1462	f0abf412-7793-460c-bb1c-ec9c7fd3ab6b	2021-12-19 10:29:26.99485+00	462	953
1463	8e2c6069-937e-43f3-9646-fc6113cc95fa	2021-12-19 10:30:09.719658+00	462	1631
1464	e7cf9b8a-c6e1-49f6-a551-36e818c6e20d	2021-12-19 10:30:14.581839+00	462	1524
1465	d741c630-2e3e-4cc1-9c01-d5e9c00f69f9	2021-12-19 10:33:29.548287+00	462	313
1466	7d16be4e-613a-475e-a28a-bb7c0a540fe0	2021-12-19 10:37:55.184809+00	520	203
1467	26968924-9964-4543-a8bc-37d5e2179389	2021-12-19 10:39:08.48883+00	466	413
1468	b9f14341-b07b-493f-aa7d-b985aaa90b66	2021-12-19 10:39:29.574791+00	467	413
1469	d4af225c-1897-4e44-b559-c271029b244b	2021-12-19 10:41:54.403335+00	160	254
1470	2d8afa81-241f-4154-aaf1-f2a40969c392	2021-12-19 10:42:02.717512+00	468	413
1471	e8b2acec-2a0d-458c-a025-20cbc7bef106	2021-12-19 10:47:51.457307+00	524	1399
1472	62a8509a-d14a-474b-8985-26a95047306d	2021-12-19 10:49:42.012549+00	187	254
1473	7af28ed3-11ff-4e6d-aecc-5018be1e69dc	2021-12-19 10:50:33.865267+00	462	1191
1474	a9e7a552-8fdc-4df6-b035-a430debed60d	2021-12-19 10:50:38.221286+00	470	313
1475	353e1a4b-a591-4526-89c1-aeebe90ec09b	2021-12-19 11:00:14.927727+00	393	1104
1476	5df8298f-d287-4a85-b164-8bb5afeb43b9	2021-12-19 11:03:39.660414+00	462	259
1477	db8485db-3df1-4711-a98f-c63520336884	2021-12-19 11:05:46.595352+00	462	131
1478	572e0159-8e09-4c10-a566-ec8d2aa8868f	2021-12-19 11:05:52.953606+00	462	1491
1479	8623f36f-5645-465b-bdbe-8e733041e7ba	2021-12-19 11:08:18.52194+00	469	413
1480	ae44d566-eb58-4d9a-b8d4-d38129d357c1	2021-12-19 11:09:00.351684+00	462	611
1481	8e9a89f9-bcd6-4c8d-bb8c-7482444fc97e	2021-12-19 11:19:55.79096+00	466	703
1482	4b4e7a34-db7b-4041-8acb-796cc52a825f	2021-12-19 11:20:13.928525+00	467	703
1483	cd4c28f7-79b3-4cad-bbb8-e0ef1404819a	2021-12-19 11:20:29.538623+00	468	703
1484	b87112e9-d007-417f-bada-07287c05e2c5	2021-12-19 11:23:48.567467+00	464	501
1485	bb5283e1-a592-41c6-8666-b513dc82b0c5	2021-12-19 11:24:43.173514+00	468	703
1486	d4202d05-cf81-4146-b29c-541981475032	2021-12-19 11:33:11.230388+00	462	1640
1487	6d5826a8-1576-433a-9de1-02b3a17dfc99	2021-12-19 11:33:34.743925+00	465	501
1488	3d83c832-aebd-4b4e-914f-f65da094f02f	2021-12-19 11:36:08.114771+00	469	703
1489	24661e3f-d1a8-4e35-ba8e-bbc614adaed5	2021-12-19 11:37:51.062188+00	329	435
1490	1908a751-3bdf-44e0-b61e-5d6a6e2e6a95	2021-12-19 11:41:25.262481+00	524	494
1491	2dda5262-225b-4542-82f5-236a1dc36470	2021-12-19 11:46:17.392592+00	462	1642
1492	d52ba1eb-acc7-43fe-8e22-fe8e9e62af5c	2021-12-19 11:53:54.646623+00	524	1527
1493	3da563d1-2f2a-4163-9dd1-a6c57268fd63	2021-12-19 11:55:16.900123+00	524	1207
1494	3ffb7f46-f598-4ce4-915b-e8ee449e0f0f	2021-12-19 12:00:36.277593+00	524	1237
1495	999f3c11-0c4b-4495-ba1d-66dbb60a28b6	2021-12-19 12:05:30.425266+00	524	259
1496	7841a075-2248-48e7-a568-b0cf068658cb	2021-12-19 12:10:54.10119+00	524	1237
1497	2a647581-1735-4d55-9258-f82d75ff7ae3	2021-12-19 12:17:27.80032+00	524	1640
1498	e0573a12-3a00-4afa-a37c-c311e54a33c4	2021-12-19 12:19:16.168607+00	105	1527
1499	2893f451-c03f-4e67-9268-70ca66592d0f	2021-12-19 12:21:15.580653+00	137	1527
1500	209baef7-b2e5-4043-9f34-984ccc27b406	2021-12-19 12:25:55.708428+00	524	1306
1501	2f586b84-cf6a-4190-8a0b-cbfa1c1fe366	2021-12-19 12:27:38.304446+00	462	1491
1502	bde2e7e8-4db5-4482-8052-5358e6933a55	2021-12-19 12:29:20.179907+00	119	1527
1503	6bd70cf5-116a-4cbb-894d-aa853780f31b	2021-12-19 12:36:09.569268+00	127	1527
1504	0e391b37-e6d3-4a22-b7e9-9e5dce38a514	2021-12-19 12:38:53.717662+00	462	476
1505	65ca1c5e-6aa4-4250-ba1a-f4b1941dc6c1	2021-12-19 12:42:05.752843+00	524	1491
1506	49279268-550d-46f1-b32a-ea181c22b966	2021-12-19 12:43:03.891039+00	135	1527
1507	8cca8860-ce19-45dd-9087-8ba75c70822c	2021-12-19 12:43:06.501255+00	462	1550
1508	803481fd-bea2-495c-be7b-f83d757a0498	2021-12-19 12:43:36.6241+00	138	1527
1509	823ca6df-5a11-4bba-b5cf-71612608d14b	2021-12-19 12:52:52.066087+00	526	325
1510	56d260ec-0bf5-4990-879b-f6511eb5cbc6	2021-12-19 12:54:50.334858+00	526	1527
1511	81133037-1c15-49a5-98a9-2e37e4cb6d4d	2021-12-19 12:55:35.494361+00	127	1229
1512	c224a5d0-68c7-4323-be89-258aca839531	2021-12-19 13:01:02.459598+00	105	996
1513	4ac3182b-2324-49c2-ae0c-85c994cd2d79	2021-12-19 13:03:01.979956+00	137	996
1514	0964baf5-6e2b-4466-85df-839b90c0b6bd	2021-12-19 13:05:35.095442+00	524	1463
1515	8c97053d-0d7d-432f-9c73-508870d93c0b	2021-12-19 13:10:13.426133+00	462	540
1516	bb135b94-6afe-489d-ba5a-31a804156865	2021-12-19 13:15:29.957+00	524	514
1517	0fb77f59-7781-4130-94d8-90b34f7eae46	2021-12-19 13:29:06.560159+00	524	141
1518	5df389b3-0ade-4b67-b54c-7209fe858541	2021-12-19 13:36:49.295665+00	462	824
1519	3d4557c5-e2bc-469f-b5dd-96a673912e9b	2021-12-19 13:45:43.767214+00	462	592
1520	0142ac00-98af-4d87-be35-923ace407f8f	2021-12-19 13:47:48.673706+00	527	810
1521	51cb7681-2080-4a10-a121-59af79d770b6	2021-12-19 13:48:15.301475+00	524	1191
1522	fec7de35-41fa-44f0-a00d-341615b852bf	2021-12-19 13:49:07.825018+00	105	1207
1523	08e95838-c712-4929-b97e-5cb787edd7ae	2021-12-19 13:50:10.73903+00	448	810
1524	ac7a8980-07e9-43a4-8453-d54b51060b52	2021-12-19 13:54:45.005394+00	462	750
1525	0e6b007e-f6aa-43c7-806b-0f3437250bb5	2021-12-19 13:55:01.820362+00	464	1648
1526	09a5b850-4342-4154-8a1d-6b13ff504ced	2021-12-19 13:56:48.417617+00	520	162
1527	eab9a3e5-8f29-408e-9ff9-3c1a2f3b533f	2021-12-19 13:57:03.379594+00	105	950
1528	90ad8105-ceb5-4cbc-8cfb-f6ec59c745e8	2021-12-19 13:58:29.88808+00	137	1207
1529	252a1f55-b889-41ed-941e-0e561668c08c	2021-12-19 14:00:12.777751+00	137	950
1530	f83a18e5-0646-466d-b811-c34102ac3790	2021-12-19 14:00:45.469836+00	137	950
1531	276b25eb-4530-4ac4-a38e-978a8ac0d760	2021-12-19 14:03:23.406175+00	105	1191
1532	d183544e-e9d4-4fe5-ac28-3eaefab00b31	2021-12-19 14:03:49.663605+00	462	272
1533	d197f363-abaf-446b-b904-a67b83237772	2021-12-19 14:05:28.782027+00	137	446
1534	f4186b63-3e59-4be6-955f-a61b379bb9ad	2021-12-19 14:07:09.151019+00	137	1191
1535	ff932a19-5e51-48b0-9382-efaa1db0de70	2021-12-19 14:08:12.510869+00	462	1641
1536	cd6721b0-e196-4437-a4de-d7fb6aa15f13	2021-12-19 14:08:33.053295+00	462	1641
1537	a0ee7e0a-ec9a-447d-b69c-ec4523d94767	2021-12-19 14:12:09.777111+00	119	950
1538	3e0a3343-1ddb-4ea6-a781-bff1e2c83d53	2021-12-19 14:13:11.92714+00	119	1191
1539	49a74420-ef3d-4c99-ba0b-2ca8cfbc8108	2021-12-19 14:20:34.675408+00	524	1237
1540	a25af224-3627-4489-8ff1-5f91cb05be23	2021-12-19 14:22:16.149848+00	462	604
1541	975e17c5-4021-4382-a942-c33c497602bc	2021-12-19 14:25:58.398413+00	448	642
1542	ab14b606-4cbb-464c-84f2-0c6a6dbfb93d	2021-12-19 14:26:07.244332+00	524	1237
1543	e1fad5d2-2583-41df-933e-c02330b844e8	2021-12-19 14:27:12.55693+00	462	1436
1544	1a00b82f-bd40-4366-a1c9-f24fcf675e4a	2021-12-19 14:28:23.51196+00	105	1306
1545	2d87600a-1804-40b0-afe1-12c65ee309e5	2021-12-19 14:28:55.316524+00	462	1428
1546	e8573e40-28e5-47b2-8561-23c364508c27	2021-12-19 14:29:13.48169+00	127	1191
1547	f66cb22c-fc92-4970-a06f-7fd8477820e3	2021-12-19 14:29:24.91494+00	462	1222
1548	3a66261c-224f-49e0-8786-264d47b72279	2021-12-19 14:29:33.295688+00	464	945
1549	08f1aceb-2451-407e-a81d-84241233b740	2021-12-19 14:30:39.287709+00	524	1237
1550	ea1bff83-1fe2-45d7-a7e0-01ba0c263031	2021-12-19 14:32:40.718874+00	524	1631
1551	75e0b538-9d45-4e85-a19a-5c5aedcd0619	2021-12-19 14:33:10.874804+00	135	1191
1552	4d78c0bf-b7e1-44df-b012-de520ed3d10b	2021-12-19 14:34:19.318554+00	524	1237
1553	773a7255-bdc3-40be-b96a-05a6726155df	2021-12-19 14:34:48.88716+00	137	1306
1554	04beaff5-a023-4786-ad4c-805a31048225	2021-12-19 14:34:55.593058+00	137	1307
1555	2f820c81-ac58-4742-8bbc-a8f6c2fce768	2021-12-19 14:36:29.375108+00	138	1191
1556	c086330c-cb26-4c3b-b44d-d715d4e51659	2021-12-19 14:36:38.055174+00	466	896
1557	fdc2b357-8986-4646-a3ce-8f900a229e75	2021-12-19 14:38:05.987151+00	105	1640
1558	7f191c28-dd3e-4b4e-b348-f295b147b3c6	2021-12-19 14:39:32.720729+00	465	945
1559	30c40b8f-e8a3-4d25-8ad6-96ff5bee773a	2021-12-19 14:40:28.016368+00	467	896
1560	0f16b6e4-0deb-409a-a826-58fdf4633892	2021-12-19 14:40:56.313959+00	524	953
1561	de0b98a4-3a04-4878-bb4c-a9d69fa7c235	2021-12-19 14:40:57.945824+00	462	1614
1562	6e51cd82-2096-4851-976b-56d37ca861ac	2021-12-19 14:41:07.921249+00	462	1614
1563	07351f14-fe87-47be-9113-fd5324906677	2021-12-19 14:41:10.129047+00	160	642
1564	c3c49a4a-0c0e-4b65-9327-f2ca42946a62	2021-12-19 14:41:16.544265+00	105	1114
1565	00b5d223-219f-483b-a622-2f26e2166880	2021-12-19 14:43:30.308931+00	468	896
1566	b9df8881-0ad7-46fc-80b1-b22e18fc6477	2021-12-19 14:43:31.242182+00	466	945
1567	5519ebfa-43b0-4e57-9874-ecdad52885f1	2021-12-19 14:44:18.841678+00	462	542
1568	0fbb6998-2aa1-4ebc-a1b9-b14db48d66bb	2021-12-19 14:44:53.770389+00	462	1359
1569	08b8043f-0a57-4310-9e61-196f40211fc9	2021-12-19 14:44:57.190831+00	467	945
1570	feb13860-715f-4aa5-8949-d95b828d41b5	2021-12-19 14:45:02.035592+00	329	162
1571	477eeec1-be77-43e3-be67-9763195e7975	2021-12-19 14:47:19.961033+00	468	945
1572	5f2192fd-8a5f-46b6-a7bf-db6f03018804	2021-12-19 14:47:22.007061+00	526	1191
1573	dd3e410c-b4b4-4387-aa45-10b8c1533924	2021-12-19 14:47:38.396832+00	119	446
1574	bf0352fc-5924-446e-8332-7c9a95bcf83b	2021-12-19 14:50:09.414442+00	462	1359
1575	89d6841f-11dd-4d0a-8284-52375efcf75c	2021-12-19 14:53:17.350611+00	469	945
1576	3cc1eac7-2a51-45ac-8843-2e655e460564	2021-12-19 14:53:27.328113+00	469	945
1577	979006d8-b2f5-4aa7-8eb8-a2dad38e54f0	2021-12-19 14:53:44.13499+00	527	1191
1578	ead29376-6ac7-4d14-a486-593303542352	2021-12-19 14:54:07.791481+00	105	259
1579	42dd7d3a-62b4-4489-9dad-67c471029f03	2021-12-19 14:55:32.846308+00	448	1191
1580	1792f4c9-8d04-436c-897f-98081f239449	2021-12-19 15:00:21.511553+00	462	395
1581	1e076e16-4219-42fd-8b56-017446abf5b6	2021-12-19 15:00:56.649266+00	462	351
1582	7623c822-a71b-4326-bd17-ba2b67aebadf	2021-12-19 15:01:53.190761+00	137	259
1583	bfac5877-0607-4057-a468-2d1fc5bd34d8	2021-12-19 15:03:49.038569+00	187	642
1584	62a194c9-0928-427e-a16c-8b8b3c769bfa	2021-12-19 15:04:41.457831+00	462	1086
1585	1fae94fb-0149-46cd-8375-abccef356758	2021-12-19 15:06:06.526701+00	462	618
1586	88f947f6-508b-472d-bd7e-f6869f34d8a0	2021-12-19 15:08:12.832237+00	105	953
1587	6ab3723c-0c8c-4d36-bb0b-5d1b71b729c5	2021-12-19 15:09:05.989523+00	462	1652
1588	d8230046-890e-47a9-9293-2dca570617f0	2021-12-19 15:09:38.94982+00	119	1306
1589	45654a58-eb02-4f5c-9d64-88a20f1029fd	2021-12-19 15:10:15.020199+00	119	259
1590	f4b36760-1156-4c31-999a-c527cb45b0aa	2021-12-19 15:12:38.52253+00	137	953
1591	7bd94e74-2ef8-4423-ae6b-f51ae2bab4fa	2021-12-19 15:13:18.141915+00	160	1191
1592	be305f53-f375-42f2-90af-5864d623d284	2021-12-19 15:14:20.107176+00	462	971
1593	719afd47-3aeb-4812-adce-987ce085af1c	2021-12-19 15:15:28.511712+00	468	896
1594	99fb13b3-13e9-4ac6-873c-72cfe65eba27	2021-12-19 15:20:48.846076+00	119	1307
1595	d8009886-67d4-404c-8868-ea1cfee05c45	2021-12-19 15:22:39.452299+00	524	272
1596	b6939f47-038e-4cff-97bb-2d3cc3c35a4b	2021-12-19 15:30:14.817964+00	119	953
1597	c6dcec13-48f7-4180-aec8-b9fb359bcb7f	2021-12-19 15:30:19.98222+00	469	896
1598	bffdb068-2a5d-4c00-a9ad-6b903cdf5867	2021-12-19 15:30:42.511616+00	548	1365
1599	54c49bb0-51bc-411e-8a6d-15be026ecf46	2021-12-19 15:32:23.940357+00	127	1307
1600	204499d8-7bc6-4087-8452-f8186573cdf2	2021-12-19 15:32:42.016691+00	524	824
1601	9f21f0b2-affc-4128-a749-a57d1cd28495	2021-12-19 15:33:57.57341+00	127	1307
1602	3ffe1bfb-3bc5-4dbf-9c1d-828ba71c05a5	2021-12-19 15:35:44.629236+00	462	109
1603	77377770-d017-4421-9317-3b303fb6be1c	2021-12-19 15:36:56.776544+00	127	1307
1604	da535466-6758-43fb-ab4d-9cd7b3ff092e	2021-12-19 15:42:11.333801+00	137	1640
1605	2012ad13-ca43-4e5e-9425-088d50d41a3a	2021-12-19 15:45:03.702947+00	160	1232
1606	1319eb9c-52cd-481c-bc3c-eeb276cae268	2021-12-19 15:45:29.00595+00	160	1232
1607	fcf7bce1-8ce9-4311-8374-270fca797c0d	2021-12-19 15:46:19.301011+00	462	1644
1608	514d4a99-25d2-40b1-aa67-37b898138913	2021-12-19 15:46:52.960857+00	462	1644
1609	b35e7f3c-7a48-44e6-aa2c-8ab100eb0d99	2021-12-19 15:47:29.276972+00	127	446
1610	ac09b475-5ea5-435e-829e-bc746bbd2190	2021-12-19 15:48:00.105423+00	105	1491
1611	e39db665-f393-4df4-a055-1db7c26c7a43	2021-12-19 15:48:33.908623+00	524	1436
1612	9e3dfe53-da48-4802-ade3-bbd96cc24d3d	2021-12-19 15:49:58.285662+00	463	1062
1613	72c819ee-a9b1-4217-b4bd-2b75a6381e0f	2021-12-19 15:53:59.113349+00	119	1640
1614	41925131-b025-4767-a44f-d09112b67a48	2021-12-19 15:55:05.088291+00	462	1516
1615	550e2e10-41d0-4d80-8f67-3df105428877	2021-12-19 15:56:36.219465+00	524	1360
1616	0138c1cd-9fbf-4d59-88bd-53c29b6bb2f5	2021-12-19 15:59:02.08586+00	524	351
1617	834188b4-40e5-44af-ae83-75b391c9063f	2021-12-19 16:07:42.226105+00	462	790
1618	c1b37e9f-523e-4a47-ad8c-bd3c43f973b5	2021-12-19 16:08:58.648235+00	331	162
1619	e3cd257c-7e8d-4041-b066-9d765d4ab7d1	2021-12-19 16:20:28.562833+00	462	1398
1620	643efcc9-6337-41e4-bce1-e2d7c354ba74	2021-12-19 16:29:47.050613+00	187	1191
1621	907850fb-8fb0-4673-a1db-64393eaabd89	2021-12-19 16:30:35.634538+00	524	1523
1622	c9d61438-de4d-4639-beb4-d18172303f6c	2021-12-19 16:33:56.899039+00	105	514
1623	794d895d-ec0a-4975-8d00-0b95de3941d6	2021-12-19 16:33:57.630814+00	462	708
1624	915f37af-eaee-4bd3-9f52-1e46f9da84f1	2021-12-19 16:34:23.902727+00	137	514
1625	020bf963-d122-4e7f-b93a-80faca759417	2021-12-19 16:37:27.095849+00	462	896
1626	61067d08-3121-47f7-8a29-e1c8cdea8bdb	2021-12-19 16:37:41.317409+00	524	142
1627	0f42bd8a-4c3f-4cc1-bdf8-6a8f267c3810	2021-12-19 16:41:11.287347+00	520	1191
1628	0992b5d0-baa6-4109-a0d1-76eb36660085	2021-12-19 16:48:15.584141+00	160	489
1629	ea8bd7b3-8a8f-4ab6-a766-ffef00b9f111	2021-12-19 16:48:30.594826+00	105	1106
1630	9324f9de-0e82-4d69-bb6b-22ca11f741c8	2021-12-19 16:49:08.332117+00	137	1106
1631	baef314f-a76c-4d36-8299-c9ed1ff8107d	2021-12-19 16:49:16.719774+00	137	1106
1632	cdbcc737-4f4e-4378-913f-dcd165fc55a5	2021-12-19 16:52:15.121214+00	127	196
1633	3cb09e9d-147c-4911-ba6f-83bf988330b9	2021-12-19 16:53:52.506033+00	520	1615
1634	5204fedd-41fe-43d0-8fe5-7af095b0892a	2021-12-19 16:56:10.875895+00	464	162
1635	5a1db942-76bc-4890-89dc-daf8ed8ecf22	2021-12-19 16:57:19.942081+00	524	603
1636	e4c981c8-689e-4ae3-83e0-484a80b163ed	2021-12-19 16:58:44.434785+00	462	395
1637	85886272-2611-478b-9371-7aeac80a4240	2021-12-19 16:59:50.618406+00	462	1421
1638	43fe883d-73fe-4c71-bde0-c6ed512d143d	2021-12-19 17:01:24.732999+00	105	242
1639	89e8782c-4c59-4fc1-8393-7f14d854aaa2	2021-12-19 17:02:38.875464+00	524	977
1640	bdc77f53-cbf0-41cf-8afa-ccbe884fd81b	2021-12-19 17:04:51.24562+00	520	642
1641	23de3c33-9114-4556-83d3-5c65cf56c9a4	2021-12-19 17:06:20.32825+00	462	708
1642	1f22ad59-1b0e-4b89-9772-1a8622193467	2021-12-19 17:09:10.419065+00	524	395
1643	ec480ab8-be0a-4586-8186-1b4c1340cca4	2021-12-19 17:09:26.268191+00	548	642
1644	48fbc641-992e-4825-9a44-416ef1d9ea1f	2021-12-19 17:11:21.628198+00	461	642
1645	8ee8e8ff-5105-488b-bcf3-8e88ba74fa4b	2021-12-19 17:13:52.835716+00	119	1106
1646	52d0524d-a042-41c4-9fea-51f4b7dc6a5e	2021-12-19 17:16:57.362901+00	127	1306
1647	2e9014d7-8883-43d1-ab99-3f09566d62a9	2021-12-19 17:17:57.294416+00	462	703
1648	073b9152-9eb4-4645-b18b-27cc9b956776	2021-12-19 17:24:20.363003+00	462	931
1649	3631d171-3e28-40bf-a1c0-9812901ce70f	2021-12-19 17:27:45.957826+00	105	1523
1650	934d7791-9cef-4fc7-a706-9a120d721187	2021-12-19 17:29:55.085949+00	462	1604
1651	3df901ba-372c-4452-8c73-ce42ce1527fa	2021-12-19 17:30:25.145893+00	137	1523
1652	42669162-3638-4304-b9e7-91eb35848c20	2021-12-19 17:30:46.209089+00	462	1657
1653	d5046ee0-9638-4791-815d-3741b5c83726	2021-12-19 17:32:20.401767+00	105	1568
1654	67353dea-5b87-4b04-a3ae-01ec6a2a6324	2021-12-19 17:32:55.934934+00	524	931
1655	fcaf562e-dc64-47eb-bdfd-1b42747ee638	2021-12-19 17:33:21.803891+00	137	1568
1656	f7880b08-7a39-469b-a65e-577372b4b431	2021-12-19 17:34:23.86332+00	548	1191
1657	ca139c0a-04fe-4bc7-b121-9d35de9cd9a5	2021-12-19 17:38:10.151113+00	461	1191
1658	8780d72a-2d4a-4788-b7b2-9eed64d88190	2021-12-19 17:46:25.570262+00	329	642
1659	23255a76-0cc2-4042-b632-c1c52f75afbe	2021-12-19 17:46:41.106213+00	462	750
1660	bdf6ee83-e3f7-449e-9923-7c87d5e69a02	2021-12-19 17:49:54.092615+00	524	1211
1661	ad927f29-b503-4793-ac41-d4204b1a984d	2021-12-19 17:50:28.124176+00	462	1660
1662	b01844c9-14f8-43f1-939c-326a15ec303b	2021-12-19 17:52:01.811815+00	462	1212
1663	fa3c7061-58b2-42ba-a88c-ee64629ef76f	2021-12-19 17:52:45.850389+00	462	1664
1664	3183fd48-1973-472d-8832-0b1f53f06046	2021-12-19 17:56:56.12683+00	331	642
1665	7cf1293e-f7fd-47b9-b08b-9d413fd3e3dc	2021-12-19 17:57:18.898538+00	393	642
1666	ff1b86e0-46ae-4cb8-a32f-1d487a44b24a	2021-12-19 17:58:36.640169+00	524	1211
1667	33b2b744-9d50-473a-88f3-4091f3c0e94b	2021-12-19 17:59:52.070888+00	119	487
1668	ad1cd84c-2f95-49da-8ada-74232b17f0ba	2021-12-19 18:00:16.401149+00	463	642
1669	1076107c-3c5b-48f0-8551-86abbc9670e8	2021-12-19 18:00:56.456818+00	127	487
1670	b5f8906c-1fdb-4880-8847-f9cafc63d912	2021-12-19 18:02:11.561519+00	119	1568
1671	7315b109-470e-4840-aff1-16043fbceb18	2021-12-19 18:03:25.712756+00	127	1568
1672	e5c4d021-be88-4ff2-9b61-fffe9728f42a	2021-12-19 18:03:54.724503+00	135	487
1673	7af2c0c2-acee-4c8c-b5c7-ce6ae7a9b41d	2021-12-19 18:05:12.548878+00	135	1568
1674	5f3cee5e-8445-44f0-9823-143834878f13	2021-12-19 18:08:23.313928+00	548	414
1675	9d82e4c7-7be1-4683-ac0e-51206b7d4485	2021-12-19 18:09:55.342894+00	461	414
1676	535d380b-5896-4184-aadd-e23354e73153	2021-12-19 18:10:40.532396+00	461	414
1677	963b4952-a8f9-47ff-b58c-1a072213b10b	2021-12-19 18:10:44.606728+00	127	1106
1678	79718a5f-5faf-421e-845f-4bdb16083a68	2021-12-19 18:12:47.977093+00	135	1106
1679	c61ae0c7-2a4e-4c6d-919f-f15188eaa946	2021-12-19 18:16:58.439202+00	138	1568
1680	9e0f045d-46f6-4ba1-bcf5-4572b4bf4139	2021-12-19 18:18:30.890719+00	105	142
1681	73ad5759-8340-40e4-a634-e3a0d485f2c4	2021-12-19 18:19:06.92114+00	138	487
1682	62d976a1-9b3d-42e6-904c-9c005ee1e379	2021-12-19 18:19:15.391856+00	462	606
1683	1ec5f40a-6417-4250-9925-46620feaaec1	2021-12-19 18:21:41.72673+00	137	142
1684	af84fe66-b162-48f9-a351-3ac8e9fc7474	2021-12-19 18:22:32.583185+00	548	203
1685	c012ba7d-e441-408b-9b5a-4a2e96cb29eb	2021-12-19 18:23:05.958256+00	462	764
1686	53d102a5-9ac0-455e-ad1d-bd9455a29a1b	2021-12-19 18:24:00.662818+00	461	203
1687	7a4f733a-5eeb-417f-94d9-22aad59c4fd3	2021-12-19 18:25:42.523528+00	462	961
1688	835ebc50-a320-4c1d-b8ee-5c7f3cbbd08c	2021-12-19 18:27:34.412944+00	520	1081
1689	80d8c42b-76d2-465a-824b-3b40a52207f1	2021-12-19 18:27:43.610967+00	526	487
1690	6b1e8623-11a8-4a0a-a128-61ebf2a3ec0b	2021-12-19 18:29:35.663764+00	462	1604
1691	ba3f3b48-8fc9-4cd5-8c79-75400bf5985c	2021-12-19 18:31:53.176081+00	462	1604
1692	57908b15-40aa-430a-87e6-acaa685a40aa	2021-12-19 18:32:17.672278+00	526	1568
1693	61733ab0-54f9-4144-942e-017911157590	2021-12-19 18:33:02.636132+00	105	667
1694	e5c29ab8-9c43-48ef-a5a0-0e4ef066cc14	2021-12-19 18:33:50.524463+00	462	166
1695	b5d4deb9-9c80-4f09-a5c0-aa023de4a91e	2021-12-19 18:34:39.720082+00	524	1641
1696	44a12f21-28a5-4aa1-90e7-0560b84dce49	2021-12-19 18:35:13.671784+00	137	667
1697	28f456f4-16ae-4356-9fa9-fdf13db311e0	2021-12-19 18:37:19.700708+00	462	1662
1698	7f20cacb-01e0-4e91-97cb-3d49b51c38bd	2021-12-19 18:40:34.330476+00	462	223
1699	aee261a1-26ed-4eff-9036-e5b0da123873	2021-12-19 18:42:17.326201+00	462	1667
1700	32cd98ad-dcfd-4045-a9fa-ff16dac90262	2021-12-19 18:43:31.773568+00	527	1568
1701	74496dc7-750a-4103-bea4-2ac27c9429c1	2021-12-19 18:44:17.029961+00	462	484
1702	79c8ae16-20f3-45d9-bff6-06e380e67dc3	2021-12-19 18:44:26.008763+00	119	667
1703	27e7a92b-29c0-48e0-85bd-49e09abd825f	2021-12-19 18:45:22.489427+00	448	1568
1704	79226349-83a6-4bc9-9016-4ba913b01709	2021-12-19 18:47:33.674682+00	462	1668
1705	d25b1324-f456-4eea-918e-f31685a7e424	2021-12-19 18:48:37.507095+00	462	918
1706	07af8986-839f-4704-8705-15a6f5a08d62	2021-12-19 18:50:09.799117+00	462	400
1707	29667834-45ac-449e-81bc-dd5b9d19a78a	2021-12-19 18:55:16.577797+00	524	1660
1708	61f93fb3-82a2-4469-b40b-b7ff318dca7d	2021-12-19 18:59:10.082803+00	520	278
1709	cbae9b25-3595-4398-a750-909b6015a9d9	2021-12-19 19:08:52.34963+00	524	1371
1710	e8aee202-b832-4537-a173-6d6f4ad8e6af	2021-12-19 19:14:42.359656+00	462	1580
1711	dec43d88-7182-405b-b83d-42995537d6d3	2021-12-19 19:14:57.577804+00	127	950
1712	36cc04de-047f-4c67-bc65-79e6a8313bf4	2021-12-19 19:15:22.104915+00	462	1141
1713	2963f6e0-7e9b-4d12-84a6-ad7524d458cb	2021-12-19 19:17:30.320796+00	462	1580
1714	99c77292-64fe-48c1-9dc0-f8c8bc88a436	2021-12-19 19:29:52.470213+00	464	1405
1715	0b4d0bec-f5eb-458c-a56a-f77e218ab00c	2021-12-19 19:35:19.869609+00	465	1405
1716	d55e66fe-44dc-4836-b189-ffd9898ecc67	2021-12-19 19:37:04.187507+00	466	1405
1717	c74a2860-da0d-481a-afb3-e8d145b1a317	2021-12-19 19:38:09.363876+00	467	1405
1718	a1e4c505-1c47-4fa1-8c78-862e79d0a9c8	2021-12-19 19:38:12.464086+00	135	446
1719	4875f686-1fdf-42a3-a70f-0e7d2910e5ed	2021-12-19 19:39:25.248422+00	468	1405
1720	bb60d902-1115-4a14-af5d-b7077fc2d27f	2021-12-19 19:42:14.797752+00	469	1405
1721	bcfb39c3-d759-450a-a18e-e0f098c7b98b	2021-12-19 19:42:20.511588+00	524	790
1722	055f68b2-3339-4160-8bdf-76fe7f213f79	2021-12-19 19:42:30.036205+00	469	1405
1723	45fc7ab5-8dbb-4db2-8746-7c000b65a87e	2021-12-19 19:42:33.167596+00	524	1116
1724	8aafd24d-6e45-4a6e-bcf4-4fcca8a8e662	2021-12-19 19:43:24.744194+00	119	142
1725	e7f06325-d46e-4207-9ef0-6acc16c0c5a9	2021-12-19 19:44:16.591236+00	138	446
1726	861f0ba4-4f29-435a-bcd8-ddd6293a4058	2021-12-19 19:44:52.051174+00	467	1405
1727	416b0b6b-3480-491f-ad7f-c80a64d6f668	2021-12-19 19:44:58.659437+00	468	1405
1728	7ff1b869-d9de-44b2-92e6-e0cc3ca8d2ec	2021-12-19 19:45:03.513936+00	469	1405
1729	8b92478f-7ae9-42e6-9a38-c72773c80cc3	2021-12-19 19:48:08.999233+00	470	1405
1730	520efb13-6f3d-4c6a-b3c4-9cb688161399	2021-12-19 19:48:17.090438+00	520	665
1731	54a0fa05-a7b1-4f94-8859-4af0dda847ac	2021-12-19 19:48:48.385474+00	160	1568
1732	4549ec86-1c2b-4212-b1f6-bb7e8e717125	2021-12-19 19:48:50.460476+00	160	1568
1733	f256f467-0a65-4c01-bcce-e3ea8b0d8792	2021-12-19 19:49:25.732322+00	524	708
1734	4c345593-717f-45f2-bbfb-2bdb863bd7bc	2021-12-19 19:51:38.197148+00	462	426
1735	336c6b83-de52-4993-91f1-b8bab6e09cb9	2021-12-19 19:52:19.873272+00	127	142
1736	4089aeef-4b0b-4a13-9082-354e5f61d5ad	2021-12-19 19:53:51.23112+00	462	1658
1737	6761d361-d8ea-46bf-a784-43de0d2a1226	2021-12-19 19:55:19.567837+00	127	1333
1738	15f38356-7bd4-4ddb-adde-a7edd5b733f1	2021-12-19 20:01:59.369763+00	135	142
1739	a609acce-a3d6-4ef1-95eb-b2e03d6acb09	2021-12-19 20:03:30.213521+00	135	1333
1740	d65479a9-8545-4766-a2ea-d8f7a5998454	2021-12-19 20:07:11.14459+00	138	142
1741	e508cce7-15c9-4886-962a-029d004b86e4	2021-12-19 20:14:50.175978+00	138	1333
1742	3308582e-a969-4ffb-8f7f-bcb9b663efdc	2021-12-19 20:15:11.963629+00	526	446
1743	e3c5c419-584c-453f-ac0a-269098f9ac36	2021-12-19 20:16:57.399857+00	524	1162
1744	cccfa698-1fd1-4ae4-968e-e3763d957412	2021-12-19 20:18:17.251949+00	462	941
1745	905a9eb6-3d94-4f12-a595-60d4d3527099	2021-12-19 20:19:55.767744+00	526	142
1746	f2c09835-d3c2-4a73-bebb-f038f11a5dbd	2021-12-19 20:27:51.116875+00	462	553
1747	0df236fd-7b69-488c-9529-d448bb2e01b0	2021-12-19 20:28:43.737343+00	524	424
1748	074ab589-999c-4c41-9583-037c36931f0a	2021-12-19 20:29:37.31799+00	462	1551
1749	6606cbfa-8ff7-4f04-a9ab-632a76e83fe8	2021-12-19 20:30:17.741235+00	526	1333
1750	0e806315-deeb-4ec8-b7a5-1bbd29d9c4a5	2021-12-19 20:32:05.569764+00	462	988
1751	2bc50e7a-b41e-43b6-a664-4ce4bec9f624	2021-12-19 20:38:59.568742+00	527	1333
1752	6018f819-05b3-441b-b796-eb86e87e9c76	2021-12-19 20:40:43.428695+00	448	1333
1753	5f18fc03-9c3f-4755-9292-4c13f7918861	2021-12-19 20:41:56.174827+00	448	1333
1754	177a2bd6-cf05-48dd-a232-9cfdc8430a63	2021-12-19 20:48:04.699864+00	105	1162
1755	cc45e702-0a95-4801-844d-16184bb05227	2021-12-19 20:48:16.359096+00	105	424
1756	73ea8252-d8da-46b9-aa6c-7d86ba985939	2021-12-19 20:48:59.72024+00	524	1580
1757	f567d2a7-0b1d-41cc-b254-230438b91186	2021-12-19 20:49:29.64985+00	137	1162
1758	b42f373c-9c46-407f-ab94-4687a204639f	2021-12-19 20:50:19.215755+00	137	424
1759	292f7062-c586-4d0d-be75-2bc8fdbe6907	2021-12-19 20:51:55.519195+00	105	402
1760	a21b051f-eb86-444e-a447-8d9b2d1ed1d3	2021-12-19 20:59:47.467477+00	137	402
1761	a2035b60-69af-4371-a15a-f05821482002	2021-12-19 20:59:55.006368+00	119	424
1762	9e2686fe-2110-4699-b408-12b5fae224df	2021-12-19 20:59:55.425088+00	462	1462
1763	347ae69a-a519-4e5b-8d62-4726ec4ff83a	2021-12-19 21:05:45.484563+00	127	424
1764	36334575-f274-42f5-8d59-079c5022c987	2021-12-19 21:06:30.170875+00	160	1333
1765	7d42bdcc-1ca1-494a-b8a0-d3f9532ddb9e	2021-12-19 21:11:28.178945+00	187	1333
1766	f3705573-7c75-423e-afde-08f60c265e6c	2021-12-19 21:11:52.214113+00	119	402
1767	8e440ac0-45d0-45f3-a718-91ea1dc23ae1	2021-12-19 21:30:55.131139+00	462	1096
1768	786724a9-3bec-477d-8a6f-281d767b8c92	2021-12-19 21:36:27.197829+00	135	424
1769	74a565a0-87a2-4c9c-aed0-da74233abab0	2021-12-19 21:36:46.886562+00	462	1571
1770	2a73289e-bfcb-40bd-83f9-117cbdee10e1	2021-12-19 21:44:18.142092+00	524	1571
1771	c30fbaee-45d5-4210-ba8d-911a1411db28	2021-12-19 21:44:37.962608+00	138	424
1772	87f79638-bcba-4a37-8956-ec27b8ef020f	2021-12-19 21:50:23.116138+00	105	272
1773	7024c823-ddf0-4985-8893-5984387b03b2	2021-12-19 21:56:44.128751+00	526	424
1774	4bd2875e-a44e-4404-85b7-15128755b8b6	2021-12-19 22:02:29.129405+00	137	272
1775	5db69b7c-2de1-4f98-ae95-bb0e3c5b1541	2021-12-19 22:06:46.582117+00	527	424
1776	188c6ea1-1ba1-43de-bffc-7ca8de5b345a	2021-12-19 22:09:14.046557+00	448	424
1777	6a0e1ac7-ce41-4758-bbe4-6139c0492c97	2021-12-19 22:12:40.740516+00	462	530
1778	f390b3e7-dae7-428d-ba56-f658ec43a802	2021-12-19 22:15:22.824567+00	119	272
1779	40aa33d7-7f1b-48bf-b730-384c4cda07fe	2021-12-19 22:15:24.151075+00	462	1661
1780	df4b0468-dbc1-469b-9253-8bda63e7a593	2021-12-19 22:15:43.354104+00	462	1639
1781	fa860514-7b9f-4122-b6e4-43f27b10eea0	2021-12-19 22:18:31.761986+00	548	1234
1782	96cfddf3-96eb-4de1-afec-4d0aa195620e	2021-12-19 22:20:21.473034+00	461	1234
1783	df86c801-e502-4b26-b39d-0c0ed7a1e7d2	2021-12-19 22:24:43.767704+00	127	272
1784	87c38103-050b-44b2-9bf7-5df89ac0e866	2021-12-19 22:29:57.895991+00	462	976
1785	9b55b2dd-4f8a-4ba8-8ed1-850c697fd801	2021-12-19 22:40:12.663196+00	462	1530
1786	f642a557-c0a3-4be3-b118-76ce37cdac47	2021-12-19 22:54:26.341312+00	329	1234
1787	4f55d831-835e-4420-9efa-fe8a29ee1d67	2021-12-19 23:36:44.411201+00	524	1639
1788	66acfdeb-6371-4f70-ac33-88c7bc9a7d41	2021-12-19 23:37:35.577903+00	462	1677
1789	ac4f4941-eda7-4de4-8013-169beb2fc6de	2021-12-19 23:59:57.921805+00	524	1677
1790	76aa985f-14c7-4a7d-83fe-4774fdabb97a	2021-12-20 00:25:27.646652+00	105	1639
1791	7cecc98a-cc37-4c93-8504-e90eff6d487f	2021-12-20 00:28:55.125437+00	137	1639
1792	84375d6a-978c-487f-8ba1-78daa7297b61	2021-12-20 01:37:40.189435+00	548	278
1793	09b06f4b-c8cb-4ae0-a512-d0d95e5283dc	2021-12-20 01:55:35.604475+00	137	1426
1794	9654c589-e68f-4239-8e2e-f79138515f81	2021-12-20 02:00:30.581181+00	462	1679
1795	845567bf-43e7-4c1f-8e8c-440b1ef3447a	2021-12-20 02:54:54.372964+00	119	1376
1796	9c09f52e-b831-452c-8ae5-de89de580a07	2021-12-20 04:09:32.572639+00	548	934
1797	ff61859e-4be8-4210-807b-a7acb86c1bb4	2021-12-20 04:11:10.931088+00	461	934
1798	035223b2-9ef2-48c3-90df-31f9e6c3243b	2021-12-20 04:55:43.04322+00	462	1684
1799	8431497a-3366-49a9-b08a-13611f35a09d	2021-12-20 04:56:36.933878+00	462	155
1800	757d4c52-cbdc-406e-b50d-4284d1eae2e4	2021-12-20 04:59:35.725931+00	548	769
1801	e6f7c3d1-a1b4-4303-b110-8f1410686e96	2021-12-20 05:01:07.774247+00	461	769
1802	fa70e636-5e93-4922-8191-60fc61e2cb3a	2021-12-20 05:10:10.906325+00	329	769
1803	de51201d-ddc3-49aa-a711-8a12b7b1216d	2021-12-20 05:35:18.718807+00	524	1078
1804	4a8b06c2-4dc5-4921-9421-2d4c25edeaf7	2021-12-20 05:36:42.38635+00	524	937
1805	c0d149c1-ce5c-460b-b795-04ccbc9e2394	2021-12-20 05:54:01.967292+00	119	1426
1806	0a8372fe-a6b2-4c87-814e-34e28cdb7bc4	2021-12-20 06:08:56.110123+00	127	1426
1807	df501bea-2c41-4269-97a7-6bc9ed03506c	2021-12-20 06:15:35.590631+00	462	99
1808	a2faed8e-b22c-4d88-b29c-53ac2108175e	2021-12-20 06:18:47.412133+00	105	937
1809	cfad805a-9143-4d8c-bfe8-90bbbb68f118	2021-12-20 06:20:03.386772+00	137	937
1810	ec13b2a6-6710-457f-9bf4-2ccc5b017835	2021-12-20 06:20:55.715133+00	393	1117
1811	83e9b0c0-7124-41ca-91d8-b69e28f2b1d1	2021-12-20 06:30:28.17567+00	137	521
1812	74b3faa8-add2-4198-a649-672459e76ea6	2021-12-20 06:31:27.37688+00	524	155
1813	55842048-aa05-49be-8891-4fc27d2725bc	2021-12-20 06:32:50.318014+00	135	1426
1814	b9fe4f26-ae0c-4350-8416-92a545292623	2021-12-20 06:41:50.126719+00	138	1426
1815	b93c530e-ab06-48e9-9769-2e67de2a3749	2021-12-20 06:42:17.969552+00	187	1568
1816	6c477e09-74e5-44b9-b6d7-39d1cab53bce	2021-12-20 06:49:38.020737+00	119	1117
1817	ad2e969d-7dd9-45e5-b506-6cef547be1cb	2021-12-20 06:52:33.914001+00	127	1117
1818	0c7029b6-d965-402c-92ca-30148d64c1a4	2021-12-20 06:57:50.323047+00	105	1523
1819	c2fc919f-e044-43e3-a81c-4e0ee8a05392	2021-12-20 06:58:13.82497+00	137	1523
1820	15014973-8dc5-4d25-871e-4a12ae5fc971	2021-12-20 06:59:57.097117+00	135	1117
1821	626304f4-17fd-47e2-8eaf-830c2d1452a2	2021-12-20 07:07:37.943069+00	462	1352
1822	a30c6ea6-6c56-4cd7-b0bb-fdbe41c7ff25	2021-12-20 07:07:39.418534+00	526	1426
1823	4443a15f-ca9a-4088-9c0e-96ac4f9d7abd	2021-12-20 07:14:56.947591+00	462	1091
1824	c31e380e-a81f-43d9-aabe-60051febf568	2021-12-20 07:21:20.427366+00	520	1073
1825	99f7bfc4-d7fa-487a-87f9-bda99148dd19	2021-12-20 07:24:28.115739+00	527	1426
1826	16eb8978-7ba5-4cf0-9697-801bdeb48d0d	2021-12-20 07:29:17.72276+00	119	1523
1827	e6958c05-8a6a-4067-b574-480e3af4cc20	2021-12-20 07:30:46.761058+00	464	1037
1828	453f8c39-2cb3-4310-a68b-bb0f5d970fb8	2021-12-20 07:38:37.204426+00	524	405
1829	6de56c95-871e-4bb7-ae18-628d0e70866a	2021-12-20 07:42:43.027336+00	465	1037
1830	508e0728-3da5-4f60-8913-3b198b2d57e0	2021-12-20 07:46:37.699346+00	127	782
1831	e171ea28-e96d-4ae0-8e84-b994e7e79e05	2021-12-20 07:47:16.189942+00	127	1523
1832	16dbfb43-6433-4f0a-9ba1-d7c36c3bfbb3	2021-12-20 07:54:12.760816+00	119	937
1833	0fd76cde-d109-41d3-bcb3-ef1ba78be821	2021-12-20 07:55:35.954581+00	135	1523
1834	4dcf93b0-4f95-44d7-a946-a062e90c1bb0	2021-12-20 08:02:23.58345+00	524	1352
1835	f7d11a9c-c193-4337-9732-f6b3feb3f79f	2021-12-20 08:03:53.130337+00	527	446
1836	1551a643-956b-418e-a061-87344ec5ce54	2021-12-20 08:05:43.683335+00	135	782
1837	b59456c1-78a9-4b9c-a9ae-659fc2906667	2021-12-20 08:07:08.558768+00	448	446
1838	f126c43b-263e-4ee8-abc0-9414a75b9d33	2021-12-20 08:08:22.360708+00	527	446
1839	d8baf02f-880c-4324-ba19-dfb20b620b6c	2021-12-20 08:08:50.363195+00	138	782
1840	65c12921-d076-49df-8daa-c848c14d6e51	2021-12-20 08:08:58.006891+00	462	307
1841	68316ca6-c8fe-4c19-9047-32b274625190	2021-12-20 08:09:29.051109+00	448	446
1842	3a723b12-f156-40f1-8110-c283d8c49990	2021-12-20 08:14:54.807617+00	138	1523
1843	79a0e5b1-e720-44ce-be60-e395bed50128	2021-12-20 08:16:24.403759+00	526	782
1845	807871b2-63b3-4585-80f1-97e429e263d4	2021-12-20 08:20:42.158819+00	462	145
1846	96ec6193-58a2-479e-893d-337710ee3233	2021-12-20 08:24:24.03364+00	527	782
1847	4120b781-cbf1-4c5a-b077-9d423466a4df	2021-12-20 08:29:36.777517+00	526	1523
1848	85191e0c-9c48-4c46-a3b4-73bb6a6af546	2021-12-20 08:32:31.933205+00	138	1117
1849	121c6692-314c-4114-8e56-3a7286724d9c	2021-12-20 08:33:04.331863+00	524	782
1850	0650abb5-e4b6-4528-afd7-ec8b80c02342	2021-12-20 08:33:59.972362+00	527	1160
1851	5b01706d-befa-4aca-8d40-56eb14fa6357	2021-12-20 08:35:31.129849+00	548	1492
1852	2a55415c-6aad-4493-aae4-866035a66cbd	2021-12-20 08:37:47.976317+00	105	782
1853	1c8b03da-f8c6-4ce5-ba97-87747043c38d	2021-12-20 08:39:08.016739+00	448	782
1854	9e50a27c-8b16-462a-8dfe-94c016acfe8a	2021-12-20 08:39:27.975562+00	462	1661
1855	e3004774-8218-4591-90fb-a15b1f301d43	2021-12-20 08:39:50.863873+00	524	897
1856	c3d366a8-3aa6-468f-82b5-b1900b0db15b	2021-12-20 08:40:32.095343+00	160	1426
1858	d0ac3f5b-d7bf-4ae6-8ae3-733a093536b9	2021-12-20 08:46:40.555302+00	524	1160
1859	7b2a0606-9e0b-456d-ad23-cda520669721	2021-12-20 08:57:00.786065+00	137	1114
1860	491b93b7-cf84-47b1-bc74-4b441d9019bc	2021-12-20 09:01:15.999714+00	135	1222
1861	762fe10e-e75f-4e29-96f8-1bf0dfa72fcf	2021-12-20 09:05:54.224548+00	462	1654
1862	d064329c-47cd-42c5-a4f7-bb24bf555f6a	2021-12-20 09:08:01.572827+00	462	1195
1863	f8de9df7-432c-4c58-b291-97d1bb926a47	2021-12-20 09:11:55.525652+00	524	118
1864	42dbf1d2-ee1a-4476-ad03-fdbad56433a3	2021-12-20 09:14:07.765483+00	526	1117
1865	5797f041-c7da-4cdd-a01e-df582c2bcd95	2021-12-20 09:14:26.287707+00	138	1222
1866	b0e3ff95-d120-4a22-9148-995ea4bb95ff	2021-12-20 09:14:53.037516+00	462	208
1867	80248603-f06c-4bfc-a78b-b39d6a138165	2021-12-20 09:21:39.768288+00	105	1332
1868	929ab256-519c-4274-ab5b-57ea3d002db6	2021-12-20 09:24:52.903757+00	105	623
1869	397c713f-cda7-40e2-b5af-91d52049c4a1	2021-12-20 09:26:03.900019+00	462	302
1870	e6d0f535-6587-4280-a361-512ce363c562	2021-12-20 09:31:24.640208+00	526	1222
1871	67ac3c09-4567-4060-85ed-95cdb893003d	2021-12-20 09:33:54.939839+00	462	1591
1872	af9c65a7-25ef-41a5-bc66-f1ef458d56a1	2021-12-20 09:43:54.385689+00	160	1160
1873	4300831c-a371-4484-9121-b2e0a22a0804	2021-12-20 09:47:02.752365+00	524	1334
1874	eab3c62b-8216-4410-951c-d9263daab416	2021-12-20 09:49:24.409843+00	105	1334
1875	477f790e-4c36-42eb-a1a3-aebcd230a6fe	2021-12-20 09:58:20.770638+00	105	1083
1876	9704f7e0-b750-4fbd-8edd-1deb86e01f44	2021-12-20 10:01:07.914005+00	137	1083
1877	d0004b0b-a3b6-4e8d-a05b-8a36757cfd18	2021-12-20 10:02:41.420704+00	462	1647
1878	c34a2a58-000c-487c-abef-4f037597ea6e	2021-12-20 10:05:00.975512+00	105	1352
1879	85d75da7-e491-4335-ae29-c1d168743f96	2021-12-20 10:05:18.51485+00	119	1114
1880	71b0d612-2bd0-4d9a-8382-964617ae9dad	2021-12-20 10:05:28.661493+00	137	1352
1881	09e2b804-a0ce-4848-80f4-884f61f5267d	2021-12-20 10:10:06.902079+00	462	619
1882	1e072f8f-ddd6-466e-afa2-077a538eb1af	2021-12-20 10:10:49.843333+00	524	1083
1883	2bfce48a-faf7-4095-bd2c-7153d71e8261	2021-12-20 10:12:21.689794+00	524	345
1884	2f09182a-db4c-4c46-a9a9-229bb53df4ec	2021-12-20 10:13:42.408447+00	462	308
1885	3615b669-d12c-4889-9399-cded4409fe09	2021-12-20 10:14:50.266416+00	524	1661
1886	67663107-42e0-4e21-9fce-7ff96024fef8	2021-12-20 10:19:57.324104+00	524	345
1887	9557ff95-5735-490d-8e02-8031146fe475	2021-12-20 10:20:51.289464+00	524	1033
1888	800220c9-597b-40ce-8304-fceae9b26525	2021-12-20 10:34:33.777482+00	462	591
1889	5717d994-141f-40e1-90c5-6cf00a109f56	2021-12-20 10:36:55.460305+00	119	1352
1890	fcb460d1-0b5d-47bc-bb82-b50b304549a2	2021-12-20 10:38:14.99985+00	127	1352
1891	f986c04b-f266-4d71-a9ea-6e4bbdfa562a	2021-12-20 10:40:00.286851+00	135	1352
1892	988473bd-7897-467b-af26-1de80d6e461c	2021-12-20 10:41:04.998627+00	119	1083
1893	783c0b14-1914-4fb1-939c-acfd7ee39e22	2021-12-20 10:43:11.023375+00	524	208
1894	79e44e93-6beb-41a1-90ec-0c7ea188db0a	2021-12-20 10:45:39.345103+00	127	1083
1895	f1ae9698-8b5d-4434-b2f5-b138d1536857	2021-12-20 10:50:21.128276+00	462	1201
1896	e6f505f9-5e65-408a-8a92-9f41ffc7a40f	2021-12-20 10:50:53.485306+00	524	1551
1897	f21d0672-e3d9-4052-bad9-fa1c9d9a3884	2021-12-20 10:54:48.182012+00	448	419
1898	73c305da-2585-4118-87dc-f95e8e02686d	2021-12-20 11:03:12.381418+00	135	1306
1899	1995637b-1cda-45b2-9ea4-008bd844b44d	2021-12-20 11:06:39.361593+00	127	980
1900	4c7d3249-9599-48a4-9dc5-ff57a2ef9bee	2021-12-20 11:09:21.676817+00	524	1654
1901	e9efe877-291a-4e28-a615-4a0102be885d	2021-12-20 11:11:24.129299+00	160	419
1902	52f436be-a3b0-41c4-ba80-ce89ab5351a8	2021-12-20 11:14:20.574463+00	187	419
1903	f7ac3086-1d8f-46c0-b85b-535d4b8e98bd	2021-12-20 11:14:38.377069+00	462	959
1904	862c34da-76b7-4b5a-96d9-cb3be0280b4c	2021-12-20 11:17:06.268174+00	527	1222
1905	c26e3880-2faf-4ceb-a9c4-45bb62477179	2021-12-20 11:18:34.389368+00	448	1222
1906	0499d02e-dca6-4ae5-b7b0-417e6a182507	2021-12-20 11:19:24.165931+00	105	208
1907	0bc26f69-8d26-4b01-8c77-4e20d550cd21	2021-12-20 11:22:12.795964+00	137	208
1908	d9ca9ce7-6d18-4902-a028-3a66bef9c088	2021-12-20 11:25:39.833166+00	138	1306
1909	4f85c2ff-cd77-4412-9db7-884a4231de2d	2021-12-20 11:25:53.152283+00	138	1306
1910	b14a6e5d-d281-4af3-a092-2b954eb49618	2021-12-20 11:26:29.048534+00	524	1576
1911	3ab7cf26-bec2-4ca4-96f4-d7fffb28dd72	2021-12-20 11:28:36.135044+00	135	196
1912	5a0e14ed-e041-4b8f-a9f9-46b0dfd04081	2021-12-20 11:30:29.5829+00	462	1557
1913	ab10d18d-a460-4c37-9b34-a3948c938fae	2021-12-20 11:31:03.520076+00	138	196
1914	39c77d31-5c86-4c4e-b03a-22d6f17f2b0e	2021-12-20 11:40:04.803283+00	462	1575
1915	7da2e4dd-6ef1-40fe-91cd-05295e5fe84e	2021-12-20 11:41:47.5983+00	105	1661
1916	1371c7a4-4d6a-4a8e-a82e-097172d579e6	2021-12-20 11:42:53.570818+00	119	208
1917	1faf771b-e3d0-40e7-bb2a-07398bd9b542	2021-12-20 11:44:11.448605+00	462	1565
1918	8833beab-4b11-4657-8a33-c243c8b4232c	2021-12-20 11:45:05.618993+00	462	1695
1919	1bd043be-172a-4201-b3bc-e4a2c13f2dda	2021-12-20 11:46:54.471847+00	526	196
1920	8eed686b-29eb-41ad-adb7-a95d96e1ae38	2021-12-20 11:49:28.907003+00	105	1660
1921	afc59536-cc8b-4a4f-b761-72c2fbab3bee	2021-12-20 11:58:36.90077+00	105	118
1922	713ad507-b1fc-4cc2-bc7a-4af4f14f7cdb	2021-12-20 12:01:31.111564+00	466	1037
1923	912c7e02-9f3b-4dc9-8e66-b5c1e1b18e8a	2021-12-20 12:03:05.687343+00	105	1342
1924	59341452-9d04-46b8-be49-0089cd349029	2021-12-20 12:03:36.434689+00	467	1037
1925	9dfe3f49-3f76-4f06-8dde-9cb8f3bb7fd8	2021-12-20 12:06:15.420859+00	468	1037
1926	1ad09bd7-31ec-4187-8ccf-e98a8262b0b8	2021-12-20 12:07:39.534838+00	137	1342
1927	7c3bd849-4199-45be-8d93-890793d17a72	2021-12-20 12:07:56.456493+00	462	1700
1928	45626deb-9bcf-49e1-acc3-76f239740fb2	2021-12-20 12:10:05.399428+00	462	1625
1929	883b5bea-b30a-4e5a-9d1c-2eb03b974537	2021-12-20 12:11:30.21636+00	469	1037
1930	c33713ae-008c-42d9-8f62-947820d5ee02	2021-12-20 12:15:10.586132+00	105	1590
1931	1ec28830-d044-4cfc-936b-91ad4d551be8	2021-12-20 12:18:37.673448+00	462	238
1932	df4a48e0-dc2f-414c-aaf5-91fac466c737	2021-12-20 12:18:58.759326+00	462	1583
1933	46525554-66b2-4628-81c6-665e7d6ade70	2021-12-20 12:19:09.592905+00	462	825
1934	beeb39ea-b78a-4512-a7a8-a44c44699423	2021-12-20 12:22:35.461479+00	464	385
1935	a7182b12-fe87-4290-9127-1754eae8a265	2021-12-20 12:24:41.851303+00	526	1306
1936	70d70bfc-a77a-44da-a55f-713c806b2199	2021-12-20 12:24:51.239655+00	119	1342
1937	643afcb2-7d72-4131-ba32-d2ee10c68814	2021-12-20 12:25:17.903935+00	524	825
1938	c28d9732-7a1e-47aa-b2c7-443f5a759501	2021-12-20 12:26:57.906399+00	464	1037
1939	9e563672-d226-4bbf-8b10-42d0519a9bd4	2021-12-20 12:27:02.418783+00	465	1037
1940	bd1de996-c37b-47cd-976c-340de1372df0	2021-12-20 12:27:06.702845+00	466	1037
1941	2a9cf1fe-e7c2-48ba-b524-adbc93c3845f	2021-12-20 12:27:10.971158+00	467	1037
1942	dcae3284-3e0d-4f9d-a9cd-e7152804758c	2021-12-20 12:27:15.307529+00	468	1037
1943	896cb2a4-8529-45fa-8033-e9981524aea3	2021-12-20 12:27:20.293129+00	469	1037
1944	23deeee4-f374-4151-b00c-eef02e7d92aa	2021-12-20 12:27:55.006684+00	462	1060
1945	4200cc20-17b5-45aa-bbd9-544608d9cfa2	2021-12-20 12:29:03.090785+00	462	1577
1946	91db3925-9c75-41bc-a835-ec934343593c	2021-12-20 12:29:48.91237+00	462	1698
1947	bea9b641-37f3-42c6-9431-d2c954ae85a6	2021-12-20 12:36:47.201959+00	105	1551
1948	ed0d1124-8e22-453f-ab5f-86d08eafceb0	2021-12-20 12:37:58.578553+00	462	1267
1949	4fd3186c-9d0c-4ab3-b199-220e18ed50c5	2021-12-20 12:39:27.992486+00	137	1551
1950	1331ca4e-8a51-4313-8db1-d42a55396160	2021-12-20 12:40:47.807498+00	119	1342
1951	8b1b3e29-9d46-4a67-ada3-da076aea0b44	2021-12-20 12:41:05.927605+00	462	359
1952	ed2ebb86-e8e1-4543-91ee-9018c6f09ab9	2021-12-20 12:42:04.223884+00	127	1342
1953	32a58c06-ab87-4520-9df6-0c8e9e4f0f1e	2021-12-20 12:42:56.079333+00	462	1152
1954	3c02a09c-6893-48b0-b27f-d3a4fe36228e	2021-12-20 12:54:52.57713+00	462	1624
1955	87720e3c-9e01-451e-a5ed-a333c14950df	2021-12-20 12:59:08.16251+00	465	385
1956	a2d8dc61-7237-4db4-a3b2-4b9b958a3191	2021-12-20 12:59:57.023528+00	524	643
1957	6303fc9f-0731-4342-b9a2-0ebe5bfefae7	2021-12-20 13:00:36.276512+00	137	1660
1958	2de9aa9d-59d5-4f16-aac5-d28bfbeba9a3	2021-12-20 13:02:17.75867+00	527	1117
1959	a01aa1ef-00a1-4e4c-888a-fafaf8646510	2021-12-20 13:04:55.12359+00	462	1518
1960	758c4ef7-8f2c-45c9-91b3-9be1016444f6	2021-12-20 13:07:11.250476+00	462	107
1961	28c10594-b938-46f0-810a-8f6fabbf079b	2021-12-20 13:09:51.951615+00	462	1688
1962	02873659-467f-4689-9f79-07dad2cb3288	2021-12-20 13:11:32.74368+00	462	1706
1963	c123e611-112b-4124-a0fd-89cc2c3bfae2	2021-12-20 13:11:33.277673+00	462	1697
1964	ef4f61bc-4e64-4f95-9099-82874cb8808a	2021-12-20 13:14:47.390026+00	462	1521
1965	10dd38e6-e825-4d0c-ac83-0599b423025d	2021-12-20 13:22:05.934649+00	119	1660
1966	cb0d203a-af36-4d58-bf89-cd0756699960	2021-12-20 13:23:23.035006+00	462	307
1967	5ef9b57b-a27b-40e2-97f7-bf9ab333b98e	2021-12-20 13:24:44.15852+00	466	385
1968	92c1c6bc-7d66-420f-85dd-2cc0a8366bae	2021-12-20 13:25:02.090944+00	467	385
1969	bcd129fb-e57c-4038-b676-153fb10c9d7c	2021-12-20 13:25:08.872766+00	468	385
1970	a5c4ef20-beef-475c-87b8-b36511566564	2021-12-20 13:25:29.460407+00	468	385
1971	912752b6-78e6-49cc-8500-4879cc250e34	2021-12-20 13:25:44.386318+00	119	1551
1972	304161cc-6474-4e26-be0d-11cd0dd40291	2021-12-20 13:27:13.158388+00	524	1310
1973	68791764-d7c3-462c-851b-35f784193093	2021-12-20 13:28:50.817115+00	127	1660
1974	4f0917ca-312d-4022-8a4c-59de7b0187b2	2021-12-20 13:29:37.717257+00	462	1285
1975	a3f507ef-e265-4161-b830-da3a7839ef41	2021-12-20 13:30:13.889318+00	462	124
1976	cf0bb847-2e27-4311-8264-c0748717144d	2021-12-20 13:31:10.994759+00	462	1710
1977	06588ce4-7fc5-44a7-bece-39121e3ff440	2021-12-20 13:35:39.282815+00	469	385
1978	ca06ab39-7941-4667-bb9f-ab16b47c4be7	2021-12-20 13:37:58.477131+00	127	1551
1979	ee921070-e95a-42bf-9f08-76064c8c6571	2021-12-20 13:38:01.79002+00	462	1442
1980	5bce2744-872c-4f16-ba05-476146ef4783	2021-12-20 13:41:04.258036+00	462	634
1981	5aaf570c-8ac0-4048-b9dd-899c9896c665	2021-12-20 13:45:42.453969+00	462	716
1982	524dda5a-00e9-46b7-829b-e1f782fc2315	2021-12-20 13:48:58.943906+00	462	1727
1983	fd49e640-9798-4e0a-86ec-5a673a22df44	2021-12-20 13:50:13.93729+00	462	1711
1984	23177505-0728-438c-be4e-247ce36dd480	2021-12-20 13:54:49.505725+00	524	753
1985	05a0a899-019e-4241-b092-dfc5c58a91d8	2021-12-20 13:57:08.557131+00	462	1152
1986	beb3c89a-bce9-4a42-a14a-5198ceabdd7a	2021-12-20 13:58:09.863276+00	462	403
1987	a7461c7e-595b-4516-b159-acbe9afc2834	2021-12-20 14:00:16.965033+00	105	1576
1988	ac4ec583-e907-43eb-8655-26388d1f65f4	2021-12-20 14:05:09.269261+00	527	142
1989	43e323f3-5519-445c-a729-7241cd538181	2021-12-20 14:07:16.275407+00	448	142
1990	46ff2b25-72dc-4d84-b449-937fac77a3ac	2021-12-20 14:09:18.974182+00	105	1604
1991	8133bd49-1962-476a-8f9d-da1b69151b6e	2021-12-20 14:10:19.6797+00	524	1152
1992	a63faebe-9331-4cbd-9cc9-07bc2921c13a	2021-12-20 14:14:58.146523+00	119	705
1993	ccb5ae6c-baf3-4a5a-8c68-4fe34605fc31	2021-12-20 14:17:11.763747+00	462	556
1994	5dd0a4e1-3b14-4375-944c-40deb31286fa	2021-12-20 14:18:30.39386+00	127	705
1995	4db93578-9a47-4ba2-8462-609a48cea051	2021-12-20 14:22:11.002738+00	462	519
1996	8401a815-65f4-4927-b90c-b94ab48c72aa	2021-12-20 14:23:34.63304+00	135	1342
1997	54dbb69f-98ca-4ea2-8407-fb6f29651f1d	2021-12-20 14:30:28.496273+00	138	1342
1998	24194796-67b9-4084-b7cd-94d458da115b	2021-12-20 14:30:48.529881+00	462	1096
1999	ded18347-606b-4059-83fc-ad17281f26a3	2021-12-20 14:32:08.681528+00	462	128
2000	7af93a64-9894-4c3b-9321-77956935a210	2021-12-20 14:37:33.921338+00	462	1227
2001	490e2ff5-babd-4dc0-86ec-4cba29a476fd	2021-12-20 14:39:06.175234+00	462	1718
2002	9e52355b-99b4-457b-a7fd-de08149b3dc7	2021-12-20 14:39:18.558525+00	462	1718
2003	1a3c2f3a-778f-4adc-b3fd-ef432b3b516b	2021-12-20 14:41:28.522317+00	524	1060
2004	e7079786-5b19-46b4-a078-e17c70ad950d	2021-12-20 14:46:06.909091+00	526	1342
2005	ab54a313-fc46-444e-bebe-31d7f8b7392c	2021-12-20 14:47:22.34722+00	160	142
2006	0fc53bc6-5e39-43f4-a731-827d0d69c3f4	2021-12-20 14:48:03.361122+00	160	142
2007	328c2430-b573-45b4-8a6a-3b53ac66efc6	2021-12-20 14:50:55.978435+00	462	931
2008	2c0194df-09de-456c-9b3d-f06f20747bed	2021-12-20 14:53:15.366268+00	187	142
2009	44f0a839-0926-4916-aa6c-7b039f7c802a	2021-12-20 14:54:04.795829+00	464	385
2010	787c992e-8efc-4394-98f1-24d6f5ff3374	2021-12-20 14:54:10.832617+00	465	385
2011	ee650bf6-c40c-48e3-9a32-226c38eec35b	2021-12-20 14:56:35.353097+00	462	385
2012	5deae467-94a0-4b6d-8843-750c227c5e06	2021-12-20 14:59:09.91437+00	462	1742
2013	c308c626-882a-4be0-b847-64cdaba37cbc	2021-12-20 15:02:08.335837+00	527	1342
2014	5f96c310-3e3e-489d-8753-6bcb911fab6a	2021-12-20 15:09:06.128693+00	549	385
2015	69c65010-bc42-49b3-adb6-0d4899a3ab64	2021-12-20 15:14:36.885971+00	462	1748
2016	b8201504-d5ee-48b1-95d0-8bd3fb017fd8	2021-12-20 15:21:35.265908+00	462	1386
2017	a1a48259-9900-4d5b-a753-e2e2fa162e51	2021-12-20 15:21:44.988586+00	462	1386
2018	efab61ba-0c17-46f8-a342-8dc9c24d9c35	2021-12-20 15:30:17.71306+00	462	1533
2019	8668c412-b6c7-4d27-8782-18073f1aa103	2021-12-20 15:30:26.603666+00	462	1533
2020	cfeb4bd1-b4ff-4121-8a27-d770ef0fa51a	2021-12-20 15:32:41.720881+00	462	304
2021	804c45e4-1643-4726-ad3c-288c368d99fc	2021-12-20 15:34:33.323188+00	105	1186
2022	8e731f1a-1de6-4a47-b2c5-ca1a8a01d995	2021-12-20 15:35:26.446263+00	137	1186
2023	83ce33f6-c8f1-42dc-822a-2beaaf07f72a	2021-12-20 15:42:36.386193+00	524	143
2024	421ac1de-98e0-482a-9a82-7ec55ce8896f	2021-12-20 15:44:59.549496+00	462	727
2025	3908fe73-60d0-40b8-9e3a-c13e3ddd4917	2021-12-20 15:49:17.260032+00	462	1752
2026	216ced66-33da-43fc-9f83-8760f8128b3a	2021-12-20 15:57:52.987567+00	462	1745
2027	000abce6-6864-40cb-a23c-a399de8da169	2021-12-20 15:59:53.199448+00	462	600
2028	6d3926dc-0cfb-4536-8484-701657c8b88e	2021-12-20 16:00:03.572526+00	520	142
2029	c8162769-f0f7-4289-9f5a-45b5eba06c17	2021-12-20 16:08:55.948985+00	524	264
2030	f2a10d29-bb4d-4b93-a604-91405e4aebf6	2021-12-20 16:12:35.75268+00	127	953
2031	b7a9608c-48d0-4e01-a8ca-0c04945fdcc0	2021-12-20 16:13:49.529374+00	462	1509
2032	af00b063-4c35-41f7-820c-7936c58d574e	2021-12-20 16:14:43.581346+00	462	1708
2033	dd5372be-9907-4dec-807d-bec5f18c810d	2021-12-20 16:20:16.839188+00	135	953
2034	0260372f-84c4-49e0-b189-0f297734800e	2021-12-20 16:22:14.838685+00	135	953
2035	7bfe0272-18e3-49d2-998a-697b12e748dd	2021-12-20 16:25:08.172884+00	105	1310
2036	03c0efcb-3346-4735-acc3-e9ac314cdce8	2021-12-20 16:25:44.059712+00	138	953
2037	f7499e60-7f2e-47a9-9653-2e499cae6d0c	2021-12-20 16:28:50.850405+00	137	1310
2038	fad25553-b507-43bb-9097-e987e9ba4d74	2021-12-20 16:30:32.504863+00	329	414
2039	dc8ab362-2145-4557-8a4a-bec9095ff85b	2021-12-20 16:30:40.599764+00	524	1386
2040	f0588b71-6f06-4321-a814-4664af677f93	2021-12-20 16:35:21.21074+00	105	1631
2041	c8edacc7-d97b-4c36-898b-736bbdcb5360	2021-12-20 16:35:53.816266+00	524	1457
2042	55ac074f-c075-4a5b-a042-8d53292274c8	2021-12-20 16:35:59.499048+00	137	1631
2043	c3dee765-8957-4bde-a3eb-6273ee1db039	2021-12-20 16:37:46.636024+00	526	953
2044	53f28c8b-e20e-4d7a-af86-a402d6b6c956	2021-12-20 16:38:11.595502+00	462	811
2045	c2fcf988-5623-4a6a-9288-337f9ff7fba5	2021-12-20 16:45:07.824777+00	105	1397
2046	0e817095-2d23-423f-bff9-81853246900b	2021-12-20 16:47:09.3219+00	119	1310
2047	8135f926-6b1a-472a-ab10-61178aa09742	2021-12-20 16:51:25.632278+00	548	142
2048	0319eda2-0f5e-4b5d-905e-94e38cd3fff4	2021-12-20 16:53:25.871332+00	461	142
2049	85da37dc-7537-4e09-9c2b-21b5b7cfb91d	2021-12-20 16:53:37.55448+00	527	953
2050	1ddcbc51-8906-43f3-ae20-0e69e461e957	2021-12-20 16:54:12.802526+00	462	1754
2051	a82a6246-50d5-4205-9ed3-6150c01a9a42	2021-12-20 16:55:08.984066+00	448	953
2052	de260f12-2709-491d-a565-d7f89f4d501c	2021-12-20 16:57:56.752417+00	160	1232
2053	3cd912fc-3a3e-4534-9c50-661604c6bfbe	2021-12-20 16:57:59.29209+00	466	501
2055	1af69a1a-30bb-4df8-9099-d519a294d23b	2021-12-20 16:58:18.984367+00	137	242
2056	0a950f32-ccbc-458c-91ea-819b0cca5ece	2021-12-20 17:00:25.868313+00	467	501
2057	f2cd2374-6716-4a28-9e21-9a627140fa75	2021-12-20 17:00:42.191534+00	127	1310
2058	af25e844-ece4-4be2-9550-a9c478c0244f	2021-12-20 17:02:33.248013+00	187	1232
2059	83f334ee-1711-4b73-ad64-f2c22b536c0c	2021-12-20 17:03:27.605869+00	462	967
2060	2ad4a0fd-b87a-415d-852b-9e69b873958b	2021-12-20 17:04:01.397052+00	520	774
2061	f2035298-f870-44eb-b0d8-905d85707540	2021-12-20 17:04:19.538861+00	462	1757
2062	2e857fe1-3ce6-42d6-a55f-a22b8a5d67f7	2021-12-20 17:05:02.081617+00	462	1756
2063	e6daeb02-3832-4926-bd3f-2dc9ce144e37	2021-12-20 17:05:07.257859+00	468	501
2064	c40d79b7-21f8-40b3-adba-53e7d10fbe47	2021-12-20 17:05:14.555169+00	127	1114
2065	02f7b07d-e98b-4104-95b5-019de95dfb19	2021-12-20 17:09:27.461626+00	135	1551
2066	36977ee8-2caa-46e6-80cd-492835ddddd5	2021-12-20 17:09:39.46076+00	462	865
2067	db4b056c-95ec-46fb-a0d5-00edf1656156	2021-12-20 17:12:03.436673+00	524	691
2068	bc56c616-05c9-4a42-a216-0ea5ae0d0070	2021-12-20 17:18:27.668904+00	329	142
2069	5f370f97-92b8-4e7d-b551-73d878a66625	2021-12-20 17:23:31.021045+00	331	414
2070	caa939d3-ea97-4ed2-ae8e-f7d05e743095	2021-12-20 17:24:16.545325+00	462	901
2071	ff4ddd7b-d6c0-4387-aa90-3469f39ab3aa	2021-12-20 17:25:37.551537+00	137	1137
2072	4c58655a-f088-4530-9c92-9523ce3518e7	2021-12-20 17:27:45.347251+00	462	1724
2073	2fab67fb-ec00-48bf-808f-c70b340045a4	2021-12-20 17:28:47.984906+00	469	501
2074	76c7949a-36d4-4b63-b6ff-649cbbb456c7	2021-12-20 17:30:34.727385+00	524	1708
2075	93141b22-b881-41cc-a23f-d0fcc55f5f0c	2021-12-20 17:34:23.664163+00	448	1342
2076	7c50e27a-6815-44b7-b60e-2a1ab6333549	2021-12-20 17:41:03.307735+00	138	1551
2077	0ebf8685-67de-4a44-b128-54c0835157f4	2021-12-20 17:47:22.654454+00	462	1761
2078	c2dba749-7175-43d8-8b28-39fa134238bd	2021-12-20 17:49:09.523318+00	462	1754
2079	9447c656-0825-4cec-9b6b-40bdd0eebfa9	2021-12-20 17:49:18.347025+00	462	1754
2080	11b7b47f-b325-4e1d-a6e4-c31779868d21	2021-12-20 17:50:29.459348+00	524	1321
2081	c3b9e006-f3c4-41da-a949-07c0726c1b9f	2021-12-20 17:52:32.329522+00	119	1137
2082	589050e4-a2e1-4d99-a6de-b70347ee010e	2021-12-20 17:52:41.472048+00	526	1551
2083	9bb6d557-a4b0-4fdc-b8a7-9eeabf3b3545	2021-12-20 17:54:27.702216+00	524	1718
2084	1f2c863d-d92a-4d41-9785-8c21aaa60c87	2021-12-20 17:58:26.415895+00	462	422
2085	7532c474-db2f-4df8-9aa6-9ab55d273043	2021-12-20 17:59:48.429062+00	462	1686
2086	1f52c4bb-1c75-4ceb-9d07-148803630d95	2021-12-20 18:00:23.656447+00	105	753
2087	98785d70-c872-4822-9128-eaa26eb94b9c	2021-12-20 18:01:49.810561+00	470	160
2088	205d5ff7-ba9f-4d70-bbee-150559e8612d	2021-12-20 18:03:26.788318+00	524	437
2089	0de3d812-88c6-48c3-bc53-a50ad473bb88	2021-12-20 18:05:24.967157+00	135	1114
2090	7f679c99-5319-46c5-ae0b-c7749f6f2cad	2021-12-20 18:07:19.32093+00	549	501
2091	74508fee-a2d6-453b-914a-0d3ec85e1168	2021-12-20 18:07:35.359482+00	527	1551
2092	ba8f197c-591a-4b64-8bc8-8f8ac09ec731	2021-12-20 18:08:20.349703+00	127	1137
2093	36739909-1156-4b7c-a59f-12399e5cf829	2021-12-20 18:08:28.443166+00	524	1754
2094	cfd2739f-fbb8-4426-b8b5-623f1a8436c6	2021-12-20 18:09:32.297621+00	527	196
2095	e6e8e888-e339-48d7-97b5-96291ca56bef	2021-12-20 18:10:45.31616+00	448	1551
2096	910ac0c4-a342-4334-97d5-13bf440ed21b	2021-12-20 18:12:21.064407+00	462	1749
2097	31a54c59-9fad-4ec2-b6ed-9e11b87bf2d7	2021-12-20 18:13:39.273576+00	462	1663
2098	3f029347-3116-4432-b558-151dd8a539cb	2021-12-20 18:21:05.182781+00	160	196
2099	4cc19c94-0017-4656-a309-135c298f12d0	2021-12-20 18:21:21.954197+00	462	486
2100	d9cfc5d7-434a-46c6-8689-a2c73b18efe8	2021-12-20 18:22:44.626026+00	137	753
2101	62b880c6-9d21-41a9-8ea6-38478c32a497	2021-12-20 18:24:09.983826+00	331	142
2102	54932044-0bde-48e6-8a81-826390b42904	2021-12-20 18:24:19.730044+00	135	1137
2103	62022c99-395a-42e8-b16d-1b23e40da818	2021-12-20 18:25:39.13592+00	331	142
2104	70bc7b08-64a6-4621-a604-572dd24e1a03	2021-12-20 18:27:41.334854+00	524	1724
2105	a14c042d-34db-41d8-b088-4383aa19dbd2	2021-12-20 18:29:29.408508+00	524	750
2106	5bdbb26d-8c8f-421d-9844-ad83bfd14a1f	2021-12-20 18:38:25.472124+00	105	437
2107	daa4d226-cd92-4f5c-9670-e305b282bbcc	2021-12-20 18:38:41.230366+00	137	437
2108	13ce9472-fc50-4150-bc07-abadbe428fff	2021-12-20 18:40:11.770272+00	462	322
2109	5878d496-6f06-4e25-9e2e-5238498094d4	2021-12-20 18:43:42.23039+00	105	1754
2110	19c558d8-41a1-491d-9399-1988df40026f	2021-12-20 18:43:53.550093+00	137	1754
2111	501d0bfd-fe45-49fd-9572-5f0cc568c77e	2021-12-20 18:44:26.864664+00	462	1420
2112	b1a61238-5460-4b0c-8247-c41b5f7d3202	2021-12-20 18:48:06.980128+00	160	1551
2113	91e13779-6b3a-4230-b499-f0d8ad8743bd	2021-12-20 18:51:23.065627+00	187	1551
2114	16eed5c0-5fc4-437e-8eb6-cb0e534a3481	2021-12-20 18:56:13.179591+00	105	1211
2115	ec2acc65-24d9-4cc8-9c73-e009002bd6ad	2021-12-20 18:58:03.048648+00	137	1211
2116	eb0bc970-6c71-4d6d-93d5-9420bea4727a	2021-12-20 19:00:52.436134+00	119	324
2117	614c556f-268a-4644-b538-f471a3d0544f	2021-12-20 19:03:17.070121+00	548	1081
2118	ebda8a80-d95d-49d3-8d16-43ea2c6c518c	2021-12-20 19:04:07.788293+00	524	366
2119	331872b9-d464-4974-b621-2cccd0228842	2021-12-20 19:04:57.185274+00	461	1081
2120	a1870ad1-c554-4b50-b669-7084a6712ea9	2021-12-20 19:07:02.421484+00	135	437
2121	a57afb22-bd0b-448a-86cb-24b55a78c0cf	2021-12-20 19:09:00.221792+00	137	1399
2122	01310c05-d61d-452d-a55c-8ff7641bce3f	2021-12-20 19:09:07.960751+00	127	324
2123	69a66583-18cc-49c7-994d-76c81291a638	2021-12-20 19:13:49.372449+00	105	366
2124	9e7cc79f-337d-4d80-8dc9-3db3b594fe48	2021-12-20 19:14:04.290299+00	137	366
2125	65ee4a73-1f1a-4de6-be77-246b44b868bd	2021-12-20 19:16:45.76984+00	135	324
2126	92e02c42-2627-419e-be64-c574267801dc	2021-12-20 19:17:44.428974+00	138	437
2127	4ca24c31-3297-4b42-bb30-56dc93c737fb	2021-12-20 19:18:21.112296+00	462	1188
2128	db0092aa-d46a-4213-b002-78da858883b6	2021-12-20 19:20:20.366302+00	119	366
2129	2f48f4fc-ba0f-4954-954e-3785915bc3e2	2021-12-20 19:20:25.584221+00	524	385
2130	2213ee54-2fe1-4f78-8b56-0fd4b01971e6	2021-12-20 19:21:14.753393+00	127	366
2131	196a6567-82da-49e4-bca8-522ee9eb8473	2021-12-20 19:23:28.274992+00	393	142
2132	d3596607-493f-4ba0-84f6-4190c2bdf588	2021-12-20 19:27:42.466924+00	462	1749
2133	a1d2c5a7-079f-4478-a65e-db7bb1d18432	2021-12-20 19:30:00.765572+00	520	683
2134	68ff3c80-292c-4b17-9e60-7e45e7d2cc7c	2021-12-20 19:30:06.764572+00	138	437
2135	52238b30-0560-4fa1-8771-eccf4f2ced49	2021-12-20 19:30:19.806487+00	135	366
2136	cce06434-ec50-4f69-90dd-f6280fb5a5e9	2021-12-20 19:31:57.254859+00	548	506
2137	67153a4e-16e1-4456-8299-e91dffca5dd5	2021-12-20 19:32:21.352282+00	524	275
2138	0f731fa3-eaa0-4aea-88d7-73d5ed4e8caa	2021-12-20 19:32:57.568214+00	524	901
2139	38343be5-17d9-4119-a6ce-6887f940c839	2021-12-20 19:33:07.159006+00	461	506
2140	bfe428b1-6685-43ac-9e4b-1d4425f1b1fe	2021-12-20 19:50:06.615219+00	464	642
2141	87526314-82b6-41d0-93cc-29977fcb3444	2021-12-20 19:50:51.171803+00	462	1666
2142	cad891c2-281f-48a4-bf05-a548fd660ff0	2021-12-20 19:53:09.42345+00	135	366
2143	669821f2-d296-4846-be97-b6623375e2f5	2021-12-20 19:53:46.295761+00	105	1580
2144	be3fe61c-6b50-437d-8253-a6fd49f37216	2021-12-20 19:54:20.300252+00	465	642
2145	f9600ab3-f774-42a5-a28e-92c5df8ee7a9	2021-12-20 19:56:04.972394+00	466	642
2146	73a0934a-d8c5-477b-bbc9-22afeb5144a8	2021-12-20 19:57:04.319982+00	462	1644
2147	2dfeafde-8b86-4ec4-8a9d-670c69ac4bc0	2021-12-20 19:57:52.977797+00	467	642
2148	cf5077b3-0129-44e9-b19f-2bc3621b934e	2021-12-20 20:00:28.012789+00	548	683
2149	156d9427-5230-4b6f-b6ec-21170cc73bb4	2021-12-20 20:01:47.576439+00	468	642
2150	7e5d0d48-5d84-417c-be27-0d64b0ef0649	2021-12-20 20:03:53.486182+00	393	1081
2151	e5592649-bde9-41ed-9f53-5a7de324edf6	2021-12-20 20:06:03.666751+00	469	642
2152	5026b3ae-a1ac-4e87-910f-5c55621eb722	2021-12-20 20:06:33.927163+00	470	642
2153	92c28895-8ca3-4e1e-bcc1-8e92022f0f59	2021-12-20 20:06:39.955688+00	471	642
2154	75c2c087-ea38-4f59-a0db-1bbb9a59512e	2021-12-20 20:07:10.970585+00	471	642
2155	8824988b-2f8a-4037-9451-b29b1f158843	2021-12-20 20:11:37.278287+00	462	926
2156	8136c274-fe7e-451c-ba97-acf41d812e78	2021-12-20 20:13:31.667138+00	462	1701
2157	c39d3f06-8235-4a50-aa1d-adb42ca9b849	2021-12-20 20:16:08.460427+00	524	758
2158	004dfd2f-ff5a-4e67-9e1a-56599145cce6	2021-12-20 20:17:17.942936+00	464	1081
2159	c35ad411-5f8f-4fb6-8a0b-279c90cd4914	2021-12-20 20:20:33.798561+00	524	266
2160	bec68895-50bf-4a33-91a4-54ef2ede87b4	2021-12-20 20:21:12.928847+00	462	1778
2161	4653cd2b-f333-4576-b51c-b5b1d9769290	2021-12-20 20:21:41.284161+00	105	275
2162	75009d2a-ab65-49b6-a6cb-9f9bc1d53d08	2021-12-20 20:23:45.814929+00	137	275
2163	afea2715-d885-4e7c-a67b-560f3bc9e902	2021-12-20 20:31:04.345033+00	465	1081
2164	ce22209e-6c1f-4cf2-b481-d25ae9458e13	2021-12-20 20:32:03.376968+00	466	1081
2165	a9d01315-6a69-4deb-a44f-e0fadfed33da	2021-12-20 20:33:00.683053+00	467	1081
2166	3a8fae54-a66c-40db-8345-94f129b2e2cd	2021-12-20 20:33:13.434495+00	462	1769
2167	0e3e284a-16c2-461d-af25-5e8c9f25b443	2021-12-20 20:33:54.886704+00	526	437
2168	ea778322-90dc-454d-94e6-3efa01f5e551	2021-12-20 20:35:30.824077+00	462	1598
2169	a11e15e2-9f7d-4a0e-a8c5-61a94808e2ae	2021-12-20 20:36:32.419229+00	462	1703
2170	792657a4-f94a-4893-852d-2073fa58d6c4	2021-12-20 20:43:43.356394+00	105	385
2171	a3061ae0-c00b-44b3-815e-9a2cbb6959b1	2021-12-20 20:43:47.040076+00	462	378
2172	36aa5d9a-87d0-4b2d-ac1f-0655d928b9a4	2021-12-20 20:43:52.387961+00	137	385
2173	7786780e-db01-477c-a680-d9139f17ebd1	2021-12-20 20:44:14.211125+00	462	1760
2174	b989af46-d2fd-4f0f-941c-d404a9bc1d14	2021-12-20 20:45:09.34266+00	524	1666
2175	1724e31f-a412-4832-8adb-99c4fefbb636	2021-12-20 20:54:48.534738+00	119	275
2176	2110d6bb-12ba-42ed-b3e4-f6322b69895d	2021-12-20 20:59:41.798657+00	127	275
2177	f3992ee2-0aab-4134-be10-67d21389a434	2021-12-20 21:01:11.135925+00	462	1740
2178	32562d28-7ff1-441c-953c-12b7ff337784	2021-12-20 21:05:05.525149+00	135	275
2179	95f7a961-a893-49e1-98f0-280a668b6c44	2021-12-20 21:07:05.091879+00	462	234
2180	e92310bb-59e0-4cf1-8460-e572e9b3831e	2021-12-20 21:28:04.656189+00	393	908
2181	bd2c9d48-4e81-4f46-a051-8b9fa5c6d13d	2021-12-20 21:28:42.076716+00	462	1444
2182	b78e6dc9-046f-43e6-bfea-49cbabd654eb	2021-12-20 21:34:48.251237+00	462	807
2183	773ec103-7e65-4d61-ad0e-686d50285110	2021-12-20 21:54:15.643761+00	462	234
2184	d0640a9d-c9a2-45fc-a98b-c201a59851e7	2021-12-20 22:25:44.932883+00	462	1785
2185	a9dbaeab-c551-4790-bc4e-b9c4879596d6	2021-12-20 22:29:51.837223+00	524	1096
2186	74466162-5f47-4fb7-ba56-7211d67c20bc	2021-12-20 22:37:57.962892+00	462	1691
2187	a349d977-479e-4e71-ad32-a2b73322d843	2021-12-21 01:56:56.776548+00	462	1219
2188	4148ed35-69b9-4efe-b909-68b785ef2a55	2021-12-21 03:24:34.874383+00	105	1064
2189	6b4ccaae-f396-495d-8a71-efc18a1ec7a2	2021-12-21 03:25:09.848842+00	137	1064
2190	4a8e4686-9991-4b18-b5b3-750e9d4ef587	2021-12-21 03:39:54.12424+00	462	850
2191	ba624c4b-426c-454d-bf68-20d7b0301b4a	2021-12-21 03:43:26.689577+00	462	1277
2192	33281ef6-a220-4d1f-8701-9937176fccd3	2021-12-21 04:04:37.803444+00	462	591
2193	92751389-d09e-4007-ba65-eef3d390abf0	2021-12-21 04:05:24.918712+00	137	1334
2194	28a0fca2-5e60-42df-88c2-0edbcab13ed4	2021-12-21 04:11:29.397247+00	119	1334
2195	d1b9e582-76bb-4818-9d29-46b6ceb7b080	2021-12-21 04:18:18.887903+00	105	1654
2196	3a410555-987c-4506-b25c-17976ec5c39e	2021-12-21 04:26:55.224885+00	527	437
2197	ea2d5446-a1ec-4f62-bd37-ab5f69d70532	2021-12-21 04:35:03.004266+00	462	859
2198	12fb7a9e-39e8-4713-a82b-21e3976f833e	2021-12-21 04:44:26.945588+00	462	1793
2199	5de3bac9-3f71-4eb5-b9a6-72f49faf32a8	2021-12-21 04:44:32.147198+00	137	1654
2200	e13fdebf-b360-4e8a-921f-3bda645e11ab	2021-12-21 04:55:26.386091+00	462	1567
2201	d682a02b-58c6-479f-8b50-09eabbbcd39f	2021-12-21 05:06:33.913887+00	524	197
2202	2263447a-1f57-4d83-854b-83662e7ff271	2021-12-21 05:26:28.146324+00	462	743
2203	40a6ee2d-8196-4619-bb21-7587308bd529	2021-12-21 05:27:02.553859+00	462	173
2204	cad0e27b-8b7c-40b7-9a4d-3147e662f940	2021-12-21 05:27:31.094051+00	105	691
2205	dbe2cd64-c464-4674-b9e8-f63a60ff321e	2021-12-21 05:28:00.768292+00	119	1654
2206	f3786b82-477b-4763-9249-6ce4ea11014a	2021-12-21 05:28:48.384744+00	524	1377
2207	be74c0c7-d880-4553-83c4-0c6b79691047	2021-12-21 05:31:58.054683+00	524	624
2208	546aa2d3-9795-40d0-8596-4d35bcc7478a	2021-12-21 05:34:20.41991+00	524	859
2209	a31b785e-db95-485a-8dd3-a2c3e274d0f3	2021-12-21 05:35:31.461994+00	462	1789
2210	8eb89571-bfb2-4b7b-8868-8477bbf7b8da	2021-12-21 05:50:38.913163+00	462	384
2211	d6d69c02-7b06-4fa7-b8c0-c2248ba4ca7b	2021-12-21 06:05:53.109049+00	462	766
2212	a3aabf5a-8fff-4a37-84ac-55f2bdcde1ee	2021-12-21 06:14:07.593974+00	137	1332
2213	0c816520-8cf2-44f3-bba6-354097f48a0f	2021-12-21 06:20:14.632686+00	462	1695
2214	65aaf15d-dcfb-481c-a0c9-ad1c06799843	2021-12-21 06:26:53.23743+00	119	1332
2215	97ae9389-1ebc-4933-bcf9-f439d36bdaa7	2021-12-21 06:28:46.404699+00	462	1766
2216	d473563a-2a44-4afe-8082-b48769959446	2021-12-21 06:36:35.587484+00	462	1075
2217	28318d71-649e-49ed-bbda-420e21932fd4	2021-12-21 06:37:29.422666+00	462	1475
2218	98f1cc10-deb6-49b3-aae9-41114411d6fe	2021-12-21 06:42:24.629217+00	187	196
2219	684c95e6-b24b-47a7-b100-d7838347d780	2021-12-21 06:43:15.803486+00	127	1332
2220	4590224b-86d7-4b64-9420-8a14910a5e15	2021-12-21 06:47:51.863656+00	462	1465
2221	0653970e-4687-4b2f-b13f-466cf8d66337	2021-12-21 06:49:52.609218+00	105	624
2222	e17fde4d-97a8-4714-bdf3-cfbfe785ddfe	2021-12-21 06:52:01.322196+00	448	196
2223	0f29906a-db3d-4dff-a2ba-66b8f88cf9af	2021-12-21 07:01:39.523582+00	160	1073
2224	54d63da3-2794-4550-8a1b-7cfe186f4083	2021-12-21 07:13:22.294856+00	524	258
2225	d1b01223-a0de-4b06-9d3b-57e1d13ff030	2021-12-21 07:18:35.103572+00	135	1332
2226	85434f90-edc7-4ebb-9ba8-482a27a8f4f0	2021-12-21 07:19:18.746761+00	527	1523
2227	87577827-1ad5-483b-aa15-999181271fda	2021-12-21 07:21:02.232135+00	448	1523
2228	c47ff713-7394-4f01-8971-a48147652e75	2021-12-21 07:23:34.176299+00	105	1060
2229	81d414fd-bd04-4f84-b90a-64e64374db18	2021-12-21 07:26:58.079902+00	137	1060
2230	5cbb3272-43dc-4ff4-be68-0bcb9c79951c	2021-12-21 07:31:01.288356+00	138	1332
2231	32f6eccc-d7b4-4103-a58a-984f0ac22d98	2021-12-21 07:36:22.017301+00	137	623
2232	29061ba1-f914-46a1-9a1e-480a885af23b	2021-12-21 07:38:18.899279+00	119	1060
2233	0115c185-03ff-4ae0-8d3c-bab491c393bb	2021-12-21 07:41:35.929956+00	105	1603
2234	01c17991-4a33-4933-ad17-61a861738297	2021-12-21 07:42:08.910952+00	462	972
2235	d086fb4f-a4ce-439d-a6fa-2e6ee0c02ef0	2021-12-21 07:43:16.417496+00	462	747
2236	57be2f8e-e05f-4efe-87b6-3cc5fe2c1dd1	2021-12-21 07:49:14.706955+00	462	645
2237	32689c91-5148-4c3f-94f4-e4f4a59b6728	2021-12-21 07:50:04.996823+00	119	623
2238	404166c0-a37d-4aa8-b3b5-5aba892bb83d	2021-12-21 07:53:18.205792+00	526	1332
2239	be4982e6-cb43-43cc-a136-573ec525e0f7	2021-12-21 07:55:35.777664+00	462	176
2240	02047a90-0afb-494b-8621-c06120c64ad4	2021-12-21 07:59:24.422822+00	329	203
2241	e08e825a-1dcd-482b-8443-fcaba49c42b4	2021-12-21 08:04:24.886716+00	137	1211
2242	e0cecbfc-585c-4c9e-b038-8f8d12d02db7	2021-12-21 08:07:11.47816+00	127	1060
2243	96973231-08a8-41e0-86d9-018a30d51cd4	2021-12-21 08:09:14.541167+00	137	624
2244	10d609ef-f24f-4af3-9bac-b979a2111ec1	2021-12-21 08:09:34.340788+00	137	624
2245	a6d52943-9fbe-4984-9344-d0ecff758c35	2021-12-21 08:14:50.258926+00	135	1060
2246	0aba4eeb-ed61-4f7d-8d99-6c9f1cf44535	2021-12-21 08:18:58.114908+00	138	1060
2247	42ecc456-2b49-4e16-91b7-b1b369330b0e	2021-12-21 08:21:52.039177+00	138	1114
2248	32051f8d-9b35-4a76-84b0-8b50101b6828	2021-12-21 08:24:03.583153+00	462	989
2249	7bda7737-430d-41be-8703-5dbfc5c7dffd	2021-12-21 08:27:10.10244+00	462	173
2250	061d57c7-1075-4060-b7f3-2737dd67acdc	2021-12-21 08:29:30.001178+00	462	1775
2251	de8bdaf2-e28a-4d75-b315-40bb024aad5b	2021-12-21 08:29:47.143247+00	526	1060
2252	e3fa8d8b-9a9f-4fb1-b4c2-304f1f7076fb	2021-12-21 08:33:18.511745+00	331	203
2253	95638ae4-2d49-4ae2-b2d1-e6f910d0e499	2021-12-21 08:37:45.618097+00	462	1440
2254	0a994d4f-3d9e-4b81-8c3c-f3301c1494c7	2021-12-21 08:38:37.873588+00	462	1321
2255	a26c7db8-d079-4104-9327-ec340f35b083	2021-12-21 08:38:43.395845+00	526	1060
2256	e939877d-e4d5-4135-91e5-3b45c7eb8756	2021-12-21 08:40:30.489854+00	462	1676
2257	a21d2784-9023-4dc9-a452-d76faeff589a	2021-12-21 08:40:52.485757+00	527	1060
2258	d2adb133-e0c8-4410-ba17-13dfa0a8e1e2	2021-12-21 08:42:38.675071+00	448	1060
2259	ff69a043-979e-4860-a7d9-5e20d532fe48	2021-12-21 08:43:04.510118+00	329	1345
2260	74876a94-c7f7-480d-9f25-8873622dfb6d	2021-12-21 08:47:21.328247+00	119	1211
2261	333408b7-71a9-445f-828b-0086da8e9701	2021-12-21 08:49:57.623213+00	524	1022
2262	48a6fe73-3be8-4654-bbbe-8d02bf8940a5	2021-12-21 08:55:15.041321+00	135	705
2263	fb7e1d96-c661-4418-9950-5e45b5a6ea12	2021-12-21 08:57:52.150095+00	520	1551
2264	e3040f95-0305-4810-8bcc-8f27f6c926de	2021-12-21 09:02:08.512476+00	524	176
2265	f4b6085e-67b9-4128-8d34-3d1f8f3d04f8	2021-12-21 09:06:19.414412+00	127	1211
2266	e9dfa8b6-f036-4d5c-b98e-86cf469693df	2021-12-21 09:11:34.511444+00	138	705
2267	7f5e99b2-7275-42c7-a409-c35899ad77ab	2021-12-21 09:15:18.937166+00	135	1211
2268	e8b3cc63-2787-406e-bb32-d82a96aaf3f4	2021-12-21 09:20:24.373206+00	462	1728
2269	f88b03dd-6ca2-4a35-8569-9380c23c9fa1	2021-12-21 09:23:05.429868+00	462	1023
2270	e312ea4c-f79f-4e4d-b8de-87ee0ef54b72	2021-12-21 09:27:56.161357+00	527	325
2271	13c22938-e36d-4f1c-96c1-27c5d925ffde	2021-12-21 09:29:31.134278+00	448	325
2272	2603ed17-f4d8-4bdf-8b57-d817d7273cd1	2021-12-21 09:32:16.256524+00	138	1211
2273	09dd2a0a-e9db-414d-8601-bfa90a971152	2021-12-21 09:34:19.807754+00	462	1123
2274	531991b5-d43b-4473-bee7-28f2a944443d	2021-12-21 09:34:40.105058+00	119	385
2275	a832cea3-a465-4486-bcb3-4f83b7d5b54a	2021-12-21 09:35:47.04836+00	127	385
2276	183e0364-5a0a-49f6-bf8d-3577916a2630	2021-12-21 09:37:10.526531+00	135	385
2277	1889b9d9-ec93-443e-958e-ca746d853636	2021-12-21 09:38:58.476808+00	524	1123
2278	6b162fdc-bd2a-4d0a-b508-02ca8cb78baa	2021-12-21 09:41:54.087842+00	105	1123
2279	8ef56ad5-ad2f-4c19-a897-d8dec89abe72	2021-12-21 09:43:41.973483+00	137	1123
2280	1a61dea4-ab9f-4179-98db-cf098013a7d2	2021-12-21 09:44:00.551566+00	137	1123
2281	07097f86-be74-43da-b6d3-1ccd3e94f3af	2021-12-21 09:49:12.031308+00	119	1123
2282	b58f732f-08ea-4c52-9997-d08dd3b6bd98	2021-12-21 09:49:27.006759+00	138	385
2283	ac078c66-0478-42c9-8b95-d3f9be091a13	2021-12-21 09:52:44.671092+00	127	1123
2284	8b84afee-ac39-462a-96ef-255de9f79ae9	2021-12-21 09:56:16.666967+00	135	1123
2285	917b7f5a-54a6-4598-b1b5-cb0f18d8ce86	2021-12-21 09:58:44.528166+00	138	1123
2286	3b947535-cdad-4ffb-bfc6-023e1aab57e6	2021-12-21 10:03:39.542347+00	526	1123
2287	8a45706c-64b7-47b0-bca1-a84928bd94a0	2021-12-21 10:08:21.631632+00	462	1597
2288	b6c0f433-9f8e-4874-8ea4-f0032e452d43	2021-12-21 10:08:28.68485+00	527	1123
2289	ef428054-4ca3-4c62-ba32-ad2eb814e922	2021-12-21 10:09:50.873241+00	448	1123
2290	1cc5ebe2-60a9-4906-9b56-89fd033f178b	2021-12-21 10:14:47.681666+00	526	385
2291	3c9d453a-13fc-4b91-8d41-9b9d5e9b113c	2021-12-21 10:16:28.562935+00	462	426
2292	b5eb1887-1d65-471c-9ff1-a511f440c6cc	2021-12-21 10:16:29.761166+00	524	1647
2293	afdc9aa9-dd00-4d5c-9c5a-ba7c87bab9b1	2021-12-21 10:18:27.207802+00	462	1198
2294	20be083d-4c59-4d75-a0b3-a0852294f116	2021-12-21 10:21:43.772053+00	137	691
2295	d3f5ce0e-5315-432e-bf43-9ebaef0e68e9	2021-12-21 10:30:32.922123+00	549	1226
2296	088b8961-5e02-4b4b-909f-81f8d8f288aa	2021-12-21 10:34:38.784082+00	524	747
2297	b331dd8d-140c-4241-b7c7-ea75201cd7dd	2021-12-21 10:38:26.986442+00	462	1798
2298	d910c103-9204-413e-9faf-53bca2c19b04	2021-12-21 10:41:59.83504+00	462	1798
2299	2a909b17-3edf-4396-9a70-c21f99c6408e	2021-12-21 10:45:32.112687+00	462	1628
2300	2f586d33-1855-465f-9a4e-7ab57c7a632e	2021-12-21 10:52:53.381417+00	524	1226
2301	b4e23f54-327a-4b3b-97aa-df4dd256d0f0	2021-12-21 10:53:34.169362+00	524	1697
2302	7bf65dd2-4f39-4fcc-a81a-92c61770ca9d	2021-12-21 10:55:24.5189+00	526	1211
2303	7227c383-8d56-443e-9aa4-b49fada7388a	2021-12-21 10:59:57.771652+00	463	142
2304	59633682-53a1-41d3-8cd0-383f7dc6a05e	2021-12-21 11:00:02.531563+00	464	142
2305	f5b588a3-24a0-435b-86b2-aad37fa4b6ba	2021-12-21 11:02:22.270975+00	405	142
2306	094a59af-5fc5-46ba-b0cf-a75729bdea1b	2021-12-21 11:03:35.758913+00	462	1107
2307	639790c0-6b60-4fad-99e2-2f8e905cb3a2	2021-12-21 11:09:01.203169+00	462	1643
2308	21f04439-75fa-4508-bcc9-910820afa888	2021-12-21 11:12:31.430581+00	462	1796
2309	0185eb15-0517-4925-b13a-e870a53a8bbc	2021-12-21 11:13:20.484479+00	527	385
2310	96669bce-8482-4aab-bf13-4f21a04ef6d7	2021-12-21 11:14:22.752389+00	448	385
2311	d8b5d316-cfc3-46cb-b1f2-b16ccbeccaaf	2021-12-21 11:15:48.295996+00	105	399
2312	db28e781-227e-4fd6-a992-04953679d63a	2021-12-21 11:18:11.186979+00	137	399
2313	07227af2-147d-4459-984b-079f24a34d7e	2021-12-21 11:23:23.270661+00	105	1226
2314	1ebc66af-e76d-42ce-a34e-5a5761fc67ff	2021-12-21 11:23:25.384237+00	462	1693
2315	60d35e8e-1a0a-47aa-a2dd-0857f4902320	2021-12-21 11:26:04.080966+00	137	1226
2316	faf43454-7a19-4148-936c-31605630727b	2021-12-21 11:29:45.244463+00	520	196
2317	32469753-0487-4d37-b091-96f4a1e7d9f8	2021-12-21 11:39:55.077232+00	520	1523
2318	51edec67-7f56-404e-9a39-b708d354f1bc	2021-12-21 11:42:07.483221+00	527	1211
2319	d20d9619-a67a-4fa6-b535-ee56d6089d8e	2021-12-21 11:43:34.859635+00	448	1211
2320	186365a4-4c8f-4486-9b0f-484d77af205c	2021-12-21 11:45:13.949941+00	520	1523
2321	db95e65c-af47-4228-ae4b-cb23e66daf0e	2021-12-21 11:52:52.03774+00	524	972
2322	4267a963-4b60-4198-9032-f38591314085	2021-12-21 11:53:54.649855+00	524	1023
2323	08b2238f-f55b-4878-a3ed-2bb17a659acf	2021-12-21 11:57:23.119949+00	463	1117
2324	ae354570-9e84-436a-b2da-ed48d80d8bb2	2021-12-21 11:59:00.41314+00	470	1117
2325	7f5a872e-ad30-4367-88f0-95fca9cdba88	2021-12-21 12:03:34.007758+00	462	1648
2326	750fe8d1-f4db-456f-923c-5989e918afbc	2021-12-21 12:03:38.371296+00	105	1697
2327	c21d66fe-5b8d-422a-b30d-e0b7e71e3cf5	2021-12-21 12:06:04.515009+00	137	1697
2328	b59289a9-0019-4200-bb76-6c4eba3696c9	2021-12-21 12:06:24.580636+00	127	1445
2329	070418af-1f37-4ed5-8380-039361b20025	2021-12-21 12:09:26.6914+00	464	142
2330	9a7c4da4-ff03-4fa5-9ec5-0f35e16ac162	2021-12-21 12:11:34.924141+00	448	1365
2331	beae2b05-976b-4865-8907-47275ea819ca	2021-12-21 12:11:37.495971+00	105	1087
2332	d85cc08c-0cf1-4158-bc8e-eaddb216d1e1	2021-12-21 12:12:49.110413+00	329	1365
2333	c2c7d040-7e5e-4ead-b204-183ee2daef37	2021-12-21 12:12:57.084969+00	331	1365
2334	f03ae60e-acec-4baa-adb9-de0ef7b9fe50	2021-12-21 12:13:29.057596+00	135	1445
2335	296c318a-c9c6-4893-9ee5-1f643cb83a2f	2021-12-21 12:14:05.737977+00	137	1087
2336	af2769cd-33dd-4a53-9610-6eb8804e1c92	2021-12-21 12:19:37.037049+00	524	1445
2337	14300597-823a-48d9-aa2a-f32f6329dbd5	2021-12-21 12:20:59.056146+00	462	1799
2338	ca4228ed-6ef6-47fd-9531-4dfb9e8adc0a	2021-12-21 12:21:50.108675+00	462	1799
2339	054dcdbe-9f94-4915-8d3d-7b1658fe10ae	2021-12-21 12:23:07.518782+00	464	107
2340	1e11a35d-de2a-4200-b0f6-e2949ad70394	2021-12-21 12:23:41.617021+00	119	1697
2341	a5515d58-4d47-488e-9d06-2542a71098fd	2021-12-21 12:26:29.660139+00	464	1798
2342	18ebe36a-d911-4f20-b6fb-ed4dc94f0abc	2021-12-21 12:26:36.639642+00	465	1798
2343	debc04d6-139b-47b2-a94f-751103b055e3	2021-12-21 12:26:51.916293+00	119	1087
2344	29adb241-ee10-4bfd-98f3-630e6d96c4c7	2021-12-21 12:27:13.064133+00	470	1798
2345	520bc0e5-f2aa-4a45-a00d-528d3d9ad266	2021-12-21 12:30:56.54035+00	127	1697
2346	3ecb4a4c-68d9-45c2-ae1e-74e2d92d23a0	2021-12-21 12:32:31.429785+00	138	1352
2347	af24d959-aa80-49b2-9b59-17a1b50c894f	2021-12-21 12:35:57.187761+00	462	1477
2348	f27eae75-5641-429b-84c6-a6e6f9e66cbd	2021-12-21 12:37:34.269627+00	127	1087
2349	83b1aa16-378d-4cd9-9376-6a7f15a2bd2d	2021-12-21 12:43:21.902986+00	462	1730
2350	b89bfe41-2035-4616-98d4-60765aa3c497	2021-12-21 12:44:58.393422+00	135	1087
2351	2bfbab81-fb23-4b9f-a9d2-6cc5c3a16324	2021-12-21 12:46:09.346322+00	524	948
2352	3c2b7bd4-55e3-4b98-a4ac-f24133d42447	2021-12-21 12:48:33.930276+00	138	1087
2353	bd60c139-b690-4d79-a120-8ab00edd9bfd	2021-12-21 12:49:22.305587+00	527	1306
2354	89aa555a-7d57-46a2-b41c-182cfcac4984	2021-12-21 12:50:37.261279+00	448	1306
2355	3c6df2f7-86a6-42b1-8c47-43183dd541a4	2021-12-21 12:51:27.813257+00	137	1576
2356	1b8415fd-ded7-4490-89dc-4b8d36815a38	2021-12-21 12:53:23.51904+00	526	1352
2357	3ce3591c-324e-4528-bb03-b6ad57517e20	2021-12-21 12:55:38.034706+00	527	674
2358	2f7e3ff5-fbd6-48e3-a9a0-aa79817a1e7f	2021-12-21 12:56:27.772195+00	527	674
2359	472392b9-f511-4612-9d7e-b1ba1a7e93e0	2021-12-21 12:56:58.496948+00	524	1198
2360	701b9d56-3025-4419-af69-fff1d53b25e8	2021-12-21 12:57:51.145599+00	462	1574
2361	fc798123-2200-48ab-86a4-ada992b6ef5a	2021-12-21 12:58:02.902486+00	526	1087
2362	a65e7c2e-1b8e-47d6-89e0-89155797e543	2021-12-21 12:59:39.455118+00	135	1083
2363	637a12a9-6846-47da-b5dc-b10eb3a5d5de	2021-12-21 13:02:34.07914+00	462	544
2364	3a3d5fbc-d8a6-480a-adb1-9abdea552ff0	2021-12-21 13:02:58.405917+00	462	1158
2365	e2e3b0cf-f21b-403d-8a51-57cc648786dc	2021-12-21 13:03:08.977654+00	138	1083
2366	2caecea6-7678-4f13-ae75-f2fcb74b1420	2021-12-21 13:04:19.85091+00	524	674
2367	8355c95b-d4f0-4979-8c42-937a72901a0e	2021-12-21 13:05:32.409173+00	160	1211
2368	e420b19b-fb30-4f9f-a722-e37b37428cd2	2021-12-21 13:05:37.109893+00	462	469
2369	ce2cf100-df1a-475c-aca4-51dcf53d4fc9	2021-12-21 13:05:45.929811+00	448	674
2370	ceab0878-8250-4cda-ad1c-c8082cbfc556	2021-12-21 13:07:32.721201+00	138	1087
2371	364a1b97-0257-4c91-8a8f-5194e51502fa	2021-12-21 13:07:57.828068+00	187	1211
2372	3344528d-44a4-48de-8482-3e61193dca4b	2021-12-21 13:08:07.99268+00	138	1087
2373	1f71cf14-8efb-4454-ad7c-f618cea42368	2021-12-21 13:08:49.858789+00	526	1087
2374	0452d1e5-4194-4562-9f4a-92d04a1464fb	2021-12-21 13:09:22.046243+00	527	1087
2375	0ee00443-c036-405d-b236-188d58ae3939	2021-12-21 13:10:43.284488+00	526	1083
2376	2cdc94a4-6676-44b8-8657-77651c59316b	2021-12-21 13:13:43.225323+00	527	1352
2377	5490aa99-9f39-4677-98f2-58e8fffa44fd	2021-12-21 13:15:22.58778+00	527	1083
2378	97277b1a-2480-4a0c-8bcb-98380cfcede7	2021-12-21 13:16:38.700319+00	448	1083
2379	9a288d65-b822-436c-8dec-1b9709feef8c	2021-12-21 13:19:21.435725+00	465	142
2380	fe76a7d4-28c1-4798-a843-30e6deff9d82	2021-12-21 13:20:08.88772+00	448	1352
2381	8689c973-283f-4590-9ab7-bdc2d5f5c13c	2021-12-21 13:20:10.452591+00	462	1207
2382	03d0520d-08af-4715-9f86-b3dc9793ef9c	2021-12-21 13:22:52.738279+00	462	340
2383	49aff645-c343-4974-a06f-33affb62e81d	2021-12-21 13:24:43.366917+00	466	142
2384	009c6699-fc64-4cef-9621-683fdeee8558	2021-12-21 13:28:12.051861+00	524	1752
2385	1d203bbc-a633-4d6c-ba81-1011e4e48aec	2021-12-21 13:30:00.449343+00	524	400
2386	f03c24e3-8bb1-43b4-bd6a-ffecbe0dc80b	2021-12-21 13:30:30.4745+00	524	1207
2387	c382da7f-a2ff-460f-921b-fee944461b22	2021-12-21 13:30:33.500984+00	467	142
2388	1fca8d9c-d139-4f8a-beb4-a0d82a0ac1da	2021-12-21 13:31:11.069964+00	119	1576
2389	5ecc2361-4283-40a3-afb8-7bf002d98ee6	2021-12-21 13:32:21.892043+00	524	266
2390	4356d9f4-e854-47fb-a4b0-371c37929743	2021-12-21 13:35:13.784235+00	468	142
2391	c9003c4f-f15c-42a7-ad17-d2ba0cef2f5e	2021-12-21 13:46:18.659218+00	469	142
2392	f973ba55-4022-43b0-8853-6fb82dd1ef16	2021-12-21 13:47:42.754213+00	105	1207
2393	7c7f3cc4-9a32-4199-82af-414e9fff8650	2021-12-21 13:47:53.132661+00	137	1207
2394	22b973b7-627f-46cc-88b5-ceb00017d7d3	2021-12-21 13:50:07.242923+00	549	142
2395	f3abdc5c-bfde-405d-ad65-2170cb0f2897	2021-12-21 13:53:07.630906+00	465	107
2396	6370cb79-9304-4c22-8f90-ebb7365e3f6f	2021-12-21 13:54:04.816352+00	524	1552
2397	1a15d51d-1c66-482e-90ee-27ad05108ccd	2021-12-21 13:59:21.354671+00	137	1207
2398	b2e0350e-3895-4448-a7ee-0e6933939bd3	2021-12-21 14:01:37.817338+00	119	1207
2399	e9db4f05-b74a-4d53-9d60-97d58a756205	2021-12-21 14:02:48.129046+00	466	107
2400	3f85417c-5ebc-4739-a6ed-f00b0489fadb	2021-12-21 14:03:18.302465+00	467	107
2401	88191177-7da6-4c3e-9e80-7df9a27a5aae	2021-12-21 14:04:36.224949+00	524	1728
2402	a82fe9a8-b370-434b-8e0f-e8ba20e00202	2021-12-21 14:05:16.131935+00	468	107
2403	0afbe531-c792-4843-9bf5-89bc4618f7a7	2021-12-21 14:06:44.15194+00	469	107
2404	cacc044f-6398-4fb0-9339-5c0c01f0251b	2021-12-21 14:08:28.28168+00	549	107
2405	fa874a6f-b22d-4dce-ba45-c4ef61c3f0ce	2021-12-21 14:25:43.954094+00	119	399
2406	dd343f0d-7a28-4862-9a77-cd8459754ff4	2021-12-21 14:32:02.090172+00	105	1641
2407	ee329ec1-5b10-492d-840c-f3a1b0c2a408	2021-12-21 14:35:03.473194+00	462	626
2408	e526f8f4-0e2a-4c49-865b-d01e69062dab	2021-12-21 14:37:29.823774+00	526	375
2409	8d70d1df-fb37-49d3-9baf-a17b2f520e8f	2021-12-21 14:41:07.737973+00	527	375
2410	d43dba19-4ca4-4b21-a570-d503a30193b5	2021-12-21 14:46:31.703204+00	524	375
2411	e778032e-94b6-4409-9bc8-dbea254646dd	2021-12-21 14:48:54.9418+00	105	375
2412	d4ac4fa6-823f-47d4-8414-e691be07588a	2021-12-21 14:49:49.255104+00	448	375
2413	9c9f5c9a-11d0-422f-a761-e7098c983637	2021-12-21 14:51:31.438424+00	105	948
2414	78f161f5-6623-474e-8111-717689bbe8c6	2021-12-21 14:51:46.528058+00	462	578
2415	759e0ce3-5e4c-4705-8cc5-e16c6cdb1397	2021-12-21 14:51:47.68872+00	105	694
2416	e433abad-b420-4e66-9547-566df97149dd	2021-12-21 14:51:54.787358+00	160	375
2417	055b6926-f69d-4f2f-bd2f-5c3a99a37007	2021-12-21 14:54:30.307088+00	462	363
2418	9b6439b1-7203-4e85-a473-b47a8f39d822	2021-12-21 14:54:54.615377+00	187	375
2419	c0126862-a15f-4f04-89f9-b396455577fa	2021-12-21 14:55:44.194175+00	137	948
2420	cda98b84-3ca4-4f0c-ac4b-fbc281e69e1a	2021-12-21 14:55:47.296707+00	137	948
2421	247de5b5-3b2a-493f-83e7-d4ac7300016f	2021-12-21 14:56:30.924467+00	524	899
2422	9c2cec38-8bd9-4813-bbec-93e3253a277c	2021-12-21 14:58:30.776113+00	548	375
2423	c2a39e0a-fbdd-4202-a0f3-26fe3d28439d	2021-12-21 14:59:25.032679+00	461	375
2424	a78d97ae-ecb2-4a04-a22c-3df70ed1124b	2021-12-21 15:04:35.368339+00	549	375
2425	6eb7578d-69a3-41ee-8025-a4d8e4b26333	2021-12-21 15:14:02.087731+00	119	948
2426	b9a7d0ad-ed42-40cc-97c0-e415faf9a315	2021-12-21 15:18:44.482932+00	137	694
2427	98c0fbf7-3a4b-4db0-a4a1-12d6bb35da9e	2021-12-21 15:21:42.455919+00	127	948
2428	1fde58ea-a1a5-43a4-830c-8285750c5289	2021-12-21 15:32:47.594661+00	524	363
2429	66f6c17e-c457-46c5-8df8-966b0e375cb0	2021-12-21 15:33:55.91601+00	119	694
2430	1e38cc71-6cc0-468b-9968-582b859fd8d2	2021-12-21 15:37:58.153766+00	135	948
2431	b363e09f-4f03-4e39-8fef-ebef7f2fc9d5	2021-12-21 15:56:34.383336+00	160	1306
2432	8cc2d867-1815-4653-9cc0-e9c15f741c63	2021-12-21 15:59:43.451012+00	462	524
2433	891d3df1-e346-4677-932a-2000ec8d26f1	2021-12-21 15:59:57.491694+00	187	1306
2434	c6f6d506-2bb8-4a84-9b64-831bcd20a97c	2021-12-21 16:16:51.140543+00	138	1106
2435	c27c09e9-144b-4965-9175-d97d27d87b8c	2021-12-21 16:21:13.714057+00	160	953
2436	a884f727-985a-4046-bd35-42789b5aa4a7	2021-12-21 16:23:58.699264+00	187	953
2437	3b47313c-7a5d-49d4-b911-34f7cbe1ba20	2021-12-21 16:30:28.254061+00	137	1428
2438	e1268a32-88dc-453b-a756-707e34e6235d	2021-12-21 16:31:07.740761+00	462	1573
2439	f988e060-a09e-4dae-bfe5-34985e0f56da	2021-12-21 16:35:46.610377+00	520	1426
2440	2d279e04-72d7-4202-895e-722c5144fb9f	2021-12-21 16:36:33.140689+00	462	1714
2441	c74c8139-9401-43d1-b1b9-36fb762bcdc0	2021-12-21 16:36:49.260163+00	462	1714
2442	eeea8e91-fd32-4f19-9ccf-130cfcdcea16	2021-12-21 16:41:42.196552+00	526	1106
2443	162623bc-076a-4d11-94c5-b5923563c394	2021-12-21 16:43:19.020601+00	470	107
2444	b0c34523-d087-4f27-9044-3278251a5c39	2021-12-21 16:47:52.989047+00	524	1273
2445	448e884b-2406-4f7e-933d-516df33efeea	2021-12-21 16:55:26.690675+00	471	107
2446	3ec6c41b-8ac8-4432-b101-d2fcf0dddee7	2021-12-21 16:57:10.162633+00	438	107
2447	cf21a938-f1cd-495a-bf4b-84543073a89f	2021-12-21 16:58:16.047877+00	462	917
2448	5326b00c-06d3-4d17-8dea-f522f134c2e4	2021-12-21 17:00:50.930705+00	329	257
2449	f40d823b-40ba-48a3-b331-058e1a18d0f6	2021-12-21 17:04:39.862219+00	119	753
2450	f8003494-e700-4276-b8d0-701251a31cdd	2021-12-21 17:05:52.26011+00	527	1106
2451	6c8254eb-05a0-4289-b4fa-3111445a3b1c	2021-12-21 17:06:11.13079+00	462	1447
2452	e6ca5712-eb9f-4626-af5e-ae2e8ba79c35	2021-12-21 17:08:36.190832+00	448	1106
2453	d072b480-27bd-4a8c-a388-26bc0994697a	2021-12-21 17:09:56.103187+00	127	753
2454	78d36e55-e2a9-4118-bf48-224b5cf79188	2021-12-21 17:14:55.363907+00	462	1423
2455	45b80ef3-bc77-4eac-bfd0-6e75a6742197	2021-12-21 17:18:31.901622+00	135	753
2456	26713836-7816-49b7-aacc-2b14174c353f	2021-12-21 17:18:58.710675+00	462	1084
2457	033eeb69-ad04-4cc8-af01-61f6e61c5dfe	2021-12-21 17:22:37.125484+00	524	1423
2458	c4109da0-c523-48ec-8465-a5f5bd022c58	2021-12-21 17:23:29.594994+00	462	1423
2459	8cd2c324-110c-48fa-9600-1d98b8bc73ce	2021-12-21 17:25:09.038204+00	329	1081
2460	f44f10ac-dd9a-4f7d-b441-6d0f412ab9bd	2021-12-21 17:29:32.301463+00	462	1713
2461	38df6169-f8dd-4a8a-959e-d40b26a2eb3d	2021-12-21 17:33:46.963156+00	138	753
2462	8809ce81-0cd6-4dc7-9801-160da0892d0a	2021-12-21 17:35:59.081983+00	524	1421
2463	b0431e72-9d77-475c-941e-afc8f5d57d3d	2021-12-21 17:37:01.923515+00	405	534
2464	d20d8e18-f469-444b-b38d-02ebcf350097	2021-12-21 17:40:06.586823+00	462	1409
2465	4b076829-7448-4082-a96e-652260558565	2021-12-21 17:40:32.723701+00	470	146
2466	423763c0-e995-4a42-a61c-8efb14fafee8	2021-12-21 17:44:18.454192+00	127	399
2467	56982144-cba2-4430-ba1e-0432e1f87e40	2021-12-21 17:51:27.847586+00	549	534
2468	f91af91e-0169-4271-a6aa-1e1aa16df34e	2021-12-21 17:58:44.946722+00	127	694
2469	ef14af4d-24a5-45d5-aea1-b59a4c8c470e	2021-12-21 18:00:14.44692+00	135	399
2470	c1b0d8b7-6e55-416d-9379-d5b0c79b611f	2021-12-21 18:01:35.213079+00	548	196
2471	6f77da80-37cb-4dcb-bc42-f9a6c7a2a4eb	2021-12-21 18:02:45.713406+00	461	196
2472	48bdf3a3-bdeb-4d74-8002-31966e8ecc18	2021-12-21 18:05:42.883303+00	524	1359
2473	2bd43018-56b1-49db-8825-193b7e9ff6a6	2021-12-21 18:16:21.164507+00	105	1728
2474	96570939-005e-4a75-a65a-475d84ff9c52	2021-12-21 18:19:06.358021+00	526	753
2475	9f76c822-f823-4136-ba0d-f218bd86bccd	2021-12-21 18:21:58.831938+00	105	1421
2476	dd55666f-43d4-486d-b3f5-44de25fb0156	2021-12-21 18:23:37.167803+00	137	1421
2477	bfa8765d-1ed4-4423-8090-c535b48ce262	2021-12-21 18:31:10.046422+00	462	1577
2478	df7fbadc-327a-4b7a-9383-63af455e6f9b	2021-12-21 18:32:27.521152+00	462	1803
2479	41efa6eb-3885-45f1-8cf3-ca27398b9b8a	2021-12-21 18:32:56.407265+00	105	899
2480	1ba5c1af-e8c1-4ee4-8efc-e22649cbbcdd	2021-12-21 18:35:49.723698+00	105	1078
2481	2ba01a98-eabf-4935-bee4-c709f1dc08cf	2021-12-21 18:43:10.126263+00	138	324
2482	1d798ae4-8abc-42f6-ad5c-c99c0f611f7b	2021-12-21 18:43:15.667398+00	462	865
2483	283e2810-e09c-4d40-a9b6-38776119bd94	2021-12-21 18:48:03.87567+00	524	917
2484	aa2e8e8a-8d6e-4274-8bcf-5c26841233d0	2021-12-21 18:53:08.164377+00	137	1078
2485	ef396d24-82a2-4e29-8781-068a13b25c39	2021-12-21 19:00:02.859732+00	524	223
2486	39848ecd-f709-45ab-a634-01f3d4cfd602	2021-12-21 19:00:55.035638+00	105	266
2487	26be29bd-e348-48e1-81bb-8d600f07c030	2021-12-21 19:01:32.89026+00	137	266
2488	b7956fce-7aaf-4bbf-940d-f95fe5498f44	2021-12-21 19:01:45.583784+00	526	324
2489	a8a28b2c-65f5-45c2-99c8-039c6a7037d7	2021-12-21 19:04:11.76423+00	462	1302
2490	68ec1f3a-56e6-4346-91b2-119d314ae842	2021-12-21 19:06:48.056497+00	119	1078
2491	d2a3096d-cf95-4cd4-89a3-f6524cbb4100	2021-12-21 19:07:58.208342+00	137	1302
2492	ccfb2f0a-bd4a-4491-93e5-b44619a37300	2021-12-21 19:08:54.560246+00	524	1167
2493	1c1a9ecb-9108-4ccc-9bec-1705d7c64c4c	2021-12-21 19:10:48.943817+00	527	324
2494	b890b9b6-f004-4034-bf63-13574d6c1be2	2021-12-21 19:12:24.513559+00	119	1226
2495	26348393-0703-4674-a051-5c2d4d4e2dc6	2021-12-21 19:14:43.341826+00	524	1167
2496	bf5953a0-5017-49d2-906b-e44114ca9b5e	2021-12-21 19:15:57.94499+00	524	324
2497	b5572b6b-daa1-4afa-9fa9-e925dc1c50a2	2021-12-21 19:16:17.929122+00	127	1226
2498	6de60323-a813-4e8a-a716-5821a6cebcd5	2021-12-21 19:19:49.031138+00	524	266
2499	d060dbf7-0ed5-4e70-9802-1068006b8be0	2021-12-21 19:22:23.624709+00	135	1226
2500	b7ef65aa-23c0-45f5-82a1-003115aa8086	2021-12-21 19:23:14.152697+00	462	834
2501	3c8556f0-af30-4d4c-826c-e68fa4488e94	2021-12-21 19:23:41.113819+00	105	266
2502	c5da6489-5d29-4d44-bee2-9aa438edd90d	2021-12-21 19:27:14.306625+00	462	1633
2503	221f2fbd-c300-4ae3-bf40-a87af0e63c08	2021-12-21 19:34:19.615191+00	127	1078
2504	3b956330-7c89-4eb4-a4a3-57180f6d619b	2021-12-21 19:46:07.7838+00	138	275
2505	b145f04b-3926-48e6-b881-6a26f096bc87	2021-12-21 19:52:18.129673+00	138	1226
2506	fec5ad08-71ff-4e6a-958e-4d1c1268be55	2021-12-21 19:52:47.795026+00	464	1184
2507	d54d0ea1-b5ac-4ddd-bb16-804487a4632d	2021-12-21 19:53:35.949147+00	524	243
2508	aa6d53ec-28ba-4abf-97b6-5d3426492b7b	2021-12-21 19:57:28.051396+00	526	275
2509	f60af6c6-0c34-4c11-943e-73a550ef09c1	2021-12-21 19:57:46.09185+00	462	1102
2510	c15471df-00e1-410a-9a4a-84ec6016d4bc	2021-12-21 19:57:56.526384+00	105	1666
2511	3895023b-5b55-4338-8ad0-209e155f14ed	2021-12-21 20:11:59.13915+00	462	983
2512	b2022eb9-d7a7-4a1e-a5c0-4c98f7b49bd1	2021-12-21 20:12:50.15059+00	524	544
2513	460bffe4-c30f-476b-88c3-4e0efee6f887	2021-12-21 20:14:15.550778+00	138	1226
2514	b8b46bca-6241-4d6b-816a-edcffdb6573e	2021-12-21 20:15:40.035446+00	526	1226
2515	5ae27c38-b15c-4ff0-8e96-57bb581e11c3	2021-12-21 20:20:09.45065+00	520	840
2516	96562363-d16f-4ea6-bab9-947ece31bcde	2021-12-21 20:21:45.243717+00	524	1505
2517	5e9b90c5-34dc-4b06-a51f-6958b0037263	2021-12-21 20:22:36.876154+00	135	1078
2518	b82ef5ed-8940-48f6-975b-6f6665599ef2	2021-12-21 20:25:33.382043+00	465	1184
2519	61715593-7f3b-4c95-bf30-d6627911a3c0	2021-12-21 20:26:27.016528+00	105	243
2520	ee4b40cb-04fe-472a-b8db-83a9a06b20e9	2021-12-21 20:28:27.455229+00	137	243
2521	4a9dcfc1-bcb5-42a0-beea-204348a653e6	2021-12-21 20:29:47.269893+00	462	1253
2522	3a343fa8-8f5b-474a-97f5-5f0ed908444c	2021-12-21 20:36:11.785511+00	466	1184
2523	56a82003-8025-4e19-a7a6-be9189255d93	2021-12-21 20:37:34.670821+00	527	275
2524	23860e45-2e70-4d1f-a27e-69f34dc97e3c	2021-12-21 20:41:14.794894+00	467	1184
2525	79330b3d-d401-4342-91cc-b668008c8b13	2021-12-21 20:45:16.771576+00	462	1594
2526	db4f6c8e-736f-41fc-a340-646021ae0964	2021-12-21 20:46:52.998522+00	468	1184
2527	1e3d8e90-6337-4d54-bf57-7a69e891d47f	2021-12-21 20:51:04.96495+00	119	243
2528	3f45279c-51e4-401b-9a6a-b7aa3e709aa9	2021-12-21 20:51:07.818566+00	462	1074
2529	1f800290-c1c4-4aa9-b080-fb96d7c16576	2021-12-21 20:51:18.279416+00	462	1074
2530	ccc3c232-b51d-4858-83b8-957f65c8486d	2021-12-21 20:51:58.429843+00	464	1492
2531	e7a055bd-3ad6-4e53-9d5c-58c8d53b765f	2021-12-21 20:52:52.087518+00	462	1774
2532	5ba234dc-fe04-46dd-b9d8-5ddc2f54ef70	2021-12-21 20:53:05.673178+00	138	1078
2533	eeae5666-4370-42e4-980a-6c5eb1313317	2021-12-21 21:01:45.658932+00	464	1213
2534	2cbceabf-ad2b-4dac-bfa4-ea1dd413e78e	2021-12-21 21:01:56.584245+00	119	691
2535	a5b4e868-3433-41cb-a1e0-4643a8d71385	2021-12-21 21:02:25.202172+00	462	1077
2536	2502f59c-7912-4cad-a7aa-b6cadfa6f001	2021-12-21 21:05:07.909686+00	105	1505
2537	aa4c2e11-4a8a-4ec2-86a1-0ac195807aa8	2021-12-21 21:05:48.823329+00	137	1505
2538	bb137b18-7ff9-4e0d-839d-2cbe66a74157	2021-12-21 21:06:41.154084+00	465	1184
2539	87f1cec6-95ab-40d0-8bf1-ae4a5b154dbc	2021-12-21 21:06:47.084932+00	466	1184
2540	7309e5ae-76b4-45a4-803e-c3c7034a5e63	2021-12-21 21:06:51.214221+00	467	1184
2541	2603e160-c806-4ed7-b99b-20f9e3b3d818	2021-12-21 21:07:03.069602+00	468	1184
2542	8c4b0750-0525-473f-9dfb-f57f0d0437f4	2021-12-21 21:07:31.942472+00	469	1184
2543	0fbf201b-0338-4c48-8876-ccf2d7100946	2021-12-21 21:09:00.05685+00	331	1234
2544	b980e2b4-3f12-410a-af25-9de797ee1bb3	2021-12-21 21:18:56.856261+00	524	811
2545	8e9e991c-c7a2-4822-9f5d-6bbc0d8a65ca	2021-12-21 21:27:09.617206+00	465	1213
2546	d37eead0-a02e-48c9-9f31-cb6d7b93bd54	2021-12-21 21:30:24.089796+00	462	406
2547	c9d40c38-aaed-4273-b928-2fd6a5a8c425	2021-12-21 21:46:55.128754+00	119	1505
2548	0f11ef18-c7e3-43fe-8f4b-fd969d9fe945	2021-12-21 21:48:18.339383+00	127	1505
2549	3a46673e-852f-42b1-8310-986ffcd453c3	2021-12-21 21:48:24.04403+00	160	424
2550	178195ce-b9c8-4914-b03a-81a18c539f83	2021-12-21 21:50:31.734128+00	135	1505
2551	af55e64a-8c07-4588-b8cd-9a8d6c3e9b7b	2021-12-21 21:58:40.788663+00	138	1505
2552	e9e3c07a-6c36-4047-a4e3-4adfb19db622	2021-12-21 22:15:32.280554+00	105	248
2553	1606492a-8cc9-4fe6-a5b6-3c14e9597500	2021-12-21 22:18:21.552279+00	137	248
2554	26127a8a-6fb6-47f0-9fb2-bfbd9c145ba9	2021-12-21 22:23:11.643649+00	462	1303
2555	4a35a4de-cd9f-4520-9a63-46db6a63c08b	2021-12-21 22:26:16.729498+00	119	248
2556	d8cd74db-a200-49fc-952c-b4b8b1d1ac65	2021-12-21 22:56:38.578667+00	524	952
2557	5db82790-4eb2-4dd6-99f3-f5fb9ca9443b	2021-12-21 23:02:08.770478+00	548	126
2558	bca8ba88-a6e9-4b52-97b8-e5a39df45d8e	2021-12-21 23:03:46.132662+00	461	126
2559	d33ffad6-cd6f-4d80-bd4f-886cca2e7373	2021-12-21 23:11:09.625817+00	331	1234
2560	c7663200-1aa9-4ac6-8007-831513abb3bf	2021-12-21 23:11:25.995578+00	393	1234
2561	94228b79-c52a-42ac-87f2-cfd4e5f149ce	2021-12-21 23:21:31.738391+00	524	1349
2562	69b36074-623b-4f5c-8a54-0216faabb8a6	2021-12-21 23:27:33.768187+00	463	1234
2563	ac05c2c7-0965-49dd-959a-c4fe1c19df86	2021-12-21 23:38:08.431797+00	464	1234
2564	f173f1f7-9a1c-492f-9386-9cdc2bde1581	2021-12-21 23:55:57.696972+00	137	1590
2565	adc3231f-f6e4-4813-b045-f9f8a0008c81	2021-12-22 00:02:23.648624+00	462	881
2566	81baca8e-7c89-42ef-aa51-3e32a8f3368f	2021-12-22 00:07:41.574126+00	462	1309
2567	42cbe2f6-e505-4fd3-902b-1dbf66359813	2021-12-22 00:26:47.992937+00	119	1590
2568	cf0ce546-27c6-4b3a-93bd-fda1ffab586a	2021-12-22 00:46:33.416914+00	465	1234
2569	0bd0b016-16dc-473b-a6ec-d8472a0e26e9	2021-12-22 00:51:04.384814+00	466	1234
2570	f91d0854-5a46-43ad-9bc1-a4e5e6a81bc2	2021-12-22 00:54:26.743708+00	467	1234
2571	b4a0ad15-5bbd-40f6-9294-3e845eca7227	2021-12-22 00:58:23.92881+00	468	1234
2572	3ee20455-f8ad-4e62-a440-e735abf0aeec	2021-12-22 01:02:06.028767+00	462	1028
2573	a6a57416-49ff-41b0-8e9e-f96d4150386e	2021-12-22 01:31:51.573562+00	469	1234
2574	0613f66c-35f0-42bd-bfa0-b69293ca95aa	2021-12-22 02:47:04.654199+00	462	1480
2575	c33910b8-9fc8-4d5f-a71b-895bb6d5601a	2021-12-22 03:51:49.512726+00	329	371
2576	4a008b92-79ee-4ca1-ab10-f129994f5d75	2021-12-22 03:54:27.551097+00	119	192
2577	88d89cb9-e9a3-4e11-9361-153c48a0411c	2021-12-22 03:55:25.371214+00	119	192
2578	07df252c-b177-47fe-b010-820b609c6579	2021-12-22 04:18:31.893073+00	462	103
2579	c022f184-87f2-46a2-b34a-08924631d519	2021-12-22 04:28:35.740591+00	160	437
2580	a91683fa-eb08-4061-b8b7-c25c460336ce	2021-12-22 04:42:49.204053+00	524	1351
2581	99897bbb-e957-40c7-9ea1-d4757550c4a9	2021-12-22 04:48:27.885042+00	524	1710
2582	746e1f10-b050-4679-96c2-5d924c7d0bc5	2021-12-22 04:51:07.103473+00	105	1351
2583	5c5d2ae3-22c2-4c69-a9c1-2dc311cd922f	2021-12-22 04:51:21.202753+00	137	1351
2584	bb169a22-8630-4ea8-be5c-a7d688771edf	2021-12-22 04:55:25.317404+00	119	624
2585	9fc2ead0-1856-4fe6-b3bc-57abcafd9359	2021-12-22 05:00:49.181532+00	466	1213
2586	46d3c935-1b87-4382-9668-5b5a50208eb3	2021-12-22 05:01:31.906288+00	467	1213
2587	872a591f-eca3-455c-a2df-76dd83c6f77a	2021-12-22 05:04:02.872224+00	468	1213
2588	81042427-8e23-4c9f-9860-5bf6768ea42b	2021-12-22 05:05:16.333946+00	127	624
2589	b56620c9-87b1-4e55-939f-7a0392bc4728	2021-12-22 05:08:07.961367+00	331	769
2590	70cdddcd-27cc-4ea2-8376-67b212c95f44	2021-12-22 05:08:18.623526+00	393	769
2591	312fcab4-c050-4f54-9091-b05395f39859	2021-12-22 05:10:27.323341+00	469	1213
2592	ee6e756a-69e0-4fca-af99-8f7c667afe42	2021-12-22 05:25:27.673731+00	119	996
2593	7d2e05df-01da-4513-b819-6f0eba46b61d	2021-12-22 05:33:37.901599+00	464	289
2594	6f43961b-7c2a-4550-b5ec-f2042d323c2c	2021-12-22 05:38:00.078179+00	524	1730
2595	5d99be3a-8b65-4afb-b7c1-083a415505a6	2021-12-22 05:39:41.261968+00	527	1527
2596	5dbe72ae-5360-4e62-815e-93046eccb7c2	2021-12-22 05:41:42.215245+00	448	1527
2597	ea4fee35-3cf6-40a2-a1bd-b8b21d256b43	2021-12-22 05:54:54.655419+00	464	1184
2598	ac4bedb7-cfd7-4a80-b128-0fde06e6d2d4	2021-12-22 06:07:28.683126+00	462	964
2599	c7c51723-fb5b-41df-b7a4-30127e551473	2021-12-22 06:15:56.346361+00	137	1603
2600	10c6369a-403d-41e1-ad34-fe963d79a0bf	2021-12-22 06:17:13.526729+00	465	289
2601	efa67763-4f6a-49c3-9a69-30d1ea82d200	2021-12-22 06:25:46.582773+00	119	1603
2602	49b1dee4-efa3-480d-af56-babca9c48547	2021-12-22 06:29:33.064666+00	465	1184
2603	417285cb-353e-46cf-b52a-44ca85d36ff0	2021-12-22 06:30:45.655517+00	465	1184
2604	ce4eff3a-4026-4969-92e0-57203a2295c0	2021-12-22 06:33:40.728042+00	462	529
2605	d3e8d7db-294b-4efe-b5e4-6c2e20e8eeaf	2021-12-22 06:37:39.083302+00	466	289
2606	b91185a9-76c1-411c-b8c8-c2a16b0c897d	2021-12-22 06:38:12.098352+00	467	289
2607	52246b18-8c3d-415e-98de-9868c20033c7	2021-12-22 06:43:03.512527+00	468	289
2608	354f7294-f507-4bd4-9cd8-4d7160ff36e9	2021-12-22 06:44:39.960901+00	138	1114
2609	ac1ececd-8802-4d4a-8a75-d821b94812bd	2021-12-22 06:44:50.279971+00	138	1114
2610	000497ef-dea6-43ce-ac7a-d0cd2b8a71de	2021-12-22 06:54:40.678432+00	137	118
2611	7e13c6e0-a3ae-4552-8b9b-6a3518ce22d4	2021-12-22 06:57:58.571383+00	329	196
2612	06597154-a590-4f03-9079-e58bfc28d032	2021-12-22 06:58:50.250783+00	127	1376
2613	325176e3-f59f-4e46-a7ad-8c4a685ddd22	2021-12-22 07:07:16.665363+00	464	1073
2614	57414247-f841-4a54-be52-804ea8047b50	2021-12-22 07:11:05.676438+00	462	1105
2615	46fac41b-54e1-4136-a83c-0d9d99d9f366	2021-12-22 07:19:18.283313+00	465	1073
2616	cae75d88-9c1e-4e3f-8fa5-adc74a3cd0c7	2021-12-22 07:19:28.872099+00	105	405
2617	6e50258a-2839-4922-bff1-42c7a378fc50	2021-12-22 07:22:17.39488+00	466	1073
2618	e22c5a2b-9279-4fb6-bc03-c506bce736a1	2021-12-22 07:23:10.286434+00	465	1184
2619	5ebebe60-cb45-49bf-b67b-655b579e76d3	2021-12-22 07:23:18.573062+00	466	1184
2620	3932bce2-42b0-48e1-8ae5-d0a0ae514b63	2021-12-22 07:23:23.918625+00	467	1184
2621	461a15f5-1dac-4209-a05f-668acf62640c	2021-12-22 07:24:53.951754+00	468	1184
2622	1e9ee762-ba9f-44c1-b42a-f950f389f8ca	2021-12-22 07:25:01.671355+00	469	1184
2623	41d62a2e-f197-4e9e-a7aa-059fd006b12b	2021-12-22 07:31:35.266879+00	137	899
2624	9a99a29e-4ed1-4fe3-a915-2a6fd3f123a9	2021-12-22 07:44:12.4915+00	137	1397
2625	fe0da8f6-8fac-456c-ab67-453c6546e18d	2021-12-22 07:52:46.466401+00	524	1213
2626	a0e898d2-daf2-42bb-ac0b-1de357e657b5	2021-12-22 07:58:16.064343+00	119	118
2627	4805950e-0627-45ef-b0b3-ced2ba365c25	2021-12-22 08:00:30.325803+00	524	1279
2628	467ac095-84eb-40d4-885f-b099c258b20d	2021-12-22 08:07:25.585257+00	105	1116
2629	2a7a5f71-971e-4429-9bb0-94d3df1e660c	2021-12-22 08:09:51.662365+00	119	521
2630	1958d5a8-dd5f-411d-9a6d-4c2b37c0c9e9	2021-12-22 08:10:08.266477+00	105	1033
2631	057423ff-682a-4ec1-a5ad-3b29c9fa6097	2021-12-22 08:10:55.82174+00	127	521
2632	66941ba4-ddc9-46b7-aa02-5154c4f40499	2021-12-22 08:13:10.571011+00	135	521
2633	6f75225a-2e8e-4823-a616-1c02c23f9dd9	2021-12-22 08:15:36.244812+00	137	1116
2634	e469039a-6fdb-4aa1-8d60-3406592792ed	2021-12-22 08:15:43.52249+00	469	289
2635	a1aa426d-0e16-4396-9de9-fd719698bf64	2021-12-22 08:24:15.559061+00	549	289
2636	18cb0a9a-f039-4472-a478-40d02c751a9c	2021-12-22 08:25:56.069259+00	138	521
2637	dfc82e24-bce4-409c-975f-bd682abd6041	2021-12-22 08:34:51.270485+00	135	399
2638	df0f4289-55b8-4967-bbad-eae1af86d174	2021-12-22 08:36:10.780971+00	462	1184
2639	af7ce04f-835c-4c54-bdc6-ae9dfaf8fdfd	2021-12-22 08:37:54.989325+00	105	176
2640	1e01d51d-9606-4751-b585-050cb8cac990	2021-12-22 08:38:01.861319+00	119	1397
2641	6f4b16ff-a336-4554-9b1c-90511f0fe000	2021-12-22 08:39:25.879596+00	105	1152
2642	71a44dca-e430-4b08-b475-e70974d15343	2021-12-22 08:41:32.621644+00	127	1397
2643	081dffcc-5d61-400f-8701-fbe1fe167554	2021-12-22 08:42:57.279445+00	462	955
2644	45acbc81-82ca-4e3f-9950-448d870520dc	2021-12-22 08:50:26.715492+00	526	705
2645	d752c781-154e-4729-af9d-c03d8c31493d	2021-12-22 08:55:33.040615+00	462	408
2646	3687bc12-cb7d-4c3d-ac58-944bc3ab77b3	2021-12-22 08:59:11.72845+00	462	625
2647	58b0d450-fc91-4d3d-91d5-fa4f18e0481e	2021-12-22 09:04:44.193894+00	137	1033
2648	36597219-5150-4fc9-97df-cce4ae3812ca	2021-12-22 09:06:40.146607+00	137	405
2649	31c7022e-0155-4abf-83d5-f644db22daba	2021-12-22 09:07:31.468908+00	119	1116
2650	8a80210a-764e-4479-ba3b-66a4edbe93dc	2021-12-22 09:08:12.369445+00	462	1752
2651	cfeb8a03-b28b-4929-8792-f6ded6eaf7e0	2021-12-22 09:08:34.654322+00	464	1492
2652	96c02fa1-3bd0-4487-974b-fd573f576b90	2021-12-22 09:09:00.009033+00	526	521
2653	15fd1f6a-3f2e-4bd7-8546-277f0944cb06	2021-12-22 09:13:27.480512+00	135	950
2654	60046028-4535-48ad-857d-11068ce8ff8c	2021-12-22 09:20:06.713552+00	524	564
2655	28f119b5-84a0-4f36-bd01-a98d4fa075d3	2021-12-22 09:25:43.786862+00	138	950
2656	af963f76-d9a7-4d50-8e1e-cca530f7f7b4	2021-12-22 09:28:01.147962+00	119	405
2657	a684be1b-7e12-43b0-907a-b3e85fccb093	2021-12-22 09:33:26.072044+00	462	1540
2658	30bb3e06-52ae-4b7b-9a9f-e969eb531034	2021-12-22 09:39:21.939729+00	524	185
2659	287e5f49-52f7-45a3-917b-3f83f319913b	2021-12-22 09:44:01.672125+00	137	1728
2660	08cee551-71ab-4308-8024-ec9180861809	2021-12-22 09:45:29.030859+00	520	1211
2661	7464119b-9f31-4916-8908-150eb7811a06	2021-12-22 09:45:57.576895+00	135	1376
2662	c765bf34-f705-4e2b-ba18-4c8ad418ff01	2021-12-22 09:46:57.527814+00	119	1033
2663	23dc5cb7-38ab-4a79-b45f-66591c6229f6	2021-12-22 09:50:15.055849+00	462	1671
2664	6e692a3a-a006-431b-abf5-5807990f8e37	2021-12-22 09:59:17.216483+00	524	1752
2665	c178ca5f-79e1-4745-a47d-fd6ae17f06d7	2021-12-22 10:04:57.040017+00	462	1138
2666	3edba014-126b-4f15-b35b-6b30797b7e05	2021-12-22 10:06:15.026516+00	465	1492
2667	db1c18f7-45ce-418f-9305-9c41f0bb0ac6	2021-12-22 10:14:34.376195+00	119	1728
2668	334724c9-a5c8-48fb-9a1b-a8873f602b40	2021-12-22 10:15:34.538444+00	127	1728
2669	ba64d921-048b-468d-84b9-7134e2b96959	2021-12-22 10:21:12.466533+00	135	1728
2670	0f9c1b4e-2b83-4ef0-afc3-d207c4f09926	2021-12-22 10:21:43.444391+00	135	1728
2671	506fb3c5-0f56-46b2-8da7-09170271ebc8	2021-12-22 10:22:36.526089+00	105	1198
2672	8ca66c3f-b8b4-40e2-a961-00a654a39664	2021-12-22 10:24:00.544603+00	526	950
2673	53bfa1d2-3251-4ca6-b5dd-fb5dd9946314	2021-12-22 10:28:17.231561+00	527	521
2674	8872ce7a-0e95-44b4-82be-29c30c363319	2021-12-22 10:28:36.446212+00	105	1647
2675	33f61def-4e6d-44c1-9913-e5535dfaa444	2021-12-22 10:28:46.754753+00	527	521
2676	9c7a87a3-1f4a-4f58-8d6b-df83fd61bc11	2021-12-22 10:30:22.238293+00	448	521
2677	ccc7b70c-4a0d-4e4c-8198-601b1ed46cb4	2021-12-22 10:32:10.034997+00	127	248
2678	73f22ab3-2c31-4d6a-8cf9-7e2945296f34	2021-12-22 10:33:31.369402+00	105	1647
2679	054f1c0f-a246-460f-8712-d7964a1c69b6	2021-12-22 10:34:06.614319+00	187	521
2680	226fca17-3bcb-4a39-90df-56ec3eb78950	2021-12-22 10:34:51.394278+00	548	1551
2681	6667045a-c9f0-4b4b-af72-3ffc3a6f75c3	2021-12-22 10:36:15.773844+00	160	1342
2682	cbb31cf4-42e4-44c1-a43b-40a7f0bc1297	2021-12-22 10:36:58.661044+00	137	1647
2683	20521b9b-28b2-4891-ac1c-a8c35badea32	2021-12-22 10:38:34.517989+00	520	1117
2684	1da903b7-5d70-4f00-8882-e934b613d219	2021-12-22 10:39:17.097694+00	461	1551
2685	8d510c75-9ce1-463f-8791-ee1714587099	2021-12-22 10:39:50.816784+00	135	248
2686	49470bc2-e5ab-4df7-b108-8b998f262067	2021-12-22 10:40:34.678709+00	527	950
2687	bd94bfb9-e16d-4ed4-a935-a6be38582660	2021-12-22 10:41:48.528784+00	448	950
2688	1b8c1c0e-2014-4b3c-99ef-6e9ec40513c7	2021-12-22 10:44:17.459381+00	138	248
2689	af457f4a-378f-45f1-b5cb-51607f303d1d	2021-12-22 10:45:04.769661+00	135	694
2690	2d8f90c4-b42f-4c1c-9332-f3dea7587a1a	2021-12-22 10:46:44.191449+00	127	405
2691	84eea9b6-3deb-45c3-a676-d46cc566c69c	2021-12-22 10:46:53.883038+00	137	1198
2692	a30b6d19-b86b-4046-940d-10b88c7b781d	2021-12-22 10:48:40.710733+00	462	1696
2693	171bc8b5-35df-4d0b-8167-a8fe41d83f01	2021-12-22 10:49:38.553751+00	526	1114
2694	bb7bc6bd-205c-4591-b499-3fe5eeabe3ef	2021-12-22 10:50:10.001933+00	135	980
\.


--
-- Data for Name: users_lessonprogress; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_lessonprogress (id, uuid, is_completed, completed_at, user_review, subject_id) FROM stdin;
\.


--
-- Data for Name: users_passwordkey; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_passwordkey (id, password_key, expires_at, user_id) FROM stdin;
\.


--
-- Data for Name: users_subjectprogress; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_subjectprogress (id, uuid, user_id) FROM stdin;
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email, uuid) FROM stdin;
81	pbkdf2_sha256$260000$emmrdbljPPIeE728lgf1Gv$6yACylllvwePlJNdoZ9tyXREVU4mFElTD6JFCj8no1w=	\N	f	b92eaf02-e31b-43e3-acd9-14da2e1abf63	Иван	Трушин	t	t	2021-11-17	itrushin99@gmail.com	b92eaf02-e31b-43e3-acd9-14da2e1abf63
1480	pbkdf2_sha256$260000$13IebzpTkiwOAPXxQ2nH8c$Gyn0PoIQX97P9SJQOhd9wn9Qfw+Mc2IylGHX5z7rQiM=	\N	f	c0c4cfea-a33f-4937-8044-3c0e73698113	Валерий		f	t	2021-12-17	koyot72@yandex.ru	c0c4cfea-a33f-4937-8044-3c0e73698113
1481	pbkdf2_sha256$260000$n3L9iHLvC19leDeCKfWmSp$3cP7r5PEwvrEHoTOVM/w2JgsintTW2nbVMHLzYDD88A=	\N	f	1fbd1095-5ec5-4f1e-9901-c76f31dbb33c	Виталий Кузнецов		f	t	2021-12-17	vgk-73@mail.ru	1fbd1095-5ec5-4f1e-9901-c76f31dbb33c
1482	pbkdf2_sha256$260000$hIOM9i14XE6nGGtxF5xq8B$ST+Lxheeo1NKnLcA9uYc00cFcf1KHLv+I26+1uCCqYY=	\N	f	6025dd89-aab8-4c2d-a59d-22351c4596e6	Владимир		f	t	2021-12-17	2117970@gmail.com	6025dd89-aab8-4c2d-a59d-22351c4596e6
1483	pbkdf2_sha256$260000$oNbyDVrJTY7J5Hg7ARLTv5$WPLpWN7MGcW09gbUa0GSV+MSIoC+MTeC7eqq5gUR1Vw=	\N	f	f5cea80d-dcbe-4d1f-a1c4-ff9472405e19	Сергей		f	t	2021-12-17	ssdozhdev@yandex.ru	f5cea80d-dcbe-4d1f-a1c4-ff9472405e19
1484	pbkdf2_sha256$260000$UB0IJWOSQliIxhnFaBwSqa$tKCSU71DLwVN0iN7x66Rd1GY+x3t0pWM5fBVAvA1gG4=	\N	f	a4208536-9194-43b8-b685-26b80de9ae12	Никита		f	t	2021-12-17	nikitabespalov.1997@yandex.ru	a4208536-9194-43b8-b685-26b80de9ae12
1485	pbkdf2_sha256$260000$UOSEhEUI2d1q2HlzM1UvD4$bpIMQ4Bv3D4ZYh/kVUkw7GjAjVgdNjru3apM7D+V9iU=	\N	f	af61315e-8ca9-4dbe-a905-a4dda5de9ce0	Егор		f	t	2021-12-17	egor1994pepelev@gmail.com	af61315e-8ca9-4dbe-a905-a4dda5de9ce0
1486	pbkdf2_sha256$260000$QupQHe3DPtn4Ot0IzGwz2A$GVI9AJIV5AHz0wN1qjjkFI1CPk2FEhfwQ+C3ExiA40k=	\N	f	83692e0a-6612-4be1-9500-e3e269061abc			f	t	2021-12-17	pud.larisa.a@mail.ru	83692e0a-6612-4be1-9500-e3e269061abc
1487	pbkdf2_sha256$260000$RgcxJrVFnU4F3u2e8vEOPo$LhxIe6K/Bm/cFtw8PxCvGh/o1Guh2k93oRZw9xOwzEI=	\N	f	91422346-a6da-4bef-9560-2983fff00520	Сергей Балуев		f	t	2021-12-17	baluev-spb@ya.ru	91422346-a6da-4bef-9560-2983fff00520
1488	pbkdf2_sha256$260000$qqKSLhvvaAqS43O78IUta0$UhDOmaB6k5+FCEjYbOUobZduC9VKBnl+uhe6WnTOChM=	\N	f	8d9a9d40-5180-4478-aece-4c64c2da7c73	Искандер		f	t	2021-12-17	iskanderkurmatov@yandex.ru	8d9a9d40-5180-4478-aece-4c64c2da7c73
1489	pbkdf2_sha256$260000$DdyMaQsDxtIfDEG6LlpUVk$IrV9IMb7rd66lrFiquCca3xLJYxkKy7+ErD/zSFuzY0=	\N	f	2b5e25c9-c07c-4549-9a4e-c1940dc7793a	Олег		f	t	2021-12-17	olegstrogin@gmail.com	2b5e25c9-c07c-4549-9a4e-c1940dc7793a
1490	pbkdf2_sha256$260000$apTyGjfLGoDrKu8xW9rR4F$yR5wjwbnfvOEJAE42zsOxRO8MtXZPyAlU36cYoHb9IY=	\N	f	191c6764-3c52-4366-a9d1-2bbce914fba6	Алена		f	t	2021-12-17	alena.makarova1606@yandex.ru	191c6764-3c52-4366-a9d1-2bbce914fba6
1491	pbkdf2_sha256$260000$cDmNQx7amjQS5KpdroBMpK$ZPuyPAwECdC1uCHGg88DX3VUUplJBOuB86I/piDtHHU=	\N	f	bdddc0b3-825e-46b0-87eb-ffc6e1b571b9	Сергей		f	t	2021-12-17	gera-1000@yandex.ru	bdddc0b3-825e-46b0-87eb-ffc6e1b571b9
1492	pbkdf2_sha256$260000$c0VerGKwVoqspUCamxcFrY$byr6aAM43GgbWMGgg3jvSXcLVnmPwFawDdbNMihV7Xc=	\N	f	fee8b2d6-529f-49e3-adb1-ee7395fc0950	Артём	Максюта	f	t	2021-12-17	artem_maksyuta@mail.ru	fee8b2d6-529f-49e3-adb1-ee7395fc0950
1493	pbkdf2_sha256$260000$uGdJdHqfEfwTqeRjHp9Twr$bWHIlmlfIb3nJA0AgRtQqz4ptyjEynMzn1Qr/wBXCnc=	\N	f	9bd1432e-9df2-46bf-a80a-7bd91bae10dc	Роман		f	t	2021-12-17	4romul@gmail.com	9bd1432e-9df2-46bf-a80a-7bd91bae10dc
1495	pbkdf2_sha256$260000$g6d8JDsigxOpf5ICMDxyBl$1cUpKa+tOGDGPaQeXlo4MKZ4fpSaK3+hG7CttsJExYo=	\N	f	aa4d3a3e-2a8d-48c5-bba8-e58133f301c2			f	t	2021-12-17	alex.2006-80@yandex.ru	aa4d3a3e-2a8d-48c5-bba8-e58133f301c2
1497	pbkdf2_sha256$260000$0YHmNNUQmSUVFZJOy6YqV8$lgfQJSqVr7qMDfyS7uYKRZyLZrIzvdSprxs99AIeNFY=	\N	f	0b4a743c-48e9-443b-8f46-fa8776e0c010	Artem		f	t	2021-12-17	artymobile@mail.ru	0b4a743c-48e9-443b-8f46-fa8776e0c010
1499	pbkdf2_sha256$260000$LwX6NF5pknsoIhPx1RHTMT$0IxY3STu91aIyuCSiPd7trUFliCGDmRFzm5nBdZ+N/g=	\N	f	e1429c75-af30-40ec-8e56-092471a4f705	Максим		f	t	2021-12-17	akimov.mu@yandex.ru	e1429c75-af30-40ec-8e56-092471a4f705
1500	pbkdf2_sha256$260000$0CnK618AjmpWBeu5vYgGh5$29T+QqAYEolvDs6Wol0CxT2naMPjA1k24xG0M36o68k=	\N	f	82bc00c0-53d7-403a-bcb6-bb60801a47e2	Инвестор		f	t	2021-12-17	investor@nelipovich.ru	82bc00c0-53d7-403a-bcb6-bb60801a47e2
1501	pbkdf2_sha256$260000$ZSah05hmBXUGYspA2PF3Yi$jlTJRJjGCCptr6/wrj22DIk4Y7o46DELova+SbVoFgU=	\N	f	5f57d803-ec4d-4c51-90d1-9a1ff884fb00	Антон		f	t	2021-12-17	bebet@mail.ru	5f57d803-ec4d-4c51-90d1-9a1ff884fb00
1502	pbkdf2_sha256$260000$MC0HeVK1FHY5XMCM7PGR1Y$hUbwTbKlhn7Cogfx/yWCS00HwhnzULow9UkurPzrTqk=	\N	f	b679b580-3923-4ba6-9b12-c475d262bcc5	Рухшона		f	t	2021-12-17	ruxshona93@icloud.com	b679b580-3923-4ba6-9b12-c475d262bcc5
1503	pbkdf2_sha256$260000$VpUP6ct1zt0WyU6X9tFuCr$KWnoGZ1nCeA39MtFfYCqSlOYJdOJ331ws+G24QNZOsw=	\N	f	ae3b3204-ddf9-4eb3-8b59-84bad1a5035d	Валерий		f	t	2021-12-17	smirnovvm1@rambler.ru	ae3b3204-ddf9-4eb3-8b59-84bad1a5035d
1504	pbkdf2_sha256$260000$cc0mIZPl6lCONuJilQ664h$8lG4dqxN2QOGAT2+qxuUBWqrHay7U/pOP6X0h9PMT34=	\N	f	57b097e2-34ce-4ca2-8986-4e60108a4e57	Михаил		f	t	2021-12-17	egorovmv_snow@mail.ru	57b097e2-34ce-4ca2-8986-4e60108a4e57
1505	pbkdf2_sha256$260000$jI1gL764uuY3gHP8OKDFsk$4sb6XFbcL6avOzjVvW/t1WVwRTXC+cAqQEDuQF3vNK0=	\N	f	c912694c-5df8-425d-a111-abd34eef3fcb	Сергей		f	t	2021-12-17	ratushniy.93@yandex.ru	c912694c-5df8-425d-a111-abd34eef3fcb
1508	pbkdf2_sha256$260000$EjGarpXEGakCNuENDwryqI$OG3hATVvu346WsM4tx5Voh4287bP2qDuJ1fvp3jNOJQ=	\N	f	f8f1c64d-c528-449e-8450-acb0f21c2f82	Александр		f	t	2021-12-17	insystem-21@yandex.ru	f8f1c64d-c528-449e-8450-acb0f21c2f82
1498	pbkdf2_sha256$260000$umhsJkXHopngrXHnORCbQz$8waRqgGZlqKitO396ctFIVvWs4hGsqlbzng6QL5P1QE=	\N	f	af2954bf-a9c1-4509-8469-b1508e7e01e1	Инна		f	t	2021-12-17	inna111@list.ru	af2954bf-a9c1-4509-8469-b1508e7e01e1
1559	pbkdf2_sha256$260000$MvLmU7AQqygLW93oDTX5hd$2PxrI07hFZZBDc61PT0rYhP7Rsu6Y1FLpZ8KlSbPepw=	\N	f	343cdea7-c930-4aaa-9a09-a19346a585bf	Евгения		f	t	2021-12-17	komarova_evgeniy@mail.ru	343cdea7-c930-4aaa-9a09-a19346a585bf
1507	pbkdf2_sha256$260000$maKTVKwE80eT1fTR0edKMV$jnqF5KfX43dzNcE2Sys9b5rJ4t8MdbLxquULNOgP8Kg=	\N	f	bd56a20e-6dd0-42dc-b776-6312fc7cc0f1	Марина Маннинен		f	t	2021-12-17	mlvovich@mail.ru	bd56a20e-6dd0-42dc-b776-6312fc7cc0f1
1494	pbkdf2_sha256$260000$1gXX2dwPxJ0aWb4TPehQAw$X1eHJxWTsjWgHkW/21z3tZVPUjyhTszztrxTZhl8k6M=	\N	f	4e9a6861-0e09-42af-a92a-07343ffbdc74	Александр		f	t	2021-12-17	alexstroy82@bk.ru	4e9a6861-0e09-42af-a92a-07343ffbdc74
896	pbkdf2_sha256$260000$01cELd6uqRgN4cVruulGF7$Y97+upsiZrN/lL/81/5iHVWTVNSYepKVlQkT0/IVBT4=	\N	f	a177131c-a05f-4afc-8546-015b91aa9e12	Владимир		f	t	2021-12-14	kirin_vladimir@bk.ru	a177131c-a05f-4afc-8546-015b91aa9e12
1537	pbkdf2_sha256$260000$rByfmgKxMf8bCmM2lR3jq7$js8KtTiUlkYWGRf7MAnhFYcKa8Ouv+W4vaAz05SGpyc=	\N	f	b5c37f00-608e-41a1-818c-4236e4579ffe	Иван		f	t	2021-12-17	ivanyuzhakov777@gmail.com	b5c37f00-608e-41a1-818c-4236e4579ffe
1240	pbkdf2_sha256$260000$wBHZ2sc2qeuVeYvXDQcACX$Ehw+L9OLZYcnR5+0jiT4LUPATE76MXQrppYQhz7wYS8=	\N	f	9c8a15f1-69cd-4dcd-bd80-da252c13b53f	Наталья		f	t	2021-12-14	natalimal75@mail.ru	9c8a15f1-69cd-4dcd-bd80-da252c13b53f
1509	pbkdf2_sha256$260000$Xt8qHCvtqN1AdSSAy6FFSz$axbVdRK1z001BifPEJhdbMqwmcZFMndjmcYB71nMfbg=	\N	f	cf4be215-8847-4a67-83c4-8778d4f26700	Роман		f	t	2021-12-17	alievroman987@gmail.com	cf4be215-8847-4a67-83c4-8778d4f26700
1510	pbkdf2_sha256$260000$V3otAkmmDNX0CVpj7tL3Uq$/tFpa7zJBsrDUnHcs4Pbq6jyIG+vlO9r2MqJoIiwywI=	\N	f	f4583193-951f-458d-831d-50eb168e9186	Екатерина		f	t	2021-12-17	ekvolova@gmail.com	f4583193-951f-458d-831d-50eb168e9186
1511	pbkdf2_sha256$260000$HMZqzdHz5WmoWOYiutLpqX$zI8I8cIeRcaGHM1vDr+UzMVqhkHP3FlwTyBph2FogkA=	\N	f	87f4b838-a6d2-4970-a327-8d77dda2f64e	Мария		f	t	2021-12-17	0402832@gmail.com	87f4b838-a6d2-4970-a327-8d77dda2f64e
1512	pbkdf2_sha256$260000$hmtn1heiRUnFETKhvh1XTE$58W0NWWUA8wOUa6m9FUJ2WLz6aXWXD/HS+iEYS+rBc0=	\N	f	1fc466f3-cd47-4f13-b738-469a52c2a284	Сергей		f	t	2021-12-17	rikov83@mail.ru	1fc466f3-cd47-4f13-b738-469a52c2a284
1513	pbkdf2_sha256$260000$uaVYjawF9VmsQgCY97ATHM$iXpWe+6w6Zg/qPMzASyGaP2bDpHQQ+LlscqYBJrrPbs=	\N	f	0c6e55ea-0347-43e7-a439-0c18bfeba615	Азат		f	t	2021-12-17	ozat_moltabaev@mail.ru	0c6e55ea-0347-43e7-a439-0c18bfeba615
1514	pbkdf2_sha256$260000$dapNsB6sKVlo8cmsIApWUq$TwAzkGvLUMzPfrTS7d4nAspQaznyAWY/qQrj/Dz2d04=	\N	f	33d62ead-5b2a-4626-8c03-8ed603cbabe4	Сергей		f	t	2021-12-17	sergeyartemow@mail.ru	33d62ead-5b2a-4626-8c03-8ed603cbabe4
1515	pbkdf2_sha256$260000$sBm9mqqz6MoI0t7aHdzr5R$GfaDHHhqpTbKwzougiO+FMfsGLMFhFSXhbZgCu2tQZ4=	\N	f	87d2f475-10e6-4eee-9021-0f4872c5154e	Дмитрий		f	t	2021-12-17	vizufon@yandex.ru	87d2f475-10e6-4eee-9021-0f4872c5154e
1519	pbkdf2_sha256$260000$IZmUzT7mF4pWei7RRS7mZQ$SMQBz3pKM+KRsD9XNgVRkplAz+uXCJo2l+qhhXQlBZU=	\N	f	1b812771-26ce-4128-b9d6-98d1b9744bfd	Ольга		f	t	2021-12-17	olga.muzychenko@gmail.com	1b812771-26ce-4128-b9d6-98d1b9744bfd
1520	pbkdf2_sha256$260000$MCUatAguF5t2Laoa6cekO0$6rfcmnx+VGKpNeUaPjCeCfImCQs8xpi0vqYsOf/l5W8=	\N	f	26be124e-b327-4a6c-ace8-af7effea3686	Денис		f	t	2021-12-17	2686434@gmail.com	26be124e-b327-4a6c-ace8-af7effea3686
1521	pbkdf2_sha256$260000$6VzKwdrqp3GgrAPsx4JCr0$XF5L99QNPJiGtzMttaXq3fTz7x+l1e6nt9p0toH0hkQ=	\N	f	24daa66e-4b4e-4371-a4ed-454934bd046e	Максим		f	t	2021-12-17	sidmax87@gmail.com	24daa66e-4b4e-4371-a4ed-454934bd046e
1522	pbkdf2_sha256$260000$h2J0QoK2RiqyMHfl3IHcJF$fYcFSGS1vkHXPTBWQNPO+ezrBKOw9LOvp2lzijA0LRQ=	\N	f	df5d334f-06e0-4dc2-b968-96512c615d98	Руслан		f	t	2021-12-17	basarbaevich@mail.ru	df5d334f-06e0-4dc2-b968-96512c615d98
1526	pbkdf2_sha256$260000$jcFNX4EwVCuUbRMErsrrMu$mVopYmKm+hcWFeLL7jdssyRAQncUnZfpVpBGV0tSSdU=	\N	f	2e076d46-8036-496f-bb03-3b457aa30042	Антон		f	t	2021-12-17	antonysmile@gmail.com	2e076d46-8036-496f-bb03-3b457aa30042
1528	pbkdf2_sha256$260000$2udki7Cn0OXYEQuV4FRWGV$ZklYS2Uo3ABExxiqIyDI2zMGZHZTbaNVy582JTMXjfc=	\N	f	401de822-b1e6-40bf-8295-090e14aac608	Рашид Уянаев		f	t	2021-12-17	rashka_2003@mail.ru	401de822-b1e6-40bf-8295-090e14aac608
1529	pbkdf2_sha256$260000$xwa7NhlsnEwlrua3B8INJd$0eICFWWm8p3SIwsEnPoZEShn5gI/gjQOFkg5wM4IxVo=	\N	f	b7383157-bb74-4b7e-b85f-f787c923559f			f	t	2021-12-17	fed_andrey@inbox.ru	b7383157-bb74-4b7e-b85f-f787c923559f
1532	pbkdf2_sha256$260000$leTAjvjAvrzjaK2pWsfhkr$p6H7gdqx+XmX2H1yQY0FMKD/ad3qMiBoO5oaNi0l0Fo=	\N	f	77eab802-7f6f-4d96-a2d5-fc51f7d51032	Владимир		f	t	2021-12-17	vlad.agni@gmail.com	77eab802-7f6f-4d96-a2d5-fc51f7d51032
1534	pbkdf2_sha256$260000$iS45riSPSJd9elbZAiP7em$Uryxz4V4OpuTK+lIyMDgZOZQ4pPt4JfBSrI+0HfLa8w=	\N	f	2ac8147d-20e1-4266-8002-fe6667f24ec3	Сергей		f	t	2021-12-17	petrovsgun@gmail.com	2ac8147d-20e1-4266-8002-fe6667f24ec3
1535	pbkdf2_sha256$260000$LgeZm2OvzQAOfwfSPCubmt$wA0exh/M3yMsoy0/03j+bm7gbY3f0KM582FP+eXIMto=	\N	f	524d94ff-4ede-4c84-ab58-12576bc30682	Григорий		f	t	2021-12-17	grushaclub1988@gmail.com	524d94ff-4ede-4c84-ab58-12576bc30682
1531	pbkdf2_sha256$260000$hbEoxSVxKuAhomHvxeihUD$0mKisZwz+a9Q5+0OKgDDZsk6IUH7AJPoAaydtNKQ54I=	\N	f	6fe4d881-4ddb-46c8-a34b-4f2ce01cb180	Роман		f	t	2021-12-17	roman_krasnoruckiy@mail.ru	6fe4d881-4ddb-46c8-a34b-4f2ce01cb180
1525	pbkdf2_sha256$260000$MQC5VdDpJBd8EYbbPW62q6$v4U1J8yuBtSp19qidp5xKOGhxnznI6/+QV24WxYYtpg=	\N	f	a2a13da1-a76a-4f7a-b9db-d08f5c27cbaf	Алексей		f	t	2021-12-17	akilex88@mail.ru	a2a13da1-a76a-4f7a-b9db-d08f5c27cbaf
1533	pbkdf2_sha256$260000$H9V0V5foAt7c5g9KsNr8wd$4wDgqsxUhP3Efkj4VwzbA6H8MhqP/4qWKRHQMogWFBA=	\N	f	9b175218-6f55-41ea-8874-ae92da973704	Роман		f	t	2021-12-17	mrrom14@mail.ru	9b175218-6f55-41ea-8874-ae92da973704
1517	pbkdf2_sha256$260000$FiOx8asFYkPyOe14Kz9ykc$alkPdgT2Aj1Ils0sdPisbvE4LdAfnZXKSWpmz+z8Ees=	\N	f	4260c466-4cf8-4c65-986d-dc25da0831ea	Сергей		f	t	2021-12-17	lev-in1983@mail.ru	4260c466-4cf8-4c65-986d-dc25da0831ea
1539	pbkdf2_sha256$260000$pMAknxbx6NVLswetG29zyE$Ru9mj/hm/aJqSrkp6w1LouelHKQGMaQF62dNsGEBgcc=	\N	f	89c28339-938d-4424-8966-68d986a423e7	Denis	Kazakov	f	t	2021-12-17	d.a.kazakoff@gmail.com	89c28339-938d-4424-8966-68d986a423e7
1518	pbkdf2_sha256$260000$aupiXy2IYcijD1roZOHXGE$p3cJnYTAnzhA16RZ9rD1U7jbPJcMziXiHrV80W/Mimc=	\N	f	e657994a-f97b-4f11-af90-fdb70e9fcae5	Влад		f	t	2021-12-17	karzhavin.vlad@mail.ru	e657994a-f97b-4f11-af90-fdb70e9fcae5
1524	pbkdf2_sha256$260000$YnC7r6aVpZihIx8a9jqbq9$k3KLHdmbXV/L7hLyiVisTCC9jwvx7CEAvcQ86p7eSmc=	\N	f	02b1f14e-146f-409a-8847-bb06a0742707	Дмитрий		f	t	2021-12-17	dmitr.malov2016@mail.ru	02b1f14e-146f-409a-8847-bb06a0742707
1538	pbkdf2_sha256$260000$HqzKwi96MBwOytd0bmwjtC$hzcYtVzhqTtoQiYdoL8HfJ/wRNWpaY8495CvcaCM1HI=	\N	f	c92ae737-e75e-4c05-ae9a-56320e901154	Анна		f	t	2021-12-17	kovalenko.anya@bk.ru	c92ae737-e75e-4c05-ae9a-56320e901154
1516	pbkdf2_sha256$260000$ldwtPDfetUmVA1DddTo43g$NUKH35Byd3aR8uEDk/VUy8GWX4YU6ZOiTI6w4HsISr0=	\N	f	bac2e473-953a-4679-9bf4-bd022daf0623	Дима		f	t	2021-12-17	dim-pipic@yandex.ru	bac2e473-953a-4679-9bf4-bd022daf0623
1530	pbkdf2_sha256$260000$UpfJjq4xvThje7FlrH77Te$kNi/nK2pD70cMVuIIuUwbk7Rg0EUmcMZo5BVnLQFwqg=	\N	f	7e5d9d99-b3f3-4914-8ef4-7f4592d4fc06	Timur		f	t	2021-12-17	timoxa2517@bk.ru	7e5d9d99-b3f3-4914-8ef4-7f4592d4fc06
1527	pbkdf2_sha256$260000$2KqtKjJLRAfzbhJFWjNmO3$pC1T/MCxicVXnPhcb+8IVYU0TSJcOdsy+zJCKbJJLig=	\N	f	230b3ce1-a23f-4785-bd78-4576728d4db5	Сергей		f	t	2021-12-17	sp040@mail.ru	230b3ce1-a23f-4785-bd78-4576728d4db5
1523	pbkdf2_sha256$260000$OtehErjQbNdqzPgvGHYv3t$F/aFuecbqRK/0ijllVwD6FXoBUFhr01DySRZyEBdByg=	\N	f	533cdad6-b839-4622-9c94-c408d1512698	Владимир	C.	f	t	2021-12-17	staff1909@yandex.ru	533cdad6-b839-4622-9c94-c408d1512698
91	pbkdf2_sha256$260000$D85o5wgBDo7Ius86I9FvlE$a+J05EqOEqoG8HjC1TFJSZ/eVrt435p5p61lMo5zBlk=	\N	f	05d19e9a-1d8d-4f91-9d6d-2dd5ccc19e02	Денис		f	t	2021-12-13	denis.tmebel@yandex.ru	05d19e9a-1d8d-4f91-9d6d-2dd5ccc19e02
92	pbkdf2_sha256$260000$5MNs2zuQSCvr0llCcv9y8G$yt8dFP8rP6K/QhgIrx7IORVZKt9/b/x0N3xIcgwOKxs=	\N	f	af4cd2cf-14b9-410f-91d7-6958019f485c	Александр		f	t	2021-12-13	avfilimonoff@gmail.com	af4cd2cf-14b9-410f-91d7-6958019f485c
93	pbkdf2_sha256$260000$EDZw4iUx8KxCAa27wAMV0J$8eHGds5FMa5roMykz11Y8MckOhShd75RYWdtiudUvv4=	\N	f	5177c486-995b-45fa-b78b-525c9fe47933	Alexey Ermakov		f	t	2021-12-13	ermakov-alexey@mail.ru	5177c486-995b-45fa-b78b-525c9fe47933
94	pbkdf2_sha256$260000$YcWLmZoI074zhhFUuNpjlS$mUYQXVxXJCh1Hb/0kTwEwYUiltGOJL4VzSzBS0+GJ3o=	\N	f	07d8a8f1-35e2-441f-bcc2-525430a3b48b	Дмитрий		f	t	2021-12-13	topko@mail.ru	07d8a8f1-35e2-441f-bcc2-525430a3b48b
95	pbkdf2_sha256$260000$Ny064H4YTpTiSDkJ6jAVoJ$V+fYpzlsHNiMOBfetehDemrtbg50DGDe1EEyd2D6a5Y=	\N	f	a157cc91-f8a9-4552-a1e3-8b6cb99546c6	Святослав		f	t	2021-12-13	svyatoslaf@gmail.com	a157cc91-f8a9-4552-a1e3-8b6cb99546c6
96	pbkdf2_sha256$260000$EKQ2Zupn2mp84rmGfQ7Vnd$oAD0tJdjHM9shJ5paUhWxGsAKizGCjaVKvn+uY29Hgo=	\N	f	d4a0a890-646c-448e-b5a1-308e59248fc4	Юлия Перкова		f	t	2021-12-13	izumrudbereg@yandex.ru	d4a0a890-646c-448e-b5a1-308e59248fc4
97	pbkdf2_sha256$260000$ZGw7EiAG92ACYCXDrgSzDy$3/jtQm4Nn75h3VdB1zDR2qOQ3T6SSnJH0E2AfZITYvM=	\N	f	f8f621a5-77a5-4b8f-82e8-7bae0239939d	Никита		f	t	2021-12-13	polyansky.na@yandex.ru	f8f621a5-77a5-4b8f-82e8-7bae0239939d
98	pbkdf2_sha256$260000$YZrlGvmnPBTa1gmMihyxry$zcSyoQPyM3eTU2+x6cOhcHBMU0q5aF6Yi8B8k+Di0nk=	\N	f	c41f1559-644d-456c-86f1-909307a8d920	Алена		f	t	2021-12-13	pyatigorskaya97@gmail.com	c41f1559-644d-456c-86f1-909307a8d920
99	pbkdf2_sha256$260000$16TiyX8oyBj5KThiEO4cTi$NLmG1jZNniy77Fp+OP3QmHXtU0vAncy2DLf80pjNcaE=	\N	f	5a1e306f-0464-44c3-a440-179f36f67e06	Дмитрий		f	t	2021-12-13	lesnojdmitry@gmail.com	5a1e306f-0464-44c3-a440-179f36f67e06
102	pbkdf2_sha256$260000$ZHf0hRVaOfTh5U3LlwfYvw$PWvQZTEbBjSSARb9VVmiL7JhrqUawAdCJfa8SxdcdbU=	\N	f	2bf23a70-5db2-4cd8-b823-f1362ec2896c	Семен		f	t	2021-12-13	semyonsemenyuk@gmail.com	2bf23a70-5db2-4cd8-b823-f1362ec2896c
103	pbkdf2_sha256$260000$UIHtxdaxPvEL7HYaOXDyrK$o4XV/QMp+Qhp6SxyXCEljBAnUfWOQs3kU9fP3oddKQQ=	\N	f	41dd9be7-dd4d-427f-a4ac-86bf9d36d003	Александр		f	t	2021-12-13	aleksandr243574@gmail.com	41dd9be7-dd4d-427f-a4ac-86bf9d36d003
104	pbkdf2_sha256$260000$1glifO5LEDkeinYo0ryKVy$Tr4aGIQO54uzGZ/2F+tv7jAIWNC3pM2/3H/52OE6tD4=	\N	f	448a9a69-72dc-40d2-a7bc-dbd27edbea40	Михаил		f	t	2021-12-13	simmisha@yandex.ru	448a9a69-72dc-40d2-a7bc-dbd27edbea40
105	pbkdf2_sha256$260000$P83e7a2jul19MAUF3GWmXO$ADpk/v8zfdZIhR9lrSfiWhApd1cCBhnLycVCpbqkQCE=	\N	f	17640372-4df2-4b1b-9a79-6b4afd469043	Константин		f	t	2021-12-13	argon_08@mail.ru	17640372-4df2-4b1b-9a79-6b4afd469043
106	pbkdf2_sha256$260000$AO3YnYf1zRPWFGgLDheiS2$jqeY1dYW0+eXVtrZtA9JqJYafiJh0gmD9SBMl1h6Q2Q=	\N	f	3f564393-33c6-48a2-b542-ed782bff2a83	Артур		f	t	2021-12-13	minkhairov.art@gmail.com	3f564393-33c6-48a2-b542-ed782bff2a83
108	pbkdf2_sha256$260000$VQltcnvHXTqFjbM0yI7xsi$huyjhqI2NKhXCQQWolFW9WVPPOFjsdtZavfbtTFozA4=	\N	f	39c2a094-718e-41d7-aebc-06109d43fc19	Евгений		f	t	2021-12-13	angel100_05@mail.ru	39c2a094-718e-41d7-aebc-06109d43fc19
110	pbkdf2_sha256$260000$KXpxSiNkwkyTUkxrJDFpVX$b/Vj8bZ1yqVD3rl3Hko92UHoplyKSu16tSPV+B+R3gc=	\N	f	f2b57159-a566-4e75-a765-99a5881cfdf7	Леонтий		f	t	2021-12-13	marshava@yandex.ru	f2b57159-a566-4e75-a765-99a5881cfdf7
111	pbkdf2_sha256$260000$joDFqoqFdAn2cNRtPHbOh7$gVLlaTKxI5cjopNFKz+13pAF3JvZSQUc3oZA6sWMyEk=	\N	f	3f9cc448-9b73-4a15-9534-c4b50524725b	Алексей		f	t	2021-12-13	admza@yandex.ru	3f9cc448-9b73-4a15-9534-c4b50524725b
112	pbkdf2_sha256$260000$68oRVg6s0dZ0eOtSJbkoqE$OoOOzag2bdXkytxKJe+nw3x/wInPg2IVG3tPae/s0mA=	\N	f	bf43e1b3-8025-4385-82c2-96a640853c03	EHOT		f	t	2021-12-13	antrekotik@yandex.ru	bf43e1b3-8025-4385-82c2-96a640853c03
113	pbkdf2_sha256$260000$UBpNijfwITJDRW9dK914XK$lkdrRNpdof96X+rOLgZsFcP2Cw7nXTnxIVMjMtSKjzI=	\N	f	1cd710f0-4857-4e33-a8b2-59de11fb1591	Эдуард		f	t	2021-12-13	eduard.a.lisienko@gmail.com	1cd710f0-4857-4e33-a8b2-59de11fb1591
114	pbkdf2_sha256$260000$EjHAYqllTbmHD8rWoR4sfT$FdPvENKuJAmo9zT8z5+bAEEOtR3D2LFm2eAveD5v2zs=	\N	f	9044e7cd-6246-4c80-a8e6-05dac853d1e3	Игорь		f	t	2021-12-13	igortarasevich1992@yandex.ru	9044e7cd-6246-4c80-a8e6-05dac853d1e3
120	pbkdf2_sha256$260000$ItlJsq4rczXsJ57gYh6uTo$wzYM4T0rUHsFmDg+4uP4OT0pLxwgldGYwLFeB8GtnrU=	\N	f	74840035-bd06-4f67-8ced-b5cae5cab4e4	Светлана Колесова		f	t	2021-12-13	sbk2774@mail.ru	74840035-bd06-4f67-8ced-b5cae5cab4e4
121	pbkdf2_sha256$260000$CORMP8O6sl4WYgQvmQaG6H$00qynNpPUqyIDx8BYPDASJXbghJmnaLdeHLxMU5Fz+w=	\N	f	0cca052b-81fb-49d2-9ec7-3ab4e57eee0a	Никита		f	t	2021-12-13	naikita753@mail.ru	0cca052b-81fb-49d2-9ec7-3ab4e57eee0a
122	pbkdf2_sha256$260000$C4BVN26UC1PrHMfNxVjSYQ$K6gxYmkpA/uF5l/zRwNLG7Prbnr133avBrBnwzUxDkU=	\N	f	23e15195-8a4c-429c-80d9-7224345e5f17	Сергей		f	t	2021-12-13	tiranov@mail.ru	23e15195-8a4c-429c-80d9-7224345e5f17
125	pbkdf2_sha256$260000$PLvrOP4f7sGTkcZoGqKqHc$OXs0/jouYdUmLJNXC3WtVUNJXV0mi7GCJ52mPAmoVZI=	\N	f	0755cdcf-ed77-4829-999c-01ff838ea6f8	Алексей Астахов		f	t	2021-12-13	a.astahov76@gmail.com	0755cdcf-ed77-4829-999c-01ff838ea6f8
1561	pbkdf2_sha256$260000$OhAnZOMrOtqeoYnp4rIcrq$mnqtC+TDZ5uNIuLYFmu6Ym4XxWPPyNC59GRTRf/1b5g=	\N	f	98a2bc01-9227-498d-9c48-e4f2f2158578	Лилия		f	t	2021-12-17	eva.zaco@mail.ru	98a2bc01-9227-498d-9c48-e4f2f2158578
756	pbkdf2_sha256$260000$aaJSNNEyKx92hOcbdrmXTN$tQKbWli8EfjDrWo4uaw+bPFOWa17GTVP28r7UG6mEog=	\N	f	466de708-a37c-488f-b2e0-e5f2ae68e119	Николай		f	t	2021-12-14	nobesperstov@gmail.com	466de708-a37c-488f-b2e0-e5f2ae68e119
109	pbkdf2_sha256$260000$pGW8ffq3GVFOnfQb9aKnH7$tNyIlDsb8B6XCWwqao5pb8jgLjKbIcHkA81P8PAhNJo=	\N	f	b276f05d-63e5-4b1b-97e5-94b1b29e198a	Эдуард	Абдулвалиев	f	t	2021-12-13	abdulvaliev88@mail.ru	b276f05d-63e5-4b1b-97e5-94b1b29e198a
101	pbkdf2_sha256$260000$DddQWFzpixzGULVJv9r8x5$9X5lKNkdNHz2lytVhWHVP69kv6q7BgRYrwOZ5pr78JU=	\N	f	42c9c0bb-eb66-4a1e-9421-175039a79d51	Тимофей	Леонов	f	t	2021-12-13	timofey.leonov007@gmail.com	42c9c0bb-eb66-4a1e-9421-175039a79d51
1624	pbkdf2_sha256$260000$VFowLUUDK3Vfs8HMFWf3Ry$o53GPtoAjgJOEYoYf1mJ1o0rYgr9eWnkCPI5xbIQM8I=	\N	f	71971b8b-65dc-4232-a9e9-1be844c8a738	Григорий		f	t	2021-12-18	grig.prokudin@yandex.ru	71971b8b-65dc-4232-a9e9-1be844c8a738
1702	pbkdf2_sha256$260000$4ulh21Y2simGkUmSp74EOL$czUScMFJTD/2rywXM81yyye2QOuHzsFqmFIy/L/Yn1o=	\N	f	ac059dbe-d7df-485b-9fb1-060521d34d44	Татьяна		f	t	2021-12-20	t.davidovskaya@gmail.com	ac059dbe-d7df-485b-9fb1-060521d34d44
126	pbkdf2_sha256$260000$gf3q4NWAZ4fcTN1UbzEtbt$7vnan2FTrVB2iW+ULYAmpHRdxpjE3weOLycSzZ97vY4=	\N	f	d5230e87-9fb6-4eb9-b501-8cc02d32d27f	Эдуард Керимов		f	t	2021-12-13	kerimovedik161@gmail.com	d5230e87-9fb6-4eb9-b501-8cc02d32d27f
127	pbkdf2_sha256$260000$XL9CtYTJAjuJJGHpWxa5fZ$+sh5JU4CIJDiYTmvkDso1iP52ZwesVSkYCn16zeeRmA=	\N	f	f72f6de4-3711-4c12-b725-236df9fec363	Евгения		f	t	2021-12-13	lipkka@gmail.com	f72f6de4-3711-4c12-b725-236df9fec363
128	pbkdf2_sha256$260000$iuenFnNOqKZEiv62tx7f2q$tVwAVaB5L2KJeJ9moxbC+Xpvgrwtw18OpWxg8UaOJaw=	\N	f	0d9511e5-2c62-4cb4-bca0-e3d6938dea16	Anna		f	t	2021-12-13	me2sage@gmail.com	0d9511e5-2c62-4cb4-bca0-e3d6938dea16
129	pbkdf2_sha256$260000$iX6wggWxFL76b4nCLoRKR9$Xoy+EIQlXpdtxyg2y3IQNkcknUyJwqCWpV6k3ZSSmOc=	\N	f	16d448d2-6d28-40e4-aa23-1b8824885704	Александр		f	t	2021-12-13	alexandrsolopov@gmail.com	16d448d2-6d28-40e4-aa23-1b8824885704
130	pbkdf2_sha256$260000$yhUNr1VHI1QqpS6n33AkEd$MGxgnxm0gKZKWX7+jZdnSDNfAbuIrwaLFXRFGYQte7w=	\N	f	a2c52cf5-e584-46d6-97e7-3606aa0db988	Aleksey		f	t	2021-12-13	2023777@bk.ru	a2c52cf5-e584-46d6-97e7-3606aa0db988
131	pbkdf2_sha256$260000$Iyqct2D0H5XiYYM4HHEGie$vEsxKycpUg/gMccCIsDzyOYFe4iy0aOXRtvg8R29k60=	\N	f	d91d3c89-3e25-4225-82f3-c5dc27030682	Андрей		f	t	2021-12-13	stoa@mail.ru	d91d3c89-3e25-4225-82f3-c5dc27030682
132	pbkdf2_sha256$260000$CljqxTmDSNfGxx4fyFma4N$xdO85fxq4Cjie6xS7zmLeUZKxXdoyGiUT7MR2PJQvXI=	\N	f	bcc1c353-0614-4750-8118-838485928e99	Андрей		f	t	2021-12-13	brigadir59@tut.by	bcc1c353-0614-4750-8118-838485928e99
133	pbkdf2_sha256$260000$XOkrWMMjtxBzHjPjznS1sz$jaqWVn6aZBHdZ6UU90tNuF+NbSIgk7Rm40BivIpls5M=	\N	f	8c77c817-dab3-4525-83af-d9be7e6c5e81	Дмитрий		f	t	2021-12-13	iamdb78@yandex.ru	8c77c817-dab3-4525-83af-d9be7e6c5e81
135	pbkdf2_sha256$260000$FVAZ3jpzHuWzbVMF66kUCB$TjXFW2GJ6MDxDWoU3TLtJccobdQ1srb11bZR9Su6das=	\N	f	7f80c17b-f5ea-4889-b8c4-dc9585773896	Сергей		f	t	2021-12-13	kuzin.kuzins2015@yandex.ru	7f80c17b-f5ea-4889-b8c4-dc9585773896
136	pbkdf2_sha256$260000$gOvMPP0GvZhuCFqNVK2gpJ$XZ0NJpO0VQ0YAIq+iBpfOZz/zoFeJ/kphodu6IGXBXQ=	\N	f	aea59eb4-6b92-4aef-ad5b-8b22f69ec2a1	Максим		f	t	2021-12-13	makskuznetsov19@gmail.com	aea59eb4-6b92-4aef-ad5b-8b22f69ec2a1
137	pbkdf2_sha256$260000$b0CTIbC2pSzPUUaaavFQxY$5yBbzVwDfWyJHOxfzgNPlgRf7+FPGR3un948PJO2WMw=	\N	f	c63d5dc6-f27d-4198-bb8d-c076365ebd01	Вадим		f	t	2021-12-13	vadim3105@mail.ru	c63d5dc6-f27d-4198-bb8d-c076365ebd01
138	pbkdf2_sha256$260000$FNXJ0ge6ofP2U23XmTqYH5$wr9tChRlM/RA/hxEOIQwbyKNiCZuuL1IsTWKV4Wfv5w=	\N	f	6e0a730f-3db2-43c7-a2b8-a4f144cbaf01	Евгений		f	t	2021-12-13	krechet01@mail.ru	6e0a730f-3db2-43c7-a2b8-a4f144cbaf01
139	pbkdf2_sha256$260000$Rck2AEi1eC86f1rM7wjis2$RkA1lAQDwJHHHVbLwh1+1Gm2LoxfzZhjlQr08ysMhNk=	\N	f	4622d295-355b-4ba5-93af-f53236a5629a	Аркадий		f	t	2021-12-13	weltonmaquinaria@gmail.com	4622d295-355b-4ba5-93af-f53236a5629a
140	pbkdf2_sha256$260000$HDHgihfEyLb0ZLEGIqs3lf$ERp1AHSCJ5P1YJzM2m4Jcj/0MG/jcah2eRVqJTyzv8E=	\N	f	0317b555-c014-4cbc-a3f7-e10eadd6a992	Андрей		f	t	2021-12-13	visochkin.andrey@gmail.com	0317b555-c014-4cbc-a3f7-e10eadd6a992
147	pbkdf2_sha256$260000$KuaHN38LDsNfDKsyX4DKIB$8UQvFfVOAj8g4oxJ7LGc8vTkesWpNRRooBkhsKvh/DU=	\N	f	fa2935b3-3637-4223-bb7e-86268186751d	Кирилл		f	t	2021-12-13	dyakov.kir.il@gmail.com	fa2935b3-3637-4223-bb7e-86268186751d
151	pbkdf2_sha256$260000$v16FM3WlrhU94x8s5myyp7$t7Pl3s7/DUuKGGyNFQ1vX/RFDJPhPWGp40S1OhP+z90=	\N	f	e1aad780-9430-498e-b353-cab39ce6f66e	Павел		f	t	2021-12-13	pavdav2012@mail.ru	e1aad780-9430-498e-b353-cab39ce6f66e
152	pbkdf2_sha256$260000$Tj414LpjrXDiY80Z8JZWBe$0X9+F3krHswm/b51P6v8Fb6KUa/C7aDYsC/e5ee6YJY=	\N	f	14fe62c3-afa6-4930-b4b3-33c8564925c9	Андрей		f	t	2021-12-13	and19720731@yandex.ru	14fe62c3-afa6-4930-b4b3-33c8564925c9
153	pbkdf2_sha256$260000$odtQG3cRb7S5ayqZTJlc4f$WFwF1ZwZSC5asjTXrkVihJ3KXMFj6Ly8az/Vx2RhlbA=	\N	f	eeed17b2-605b-4d05-b52f-ce72aaf8a031	Евгения		f	t	2021-12-13	extrov9@gmail.com	eeed17b2-605b-4d05-b52f-ce72aaf8a031
154	pbkdf2_sha256$260000$QabSxPd5DdIZqLjFYaaChP$uevlIu5VKvK9+dDnuzUHT4YWHXVr/ruG24neiEh54jo=	\N	f	79b09712-53fa-454f-b572-d8c5b1b9e909	Анна		f	t	2021-12-13	fav312@mail.ru	79b09712-53fa-454f-b572-d8c5b1b9e909
155	pbkdf2_sha256$260000$B4V2SHxPu11VQ1qsap8ByN$si8SpMmqTMiVX0jeWxDgeDoYG7cRrDExKVQvAgGT2Uc=	\N	f	697ba18f-49f1-4deb-93cc-d1b5143523ea	Алексей		f	t	2021-12-13	alexr66@yandex.ru	697ba18f-49f1-4deb-93cc-d1b5143523ea
156	pbkdf2_sha256$260000$hN0I3l5TT8MurHcv0315SA$kTko/C5x3nhXhwxW5Mz0Yrnw33nNO84jpuqdiW2A+dA=	\N	f	68bbdfb5-ed49-4285-86d9-d11242d4d07a	Дмитрий		f	t	2021-12-13	vasilevich@me.com	68bbdfb5-ed49-4285-86d9-d11242d4d07a
157	pbkdf2_sha256$260000$JZ30xBrkw7ZQ0IiQrMZ1Ki$kAGqys1qUAoW6mpaZMJXtMtBq98lez4bNZv55eQi7YM=	\N	f	2a5ecb11-4933-4099-b18c-b57ec1257ebb	Юрий		f	t	2021-12-13	lym2002@mail.ru	2a5ecb11-4933-4099-b18c-b57ec1257ebb
141	pbkdf2_sha256$260000$LEqDXwaW03VOvSM6X8sVl6$Lxa6tT8h6h6KCzbWAaSALW2vHhMUjb1P5uxw0RlxaBo=	\N	f	6e59e51c-39b5-43cf-afc8-e717da2c7731	Владимир	Мартьянов	f	t	2021-12-13	vladimart@mail.ru	6e59e51c-39b5-43cf-afc8-e717da2c7731
1562	pbkdf2_sha256$260000$9zeEYXdeqllP0xAY6RZBtF$qgYDP3g5jyhaFKJ46EwJbuMVbcl1LZ4XPijxImY/Hbs=	\N	f	2bbc8cb9-3223-4d8a-b22b-b84db58afb0a	Natalya		f	t	2021-12-17	varvara100001@list.ru	2bbc8cb9-3223-4d8a-b22b-b84db58afb0a
158	pbkdf2_sha256$260000$iaduZmPILBUDpsxvHqmjnw$UAyCxQL/ya7AprU+QBFWGCJd8Xyu5oQpj4ifddgsdhY=	\N	f	96844534-5af5-4a3d-8926-fe123933b1ea	Сергей		f	t	2021-12-13	sergeynek@inbox.ru	96844534-5af5-4a3d-8926-fe123933b1ea
134	pbkdf2_sha256$260000$z8dasPyhNeLUjV9kKWbC0K$KvIP7oExTKgMs7C7Km3rz+kvNbEH1pj1i2csJvRKZjg=	\N	f	acf1553f-fade-44bd-9816-df2daec494c2	Никита	Алексеев	f	t	2021-12-13	nikskaut2009@yandex.ru	acf1553f-fade-44bd-9816-df2daec494c2
149	pbkdf2_sha256$260000$T4lZXVNtmLHih8xc6f9Ksb$yf4gKSvLdafRpi371fexw9R3TatYgLERei1GVammGas=	\N	f	74bbecf6-3159-48b3-b942-1264c31617b6	Никита Южаков		f	t	2021-12-13	nikita.yuzhakov96@mail.ru	74bbecf6-3159-48b3-b942-1264c31617b6
150	pbkdf2_sha256$260000$2mpn0pav2rkBzF2NtsILwc$5FuxwPonDbmgDkzne0UAUNO9WsIvuRULeuTb2QMOtiA=	\N	f	197fa092-e235-4358-a3eb-e74e9e8867ef	Фёдор		f	t	2021-12-13	fedja.96@mail.ru	197fa092-e235-4358-a3eb-e74e9e8867ef
148	pbkdf2_sha256$260000$tNolSclZ2ft1KVSAfzyZ6b$sirtzeK0nwf7lLn1Vpp+EKSg1UNWhANbsZl8GZz7UHM=	\N	f	d2f1aece-302d-4e64-adff-7e5ea64ab8f2	Александр		f	t	2021-12-13	chas93@mail.ru	d2f1aece-302d-4e64-adff-7e5ea64ab8f2
146	pbkdf2_sha256$260000$0tWWfXrbEoXtgmIlbaIvjf$p57D+e2QCQ3WFsgig/B/P3UByqrcKng8ArkGCDkOr4A=	\N	f	0518eb75-a13c-48e9-b2cf-baf4d8633136	Виктория		f	t	2021-12-13	kameliya.lantana@mail.ru	0518eb75-a13c-48e9-b2cf-baf4d8633136
1536	pbkdf2_sha256$260000$WQhbbXmSSWk9cYS1C8hrpx$2wzfLXvEcDBSWn0bOxVoLApweva7MM9yDjJEEipuPx8=	\N	f	162eae17-471a-4c16-bc9a-8424d45e82a5	Александр		f	t	2021-12-17	alex_mart_07@mail.ru	162eae17-471a-4c16-bc9a-8424d45e82a5
1572	pbkdf2_sha256$260000$Am4HYd7ucTfzm3gQoAzblJ$gqkifz2EL00H/bq/0Eom98CY8erNx2cwhY1mWSGw0l4=	\N	f	242a13a6-50c2-478d-a2f3-d6ede03f5f73	Игорь		f	t	2021-12-17	rotermeligor72@gmail.com	242a13a6-50c2-478d-a2f3-d6ede03f5f73
1755	pbkdf2_sha256$260000$dMKMLbbJCng7RIXyPIq4HI$mOtuk1PyukqHztJ8cqxneMjC/EKa9XUz3kRM1cSaDiA=	\N	f	519336e1-494e-48de-ac46-8a951c7b25a7	oleg		f	t	2021-12-20	iworldnice@gmail.com	519336e1-494e-48de-ac46-8a951c7b25a7
176	pbkdf2_sha256$260000$UdwjgcHmEedG1QL279g2tD$VuPK8s4Sxwp6kYl9iAYRfTnU4vysp7qlJw4xQLwll+4=	\N	f	9014dc44-37e1-44a7-8c4b-b260f6b879f2	Альберт	Алексеев	f	t	2021-12-13	aalmin4@gmail.com	9014dc44-37e1-44a7-8c4b-b260f6b879f2
1290	pbkdf2_sha256$260000$r1c01VAUU2w3rDvsqtKRir$bkA1B4x2nOl7jwlnJODcMLwiB3EOzFmOVwt3yJgmrCo=	\N	f	c2973cce-7b25-4f6f-92b3-d0b9f4ed9544	Васильев Александр Германович		f	t	2021-12-15	vasilich67@mail.ru	c2973cce-7b25-4f6f-92b3-d0b9f4ed9544
159	pbkdf2_sha256$260000$LD8uvoEtDhG5Q5XvZ8e8QM$fa+MfXPYZLqosGUe0hG/YToncNHXM5gOq7TOD3IZzL4=	\N	f	d0824de1-b215-4bfc-950d-261c1e719874	Сергей	Рыжов	f	t	2021-12-13	samsonsound@gmail.com	d0824de1-b215-4bfc-950d-261c1e719874
1703	pbkdf2_sha256$260000$pEJVUIYmKKtaSZx61AUFaq$DJsAxZEbiz33oG5Q/VkK750NHESfGxQeMqVkWC4WPTU=	\N	f	cb57b34a-3436-421f-a350-35a9bbeff042	Борис		f	t	2021-12-20	bkarpychev@gmail.com	cb57b34a-3436-421f-a350-35a9bbeff042
1625	pbkdf2_sha256$260000$FJcrVSAWm47FfTv0aZFD0d$kBPrYziSIMCwwweveg5C/as3IA8Ueaed2eQ0HuzsPC0=	\N	f	1f25c91c-6593-44bf-a4b1-ca91c37f568c	Ильдар		f	t	2021-12-18	isaitov1985@gmail.com	1f25c91c-6593-44bf-a4b1-ca91c37f568c
177	pbkdf2_sha256$260000$oWk4LWJvRqLR2UnE8WN3Et$fGY52/1/VHsF0yMvZpGhaMqLpJ8+Z0tJoCxKTMBFH2U=	\N	f	11b0da0e-e85a-430d-9ec4-b04866f5e1fa	Семен		f	t	2021-12-13	uralsvettorg@bk.ru	11b0da0e-e85a-430d-9ec4-b04866f5e1fa
160	pbkdf2_sha256$260000$XCraaZE2N0kblrDLaZsU73$9lHa7a3Scl3Ni2/Td9uDiyrQXkt2VPnwjDYgvIQUckk=	\N	f	d13d0978-2089-41b2-b95c-2beca05ff868	Александр		f	t	2021-12-13	pcmactep@yandex.ru	d13d0978-2089-41b2-b95c-2beca05ff868
161	pbkdf2_sha256$260000$x3YKkUmdLeHQaW5ygC0X1m$VBE9AHKQIBE+ZoQ1IUgz/kRi65+4H4KSDqdbgsePt3Q=	\N	f	da833144-972a-4cf1-a19e-c63ae3474ace	Евгений		f	t	2021-12-13	paretskiy@mail.ru	da833144-972a-4cf1-a19e-c63ae3474ace
162	pbkdf2_sha256$260000$kx5Xj4JitF6XLvLpJo0Ep5$XJnU5keT6Y/yZ2oiSZKdbho6mOYM5FtCDF9LO3W5jKI=	\N	f	52a4911a-3f14-41b4-81ad-da7e8c0c12e9	Денис		f	t	2021-12-13	andreev.d.n@yandex.ru	52a4911a-3f14-41b4-81ad-da7e8c0c12e9
163	pbkdf2_sha256$260000$y4rbbeaaE2wq2NdiB62kkg$HGkvLGwNAlAAXmsUbkHLxzoKFK9gCugdEPMQuy3QR8s=	\N	f	f15576e4-cabe-4493-8ce5-011852d47556	Наталья		f	t	2021-12-13	nstec@yandex.ru	f15576e4-cabe-4493-8ce5-011852d47556
164	pbkdf2_sha256$260000$gWmWNrtrxqyhQlHuW4VbJh$4n22wq60EoMUvfj+KfqmC3rffZWQOR2JC7PHykRnSiY=	\N	f	b668cd09-f5dd-4f41-bf82-3e9f07008090	Сергей		f	t	2021-12-13	pionerskaia27@mail.ru	b668cd09-f5dd-4f41-bf82-3e9f07008090
165	pbkdf2_sha256$260000$TeXOnORNBnVhEQDM6kGC5x$UwCX1TWwKT9oiS++boC+hjtLSTksUcjpBIpVw2urLQg=	\N	f	04c87b09-b56e-4f59-a922-c660024a09cf	Виктор		f	t	2021-12-13	v1221@mail.ru	04c87b09-b56e-4f59-a922-c660024a09cf
166	pbkdf2_sha256$260000$1kfL8GqngEqG7CWM0AnmDs$ZYs43YsvTKdJczyZILaFcvisPuCvx0HSFTdlpqXVGAc=	\N	f	0da8abfe-f79f-445c-85d6-b1fdb98db61b	Павел		f	t	2021-12-13	jiimbo@mail.ru	0da8abfe-f79f-445c-85d6-b1fdb98db61b
167	pbkdf2_sha256$260000$lSzd8crDS6LPPLcCUlGGrl$bih8tbzrD6ioRuroKf2q0gy+9MMX67GTSwElCGZipGI=	\N	f	42239580-312e-4491-9c3c-c5888ff79b6f	Владимир		f	t	2021-12-13	im@vlev.me	42239580-312e-4491-9c3c-c5888ff79b6f
168	pbkdf2_sha256$260000$qvhxAjbriD0RxXpnRINBx0$ih8pB8Va+iNn8FvQ9XI0M1vWrD/khOwETXGjRrbQtQw=	\N	f	8cdec1fc-536d-4c36-ba0b-5c57ff6b8183	Дмитрий		f	t	2021-12-13	dimitri_80@inbox.ru	8cdec1fc-536d-4c36-ba0b-5c57ff6b8183
169	pbkdf2_sha256$260000$2TaFjZPTmPkhWtdHmvK0Qm$Uzl+/sxr/+zW6YvAnRbu1zCpTc1iFvfcifMjCYLCLRI=	\N	f	5c613815-903d-4679-b091-f8a8f5f353b2	Сергей		f	t	2021-12-13	seregaplys@mail.ru	5c613815-903d-4679-b091-f8a8f5f353b2
174	pbkdf2_sha256$260000$RqTiD0BORM6ryFf0JnWv43$CmKk5aNG3udpOgWmNgLZ6NYWZL4EXsEMFxuw03dqsGE=	\N	f	b27f577a-9578-467b-b4f3-a22b6913c659	Алексей		f	t	2021-12-13	alexeymayakin@gmail.com	b27f577a-9578-467b-b4f3-a22b6913c659
175	pbkdf2_sha256$260000$tdKgTyOxy8KKFImvDnjvVQ$mwD6+M9oJ3qCPn/7q5T1sp4tqoiRy7jHP14ktRNmz2k=	\N	f	face5f0d-4695-4338-8010-e465eccd8c6d	Vilena	SHCHETINKINA	f	t	2021-12-13	vilenanew@mail.ru	face5f0d-4695-4338-8010-e465eccd8c6d
178	pbkdf2_sha256$260000$y6Jr4WXPZlQUn4K8VeMKkh$nrGXsU8oLQWdMlvJQKHSwwvvH/3cGyt7MhJ3F7LR3UA=	\N	f	d17054dc-b252-487d-ac3c-a5610431e211	Максим		f	t	2021-12-13	ilichevml@gmail.com	d17054dc-b252-487d-ac3c-a5610431e211
179	pbkdf2_sha256$260000$iFQVxKBP9LUSbIiZbbu8C0$UlTDYxFWc3lr/y67d547jDHqajVwbDZDaGwL1tFJBzI=	\N	f	88422271-b2c7-4af5-9556-48bdfedaa4dc	Valeriy		f	t	2021-12-13	a.valerii@bk.ru	88422271-b2c7-4af5-9556-48bdfedaa4dc
180	pbkdf2_sha256$260000$Z8RshpsJ9qjw4csFbiJSLG$dVvKKTtVlyPR9blB2ib+OynyG+MZTblf40gRV0sl2H4=	\N	f	c7dc7546-de89-4517-9f50-36ef7a1631ef	Максим		f	t	2021-12-13	m.sorokovikov@gmail.com	c7dc7546-de89-4517-9f50-36ef7a1631ef
185	pbkdf2_sha256$260000$4QHG7KmUr8LKLChBW9tr8C$uKKONhNXq7JzSG76ZdroMUlhpB4uZFDPbBYsCR3T8dE=	\N	f	f7e60683-a41f-4335-9496-8ddf85755602	Максим		f	t	2021-12-13	9997178@gmail.com	f7e60683-a41f-4335-9496-8ddf85755602
181	pbkdf2_sha256$260000$SJbyoHU3I3tKiXYQAHiGzl$tlJJA+q5KAlELH/nKtAENVsuoyMTneTtIDTczoD7l0A=	\N	f	4cdfc6cc-07af-4956-a9e6-f31b3365016c	Сергей		f	t	2021-12-13	svr@mf-group.com	4cdfc6cc-07af-4956-a9e6-f31b3365016c
183	pbkdf2_sha256$260000$4WjrF1bPrp5avfTSlX2yvP$DcsXj6+dCTWhFfm7yjqGhUiRslwMx+OzhKEIfyfNkPQ=	\N	f	db6558b3-e569-4b04-8a4e-fbdd6e72be92	Григорий		f	t	2021-12-13	grunzik@yandex.ru	db6558b3-e569-4b04-8a4e-fbdd6e72be92
184	pbkdf2_sha256$260000$9Rg9h1PbAvQgleR3uGKxE5$6QxFdM5MzMaxlqLrZfYEnH+7HHCzVMQEHErPEtXXbrw=	\N	f	69b83256-2dc0-4548-a3cd-fce0a5d12588	Елена		f	t	2021-12-13	mlena_71@mail.ru	69b83256-2dc0-4548-a3cd-fce0a5d12588
186	pbkdf2_sha256$260000$4zV7vJTol8YMHV4JG5iy2b$6E+nbc5H40K7DBup5syKlPlwB8qy+A8xmlVLJ9bRpdc=	\N	f	30857701-fb7e-4970-a6d4-de0625a5646b	Илья		f	t	2021-12-13	kaspiec12@gmail.com	30857701-fb7e-4970-a6d4-de0625a5646b
187	pbkdf2_sha256$260000$AvGiDma5d6FqBZTVbrRisy$MjnLR8j54+oE4JPQEg/6KLM4jHtJFWjTrrokBiTizv4=	\N	f	747ce913-303b-4fce-9115-ed9de6274781	Сергей		f	t	2021-12-13	sa.volodin@mail.ru	747ce913-303b-4fce-9115-ed9de6274781
188	pbkdf2_sha256$260000$SB7xRraeqAVjNjOfdhb4i4$ynK6wkGAFHhvXF8BRGkumBsxVPwZBT5Wzfjmn4Wkc1M=	\N	f	f463e948-f17c-4270-b40f-edc92923152e	Андрей		f	t	2021-12-13	povar9924@gmail.com	f463e948-f17c-4270-b40f-edc92923152e
189	pbkdf2_sha256$260000$ZkgSM4pEBWzLcktgtsOJw1$9rGnO2lstyrmdxf6bTtpaeWCXsAfx8trlYwbFbzO9Jk=	\N	f	c0cfdd1a-ff2f-4acd-ad4a-5964b03e0b02	Евгений		f	t	2021-12-13	pakhomoves@mail.ru	c0cfdd1a-ff2f-4acd-ad4a-5964b03e0b02
190	pbkdf2_sha256$260000$VRrEJVdefimkX8MwmvqzLo$5F5VnuwIeE++9A0P3/87NaztlOHaTp8r44aJf2SAjVk=	\N	f	af58ef97-67b4-4c5d-a9d1-586d8ca45f19	Игорь Жильнов		f	t	2021-12-13	zhilnov@yandex.ru	af58ef97-67b4-4c5d-a9d1-586d8ca45f19
191	pbkdf2_sha256$260000$yuZ62Y0YzWrwZhSRjRrZjp$kRzRBTu/xQX+w3GWvsW1lDvDlEy6guFfbplJTwRwSGs=	\N	f	2ee453d0-95a5-44cc-85f7-a0f31aa35a1f	Константин		f	t	2021-12-13	sh.kost@yahoo.com	2ee453d0-95a5-44cc-85f7-a0f31aa35a1f
192	pbkdf2_sha256$260000$pxEtYFIKhjVkWA4dOL6Kef$lJ+EY77QWQDv4nNdOLYS6+ng36cP33DVxUknbrLYCjY=	\N	f	6e4ef63c-4a38-434c-b3e5-6787d74d4c45	Андрей		f	t	2021-12-13	mclion12@yahoo.ca	6e4ef63c-4a38-434c-b3e5-6787d74d4c45
193	pbkdf2_sha256$260000$CKzQGbLxMqBkamegdSwg5v$Q9oICjWMN45rGaiXdt0Wz5xKRUFKv4lRxBf/VYTwhNM=	\N	f	c9980ae4-815d-4c0b-aaab-30ade81b31ba	Надежда		f	t	2021-12-13	bna-ip@mail.com	c9980ae4-815d-4c0b-aaab-30ade81b31ba
194	pbkdf2_sha256$260000$dtvPEbFkH9FReErEdiTo15$FYiYZ8m2Fj1JnVu3CENF45zqXBtwzhiUKqgMI09+g1M=	\N	f	91db8aaf-7b87-4272-b94a-1192941fd4b0	Марат		f	t	2021-12-13	krisas75@mail.ru	91db8aaf-7b87-4272-b94a-1192941fd4b0
195	pbkdf2_sha256$260000$OxWyct2aCRj30eyA7uCYbL$Z8Sooyye1TVZHfFIe00Q7CBqj8sLq3hX3U7WW4H77iY=	\N	f	73e72e4a-3ff5-4b00-b7cd-34fff27ee93d	Дмитрий		f	t	2021-12-13	foxid@mail.ru	73e72e4a-3ff5-4b00-b7cd-34fff27ee93d
196	pbkdf2_sha256$260000$HNSqFU9sNxfvEQF5ZCsRra$pCSWenLt7CLwoWhSB+7lls8iS4ecHY9VdBKgzqJrX1k=	\N	f	52bb7859-6953-44bb-a285-724c9547ea81	Алексей		f	t	2021-12-13	almisi@yandex.ru	52bb7859-6953-44bb-a285-724c9547ea81
197	pbkdf2_sha256$260000$WRV8K9PPRVxlyI4uOFNugW$MBdypPBffxfNV/GUltVxEd9LbeKMTGAIOtyS3Ef7bQM=	\N	f	48253a8d-c9d6-42eb-87d9-2f7f9f4ed438	Алексей	Алексеев	f	t	2021-12-13	sk4ylee@gmail.com	48253a8d-c9d6-42eb-87d9-2f7f9f4ed438
198	pbkdf2_sha256$260000$amkhJXnyWD6Fe7SiIzW2ZV$0mSd/I3+jYAHfcTOavPe95JoLHSpz6pJVkZBQEYWmH0=	\N	f	2bdbcb6c-01ee-4624-8ca5-ba057f01bb4e	Александр		f	t	2021-12-13	probalbesina@gmail.com	2bdbcb6c-01ee-4624-8ca5-ba057f01bb4e
203	pbkdf2_sha256$260000$iR2cz5nUzBRQTJmbep7KLy$qLHGxQq4uwVPoZ/BvzXVVBJTBGSFaof3dFg2yb5B8nA=	\N	f	6302d55d-c89d-4a44-9af7-16fe4db6fc54	Рафаэль		f	t	2021-12-13	rafaelvaliev@bk.ru	6302d55d-c89d-4a44-9af7-16fe4db6fc54
204	pbkdf2_sha256$260000$c10iGvuAiEWUzdAg2Jvbjl$D8CqffOYxBNT7QnW9poa1diBXwbkBp05yHiS+OudGkA=	\N	f	a9aa8e03-1c0f-4198-b2bc-657c253f541e	Сергей		f	t	2021-12-13	lsa9817455152@gmail.com	a9aa8e03-1c0f-4198-b2bc-657c253f541e
205	pbkdf2_sha256$260000$H0MVYftiSDCosinSFNI5SI$7bdePPfmmpDmzh0HgnNpG6vvv6Zk93hgvZEMtYefoLA=	\N	f	9337edb6-7a4c-48b4-8cc7-3b13bf4cac89	Владимир		f	t	2021-12-13	iterq1@gmail.com	9337edb6-7a4c-48b4-8cc7-3b13bf4cac89
206	pbkdf2_sha256$260000$opDt4eod9al3qFBI2SrUMi$ClkpJFeRoOlJIe/Z1TzYQJ05z3SV+kTI3qfOnY19vpg=	\N	f	1a03f31e-aef6-4357-9f1f-19100978e0d9	Трошин Андрей		f	t	2021-12-13	andrey.troshin@inbox.ru	1a03f31e-aef6-4357-9f1f-19100978e0d9
207	pbkdf2_sha256$260000$hkd25AMsPOFvWkZM7svSVw$nidDFDgkzGzl5b9/WhOgT98IKoXugrEEfUlg4f6CZSc=	\N	f	118fd283-d824-47a2-afab-812c7e9354c5	Елена		f	t	2021-12-13	ele-kuzm@yandex.ru	118fd283-d824-47a2-afab-812c7e9354c5
210	pbkdf2_sha256$260000$FX4UuEKlY5zwc6a0dmTqnX$zQUaaOt/8jycXOhoinP63YKI1nXgLD+Hk70CKdwadbY=	\N	f	f83e6858-2be1-41fb-862a-b056f610112f	Павел		f	t	2021-12-13	p_leb01@mail.ru	f83e6858-2be1-41fb-862a-b056f610112f
211	pbkdf2_sha256$260000$lPGyqQCYL54giDVkmn2B9x$j65KtJhY2BQ2yXP+M23wVw9gYMoFX0rUi0/nAEFEFzY=	\N	f	08eb7cda-1e2c-4882-944c-6185c9b7e4de	Владимир		f	t	2021-12-13	malikov.vladimir@yahoo.com	08eb7cda-1e2c-4882-944c-6185c9b7e4de
212	pbkdf2_sha256$260000$D1Zbm85yhHUaVUG6jFknxN$xYLcEaohx2gpNspbDnm74N84aSLWlIhABhecRTdOq3A=	\N	f	df4c0f67-60e1-4522-8d3d-ffb1b347a097	Антон		f	t	2021-12-13	kyll3r@yandex.ru	df4c0f67-60e1-4522-8d3d-ffb1b347a097
213	pbkdf2_sha256$260000$6EWU5lnCvEBLAQZxxOnRXD$ktQUqw/c8n6ndERaffC3YGiGhoCk84qPkdN44T41JfU=	\N	f	71b4d0c6-94b1-4ab0-951b-361a4e734f5f	Максим		f	t	2021-12-13	vojna-mx@yandex.ru	71b4d0c6-94b1-4ab0-951b-361a4e734f5f
214	pbkdf2_sha256$260000$Zl9osibdQpFHY5RMnaKKtG$BQnqw5V3j/I6qdIfZvtvsjLb5CrL9sZzTczfiFlWFus=	\N	f	cb98d72e-f4bf-4e48-8f34-2c5cf250ed92	Роман		f	t	2021-12-13	roman.tsyban@mail.ru	cb98d72e-f4bf-4e48-8f34-2c5cf250ed92
209	pbkdf2_sha256$260000$SG108OVs2jG6mn0C4SgCUH$dojFurNtrrtjD2DhY1TxEnjOG+5tt4g4chBMiYTpb8A=	\N	f	ca5a09e6-ce4b-4e6e-80fd-8fa677d5ff25	Александр		f	t	2021-12-13	tert01215@gmail.com	ca5a09e6-ce4b-4e6e-80fd-8fa677d5ff25
208	pbkdf2_sha256$260000$QLBb5VyfDEpufrwpm5xSix$waLWaa8tYM3SL/SO8NRqJQ/vZ9BE4S41hnY1PiXJ25A=	\N	f	41e88a46-1695-4f08-aae1-9e093705d4db	Наталья В	V	f	t	2021-12-13	val7@mail.ru	41e88a46-1695-4f08-aae1-9e093705d4db
1563	pbkdf2_sha256$260000$AYAzilhL1EHa8b1Ba8F9D9$+oTmnHBItlXOgjE+BgQPxoqcQorqDPg9eKdOJ/S3gbY=	\N	f	069777d4-6250-49b4-868a-99b6a911b9e3	Чингиз		f	t	2021-12-17	chinghiz2004@mail.ru	069777d4-6250-49b4-868a-99b6a911b9e3
247	pbkdf2_sha256$260000$IkUZJFH4nJVLaNjqJGNJ8T$TvEjyVVMbebYpWOzdMXYGyCbEDs8dLR7ZV8dDffAI5A=	\N	f	b45f7d13-5ddc-4185-bf11-a3084d4be44a	Елена		f	t	2021-12-13	poklad.e98@gmail.com	b45f7d13-5ddc-4185-bf11-a3084d4be44a
215	pbkdf2_sha256$260000$UEOmdo0jXt9XHhuKD3Hgbm$uI/jKRHeseDGpgqH6Di893nadDErZee96QKzB5VHKlc=	\N	f	6417da21-de90-4131-b1b1-3c2047ffe58e	Алевтина		f	t	2021-12-13	jai76@yandex.ru	6417da21-de90-4131-b1b1-3c2047ffe58e
216	pbkdf2_sha256$260000$5RSOCR1b8hh14nfTLgHVoc$+WRytXN7VDFEOpcNzOdW8PQqLHwCnryczy6KdKOSV08=	\N	f	c7d7e1e3-c1f7-4bf3-9d81-11223f755831	Оксана		f	t	2021-12-13	nargile77@yandex.ru	c7d7e1e3-c1f7-4bf3-9d81-11223f755831
217	pbkdf2_sha256$260000$XD5QRMwGIYs30QTuM733Oj$dpcyqkcocYFF1MPp0rxi/bwZet2nfnu28VKlp+/ejLc=	\N	f	3a2ea6fc-5b94-45ca-85e9-bbe55338903a	Денис		f	t	2021-12-13	work.den1skofar@gmail.ru	3a2ea6fc-5b94-45ca-85e9-bbe55338903a
219	pbkdf2_sha256$260000$ctKk2hhT8dGPha1ABHJh12$g6xn1zLc8wGNQmQ8o7r8j7GOHucoC5l6nW4X/8G9XwM=	\N	f	66903ba2-254c-4fec-b120-2ca0c4351ccd	Владимир		f	t	2021-12-13	772vladimir@mail.ru	66903ba2-254c-4fec-b120-2ca0c4351ccd
221	pbkdf2_sha256$260000$O0TT8c7kDiiGkGDM43KT0a$RB/5u0oczWOCJDvVtLbz1H7JEHWkG1c86SxPIXWyPas=	\N	f	deee3900-c9da-46a9-be85-4b0060219429	Анна		f	t	2021-12-13	amyagkova@gmail.com	deee3900-c9da-46a9-be85-4b0060219429
222	pbkdf2_sha256$260000$ksMofOMiFFvyLMFngbVw6a$YS2Oe1ES8Gs4dgAdE7bXM6/Z8X3M8/SGi6a5wuZnaRU=	\N	f	8eb95af6-f0bd-41c1-ac2c-388d336edee7	Александр		f	t	2021-12-13	alex.2006-80@xn--ndex-43d7i.ru	8eb95af6-f0bd-41c1-ac2c-388d336edee7
223	pbkdf2_sha256$260000$8ysFDPARxtjx3PQAwwgsqK$5iZrsaR8HN10vZIgO0IUoDntIA21WipSTMvu/k7Iv64=	\N	f	147e4654-9f45-4999-b753-e910865a9951	Михаил		f	t	2021-12-13	karelinmi@bk.ru	147e4654-9f45-4999-b753-e910865a9951
224	pbkdf2_sha256$260000$fmEaIZd5LkKPw7LCxL4xxv$NeQwKN6m/EidmmIPPNcpXlc3enc4HtbkTjN3Nfrxx9A=	\N	f	6415bb6f-4844-4079-b00b-3d35a64fb0b2	Денис		f	t	2021-12-13	xfangx@bk.ru	6415bb6f-4844-4079-b00b-3d35a64fb0b2
225	pbkdf2_sha256$260000$Cbs3gmF9eMg6AxEl1RvqS7$+ncA3R9AS1ZgWcBuiFjoBr3H59zSbuzO9Vkbf/5XR+4=	\N	f	d87a1126-c453-4380-8d19-57c615fcd27b	Вадим	Есин	f	t	2021-12-13	vadesin@yandex.ru	d87a1126-c453-4380-8d19-57c615fcd27b
226	pbkdf2_sha256$260000$tKiPr8cBhyd1R9OxFwEmad$DuB4DQOoYSIcddWRj9Zf4oIpsnLYPXCe36Y9QWz38Wg=	\N	f	593df7b9-86f7-4b41-ae06-4c4746e82174	Игорь		f	t	2021-12-13	cheligor@ya.ru	593df7b9-86f7-4b41-ae06-4c4746e82174
231	pbkdf2_sha256$260000$errErZK8Od7MgcwTRJgyx5$YahmRz+UW0w6MeDwefPVMnxU/jIa0YObTqrrwoGLnX0=	\N	f	058f641e-779e-437a-b0c9-cbdd4ce90d5e	Рамиль		f	t	2021-12-13	zalyalov.ramil@mail.ru	058f641e-779e-437a-b0c9-cbdd4ce90d5e
232	pbkdf2_sha256$260000$ihQx05fM2ZtN7De9P8uR6F$igG+xj9OkRVMZ3l3hIRUsOAnGZdnFvlK9Xv3XxX9xuM=	\N	f	d2d3745a-37ab-4433-aad5-fb74ea09b464	Сергей		f	t	2021-12-13	sharonov116@gmail.com	d2d3745a-37ab-4433-aad5-fb74ea09b464
233	pbkdf2_sha256$260000$Scux8ThKCJOHQB0USQjaxq$oAUbR9yU/SeYCfSQs8pf+vZInHeZpZwpaWJc7PgKxu0=	\N	f	e53ed094-f846-4b12-91c3-3e84377fa359	Ирина		f	t	2021-12-13	lyadova.irina2012@yandex.ru	e53ed094-f846-4b12-91c3-3e84377fa359
235	pbkdf2_sha256$260000$pu1WF22djPl1Y9rXd5fiBg$Qiq4StK6iXwdcPopQaaG0cPWizHoe0fEclkpoPi0Vs8=	\N	f	1fb3c7e6-85fd-4be2-bd46-f89645d17f08	Вячеслав		f	t	2021-12-13	ram174.89@gmail.com	1fb3c7e6-85fd-4be2-bd46-f89645d17f08
236	pbkdf2_sha256$260000$gcCs7AzYBi7lTCtjicwNvD$rbTfRWkp9IPctkGNuQfANSGwxTcKy9VLItyAXGrrrFo=	\N	f	955114b0-5412-4a33-b1e7-89d6f5bc075d	Сергей		f	t	2021-12-13	gamer6093@mail.ru	955114b0-5412-4a33-b1e7-89d6f5bc075d
237	pbkdf2_sha256$260000$yNQpOakdcgfitcqAw5SnGI$JDxNTN+jlqeVNo4FNwj2b8CA/HfZMdFZEwgz1HiCU/s=	\N	f	81fb9d1f-191c-4709-9583-c84b569f05be	Илья		f	t	2021-12-13	air_hamster@bk.ru	81fb9d1f-191c-4709-9583-c84b569f05be
239	pbkdf2_sha256$260000$BFjYZr5a20Udkrpoct69wS$ggTMeHz3N2qQw/vUbad7h/y1KhC7wOmWwRhGZ57/RyQ=	\N	f	8be379e7-1d1d-4f25-9fc8-8a7a8e6abc35	Александр		f	t	2021-12-13	lelkin.an@yandex.ru	8be379e7-1d1d-4f25-9fc8-8a7a8e6abc35
240	pbkdf2_sha256$260000$BzAd8B2ruU7JHkfK8C378B$6KwIy6vjCBwEoFhC3FwZVulZvYCphYJy6kKyvAqS/f4=	\N	f	243cace6-8980-4cbf-9ee8-3a755b2a89c2	Георгий		f	t	2021-12-13	georgder@mail.ru	243cace6-8980-4cbf-9ee8-3a755b2a89c2
241	pbkdf2_sha256$260000$Auv9mafBv1BxCpDJchpbMg$hYWKkmXoIqC90HvhZUqFey/C9TQ+RoyhD+IP6HXHh2w=	\N	f	54718cad-b94c-4acd-a990-09f8a57cc349	Лидия		f	t	2021-12-13	lbubleynik@rambler.ru	54718cad-b94c-4acd-a990-09f8a57cc349
242	pbkdf2_sha256$260000$KM2vosoGirdk9WA77J0VpA$3atiNcqrRVWwu9v7gEBg6hn6kHAp5riAusPsp3xUy4U=	\N	f	d9670e85-387d-45b0-b64b-1f4b6e34d071	Евгений		f	t	2021-12-13	evgeniy.riv@mail.ru	d9670e85-387d-45b0-b64b-1f4b6e34d071
243	pbkdf2_sha256$260000$izKfn9MQi1rjG42AmNZIkT$6OmEO7bF127X/tt0OjuoseklmAO3mlWJ3EMRfc8kb4M=	\N	f	d9e3cc40-af9e-4ba0-8208-a6586a8e0f3f	Николай		f	t	2021-12-13	nikolay_1440@mail.ru	d9e3cc40-af9e-4ba0-8208-a6586a8e0f3f
244	pbkdf2_sha256$260000$10sVtmMOwWLzSIHSbCG0tY$q5CeGHs8HmF6SMoQG82Fa62DV6VMc/iz6QHM/jWgmBg=	\N	f	ce955401-adc4-41ee-a8e5-aa71ba1040fe	Илья		f	t	2021-12-13	ilya.burdin.99@mail.ru	ce955401-adc4-41ee-a8e5-aa71ba1040fe
246	pbkdf2_sha256$260000$ORXmoQQF1utX3KmdtQekQa$sUQrDBR1z869/Os+P7v7WCqipf0HzFA49owM56YnMMA=	\N	f	6316c299-d71c-456e-985e-5c2dee46c881	Павел		f	t	2021-12-13	safonov.p@gmail.com	6316c299-d71c-456e-985e-5c2dee46c881
248	pbkdf2_sha256$260000$AcUX2gbCAekzZNfT99yCdV$besb71xs8iJ5YSBQkI2zgXSOoI7T3Ro+cow2jDC51zw=	\N	f	bfa47dc3-e119-4229-b13c-f8026a543bda	Yana		f	t	2021-12-13	yashka7@mail.ru	bfa47dc3-e119-4229-b13c-f8026a543bda
1564	pbkdf2_sha256$260000$n2SQrjD3zs6W4QMmhgGm6Q$rPkDWUjGE6pgiQErsDwMsxK6kPdHaKqAC6ggQraVrRQ=	\N	f	31d09596-321f-4e73-9f7a-dcd7c3558c65	Надежда		f	t	2021-12-17	nadegda.icecream@yandex.ru	31d09596-321f-4e73-9f7a-dcd7c3558c65
1573	pbkdf2_sha256$260000$7P9iatD7qExhvJsgxWHEn1$zjxgVcKOvKLYIbp0n3coW/udPEZaRUg34VXFvl8Sizs=	\N	f	53f6da7b-1405-4fc1-a313-cea1d76767be	Михаил Евгеньевич Милостивенко		f	t	2021-12-17	mmilostivenko@gmail.com	53f6da7b-1405-4fc1-a313-cea1d76767be
234	pbkdf2_sha256$260000$USKJJjKDgaPpf7DCcyucH4$WQDwbK6bVXoi7357baXxvYJE4JB/m1tYNsARGeSbYbM=	\N	f	06b2575d-2bc5-4700-8228-1c826d75ece8	Владимир		f	t	2021-12-13	kvv7423@yandex.ru	06b2575d-2bc5-4700-8228-1c826d75ece8
238	pbkdf2_sha256$260000$EZNESgbNJJislo1QpOAHvm$OPjyjuvEjwaATFfvaP4hyhV+OI74O21rL3TKtwjFmUE=	\N	f	bbf6ec12-a8f9-4405-b5ae-c380c5051a7d	Александр		f	t	2021-12-13	tman6335@gmail.com	bbf6ec12-a8f9-4405-b5ae-c380c5051a7d
634	pbkdf2_sha256$260000$WjXdDE9p4XEQLFsxpRoOpY$ZmxBQ3KzXJ3cPh8WSzRXWm0Tkn6YM9H2LV2bjKaO25E=	\N	f	294aada6-0fa4-49ae-bfef-d670f11fc496	Lena		f	t	2021-12-14	propertiesforju@gmail.com	294aada6-0fa4-49ae-bfef-d670f11fc496
1756	pbkdf2_sha256$260000$sF3fgtKEKcQE2w0zU4LC7H$YB/ZiwRUdHhbT5ptnwsT1eWLljjq80sKL5VF0P7R34Q=	\N	f	b4ff21ec-5945-44e7-a4b1-fd0eb3d65ea4	Артём		f	t	2021-12-20	loichenko.a.v@mail.ru	b4ff21ec-5945-44e7-a4b1-fd0eb3d65ea4
758	pbkdf2_sha256$260000$sxw0xjP9NISbcNnY2wjLZP$cLu19IqNXeJfpxnRB6ldgCunVpjCoLUHy0ZjweDjOQg=	\N	f	3e0f5900-791b-46f8-902c-3207109d3400	Сергей	Сидоров	f	t	2021-12-14	sidorovrus124@mail.ru	3e0f5900-791b-46f8-902c-3207109d3400
249	pbkdf2_sha256$260000$IgcWrcNCBskM99QajVyPjl$4B8KoCMeG1GVZRstcgsf9M8hRTsufKiuvZuQApDZ6f8=	\N	f	4e9c3eef-6b12-470f-bd5e-4183f2e45cbd	Александр		f	t	2021-12-13	saintt1991hq@gmail.com	4e9c3eef-6b12-470f-bd5e-4183f2e45cbd
250	pbkdf2_sha256$260000$an1aGhTUktKyVogwX2OpNx$e7TIJ2yK/FROkL8G2IgZXCfckcpLJIPeXgdh58Vh9MI=	\N	f	14f11280-a417-4601-bbfe-74431056435f	Иван		f	t	2021-12-13	ivankuzemin@mail.ru	14f11280-a417-4601-bbfe-74431056435f
251	pbkdf2_sha256$260000$8tJp7Kw7Ymgc1a7vzgxXcL$4tBI6MpR0AtYvY2tNEmYZii6a/9eW5fK6XdATJQPFHQ=	\N	f	b20ea8c5-e633-472b-9918-68fb519636ed	Вадим		f	t	2021-12-13	vadim.teplyh@mail.ru	b20ea8c5-e633-472b-9918-68fb519636ed
252	pbkdf2_sha256$260000$Yf6Y18qSl2wtZiUpJ4r7M2$58ybBn2kct2mMRzi/Z0xkGltWMOoWg6y9TkAbqEZmbE=	\N	f	d7f3f278-997d-460d-8c89-4aca2d5190cf	Руслан		f	t	2021-12-13	galiev-investor2005@yandex.ru	d7f3f278-997d-460d-8c89-4aca2d5190cf
253	pbkdf2_sha256$260000$vR2FQsLyPsdyVebNoO8riV$Wwe+ABdkEe1yMf2io8cLbo2vyPu58tthZyfd9NZCwYk=	\N	f	0a6b4dd7-72bb-498e-a313-0926da2ef539	Александр		f	t	2021-12-13	vavakan@yandex.ru	0a6b4dd7-72bb-498e-a313-0926da2ef539
254	pbkdf2_sha256$260000$sEckqPjT3KzysSbSjX2Ae5$HZHMumOnMU91HvlZceHGjMZ3R0sqk8hw91219jehkwY=	\N	f	09bffe44-8a65-4c7a-98f4-25d6b8c7ce54	Алина		f	t	2021-12-13	alinka.nice89@mail.ru	09bffe44-8a65-4c7a-98f4-25d6b8c7ce54
255	pbkdf2_sha256$260000$RfBbr4yQsYYUjfhZcdfnNX$SROIPmAToEH0BEbO1h7XQu9ZT+aHINM56X7v5/iReng=	\N	f	26f8b044-113e-4353-b61c-692fa1885a01	shamanfree		f	t	2021-12-13	shamanfree@gmail.com	26f8b044-113e-4353-b61c-692fa1885a01
260	pbkdf2_sha256$260000$2eK5uRMqbbTQuLvP1YwHnE$UNllwIEG/ihBL2Piiha4Ykb28YQCFR+F6j5e1dUaXk4=	\N	f	f466d938-c60b-4e76-9277-4ec420200a35	Дмитрий		f	t	2021-12-13	ifactorplus@gmail.com	f466d938-c60b-4e76-9277-4ec420200a35
261	pbkdf2_sha256$260000$WjXKqD3NdiJXrGs9zxiBU7$uQ3g6avgnZV9F9wlZ5T218GWE2+GMTnZ6ZW2FKMWn60=	\N	f	510f1806-06fc-450a-bd7d-2c459605f31e	Виктор		f	t	2021-12-13	skif38@mail.ru	510f1806-06fc-450a-bd7d-2c459605f31e
262	pbkdf2_sha256$260000$xL9JStBNlWwjSv47jTjPlx$RrUwz0Yua9EUkaDUnMFDjciLr0wWAw7Uj/dI+Xha6sY=	\N	f	67cc0038-43f5-49be-8089-273d97042f31	Станислав		f	t	2021-12-13	s.k.homutov@surgut.etagi.com	67cc0038-43f5-49be-8089-273d97042f31
263	pbkdf2_sha256$260000$TuEzGHJ5pq6kAP6ONyfnXO$kWwsHxr3BdxGny9k7UKv0mOQ+ONwwGQ4zSSVbiVnFNI=	\N	f	401ec846-8760-4c5a-ba0c-b2e3b824cae6	Эльдар		f	t	2021-12-13	eldario29@ya.ru	401ec846-8760-4c5a-ba0c-b2e3b824cae6
264	pbkdf2_sha256$260000$enOm2Ibbd89kQwLEFHtrbk$N2WxOLu1QW4cl3mresNHvN5jh760qho7m8Jh8CUBvjU=	\N	f	d2ccff22-8418-43ff-9a96-040b50ab9aac	Владимир		f	t	2021-12-13	vlad1546154@yandex.ru	d2ccff22-8418-43ff-9a96-040b50ab9aac
1574	pbkdf2_sha256$260000$tPQBJz5cLrvYHCPiIgsHsy$4129ihygilSpyj6tWXJhNRBmixRzJJSNX3XM0/NrWwI=	\N	f	1102bb76-e4f0-4fd6-9053-5264b0357fc3	Иван	Кудрявцев	f	t	2021-12-17	tapokne@gmail.com	1102bb76-e4f0-4fd6-9053-5264b0357fc3
265	pbkdf2_sha256$260000$ssnnRoreTpUSH3PbPD45jx$n3/ZGFj/MAjviHZlsEVhagN7qokltN3GVXSZg3GDAuI=	\N	f	4455322e-88c6-4196-b7c3-5ab8bc7cf2e8	Александр		f	t	2021-12-13	agayants@bk.ru	4455322e-88c6-4196-b7c3-5ab8bc7cf2e8
266	pbkdf2_sha256$260000$eCLuGY48LXPOIOIb9AzbiB$z6c1ToXBtrEVZ3jWdxON9CUggYus1rpL4IZhrRvfqds=	\N	f	dcea39cc-8c29-4bfa-a1d4-fda98cb12b77	Кирилл		f	t	2021-12-13	kirill.don@yahoo.com	dcea39cc-8c29-4bfa-a1d4-fda98cb12b77
267	pbkdf2_sha256$260000$obMjLVUAYff4ym2cALeVVX$Z3TZ/2WkmzvyqsCMEDXd6YRcBNZDOkUiCtCZhsUWI2I=	\N	f	1e04f41f-b58f-4d6c-894c-6871e728c9f7	Александр		f	t	2021-12-13	prosvirin1993@bk.ru	1e04f41f-b58f-4d6c-894c-6871e728c9f7
269	pbkdf2_sha256$260000$Yc5C6xJ3L15F6B84x6nXC7$e9/ayrLWxg/qSWHLTQl6Ko7xYyf7pFAXQV1fOXxxOZc=	\N	f	4c4b11cd-1620-4002-b1a8-a141874e6558	Виталий		f	t	2021-12-13	great812@mail.ru	4c4b11cd-1620-4002-b1a8-a141874e6558
270	pbkdf2_sha256$260000$dfb0gwoAt7VFT7XYxUCqbt$DKfC2eYfnb8h1NWTijwmi5GM+l9zyBzVqgBPbqICmvk=	\N	f	1483234e-e100-4f12-82fa-e48a59e032f2	Sergeeva Larisa		f	t	2021-12-13	sergeeva@contact29.ru	1483234e-e100-4f12-82fa-e48a59e032f2
271	pbkdf2_sha256$260000$I8u4cWm6CZ28NMGAhAfaG9$na5Q68WDMjRlBWv3YAQVSOXCegaUDC/o3rc4A36oDhc=	\N	f	a4a82d63-5deb-40a9-92d7-35ee7a48c23c	Кирилл		f	t	2021-12-13	kuchev00@bk.ru	a4a82d63-5deb-40a9-92d7-35ee7a48c23c
272	pbkdf2_sha256$260000$XGtcw7mAGTwh9ylT9Wc42f$TMHboHBnxewLsgFxKMekXdBvPCb3zNT1LWF7fQFw6Xo=	\N	f	90ce2d52-8c09-4af7-93c0-53934f1c45f7	Анатолий Коленов		f	t	2021-12-13	kolenoffcorp@rambler.ru	90ce2d52-8c09-4af7-93c0-53934f1c45f7
273	pbkdf2_sha256$260000$plyh06PNPAgBrprrt9exc7$gkO/ViUUAb7wzdLJGJ17z0bhQfqc/CyIV0JBXOJaduE=	\N	f	6475e13b-a95f-44ae-9129-08fa58c4c347	Владимир		f	t	2021-12-13	vtretyak7@gmail.com	6475e13b-a95f-44ae-9129-08fa58c4c347
274	pbkdf2_sha256$260000$e8rVE32LtRIRIFnmyLwRZb$kVWzPQWHazKhxSiDaxhc2oAXe+1LXCR0KW4ZidrL68A=	\N	f	d5a8c675-3668-4919-83fa-1a6d2b25faa5	Андрей		f	t	2021-12-13	dark@darklab.ru	d5a8c675-3668-4919-83fa-1a6d2b25faa5
275	pbkdf2_sha256$260000$9KQVolfVKMbOnUUO4Ml6L5$EmvKxipV8LIjA++/RXyGpncy+628fiOqPYdwQuPEI30=	\N	f	d57634ba-2842-4266-ab15-d3b64eb9eea3	Владимир		f	t	2021-12-13	limperov@yandex.ru	d57634ba-2842-4266-ab15-d3b64eb9eea3
276	pbkdf2_sha256$260000$W5aRr3sk9ILul12ZRmOYyf$mIvjMZSsc/Ot6QD7n1XhlUt5bFWP9gMxrBSvuLM6xV8=	\N	f	0cab5f3d-b4e7-4432-a3c8-8ebabf2d226b	Руслан		f	t	2021-12-13	garaevr@mail.ru	0cab5f3d-b4e7-4432-a3c8-8ebabf2d226b
277	pbkdf2_sha256$260000$XmsH1dQkQKcvO2jBx84Axc$2idxHjUrjmo1/kdopCmuh1vT7eDHS3jipgp7eaiOaYo=	\N	f	6b707c6e-4050-4a36-9e5f-56c422f4b9c9	Анна		f	t	2021-12-13	venda-usoltseva@yandex.ru	6b707c6e-4050-4a36-9e5f-56c422f4b9c9
278	pbkdf2_sha256$260000$IQEVwXoBeO6cVn6CuTiPMu$lnSoDXs+p695H6WFox2ntWcoRGQ3NKbUDlOcBa6IwR4=	\N	f	f65ad28e-76a0-41a1-8523-232ba1da05d8	Александр		f	t	2021-12-13	sssr-zhiv@mail.ru	f65ad28e-76a0-41a1-8523-232ba1da05d8
279	pbkdf2_sha256$260000$xIOpcEggFpHvS2eGaAJToH$oYGTN6c+ooPhzBhvnj+/zrgj/8CWbAuo+BEbxVXSUS8=	\N	f	16dc1dde-2905-4411-b639-d0ab464c3b16	Тимофей		f	t	2021-12-13	tliomm@mail.ru	16dc1dde-2905-4411-b639-d0ab464c3b16
280	pbkdf2_sha256$260000$Q2HgOaKoTVSnj63VnjHKDV$BaJuARfh9KdI69VN3xH0ndgapLn43ErPbTnOhz8dy8Y=	\N	f	2d52e64b-2b0e-486b-82c5-952dc71f2e39	Егор		f	t	2021-12-13	esdeev@gmail.com	2d52e64b-2b0e-486b-82c5-952dc71f2e39
295	pbkdf2_sha256$260000$V60kHkZr045h5LBPxLjibK$UYyfdZYJeiFBCkQZSky4M83Eke0ohhVZ7WZNoPsskII=	\N	f	9686f193-5d20-4711-a4e5-584655f03e87	Анна		f	t	2021-12-13	fannyutka@gmail.com	9686f193-5d20-4711-a4e5-584655f03e87
281	pbkdf2_sha256$260000$3eLOsNLHZBfM4943DaXB1d$HWS3wBz9BV5UBnJFjqmxmonzmQng9ngy9npg75l3ock=	\N	f	41604728-d48b-412e-8929-280cb21f8d07	Ольга		f	t	2021-12-13	olich.89@mail.ru	41604728-d48b-412e-8929-280cb21f8d07
282	pbkdf2_sha256$260000$jGhMUlbtXJFUjnO9i1A0lZ$7Tnn0sAnjsr3h6r6iyH7pHBpJYSS/nZQRxuwCQjXx/4=	\N	f	e91f150c-f495-40f3-96bc-894c0f31ce79	Евгений		f	t	2021-12-13	evgeniy.reznik@dasglobal.ru	e91f150c-f495-40f3-96bc-894c0f31ce79
287	pbkdf2_sha256$260000$BrMj2YEyBqeEwLTvUMBNxe$NHUNB8e11Sn+YCyX9QvPr713gPFVbsP8cBXLKMApUG0=	\N	f	4411b740-fad9-44ac-8b3a-519156882c14	Алена		f	t	2021-12-13	ruelena71@gmail.com	4411b740-fad9-44ac-8b3a-519156882c14
288	pbkdf2_sha256$260000$hgSqVdg6P6OZ4B8eAaS9Rg$ZJ31qqC1R6ctkVg/bNVfYOxuv71gNPaOlLHajAy4knU=	\N	f	0275fa57-aba6-4401-bd6c-f69781d1e103	Дмитрий		f	t	2021-12-13	vasilievdy.90@gmail.com	0275fa57-aba6-4401-bd6c-f69781d1e103
290	pbkdf2_sha256$260000$MTNf554rJ0jff5LDh6AUHU$EVA8drUv/JiVgLiozassK56SBuuVlO3OQwfQshSuEgQ=	\N	f	45a28e40-1408-4cb5-9965-ea0da8147fc7	Олег		f	t	2021-12-13	lego601@rambler.ru	45a28e40-1408-4cb5-9965-ea0da8147fc7
291	pbkdf2_sha256$260000$bw0m46rVL9Zifsj4R94mZn$0CLprnhgeRBpp2hrCTw1041Gue3c+wJ2WIwPwF1aLSI=	\N	f	8289ba93-1b58-43be-bb23-6e913ed05a12	Евгений		f	t	2021-12-13	jevgenijs.golubovs@gmail.com	8289ba93-1b58-43be-bb23-6e913ed05a12
292	pbkdf2_sha256$260000$6XViSIKooJy8xCVkrkHgZB$5kvWL/GfjY2i1iCl8DxwENo4sEbYgWks+lb/+sNrm/g=	\N	f	857c3e9a-d672-4825-95f8-ea7ea6641c28	Иван		f	t	2021-12-13	bazyaev.ia@mail.ru	857c3e9a-d672-4825-95f8-ea7ea6641c28
293	pbkdf2_sha256$260000$C9WOFQbpgvPVShYBCRH5eS$WjiVcwuIBH3TKgiaHaeO9PzZ6fBikavN18mJDtPacbM=	\N	f	fb080ef2-225f-40a1-98b5-c24c23b33f2a	Александр		f	t	2021-12-13	aleksandr-oskarev@yandex.ru	fb080ef2-225f-40a1-98b5-c24c23b33f2a
294	pbkdf2_sha256$260000$0dC32eX3C2tDzqSzs0CWCq$k+ouTkO/bL2TpXocy4Dpg841KVmXc2xbgCaQbqI4nXI=	\N	f	742c2084-43dc-49fe-88ba-fcccf4025ec8	Владимир		f	t	2021-12-13	vtalynev013@gmail.com	742c2084-43dc-49fe-88ba-fcccf4025ec8
296	pbkdf2_sha256$260000$TMOPjoEfSNx1Gi6xpPOUpO$GKm+IjWqVVElUO/MoRWtk0n9F5aIvf/dSxmOW8cUyKI=	\N	f	63649c05-9eac-4f4e-b493-df5126af1164	Анатолий		f	t	2021-12-13	soya83@mail.ru	63649c05-9eac-4f4e-b493-df5126af1164
297	pbkdf2_sha256$260000$YR6lLFgeXIfrq6K8LOnyzZ$J5HTGz1XX+eWNRGrm0YTNz5yA50MgkU3feMovlYCJOM=	\N	f	c079a9ef-f030-4f62-88b7-7305bcb6ef30	Никита		f	t	2021-12-13	kostevoy@ya.ru	c079a9ef-f030-4f62-88b7-7305bcb6ef30
298	pbkdf2_sha256$260000$RJEiguYP74NhpC4WDN0Eer$9PG1pS8HErnK7csQGn4l2rFSVbLgkY/tu+xIg/3ZsuQ=	\N	f	0cb75d7f-6c7a-4b8d-914b-abb2af6bfad8	Виталий		f	t	2021-12-13	vitaliy.bar2201@gmail.com	0cb75d7f-6c7a-4b8d-914b-abb2af6bfad8
299	pbkdf2_sha256$260000$zXET7Z1HZsGM5M7XD05LJl$oEIq9kD3ST8F2QCcMGiQBvMSjHUlvEwg/u+pknU3GVk=	\N	f	8651e491-9355-451c-beec-082e4d57d3b4	Александр		f	t	2021-12-13	fcsm_perovec1@mail.ru	8651e491-9355-451c-beec-082e4d57d3b4
300	pbkdf2_sha256$260000$Ml8ZBOPnVN6XPu9C8ET6wG$9XXny6MxZDN0WgEJqEd+kU0YgicVxkScAaWoUR9F8s0=	\N	f	a5f6b64e-a308-41ef-a593-94742c4b5e8d	Андрей		f	t	2021-12-13	78andrej@rambler.ru	a5f6b64e-a308-41ef-a593-94742c4b5e8d
301	pbkdf2_sha256$260000$Th5hweXjyT8sdRmt4TKgcZ$udFtMQCTmZJoOXOc3yg611TRIz+79L0zpvMCDO5A7EI=	\N	f	7d20f2cd-8ed8-4a24-aa2f-f5d200d87e63	Павел		f	t	2021-12-13	pbakashin@yandex.ru	7d20f2cd-8ed8-4a24-aa2f-f5d200d87e63
302	pbkdf2_sha256$260000$dE1xBG9Hz1BY9XA6zbBMfu$9fVHZLo6oGlW7l4ZKY5FOWwlwlI2uXK6XhBgyuq/WDI=	\N	f	d1f73a22-dd18-4dfa-bade-3429710b745f	Иван		f	t	2021-12-13	aheeles@gmail.com	d1f73a22-dd18-4dfa-bade-3429710b745f
303	pbkdf2_sha256$260000$NTWVQkSWgFJb6liEwg0Kdk$ZKh/qkZfxj+uKWxla5gMs+u6s5am4EDD7+gXs5ZQDX0=	\N	f	5e1af69b-df05-4755-af13-4c664e578b09	Руслан		f	t	2021-12-13	haliullin.74@mail.ru	5e1af69b-df05-4755-af13-4c664e578b09
304	pbkdf2_sha256$260000$OsTr4Svkyp4qAgWeHqsjLA$mZp/bY3U9HpEl2MJ13CLKu3dhh2nxp7MvSB3eYEN2+A=	\N	f	2da31aea-6569-4551-990d-40eb9c6e7a91	Максим		f	t	2021-12-13	autocar12@sapo.pt	2da31aea-6569-4551-990d-40eb9c6e7a91
305	pbkdf2_sha256$260000$ByjukclVuNTlzjitLvZXkb$gI3Ll4ae/ZEbDln9hz+6C/6xn5CQV0ohD98wNDY/JXg=	\N	f	268ed053-87e8-42ce-a6ee-6e86be74e46e	Борис		f	t	2021-12-13	varganovb@icloud.com	268ed053-87e8-42ce-a6ee-6e86be74e46e
306	pbkdf2_sha256$260000$Qdak8z9A4WhTERt65CMYhf$h3QiaLwEWuvlkzqAgEAfG8mI+agMXD1eLiKI61S1gAc=	\N	f	16615c0d-a45a-4ab8-9405-71297b651550	Влад		f	t	2021-12-13	disp99@mail.ru	16615c0d-a45a-4ab8-9405-71297b651550
307	pbkdf2_sha256$260000$7QPY9SLnDZVTlqOf0l5Re9$dEAxGZ1/j62p7k6YJsrEJ3j6DYeRIIAWtmPmoI5PulI=	\N	f	bf4ea35f-897e-459c-9890-512ef5f47423	Георгий		f	t	2021-12-13	1974446@gmail.com	bf4ea35f-897e-459c-9890-512ef5f47423
308	pbkdf2_sha256$260000$Q6nKpxh0VnS6YX2GRN2D1F$lpcJ4SVjpO9c+YiqJN/boKylNs7dCTFKy+kMtyTxF1U=	\N	f	68de1b72-d900-4a8f-8ed2-f50d7fc4a867	Дмитрий		f	t	2021-12-13	egdmitrij@yandex.ru	68de1b72-d900-4a8f-8ed2-f50d7fc4a867
309	pbkdf2_sha256$260000$MqKzKed3s9zlfVpXemRT3n$zwY1cWL2geg/eZ5LoyfM+800vOkJLtIbIizF3uyfHhs=	\N	f	0db20bff-06fb-4861-a631-dd95f9d83da7	Вячеслав		f	t	2021-12-13	tdrubin18@bk.ru	0db20bff-06fb-4861-a631-dd95f9d83da7
310	pbkdf2_sha256$260000$gwOAwRMYgNJ3qUxJCEjgpy$cct+8x7sIsQQAzNRGytGWo0gm5TLqraETqlWdg1Y3rU=	\N	f	d17cc922-81ff-422c-bb25-c3e022d32538	Дарья		f	t	2021-12-13	daria.kravetz@gmail.com	d17cc922-81ff-422c-bb25-c3e022d32538
316	pbkdf2_sha256$260000$N6ihUUxA36herX3JSnLkJn$rJVZOH5EiD+MGgIXZndZkrmWAQ8jwHpl64cjg+PJSzM=	\N	f	e3a2b8c3-30d9-43a3-9e87-e4f62696275e	Андрей		f	t	2021-12-13	drewbogor@gmail.com	e3a2b8c3-30d9-43a3-9e87-e4f62696275e
317	pbkdf2_sha256$260000$YZ6mRTOqmLtTPydkVCYBSt$JxY31KQvTn3ZfKEtXPc3i50H0+UcI3rrSxCIxYBineQ=	\N	f	d75978ff-7c73-42d0-a46e-ba6d5234eb85	Алексей Кулик		f	t	2021-12-13	alexeykulik@list.ru	d75978ff-7c73-42d0-a46e-ba6d5234eb85
318	pbkdf2_sha256$260000$J29sWXZNSD2R3UDsUXQXZt$uq5T8qdz9+k1KrDlztTxK7TFl5adAjoStMwxRJVlfTM=	\N	f	51c39066-8150-4a4f-a0ee-810862c4d1ff	Ivan		f	t	2021-12-13	mirnov199@gmail.com	51c39066-8150-4a4f-a0ee-810862c4d1ff
289	pbkdf2_sha256$260000$dLImRMYc4fz3BWSMRvfNcO$kJ5krVK+SeAF6TKJL40J2IkuYImTWQFQKm6Sit0HQjg=	\N	f	4ff6c994-9ace-4986-b2b5-497f18060df2	Елена		f	t	2021-12-13	e.kuragina2011@yandex.ru	4ff6c994-9ace-4986-b2b5-497f18060df2
311	pbkdf2_sha256$260000$SA3RN04T0w8VOsLw4Ci4tY$g+d35tyIDNAvZ8Hrq+fqGfXT/XITT30qpKGdIzjJy/8=	\N	f	76b050e8-f235-4a66-9a4b-8474e56f1e9e	Батырхан		f	t	2021-12-13	batyr1306@mail.ru	76b050e8-f235-4a66-9a4b-8474e56f1e9e
1566	pbkdf2_sha256$260000$ByjchWkTklFbdoNqViyNel$sDxiwFbqwvKIxc30SuXsWNKXhBB66sIS8TJgGUnftQ4=	\N	f	57b9eb10-22e3-4c2c-afc9-66132b551060	Тимур		f	t	2021-12-17	testsell@mail.ru	57b9eb10-22e3-4c2c-afc9-66132b551060
319	pbkdf2_sha256$260000$hbxECTDryuP4m12GybIaZ7$PjC9GEZPJE3Bueq+vJ7lNu1c87wHXHwyaICwrtNTaBA=	\N	f	a167ee72-4a37-4716-99aa-7a1c6f7b910d	Александр		f	t	2021-12-13	alexgruzdev87@gmail.com	a167ee72-4a37-4716-99aa-7a1c6f7b910d
320	pbkdf2_sha256$260000$73CkOOpt8IptCAMHa3yov3$QtseglSSWPZvKmhKUO/pR5GzmSF3knF8MrZGSLFqdDI=	\N	f	02fec24c-4b10-4507-8661-449364d3719d	Анастасия Соломахина		f	t	2021-12-13	anastasya2194@mail.ru	02fec24c-4b10-4507-8661-449364d3719d
321	pbkdf2_sha256$260000$an3W5B22brSuYBlo4YOoLO$IIayaU46v/FjRZM9VC5Ou2x17yM3HnSZkgNBv4mRn6I=	\N	f	e08da94e-0538-402e-88dd-3aff8a772273	Сергей		f	t	2021-12-13	lskazan@gmail.com	e08da94e-0538-402e-88dd-3aff8a772273
322	pbkdf2_sha256$260000$luCnnLWEI5R95QZYMKvpNg$axw+KENp+WwSGu69cILMBI3LLvqnYwbgtMAYF+XieUM=	\N	f	2b7b4331-0b27-4a49-9b5f-548984a0ff2c	Евгений		f	t	2021-12-13	krasnodar031085@mail.ru	2b7b4331-0b27-4a49-9b5f-548984a0ff2c
323	pbkdf2_sha256$260000$zCj5U6J05PEiurVOqljKkg$9D4MWkCjzssE6E9+FS/H0odLl8JXmpEGX62pGgNBURE=	\N	f	563dbe99-68e0-4973-a2a8-76e0548d7a7c	Vladimir Malkovets		f	t	2021-12-13	vladimir.malkovets@gmail.com	563dbe99-68e0-4973-a2a8-76e0548d7a7c
324	pbkdf2_sha256$260000$UBUjq7kTlhDiyVlUesWqjb$lOtlLMsBImf0ljaXuR/52szJXidrhCv/Xax+d6MMQlk=	\N	f	1d741612-86c5-4dd0-bb53-7eed3580febe	Игорь		f	t	2021-12-13	girax83@mail.ru	1d741612-86c5-4dd0-bb53-7eed3580febe
325	pbkdf2_sha256$260000$2F2Zc2Jt8KqTq5Pa4VIqpa$gzduRgnneH8lntKPqKj+dppcPnHi3mxSk6U874NtY5o=	\N	f	60e84ef4-14c9-4141-bca2-fc1809b4fe5a	Андрей		f	t	2021-12-13	karganskij@gmail.com	60e84ef4-14c9-4141-bca2-fc1809b4fe5a
326	pbkdf2_sha256$260000$DaWQNmoWaMJuWXgejl0BJd$amUxbYuVqP/Oyl5+aYbpsN5BvOSl1D9dOCD26dWIKIU=	\N	f	d693883e-07e8-41ad-85d6-5f0bce5baaf3	Александр		f	t	2021-12-13	tomashevsky@gmail.com	d693883e-07e8-41ad-85d6-5f0bce5baaf3
327	pbkdf2_sha256$260000$Qf8hXvfjnHVYm7rBsR2EUK$Ow/F3pAhYHyWxPd2F48NgZrp9jWpug6Lke8Kly/S7Pc=	\N	f	e7dcf317-6d3b-4125-b1a1-b57dbeda0c44	Андрей		f	t	2021-12-13	zelofflab@yandex.ru	e7dcf317-6d3b-4125-b1a1-b57dbeda0c44
328	pbkdf2_sha256$260000$LgDe12sLOXEr12AI2BWQQn$08Z83vd8wFmnpkMQHXQW1BEbAXTBEM33oQ6juPJqEZk=	\N	f	bc8d5af6-c23a-4612-b1ef-c50ddd6c86a9	ЕЛЕНА БУДНИКОВА		f	t	2021-12-13	as345907@mail.ru	bc8d5af6-c23a-4612-b1ef-c50ddd6c86a9
329	pbkdf2_sha256$260000$zqfaTGmV3NksoxpOxrnqsl$gGeyFmfhU1SplhqpKS+eQhJK3WH9XLxmJQq5XaqncIQ=	\N	f	39dba17d-7ca1-4d32-88f6-8a0aa025ec0f	Анзор		f	t	2021-12-13	anzor454@gmail.com	39dba17d-7ca1-4d32-88f6-8a0aa025ec0f
330	pbkdf2_sha256$260000$MFNfgMOhIZdMHHM1UOAOXk$ebTryJDq0OrpftJE/BgxjBKpjQI8PtwV2oRkdLx47Y0=	\N	f	78f71898-6a02-4df5-a122-31ae265eb830	Алексей		f	t	2021-12-13	alex_c05@mail.ru	78f71898-6a02-4df5-a122-31ae265eb830
331	pbkdf2_sha256$260000$qlk3GBW8pBuyVSxdgPPyFQ$IxVexQ5hBSZRtNEi33JIMnn1wLNnqMEfqp6DEAIc+lo=	\N	f	529cbfa8-5a3d-4fc8-8375-70d79a2c40f5	Никита		f	t	2021-12-13	poni030801@gmail.com	529cbfa8-5a3d-4fc8-8375-70d79a2c40f5
332	pbkdf2_sha256$260000$m2wDmGPupBJruy4L0RE2oR$OeEMMxyqlwx3sj1DfmA2j6xPQUyJUHcVcXF/+SRwDYI=	\N	f	23235bc3-ef00-4778-9b70-d5be80cc14d2	Борис		f	t	2021-12-13	fedoseev@micmedia.ru	23235bc3-ef00-4778-9b70-d5be80cc14d2
333	pbkdf2_sha256$260000$zazofCDop5UzrQ1ZSYUyqt$eUWe5nHl26UlEsXZ6Z+PTgSW1J7BvzOULi/H5Je+mUc=	\N	f	8c6fc82c-8ec2-4e7e-b23b-e3aefc10f366	Bakhodir		f	t	2021-12-13	bakrot@gmail.com	8c6fc82c-8ec2-4e7e-b23b-e3aefc10f366
334	pbkdf2_sha256$260000$fBbUJef65r6fBhHj7kWo9N$qruUSEHjSzx6skg9hRcJAYRiLzKFsf7TTDvetsC70GU=	\N	f	ff697584-19e9-4136-a6dd-36c028b405f8	Oleksiy		f	t	2021-12-13	561335@gmail.com	ff697584-19e9-4136-a6dd-36c028b405f8
335	pbkdf2_sha256$260000$qBh95hITYUjZBesKPwufVK$yvnO+ljk0YofkTGhn7LM7VLuYl/PdpfAbTxBuurWcGs=	\N	f	b393a875-0bbd-4c2f-b060-059be640ef27	Павел		f	t	2021-12-13	romabest2@gmail.com	b393a875-0bbd-4c2f-b060-059be640ef27
336	pbkdf2_sha256$260000$ryg0ZKGKq5T9ClUQn8A7HL$FiErCq23E1O+wTjfzvGUe+K2jnrnfLO6Qw1x2HNRU4I=	\N	f	ab9fa13d-e588-4b8a-bcb0-c469143a15df	Александр		f	t	2021-12-13	alexsandr.sorokin23@mail.ru	ab9fa13d-e588-4b8a-bcb0-c469143a15df
337	pbkdf2_sha256$260000$4lVg1pH2fhCj8JSZDN9B1R$KK5wE4Wc2OX/W7mBXyX285sKpSjjs+bsVGipvD00WxA=	\N	f	a8c9bce2-4ace-46b9-abe8-6ebe0ac34830	Андрей		f	t	2021-12-13	andrey.y.voronin@gmail.com	a8c9bce2-4ace-46b9-abe8-6ebe0ac34830
343	pbkdf2_sha256$260000$ymSEUqEBLikdEHdpw7eHPi$CQFFYllB7HxxRmItX4/YaU8za2mP4ZZgkOqdJp5/G5A=	\N	f	55faeb15-8f26-425d-9b14-2cd538b90495	Нурия		f	t	2021-12-13	ilovenu@mail.ru	55faeb15-8f26-425d-9b14-2cd538b90495
344	pbkdf2_sha256$260000$FivMoGr791Eg2K8cvkit9x$W3CaLnAY6ymlpSPNs5rKwAfdDETpw35uH8xDQgdbfaU=	\N	f	ff96db12-3194-41b8-8b09-6fa8273e0120	Александр		f	t	2021-12-13	aless6780@mail.ru	ff96db12-3194-41b8-8b09-6fa8273e0120
346	pbkdf2_sha256$260000$kKrw4lkS1SU65VPREhBKCA$7ZOLCiPQDWkiFlV8W6TxJBJgP1wAdTezP5WQszlS7PM=	\N	f	1eff60e4-f20c-44a0-9b46-4eff3cd55707	Александр		f	t	2021-12-13	8420764@mail.ru	1eff60e4-f20c-44a0-9b46-4eff3cd55707
347	pbkdf2_sha256$260000$cVAL97kU0ruoiw3XKgZRRN$MmoS3nMj6ci0quiLfT7uis2k/zT5E7iGLqpVoIemCxE=	\N	f	15b72fdc-c20f-40a1-a29f-6be919556813	Николай		f	t	2021-12-13	kolyanjf@mail.ru	15b72fdc-c20f-40a1-a29f-6be919556813
348	pbkdf2_sha256$260000$jbkFVUVBWSalAGJ6nRLbns$3pk59msW2codm3fCziHmr+Wc0DOH8cP4Uv4ii/Uq4bc=	\N	f	c101fc65-3f2f-45c9-bd69-2758ed9b81a9	Сергей Лобанов		f	t	2021-12-13	100819892008@rambler.ru	c101fc65-3f2f-45c9-bd69-2758ed9b81a9
350	pbkdf2_sha256$260000$zWWPVg9reQc9q2cfcF5Wie$HR0CIwal2CUQ5s24+Ib8gpVw5ZvskTLJzeNM8VfC2Zk=	\N	f	fe3b14e8-28d1-4c4a-9f40-13faadf4dffd	Александр Казанцев		f	t	2021-12-13	kaa.kras@yandex.ru	fe3b14e8-28d1-4c4a-9f40-13faadf4dffd
351	pbkdf2_sha256$260000$2DfzXckdTHnMQ0dowy6W7t$mwGxJ8kpPSB9k2GBTFfDqVQcmQf5cTnvuVWioqzIM98=	\N	f	a8e24e92-fddb-4422-b2fe-04d7a14b999f	Максим		f	t	2021-12-13	kolmm3@gmail.com	a8e24e92-fddb-4422-b2fe-04d7a14b999f
352	pbkdf2_sha256$260000$blt6Vbqp9FHOrsj5CVirdU$v1OCM9Ri4UOfVnFx3VMysG3jvypYUuT19L/nhq6yeh4=	\N	f	5c4437fa-a8e0-401e-99e1-0e1d8e0b825d	Евгений		f	t	2021-12-13	47224am@gmail.com	5c4437fa-a8e0-401e-99e1-0e1d8e0b825d
353	pbkdf2_sha256$260000$kK6fGfSi6bhRX7O6NAYMWZ$zZasnpLd4x+mpbQq5NG1V6rZUxhmW6Sx4lGipYaojyk=	\N	f	50e3dd5b-c93a-4c61-85db-bd860c4e5559	Маннур		f	t	2021-12-13	runnam84@mail.ru	50e3dd5b-c93a-4c61-85db-bd860c4e5559
354	pbkdf2_sha256$260000$DNkTa24WRyMjeKq2hSk0A2$m63OC1kQxsRkNw6bqf2SmPje5NU/gAxJJwuNfSulom8=	\N	f	b9a71985-cb95-42d9-adab-c49bf1f8fa44	Tolia		f	t	2021-12-13	toliahal@yandex.ru	b9a71985-cb95-42d9-adab-c49bf1f8fa44
1575	pbkdf2_sha256$260000$KCssy7IziMVE5oBNa6LglE$fjz23GL721mEk9Igrc/8FocHd4XFmg1t3kJpuQC6qrI=	\N	f	0b6b6ac8-80cf-45ca-a5de-50b36a32607d	Никита		f	t	2021-12-17	nikikorn@gmail.com	0b6b6ac8-80cf-45ca-a5de-50b36a32607d
1704	pbkdf2_sha256$260000$qq2jE6tQTYbtPRBgoexfmU$2dwbfFxouO/akTacoHi3D1hpU+Bj4LvbuuGXKbZ2M2w=	\N	f	c2f9d1ac-9ba9-4a8d-9a96-23ca212c7ec9	Константин		f	t	2021-12-20	frame-r@yandex.ru	c2f9d1ac-9ba9-4a8d-9a96-23ca212c7ec9
355	pbkdf2_sha256$260000$EOPI1WNadrecmjJSIE4osg$H3+xPbmyfBwUBLW0fjf7zBXmNZL2cOCfJRLc6ZHbJUM=	\N	f	d1031884-fa31-4f9f-8aa8-2cfcba5cd7dc	Os		f	t	2021-12-13	alistanovosman@yandex.ru	d1031884-fa31-4f9f-8aa8-2cfcba5cd7dc
356	pbkdf2_sha256$260000$hkpfOsJLyqVNJaNwvFsQ5R$22wXwnWBTwU1is/dQzme0R5QoDPI/QIFeSr9xgLSxeM=	\N	f	8806932f-2555-46e7-8d2a-aa13842cf3e6	Родион		f	t	2021-12-13	rodik.1999.99@gmail.com	8806932f-2555-46e7-8d2a-aa13842cf3e6
357	pbkdf2_sha256$260000$T8mlorVquCH89ab0OFgYIu$QupJ5P+wBzf92KoTEA2mURbQDhzlC/Biozg+7d2UMkw=	\N	f	0105c288-862d-48c3-8269-ee101d7586cd	Дарья		f	t	2021-12-13	daria88888@mail.ru	0105c288-862d-48c3-8269-ee101d7586cd
358	pbkdf2_sha256$260000$kFvlMftNyPbXQCvt2FAXtE$79kkzfh97+j4C5JmaEBLmUZS6Bm4vDNEQFTgU0Ja/fU=	\N	f	b09fce49-69e4-4cd4-bc61-fca94a502072	Артём		f	t	2021-12-13	2660088@gmail.com	b09fce49-69e4-4cd4-bc61-fca94a502072
359	pbkdf2_sha256$260000$lAJCWn5a3ajlwCb6rX6laC$NT7gSaESYyIynkS+5ZE5ECh0/k6N4FexK77jvYNIw/I=	\N	f	e6b17515-41e7-4805-b5a7-db6f898ad184	Александр		f	t	2021-12-13	vishnyakov6846@gmail.com	e6b17515-41e7-4805-b5a7-db6f898ad184
360	pbkdf2_sha256$260000$EdECL59PTcZ0eFQGTSiyzo$nyI1cr4WykGo/XqzZ+zxm9nnTj7MhSJ/Z1zFgE7qhWU=	\N	f	ce14daa1-104f-49b2-85de-a897f3256b3e	Александр		f	t	2021-12-13	gaiduk_alex@mail.ru	ce14daa1-104f-49b2-85de-a897f3256b3e
364	pbkdf2_sha256$260000$AkYLQ6zVPo3aZg4Wii7lYo$Xtn0cu0jKjmynci/R52l23PZy/l4zMEquwQR4LWqBGI=	\N	f	097d3e27-ed02-4f24-ac13-d6493a951d97	Кирилл		f	t	2021-12-13	bogdan.kir@gmail.com	097d3e27-ed02-4f24-ac13-d6493a951d97
365	pbkdf2_sha256$260000$AZiqMv2BxBFufkcJLMzp9j$XfAedclXEhC91dKd5CKDveUFpzDdxAU2uMorp9KsZww=	\N	f	f335017e-53d6-46e5-a4d7-761b2c8972fa	Фарит		f	t	2021-12-13	farit-th@mail.ru	f335017e-53d6-46e5-a4d7-761b2c8972fa
366	pbkdf2_sha256$260000$wZUPZRkYUafEyONrXtoyu2$tT897LG1g2GhU3UADwK8scDUDubPHYDGiOrRcJrf4lI=	\N	f	8c0df91b-edd2-434a-94fe-29135338fa80	Андрей	Перов	f	t	2021-12-13	a.perov91@mail.ru	8c0df91b-edd2-434a-94fe-29135338fa80
367	pbkdf2_sha256$260000$F9M680srzYr1m6xrrbvBGf$bq6butOIbbWbBmN+0HIcDgI+uAiFnCUeI9Tczm6XRPo=	\N	f	c743e2ec-fddd-4a79-bc5b-0cb4759dc080	Денис		f	t	2021-12-13	sokruz.sokolov@yandex.ru	c743e2ec-fddd-4a79-bc5b-0cb4759dc080
369	pbkdf2_sha256$260000$sd4PR0mRSQwiZAQezQJGI3$40I38u5MkBoG5byvecg9rj/4OLexYNoNUyheFDRW+VA=	\N	f	f4216777-0633-4b7c-b471-75363c31ac41	Геннадий		f	t	2021-12-13	wereschagin3.14@gmail.com	f4216777-0633-4b7c-b471-75363c31ac41
370	pbkdf2_sha256$260000$WaCPzkVD4KwDJEhdUR4PSv$oAd3h/M85ndFczdGFn2flPeY0z0O/9sm4B4sAQwQkdc=	\N	f	24105752-9ac4-4d77-aaec-176fce4b50a9	Ольга Кузьмина		f	t	2021-12-13	ekonomistuk@gmail.com	24105752-9ac4-4d77-aaec-176fce4b50a9
371	pbkdf2_sha256$260000$0TJS0GPyeQUjZOxquwxVHs$oDNEHbE5mo5gJ7F2KfoPNUyf1khhBEDVSilU467EahI=	\N	f	fd1db3b9-c743-4b6d-862c-16dcd38034f0	Виктор		f	t	2021-12-13	alexandrov09@gmail.com	fd1db3b9-c743-4b6d-862c-16dcd38034f0
372	pbkdf2_sha256$260000$bcsXWEZYDWtaNsqxRdylSX$oqz45tv8p+3/NQ9Mms98Uj2rcGxrdwdriUA94CDRdEs=	\N	f	16f86fec-682a-4d97-ba47-d846bd13b884	Федор		f	t	2021-12-13	supra000@mail.ru	16f86fec-682a-4d97-ba47-d846bd13b884
373	pbkdf2_sha256$260000$fFM0UXf9KOJonwLEg2hacE$179M74IbSltMJ8XvTHhdizoi/7uZyp8S1lLDBpslsQU=	\N	f	27f9fb76-3741-4afe-b941-8790654c157c	Артем		f	t	2021-12-13	iwan.teem@yandex.ru	27f9fb76-3741-4afe-b941-8790654c157c
374	pbkdf2_sha256$260000$GPN4HYcKORkJwgIVShoWpw$p3fdtI8H5zrH36uL+zmsaBaMp8TrWy3s1hQTREwHGJ8=	\N	f	4827eae5-9c18-430f-9530-3e3982f779e6	Дмитрий		f	t	2021-12-13	arxipov1978@bk.ru	4827eae5-9c18-430f-9530-3e3982f779e6
375	pbkdf2_sha256$260000$YdAAJ2dWFtG2VxWl9j8U0x$uxb3NoSyYzwnjy8PBACDI1KcXclinxwOKTsCwfmOFVE=	\N	f	7d96c898-d16d-4b21-a658-363d3d79be02	Никита		f	t	2021-12-13	shtirlicru@mail.ru	7d96c898-d16d-4b21-a658-363d3d79be02
376	pbkdf2_sha256$260000$W55TURPSDGu9vnjUCohSK5$BeHT18dd9Hf3s7FxkJlRx76qGTXqBbQG+AhuVE9slwo=	\N	f	d63b672d-b64d-4d7f-bbfe-bcc047e708b5	Сергей		f	t	2021-12-13	finageev@mail.ru	d63b672d-b64d-4d7f-bbfe-bcc047e708b5
377	pbkdf2_sha256$260000$sKJi39TwiXAalf4LHvWrqv$dqHAcNKBpAct5cPy5gXf6yrxuL9PivGGTRW9q+xI1Hc=	\N	f	2134e1d6-fb38-45bd-b14e-88cc2f3acee1	Слава		f	t	2021-12-13	sultanoffslav@gmail.com	2134e1d6-fb38-45bd-b14e-88cc2f3acee1
378	pbkdf2_sha256$260000$K3i3uKS8ov9MrHxMEBApXz$KGkOY91nYqlDCns/JenEb+iFL8X+sooLksCN1P4aMlw=	\N	f	865ddc10-b6f3-4dba-a004-cc6c8d85ebc8	Konstantin Hunkel		f	t	2021-12-13	hunkelk@gmail.com	865ddc10-b6f3-4dba-a004-cc6c8d85ebc8
379	pbkdf2_sha256$260000$ed6nka0LCWVhzbPc6y2TGU$TTQToK8CvNzENhbvOjoMUs5GxABOEdzaecVaVGxkerw=	\N	f	3b9c5b71-8eab-40c6-8879-c55b5bbb5700	Владислав		f	t	2021-12-13	vladvpan@gmail.com	3b9c5b71-8eab-40c6-8879-c55b5bbb5700
380	pbkdf2_sha256$260000$IYKC37JDcmGp7s4UWVtZkf$3qmesjneJLWcyC1NBd8jmiFZrEfiyMhvF+D5qn8RrM4=	\N	f	af519ab4-9aa9-48b5-8edb-ead716d1c88b	Александр		f	t	2021-12-13	bibarsovsasha@gmail.com	af519ab4-9aa9-48b5-8edb-ead716d1c88b
383	pbkdf2_sha256$260000$2tpuSMoVphVrUQwragGpSk$uZVWzPs7AwuGjzpgXUheLee5/IT/nEPDrdlZfKruGb8=	\N	f	c8935fa8-8160-4413-81b0-3034ddbade92	Жанна		f	t	2021-12-13	zhan-na1981@mail.ru	c8935fa8-8160-4413-81b0-3034ddbade92
384	pbkdf2_sha256$260000$Yt0o61H1I8moPNDgljEtqm$U2Sb94Gb/3jIMk0BcpoJjktbr7X9gZe/nzNm92wKtFk=	\N	f	e84c9852-6856-47c6-800f-8a515f3d3986	Александр		f	t	2021-12-13	aarybalchenko1988@gmail.com	e84c9852-6856-47c6-800f-8a515f3d3986
385	pbkdf2_sha256$260000$z88weah7DSBeNMR7EOtMDq$noPwd45C4LJ6h0zigySpUliLQu21vEX661IUkgbYMvs=	\N	f	c06bc2dc-66cf-4495-bd7c-5d59f9b461af	Валерия		f	t	2021-12-13	lera.chazova2012@yandex.ru	c06bc2dc-66cf-4495-bd7c-5d59f9b461af
386	pbkdf2_sha256$260000$kCgstpj6KnIcc5T84ZV8t9$rjo2bKcq8U3VrfWwJSayb2wFLKXzafwhap9oPGYk91o=	\N	f	d0873cc6-eff7-4405-876e-07265b72565d	Виктор Таскаев		f	t	2021-12-13	viktor-roadkill@mail.ru	d0873cc6-eff7-4405-876e-07265b72565d
382	pbkdf2_sha256$260000$Iw3cwuReEVh1NfvbJwwluP$uDPaq8JYExLwUZgXOQHGTdoHaRi+onGXAghaVizucUk=	\N	f	946077ac-a165-4fe7-84b1-bf094409e9b7	Сергей		f	t	2021-12-13	berlov-1@mail.ru	946077ac-a165-4fe7-84b1-bf094409e9b7
368	pbkdf2_sha256$260000$IRoZjuvSimPCDqwrgAkABD$eQIn2nQUqynidV1kizdwnkcKTQCR0Z7OfS6gxZFTVDU=	\N	f	b15ffe64-7baf-428b-888c-5a591425771d	Алексей		f	t	2021-12-13	spudisi@mail.ru	b15ffe64-7baf-428b-888c-5a591425771d
1496	pbkdf2_sha256$260000$ChBMImmM96iPZsFttUt85x$LlcOalGFX+HOeU5YL6vXOv2m+f2bWYjfJGkiAgIWDog=	\N	f	13105953-34b8-47d3-b03a-5eaf4a20b4d2	Евгений		f	t	2021-12-17	werty83@mail.ru	13105953-34b8-47d3-b03a-5eaf4a20b4d2
381	pbkdf2_sha256$260000$FN8d9L3uQiEMQnwR0t8dbn$4HKyy4JI+t7fxCjootKek8B2lAy+LgRjFPq3OdfyCtc=	\N	f	c616d72a-77c2-47d2-9dce-7bc66138ab11	Алекс		f	t	2021-12-13	nehitr@mail.ru	c616d72a-77c2-47d2-9dce-7bc66138ab11
387	pbkdf2_sha256$260000$8y9DfV9Me1VW5apLhJBBkK$WYBjDMcF/IGIgzHdVbgjgr5m8YqDL9a6rXXztzYJKIM=	\N	f	0393eaed-29a1-4d62-9706-f630a6f65a85	Александр		f	t	2021-12-13	counterfeit1@mail.ru	0393eaed-29a1-4d62-9706-f630a6f65a85
388	pbkdf2_sha256$260000$4Nn8uCwnbI9WzrgwL4oHnB$9gTSn4AKmVjxxChOAMHBIKg1MqCQj5Ej7LsknYXoqHk=	\N	f	9ca948ba-f956-4758-9a20-5c6fbc8de8bb	Тимур		f	t	2021-12-13	for_subscribe_tt@mail.ru	9ca948ba-f956-4758-9a20-5c6fbc8de8bb
391	pbkdf2_sha256$260000$MJIqqLxfiCL6gOZufzlC5x$X6LVkjYBuefD5Lqa9DcoLLbKpw4hDOU2n5s9pj9Zgpw=	\N	f	f32ea44b-f6fd-4eef-a0af-f35f6247cc32	Иван		f	t	2021-12-13	kelt1004@mail.ru	f32ea44b-f6fd-4eef-a0af-f35f6247cc32
392	pbkdf2_sha256$260000$uR1ZMtL35gEugt4QnaTVw4$Z5CtnEcZPhDjuQgW/SkwbdOeque+9Ug5pKX1qOkDnXA=	\N	f	17fab36e-fdc7-407e-9bdc-332fa097683f	Наталья		f	t	2021-12-13	natali.tardi@yandex.ru	17fab36e-fdc7-407e-9bdc-332fa097683f
393	pbkdf2_sha256$260000$gTxszq2eMZu9kFTBllZqZM$B3JvV9k+7DQHHA44aiSnQ2MqiCf+MlyOg5HGpL9tZ4c=	\N	f	4cc2bcbc-d3e5-42ec-929c-93c437edfef4	Денис		f	t	2021-12-13	skydoc@yandex.ru	4cc2bcbc-d3e5-42ec-929c-93c437edfef4
394	pbkdf2_sha256$260000$irfrUTMQs3L85jxRdAseT1$fEaGtftt80aAPaH8uDRXgXhwY5z1WNsyF4dToPJ44S8=	\N	f	390430d4-b0f2-401b-9caf-bfdd6f6fcb3b	Марина		f	t	2021-12-13	9827069018@bk.ru	390430d4-b0f2-401b-9caf-bfdd6f6fcb3b
395	pbkdf2_sha256$260000$THrYIqoYyC7zCOct4JYpy1$pcxpLfegLSIGWJckIiW1mVmKko2hVQ6Jw/iCh5QhdrU=	\N	f	4c008dd5-5f25-4eeb-b442-2e74697ab3a2	Владимир		f	t	2021-12-13	vmelnikov@euronics.ru	4c008dd5-5f25-4eeb-b442-2e74697ab3a2
396	pbkdf2_sha256$260000$4nZvsQfXG0eCwrU1lIa3DT$s0pu7qFA9XXJAMsHk6ymsRBtVXNfO60dTOGdbldI6vE=	\N	f	d076df66-334d-4975-af3a-79623ef940df	Андрей		f	t	2021-12-13	a19760912@mail.ru	d076df66-334d-4975-af3a-79623ef940df
397	pbkdf2_sha256$260000$vG3NAEwmrbwLfRsnk0PXW2$UZePPRik0iJpSCueNd86DqEp94xz4sLakIU2nivGjj4=	\N	f	e665b789-8822-4aa1-98ab-696b59f0d721	Андрей		f	t	2021-12-13	e-a.m@mail.ru	e665b789-8822-4aa1-98ab-696b59f0d721
398	pbkdf2_sha256$260000$Svo5clQz53Mp9gO4f2Q1SA$XAZws49t1zy8wPHh5KGOTwwob/4m3KXThgMfUeKP/xI=	\N	f	13c1f586-deb3-4385-a1ed-74f8d71d0841	Ксения		f	t	2021-12-13	mystudyworld777@gmail.com	13c1f586-deb3-4385-a1ed-74f8d71d0841
399	pbkdf2_sha256$260000$3XVMt1QLP3Kbo1uLiDmKKs$PKmQNTWvlRWiZ+zCWavtE4gZw8i61Xwlz28Tjbd4su8=	\N	f	ae835e80-cd87-4ef6-a527-7a2a1f54698b	Аделя		f	t	2021-12-13	garipovaam2013@ya.ru	ae835e80-cd87-4ef6-a527-7a2a1f54698b
400	pbkdf2_sha256$260000$qr2J6Qyp48L5wSv9rqu6HP$3IJHOy0Ps6bBRaaMGc5bgTT7SkP+PcSJ+TjUOe/G7lo=	\N	f	a0fe32be-ab5d-45af-a51d-f4c355c66b42	Рустэм		f	t	2021-12-13	rsn-ufa@mail.ru	a0fe32be-ab5d-45af-a51d-f4c355c66b42
401	pbkdf2_sha256$260000$IKUhrVdNaxYolAVEpxgwjT$8E/pNdj2UpYEnSe6VLJqOIGn880UE70wAKYM5OSDMg0=	\N	f	09ec83dd-7a89-4dda-a997-b0f0af0a9d5c	Ravil Kabyldin		f	t	2021-12-13	rav222aika@gmail.com	09ec83dd-7a89-4dda-a997-b0f0af0a9d5c
403	pbkdf2_sha256$260000$bc2DimN4Lo62wCypAKk0QZ$EhhwCfu8Uk/ni11r90R26KxTbt6EtDpIwMywWdAQCjM=	\N	f	59fc1512-1f6a-4df4-be22-945d4b4ff408	Юрий		f	t	2021-12-13	yura.zu@mail.ru	59fc1512-1f6a-4df4-be22-945d4b4ff408
404	pbkdf2_sha256$260000$O6rV9D3Cbl4cqtOnTJI18t$xbFhEYjvLL9h81t5Xc0wSR7oDM4mdhoewV/MrzGt+9E=	\N	f	c4e83d8c-ce2d-465d-9b99-dbaccac64c66	Александр		f	t	2021-12-13	alexandr.sergeevich1995@mail.ru	c4e83d8c-ce2d-465d-9b99-dbaccac64c66
405	pbkdf2_sha256$260000$SBQrMU7KtpsBbOqhYJ1vom$Qi4vSwsW1x4r63JR4O0rucAX6+j0OpM78Q4e8hEzSws=	\N	f	d82a2819-b6e7-487b-a734-f4bbdd979be2	Роман		f	t	2021-12-13	romih11@yandex.ru	d82a2819-b6e7-487b-a734-f4bbdd979be2
406	pbkdf2_sha256$260000$lIpusVe9UDY8gVEsvHXM89$p1MfgfuaaRrgvLVpatsmfgP1T3113+hcUfc0S5jD6M4=	\N	f	cd0efad4-b652-47c1-95ad-1f94172fefb8	Олег		f	t	2021-12-13	2883882@mail.ru	cd0efad4-b652-47c1-95ad-1f94172fefb8
407	pbkdf2_sha256$260000$oaKdwFSeu9y8683vMjgl5D$c7O7YEnX2xrX8nb4+Hv0KYz0B4tJqC99p1jbgkb8NiI=	\N	f	42e39077-fe17-4053-b908-2b8b60199fa5	Антон		f	t	2021-12-13	stgolem@yandex.ru	42e39077-fe17-4053-b908-2b8b60199fa5
408	pbkdf2_sha256$260000$8AbQFljxIkAtUt5JVOkopG$Q2IaL19oUvq//jmOoCIb8z/eMQD0EIxj0F/Y3u4zRos=	\N	f	f7ca3239-0820-4323-a688-70f181118e45	Николай		f	t	2021-12-13	bolten@bk.ru	f7ca3239-0820-4323-a688-70f181118e45
409	pbkdf2_sha256$260000$mePNrlJ2c4sp4luUuI4waz$IsEz6w3RJMpm6oDgbI4a4U+i+WfXLizvyqL+3IhaV0E=	\N	f	fedbb2de-0edd-4024-b3dc-b323d9d22c54	Михаил		f	t	2021-12-13	nuclearyooppi@bk.ru	fedbb2de-0edd-4024-b3dc-b323d9d22c54
410	pbkdf2_sha256$260000$7A5tPOlg1WozaArf9qRmFh$Lw0WaQmHvSDozAYSz99HrK8Yvkh92vEdgYv2v/nAH4A=	\N	f	bdc5c45e-3346-4db5-ab1d-c29c62585697	Сергей		f	t	2021-12-13	msi@mobikomservice.ru	bdc5c45e-3346-4db5-ab1d-c29c62585697
411	pbkdf2_sha256$260000$GlDJc0VuJQQyCxfnaQUGRv$ZHrkhICDL79AVPN8LXzcmjkfv9zyJhCu0ZV7Ad1AEXk=	\N	f	a181f4e7-277d-4240-8e85-b979997fa436	Сергей		f	t	2021-12-13	i0106275@yandex.ru	a181f4e7-277d-4240-8e85-b979997fa436
412	pbkdf2_sha256$260000$n2mze0Gftymc4mxrtDWGXG$sw8QSHPSc7F/lK7Bv78++EJF1EXCT2doiv3tx176zp4=	\N	f	c6661c52-ee78-49ac-a752-c59ffbdc9ef1	Константин	Зайцев	f	t	2021-12-13	9976275@mail.ru	c6661c52-ee78-49ac-a752-c59ffbdc9ef1
413	pbkdf2_sha256$260000$dGOSY4KwQmFUPH8qgXc5fq$s5Ohib5gAROfRE/fYxhsmlFhLdLj88pTvj7p+8elwT8=	\N	f	2663d1b3-c8f9-4cb5-932f-fa86d97df002	Ольга		f	t	2021-12-13	olga_krigan@mail.ru	2663d1b3-c8f9-4cb5-932f-fa86d97df002
414	pbkdf2_sha256$260000$gI71zWjzsV0erbKxWJ4sCi$ZDBb44/VeRgjzihrHtuhDoJd6TqWPwCndtb/JcFs7yU=	\N	f	c301fe38-47e8-462d-a133-789084b68ffc	Даниил		f	t	2021-12-13	krasnopeev.89@mail.ru	c301fe38-47e8-462d-a133-789084b68ffc
415	pbkdf2_sha256$260000$Hh41ZQ397Tu0qX6pJbFEIC$zgcIdhRcobOZV6fNFIaQVxItD8bQXyZmE5dLg0740+c=	\N	f	f61b4b22-df63-4282-ba78-66bc7f5898ff	Александр		f	t	2021-12-13	zlatinvest88@mail.ru	f61b4b22-df63-4282-ba78-66bc7f5898ff
416	pbkdf2_sha256$260000$extdOdKMDnYmlJ4EJ7tylB$p9QtXh7B33v+x3eNaq3yOSwDfnCBpyLauC/9D5ruxa4=	\N	f	de0ba80b-c3cb-468c-af6c-2d8a42151660	Феликс		f	t	2021-12-13	felix.bortnick@gmail.com	de0ba80b-c3cb-468c-af6c-2d8a42151660
417	pbkdf2_sha256$260000$MS5EFUSuERMNNLdGJQIAEJ$SvsVdopynC/+ZwYwuvtg6cmRTE5p266PH9DBFuG2EZE=	\N	f	b6df6908-4653-4126-b322-9267c3b248d1	Алексей		f	t	2021-12-13	alesio.y@gmail.com	b6df6908-4653-4126-b322-9267c3b248d1
1568	pbkdf2_sha256$260000$vNMWyhKMEcXpnmjgNiJKZp$4FFjDc7S/KSMbjXXblDiFfECubKx4fxyQXnz5IPcKSo=	\N	f	23bd4b26-d6c3-42e3-8ee0-b52032f2ce59			f	t	2021-12-17	stasislavik@gmail.com	23bd4b26-d6c3-42e3-8ee0-b52032f2ce59
402	pbkdf2_sha256$260000$4KUunfcU4wX6XfflnKZflK$LIh39ZBzfBSXOKwnqgiaiB5syU/axZqRXn9ZDpOVS9w=	\N	f	3fb3b123-44ee-448d-a84d-52eaec9bef02	Иван		f	t	2021-12-13	zhuchyok@icloud.com	3fb3b123-44ee-448d-a84d-52eaec9bef02
472	pbkdf2_sha256$260000$3r5RlCnX2DGfQb0nFmTBlD$Ccz+NBardtgnZmN3QQstIPBxnStU3g7eqBQivgiqzzM=	\N	f	66d56572-4513-4c8a-bf1f-969f305f97f0	Ильнур	Мухаметшин	f	t	2021-12-13	vrk.ilnur@icloud.com	66d56572-4513-4c8a-bf1f-969f305f97f0
245	pbkdf2_sha256$260000$p78SEWAtt9ou49xDKBBGTs$BN5b//iYhBjVebjYhhniF+V8xAXA8xc9jhwFgt+PT6k=	\N	f	10210bf3-b2be-48c3-94ea-dc919feec2d9	Александр	Цыкунов	f	t	2021-12-13	alex.tzikunov@gmail.com	10210bf3-b2be-48c3-94ea-dc919feec2d9
418	pbkdf2_sha256$260000$d5nPcNoAeayxJXp8oCnshs$ztgEn5LqKFIrhyDr7l1wQ/hazLJTOZmJ6SY8xBjy6EA=	\N	f	17cace91-e77c-44f9-bb09-0b53c0265a42	Игорь	Севостьянов	f	t	2021-12-13	goshapem@mail.ru	17cace91-e77c-44f9-bb09-0b53c0265a42
422	pbkdf2_sha256$260000$0oly1eP24KB5C1dP4S7SpV$WJxMIu1qskw9gjHD9w2KtUPAoDRty8uujgjFZtmgs/0=	\N	f	36ba0d4d-b45b-489f-b119-ca8468fd80f7	Сергей		f	t	2021-12-13	cherkosm@mail.ru	36ba0d4d-b45b-489f-b119-ca8468fd80f7
423	pbkdf2_sha256$260000$bqmxb42l09TFc2HdNVgIjM$rNEe4xAPsMsK2jOznmDAGl41BkKch8B+OKvFgLpM9t0=	\N	f	3c32abe4-806c-4795-975b-d981c1d9ea15	Сергей		f	t	2021-12-13	isb1971@mail.ru	3c32abe4-806c-4795-975b-d981c1d9ea15
424	pbkdf2_sha256$260000$mlXXZpaGX5gZMCt7brjmK6$va55xTgG3kFlq+LxLdeFd6q/kAUMMpRA0YYbmMJ+uWc=	\N	f	5a6eaaf6-5fe4-4f1d-85d4-7f8026afa7ce	Viaceslav Nedeliaj		f	t	2021-12-13	glory47@gmail.com	5a6eaaf6-5fe4-4f1d-85d4-7f8026afa7ce
425	pbkdf2_sha256$260000$294faZKbIjcGetHV1wSOkR$FXDY5km3IQnOF22xi5bbLuCKaBK7o3aetf0FN8dGLO4=	\N	f	8ffed16c-e8a4-4184-b6d4-4ec89a5e006a	Денис		f	t	2021-12-13	denislyalchenko@gmail.com	8ffed16c-e8a4-4184-b6d4-4ec89a5e006a
426	pbkdf2_sha256$260000$d3SeEC6a79pM1Yfynqms62$afXISuSpN4iWirTkNt3n6U1qC4FCxyI9wQIE28OXJog=	\N	f	1e2148a5-d1be-4f5f-8e76-e0961a486717	Вадим	Селедчик	f	t	2021-12-13	aldam@list.ru	1e2148a5-d1be-4f5f-8e76-e0961a486717
427	pbkdf2_sha256$260000$eTImTIUGhmfdATOLjy1QKc$EGn9kMvkFDCy/AiwTaAWH7edry4+xYehitVHTlZME6Y=	\N	f	ed9ff9bb-96d0-47c8-85bc-8b6abb528cad	Алексей		f	t	2021-12-13	mosyagin64@mail.ru	ed9ff9bb-96d0-47c8-85bc-8b6abb528cad
428	pbkdf2_sha256$260000$0S4flm5Q30RfVNA9UNTfYw$2kp8YemTvnZJcETVirslhlrjtYfuhf8d6dFuudi245I=	\N	f	059dac3f-f202-442f-bdb3-2555a7de5058	Григорий		f	t	2021-12-13	play200798@mail.ru	059dac3f-f202-442f-bdb3-2555a7de5058
429	pbkdf2_sha256$260000$WavoWmrYkJ6ySDVuKpprQ1$JANPwd1zxhdpYWgmI2ZICbrN9O6VDgL3Wn09G3Uqb0Q=	\N	f	cb981639-aa93-43a4-9732-6c2a29be8082	Игорь		f	t	2021-12-13	igor_yav@mail.ru	cb981639-aa93-43a4-9732-6c2a29be8082
430	pbkdf2_sha256$260000$s1CsZFfFpk6WYkSz8FUjZJ$t+g+y2sylA8vL/nFVvkYXyVPVWrB/c9ZrC/O1N3qpBo=	\N	f	82bdb2cc-35d4-43b3-ac16-758a34400d36	Татьяна		f	t	2021-12-13	pt-v82@mail.ru	82bdb2cc-35d4-43b3-ac16-758a34400d36
431	pbkdf2_sha256$260000$rmtvg4j81Tx2YixGVeJe2D$kgOmwitaaga3Uem3mkT/Hk9x0lKjeOzG4gxh8nR5op0=	\N	f	11dec469-6032-4460-91d3-8a89b661b34f	Артур		f	t	2021-12-13	scaldo@mail.ru	11dec469-6032-4460-91d3-8a89b661b34f
432	pbkdf2_sha256$260000$PeZ4Etc3vNp7B4pWz5zTnX$eSrw9wBu6XW4ndtINCMEq1SVPIzpg+JKq5hu3Jb/v10=	\N	f	abb3c750-da67-4ac1-b11f-61a292acf6d5	Александр		f	t	2021-12-13	7443033@mail.ru	abb3c750-da67-4ac1-b11f-61a292acf6d5
433	pbkdf2_sha256$260000$kqcX1u558FwQ8gpsSrBwn3$UagXCTwUgaPs+MAmcY9d3bMYO1aX61XPKCKkBQMXxvc=	\N	f	019f8a58-9ea9-48d9-a2f2-bbe5cd9380e4	Павел		f	t	2021-12-13	pawel-dok93@yandex.ru	019f8a58-9ea9-48d9-a2f2-bbe5cd9380e4
434	pbkdf2_sha256$260000$zWZXC5Q1eROgQbMMoY0qKv$y+bV2yYBTC/FfgTOxO5Al6Rvc5Edl/R47CXKZzBC2tw=	\N	f	9cfe6e7f-5ea9-4eb0-877a-4948e5daa8e4	Алексей		f	t	2021-12-13	a.g.seleznev@yandex.ru	9cfe6e7f-5ea9-4eb0-877a-4948e5daa8e4
435	pbkdf2_sha256$260000$qN4Do0FtWEo0imENLICaQP$GTh5OQwHaOnak8ynyiiZuMXS/CT1KNN3acCVh/w9bq8=	\N	f	fd4b1b69-bf7d-4f5e-933e-c3a01ae58a2f	Алексей		f	t	2021-12-13	alek.tsvetkov2011@yandex.ru	fd4b1b69-bf7d-4f5e-933e-c3a01ae58a2f
436	pbkdf2_sha256$260000$5AGBybkbefqk5LRhDRPwzp$sOU6xwHUoHbN9HuLkOwiGJqe6T1AVZt6uObjRfOnkFQ=	\N	f	3d17b9d1-5994-479c-aa76-9c2ae5fae69c	Анна		f	t	2021-12-13	filaretbest@mail.ru	3d17b9d1-5994-479c-aa76-9c2ae5fae69c
437	pbkdf2_sha256$260000$hzjHNUw0tfucG5exYLzD6g$Z944XQzpjOpv0yWAbAAQcCGCx78YngRRfstDNwHTBwI=	\N	f	cd2c5988-64c9-44dd-bd3c-9ce5cfe628e0	Юрий		f	t	2021-12-13	yura.merkelov30@gmail.com	cd2c5988-64c9-44dd-bd3c-9ce5cfe628e0
438	pbkdf2_sha256$260000$uonrUj1B4ETqIe2Vcpo9ni$carbqr1PTjQw8/L/YmBInNqCOqKENHm5dGg4CA7bUvU=	\N	f	6bacf6dc-62bc-410f-8ec1-01026920d4b8	Наталия		f	t	2021-12-13	krisonka79@mail.ru	6bacf6dc-62bc-410f-8ec1-01026920d4b8
439	pbkdf2_sha256$260000$P9ToPBsjflJXsoDGl01Gp3$lst1LOA3wvXnKdE7yetFmsTqcpDJ4NcTE9y14gQug2Y=	\N	f	8355ceb4-fa33-464a-a026-ebd1fc175713	Alexander		f	t	2021-12-13	alexdenk.dd@gmail.com	8355ceb4-fa33-464a-a026-ebd1fc175713
440	pbkdf2_sha256$260000$9JfQom4GLJmNNjFRvci9Pt$r21QmV9022AvleFo57ZrVfRqMcqwBMngfHFHQzwkZL0=	\N	f	080022f5-fbdd-48fc-b435-19794b14dc3b	Артем Катунин		f	t	2021-12-13	artyomka@gmail.com	080022f5-fbdd-48fc-b435-19794b14dc3b
441	pbkdf2_sha256$260000$H2BPbPkmLRcoOqdj26IyfJ$ocD5SLgDwFdF2BtHTNIZNDSAgogtRRg9HTHMjsHIILM=	\N	f	57660bef-439a-4a8d-9185-ba8ae7af4972	Елена		f	t	2021-12-13	groma94@mail.ru	57660bef-439a-4a8d-9185-ba8ae7af4972
442	pbkdf2_sha256$260000$DrAMpGlSim2e6BgGlrckkw$qEhu3XHSPJPrA5rDA9FN+trWKSOk4TQT0MVl64E0FjE=	\N	f	794e88f0-81dc-4b7f-a333-16c57d668ba5	Никита		f	t	2021-12-13	n.shmaraev@gmail.com	794e88f0-81dc-4b7f-a333-16c57d668ba5
443	pbkdf2_sha256$260000$bixTXFxF7koNAt9ldxUatT$Oizs2o9PEpiDx4jsyJvttxCePJ1a4tvdNbw2CEaE0Wg=	\N	f	27e2265f-f914-409e-a3e1-508ca9ff5757	Юрий Крылов		f	t	2021-12-13	yuriykrylov@gmail.com	27e2265f-f914-409e-a3e1-508ca9ff5757
444	pbkdf2_sha256$260000$dgVfwu7y4nFvr4VkXxZakB$d70cNMDWFFpPLPpfNC4fAbvuWfy3DOLjBjzXe6wPKWc=	\N	f	040f617f-e99f-4626-a084-00877f9786d0	Андрей		f	t	2021-12-13	silent00storm@gmail.com	040f617f-e99f-4626-a084-00877f9786d0
445	pbkdf2_sha256$260000$GwsnzXDOEQEWUYP1M8lRax$nG4cHrnPhjI4b+XToiZ2o3plP6UP/KBwGiW9/0iv0hc=	\N	f	be4b6e9c-8b76-449f-9854-dba6a155d3c2	Олег		f	t	2021-12-13	okolobov77@gmail.com	be4b6e9c-8b76-449f-9854-dba6a155d3c2
446	pbkdf2_sha256$260000$v7OPMSwEcfR7PONcZLPUBB$vJD9HajskLy1gQqT5q23+9Eb7hM9iGWIJKQM6Bt402k=	\N	f	9f72da64-b2ac-415a-bf17-86dcc42f5622	Константин		f	t	2021-12-13	konstavinvest68@gmail.com	9f72da64-b2ac-415a-bf17-86dcc42f5622
447	pbkdf2_sha256$260000$kyQzOO2WfMkY5r1g8wpPEz$hdIQJVZSGyx62kTcruqiqxOVKcApqScaUSxA+Wk9ZZE=	\N	f	25dc4088-122d-4770-b609-523628cafc62	Екатерина		f	t	2021-12-13	kate.slmv@gmail.com	25dc4088-122d-4770-b609-523628cafc62
448	pbkdf2_sha256$260000$5xK7R3Cf9v5mETGdKkzlBt$ZVxOYGaqmwVJhPWzSSSKRxecdrGrZ7I98rrCayhM4pM=	\N	f	8fdb2002-72b5-473a-a1a3-76b6bbe9da38	Виталий		f	t	2021-12-13	geosolop@mail.ru	8fdb2002-72b5-473a-a1a3-76b6bbe9da38
1705	pbkdf2_sha256$260000$xwiqvIkr3BO1SYyBStZqBA$zGixHlW0P+SuVJNRRI2uWKEcCNU0imvkB+eBY8sTn40=	\N	f	d0d1b090-5fe9-4c25-bbc9-1da6b606efd5	Андрей		f	t	2021-12-20	highlife@bk.ru	d0d1b090-5fe9-4c25-bbc9-1da6b606efd5
572	pbkdf2_sha256$260000$vvKPxk4IQA6WczbSOAlC68$7HK1+S2BzR9cdXcDPvtHCQoChnH8KxpzApxifngFGeI=	\N	f	d5486147-9cd7-473d-a47b-74aaf8b6be5c	Руслан	Чайка	f	t	2021-12-13	ruchayka@gmail.com	d5486147-9cd7-473d-a47b-74aaf8b6be5c
1171	pbkdf2_sha256$260000$Li1jSqcCZZW9kTvD0wweqc$gev3XYtVCNDoHuykCBJwQMbZH9xm4rW2sAE9rCvNAnk=	\N	f	54f9372b-0969-4e41-95f8-d718b0591366	Алексей		f	t	2021-12-14	sosedovs@rambler.ru	54f9372b-0969-4e41-95f8-d718b0591366
449	pbkdf2_sha256$260000$bnunmJqfYNocDIGBKRqL0D$qC71lMDFZsTd98ihtRfXTg3vjiDNjfHNmwwOBqQogsY=	\N	f	7fea430e-7aa6-41d3-af34-ad1f8b06e9a7	Дмитрий Петров		f	t	2021-12-13	dmitrypetrov.moscow@gmail.com	7fea430e-7aa6-41d3-af34-ad1f8b06e9a7
450	pbkdf2_sha256$260000$ZqaUvQLt4esOIOrpQjGStk$h9/tPvYUYn34RyRSRFxCEQEN4YAHPhfC6vFGNhbYOPE=	\N	f	1b9a5ae8-b19d-47f1-b6ce-1dde9d07b98b	Виталий		f	t	2021-12-13	vsvolkow@gmail.com	1b9a5ae8-b19d-47f1-b6ce-1dde9d07b98b
451	pbkdf2_sha256$260000$R2SgvwuPsVJGQ2wueuuTEg$2lyTuRzYtczb0hfT+0EvRD9+CUgk+2ZGZqr7C9EZSC0=	\N	f	39aa241c-9976-4bcf-8194-5e2e85c1dbe2	Юрий		f	t	2021-12-13	ooobtr_spb@mail.ru	39aa241c-9976-4bcf-8194-5e2e85c1dbe2
452	pbkdf2_sha256$260000$35BoCFqb1Yq0jrQPhuPrjQ$bVI2pnb1V7ulJVBdI2i4t/TsF82LxOCM7twrwrSTt6I=	\N	f	a085b0d4-048b-427f-9779-432cd8db20ef	Stanislav Lobzov		f	t	2021-12-13	staslobzov@mail.ru	a085b0d4-048b-427f-9779-432cd8db20ef
453	pbkdf2_sha256$260000$Scha1f4XDnzK7i6dl9YQy7$i/Sak0zXG7hpZgJk62K+8Y0Nkv9I1JUqsxIwI+U86H4=	\N	f	885aba17-f9b0-4018-b83c-a71698a9bc3c	Юрий		f	t	2021-12-13	nariyan@yandex.ru	885aba17-f9b0-4018-b83c-a71698a9bc3c
454	pbkdf2_sha256$260000$2Ld4EkPb5qBmpwfuivp7Gn$L2yjXH68sxmrU+goWYO9Rymp0+t+rUyiMAAQUecT/gI=	\N	f	fbccc82d-8ee9-4691-ac68-6d9b6bc581e5	Елена		f	t	2021-12-13	goncharova.elena.82@mail.ru	fbccc82d-8ee9-4691-ac68-6d9b6bc581e5
455	pbkdf2_sha256$260000$2oNP3hHwB5au6ITv1PNfW2$QHBRz/0mcbLKa8xMOwpprZ1wwkXnME1SeJkU4mwll7o=	\N	f	2eb786b5-89a8-4946-a4e0-ecf637b67544	Татьяна		f	t	2021-12-13	tatakezic@gmail.com	2eb786b5-89a8-4946-a4e0-ecf637b67544
456	pbkdf2_sha256$260000$CBIzVeuk5JI8lMZuUrUQGW$qXJq2RxO6DTiV1NRTRpfe7YHCg9dKjj08G7xYNsGbMY=	\N	f	0b3c8341-e065-4847-bfe6-732ac138112c	Петров Андрей		f	t	2021-12-13	9635189@gmail.com	0b3c8341-e065-4847-bfe6-732ac138112c
458	pbkdf2_sha256$260000$A048URbtxhLhkogc9vzLFG$u6IvQBZy2pz4xIkLivhSrTpKTispCy+OLmmVgcganZg=	\N	f	427678cf-0983-472c-b484-ff3e200b1825	Евгений		f	t	2021-12-13	k0rdpo@gmail.com	427678cf-0983-472c-b484-ff3e200b1825
459	pbkdf2_sha256$260000$l9RZ4Lb9VJcRYHTmEuxzyr$zA1ssv8+e+DiWkAWNGoZHDigCv2FHJWtOn1WDFxVTdQ=	\N	f	4c07b592-d2e8-4df1-aef5-f5b53ac36b35	Елена		f	t	2021-12-13	selena27@yandex.ru	4c07b592-d2e8-4df1-aef5-f5b53ac36b35
460	pbkdf2_sha256$260000$GD8xEDvd8yM3GbizfiWpwq$wyjnyTVnPe4LkUOrXMr9jWEjYWTUS+rkEFcHdg0T88c=	\N	f	0348aa26-2568-4b8d-bdb4-873e7a254240	Карим		f	t	2021-12-13	kaarim50@gmail.com	0348aa26-2568-4b8d-bdb4-873e7a254240
461	pbkdf2_sha256$260000$rQPQj8YklnMburCnSGc9kW$bxX/QxVPsYb/oELnPQWqESZfaohqRYogzkoub5bzR3Y=	\N	f	ea1ba1f5-5d0a-43ab-b8e1-2738eb7e6f3a	Александр		f	t	2021-12-13	alex-black@yandex.ru	ea1ba1f5-5d0a-43ab-b8e1-2738eb7e6f3a
462	pbkdf2_sha256$260000$P8kVOPi3rBaj62Yx5bzU5L$HufYsjSxwq+5XaRdBtM8wOvivZ2p1ljLvyK1Oo7LuCg=	\N	f	a15e019c-621a-491f-a646-21f80f8b201b	Василий		f	t	2021-12-13	vasily-85@mail.ru	a15e019c-621a-491f-a646-21f80f8b201b
463	pbkdf2_sha256$260000$qZeAUEAJVmTuIPMz7BeXQR$cxI7lWxFzYCIj3X09INbm4ISmQyc/h0NOZhE40UpIAM=	\N	f	792a5fe1-3deb-4450-a6a0-b23f146e62e7	Igor Tsoy		f	t	2021-12-13	igortsoy88@gmail.com	792a5fe1-3deb-4450-a6a0-b23f146e62e7
464	pbkdf2_sha256$260000$PJfyKWAfgpWjwlAEXODDlA$1QQavTtcZ47TXhSuXKK/iJt0JwpzkgcNwqeo/6vGpx8=	\N	f	03785d00-c19c-4410-aaed-65d2ddcc3cec	Илья		f	t	2021-12-13	i9263455553@gmail.com	03785d00-c19c-4410-aaed-65d2ddcc3cec
465	pbkdf2_sha256$260000$toV83VJYRHxgfP16ynlHSu$gjAcYclCV+3QesK6P8Ru3UJAIlGk8TGkHMBPhN4ulb0=	\N	f	9c25c645-a2b7-4b07-a118-8d77b10338e7	Александра		f	t	2021-12-13	sasha.blck99@gmail.com	9c25c645-a2b7-4b07-a118-8d77b10338e7
466	pbkdf2_sha256$260000$nscgGrVVxxr0AyLHBjwtPt$GyKA40ZWtnitYBGLc8VnR9uLZ4R2e6AbEJoZgGbAaCY=	\N	f	8508bf2d-9820-4840-8bdc-55f8286a81c3	Александр		f	t	2021-12-13	priorastar@gmail.com	8508bf2d-9820-4840-8bdc-55f8286a81c3
467	pbkdf2_sha256$260000$l5Aq5du1ugdAXEeWgrFOp1$6zd2daQ3qtvLgb7Ba8v15r10YZ5SPd4W82s+fdoxYi8=	\N	f	f5d963fc-da53-4bdf-9c15-ca2084d05e31	Евгений		f	t	2021-12-13	e-krupenya-89@yandex.ru	f5d963fc-da53-4bdf-9c15-ca2084d05e31
468	pbkdf2_sha256$260000$b5zjziyXmsQRRJdfZZP0eW$KdemV6jSIizBoWJ4EN0zDdCby0tEawnEEAo3zv43YCo=	\N	f	364416cf-0ef6-4e9a-81de-be4555e2982f	Александр		f	t	2021-12-13	79069169592@ya.ru	364416cf-0ef6-4e9a-81de-be4555e2982f
469	pbkdf2_sha256$260000$hcUfa4PmvSOWxgSsqUC1Y1$0+SoHMu9NZyqb3AvplAsScbNIop+TiWH7/RsFtgTTrE=	\N	f	82eb6c79-89c9-4128-a733-611be372067b	Олег		f	t	2021-12-13	oyurpalov@yandex.ru	82eb6c79-89c9-4128-a733-611be372067b
470	pbkdf2_sha256$260000$T1NFBWpi0Ij6KJiWgMHZb8$JKVI7w3CZ/TVq+aQhMjhGcN/flXn7vDUbk/rtxYs/SY=	\N	f	8b3ee88c-6235-4f0d-9f11-311b3c77aeae	Павел		f	t	2021-12-13	pavel_cos14@mail.ru	8b3ee88c-6235-4f0d-9f11-311b3c77aeae
471	pbkdf2_sha256$260000$HBOY0GetC8uxXxknaCMhUk$lAIC6k+tSq2EV5W1Ta2tZUGxCmRoDF4Sh6H6DFRixzk=	\N	f	303eb011-cf28-4792-b060-1251f36cc3be	Альберт		f	t	2021-12-13	ovosnab@mail.ru	303eb011-cf28-4792-b060-1251f36cc3be
473	pbkdf2_sha256$260000$1drcGh7RNCSn9TIxnIddV8$V4s2ddrprW4UrsemV7ZtrgiOMjYjsz4ukTpjpuJoZdk=	\N	f	c279f1df-8b76-4225-90e6-85b5d4d9945f	Дмитрий		f	t	2021-12-13	dima2311@yandex.ru	c279f1df-8b76-4225-90e6-85b5d4d9945f
474	pbkdf2_sha256$260000$Y7U3JbQrmwAqyG4tHKmi9N$VytyRxnkwkdhBrE5pSR9Z4dVkJtlWbDSjtBASs+v1ik=	\N	f	a4c2c238-4dae-4fa7-b174-a80600756337	Дмитрий		f	t	2021-12-13	doctorkaraulov@mail.ru	a4c2c238-4dae-4fa7-b174-a80600756337
475	pbkdf2_sha256$260000$2qpNnYyqpBz1XTMLOf3KRh$Ye6lIDR8++HcSQazn/lCz+aVd7gFFgkB/ZpykmWx/nQ=	\N	f	ecb9ac25-c7c8-4730-ae8d-c2359a96cd82	Руслан		f	t	2021-12-13	nurmukhametov.r.m@mail.ru	ecb9ac25-c7c8-4730-ae8d-c2359a96cd82
476	pbkdf2_sha256$260000$fXfZ1LnTXN9C7p8wDtIK1G$kCI0fe0AyLufdsn+x+3xfBN24OGKotAz8g1ZzxE8jUo=	\N	f	fbd7c2bf-b76f-4df8-8e53-d2d709e7e3f5	Игорь		f	t	2021-12-13	iivanov110@gmail.com	fbd7c2bf-b76f-4df8-8e53-d2d709e7e3f5
477	pbkdf2_sha256$260000$McUlYo6x256H1ihoz5H5Hq$SoIxUUzhAAZbQVxpOnaCrwSOiTSRyHyGCgOkdoTxcdQ=	\N	f	3879a1da-c456-4276-afa4-99ed41014054	Максим		f	t	2021-12-13	abdulinmi@yandex.ru	3879a1da-c456-4276-afa4-99ed41014054
457	pbkdf2_sha256$260000$ZPFLP1HhpIMUk7wGGONSXI$VEO3n2xLwKgvFKGTc+I3GWeO/D7LX+lYJSufV7TpeAU=	\N	f	193632ec-781c-4690-8a5f-4b7aa69b7232	Александр		f	t	2021-12-13	petuhow.a@yandex.ru	193632ec-781c-4690-8a5f-4b7aa69b7232
1569	pbkdf2_sha256$260000$w8GIGZKrOqtCslrWSddaW4$8nXAAdPpqufgKYaq3pwEq7mF+JMGTsv0xkkhxAzFuhM=	\N	f	ae04bc16-cfbb-43e1-838b-3a50e2a9b2f7	Дмитрий		f	t	2021-12-17	nazarov_de@mail.ru	ae04bc16-cfbb-43e1-838b-3a50e2a9b2f7
478	pbkdf2_sha256$260000$9rtbGPfFlVyBpt1f6L5nVn$tshuauzvuGyatacMSY8wv2c3HaLREGIdOPrUOqRdljA=	\N	f	e5309355-c674-43ff-80c9-c398fbcc7530	Юриий		f	t	2021-12-13	remontautocar@mail.ru	e5309355-c674-43ff-80c9-c398fbcc7530
479	pbkdf2_sha256$260000$RVM8XMf3vChRuwWUxHZFGQ$6baouVvdwextQoBNJ8H/0C+npE5G+D1pqPZdUZ3ImZQ=	\N	f	63b151f0-4e98-4f80-9677-d24080677db3	Валерий		f	t	2021-12-13	trubinvalerij@gmail.com	63b151f0-4e98-4f80-9677-d24080677db3
480	pbkdf2_sha256$260000$jH7wdnaaZf4jGq8kp8URKQ$SzYb7FsQYugT/d9lMWfTQEOX4cHJ5Qmn4vm2bLiYP9A=	\N	f	194a0b2b-1705-419c-a937-ce3e8e5e3832	Геннадий		f	t	2021-12-13	trust.zgg@mail.ru	194a0b2b-1705-419c-a937-ce3e8e5e3832
481	pbkdf2_sha256$260000$jN8rFu6yjw1pxbMF5xJMZO$UvwRHuiYT2RxoO7sBGc/8qx17JFGg9lixNRonYVugu4=	\N	f	81119c9b-3854-4768-baf2-939944e3d38e	Алексей Кутуев		f	t	2021-12-13	kutuevav@bk.ru	81119c9b-3854-4768-baf2-939944e3d38e
482	pbkdf2_sha256$260000$zvoI7mCOj83aFmKy1dFWXu$bRciS+hPy2m2ImwwipGVNg/3sPdKVdrms6fKaDOj34c=	\N	f	ab024ecc-4b1e-41ee-b732-663cd8ab2c59	Алла		f	t	2021-12-13	alina58@mail.ru	ab024ecc-4b1e-41ee-b732-663cd8ab2c59
483	pbkdf2_sha256$260000$gkBohCXy41yt9YTn220FGk$k/VSMdcGdlO+TCNfVJ1RqeIQYbimmteIYTPmCoDd2D4=	\N	f	b7839fe5-7e0f-47f1-930f-ca252a3ab9e7	Анна		f	t	2021-12-13	schlotgauer_a@mail.ru	b7839fe5-7e0f-47f1-930f-ca252a3ab9e7
484	pbkdf2_sha256$260000$z3ChoAyZSOx0OBZnSaBGc3$WMfXMibDInQHz2DczTtUrh2qU595PxkYuF6wr38EkX0=	\N	f	a9ea0fe5-9b17-4b0e-baff-395475d69572	Александр		f	t	2021-12-13	geodeziiist@gmail.com	a9ea0fe5-9b17-4b0e-baff-395475d69572
485	pbkdf2_sha256$260000$yIIfH84QHZa3HYCsnogQfm$kcm9wah4t7/AIYZesS4fC9P7R/scI4X9WIC0baMkLPo=	\N	f	6094bd69-ad62-4672-b313-b5711e82a54a	Александр		f	t	2021-12-13	alex2.savinov@gmail.com	6094bd69-ad62-4672-b313-b5711e82a54a
486	pbkdf2_sha256$260000$5xqbUuCsF4HWQE5iGFjSei$NRY/m4a9KWz3aqXwh3vXL4GmIaQRKyJkq9IVPrw1E8Y=	\N	f	dc7ff67d-5d88-4838-970c-e85870032006	Сергей		f	t	2021-12-13	pyatkov_sergei@mail.ru	dc7ff67d-5d88-4838-970c-e85870032006
487	pbkdf2_sha256$260000$ncXybVXa54RyE1vSHpSC4V$5+WENENorsICpHuZQYlZZquXBd9pvvKYm5VgJzezky8=	\N	f	b7d242ce-8f0b-4f96-9905-c47abb136bcb	Денис		f	t	2021-12-13	halfasleep@rambler.ru	b7d242ce-8f0b-4f96-9905-c47abb136bcb
488	pbkdf2_sha256$260000$W1OfKiiBnsaBCmjAbP5BPw$xGehYCkAJQQEizhdCgub/yOAAO8K8AHghlP4wda/lEc=	\N	f	b3be79a5-4b55-400e-ac01-032dcb4d1e11	Эдуард		f	t	2021-12-13	firesystem@yandex.ru	b3be79a5-4b55-400e-ac01-032dcb4d1e11
489	pbkdf2_sha256$260000$MZkeIm8sMtorePt2OSs8LA$Ymuh4OtyjQS/lUF8HPUeh23mt7YDS5TM2Cp+z2rA7hA=	\N	f	7e17866f-ead5-4c46-bb98-e552e05fe5ae	Светлана		f	t	2021-12-13	kalambet555@ukr.net	7e17866f-ead5-4c46-bb98-e552e05fe5ae
490	pbkdf2_sha256$260000$Mxws4qjhxP0YVx64I62iMx$a3uDWAoi3R72fkm6oyd6VzavqMAyXQH/ooJBZb1hDhE=	\N	f	e6c5ac7b-c7f6-4eb5-bd86-709bd1842480	Денис		f	t	2021-12-13	bludoden@mail.ru	e6c5ac7b-c7f6-4eb5-bd86-709bd1842480
491	pbkdf2_sha256$260000$BTKfelEvja74jGUFhGE73P$Z5S2170zfgfxP8SkWCqCx4GRN3FEmvgVHx7EAZMaL98=	\N	f	35878f0e-9b8e-4115-9931-510be63bbbb7	Витебская Полина		f	t	2021-12-13	7261101@mail.ru	35878f0e-9b8e-4115-9931-510be63bbbb7
493	pbkdf2_sha256$260000$UrD1vU8h96DFt18hUkdODX$MKxiKcfocbijdpC+VwWwnhEBQ5d3soOTV38YbY+jYUE=	\N	f	f2ba4807-d87d-45da-8dab-e49b369ed345	Татьяна		f	t	2021-12-13	t.kartushina@mail.ru	f2ba4807-d87d-45da-8dab-e49b369ed345
494	pbkdf2_sha256$260000$Rb6B4ym9YjtJk0UZV5NROa$2d28ICZe7FhMWqta4y0nKU4li9MEXzn33YG9RavoaX4=	\N	f	d204432f-cc56-433d-b870-2423457af43c	Михаил		f	t	2021-12-13	kovalkovmisha@yandex.ru	d204432f-cc56-433d-b870-2423457af43c
496	pbkdf2_sha256$260000$1K6ObrwvLHOndT2iSrIouR$2dpoTptS5+lwHPCB3mFTJ1RF56kNFpEFRyzNgP25xRA=	\N	f	f53c4fd8-dbf0-4f4b-96b8-842e944c9f8b	Олег	Голованов	f	t	2021-12-13	basist0795@gmail.com	f53c4fd8-dbf0-4f4b-96b8-842e944c9f8b
497	pbkdf2_sha256$260000$Sn4xF5LfrvSIKTghdzZts8$7wiFJMMBQtTTJ+fXTRw5FtY554sbsRAn5fPV3rqs5H8=	\N	f	bdcf4b8c-1195-47a2-b6dd-d4e6c0c978fb	Михаил		f	t	2021-12-13	lix.10001@yandex.ru	bdcf4b8c-1195-47a2-b6dd-d4e6c0c978fb
498	pbkdf2_sha256$260000$fEib7Rnu7Jv5vPEtrBEemW$GrwDiLBeeuRtq5smSwySTpLZvsZoJKitTYTQ3BDA4DE=	\N	f	f7a5185e-d860-4148-9c42-9baaaaf44a3f	Влад		f	t	2021-12-13	fohtvlad470@gmail.com	f7a5185e-d860-4148-9c42-9baaaaf44a3f
499	pbkdf2_sha256$260000$QSDZU8HOb0iN9tq4NqO8gg$sNgIv81tgiabHbQT/NBMoShzrBwXUCaVwAGQKvBvNsY=	\N	f	b8c1c2f9-8e83-4ebd-94f0-7b956a75428f	Алексей		f	t	2021-12-13	kozmenko.a@gmail.com	b8c1c2f9-8e83-4ebd-94f0-7b956a75428f
500	pbkdf2_sha256$260000$NDeKjr86ntwRKGuIBvaiiL$iA1kXqzFfkR4vRxll/GMx6RIVbFurl515LNCskaXJcY=	\N	f	403bf04d-009e-4cbb-a28a-c688af920a93	Светлана		f	t	2021-12-13	lana.korneychuk.83@mail.ru	403bf04d-009e-4cbb-a28a-c688af920a93
502	pbkdf2_sha256$260000$z3OstM9utRPmVGtbPMctJ0$VN52NEK7Nj1IuQi9a3XbCUOAJcoKZoxUz1a+OGbsadw=	\N	f	465f11ee-3c6a-4632-a54c-b164cf2120da	Дмитрий Бутько		f	t	2021-12-13	dfbutko@gmail.com	465f11ee-3c6a-4632-a54c-b164cf2120da
503	pbkdf2_sha256$260000$NMU39Pm2pA0eWwwWMjiRul$TPO7bWGc1OxqMzoH1Vl/F7ohLQ3CE8s8EjBmkxTHqQg=	\N	f	03021772-416e-4f61-884f-37294ff32c9a	Игорь		f	t	2021-12-13	rekam-sm@mail.ru	03021772-416e-4f61-884f-37294ff32c9a
504	pbkdf2_sha256$260000$kuBGNh8qckDdXq2fGFeGHs$nw0UqOqP8JbYbpuZSEdAoQU7ev1uAFHuFprQvdOq4KM=	\N	f	5be8f5c9-fdf5-401b-8ddc-c58047054065	Timur	Khamatshin	f	t	2021-12-13	temaha@mail.ru	5be8f5c9-fdf5-401b-8ddc-c58047054065
505	pbkdf2_sha256$260000$BCJCcfFi88UGNTHugmHK9L$qOeb2bbj2WjO7fF2plR0BfZumdbYRgMxivmWF0sZs4s=	\N	f	9db7a8c4-e53d-416b-a0f3-d2c8c0596ee8	Alex		f	t	2021-12-13	aalex7373@mail.ru	9db7a8c4-e53d-416b-a0f3-d2c8c0596ee8
506	pbkdf2_sha256$260000$hkJz48s8KQWsVW88O9gPpZ$8M3a3MKUGBYR/SAiIcbZKSMJZ5FgP3I5y+j6tcs227M=	\N	f	057145ba-f401-4c72-802f-d98428ed3c04	Антон		f	t	2021-12-13	antoney95@mail.ru	057145ba-f401-4c72-802f-d98428ed3c04
501	pbkdf2_sha256$260000$hX2RayyNbyU7QsTVNXSJ5j$ILZ7GNBMmFLvC0fJhEfUHWs4xRY7NwpZhO6hKyIPTR4=	\N	f	c0da440d-62cf-4a37-988b-7bff2febe52a	Андрей		f	t	2021-12-13	andervancom@yandex.ru	c0da440d-62cf-4a37-988b-7bff2febe52a
495	pbkdf2_sha256$260000$UbMqCAhYgMoBLnY6uDwu4s$RAsyb8udL+T3lNcTGYWK9riP4csBqhafScU4ZUcGjx8=	\N	f	53b1740e-0163-484c-a549-f2fe857611b8	Антон		f	t	2021-12-13	toxxer@mail.ru	53b1740e-0163-484c-a549-f2fe857611b8
492	pbkdf2_sha256$260000$YiNDMVDdkwdM8CZquaxq2w$6aItAIdKYGiH9VQt5uXewsX8M+XtglfJmskEGQqGwPQ=	\N	f	a866e71c-9215-4d93-b2fe-37bc6cdd6280	Александр		f	t	2021-12-13	alexarbagar@yandex.ru	a866e71c-9215-4d93-b2fe-37bc6cdd6280
1570	pbkdf2_sha256$260000$A4XDOuAUKLWv2JwTo6K5Rh$kohbztmDx/28A5VJVfY+l7Ovui0o5wEO6yPHdJvaBAU=	\N	f	0f7701f1-40cc-40c2-9f6a-92d45e8ff1d6	Вера		f	t	2021-12-17	vgoncharova08@mail.ru	0f7701f1-40cc-40c2-9f6a-92d45e8ff1d6
507	pbkdf2_sha256$260000$0qnGkxr92YSLE1HpmAs1R0$i2h2IkeFf1oy7jQFJn5PpjHKfUOUOmxqrPhi6rFsihY=	\N	f	ead56b1e-461b-4a2f-953d-b39ab6c6d9cf	Maxim		f	t	2021-12-13	maxxtory@gmail.com	ead56b1e-461b-4a2f-953d-b39ab6c6d9cf
508	pbkdf2_sha256$260000$qqk1fIQx3OTt8OrBI3Ai7X$UWWrsrtG0FPEtNECDrlhfMklvN33n8nS3Ex/AdAoMBI=	\N	f	630b6919-ba9c-4a79-9036-ca53bf523112	Салават		f	t	2021-12-13	slvatik@list.ru	630b6919-ba9c-4a79-9036-ca53bf523112
509	pbkdf2_sha256$260000$bBTI0QJaGpEHs1w9B003DP$MUq+Kuenwc1cqpz2nGQJhXB/jZCkxNVoQgFmWekEH7M=	\N	f	386d9c0b-a6c2-4f35-a1f8-219b8b519464	Shah		f	t	2021-12-13	shah_tsuruev@mail.ru	386d9c0b-a6c2-4f35-a1f8-219b8b519464
510	pbkdf2_sha256$260000$P2d6gFQcxRVJOKzlsixbJN$/zI+0R9iaCNrAaQAFsTFJXfJ8alIqNKOYRD77xiggAI=	\N	f	dcb977dc-3a3d-4523-92a9-166379122297	Дмитрий		f	t	2021-12-13	bazzdamage@outlook.com	dcb977dc-3a3d-4523-92a9-166379122297
511	pbkdf2_sha256$260000$Lz1VuXYjvxnyRFZrpFoirp$Am94xYOTSersLM/SZqJDUSmHjT35HyQYbBR4AMAqAao=	\N	f	f1c14a19-fdf7-42a6-82e9-c9825df40cff	Олег		f	t	2021-12-13	eo2011@yandex.ru	f1c14a19-fdf7-42a6-82e9-c9825df40cff
512	pbkdf2_sha256$260000$AKeMuIpLuBPPID5qY6Q5T9$4rIcT/c4jsItja4napChAkXUqlopVqU9Wqr/57pUIrY=	\N	f	c8c58dc8-d269-4fa1-897d-9c493e5a30fd	Дмитрий		f	t	2021-12-13	dimka18belarus@gmail.com	c8c58dc8-d269-4fa1-897d-9c493e5a30fd
515	pbkdf2_sha256$260000$rQJaUngIXnuVEkiW2kZjqO$yCfn8k/FP1eoyD8lQ7edTpFkBKXVfpBm8POJw2mNpoE=	\N	f	d4eb6b4b-96e0-4039-b63d-db8984d3198a	Эдвард		f	t	2021-12-13	rex2new@gmail.com	d4eb6b4b-96e0-4039-b63d-db8984d3198a
516	pbkdf2_sha256$260000$I6qKTtsj4qhslCovLhvRlz$a/hMS6LlZg4DP07qrLl4FpX/N49gLiagcGKzaQ+nlwg=	\N	f	e15df2f4-ac39-4eb0-9758-176721b0584b	Константин		f	t	2021-12-13	mr.cverdok@mail.ru	e15df2f4-ac39-4eb0-9758-176721b0584b
517	pbkdf2_sha256$260000$MhfR2SrrNZp6clyNSimcB6$P5yxcqO1qQJn5OSya8Ev7yVFlCYDFh4jZHIDOTZ+UEw=	\N	f	f696c072-4266-4f8c-8f46-069d3f6b32e2	Евгений		f	t	2021-12-13	skipper11722@gmail.com	f696c072-4266-4f8c-8f46-069d3f6b32e2
520	pbkdf2_sha256$260000$1Ss4yVfJAW6NxzWK15xGDw$ivLy3mEZ+i4U1di46meM2zgQNBZ1k/MzYQ0/Xs2hCFY=	\N	f	643b0f89-d2a5-453a-93de-ffb056335574	Игорь		f	t	2021-12-13	napoli7071@mail.ru	643b0f89-d2a5-453a-93de-ffb056335574
521	pbkdf2_sha256$260000$jWFhyVkJ6Wy6joSov6APmG$vhBXwmW7YFtRKt3Vx8GLRzxSA8tLGvtakXAs+Ap1unw=	\N	f	7ca9c460-10be-4a84-b24f-f462b3f1ec97	Александр Кост		f	t	2021-12-13	2124187@gmail.com	7ca9c460-10be-4a84-b24f-f462b3f1ec97
522	pbkdf2_sha256$260000$vRBiAXQfAUMB7CotzaaRLz$Oudn+inCwt2woRD3WyEnGLmDYe2dWFPpBao7+Q33Jqs=	\N	f	543a4720-62b3-4290-aa2a-346667a903f7	Сергей		f	t	2021-12-13	6087570@mail.ru	543a4720-62b3-4290-aa2a-346667a903f7
523	pbkdf2_sha256$260000$CkfSO9tmKtJakcrdjMRTxU$0TeQ45+c0n1rCBnSdIYRSHbm2bokS9wQcj2AFDnX0VQ=	\N	f	41af69e9-1f0f-44be-8cc2-f364b0d62f40	Ким		f	t	2021-12-13	max.kalinin201@yandex.ru	41af69e9-1f0f-44be-8cc2-f364b0d62f40
524	pbkdf2_sha256$260000$9VJbnrHB7TAIgjHiHvycZv$ti97SWM6GeZxWPCthFdo5EkUH3ybYV9kuCTvTx8NqMU=	\N	f	c921832b-6ceb-4ddc-8741-0e4332a4aab6	Егор		f	t	2021-12-13	egogisheh9@gmail.com	c921832b-6ceb-4ddc-8741-0e4332a4aab6
525	pbkdf2_sha256$260000$b2BaHkhurrJic70C9XiE4i$KHp/aTI3ET4aoS61jhZJnMFvnJ10A+oDkj+9KziU2hI=	\N	f	955e4e77-22a0-4375-b897-751a7000508c	Наталия		f	t	2021-12-13	natarudnev@yandex.ru	955e4e77-22a0-4375-b897-751a7000508c
526	pbkdf2_sha256$260000$VgCyPy7KkD5bMUKWDO1scX$MmBG5sy2Lg6Wt1+Zn1+iOGJ19RXqKZezLKHMXAVNos4=	\N	f	fcaf5cba-8d94-4f04-93f4-239dc37adb47	Александр		f	t	2021-12-13	lomakin210879@gmail.com	fcaf5cba-8d94-4f04-93f4-239dc37adb47
527	pbkdf2_sha256$260000$FO9Z3UvEZq5eAIydx57Bd2$m57bEN6/lRmIraHTBW6bEu1OwDLuNJ5vb2aSzngVvZY=	\N	f	97e51d5d-d21b-4afc-91b8-caf44a5cc96f	Julianna		f	t	2021-12-13	forallint@mail.ru	97e51d5d-d21b-4afc-91b8-caf44a5cc96f
528	pbkdf2_sha256$260000$fMSK2Lz4DKGnmEI8vbSYdS$XJOh8xH52c897n6T1yVMkO7wF+DX5Fw2gJQ6RJsTIG4=	\N	f	c5d42dda-19c8-47ee-9a17-a2196a21816c	Сергей		f	t	2021-12-13	online93@yandex.ru	c5d42dda-19c8-47ee-9a17-a2196a21816c
529	pbkdf2_sha256$260000$JlRtJkiyLcGLuXQv9y1OgC$a42RWy3k9Lph8+bKoyrKJRV0+yG/tlf/aHDEEceYVyM=	\N	f	037d2fc2-4feb-4ed4-b13f-e737ef9cb220	Виктор		f	t	2021-12-13	yagupovviktor2202@gmail.com	037d2fc2-4feb-4ed4-b13f-e737ef9cb220
531	pbkdf2_sha256$260000$qV9EUPSzMVJ7mlM1XqrpOx$6vhyMB8zFffCNXTZ1dSYtksDkD8QjfshbpQw8MHZUKI=	\N	f	4188deab-7e05-48b2-bfaf-650b54686f0b	Elena Fedotova		f	t	2021-12-13	lenfed2304@mail.ru	4188deab-7e05-48b2-bfaf-650b54686f0b
532	pbkdf2_sha256$260000$YQBp9RVR137xAnoLyIA2IL$q5uf0TzN6t/9Vh6p8z8D+I7W9Sc3NrwM3Tjt7hjftIY=	\N	f	2f3f0ed2-dd0a-4a85-b73f-d66a2973ed96	Игорь		f	t	2021-12-13	trifonov.i.j@gmail.com	2f3f0ed2-dd0a-4a85-b73f-d66a2973ed96
533	pbkdf2_sha256$260000$zKnqj7R8cDOtvMFFbWz03P$O2Eiqr8XPI9KQj0PxkMsSIucmd7IevM2nPwpGr0ud3g=	\N	f	d7a034b9-8a0f-411e-8046-6493fc34907c	Александр		f	t	2021-12-13	aleks.zac@gmail.com	d7a034b9-8a0f-411e-8046-6493fc34907c
534	pbkdf2_sha256$260000$D1avJgnCmkGXtU3gGnLnCz$UilYNFEyjQyb38hdY951jQr9F8ABGZGkRkV9tN0vBYw=	\N	f	ae651f3e-7b40-4a7d-9c31-a4c00df4760f	Irina Lapirova		f	t	2021-12-13	ilapirova@googlemail.com	ae651f3e-7b40-4a7d-9c31-a4c00df4760f
535	pbkdf2_sha256$260000$giLPNNMfpotSUD3WxqCUfO$+nNgd+DhP0APO4pshxCfCrQMph/S3C2nE3XBvRLP224=	\N	f	1f339783-38dd-4b86-a3f9-f274a26a712f	Erik		f	t	2021-12-13	e.bovarec@gmail.com	1f339783-38dd-4b86-a3f9-f274a26a712f
536	pbkdf2_sha256$260000$C7tVd43dgWdHJDJMqQR2Dx$4+hfsIFhvP/cTpTFxXXA6sUkwB5G3u6p4lFg3T8a1TU=	\N	f	a7dcfbdb-76c9-4f15-beda-3b902296015f	Анна		f	t	2021-12-13	vse_zdes@mail.ru	a7dcfbdb-76c9-4f15-beda-3b902296015f
537	pbkdf2_sha256$260000$N24gbQmeJdBIjZjluuApbA$MRofQHQgjXWGcu3MB8xxAShfJQ+uqLzuJ/OeazhaXaY=	\N	f	b0829614-366f-4897-aeef-77a2ec478363	Константин		f	t	2021-12-13	koplachin@gmail.com	b0829614-366f-4897-aeef-77a2ec478363
514	pbkdf2_sha256$260000$ELrckO0s1qG7HlMmp8HYOu$roLTJcGnxnhcU4X/aAKwkXb3JwAlYMh0vOgMbIlJUBE=	\N	f	433c71cc-3a8e-4f93-a115-d4764256dc0b	Максим		f	t	2021-12-13	eragerard@gmail.com	433c71cc-3a8e-4f93-a115-d4764256dc0b
518	pbkdf2_sha256$260000$sBQZgVq3uLFfM0ADRnthcq$DJJyOlK+tv85tkDPX113fdE6yRQMa7+SI6E4PIknNoM=	\N	f	1177be5a-a582-46f2-b2fc-c56b0f3c95fd	Евгений		f	t	2021-12-13	valerazabivai@mail.ru	1177be5a-a582-46f2-b2fc-c56b0f3c95fd
513	pbkdf2_sha256$260000$C7GbmATT2F7Ip2WpuTTxtf$CnVdO+mH/buFfNVXb6Xf7w4rkzCNJGL+f/rSr4mAJhU=	\N	f	cb14d1c3-0d8b-4563-9879-d8eded520e6a	Тамара		f	t	2021-12-13	79393@bk.ru	cb14d1c3-0d8b-4563-9879-d8eded520e6a
519	pbkdf2_sha256$260000$mLeXqFL0eOlnnwLVXWyDdM$Y3zzPb+fg3tSKKkWow5w8AKILiWbU34xdz+HjChhhQo=	\N	f	fe4db0d2-0133-44a0-a400-179cb699736e	Евгений		f	t	2021-12-13	evgenarek@gmail.com	fe4db0d2-0133-44a0-a400-179cb699736e
539	pbkdf2_sha256$260000$ArYdqnSVpfODKxJeynSbpK$u92kFZgAuoSMGwzs6B577KBX8qr9S04X/tlVF9cKWbc=	\N	f	ed86f0f0-7747-411f-8a34-4c834be30506	Ирина		f	t	2021-12-13	irinachvileva@mail.ru	ed86f0f0-7747-411f-8a34-4c834be30506
540	pbkdf2_sha256$260000$iYZLZ9uClAas4oB150HBNg$yCeXw2NfgkHGRszsc+o7B12oD/FvI5HqZ9ycVAm3Fvg=	\N	f	ea73075e-601f-45b6-b1fb-7e4664f0b14c	Виталий		f	t	2021-12-13	89153478530@mail.ru	ea73075e-601f-45b6-b1fb-7e4664f0b14c
541	pbkdf2_sha256$260000$JZ3BlLF3ylJtG19wjKF2dF$n4zDYWUJjnrl6pQHuTm/fm/1AUV3SHJT+CKJmuQe0Do=	\N	f	08f4c289-cebe-4d9d-b460-1c6e6c54ea5c	Кристина		f	t	2021-12-13	kristinakhorikova@mail.ru	08f4c289-cebe-4d9d-b460-1c6e6c54ea5c
542	pbkdf2_sha256$260000$yXssdyaX9uMwUYoEYdLx1I$TIhgz9B+Z3gtVXA28AjwBwX0es6brGZoTkp3natzUws=	\N	f	243e9c44-d28e-45c6-88f9-0b61ac724d1e	Роман		f	t	2021-12-13	mailyanrv@gmail.com	243e9c44-d28e-45c6-88f9-0b61ac724d1e
543	pbkdf2_sha256$260000$o7SwIaqmQjaG6y1IKfhYLc$l/BuBfrU0cenHXbMzx+UUU7yNDwfXlTImnsvi3cDt1s=	\N	f	3fe93bdb-b288-4cc8-8a34-29bbc34cde86	Денис		f	t	2021-12-13	mosin_98@bk.ru	3fe93bdb-b288-4cc8-8a34-29bbc34cde86
544	pbkdf2_sha256$260000$PxNiFgzI6gbbyKkbvBdMHd$3JQu+fmTkd/+fMs7Hg8MxAOOuNRnqFVnM2JYNNM7m3Q=	\N	f	4fa67ac6-8536-4c61-9990-ea426815decb	Ильмир		f	t	2021-12-13	ilmir201e@gmail.com	4fa67ac6-8536-4c61-9990-ea426815decb
545	pbkdf2_sha256$260000$Uj4PSWcrrTxXstIORE6xup$aAAOHWQe0/gzRPJVyTaP4ZdyAh/xRJlLkA+RT7YZPNo=	\N	f	994ebe5a-074f-44d7-93f6-8af5262d1e7c	Денис		f	t	2021-12-13	madby31@gmail.com	994ebe5a-074f-44d7-93f6-8af5262d1e7c
547	pbkdf2_sha256$260000$v5fBwemAqQ6cm6DT8iienV$IkAKX4kDvje4RYU0pqdnI79N8zFrA1yfIt3UCjrjo/o=	\N	f	83630ded-0d84-486c-af9b-0febeecd3712	Denis Shishkov		f	t	2021-12-13	dennisrodman74@mail.ru	83630ded-0d84-486c-af9b-0febeecd3712
549	pbkdf2_sha256$260000$Kcz699JJmADW1ZMcm3aIsT$wdxlYTPOZAfX0eCAldHu5TGqGmqa+QF7rE+jHoL7K+E=	\N	f	d686457e-9ed5-4838-9897-29cd91e2ba58	Алексей		f	t	2021-12-13	beregalex@gmail.com	d686457e-9ed5-4838-9897-29cd91e2ba58
550	pbkdf2_sha256$260000$kpDbsUGAf7qAEEH6xBAn4K$liIBPwzugzQJZ/DKjI64E1ci8xgW+7+eNA1y+2zhR7k=	\N	f	8e7bcdba-133c-4daf-bd52-489db4624a44	Владимир		f	t	2021-12-13	uninetysix@gmail.com	8e7bcdba-133c-4daf-bd52-489db4624a44
551	pbkdf2_sha256$260000$nasjUVZDmvGztDUTlFX9Wc$cc4hKmnKVNsb3sQRNvtS26lZBaMT+8vfT+7BAToEuLk=	\N	f	b28da955-0b80-4561-8214-ef708955dd1d	Иван		f	t	2021-12-13	sann60@mail.ru	b28da955-0b80-4561-8214-ef708955dd1d
552	pbkdf2_sha256$260000$9pnQ7LiVH557uHSzs3T59k$obbk3vJ0+EWkMo8/xv00wwCIiOUkR5iuETGPA1OdM7Y=	\N	f	afe97f3a-039f-4d88-b0f9-f6b253ead823	Наталья		f	t	2021-12-13	kotelnikovanatala616@gmail.com	afe97f3a-039f-4d88-b0f9-f6b253ead823
553	pbkdf2_sha256$260000$uCODkgsZeDLlfqCJ8CBYBd$4mCoDwbOQFL7fHve3IBMQ7gbPEQ5tYE39Juf9ie3CdQ=	\N	f	6f223796-65ea-4d70-bdb9-a249bdf52c36	Елена		f	t	2021-12-13	tf-melon@mail.ru	6f223796-65ea-4d70-bdb9-a249bdf52c36
554	pbkdf2_sha256$260000$LEPJwSqd0VbeNpClWyip1c$eYow427Ry/6TMMEMiz9EqS8zOQA00FygzzDHITAoygs=	\N	f	3b33fe13-203c-4cbb-b125-bca9049169e5	Дмитрий		f	t	2021-12-13	dima-spont@yandex.ru	3b33fe13-203c-4cbb-b125-bca9049169e5
556	pbkdf2_sha256$260000$NeME7gPbRIe1Sl8YT0F9W5$1XnRuMkMOnLETw/j/MdQkM7tn4UJNYQtyRqwJ5TwOTU=	\N	f	dc7b16b5-5bcb-40ad-bfd4-1dba71cee41e	Петр		f	t	2021-12-13	tidalaeon@gmail.com	dc7b16b5-5bcb-40ad-bfd4-1dba71cee41e
557	pbkdf2_sha256$260000$P7BSsshUHSVzGLN3vHpZ87$5IF4X0WFz1vyFZRvPrpzQr18daqRL8GQPWAi7D5s5ms=	\N	f	0fa7bd64-3359-4480-841e-be89c50644a8	Андрей		f	t	2021-12-13	andreikatkov@ya.ru	0fa7bd64-3359-4480-841e-be89c50644a8
558	pbkdf2_sha256$260000$dHLohj7jkqKWpGWoakD65r$+kpT4zPYQj48ijaKnJROfbtX5DqUUuWt+XPwvLc2kPE=	\N	f	2f794698-3afb-4ff3-be5e-179a7deb2735	Светлана		f	t	2021-12-13	sveta-shef@mail.ru	2f794698-3afb-4ff3-be5e-179a7deb2735
559	pbkdf2_sha256$260000$TGlYYqmXmW0mVoOF9s4qDP$5KVzBzFCcnpf60gEBV+eTlxAXXGuh+FguFl11gacdS0=	\N	f	44c9c9ca-94b1-41c9-9f21-d974654fc240	Дмитрий		f	t	2021-12-13	077vds@gmail.com	44c9c9ca-94b1-41c9-9f21-d974654fc240
560	pbkdf2_sha256$260000$RZMlpSRB9hFD8ZCTDs2meZ$W+4ZSnInNHBl1zz8I6YN1gUC7WnYjknRceNSrQrCW70=	\N	f	89e8e741-23ff-440f-95d0-04456b891ac5	Федор		f	t	2021-12-13	okfedor@yandex.ru	89e8e741-23ff-440f-95d0-04456b891ac5
561	pbkdf2_sha256$260000$bPRLCqytG6ynw4zw8XUMWH$LAg0HNccUheRzcKqElFc7nvx1YQQX7agGPTfKb1Wf6o=	\N	f	4fea37d5-434b-4c08-992c-3017d84b1894	Максим		f	t	2021-12-13	zinchuk1998@gmail.com	4fea37d5-434b-4c08-992c-3017d84b1894
562	pbkdf2_sha256$260000$FBgQ05ZIiR0O7GSCcxL1vK$nbKNAwK0B5ZWLlqCyiymb7aHTtQSI6PZ2YiqLUVfseg=	\N	f	6755c536-6d0e-4bf5-9905-aecd9776054b	Максим		f	t	2021-12-13	maxwelindabox@gmail.com	6755c536-6d0e-4bf5-9905-aecd9776054b
563	pbkdf2_sha256$260000$axSH5bQiU2jtcb5b7fZHNR$RVacgoe+9l+xqP5NwGbSyGk7UO7plUR/oE04e2aJiAA=	\N	f	544a6857-73d5-419b-a940-8008c09afaa0	Сергей		f	t	2021-12-13	voronrbs@mail.ru	544a6857-73d5-419b-a940-8008c09afaa0
564	pbkdf2_sha256$260000$RinNHf2Kn1J6eTya3rTgNV$ALZEJpVvb1UbVZnh0q0Yb9JGMbU4jp/dnriQHWfY78A=	\N	f	4a4c75f1-950b-4157-af3e-d72f46f65601	Denis		f	t	2021-12-13	elfinit@mail.ru	4a4c75f1-950b-4157-af3e-d72f46f65601
565	pbkdf2_sha256$260000$sQRC1fI7ZzsoXK7rGVjuEz$EkTRO0QyaQMkrNHXRt8ItG2labSAqssXSi3TOobUkRE=	\N	f	74265d3d-831e-4192-8c58-9616df3e8722	Степан		f	t	2021-12-13	ssolomnikov@gmail.com	74265d3d-831e-4192-8c58-9616df3e8722
566	pbkdf2_sha256$260000$KBeNa83pGDsUlx8bMqWHJh$6UPKIHeHuuOL1wBO3qFU9wO3jCXP6YsTUDHI+Khw30A=	\N	f	f99b0158-4359-4530-931e-571097f1479b	Ольга		f	t	2021-12-13	mailbox150@mail.ru	f99b0158-4359-4530-931e-571097f1479b
567	pbkdf2_sha256$260000$xRJPB0ubWzQW8HipcApp0W$A+NOv64UjLB6kmzUVJubGbBKP03teeYfCnEmqapowAY=	\N	f	5fde27c1-a0d2-480b-bd10-828b635cc885	Илья		f	t	2021-12-13	2525903@mail.ru	5fde27c1-a0d2-480b-bd10-828b635cc885
568	pbkdf2_sha256$260000$zBzfS7ZM80GQnpQsAt1eVv$jDnmgurlTYNyspDpiUhdZcjhFc83iPObu4/pDTyABQw=	\N	f	b1862f75-1779-473b-b6f0-5b592b2e77f5	Сергей		f	t	2021-12-13	trkssp@ro.ru	b1862f75-1779-473b-b6f0-5b592b2e77f5
538	pbkdf2_sha256$260000$Wf1qxqDIhWefM4CvzKb5eu$Xin92x6Z4wMMjUjR+KxC/onxI9LVxIhxkIA7bzXsQhk=	\N	f	51c9d3c7-5c37-422e-87c6-43507b68e6a1	Владимир		f	t	2021-12-13	pobeg1231@gmail.com	51c9d3c7-5c37-422e-87c6-43507b68e6a1
555	pbkdf2_sha256$260000$ZvbYe0TwFgmvq5RmzzTUwj$92yVyEW9W3vMELDmRNZ8ZqQhAguqq3HaRA2oq2DegUk=	\N	f	2fed579e-4f28-4ff0-8f32-e5ead3468881	Татьяна		f	t	2021-12-13	tantjema@yandex.ru	2fed579e-4f28-4ff0-8f32-e5ead3468881
546	pbkdf2_sha256$260000$lVzdvrRuv4NM8US30w8QM2$E5tyvwrtlRuFM6tTHSIKt2Lg9uDcxmnODR75SLTXLZ4=	\N	f	67ac4738-1076-4934-8dbd-9a2da2d86b00	Дмитрий	Медведев	f	t	2021-12-13	atom1fast@yandex.ru	67ac4738-1076-4934-8dbd-9a2da2d86b00
569	pbkdf2_sha256$260000$zpZGgfvZISOAoKi2jDTB1E$Q1CsxiEyD2NXnItrf3i8/vSoATrDT+ITWB6TPjwIOZ0=	\N	f	27f9564c-f054-4740-80f6-2ca5e26011a0	Вячеслав		f	t	2021-12-13	beckkhan@mail.ru	27f9564c-f054-4740-80f6-2ca5e26011a0
570	pbkdf2_sha256$260000$q6AGqyxnlykFkTmICWDemK$nuO/CP4yFfB8DmlJwXznjUwwKXYxugSKLn1PAuPL7SI=	\N	f	56b79f28-c0f7-4652-ba3e-9a69543b67aa	Сергей		f	t	2021-12-13	belkeynn@yandex.ru	56b79f28-c0f7-4652-ba3e-9a69543b67aa
571	pbkdf2_sha256$260000$0inGq3GXtc04xK93euFBum$8+7rtyc9dpNkGpPcPJ3Engt2Y5GMDvOMCwGF7mSI2Ck=	\N	f	1ad4a971-19aa-4685-a243-346677e07553	Кирил Земляной		f	t	2021-12-13	kirilfromua@gmail.com	1ad4a971-19aa-4685-a243-346677e07553
573	pbkdf2_sha256$260000$Ge39S8nn4Lmb1sZZ9xoAjp$Gyw1+uVn4HZCNDt/edH+Hd01nL1ypo9gK5gTkfipu3I=	\N	f	2f436c17-9e56-40e8-a836-a865e95f3fa5	Виталий		f	t	2021-12-13	vitalii.solomaha@gmail.com	2f436c17-9e56-40e8-a836-a865e95f3fa5
574	pbkdf2_sha256$260000$LMaH9vbhulAXmF1oNGbQwD$ntTklcIF4jH0W7BZy0PoHTulbIRR+WIpw2Bwi0vK0ug=	\N	f	402f8bd5-28d3-48b0-8963-4f3a4aa83300	Линар		f	t	2021-12-13	gataullin19980@gmail.com	402f8bd5-28d3-48b0-8963-4f3a4aa83300
575	pbkdf2_sha256$260000$YI2MQeKZOGO3nZNWB7WSfH$zSly+FLE69DY5tyJltOBbstAAlilRXxZ4/n66jl0U3c=	\N	f	ccf48890-6505-4c8c-8268-0602d95a1ba6	Роман		f	t	2021-12-13	ponomarev.r.r@gmail.com	ccf48890-6505-4c8c-8268-0602d95a1ba6
576	pbkdf2_sha256$260000$Gwk5Nf0OQseuyALqniQwFR$knO3DIHujAQjsERj3JdPpxWNereLpWKp0YUsUgizxDY=	\N	f	7bd9091e-96ea-48af-9bef-ed295583d2e9	Евгений		f	t	2021-12-13	inbox@emoiseev.ru	7bd9091e-96ea-48af-9bef-ed295583d2e9
577	pbkdf2_sha256$260000$J0StjcxpYouxBYVH2vzW3H$aJupPHVcp8s3wVlh25JXgXCYZgFCun1JwxatbjMbZqo=	\N	f	548acd3f-a0f4-4c22-b713-6f497b3fd5de	Andrey		f	t	2021-12-13	intech125@gmail.com	548acd3f-a0f4-4c22-b713-6f497b3fd5de
578	pbkdf2_sha256$260000$C3btmtUkHl84hlHXLhFx7m$RBpkwXB05OjftoBqBq8Ln/G6NL0g33QLXPw1kU5c7U0=	\N	f	e0a4fd7c-5a38-4bde-b69d-4878d38d1941	Almaz		f	t	2021-12-13	almaz84@gmx.de	e0a4fd7c-5a38-4bde-b69d-4878d38d1941
579	pbkdf2_sha256$260000$9ZYF4SqQa2gZcmed5rHVMR$k1uafxYk0wQ/1oN9CZE41utPd+9gcnlAYEbDoMF+/Dc=	\N	f	411ff3a1-6bc2-40a1-87de-e41ab388f6dd	Роман		f	t	2021-12-13	balov_r@inbox.ru	411ff3a1-6bc2-40a1-87de-e41ab388f6dd
580	pbkdf2_sha256$260000$4pjVsvsCgQD2GGRg4RDRMj$wm8Vmodq1nWQdHz5YL5G0k/oeQOhCFZZZII5tsUlEdM=	\N	f	6e0ec108-e3bd-474d-9981-0c9c2c819621	Алексей		f	t	2021-12-13	zag888@yandex.ru	6e0ec108-e3bd-474d-9981-0c9c2c819621
581	pbkdf2_sha256$260000$mGG5Elng9cnOx8B3FU20VP$jzWzpfFcNYcIjfLlv/UgzKNRUaPU26C9NuZh3Gwh0g0=	\N	f	c4884a7d-315b-408c-abf9-f4fb6740ad77	Виктор		f	t	2021-12-13	vi.dubgm@gmail.com	c4884a7d-315b-408c-abf9-f4fb6740ad77
582	pbkdf2_sha256$260000$gjRgsCoGpbCno2lEvLGTBh$olvPgtZK3bmeWKRHVGBS8RT76Zfxe9VVR2vzIG80bXg=	\N	f	88d74660-13c6-48a8-976c-360e382abffb	Олег		f	t	2021-12-13	nordcave@pm.me	88d74660-13c6-48a8-976c-360e382abffb
583	pbkdf2_sha256$260000$fUJJoVSiqKpovlxcBPIh2M$+oUKSo06KvDz6XmWzF/qIOz3HJVQUO+7gzBSlTsIFZY=	\N	f	fb089c0e-2843-4c3a-8392-70359632e2f5	Габриэлла		f	t	2021-12-13	gabriellagrace@ya.ru	fb089c0e-2843-4c3a-8392-70359632e2f5
584	pbkdf2_sha256$260000$zfGKePgRj5J7FxdoDNxmZZ$VyEgL+8QhtoNpcRX6NJiBCpmXfk4E/QFakXITUgbq4c=	\N	f	656cd994-7b63-4ed7-be7e-69578821210c	Reshad Hasanov		f	t	2021-12-13	rhasanov@gmail.com	656cd994-7b63-4ed7-be7e-69578821210c
585	pbkdf2_sha256$260000$BKoETjDPnbj33QgMNj1uHm$vD6a/+aNKvFvfFOYTDAQkDN+7K5B53lxKlY1isgl9oA=	\N	f	25e93da0-1c79-49f3-b902-4e15a4c38423	Андрей		f	t	2021-12-13	driver-a1@yandex.ru	25e93da0-1c79-49f3-b902-4e15a4c38423
586	pbkdf2_sha256$260000$bCiyfhCOAXSyjh7EZ4u2Ib$tn7gviWSaju6rIaNc++02jNZkIVEB3jMODB5hgzT6Gg=	\N	f	1f970c76-1fa4-49de-8c07-f4a6f8953a02	Никита		f	t	2021-12-14	lingvalf@gmail.com	1f970c76-1fa4-49de-8c07-f4a6f8953a02
587	pbkdf2_sha256$260000$8Yq8r955fCmTYs4DJhItK4$oo1OveoGUdoNdHFfSFRrlTkXJIdxlwzMZyJSD+t7qZE=	\N	f	58c5fbc0-138c-4ea9-97bb-b9603f90d74e	Василий Александрович		f	t	2021-12-14	vasilmel@mail.ru	58c5fbc0-138c-4ea9-97bb-b9603f90d74e
589	pbkdf2_sha256$260000$bfFobvEwyEbh8ihagn3CKi$LA9tWQhM61MA3yV/Z7hYN2lN74cd+sKvzoPHStOr9+o=	\N	f	7972f706-97e2-4652-a8e1-1004b05bc258	Сергей		f	t	2021-12-14	seriyyyyy19@gmail.com	7972f706-97e2-4652-a8e1-1004b05bc258
590	pbkdf2_sha256$260000$9wQvRUU2gwiKo1bAqYnGVI$S2tXpGl7Ae6yDjjbYcbWgsAg9CTYho9r6UunzjNV35k=	\N	f	9d98b796-ea6d-4ba6-8786-aed4e6651905	Евгений		f	t	2021-12-14	exsinord@yandex.ru	9d98b796-ea6d-4ba6-8786-aed4e6651905
592	pbkdf2_sha256$260000$uB47NE2rMUiIf4z5rqSRYG$k84dF6l2RdPhDhszNU9T22N+POrLCgK6aT1EzPtAU6s=	\N	f	9504b95e-72ec-4fe5-b422-b9bee440d0b0	ALEXANDR		f	t	2021-12-14	alex040483@gmail.com	9504b95e-72ec-4fe5-b422-b9bee440d0b0
593	pbkdf2_sha256$260000$TzNk34UrDI4EoBwjxwRAgE$yU4L0SRc4Nrmo7bCSZ7sFN42OF580x4RFUHcTaSH5iA=	\N	f	270d88ac-fdb9-4d37-b9a2-97c42a3450c9	Volodymyr		f	t	2021-12-14	kadilak97@gmail.com	270d88ac-fdb9-4d37-b9a2-97c42a3450c9
594	pbkdf2_sha256$260000$eknFblDdeXA0YSqI4GEw5m$Z7NZkMLMhL5+04q4DfwnJA3Xzuf74wg2WQ4QpPt85xQ=	\N	f	c0966b2c-475c-4edc-adc7-c72423b39b03	Андрей		f	t	2021-12-14	andreyzh63@mail.ru	c0966b2c-475c-4edc-adc7-c72423b39b03
595	pbkdf2_sha256$260000$Vopl6tv65Gzof5jlunB8SI$R6XrHApAR7BBJvJY8jV2/3QwFlDu7NacSjqklw8GIG0=	\N	f	3fc57738-29f0-4b9c-90a1-4573687ed675	Павел		f	t	2021-12-14	snegg-ok@yandex.ru	3fc57738-29f0-4b9c-90a1-4573687ed675
596	pbkdf2_sha256$260000$ckuaNCGR1JtZ6aJSaFb4N5$iRH9LE9v4w578Alx83eJ7XjkNORMTHv1lNtMth0DayY=	\N	f	bd722905-cddb-4538-afcf-755aa434b815	Юрий		f	t	2021-12-14	symmetra@mail.ru	bd722905-cddb-4538-afcf-755aa434b815
597	pbkdf2_sha256$260000$TwpG15xYPZH0fNlwkmhrlv$wHFNkGCTNE8wjvqA0x0ycmNovI0KvlIKXptNdmT3vEo=	\N	f	2e31676b-9186-45b4-bfaf-f5f4328140c4	Алексей		f	t	2021-12-14	laeran89@gmail.com	2e31676b-9186-45b4-bfaf-f5f4328140c4
598	pbkdf2_sha256$260000$xSM3yaCB2aEaMQlhT1zeAk$Q5cwDBQV/lXCXjqBWmepuBA6jkkOoyNe4AxmgeOclnU=	\N	f	bf4bade4-9c8b-4d03-b789-9168388ee315	Имяреков Андрей Александрович		f	t	2021-12-14	andreich121@yandex.ru	bf4bade4-9c8b-4d03-b789-9168388ee315
599	pbkdf2_sha256$260000$lg0muDMXHg1JsFPfAMrgzj$q/LgNWE2gDL3mF+wcVQlsfh0bWWGp+A6rU8yyflQwAE=	\N	f	213b5b90-3239-4e2b-ada1-4aa4a27b34b9	Оксана		f	t	2021-12-14	ksush_on@list.ru	213b5b90-3239-4e2b-ada1-4aa4a27b34b9
591	pbkdf2_sha256$260000$OkKhedFvxNTxoemnKVx1Lk$LMP7zt8eWicsuxWt2OcN+831siH5uP5i9gBmLkMNDcM=	\N	f	f9c73716-4dfd-4d4e-9572-6edf6df3acae	Оксана		f	t	2021-12-14	2174813@mail.ru	f9c73716-4dfd-4d4e-9572-6edf6df3acae
588	pbkdf2_sha256$260000$8t5AXsyXGwZGbJLd7MU2e4$Vg9hSt6rtKQ1S+XtU4owzLpT9Or6DYglNQebFxLlUEw=	\N	f	6fba8924-369b-408b-9d2e-ac61d5db3fa2	Юрий	Андриянов	f	t	2021-12-14	yura-andriyanov@yandex.ru	6fba8924-369b-408b-9d2e-ac61d5db3fa2
600	pbkdf2_sha256$260000$BYGcRuTltV52HKeFOxOzUx$ssgxOupOT79PKITxnfURl04gzfg1k0pt2StQ78hsH1Q=	\N	f	9500ddb6-f8a3-4b4f-a26b-76dffcd339e8	Saginov Serik		f	t	2021-12-14	saginov13@gmail.com	9500ddb6-f8a3-4b4f-a26b-76dffcd339e8
601	pbkdf2_sha256$260000$oQDnop32JL07gfoGkgNNWZ$c/qplmCwphDXkLXrBue6LAkqLGL7KfXXdpsV+fstuUQ=	\N	f	cdb16172-201d-4855-aab5-0491eff04ade	Ян Ицкевич		f	t	2021-12-14	it.yan@yandex.ru	cdb16172-201d-4855-aab5-0491eff04ade
602	pbkdf2_sha256$260000$l89heNGQKAHVapk302cl2N$Sdz+74hthVqa+cjP4kGuPFLEMry+7Vr+Kr4IC3d/MWo=	\N	f	da5fdf17-1647-48f2-8053-4286e176ef6d	Наталья		f	t	2021-12-14	natakras@me.com	da5fdf17-1647-48f2-8053-4286e176ef6d
603	pbkdf2_sha256$260000$xYfAKeII6xa7VwodEJE5yk$LuhxRlkTUopeTda3YXjPjX1X16B9e0JLD6a0Cr/dCAc=	\N	f	e2024d13-159c-424b-a9d7-6f9c861390d8	Максим		f	t	2021-12-14	rezkimaks@mail.ru	e2024d13-159c-424b-a9d7-6f9c861390d8
605	pbkdf2_sha256$260000$rxX22Z9QU1THKDfyyhj1zO$tTN13zUl6HDIFROFfMJrpjep0Rv6sKAhkUcfea8gRmQ=	\N	f	d745969e-a853-4e75-8f0c-21e5d1ef9d80	Алексей		f	t	2021-12-14	420821@gmail.com	d745969e-a853-4e75-8f0c-21e5d1ef9d80
607	pbkdf2_sha256$260000$ulrTEgNKCqXoiLsHtlToxv$cuU/uzil4w6nB3PhT6VHLGtI26LDB0GO1+iyXbXevxs=	\N	f	7d177af6-388e-4588-afd7-5eca7bf5d393	Владимир		f	t	2021-12-14	erna72@mail.ru	7d177af6-388e-4588-afd7-5eca7bf5d393
608	pbkdf2_sha256$260000$zyebqcEt3RedogTVEpI8ai$8BzZUw+A7Te12WkBmgAfobew/hrwix9CmuueW+g9yPQ=	\N	f	c7418fb3-1b9e-47da-be26-b61f82076b91	ILDAR SALIKHOV		f	t	2021-12-14	c.ildar@mail.ru	c7418fb3-1b9e-47da-be26-b61f82076b91
609	pbkdf2_sha256$260000$hIoEEssYw9fYG4WXDlpN4y$q8aSKsC1/maSFRzHuEheWOEsuCYyhimhj9TjFj4o/Nw=	\N	f	d99772de-b3fb-4907-bbb6-729620b74844	Денис		f	t	2021-12-14	saenk_denis@mail.ru	d99772de-b3fb-4907-bbb6-729620b74844
610	pbkdf2_sha256$260000$iKR2rRF3XmmYd4f5ZeWDNQ$hBNP2MmJR+U2uA27Jmtkhj9fu6LHjpP7/DeYhjeNzeg=	\N	f	1b23f326-b91f-46b9-954f-1fe19dc5c28e	Александр		f	t	2021-12-14	dir@gnk18.ru	1b23f326-b91f-46b9-954f-1fe19dc5c28e
612	pbkdf2_sha256$260000$xdEXubUkqwAzUpNijnvEuh$Be0ZYfnBsEb6rHUJ0EHoVNEDRfSij5kHNGGH40bgzco=	\N	f	1586b8b9-11e4-49e9-9286-7f56862761f7	Надежда		f	t	2021-12-14	nadezhda-roshhupkina@yandex.ru	1586b8b9-11e4-49e9-9286-7f56862761f7
613	pbkdf2_sha256$260000$R1IBQw0ikYdyLsNVsmeEUy$ItAA0nIJTGOHRqfWYKiqESf6UPNZH3FQgiFUhBz0Bqw=	\N	f	5f14f662-0c7e-42e6-9863-23bc4ef80cfd	Анна		f	t	2021-12-14	anna_trg@mail.ru	5f14f662-0c7e-42e6-9863-23bc4ef80cfd
614	pbkdf2_sha256$260000$o8ZJJowcE8LvzQd0BCeT0B$B3FT/Uc61pCCpcx2zQWtKHoZLvzn92lqYJr/lLjLggE=	\N	f	751ca67b-872c-4eed-802d-43dd14da9799	Оксана		f	t	2021-12-14	o.khomutovskaya@yandex.ru	751ca67b-872c-4eed-802d-43dd14da9799
615	pbkdf2_sha256$260000$Wid10r21hRnmLNIzDWelWo$ufg1/Pub+zMvA6Q9bCSS9pm6yq0ezsntNEwm/r/yrls=	\N	f	0b8ecaf2-04a9-4936-8c9a-51d5259d6848	Анжелика		f	t	2021-12-14	a_leikam@mail.ru	0b8ecaf2-04a9-4936-8c9a-51d5259d6848
616	pbkdf2_sha256$260000$y4xMSKAJQzZ0L1HInzbKus$A5a3g/SK2kHiASV7bGnJWfFBX+kVuAbVerDDv6Ye1sE=	\N	f	1af505d6-0566-4a21-a75b-84ad7058fbab	Александр		f	t	2021-12-14	alexnika143@gmail.com	1af505d6-0566-4a21-a75b-84ad7058fbab
617	pbkdf2_sha256$260000$c2belTlLILnMFvrzr1ColQ$vR8Fqzf7nJFTjV3Cj5XEPEvahX7cQQe06d5anv11vpw=	\N	f	795b57cf-8f91-4253-a19f-d8844e841170	Сергей		f	t	2021-12-14	mon.ser2011@yandex.ru	795b57cf-8f91-4253-a19f-d8844e841170
619	pbkdf2_sha256$260000$b14LaJvEfMgt0UThiXfGVC$jxHqE1ejtBszZr/rYYIutPSTLjBQuhuIk3p8TZrUa+U=	\N	f	36a37c5a-baea-414b-89bb-e2dcb04157f4	Александр		f	t	2021-12-14	savalexbeast@mail.ru	36a37c5a-baea-414b-89bb-e2dcb04157f4
620	pbkdf2_sha256$260000$VBpRghec5LXq7IxoUKrgwk$wua4pNiKOfJSVHzx8z7xufIgF3a5zZn8RrA0rSr8Omc=	\N	f	dbdc3bca-f82d-4dc0-bd7d-f2eb09b3df58	Назар		f	t	2021-12-14	money600@bk.ru	dbdc3bca-f82d-4dc0-bd7d-f2eb09b3df58
621	pbkdf2_sha256$260000$yv7nypCOoUBRqfKiZjylUe$7wSz4z6+DeYn2S0fhYIdlp4wsHrgBgbeuUhoNlJnpaY=	\N	f	a536b0fd-cf33-47c8-9ede-851218d4e98f	Александр Владимирович	Слободюк	f	t	2021-12-14	alex-s-poison@mail.ru	a536b0fd-cf33-47c8-9ede-851218d4e98f
622	pbkdf2_sha256$260000$ghqiX9DdXqyNALCVSE6Cbv$8AFf+huWnnvh9gyUQsyELvLHj3pBrR2S48EuBz85jps=	\N	f	979e7400-b2bd-4e49-8069-fbf74a140ce1	Евгений		f	t	2021-12-14	atipaev-1111@yandex.ru	979e7400-b2bd-4e49-8069-fbf74a140ce1
623	pbkdf2_sha256$260000$TUxWUnnkTfUAfvvRWZXT3q$jNH6J7/8Oa/UKuk4oUsYUpwdanyeYJgtpE0UrxGKwn8=	\N	f	63f91b43-ac39-4766-a3b4-fd322f7a5f6f	Сергей		f	t	2021-12-14	sergey.astashkin@gmail.com	63f91b43-ac39-4766-a3b4-fd322f7a5f6f
624	pbkdf2_sha256$260000$HD0dHXunfIAmwdwJ08Wu27$SrJce3HBKxukEDgSUZeFUctazZPauQC+WP9yRjMd9eY=	\N	f	3e6cc3f3-87f2-43df-959c-fea7b2cdce9f	Павел		f	t	2021-12-14	p4velmix@yandex.ru	3e6cc3f3-87f2-43df-959c-fea7b2cdce9f
625	pbkdf2_sha256$260000$39SZq5rIO4GGd3kfENxcTd$/O1P37l+8ezNVuYv/btuuL/LKI9C8susDeAhH4wow84=	\N	f	b8c404ec-e075-4e4e-9def-9c7e8f4b829f	Раушания		f	t	2021-12-14	raushaniya_76@mail.ru	b8c404ec-e075-4e4e-9def-9c7e8f4b829f
627	pbkdf2_sha256$260000$RoqwQTaJTyfEejboV5OGfb$OcTxZZIu8cc776GvGmFvBZoGfZ7cNrMrm20Gjo0oJXM=	\N	f	08a87cbd-6dae-4c02-b562-fbef168b2998	alexander		f	t	2021-12-14	2001513@bk.ru	08a87cbd-6dae-4c02-b562-fbef168b2998
629	pbkdf2_sha256$260000$y3j5nOgv8T7FkLfg6mYcx4$bg1AThSu4dLDD4NkymFEqWNzSCazXGPHG+PtsBghHJo=	\N	f	6590e6dc-d894-4a51-afc2-eba7ee5b2b3e	Ольга	Седельникова	f	t	2021-12-14	sedelnikovaoy@mail.ru	6590e6dc-d894-4a51-afc2-eba7ee5b2b3e
630	pbkdf2_sha256$260000$pe7sjSwzLyG2oGM7t2H7Q2$vv7yRDKRGTZtD6SdC7Zgeqt8mT7bpjtpqN0ySRiUj4A=	\N	f	9dc9ed67-f845-4a71-bc45-27f4f36423d2	Nikolai		f	t	2021-12-14	prost_79@mail.ru	9dc9ed67-f845-4a71-bc45-27f4f36423d2
611	pbkdf2_sha256$260000$HfBBkZVR9CpL90oYqB5JF2$GMRKeFDEYMWLVweIfQJFz2cHl8SyxFbZeVk3CNu67rU=	\N	f	4c883fe4-4637-4a86-8f77-f71a07e37731	Дмитрий		f	t	2021-12-14	dumoh.kmv@mail.ru	4c883fe4-4637-4a86-8f77-f71a07e37731
626	pbkdf2_sha256$260000$hcgje0kBQZmtPbSMf1PDXR$thyMdog73Shh6Oasa7LpjYg80g/6zL/KWwJpV3hHNX8=	\N	f	457775e4-bb83-47ef-bfe5-05f1932f1b86	Константин		f	t	2021-12-14	kos_tet666@mail.ru	457775e4-bb83-47ef-bfe5-05f1932f1b86
604	pbkdf2_sha256$260000$d4jTvSuckKKMUayTSeiJRl$AAqhtxRAFY4MTpwsxherPjAzDQJ9cPNHN0rbxpnAXM4=	\N	f	110f5ea2-0fc9-4e8d-8713-35206a4dd36b	Игорь		f	t	2021-12-14	tokarevis@list.ru	110f5ea2-0fc9-4e8d-8713-35206a4dd36b
628	pbkdf2_sha256$260000$viBk2MdYhWbqjS2PMUekYO$ptk3R2mpa+t2mu4tOaYGVgZTg5/d1sRA4Sg/c5+vbQU=	\N	f	f70ec519-0030-4dd0-9514-e15978a38e00	Сергей		f	t	2021-12-14	armanax@yandex.ru	f70ec519-0030-4dd0-9514-e15978a38e00
606	pbkdf2_sha256$260000$089JH6bqrXXA34TuZdcq48$7VASrNs3sQ9+hlR8TwDS7WX9M42M9+nHOtBAR8kqjzE=	\N	f	bee17cb9-e0b9-4c96-bba3-b42ed8b0596c	Давид		f	t	2021-12-14	avetyan_david@bk.ru	bee17cb9-e0b9-4c96-bba3-b42ed8b0596c
631	pbkdf2_sha256$260000$MH6o44Nk6KwSjnhksUCTgb$ED/zPckSjPb4dP47XBNy4DryyAcOdBCZG0orSr8Ix5k=	\N	f	cf6d6c7a-b1d1-4b6f-b25e-ad90fae05749	Александр		f	t	2021-12-14	kirillov7@rambler.ru	cf6d6c7a-b1d1-4b6f-b25e-ad90fae05749
632	pbkdf2_sha256$260000$YwLqTCbBRUr4ZHDYtQ34T0$LRWakxBcMjhIZDg3aUWKKhuOUux6PIzETEyW4V2AaUI=	\N	f	ddbd1b90-56bc-4951-913b-1347a1c5b886	Александр		f	t	2021-12-14	almataev.av@gmail.com	ddbd1b90-56bc-4951-913b-1347a1c5b886
633	pbkdf2_sha256$260000$IMu1loP4S0e97qNZE4AGpu$ilZbhQPtpEtfbz4gZXqe7Rwr7ELBLLmhm0lY4FZNh78=	\N	f	1f10bc16-7761-4124-bdbd-27469577bd51	Андрей		f	t	2021-12-14	kreditko2@gmail.com	1f10bc16-7761-4124-bdbd-27469577bd51
635	pbkdf2_sha256$260000$D5qbyucndNtbiAjHpO5fps$d1iIIbF6jcrHvGH798oVwecy2C5FLEjUAHX+MTlULnw=	\N	f	52aba205-f31d-4399-9e64-8ef859bcb3f5	Максим		f	t	2021-12-14	maksim.sologub@list.ru	52aba205-f31d-4399-9e64-8ef859bcb3f5
636	pbkdf2_sha256$260000$o1Kikf1vOiLHh1asfWv4b0$23HEBqMAmEIqW49QBuDkeKaAN+Ftt1hSpjBWdyNA0WU=	\N	f	1cb9f7ca-36a2-446e-9c13-ef10e879c419	Сергей		f	t	2021-12-14	der_schlangen@mail.ru	1cb9f7ca-36a2-446e-9c13-ef10e879c419
637	pbkdf2_sha256$260000$IJJfJquWGt3eBFMh110umC$+kA+WHwMdGN977UCXLoSAAE5OWcsI0Z52DM9lSTTBTc=	\N	f	eb1dbcfd-d9c5-49d0-ac0c-9afbc4eb6197	Владислав		f	t	2021-12-14	328411@mail.ru	eb1dbcfd-d9c5-49d0-ac0c-9afbc4eb6197
639	pbkdf2_sha256$260000$znYZzcNGDezs0yXNwZzUlF$CFbEvyEDR3LnAu0WkSSMY4+xC2wIPl6B7pb5iF4U6wQ=	\N	f	c0e2c74a-a88b-4c31-933b-75a04001abd8	Дмитрий		f	t	2021-12-14	uryupin.d.i@gmail.com	c0e2c74a-a88b-4c31-933b-75a04001abd8
640	pbkdf2_sha256$260000$Vnzzbhy5EOTj2OnSMBytwW$8pTZ9S1xZI6EJkp2ccb+AzCEREbjHiNM9Iqmv+P9CNA=	\N	f	c8a83ae2-2a01-4fb6-9f71-81cea9651464	Никита		f	t	2021-12-14	mahov.nikit@yandex.ru	c8a83ae2-2a01-4fb6-9f71-81cea9651464
641	pbkdf2_sha256$260000$ejmZIZpsyf0FQ28UaT74uT$CPDmyBHs+7SRaF+IOzN2FW7cz9OrJvVqPVaxF6oaIVA=	\N	f	2187d2f0-0068-4927-ac62-3b8ca61b216c	Vyacheslav		f	t	2021-12-14	dvo86@bk.ru	2187d2f0-0068-4927-ac62-3b8ca61b216c
642	pbkdf2_sha256$260000$TnYBKVhG1yYSLiosJXQLOY$+QV7Vlt+ap2V+04qhPATW3LQKEFDBDVPeP+xPBp4QXk=	\N	f	ff241309-1d46-40a4-9971-a3999049457f	Сергей		f	t	2021-12-14	serg.fight@mail.ru	ff241309-1d46-40a4-9971-a3999049457f
643	pbkdf2_sha256$260000$6f1ysmnnwPUivK2uqrDo5z$zuuvH1Sc8ZfRWIMMukX1gzYKNN/Q0OueTvdJoGmZnC8=	\N	f	5e742a47-e7ef-4dad-bb19-c379e0f3ba62	Евгений		f	t	2021-12-14	gps_nav@mail.ru	5e742a47-e7ef-4dad-bb19-c379e0f3ba62
644	pbkdf2_sha256$260000$YIxUyP21LeubNCrzgNqOk7$0oHwfU2mJHn4BvEASS0ReSvs5NVcHNK3QZkvXIZD50c=	\N	f	bfb3294c-ab78-4e13-a80f-35fb50fe3293	Владимир		f	t	2021-12-14	va0707@yandex.ru	bfb3294c-ab78-4e13-a80f-35fb50fe3293
645	pbkdf2_sha256$260000$SNoiE3FUhzJyeOmeS0cqwz$lN8RBYnDOwQKi+ttMAdz//0hT3dI6Vb0FrehmRzYCus=	\N	f	74aa1055-43dd-453f-b589-014de76de3e8	Анастасия		f	t	2021-12-14	k.anast.evg@gmail.com	74aa1055-43dd-453f-b589-014de76de3e8
646	pbkdf2_sha256$260000$JLA7wtk9SeOZ8yTeNR8Wa0$sGY8P8l9sOanb39/t2pXJdarVgbhhjZ3zKWtZewglbc=	\N	f	aa9f0555-495a-4a3a-8b5e-31754559b24b	Тимофей		f	t	2021-12-14	tnuyanzin@bk.ru	aa9f0555-495a-4a3a-8b5e-31754559b24b
647	pbkdf2_sha256$260000$ioV6sXde45XwWdfLgBjU2t$Lsq3tnVec/B6NntuK4o7m6F9wsCMemJRM7tBqpc192M=	\N	f	6c0cc34b-514b-49c2-a452-d0e31335684e	Глеб		f	t	2021-12-14	gleb.prianishnikov@bk.ru	6c0cc34b-514b-49c2-a452-d0e31335684e
648	pbkdf2_sha256$260000$lq14dPm8vQORtaH8sWaQk4$8giNjyfpuiwvIIn8PqAP7uRKC40Wx2r6SzuJWC+FhrI=	\N	f	61e7dd10-97c7-49bc-9efc-954e20d50406	Олег		f	t	2021-12-14	leksherovos@gmail.com	61e7dd10-97c7-49bc-9efc-954e20d50406
649	pbkdf2_sha256$260000$g7yAXSqEoYMJgdPMo8bQhp$VXgEGI3VcfSNO1mGd4/GAsVr5+MULOMmcAqtz4tSivs=	\N	f	e3d7c245-a2ef-45d5-8fb6-17d1effff728	Сергей		f	t	2021-12-14	bernis@inbox.ru	e3d7c245-a2ef-45d5-8fb6-17d1effff728
650	pbkdf2_sha256$260000$bz8XPBOnMvSasqC2MrJDgg$qImq1Moq5TrOC6UGA+4Y04+w/56g/Eb1xRGwpb7rQvc=	\N	f	d6f1a7c1-0d23-4579-9fad-23ff83a559bf	Евгений	Инвестор	f	t	2021-12-14	porollo88@gmail.com	d6f1a7c1-0d23-4579-9fad-23ff83a559bf
651	pbkdf2_sha256$260000$h5XptqEV1moVWSc4GfBPfM$sIhpswzjucr0458hnO8NEgzJ6RiJnkVEGKtWZtFQDt0=	\N	f	3def4ba6-4b60-4fe2-aeb1-d078eac8c645	Даниил		f	t	2021-12-14	veroniyz@mail.ru	3def4ba6-4b60-4fe2-aeb1-d078eac8c645
652	pbkdf2_sha256$260000$cd3nIMuLnPlS8JIaGfP8z0$u5IyJqieFr638t/0uyMEn1NZCPU/M32Qa2gq9gAaohA=	\N	f	2c398659-0899-4d43-9008-6e7fd2445134	Алексей		f	t	2021-12-14	popov25av@mail.ru	2c398659-0899-4d43-9008-6e7fd2445134
653	pbkdf2_sha256$260000$Jy4gBCzfrzBbE4poBsrQS6$V7iunoaf++86uHBDDqUngqB0mvpnpwvssxMBCbi31D0=	\N	f	da7ee902-b853-45f5-98c6-24f0ef12f7be	Валерия		f	t	2021-12-14	val5217@yandex.ru	da7ee902-b853-45f5-98c6-24f0ef12f7be
654	pbkdf2_sha256$260000$3cx0e886Gbnz7djsKIXJDk$9lBCESjL0cy1rPgsCotRHr2//0YGwA4N0pbgYciXEkY=	\N	f	7101a3a0-47c0-4c7c-8d0c-9636450928c7	Никита		f	t	2021-12-14	ntoss92@gmail.com	7101a3a0-47c0-4c7c-8d0c-9636450928c7
655	pbkdf2_sha256$260000$2FjfbxEHK23VHryurXZRKC$rzhm0u5ZVA5fyR1DhAh+BalmlaqKWAv1u+uWw5H2QN0=	\N	f	a581ae68-b02f-4490-8f7b-a533aa5ca269	Сергей		f	t	2021-12-14	msddv@mail.ru	a581ae68-b02f-4490-8f7b-a533aa5ca269
656	pbkdf2_sha256$260000$OCxvG1TofmIDiF9iAWZ2mI$EJb6/cTeyaxnUWEBrR489rdOTXgpy4qaErRP3/ym8Zk=	\N	f	60b113dc-7bb5-40ed-b500-8cd5506977a0	Сергей		f	t	2021-12-14	tapkin@gmail.com	60b113dc-7bb5-40ed-b500-8cd5506977a0
657	pbkdf2_sha256$260000$iZiYVJdosB1n9tzSIMom8T$K2s2530GiuW7RtMUHAhASBiInC3psZ7cDQDHUggJMqY=	\N	f	9b716b72-8973-4498-9164-18ae87eb15a1	Иван		f	t	2021-12-14	trofimov1843@gmail.com	9b716b72-8973-4498-9164-18ae87eb15a1
658	pbkdf2_sha256$260000$wY1VQL8sWhtwwkk0TFFkzu$CKKZCMZOilE6jcwCYYyNqLZCgaZfQE+hVu+Fq0Do+qM=	\N	f	4193e211-ed6d-45c6-a844-c3a8168cdb7f	Федор		f	t	2021-12-14	fborzov@mail.ru	4193e211-ed6d-45c6-a844-c3a8168cdb7f
659	pbkdf2_sha256$260000$1JshHk4z4f54DAyHuOhY4M$oQcEe67E+jVprjmrHCov3RJ1IhDnEW94cpInXlz/W80=	\N	f	6877f696-ba64-4472-b556-59b019cdd442	Алексей		f	t	2021-12-14	aldon@rambler.ru	6877f696-ba64-4472-b556-59b019cdd442
660	pbkdf2_sha256$260000$LTSEVmku2zgE6gPP5QfHpS$uQWa01yhykZgKNot7DQu+WjS7fth679rLqYjPm4Ooaw=	\N	f	22c133be-cbfe-4aed-a638-1fefee2c9845	Осмаева Элеонора Витальевна		f	t	2021-12-14	eleonoraosmaeva@gmail.com	22c133be-cbfe-4aed-a638-1fefee2c9845
661	pbkdf2_sha256$260000$dPDpLSSAv0ocd5K7hyjGW1$WqZFe4KQxsHv9wVvrvuACHx6bizxVSa9puQrevcEHUE=	\N	f	d5d692c3-0940-45d1-847d-a33343967bc6	Алексей	Зинкевич	f	t	2021-12-14	alex-zinkevich@yandex.ru	d5d692c3-0940-45d1-847d-a33343967bc6
662	pbkdf2_sha256$260000$d6FZeOyWKF3eTTySbPbTYq$+rI58q6G8JazsGkDIP+I8w0vFvSr9Z38Q9EWcPKMEno=	\N	f	91dd81ac-0df2-4009-b04d-8fa7e56961e7	Максим		f	t	2021-12-14	maxim.schelkanov@gmail.com	91dd81ac-0df2-4009-b04d-8fa7e56961e7
663	pbkdf2_sha256$260000$gjveItalfDJBoFj35zVmSj$3vBZCxr5BTsbJXSIue5jvZeuolZL9tGLUw5Ek0WL4eA=	\N	f	aecc561e-a89b-44e0-9ac1-8257e59eb80e	Виктор		f	t	2021-12-14	2811414570@qq.com	aecc561e-a89b-44e0-9ac1-8257e59eb80e
664	pbkdf2_sha256$260000$kbTLWUpFR6n8vMDHL3knP1$KcEeoUky5lkCaESK2+OG7fQY/wRYVfvIzgmFsLmPy+8=	\N	f	bcdb77f8-70de-4446-bba1-5d6e2b197261	Максим		f	t	2021-12-14	gl.borkus@gmail.com	bcdb77f8-70de-4446-bba1-5d6e2b197261
665	pbkdf2_sha256$260000$F4noQTXBT4pFwT0b5lKMLH$I3sdQKv4A6EAEYQWMzfIgt7PYdyj5o8Z1EM1pwS1aqM=	\N	f	14cdaa9c-c795-4876-8dd2-10820cdae1d7	Александр		f	t	2021-12-14	alext-800@yandex.ru	14cdaa9c-c795-4876-8dd2-10820cdae1d7
666	pbkdf2_sha256$260000$Hv3tlnAfkolOEfCBv2sS6e$aMchDqGkz+Bj+RGq02LWljhd3xQq6byrEsIBZpmNWo0=	\N	f	59cb46d0-cb5e-4de8-bcae-0fff758af417	Александр		f	t	2021-12-14	753rfv@mail.ru	59cb46d0-cb5e-4de8-bcae-0fff758af417
667	pbkdf2_sha256$260000$TxvfaGwHInYwgjeitOxE4y$QlfYgpbW2Dsg9wBjxZg3LekSXCaHwtJsne4TqK5r9PY=	\N	f	c71a05af-fca8-443e-81a7-daeb5c0420bd	Роман		f	t	2021-12-14	zumeron@gmail.com	c71a05af-fca8-443e-81a7-daeb5c0420bd
668	pbkdf2_sha256$260000$6qx4sgFBDUazEOHUO4wj5P$bR6whKdKj+Olish2qeMR9V/pliWBbAMkpC3cMn6vFYQ=	\N	f	49cbfbce-93ff-4b5d-9548-e8c773b0a8d5	Елена		f	t	2021-12-14	e.pontrjagina@mail.ru	49cbfbce-93ff-4b5d-9548-e8c773b0a8d5
669	pbkdf2_sha256$260000$WdFQXWTyLSdK4XkJtmA8Rl$PW6/W/ATeSqg/7T9fWnh5gjSt/c4OJp6+h6lWrP9vVU=	\N	f	8540e703-85c4-4a44-9f40-81e69bf38eb5	Кристина Цветкова		f	t	2021-12-14	kristi0296@mail.ru	8540e703-85c4-4a44-9f40-81e69bf38eb5
670	pbkdf2_sha256$260000$q1yxWACPQFIqolGMbEG6tz$l6YIOZ7/Gpi5qDV4oPzaWUyDNIuU5RxK4EpbUTABUhY=	\N	f	b666f303-5945-4516-baa8-12704289ed3d	Василий		f	t	2021-12-14	pvssrzn62@gmail.com	b666f303-5945-4516-baa8-12704289ed3d
671	pbkdf2_sha256$260000$OhZD4Vnk0QexX6z0bkn8cJ$lPQftYxWj+9H1zDT29rfaJcDZ4Qnir0XqMciL3K0F40=	\N	f	86d6a4a3-7994-40a8-8d97-ae10dac0eec7	Александр		f	t	2021-12-14	nan.1986@icloud.com	86d6a4a3-7994-40a8-8d97-ae10dac0eec7
672	pbkdf2_sha256$260000$zwXKCdaYifXEmYzbkgz4jp$tMAEeliMyHnLtW4/Rk3+rdqI4bxvOafBgilFPUX9Yds=	\N	f	d19d7e61-4e4c-4c32-b5c5-51a09651b732	Станислав		f	t	2021-12-14	mr.isaev.stanislav@gmail.com	d19d7e61-4e4c-4c32-b5c5-51a09651b732
673	pbkdf2_sha256$260000$JXyiyEh7ZDYmXNHkfiQxfL$k1U5y6ZhoFwdCSNxSsFiIPRGzD/hkFXEDaNkfzC8NkE=	\N	f	082eefc5-2960-4bc6-acc6-1d7f1d2a31f7	Никита		f	t	2021-12-14	ten.nikita2012@yandex.ru	082eefc5-2960-4bc6-acc6-1d7f1d2a31f7
674	pbkdf2_sha256$260000$jWXKLERlhgjIHjZ2iYPFLO$RYm+lcWbfZMQ2igs45iJekkr3XeF6OzsqKnhMNYZn1s=	\N	f	89e074fb-6f3b-4634-a1db-f93edfd20a07	Николай		f	t	2021-12-14	maxankovv@yandex.ru	89e074fb-6f3b-4634-a1db-f93edfd20a07
675	pbkdf2_sha256$260000$40AmoW8GnSEwYtVX3zLc27$Lav4C+Zg//8eMRaNrnLbjrhSWs7Hankad92DIgUk4vQ=	\N	f	a0f66146-251e-48f4-8d2e-ac3b9fcab698	Никита		f	t	2021-12-14	nikita.veselko@gmail.com	a0f66146-251e-48f4-8d2e-ac3b9fcab698
676	pbkdf2_sha256$260000$zLseb3sY4JLdzrcOIaSJ9a$EbYdffNlrrJXU3Al2DtT51L9MbbJpOsmUFJ8nIDSirs=	\N	f	f1e1dc11-b9d4-4dca-a973-d3fc164dafaa	Дмитрий		f	t	2021-12-14	dkustikov@mail.ru	f1e1dc11-b9d4-4dca-a973-d3fc164dafaa
677	pbkdf2_sha256$260000$sYNHKKC2FmZxrgvn92J8fN$E9b/2tKflheEOuQBRlN9bwc5viq9urm0Wt6cgJ+7PrM=	\N	f	6af17fce-726c-4e2a-ac50-79fb64c576d5	Андрей		f	t	2021-12-14	slayer003@mail.ru	6af17fce-726c-4e2a-ac50-79fb64c576d5
678	pbkdf2_sha256$260000$jEUZM5F1tnHU3h8BNuKOLF$3rshk29a3g/v00B5cQo+w+gSEvxaSOpGhqEwFYEXCTI=	\N	f	41cbc214-7e12-4edf-ae8b-f08e32415a88	Иван		f	t	2021-12-14	mag87@mail.ru	41cbc214-7e12-4edf-ae8b-f08e32415a88
679	pbkdf2_sha256$260000$eluy8AtEOuM0PS6lN1l42N$p/mjl6waElk1cmDENm2EsS52mn2qAefn1HT/4v39TB0=	\N	f	e8678dd8-be67-448b-b9db-fe915af1760b	Матвей		f	t	2021-12-14	matptushko@gmail.com	e8678dd8-be67-448b-b9db-fe915af1760b
680	pbkdf2_sha256$260000$oFw8KJaeRQ1nZkQCkwPL1y$EpA4/c/KS2hB0wxl0RT8nAtRhZtGFzmk58svLjca1ck=	\N	f	580308a4-d27a-4bfa-b232-c96b9dfc9a25	Павел		f	t	2021-12-14	rs_mo@inbox.ru	580308a4-d27a-4bfa-b232-c96b9dfc9a25
681	pbkdf2_sha256$260000$obRFytVa9apAZnxIFbcllU$KtIloMXpJeRV2UofpVSjQg1uyJta+PYcoxuSuhzf+Tg=	\N	f	1e71e953-f6a8-4c6c-b3f5-4ff616f9dbde	Линур		f	t	2021-12-14	sattar065@yandex.ru	1e71e953-f6a8-4c6c-b3f5-4ff616f9dbde
682	pbkdf2_sha256$260000$gdx95PvIrTIPr0x7cRrUoj$ZYvP0e4iDvQvfzoei60pZt/mGeGJ5TEB+K+GJneDR5w=	\N	f	41b68528-a895-4c0e-8e35-edd81802784c	Алексей		f	t	2021-12-14	divin6598@mail.ru	41b68528-a895-4c0e-8e35-edd81802784c
683	pbkdf2_sha256$260000$yGVGIFlcaPswzC9aNJNcse$d/8dsentpXRe7LbUI9bOcnoROy9m1FS8K9xWh8ZVmUs=	\N	f	7730a5b3-2818-468c-a1a6-c7c0ad13f93e	Сергей		f	t	2021-12-14	serg2002z@gmail.com	7730a5b3-2818-468c-a1a6-c7c0ad13f93e
684	pbkdf2_sha256$260000$UH5z4kcAuWH99UDQGmCBgL$Q6FbIe7YYb9DQImnCyvrjXRK5ftGT1gHJl6bjURB218=	\N	f	cee162e3-a134-4b25-9d74-4fdee6d9bc8c	Олег		f	t	2021-12-14	o.v.makeev@gmail.com	cee162e3-a134-4b25-9d74-4fdee6d9bc8c
685	pbkdf2_sha256$260000$xF0e8BIVybXSunKcQfJDHx$GfHem1ve+20dIaIn0tJJBo6IPb6VWKo8vOpqzx9592I=	\N	f	a546a083-0f2b-4c02-b297-6146080a6723	Денис		f	t	2021-12-14	dimp21@mail.ru	a546a083-0f2b-4c02-b297-6146080a6723
686	pbkdf2_sha256$260000$AQLMXm3tYxlfoOWbvIVIxh$LoxFQ+OIMT6wNqrR8kQJfG/9g89YcOKfPZ+5FLNoNNo=	\N	f	66fb02e9-f039-43d6-a126-0983a8db0f4f	Юрий		f	t	2021-12-14	borivets@mail.ru	66fb02e9-f039-43d6-a126-0983a8db0f4f
687	pbkdf2_sha256$260000$pq9KpEenUVv01FTYJLSZJK$KH9svodW8lKyO1Ctg+teaj0d8C6oXY+2n/o3GO+Bf/c=	\N	f	49150380-2d5d-4527-88a8-7c0a424da25b	Александр		f	t	2021-12-14	shirokoff_alex@mail.ru	49150380-2d5d-4527-88a8-7c0a424da25b
688	pbkdf2_sha256$260000$fJmU1LT65TtmYA5Ao3lN85$2n7o0y76JJRWohKoYcjaWR8xLCHqbGHQzJQnZFuLjqs=	\N	f	f2581138-634b-4172-a12b-3c235f4acebf	Алексей Шульга		f	t	2021-12-14	morion25@gmail.com	f2581138-634b-4172-a12b-3c235f4acebf
689	pbkdf2_sha256$260000$1Wix34D9qg7dQ3cun3p8tH$Z+q93QWIE9+TuOrDP73kWfPw0Cl82VjFZrnWyTqrYvw=	\N	f	0e0138ff-a63e-4d56-a470-1a4358968c94	Кристина		f	t	2021-12-14	kris-tinka@inbox.ru	0e0138ff-a63e-4d56-a470-1a4358968c94
690	pbkdf2_sha256$260000$kAmNmYdOE4umzNkXP3iSxh$FaqXenX5hMg23gQh4lQUI2JvSJpFn+fkQNTy3VPrkVk=	\N	f	8917962e-906d-4e13-aaae-a5804bfced9c	Роман		f	t	2021-12-14	rykovskiy_r.v@mail.ru	8917962e-906d-4e13-aaae-a5804bfced9c
691	pbkdf2_sha256$260000$JAAZOYpatDQcZt6wq9H5ir$oLNk/GSzezMtx2GyTfImNNnw/NQS0vOkOq2S3wVMmtI=	\N	f	2efebe10-d9be-46df-ab96-7d47712069ca	Антон		f	t	2021-12-14	evlanov.anton@gmail.com	2efebe10-d9be-46df-ab96-7d47712069ca
692	pbkdf2_sha256$260000$slUV2UtqQAbG6VPBLgG2fj$n7qJ/Q3YQHcpUmmMXeuSV1GZzQatmIyLtKcDxmZf/rs=	\N	f	ca8ba6b2-ec15-4eec-85fe-cb4e8ccf110b	Евгений		f	t	2021-12-14	zheka19ya@mail.ru	ca8ba6b2-ec15-4eec-85fe-cb4e8ccf110b
1578	pbkdf2_sha256$260000$cIgOHyAt9LZLYmccUuyC6c$gvtEpbuzJav4vwQC0P360P0PfDlJKozK0YN65jn/k/M=	\N	f	01c63b26-6b37-43e3-b6f5-341c5b938831	Игорь		f	t	2021-12-17	gogenot@mail.ru	01c63b26-6b37-43e3-b6f5-341c5b938831
182	pbkdf2_sha256$260000$NN82HEfQqmnCOMQw9hKoQW$j0dgrOPAzl6VuRGrkGUHqZLLG+Rpf+eqt/f+t/VyiPA=	\N	f	27b95673-27bb-442d-b9fd-d33d15e72ce6	Даниил		f	t	2021-12-13	drachevd@gmail.com	27b95673-27bb-442d-b9fd-d33d15e72ce6
693	pbkdf2_sha256$260000$gOGmcrv08y6XQ3via7TLxx$JU8JrjvwVoQKnRvDJis4IDG1mFKbcSTPA7lwJamCYyA=	\N	f	57dd18bd-737f-41dc-9c52-8eab98ece369	Евгений		f	t	2021-12-14	8030068@gmail.com	57dd18bd-737f-41dc-9c52-8eab98ece369
694	pbkdf2_sha256$260000$X693b94n8kb0E4KNsQJgGx$nLyRJUg5g26WTGRsFwPY4ty09om9hpFlItZQOqc9xTw=	\N	f	8f286133-e054-4bbf-a66d-1878d3b80098	Евгений		f	t	2021-12-14	danilkin.ev@gmail.com	8f286133-e054-4bbf-a66d-1878d3b80098
695	pbkdf2_sha256$260000$VQP6U6Yz4p2jZfja7tKBp0$TuRhpdRgjZ1FtzGoe3BNQKr/0Pn5QnceUFF8ujA7LYU=	\N	f	864f1ce8-86ee-42c4-a216-aa142ce4fd7b	Ярослав		f	t	2021-12-14	newtrogik@gmail.com	864f1ce8-86ee-42c4-a216-aa142ce4fd7b
696	pbkdf2_sha256$260000$Eaw0UFRVuYtbgUqdJiHBUn$16D3G2I0urBkwfo32VC6Pwtm3ZGlgtjmiGhHAGzXS5U=	\N	f	aa5e16b4-42f4-4a09-8e7e-967e506d549d	Василий		f	t	2021-12-14	katkov.vasily@gmail.com	aa5e16b4-42f4-4a09-8e7e-967e506d549d
697	pbkdf2_sha256$260000$8SVu6jBSnuMEwAQCojBq2I$AKuacXLQtxabYoYIwTRNKRcz7gC6C7VR+BAThOAUn2g=	\N	f	574e32a9-8fc8-4ff2-ab1c-4054936b961f	Игорь		f	t	2021-12-14	pechkurovir@gmail.com	574e32a9-8fc8-4ff2-ab1c-4054936b961f
698	pbkdf2_sha256$260000$fIynWRJvH0gZ9E0ywaXcxU$aAQlP6iSWDds2g6SBop0q+dkPSrFTed9kPwNyZ8fHHs=	\N	f	5dd43703-3015-4b1c-bb28-6ea5dd76c02b	Евгений		f	t	2021-12-14	hodchenkove@mail.ru	5dd43703-3015-4b1c-bb28-6ea5dd76c02b
700	pbkdf2_sha256$260000$bmUb5KzbDZDzBjvBTzLbhi$zplwvZ4tlS7PkwPWElrchvIGCsXxaV1w34VzlGWwwv8=	\N	f	c59a5584-2920-4f8f-b1b6-37d494828c5f	Павел		f	t	2021-12-14	9312544@gmail.com	c59a5584-2920-4f8f-b1b6-37d494828c5f
701	pbkdf2_sha256$260000$ySHmtWtNSVkeAh0UvPtgPh$OJFgEcAdUxgc6MDZG/XYnRESlkN2u+6VQcYOIkqyRE4=	\N	f	bde5f44e-3bb9-4d36-b1cf-5b77eb64c85c	Инна		f	t	2021-12-14	inna-exy@yandex.ru	bde5f44e-3bb9-4d36-b1cf-5b77eb64c85c
702	pbkdf2_sha256$260000$kNRjdaKRypIr3TwHwCTwa8$wK35Yip2b9HYQnXwGezQkMZQEDQEUcCg9SMcwlbSU6A=	\N	f	5ea3d1c4-569e-4f11-815b-3bf3379a0e8e	Сергей		f	t	2021-12-14	s050970@yandex.ru	5ea3d1c4-569e-4f11-815b-3bf3379a0e8e
703	pbkdf2_sha256$260000$SK0IpGcu3cHtLmiIXTape0$aMH6xoNtcYNY0axaBJlq/ly4WdK17vY28D5FoL7AtmQ=	\N	f	72815712-cf9d-4290-9c91-96ee8d73be22	Игорь		f	t	2021-12-14	tish.igor2018@yandex.ru	72815712-cf9d-4290-9c91-96ee8d73be22
704	pbkdf2_sha256$260000$MnyRwegUOnv5j8PZQZo4S8$GAyw1OA9mWnl52RwV9lv3moxq1Bx6gA/zofjQ3Sdhi8=	\N	f	8d6f4d3a-abca-45b2-b5dd-297140b2b35c	Андрей		f	t	2021-12-14	gans666@gmail.com	8d6f4d3a-abca-45b2-b5dd-297140b2b35c
705	pbkdf2_sha256$260000$ccCNqoGWPl5NnArKoNYFq1$W/GuC1qRjgXEV+EtRtq305ckyZdyGxoDY6IvJ2m0Ouc=	\N	f	a41f7ba2-0ab6-4fbc-8ae2-abc4fc9144cc	Илья		f	t	2021-12-14	klg_2022@mail.ru	a41f7ba2-0ab6-4fbc-8ae2-abc4fc9144cc
706	pbkdf2_sha256$260000$ArG8ric9viUSPhVyWRFFPp$8AM5tkgLdkBpKrwl+nS81bl7LfhMZmoxOD2bahEglB8=	\N	f	d824cdc1-48f8-4b94-9349-eb8dc10a3ea1	Сергей		f	t	2021-12-14	sergeerofeeff@gmail.com	d824cdc1-48f8-4b94-9349-eb8dc10a3ea1
707	pbkdf2_sha256$260000$tefOGadblMwNp3U4mYj9xB$F7I96ugSpyIY0LW+Z+US0um/xdSQEJgofPc62I1aWAA=	\N	f	ccde52e1-ca91-4bad-bffb-6fce76b21d8c	Юрий		f	t	2021-12-14	kredavto@mail.ru	ccde52e1-ca91-4bad-bffb-6fce76b21d8c
709	pbkdf2_sha256$260000$MQfZaRYfs02IAKae8W7TSW$Fca67SyeWKJzQLGVvCqZl4ajdYxla3jlJzWPAOieiiE=	\N	f	138f2fdd-79ff-4397-a1f2-546151ba603d	Святослав		f	t	2021-12-14	svet_nikylin@mail.ru	138f2fdd-79ff-4397-a1f2-546151ba603d
710	pbkdf2_sha256$260000$k0JaHmfSoiHT2an6WtsCqK$l5vwRuqXZ98MBGt1iw0xvYn2Wf7zradcLkJnDW1KN08=	\N	f	89f59e4f-101b-4262-be59-6e5ce2bbe693	Анатолий		f	t	2021-12-14	evgazhukov.a@mail.ru	89f59e4f-101b-4262-be59-6e5ce2bbe693
711	pbkdf2_sha256$260000$PkPNh3kIO5XlQLP0AFGLb0$0ygvOocmN8G9bq+fF36fnAimKOQitWqhfAv7wPCcLnw=	\N	f	92771554-ec7a-4590-8eb1-3cde56429c3e	Илья		f	t	2021-12-14	bogachev@bk.ru	92771554-ec7a-4590-8eb1-3cde56429c3e
712	pbkdf2_sha256$260000$CGxmKhozOwfOv27uDhQ7EF$jmLSAzL4coEcSNmWOYPBKcJ+bJySM1CPmGmF6LA/XUo=	\N	f	3aaec293-5aea-47c5-a306-86e112465b11	Сергей Петухов		f	t	2021-12-14	petuhov_sn.ckk@mail.ru	3aaec293-5aea-47c5-a306-86e112465b11
713	pbkdf2_sha256$260000$AbS3RxSaBgqcVPHBjjZCZ2$PGBfPJSJfJxOQafzjaLbYyvU0SvIhL0JMWH6rymVOks=	\N	f	a6b38070-1df1-4c85-96f8-d0a480e99399	Артем		f	t	2021-12-14	dzhingls@rambler.ru	a6b38070-1df1-4c85-96f8-d0a480e99399
714	pbkdf2_sha256$260000$AfY2khl6JQ277YamRB50b8$MBmd5miEUHlKITBbFbZSf9UxXsEUHTGks5jmOQrwEvE=	\N	f	1559840d-5777-4d94-9617-ffe73bedbad7	Владимир		f	t	2021-12-14	nazarenko@vlg.saturn.net	1559840d-5777-4d94-9617-ffe73bedbad7
715	pbkdf2_sha256$260000$vGYwqzliM3vM1ufq9m4bAB$U/FEJ75tdbK/6VmZDiT5O7G5EW5W7jHb0YFvxujAFAQ=	\N	f	cf50dfd7-83d0-4d5e-844b-26af3da192f6	Евгений		f	t	2021-12-14	137356@mail.ru	cf50dfd7-83d0-4d5e-844b-26af3da192f6
716	pbkdf2_sha256$260000$aDLCZg9esPFPxI83RTgKY6$0dqsK0lJk1yvEFgZqsqJ7i9Tees9Rd3AxaahbdcVEdU=	\N	f	337c0c14-4eba-4fb8-b32c-15128626578d	Артур		f	t	2021-12-14	aaf7@yandex.ru	337c0c14-4eba-4fb8-b32c-15128626578d
717	pbkdf2_sha256$260000$OvHBona2Y2Rs9xp0mkUlDP$tx9R/RcvZqJML/T7lvuPxmobvSxL2v+uxEWJw7wDe+U=	\N	f	76a518da-bcb8-41f4-8127-ba34e9e8a58d	Никита		f	t	2021-12-14	nikwee@yandex.ru	76a518da-bcb8-41f4-8127-ba34e9e8a58d
718	pbkdf2_sha256$260000$B5WoLgZKpxsoe7qgswujEF$nyEutOTOSw2HCOL3MV2sZffsPgAmiCC+8hNSxkuQYTI=	\N	f	f6e46208-51f5-48f6-b256-e28f10f82c4b	Дима		f	t	2021-12-14	andmitriy25@gmail.com	f6e46208-51f5-48f6-b256-e28f10f82c4b
719	pbkdf2_sha256$260000$a0BWI74InAmYZXl9NxaOuu$LZ0fiE5byAu20SLzSoQPbnfu3Koe96BFR3FHC13/xvw=	\N	f	b1cd9a52-61b6-4aa8-a79f-46e9cc56d723	Никита		f	t	2021-12-14	bogdanov_n.s@mail.ru	b1cd9a52-61b6-4aa8-a79f-46e9cc56d723
720	pbkdf2_sha256$260000$nuPCtiC49XIx0JQSUGMDMf$cj3pkm8OLQDFggNquWW6CJ0+V/+dcZD3BOCUkugbA1w=	\N	f	58b2c6f0-7db0-4edd-96cf-d8b262a1d9d9	Ольга Копылова		f	t	2021-12-14	olik.ko@yandex.ru	58b2c6f0-7db0-4edd-96cf-d8b262a1d9d9
721	pbkdf2_sha256$260000$XXvP51xigA89HPsHDMIBXj$VyCxQKgKhg0DwLlz+5MdoKxMDDyRetuIxWXXYpk5yS8=	\N	f	1b1e946b-a250-4cf9-8e0f-6a0357c5c384	Рияд		f	t	2021-12-14	riadik1991@gmail.com	1b1e946b-a250-4cf9-8e0f-6a0357c5c384
722	pbkdf2_sha256$260000$gBOLkzd5r8ubnY9JA8YqpV$uBYovsUPdBFGBvLnsd1It/AWjxWT+qtJi2l4Zi5AbQc=	\N	f	47962d5f-bed8-431a-8328-861400b7bc8e	Вячеслав Доронин		f	t	2021-12-14	doroninvg@gmail.com	47962d5f-bed8-431a-8328-861400b7bc8e
708	pbkdf2_sha256$260000$s2y1E2L7fCNUfqt7C8nn6i$xKPz5yCrCiBKvtYSnKDv90xR4xUKYahQQaU58OGpkBI=	\N	f	636f77d2-f491-4cba-81d4-0b16fb3f9caa	Алексей		f	t	2021-12-14	lexx7979@mail.ru	636f77d2-f491-4cba-81d4-0b16fb3f9caa
723	pbkdf2_sha256$260000$payNl9Q8e0NCZNoQerSbR7$Ep+90jY5EE141lim4EeiBS6fq6x3xlqJe1L2xT1dZZ0=	\N	f	4deadda1-270a-4b22-97a1-d41be5bddbbf	Никита Владимиров		f	t	2021-12-14	nekit-98-region-96@yandex.ru	4deadda1-270a-4b22-97a1-d41be5bddbbf
724	pbkdf2_sha256$260000$a9r2PnY5Ox85HKTjj3foA7$6CclIzv6WdUpWhZi6Yx3KawhWGlFrN/xSjAwsh6ELLw=	\N	f	86ce8ce9-0105-4f39-94a7-dfa4fa3747d4	Александр		f	t	2021-12-14	aleshnicov@gmail.com	86ce8ce9-0105-4f39-94a7-dfa4fa3747d4
725	pbkdf2_sha256$260000$aXgDFM6yksfnn1VPfvuOHl$nKCagm9l0moBUoR75w5V4m6FMSODAz7oXCNkzZUXbSc=	\N	f	ac84c843-9c63-4196-b3e2-8b2b96fbb72e	Дмитрий		f	t	2021-12-14	dmi-lovygin@yandex.ru	ac84c843-9c63-4196-b3e2-8b2b96fbb72e
726	pbkdf2_sha256$260000$R6Nx9zXY5ygldPY0uHRXzP$IbCn4a3thQXBAKlpv4mtteXPKRuideIZJcagtgFkkjU=	\N	f	611f29eb-8773-4423-9439-180e0af81bea	Михаил		f	t	2021-12-14	z9992141382@yandex.ru	611f29eb-8773-4423-9439-180e0af81bea
727	pbkdf2_sha256$260000$MkAIR64VhQSD8EK6CHJBTu$pFQDSE+Kg1pyvuXkFUxwN9wy4HxuX7oYdRK913z3k2I=	\N	f	a89a07fa-ae2c-4c84-88bd-cbe0f8835173	Артем		f	t	2021-12-14	gerasimovt@gmail.com	a89a07fa-ae2c-4c84-88bd-cbe0f8835173
728	pbkdf2_sha256$260000$3VRBPQFOyEwK4mmp8o6uDE$/FsEMjo4jRE99RBDjkOI+deuMprJZ+lxmbC33FAMElg=	\N	f	d611aa9e-32d2-4505-9022-51ffee70df64	Александр		f	t	2021-12-14	aglarionov@gmail.com	d611aa9e-32d2-4505-9022-51ffee70df64
729	pbkdf2_sha256$260000$sNZnWPcTjW5pqqaXxcWr5L$wGqILY0mjJfzdk16kYT4n7dqRMaZvOCB3B+gosIMeP4=	\N	f	618347e6-e4ed-458b-919c-9375f01943f8	Александр		f	t	2021-12-14	abrosimenkov@mail.ru	618347e6-e4ed-458b-919c-9375f01943f8
730	pbkdf2_sha256$260000$ydVVVkF1d19fL9tSiwJ3Dh$whBDRP8ewVavr2asvMakep13Mm+iZdICjK25uI9zlgk=	\N	f	8ca30e66-0d24-4c9e-b5d7-9b131359f638	Денис		f	t	2021-12-14	denis@modific.ru	8ca30e66-0d24-4c9e-b5d7-9b131359f638
731	pbkdf2_sha256$260000$QTNV7VDFiMFjjsHV36abo6$9dbzOMKcuOopVLpCm9TnIX2ujBQw9WJ0iQCQqZxFc+4=	\N	f	c174eaa8-3b76-4785-9efc-aa845b1cbd8a	Юрий Лукашевский		f	t	2021-12-14	yura_palace@inbox.ru	c174eaa8-3b76-4785-9efc-aa845b1cbd8a
732	pbkdf2_sha256$260000$1VUgKxe9wtuj3m25yRMF10$Qpfbb8xc/4YW/32UJHjUzgzpcvoaJ5SEYgsDuIj07nM=	\N	f	e93760a1-ecfa-4b9b-99bf-835d6200d775	Антон		f	t	2021-12-14	now.anton2012@gmail.com	e93760a1-ecfa-4b9b-99bf-835d6200d775
733	pbkdf2_sha256$260000$90WzlemCYTNDVY8vsR68xy$4q4FAE4uqtXjPF03hg2+DUN8YcBOY8SaoydM/3AtLAM=	\N	f	27bfd36b-998b-4325-9025-3c4eaa4cf419	Садовников Кирилл Александрович		f	t	2021-12-14	d4rkm3z@gmail.com	27bfd36b-998b-4325-9025-3c4eaa4cf419
734	pbkdf2_sha256$260000$uvu9awRwLDnWLtPrUOrd2b$H03+mufArhnn3LtOjyz9q2EAaFKFwYhVVO65DQ5utHw=	\N	f	0acfa808-efe3-401a-9690-5eb57e2442f4	Костя		f	t	2021-12-14	ambrikos@gmail.com	0acfa808-efe3-401a-9690-5eb57e2442f4
735	pbkdf2_sha256$260000$ibMUPoBEgPguGE1pvbYpyW$3iG/c7yI7upcq2Y7YWbrJE1m5xiiX6peiGoIZyIHQYY=	\N	f	06b2f5f2-9523-4e43-91e7-5cf5804fde51	Мария		f	t	2021-12-14	fmari1@yandex.ru	06b2f5f2-9523-4e43-91e7-5cf5804fde51
736	pbkdf2_sha256$260000$I1ZM4YNZufzecIqjAgn26g$6IGWrZaPKicS4BsNRCAM3EeCCbWtgEZgw+PfTcYkIJ0=	\N	f	dbb892f8-d5aa-470d-b83d-29711941e8fa	Дмитрий		f	t	2021-12-14	kuzovov230796@gmail.com	dbb892f8-d5aa-470d-b83d-29711941e8fa
737	pbkdf2_sha256$260000$bdx3tH4vsYxobBCOMzCxLr$UX0+nim5tskfStbSptnVmP3PCdUuLUN7rxoLtRNyEIA=	\N	f	d18b5def-ee66-4f3c-9292-44767b788185	Андрей		f	t	2021-12-14	hhonnorr@mail.ru	d18b5def-ee66-4f3c-9292-44767b788185
738	pbkdf2_sha256$260000$3kqONkiLwzDuTSwOnSHMrY$GFw4+iyTqepjeCOterCkwBJWF9ubRecDBTHE91lvP2A=	\N	f	173ed173-f23a-4ce3-b862-b95c5f8a7dd1	Сурен		f	t	2021-12-14	osepyan@mail.ru	173ed173-f23a-4ce3-b862-b95c5f8a7dd1
739	pbkdf2_sha256$260000$iUN4hy1iLIwIXv8uhVLpza$dJzHiqhCdeCor+yZv2lZif7XgiadLZlsHHGsTLSlWS8=	\N	f	855195bb-fdb7-4035-9a84-6118af8542e7	Николай		f	t	2021-12-14	n.krotov@me.com	855195bb-fdb7-4035-9a84-6118af8542e7
740	pbkdf2_sha256$260000$RuWpWhbR3T0oMzDPBtQS2x$CJD7nwGj0Al4oFtHP22txmiTi2nm6L/mYCgUIPB1QUc=	\N	f	6e1a7120-c25e-4c09-acc7-5b64a3e70924	Юлия		f	t	2021-12-14	shat35@mail.ru	6e1a7120-c25e-4c09-acc7-5b64a3e70924
741	pbkdf2_sha256$260000$PB18ipnanzxbFtzbImuTtB$DDFZs9cKX9YDh0IP9BLqeNXJw6nVkkA72gYbc3O6DLE=	\N	f	ffe98ca9-ce05-4ff6-a89c-ba18bc0a68b7	Дарья		f	t	2021-12-14	d.kaverzina@yandex.ru	ffe98ca9-ce05-4ff6-a89c-ba18bc0a68b7
742	pbkdf2_sha256$260000$sVoJmRBT9KLNkHWVi0VTxi$umY4XnUX9NMBSW898cQ737c5G+XOeSDILI1IFTrMxNg=	\N	f	575e9366-94ad-4b35-97be-c30852d589a5	Скарси		f	t	2021-12-14	ckapcu@yandex.ru	575e9366-94ad-4b35-97be-c30852d589a5
743	pbkdf2_sha256$260000$tvlqyGXSL0I1qtwrC1wTH3$KFlboKognGOM45UPAMmK/YktzCbLtF0BGnBXuu0xTOE=	\N	f	4a5cff00-46bb-4ef2-bc36-79c21202e6bd	Никита Бочкарев		f	t	2021-12-14	kit-686@mail.ru	4a5cff00-46bb-4ef2-bc36-79c21202e6bd
745	pbkdf2_sha256$260000$GeLB8a15Kbb4ZzqlrBysxG$ngnSpLJGo1fzT/VVq4Qz4xSTOBcXQXaNm85qlsF3DqE=	\N	f	6f60c8bf-ef1f-4c59-80c3-f4ded0c1d2a2	Алексей		f	t	2021-12-14	kponoff@gmail.com	6f60c8bf-ef1f-4c59-80c3-f4ded0c1d2a2
746	pbkdf2_sha256$260000$IZTImOvu0OplKYi0lzRJ2R$+euX7+H6jxLMhSwB+pKUDvGr6H+Lo2sJm6J3I4046QI=	\N	f	66f94889-7335-4626-b187-a90f92e62fa2	Лилия		f	t	2021-12-14	ismyatovalsh@gmail.com	66f94889-7335-4626-b187-a90f92e62fa2
747	pbkdf2_sha256$260000$ALM0LYQrIqnomT31Oqyz43$fd7EwKE+PeJ8GMEgjYN+AO+FkekbOH+pepMD0KNW2jQ=	\N	f	7a87f937-9e95-4fe7-9655-536d56fa4df9	Владимир		f	t	2021-12-14	zab01@mail.ru	7a87f937-9e95-4fe7-9655-536d56fa4df9
748	pbkdf2_sha256$260000$NmOUbhyiWvoPNgHem8Cf4i$HEgLr+XBxvezdTzI09z/0gvM9ScchbJQ78QaasEVHBw=	\N	f	7d18935a-8798-437f-a711-2b9d22402319	Никита		f	t	2021-12-14	roninwoc@yandex.ru	7d18935a-8798-437f-a711-2b9d22402319
749	pbkdf2_sha256$260000$suChgUDrHuqix0KvblXQTq$GKYnXWq0rsOpZFGft1fxZyEms41HD+U+G9YGM+aick0=	\N	f	92926c53-1fa6-427c-84b6-8e9a9942f211	Алексей		f	t	2021-12-14	aledrugov@yandex.ru	92926c53-1fa6-427c-84b6-8e9a9942f211
750	pbkdf2_sha256$260000$kZxGJufef7OM1zxclPM5Ac$vCagYvedQajXkXgdnz62I34IylywC0geEKt3q7UAytU=	\N	f	aab8a8b9-dd90-479f-b921-79949c714b86	Артём		f	t	2021-12-14	artem_fdfd97@mail.ru	aab8a8b9-dd90-479f-b921-79949c714b86
751	pbkdf2_sha256$260000$Ht5b0aEPhRKfPAMIA2FLX5$YPX4IbvRY8Cp3a/bzimWPe/x6/CBEqwfhhCV6kFlW3Y=	\N	f	216d01db-b3dd-4ac5-8d20-a7172ce97253	Сергей		f	t	2021-12-14	sergeykhn@mail.ru	216d01db-b3dd-4ac5-8d20-a7172ce97253
752	pbkdf2_sha256$260000$1vWGSnpczzwCEA9jMhE1dD$kMukcKD90DopGxZO/qg7XqI3JlW1h9SEdebb/PbUujk=	\N	f	415db0a4-aadd-49b6-b7ea-8b23da74646c	Данил		f	t	2021-12-14	sokolov.dn@list.ru	415db0a4-aadd-49b6-b7ea-8b23da74646c
753	pbkdf2_sha256$260000$7q9zc4uQKuAR3SLqNht6zZ$Mdz6WWCUVJiJbBhPMjyILKrjd8Rddbs5d53PpCj4hWg=	\N	f	8f561668-637b-481f-978d-e9cf3d060ad6	Александр		f	t	2021-12-14	srsnet.ru@gmail.com	8f561668-637b-481f-978d-e9cf3d060ad6
755	pbkdf2_sha256$260000$3GUBsm9aijQrNpmlmw4B34$6r/MmkHeOLR4v52070nMIETHTevTNIpwrZlGgDjID7w=	\N	f	6703638d-628c-49d5-8f3a-0028cef3142e	Дмитрий		f	t	2021-12-14	dima-dolgov25@mail.ru	6703638d-628c-49d5-8f3a-0028cef3142e
757	pbkdf2_sha256$260000$a60TfWqsbmErTICZjZpKYH$N4tq47ljQEGhH4tuqTL7gpwz1fcfQWGPszSmwLEF5Hg=	\N	f	787690ad-4584-456c-a8a1-b812caa948f1	Евгений		f	t	2021-12-14	4erep86@gmail.com	787690ad-4584-456c-a8a1-b812caa948f1
759	pbkdf2_sha256$260000$cXRjsZ3e4ppbIHjKl95SzI$nSfMKZ4F3r/ZNrFe0O+POZ7sFSWMSXPi/jBzxJtJ8gA=	\N	f	c947b2ce-f73a-4416-91e3-55951db477d9	Irina Bukhartseva		f	t	2021-12-14	bira117@yandex.ru	c947b2ce-f73a-4416-91e3-55951db477d9
760	pbkdf2_sha256$260000$7pHo5b4GgUNi6CpC3P6OkO$F8sGrSkQlMuHi4UJFgXTdZdH3bEtjKcZakq/LqUQrXk=	\N	f	725af60c-209b-4d8d-ac9e-411aa01a2a07	Vitalii		f	t	2021-12-14	job_vitaly@mail.ru	725af60c-209b-4d8d-ac9e-411aa01a2a07
761	pbkdf2_sha256$260000$wPZbgeJrjFYEfBkyqdi8CB$aZee9KJzseH29sWWlsaepIOF76VzKdJhqf8IANPbsa0=	\N	f	8f54c928-4ee1-4843-bd03-f47b64e395e7	Игорь		f	t	2021-12-14	belkin.iv@mail.ru	8f54c928-4ee1-4843-bd03-f47b64e395e7
762	pbkdf2_sha256$260000$SmMOQBpoyLZT6lxIFME1bP$AJWWPoKzIz7qZEWSe9+JVfmaXtf1pLQAM3b9xI9hqTI=	\N	f	27a736f5-9297-4e17-8182-1e329bd1e44e	Александр		f	t	2021-12-14	torblockchain@gmail.com	27a736f5-9297-4e17-8182-1e329bd1e44e
763	pbkdf2_sha256$260000$gasn1vTbcrhR6vpOMBrKP6$hSOWmGV+PKyM8AkfGBVAK8TTb/SW7Z7UnNR5u+Nm2pc=	\N	f	8ec4709c-eff2-4695-8bcd-b8891fad801b	Сергей		f	t	2021-12-14	safinyaga@gmail.com	8ec4709c-eff2-4695-8bcd-b8891fad801b
765	pbkdf2_sha256$260000$TzmTEPTdGhWfF9hyMhdJu7$c94lnzTE4W4dHFoVJGZPQGFeE0jHNpk6xO2ezbd1wV0=	\N	f	fb56da83-f5b1-4599-bb1e-a8fd9dfbb372	Николай		f	t	2021-12-14	nik-ugolnikov@mail.ru	fb56da83-f5b1-4599-bb1e-a8fd9dfbb372
766	pbkdf2_sha256$260000$7WDqDHsBIgTWBltj4RUl7d$yWL6AxT21iWZ8PDBiqd3C2o0JZI3lZLMkZJZn7mhihM=	\N	f	234cd7a6-6c7e-4407-b709-09dbe8f6884b	Egor		f	t	2021-12-14	6541517@mail.ru	234cd7a6-6c7e-4407-b709-09dbe8f6884b
767	pbkdf2_sha256$260000$OZFRY5y9kvaWn05zTFZl9n$idaHqQJhrbxod3z47QNR74qfxaqKO92U2pVwhiChnBU=	\N	f	308c652a-2a1c-41c3-a316-bcf9e66c26bb	Андрей		f	t	2021-12-14	gomboevandrey@gmail.com	308c652a-2a1c-41c3-a316-bcf9e66c26bb
768	pbkdf2_sha256$260000$rRh9rDLwKEXgbcGOIip2th$6Kflxyec7TaUTe3BJB+nzZsQCLaRIgBz6jqnWN7ON+c=	\N	f	0bffc137-4d6c-4d85-a82e-a29ef53172d7	Павел		f	t	2021-12-14	pashasub@mail.ru	0bffc137-4d6c-4d85-a82e-a29ef53172d7
769	pbkdf2_sha256$260000$v0u0ntbxSmEQ1fnPNhliV1$3kzXMckw2m+blJeqwe0i/LTTOfLUkJlUWYNhU6E/5hY=	\N	f	b224ab85-9d5c-47e3-b7ab-b511f2aa983a	Александр		f	t	2021-12-14	alexzol83@yandex.ru	b224ab85-9d5c-47e3-b7ab-b511f2aa983a
770	pbkdf2_sha256$260000$bwHd7ezVhdLO7rgHFWfgFD$K449vyRxp4iY4yNXCgpQQ1KLwMJWTlwtjIObzWxFL+k=	\N	f	a4a0581f-49f7-4489-8762-d51c0d4a1db6	Николай		f	t	2021-12-14	lanicke@gmail.com	a4a0581f-49f7-4489-8762-d51c0d4a1db6
771	pbkdf2_sha256$260000$6ce8pia79OVOUEoacP3W8v$6+WwAO8DADpovG5mO8AUiRWU3pEkwNQZhZi7XHJpOQM=	\N	f	09e79ffa-7daa-4c8b-86f3-bcab83d5ed7a	Илья		f	t	2021-12-14	e-topgun@mail.ru	09e79ffa-7daa-4c8b-86f3-bcab83d5ed7a
772	pbkdf2_sha256$260000$9mEHfjslpgfEI7GgtZk06A$VmGOdMbcW9HvvKsw6U9QUuBCK/Gh22Usm7exs0lgzzY=	\N	f	ee72ddad-17b5-4a0f-95d4-6781ca4e2f7d	Олег		f	t	2021-12-14	olbog76@gmail.com	ee72ddad-17b5-4a0f-95d4-6781ca4e2f7d
773	pbkdf2_sha256$260000$YSSbteXaOtWPo9VFMMe6Jb$bRdTVAGfY8KIqvUvF79Uf27nImlJJww9SEfdVXxN9Js=	\N	f	ffd50b50-463a-4dcc-9993-4b5dd2664ef9	Антон		f	t	2021-12-14	tonach2@mail.ru	ffd50b50-463a-4dcc-9993-4b5dd2664ef9
774	pbkdf2_sha256$260000$03Jc6aItwF8zbGDMgeKzKs$B7lV5QyfgFZ+bEO748nC7Q+OInHwkTeLXMl7PMx+mZk=	\N	f	4b61cfa0-16ed-414c-b364-3d74c6f8e53a	Родион		f	t	2021-12-14	gil.rodion@mail.ru	4b61cfa0-16ed-414c-b364-3d74c6f8e53a
775	pbkdf2_sha256$260000$A8OwzVuPFRVmP8fd1QKicL$KP+7N86pBDAqP+iCc49TjDI2VWX0REscTPfk0a+LyRk=	\N	f	d89d0b82-ed8e-4be8-af8c-6369bca5b0ee	Юлия		f	t	2021-12-14	julia.mashinistova@gmail.com	d89d0b82-ed8e-4be8-af8c-6369bca5b0ee
776	pbkdf2_sha256$260000$NpGYagq3sJg6nLVufVxCmx$zKtCf0YQVPYrSSlGmPOK9eovR43+HSvt8hP7FsvGyqM=	\N	f	bcaaedb2-a824-4204-a7d4-99cc5d5c963b	СЕРГЕЙ		f	t	2021-12-14	s_bi@mail.ru	bcaaedb2-a824-4204-a7d4-99cc5d5c963b
777	pbkdf2_sha256$260000$RH3323aE1frhgAYB92sZUB$+2Opb1N3P+VoOk1bcCoB+OdToO5ObLSKEx+fG9I2cHQ=	\N	f	5d104f2f-45f7-43f3-ae6e-203b151cd4a3	Юрий		f	t	2021-12-14	klop191987@gmail.com	5d104f2f-45f7-43f3-ae6e-203b151cd4a3
778	pbkdf2_sha256$260000$M78uaaMCKZIEw7uTdaLXAZ$sCiZTsjrJqC8Pv4qTJ9g258Gd1fJI8d0+Lo9l/ZMq28=	\N	f	92b20916-da35-48e8-99af-d74afef48ed6	Алексей	Полевой	f	t	2021-12-14	pole555@list.ru	92b20916-da35-48e8-99af-d74afef48ed6
779	pbkdf2_sha256$260000$3kkXq8OsAc0w8baatKP8eB$3uEJH926ESN30AX8ItDG+HUCaDRdPh4QWF5J7uDbwSQ=	\N	f	1c9a9c19-7386-4f9e-8f28-1ae716d9d91e	Алексей		f	t	2021-12-14	chudolad@gmail.com	1c9a9c19-7386-4f9e-8f28-1ae716d9d91e
780	pbkdf2_sha256$260000$CGMXCBcfA4p2aWDqosvF8b$52+BlrC0bP0LbOmUk0lLqYyCiha2ORmXq8yAtsf+YcQ=	\N	f	a75231a0-8238-432b-a8a2-d2dc4af059c0	Виталий		f	t	2021-12-14	vitalboriskin.ru@mail.ru	a75231a0-8238-432b-a8a2-d2dc4af059c0
781	pbkdf2_sha256$260000$axPCJ96PdRxZ0guzdYkbPw$AYwUWMJyQP31b2SRHjB05EP8aIurujs3tvxjiLILtkM=	\N	f	d2d3c17d-2bac-497e-8770-b2c2bcca3e76	Андрей		f	t	2021-12-14	jmors55@mail.ru	d2d3c17d-2bac-497e-8770-b2c2bcca3e76
782	pbkdf2_sha256$260000$3OOJkwkCFwa1VInHudwLTM$itCVo+dOvYwjEnl0BhkCOa2vPyQdL+gSBAntDiCBi7E=	\N	f	585380de-a45c-4584-92aa-f43e1b866710	Иван		f	t	2021-12-14	hilko82@mail.ru	585380de-a45c-4584-92aa-f43e1b866710
783	pbkdf2_sha256$260000$rg0iJQi51sSQoTC33aU3sK$a322SBheFrQnZBoX2N++pOv86eDyzpQyL6MHWUR97ms=	\N	f	887e5d79-21ff-4c40-85c3-e247222dd3b6	Юрий Соколкин		f	t	2021-12-14	sokolkinyuri@icloud.com	887e5d79-21ff-4c40-85c3-e247222dd3b6
784	pbkdf2_sha256$260000$9D9sIh0V5bABtffpDsl4D8$IqieqB1EZ693w7ALlRQsB2v4/PLBrjb2WlvPis+lxoc=	\N	f	b7c365c8-3244-43f3-9397-48d3d01256b9	Михаил		f	t	2021-12-14	rooostislav@mail.ru	b7c365c8-3244-43f3-9397-48d3d01256b9
1579	pbkdf2_sha256$260000$w2QJqNueEBW29lKspNM79q$ThfFx2RxpEO6sz2BJdj+/ceuXX6byOyjLrNIXd4/+wI=	\N	f	5077e494-0162-4ea4-9803-ed532f11d09c	Екатерина		f	t	2021-12-17	plakunova@list.ru	5077e494-0162-4ea4-9803-ed532f11d09c
1626	pbkdf2_sha256$260000$mhxlW7GDbyzNsjxn15NiaC$JlB6fz4pbkUmX6meXDoMiYuiWhGMgoimv1iRw7i3oIw=	\N	f	87807200-9eb9-497b-9bd5-fa8645c0c5b8	Рустам		f	t	2021-12-18	presentario-ru@yandex.ru	87807200-9eb9-497b-9bd5-fa8645c0c5b8
1706	pbkdf2_sha256$260000$zLVdbLNVIiXr2nWj7XzNVV$wTO1kVd2l6P06UtiLludtUzSw6OGy+C6PbY2HjnE9ts=	\N	f	6cc79334-08ec-41ca-9f31-106a6d405e1c	Александр		f	t	2021-12-20	alex.s.d@mail.ru	6cc79334-08ec-41ca-9f31-106a6d405e1c
1757	pbkdf2_sha256$260000$wzmZNpSLR9SqqlTAUkziwE$ajiqvcAovzv5tFZcCzDyoLPy2GpgZF6pzdLY699S2+0=	\N	f	d85d7e0d-8c00-46f5-b347-c8d8804a230a	Ксения		f	t	2021-12-20	ksu888_klk@mail.ru	d85d7e0d-8c00-46f5-b347-c8d8804a230a
785	pbkdf2_sha256$260000$eEeND4ddCV8upiExSZ7eLl$WbUP+6afvxnM3z7WhpDxyx/oTlyq7uF63+Xux6NUNf4=	\N	f	0ab7ff91-21ef-4874-b9fe-43eee23ae380	Игорь		f	t	2021-12-14	texmarket.igor@gmail.com	0ab7ff91-21ef-4874-b9fe-43eee23ae380
786	pbkdf2_sha256$260000$gydLmGSrIzijbleW6ZQ7jo$cOqtXkGvOzpnlr0z+YUluJa/1mbtt4jYIZGkqI51VcY=	\N	f	30cd10f3-8c3f-4bba-acd6-8db0037aeb80	Никита		f	t	2021-12-14	nikitosyafed@gmail.com	30cd10f3-8c3f-4bba-acd6-8db0037aeb80
787	pbkdf2_sha256$260000$dYMuYzI5bDj8uyGHM07cIh$ffNd82o1jq9djEYKYytMi2lmF0fZQNfU+Hf2ETpmg4Q=	\N	f	b74cf12b-aff8-42f4-936c-cfede621c6d2	Владимир		f	t	2021-12-14	cybeer2001@mail.ru	b74cf12b-aff8-42f4-936c-cfede621c6d2
788	pbkdf2_sha256$260000$pGFwZRagKPXt7TzJQKRlTn$D2io6ZBs05JNC8A2Aju96/5FwEPDhXpzEgAvtD3VT/Y=	\N	f	be6bd8d0-dd49-49db-91d6-5d9d16ee5ac8	Илья		f	t	2021-12-14	lodevarik82@gmail.com	be6bd8d0-dd49-49db-91d6-5d9d16ee5ac8
789	pbkdf2_sha256$260000$9p8R6H3xKAeqMgnqqjlq8U$N8/BWPdQck1GFuQqBc4kStBT8AGVlB3hCHegIsWpQhQ=	\N	f	eedaf68f-12bf-420e-b519-5fe76c8d2bff	Инна Гринёва		f	t	2021-12-14	grineva_iv@mail.ru	eedaf68f-12bf-420e-b519-5fe76c8d2bff
791	pbkdf2_sha256$260000$OU9nM2omYzX1WXUyV6Nybz$LVvyx7LmmJAC+uTD2KOVaUrPtbOecuG0Zqb+z7/niuU=	\N	f	4d19a2c8-d41d-425f-89c3-c84d0f6ddcbc	Никита		f	t	2021-12-14	nikita.yelshin@gmail.com	4d19a2c8-d41d-425f-89c3-c84d0f6ddcbc
792	pbkdf2_sha256$260000$k5xhkJowRvtD19vVHm0LVO$9J13/CbCJBMiJMQDM9cAvbjvxS5A9a21wS25xjwFE+k=	\N	f	fb73115c-07a3-4876-b923-6615882db6bb	Валерий		f	t	2021-12-14	valerka8@mail.ru	fb73115c-07a3-4876-b923-6615882db6bb
793	pbkdf2_sha256$260000$G1UMA0usGNtvXImlJ0GLIV$I5gNefT+b+fKleEK9FqvryitIC3t9awdlRpRQVst27w=	\N	f	1f3fee62-f57c-4b91-8f4a-418efeb60b1f	Тимур		f	t	2021-12-14	jontim@mail.ru	1f3fee62-f57c-4b91-8f4a-418efeb60b1f
794	pbkdf2_sha256$260000$AmaZNQ7HiCRXfj2ytAAxYe$mzo2B2SovDKsrqb4MJOgGJyPQAAY21eoyvndShoMdHw=	\N	f	571a93bc-bb0f-4288-82d5-741b73902ea3	Павел		f	t	2021-12-14	888sps@mail.ru	571a93bc-bb0f-4288-82d5-741b73902ea3
795	pbkdf2_sha256$260000$sg6jEbCHfaNea8RIn9kfsU$3Ssoc3wDXkzPQCKHhohiQg+PC4yu+zIvJ01siwN7bJ8=	\N	f	e887d605-6d4f-4738-834d-9daea8185250	Алексей		f	t	2021-12-14	davlyatshin@list.ru	e887d605-6d4f-4738-834d-9daea8185250
797	pbkdf2_sha256$260000$OvKxaQ9xDyxBjr8m7biXOI$AyWE7/ODwIxIKNM63yJwa3mtzbEd98vc7w0lR/LlS8M=	\N	f	7147d935-5718-49fa-a8c0-4df81e2e9d8d	Андрей		f	t	2021-12-14	andronik65@mail.ru	7147d935-5718-49fa-a8c0-4df81e2e9d8d
798	pbkdf2_sha256$260000$KLk1CipDWkFLGbAJM9Loj7$1v0eDG4EEtU4tT1MdPx32Qr+xJwgtDgGYPeYzIwNccA=	\N	f	5e5d39ea-4866-4ab2-a8f6-6b7cc4cccd1a	Татьяна		f	t	2021-12-14	tavlarle@gmail.com	5e5d39ea-4866-4ab2-a8f6-6b7cc4cccd1a
799	pbkdf2_sha256$260000$jUaMKxZU2LyBWLBTbTfGix$e9k/EG51js2UhvtY7jNOxhpKpcmVRCrMN1sMCsR0TP0=	\N	f	6056666a-d653-462f-b5de-5568bc75e025	Максим		f	t	2021-12-14	info@poleda.ru	6056666a-d653-462f-b5de-5568bc75e025
801	pbkdf2_sha256$260000$uXGRGrcJDCyqsQeyBeXLzq$EIdMFN+i53TyobGrF9DRmtPSMw1XkP+nWocSXkXRWWY=	\N	f	68d2e62d-b484-4bbe-9e4c-341783cf95af	Роман		f	t	2021-12-14	zrv888www@mail.ru	68d2e62d-b484-4bbe-9e4c-341783cf95af
802	pbkdf2_sha256$260000$ZRIo241i2ZtAmWYbGCboDY$ReoX8dGTsJfRBTkN/K0PqdcDzLgaHJWc9FdPar1tMMA=	\N	f	85772827-5945-4ce2-9b09-a793f85ce0e3	Андрей		f	t	2021-12-14	ron113999@gmail.com	85772827-5945-4ce2-9b09-a793f85ce0e3
803	pbkdf2_sha256$260000$RA1ViU67U5jlQb1yL99mIz$DbK69QM+Uwxu+jpwlg6FAIVQPRv5as69bpQnSyylqew=	\N	f	afee7e2a-2f89-4e00-95c4-1a724d691dd5	Иван		f	t	2021-12-14	freestockcharts@mail.ru	afee7e2a-2f89-4e00-95c4-1a724d691dd5
804	pbkdf2_sha256$260000$IePj97ZcJfTLpRglp4J0Ay$p9dTK/s6UTELCwCbvEYYajy8Xin0diUO6P8//G9IvVc=	\N	f	98a7db02-fd5e-477e-ba7c-828489fb4789	Александр		f	t	2021-12-14	bigsubscriber@gmail.com	98a7db02-fd5e-477e-ba7c-828489fb4789
805	pbkdf2_sha256$260000$FaWA5SmYMI623MhWmGvhWQ$B1ECLPRDJJf/nHAwuRA3/TZQJ81yf0xpdAqAy75hs3c=	\N	f	7a4ebf7e-6cbc-4ca2-81ce-63e91fafd567	Иван		f	t	2021-12-14	ivmelyohin@mail.ru	7a4ebf7e-6cbc-4ca2-81ce-63e91fafd567
806	pbkdf2_sha256$260000$ck3JwJD150dXJoGONpkHrv$hnwo6FdW4YmMnTwLg17po6IrgOObO25/VdpW08l2jGI=	\N	f	58c7b1d4-da45-48cb-9fc6-6cb0358fe31f	Вячеслав		f	t	2021-12-14	slawag8@gmail.com	58c7b1d4-da45-48cb-9fc6-6cb0358fe31f
807	pbkdf2_sha256$260000$1zKulm6pWquX1i65SmWHQW$Q90FPi81Ggs3a+Mls69De+X4lia/7r5pNUR/zBLMklM=	\N	f	19fd1545-b55f-485e-a033-076856f7cd24	Ivan Kalinin		f	t	2021-12-14	ivankalinin3@gmail.com	19fd1545-b55f-485e-a033-076856f7cd24
808	pbkdf2_sha256$260000$pErFATKYGwbI1KHqGTrKVt$UkE1rEs9M/NmraomDohvLC6YX7Hk/zDloF8pNrr5tDE=	\N	f	defb952f-f6ad-494f-9463-a543563ecb34	Геннадий		f	t	2021-12-14	gpet@mail.ru	defb952f-f6ad-494f-9463-a543563ecb34
809	pbkdf2_sha256$260000$gou0OHpsXWt0eF6fsmaBw8$DveCHSJ7CYnETX+hNI3MqWdyZdXjlGE76BzdYhq1s6o=	\N	f	b1250fe2-e196-4248-aacb-15c76388614b	Александр		f	t	2021-12-14	adanilovsky@gmail.com	b1250fe2-e196-4248-aacb-15c76388614b
811	pbkdf2_sha256$260000$567sSAdD15GGxkM9Gs3U0r$NmK7KVtrejrHw29AsuqU4fIF/qT+pbR47iD/7ZzqODg=	\N	f	fe09562c-a2e4-4e9b-be21-82d704f2758c	Илья		f	t	2021-12-14	iasmirnov@inbox.ru	fe09562c-a2e4-4e9b-be21-82d704f2758c
812	pbkdf2_sha256$260000$QiR5jFQoD8hityCdQGzLxq$tTc2fUCDUnTapGD4tSaqhPCm0Yi0MPsct66VszVvsz0=	\N	f	029540d1-cc5e-481a-8527-7ab88a53c9b5	Алексей		f	t	2021-12-14	volynchic15@mail.ru	029540d1-cc5e-481a-8527-7ab88a53c9b5
813	pbkdf2_sha256$260000$xL9q4VVEohM3l7r8cJnhBd$BEN+vyS1IZln+MO0sa63ecfsNYgmHEcdjAXrn5AXGrQ=	\N	f	4d50bc29-89e1-41fb-8682-6dd2d52c6a27	Кирилл		f	t	2021-12-14	lagano@bk.ru	4d50bc29-89e1-41fb-8682-6dd2d52c6a27
814	pbkdf2_sha256$260000$BXxQSUiTYMl1IV5l5n3OnR$9Ck4sf+VA6uEQKflgdFqBeYj5MqssveekmQPnne08zM=	\N	f	f54357b0-dc80-4ad1-b65e-370b47e9925e	Роман		f	t	2021-12-14	scprom@rambler.ru	f54357b0-dc80-4ad1-b65e-370b47e9925e
815	pbkdf2_sha256$260000$8ShvO52W3HvqHfPrnZHwtU$9/lGINgYd5wuyzWP2lQ39mS2dc97Cb8SYODIOgQfGlI=	\N	f	b809b447-6521-4674-8a31-3efd8f26dd05	Александр		f	t	2021-12-14	koledenkov.alkesandr@mail.ru	b809b447-6521-4674-8a31-3efd8f26dd05
796	pbkdf2_sha256$260000$ecyzOy6SPFrwRGrvHvRE1B$e6QehcrVnaxZtwP82HJ2qQhP3yDc+c2EqZO/J4wYeBY=	\N	f	f4457917-4f88-4028-a688-1c0b4d936b53	Анастасия		f	t	2021-12-14	precious221987@mail.ru	f4457917-4f88-4028-a688-1c0b4d936b53
790	pbkdf2_sha256$260000$CgdE2nulnTkvHlsXZSWcVL$yBV+9+fooTGJ1RQyp935lM0jzdCQqQisXofABL7RE6g=	\N	f	18ac1adb-7fbd-466e-aa44-12b6db94a721	Георгий		f	t	2021-12-14	georgijkovalenko675@gmail.com	18ac1adb-7fbd-466e-aa44-12b6db94a721
800	pbkdf2_sha256$260000$QR5GHcPaicD3C162EhtBss$YMMhJflHEfG5ewmDezGI0fcBftvD44E3JqqvUR7/zMo=	\N	f	05d95dc6-88fd-417b-83a5-f4d1224d280f	Владимир	Глёза	f	t	2021-12-14	vahten@gmail.com	05d95dc6-88fd-417b-83a5-f4d1224d280f
816	pbkdf2_sha256$260000$EMBLJvLkJLEWfr53afCUBv$C8acNgKyR+dQO7L+31jtItx2y30y14b1WlmVz+kLtTw=	\N	f	6f9bab02-e73a-417a-975b-17019866f814	Ян		f	t	2021-12-14	iantretiakov@gmail.com	6f9bab02-e73a-417a-975b-17019866f814
817	pbkdf2_sha256$260000$H91H5Byw3VQjxXfhw4VpkN$RP8yCVoRJiH3spZ2KB8jryPd63MD10sA+Z/GMep7uko=	\N	f	d7574638-d9ef-4daa-b0a6-0d05f9b44f10	Евгений		f	t	2021-12-14	evgmonk@ya.ru	d7574638-d9ef-4daa-b0a6-0d05f9b44f10
818	pbkdf2_sha256$260000$Qt3Gl8EbIjNjnUu75OKd9C$0h/HBddJ0cDyxkP2Ccos+IPL2GKRJisTs6QQ2mfGZuo=	\N	f	926024f8-116d-4664-aa90-a727c7829a9d	Василий		f	t	2021-12-14	fokusmira@mail.ru	926024f8-116d-4664-aa90-a727c7829a9d
819	pbkdf2_sha256$260000$djX411v8y2CjjpkRAzdeX1$IYdf87R+l4/j2rSkmOEIx7pHcgyDAgVC2BDADeKo2V8=	\N	f	76510cc1-1d30-4a6b-9c82-d774d9bd2b1d	Руслан		f	t	2021-12-14	crazyruslan@icloud.com	76510cc1-1d30-4a6b-9c82-d774d9bd2b1d
820	pbkdf2_sha256$260000$k3CEyQTWJQdckStRZlD4N4$Tti8TVOUt9aK+hwUFo7TvG+titH1rwNgNzSzTEbP+aM=	\N	f	25d01463-e58a-4602-8106-99cba0ba9da9	Дмитрий		f	t	2021-12-14	dima_pepo@mail.ru	25d01463-e58a-4602-8106-99cba0ba9da9
821	pbkdf2_sha256$260000$GHfvSCcRA73BAzkWbqvHI4$OQtsX2DEGOG4LWw0B8cW1IjOeN/1YORScf67WVkgg8A=	\N	f	fd340922-8982-49b8-a952-ee6c07c42fc5	Максим		f	t	2021-12-14	biomax1980@mail.ru	fd340922-8982-49b8-a952-ee6c07c42fc5
822	pbkdf2_sha256$260000$LChqnNPg69ac2EbOMqr5Lp$CY0p/Lodt6fMNAFcDU5g7IHuU0NZsJvaapHeabolmEk=	\N	f	5df244e7-c5d0-4db3-8b04-7c0b19ec3e13	Илья		f	t	2021-12-14	ivanov.ilya02@yandex.ru	5df244e7-c5d0-4db3-8b04-7c0b19ec3e13
824	pbkdf2_sha256$260000$EfXF9GPR6L6LHXCr694i4M$n5Rn0laCBB72IvnO41mkC7lpx+IUWTF4NMLBijId4d8=	\N	f	a4a1f8aa-d5e3-4ac9-8c74-a6630e9ba842	Владимир		f	t	2021-12-14	vldubinskiy@gmail.com	a4a1f8aa-d5e3-4ac9-8c74-a6630e9ba842
825	pbkdf2_sha256$260000$TqZOpGOA3bD8taJU8Vgp8g$XQ/i3VKY+4hVb5Z5UrAxJ2vfwyYN1pYXHM2PkCbx874=	\N	f	532f7fc7-5bb1-465e-89d4-b460bf750c40	Сергей		f	t	2021-12-14	sergey.korvin@gmail.com	532f7fc7-5bb1-465e-89d4-b460bf750c40
826	pbkdf2_sha256$260000$6r7PmnCyfBbQIPIYZPKXMZ$WBCqsoRGBLLhq1fL2s7PNe6sjOd11wr3ZoDIfczqsco=	\N	f	4d29acd1-18e3-4645-aadb-1210b769af3f	Ринат		f	t	2021-12-14	r_valiullin@bk.ru	4d29acd1-18e3-4645-aadb-1210b769af3f
827	pbkdf2_sha256$260000$SlsgH54KQa1KsFkq1lDJoN$+hzlWJp/p9eU+g/NJ4+Cdnwtdsq3S2GaKjwYZ6FZBJk=	\N	f	b7899aa1-0f00-4f5c-a05d-882fc68f7073	Иван		f	t	2021-12-14	fr00z@mail.ru	b7899aa1-0f00-4f5c-a05d-882fc68f7073
828	pbkdf2_sha256$260000$1u7s37fzkIIfSkBxKQstRR$H5hANrR1BKuYgSCC8LctkVEJ6gsHz6xbozo+xYLmY0o=	\N	f	ca4fc05f-6d50-4226-a2c4-69beec267bec	Максим		f	t	2021-12-14	arthas_1996@mail.ru	ca4fc05f-6d50-4226-a2c4-69beec267bec
829	pbkdf2_sha256$260000$h5VB56y3qUE49O2KDQ3Qxx$GTZUR8obL8wBHwmCxjOHbloaCcifmK/szLfRQ4eyblQ=	\N	f	9666ebca-3fb0-4bf4-8f72-313bb22935f1	Дмитрий		f	t	2021-12-14	sniper53@gmail.com	9666ebca-3fb0-4bf4-8f72-313bb22935f1
830	pbkdf2_sha256$260000$HQfadPIY4UIk32qytvPt8E$uMsjQ1b3Uz2uipzFqlxybBzesSN6aKEvTuLyRbkEARY=	\N	f	ea657ee9-9cf0-47ff-a81e-1ef13d0d5c09	Станислав		f	t	2021-12-14	stanislav.inc@yandex.ru	ea657ee9-9cf0-47ff-a81e-1ef13d0d5c09
831	pbkdf2_sha256$260000$92oshiofvrLJSNTNs4sc61$vbHVuytnjJrwnYEb0BDNCoHSjHEx5GgaYdzSxVwDvSI=	\N	f	52418772-4b8c-455d-ac37-70ad796012e6	Алина		f	t	2021-12-14	alinatimirova01@gmail.com	52418772-4b8c-455d-ac37-70ad796012e6
832	pbkdf2_sha256$260000$3tjHJXIdUEs35BJE5fx4Le$KIm1fCTCFQpJMWuoGbpMOMS9yqYlZRYp8uYtFU3kmY8=	\N	f	877b24a2-7f62-42c2-8779-071bdaed000f	Андрей		f	t	2021-12-14	jr.lukyanov@gmail.com	877b24a2-7f62-42c2-8779-071bdaed000f
833	pbkdf2_sha256$260000$oySDSFGsRBpFa9Xotk3kdY$LuUW2y/nQtphrBCqcicnV+eXfI425OG0bsKKJKDWXww=	\N	f	71a1cf49-ff60-46d6-97eb-bc05128e1499	Андрей		f	t	2021-12-14	thesamoylenko@gmail.com	71a1cf49-ff60-46d6-97eb-bc05128e1499
835	pbkdf2_sha256$260000$MWpiGODjquMlhJIl4FjzqH$WArTczCfy7CuWf7Jo+WazCYLeQGhlC3RlxMsTGhYfBc=	\N	f	89fe8c51-0e16-4f72-9632-e29898b4a746	Андрей		f	t	2021-12-14	saidred@mail.ru	89fe8c51-0e16-4f72-9632-e29898b4a746
836	pbkdf2_sha256$260000$HNJTklxUR1THzuGY7htzXE$e/MRPrKfLLjn4b67sHuT/xT7qhgm4w1bQSxESKTqyZY=	\N	f	3ce16a85-161b-424f-904e-b69800c78455	Артемий		f	t	2021-12-14	ffelian@gmail.com	3ce16a85-161b-424f-904e-b69800c78455
837	pbkdf2_sha256$260000$qBaxLJBEX9tkrKOdrqeL6i$nGi1EptEX3UolJrdjpQwK63dCgdgAKkI/A55256lEHw=	\N	f	bd9271bf-536f-4cbd-a059-95c4620a846f	Никита		f	t	2021-12-14	nikitakoshlkov@ya.ru	bd9271bf-536f-4cbd-a059-95c4620a846f
838	pbkdf2_sha256$260000$FznqNOcuXNc290D4HbmjIU$WqeaGt+JCpo8vn4XW+/dU5pyVoUd6i8MuHIElOup+f0=	\N	f	7df4d7ac-29dd-4447-9743-7a5838c5ac4a	Борис		f	t	2021-12-14	borisd1@yandex.ru	7df4d7ac-29dd-4447-9743-7a5838c5ac4a
839	pbkdf2_sha256$260000$4Mdbv7undFrZbqFoa2beu5$tPxiFhsbUwrsqxbGirkfiy9vWJwW3gtqlOmaTolFlfo=	\N	f	7291cd59-8359-4140-a381-699d44fd3bbe	Сергей		f	t	2021-12-14	medesergei.78@mail.ru	7291cd59-8359-4140-a381-699d44fd3bbe
840	pbkdf2_sha256$260000$rSX2JBBTfozkaIUKmHZbG6$UZ8zhcsU7ULIgiLPStdFIYBcCB/MVEFa+ajWHDOwAgQ=	\N	f	550f1944-5f19-4f98-9462-5ca028f7a43f	Сергей		f	t	2021-12-14	hamelion1711@gmail.com	550f1944-5f19-4f98-9462-5ca028f7a43f
841	pbkdf2_sha256$260000$IsQ2n0GjFmY7USFVYLAopz$+Zzi9QnH6gSVXz50c9bqldLUrFc5ZaStB2kmQuoBd1Q=	\N	f	8f20ec32-b151-4241-9834-0d42557025d2	Дмитрий		f	t	2021-12-14	radchenko2209@gmail.com	8f20ec32-b151-4241-9834-0d42557025d2
842	pbkdf2_sha256$260000$P7jpTXV0W3BblVt2cJ6FBT$13BuPUMzECQbOKoNqnFm1/td63lDeSyFdXlM2wVSfL4=	\N	f	9cbb9356-8881-49c1-954f-c83814b3a8d7	Алексей		f	t	2021-12-14	alemcd@mail.ru	9cbb9356-8881-49c1-954f-c83814b3a8d7
843	pbkdf2_sha256$260000$ypyXhPjgFdcBWZCOSOKEPq$LLhqpgHI+bQ67DKM/fbTWT01aAIXhN+29g4djZs9oxo=	\N	f	d0f844bc-ac6a-4f99-934c-121007edebc0	Кирилл		f	t	2021-12-14	kirysha.kovalev@gmail.com	d0f844bc-ac6a-4f99-934c-121007edebc0
844	pbkdf2_sha256$260000$LiRVWCLyAcYfBtl1niA07K$NOoNUHTR3b5YVzJBNT5ccgKgoP7nJIYWA//boqXNCbg=	\N	f	c2a284ab-5f2f-46e0-bce5-fad226d4b258	Роман		f	t	2021-12-14	workmailsm@gmail.com	c2a284ab-5f2f-46e0-bce5-fad226d4b258
845	pbkdf2_sha256$260000$3rgLnCxIZ3vbx0cGPfauKR$CgNaMxv1uuGfcoCJrvfs3hrge76CNErViCEDaBE7p2s=	\N	f	526717af-0a4b-42ea-846f-ecc07c1dd24a	Александр		f	t	2021-12-14	itartass63@gmail.com	526717af-0a4b-42ea-846f-ecc07c1dd24a
846	pbkdf2_sha256$260000$RVHuesrPMg5fIQfSNGsUIl$85aVV+cOGDhRascfOJ5mZhz8G2gHn+Xcudo2Yhz/WlQ=	\N	f	8d15693d-4eee-4277-9c92-9633ec791b45	Ирина		f	t	2021-12-14	irina-jan13@mail.ru	8d15693d-4eee-4277-9c92-9633ec791b45
847	pbkdf2_sha256$260000$ExiKuv5aHphvXIha9wKn4T$U9oGtjYJ0gahyRhX5500PBRMzfwODHxLMOKKiNyjBjg=	\N	f	d9bad084-810f-42db-acf6-edd68b1bd04e	Виталий		f	t	2021-12-14	avitaliye@yandex.ru	d9bad084-810f-42db-acf6-edd68b1bd04e
848	pbkdf2_sha256$260000$09xEue0ml3jJ5kBPtSu4Ay$yGlMj1zV+P7Y1469+XRiUsFjLEBmoNXiAy95M8JmBSU=	\N	f	bca25ff3-14a7-4ddf-b248-ba122ff9429f	Михаил		f	t	2021-12-14	vfymrj1971@yandex.ru	bca25ff3-14a7-4ddf-b248-ba122ff9429f
849	pbkdf2_sha256$260000$OYcMbs4rAOHqhbysCw2h48$Y0RLcoK3vfjPGgXtGKr++CaItFu2Ism1FdCz0HewLr8=	\N	f	0a0b6b29-c7d2-4b52-90b7-f8613cd7b233	Иван		f	t	2021-12-14	arctez@gmail.com	0a0b6b29-c7d2-4b52-90b7-f8613cd7b233
851	pbkdf2_sha256$260000$ZGpB6CGjv6DZDmKC3VZ85I$BiB5nuRi0n8wFdlNjH8Wf15c0a7q4spZgTub8AhHRSs=	\N	f	d17d9091-c14e-4e10-843b-b8af253fa98c	Константин		f	t	2021-12-14	5000lux@gmail.com	d17d9091-c14e-4e10-843b-b8af253fa98c
852	pbkdf2_sha256$260000$HYJZbdI5CBXDHvQ7hpBZ0w$6UtUZrEjYEqU/d/ycfevobbvtisZTW/YtU29pamj2FI=	\N	f	1bdf60de-e30f-48eb-8ba1-3889af430189	Андрей		f	t	2021-12-14	andreimzr@mail.ru	1bdf60de-e30f-48eb-8ba1-3889af430189
853	pbkdf2_sha256$260000$yZibb2DKHuh8SR0wTkdbfd$niEoha5ZLXLr3KKxEicgmnfvECDc+bs3pvWVoxZ9VDs=	\N	f	ed1cfe30-b799-4a6a-ad78-6e961d7e4adf	Михаил		f	t	2021-12-14	misha486@yandex.ru	ed1cfe30-b799-4a6a-ad78-6e961d7e4adf
854	pbkdf2_sha256$260000$ofkzzsKJ4kcIp7YCpkQRki$oEkn07yRxtXfoiOUWq84cTW+Y03dLaXBiAo3sfONlMc=	\N	f	da9ab82c-20fe-46ca-bd26-414e6bcedaeb	Владислав		f	t	2021-12-14	medvedevvlad@yandex.ru	da9ab82c-20fe-46ca-bd26-414e6bcedaeb
855	pbkdf2_sha256$260000$jxZJu72PRR1J2twaMzfrKV$2MAuFdg42U6HDnoj0jeYF2oYS7H0OfEufb5B1PLFM9E=	\N	f	ce834d77-1ad7-4b4d-97ca-19235e42f2ed	Денис		f	t	2021-12-14	surjavskii@gmail.com	ce834d77-1ad7-4b4d-97ca-19235e42f2ed
856	pbkdf2_sha256$260000$KWt42TlfWRv1j6yE4mcy4z$rbBAbxDeyTCLBwjS3oVB6smw9TSJGlP77amFbsixHbI=	\N	f	1420b84c-1063-4b91-b245-bcbe02cdd23e	Александр Урусовский		f	t	2021-12-14	uru-aleksandr@mail.ru	1420b84c-1063-4b91-b245-bcbe02cdd23e
857	pbkdf2_sha256$260000$4rMzzgz7qIChBxhplAGf0h$Cq6XF/RfkVMXOdlNcgu98DkhY4JqOSOSbJANJqlpquA=	\N	f	8d2425ae-dde8-4536-b412-5b43927b4129	Константин		f	t	2021-12-14	shilnikovka@mail.ru	8d2425ae-dde8-4536-b412-5b43927b4129
858	pbkdf2_sha256$260000$fZg6LLvmR87RasSrTPPatf$mpBQHoe7YNlQoR2LMskZL9sKtF31MTzAtTvqZSTCWZU=	\N	f	f26fa643-d274-45b5-a579-ccf3fa018571	Андрей		f	t	2021-12-14	andrpavl32585@yandex.ru	f26fa643-d274-45b5-a579-ccf3fa018571
859	pbkdf2_sha256$260000$zKtMOpOpZjT8LXwDglbTEY$oHi8ZxsT/Bpm2pcmP9u+skgnFvKzauL1W/2MITrUYuk=	\N	f	5afe892b-9644-46a2-a4fd-95da51be1ede	Максим		f	t	2021-12-14	khilmaximed@gmail.com	5afe892b-9644-46a2-a4fd-95da51be1ede
860	pbkdf2_sha256$260000$190dJfX0fY78tSZHve8Fwc$MSrkLRxRxmnVWzqxjHcrdlvbINuoHkjuY6TUxidWrG0=	\N	f	87da55d9-944c-467a-bce2-968062e8e6bd	Данил		f	t	2021-12-14	klinichkin@bk.ru	87da55d9-944c-467a-bce2-968062e8e6bd
861	pbkdf2_sha256$260000$RvJ20Kg5L1ueHToCXxkzoZ$c2/4PgrDScXu1WbdynspELLzoYu/yTFeXHWA/iYvKlY=	\N	f	9c075651-97fb-4a1b-80da-4e16ef626910	Рустам		f	t	2021-12-14	capaev98@mail.ru	9c075651-97fb-4a1b-80da-4e16ef626910
862	pbkdf2_sha256$260000$1WT3TUx26Alrz3AbxeV5uD$/wXbovsFp6LgbnoLACwQInETA2q20iAE4yibXDInO+E=	\N	f	955c1055-20de-45f9-9c18-f596ff002e85	Юрий		f	t	2021-12-14	ghost_078@mail.ru	955c1055-20de-45f9-9c18-f596ff002e85
863	pbkdf2_sha256$260000$OcBPxPqMuaTdUug5cDizT9$tlLHUTRNpDEtcr91FOhtVl3lmON5AcHcfMQRAOM4Wlw=	\N	f	78d54604-be83-468f-9660-2b8da3f24880	Константин		f	t	2021-12-14	karlovkostya@gmail.com	78d54604-be83-468f-9660-2b8da3f24880
864	pbkdf2_sha256$260000$KxfAJdi9zd434q5fx2YPaC$g1SBXbKdoINUMo2hkhmyXGh0itqO8rv/pL0nxTr9zgQ=	\N	f	0aacedf3-d162-46b7-99bd-3eeab4bd0bc5	Ярослав		f	t	2021-12-14	klimanovrus@mail.ru	0aacedf3-d162-46b7-99bd-3eeab4bd0bc5
865	pbkdf2_sha256$260000$hOxgmzLXzE7fzBrpD62hmO$aUXNy2rQ3WiJK4f5wckKCIBpdtxqFE+V1bsAioujcI8=	\N	f	133fafbf-677b-4969-a0e7-540619fd9e2e	Ансель		f	t	2021-12-14	56_ctiv_68@mail.ru	133fafbf-677b-4969-a0e7-540619fd9e2e
866	pbkdf2_sha256$260000$vxe3ZwsAZGxYcEvADyBUwv$qtPS5YvThj9EMsPPXotP42O3+o4lG/y8j9p4MGCK5Ac=	\N	f	4ff2aeb5-6823-44f8-8dca-5ed7cf35ca12	Максим		f	t	2021-12-14	maxs911@bk.ru	4ff2aeb5-6823-44f8-8dca-5ed7cf35ca12
867	pbkdf2_sha256$260000$a6LJp2iOpYYgRSMU85E8VY$p/HX2XyOg8jPtZ3IzVgGYKDYaP2kOeDMioMydPhMt3o=	\N	f	1001c64e-90a4-40aa-ad11-72b49bee2632	Андрей Борисов		f	t	2021-12-14	and.borisoff@gmail.com	1001c64e-90a4-40aa-ad11-72b49bee2632
868	pbkdf2_sha256$260000$5QqSRCEfrb7xrRItJwUaZT$px5DdDYFZxwB5Rzp4YjH1nybapjRyL0eTOrEg3HjI1I=	\N	f	2e7f0c3b-bed7-476b-9b4b-67ee229fa7cc	Алексей Гаврев		f	t	2021-12-14	aleksei@gavrev.ru	2e7f0c3b-bed7-476b-9b4b-67ee229fa7cc
869	pbkdf2_sha256$260000$v4XPMF2jYV9zDDq3hyIS6r$S1OQ6vYU7SvOnedSo9G98cCnOrSR9VB5LlYIpyjNPWE=	\N	f	b2ee3598-6411-4c9c-850f-dbf595a8638d	Сергей		f	t	2021-12-14	7724348@gmail.com	b2ee3598-6411-4c9c-850f-dbf595a8638d
870	pbkdf2_sha256$260000$o9mwrFwb5ZndTdrz4cVJul$9qhaQg9fVNnq4d3e0XRoYzpxVynxfZEHrCW8zNghPT8=	\N	f	afb38501-7752-4852-abc4-1a244fa84377	Вера		f	t	2021-12-14	v.gaydukova@mail.ru	afb38501-7752-4852-abc4-1a244fa84377
871	pbkdf2_sha256$260000$n4RBACNXNGddCidQRv3kvg$VTnslcp4MAa7d1bd3bycvMY/oMWd9nQFYm02hllzHZU=	\N	f	2fce810c-1d96-4a96-8ca3-017a9a31c3a8	Михаил		f	t	2021-12-14	mojoclub@mail.ru	2fce810c-1d96-4a96-8ca3-017a9a31c3a8
872	pbkdf2_sha256$260000$k2BfGsRlD4g0ooBdTryCVv$HboMC0nqnQUhPAdN+UQzhht2Hc5kMbccMCxcmzC+e2s=	\N	f	6a5ce344-a680-4f0d-9fb0-af3a81124a92	Ильяс		f	t	2021-12-14	iab3@bk.ru	6a5ce344-a680-4f0d-9fb0-af3a81124a92
873	pbkdf2_sha256$260000$8dyXz4EmQhgNRe48RxmRTm$zRLEUsH7lu2Vabv1u6tAneqi6mfddSULu2ONf4nhrUA=	\N	f	de98f11e-3949-45c5-8861-eebf56e90b38	Роман		f	t	2021-12-14	rrv03@ya.ru	de98f11e-3949-45c5-8861-eebf56e90b38
874	pbkdf2_sha256$260000$8QdQ2UNMrAUxuMcfTwCUCf$svgvfJGyyYKSqj9hlurYNd4nh5624eM9uiiHYZglXGI=	\N	f	2d277e12-7f4a-43d2-8ad1-0ef04993c1d0	Максим		f	t	2021-12-14	sobchenkomaksim@mail.ru	2d277e12-7f4a-43d2-8ad1-0ef04993c1d0
875	pbkdf2_sha256$260000$Tllxg6vl14RQWBmnrKdaAD$XDgjMLeT6Dw1Et5h5vzNLT3v0VGJ47h72z7qmo9aSyc=	\N	f	44177b60-3d6c-4fa4-9d88-0ae25e12287f	Павел		f	t	2021-12-14	malanin_97@mail.ru	44177b60-3d6c-4fa4-9d88-0ae25e12287f
876	pbkdf2_sha256$260000$FUVAUGfmdfB8isNRBX5W46$L7n96a1SgTc4vRsinNnKRYTu7ACM7COf9MnnPBw4cXY=	\N	f	61c0fb9a-4d82-4e31-9afd-3532cc9c0f27	Данила		f	t	2021-12-14	danil.komarov.809@gmail.com	61c0fb9a-4d82-4e31-9afd-3532cc9c0f27
877	pbkdf2_sha256$260000$gkXZr2vRxsCugPDpKg7j6B$FQzlqqNt1Yncs+Br7obXHrgmTTJcPkO/ovM+FYJO3Jg=	\N	f	7d711e4b-5791-4a21-867f-4a9a0ba9b1e0	Дмитрий		f	t	2021-12-14	d-pihtelev@mail.ru	7d711e4b-5791-4a21-867f-4a9a0ba9b1e0
878	pbkdf2_sha256$260000$NCPpYpZA0EZrPLHUkLGsgq$Sq7z/oDM1tV1Ih9DStNZdbr83XZJ6GR+dS3SMdtovUw=	\N	f	8ba68ed3-c554-4cc9-9c15-db7f66ba0aea	Aleksandr		f	t	2021-12-14	job-alex@yandex.ru	8ba68ed3-c554-4cc9-9c15-db7f66ba0aea
879	pbkdf2_sha256$260000$eacb2GkRCjm1VqHFsKlEeD$B0gvz4EpEkG76YqseZfpeT+wuE+cB0Tc6tnQ/s7PFlM=	\N	f	78d261b5-3ada-4fc6-909b-eef8bb4782ae	Екатерина Ильина		f	t	2021-12-14	iekaterina@mail.ru	78d261b5-3ada-4fc6-909b-eef8bb4782ae
880	pbkdf2_sha256$260000$Y26I4UffadY6cvkwu77TeJ$1zk9zEpoOVApywBEO2oHCL7RgzDGqPL9GtFr8JQMj+0=	\N	f	5ac1c6ca-a88c-4b46-85df-722334d64394	Наталья		f	t	2021-12-14	nata_shaurina@mail.ru	5ac1c6ca-a88c-4b46-85df-722334d64394
881	pbkdf2_sha256$260000$YLhWznGGDFwQ8APwIv46gt$eafCNXu5ERVHKWbbGeAeWQMZJDTCL5j1zT4xOKmDjqg=	\N	f	c7bdce17-ebda-484b-9f80-7212c90b4e54	Нариман		f	t	2021-12-14	tanar0112@gmail.com	c7bdce17-ebda-484b-9f80-7212c90b4e54
882	pbkdf2_sha256$260000$q1mjaK0N181fhH4V2ZkTGL$PAbDnGzrXvolStuVa/CuKVdQDXe8WKsVIZFzKvc+Olc=	\N	f	2e3b9048-5547-4c31-96e9-1d99953ca17c	Серж		f	t	2021-12-14	list99@list.ru	2e3b9048-5547-4c31-96e9-1d99953ca17c
883	pbkdf2_sha256$260000$R0fkWRLNbLcC7anJI8hwGa$SpBjqb1RGyc6SV58ucGX/GcchOPlYaaz8Dd//xeeV54=	\N	f	5ea13105-4910-4b71-bc92-92663154413f	Мария		f	t	2021-12-14	7216670@mail.ru	5ea13105-4910-4b71-bc92-92663154413f
884	pbkdf2_sha256$260000$7MHwapHq8PM6QJhlzC3Qea$RimFKUymO509Rv7RmICpwia8VuUowrfDEGHnD8K5hco=	\N	f	16f4beac-531e-4986-a8e6-92cb17454460	Юрий		f	t	2021-12-14	yurii.sandul@gmail.com	16f4beac-531e-4986-a8e6-92cb17454460
885	pbkdf2_sha256$260000$20zOFnbzaCVIjqTcTgm1aO$y08973+rffF0q4NQsxEOopFHentAGoduRR2s8I4FcqQ=	\N	f	8f37fd11-23bb-42b4-900b-3abc682a5c27	Иван		f	t	2021-12-14	kulaginrondoivan@gmail.com	8f37fd11-23bb-42b4-900b-3abc682a5c27
886	pbkdf2_sha256$260000$26H8Y8VQlXvkPvQZwUOvtf$LOOrtesH/UaVHnC8SJGQZQVmkzfUdehOG7jfERZWyng=	\N	f	60c76f7c-4a56-4e6c-8ed1-7dc2b861bd89	Искандер		f	t	2021-12-14	derekzazoo@gmail.com	60c76f7c-4a56-4e6c-8ed1-7dc2b861bd89
887	pbkdf2_sha256$260000$x8PBrstBuFRjvId9SDoibr$WrOWTdKyTYgCVJ8M52fTmvMyvflpgL7SaolGb5ZXrHk=	\N	f	3b1adc46-3edd-4947-a9e1-ddc7d670356e	Евгений		f	t	2021-12-14	jenyam@yandex.ru	3b1adc46-3edd-4947-a9e1-ddc7d670356e
888	pbkdf2_sha256$260000$9UnQ2ePL2M24MwNrWL14bu$R1IdFv7pceot+WRsAl0W1bQZwRhw/PvIi6PJDyX52MQ=	\N	f	52c8cbb4-5f08-4759-b927-5eb2af7a7667	Максим		f	t	2021-12-14	borisovskiy1986@mail.ru	52c8cbb4-5f08-4759-b927-5eb2af7a7667
889	pbkdf2_sha256$260000$cdwf34XcBEpYXT2bqAYRcm$dpJE5lkv+T1kfC694aBTXFDSb0g9enb8TPtin9fY4rE=	\N	f	9369aaeb-d2aa-4efe-869f-ba9589a5438a	Дмитрий		f	t	2021-12-14	dimka.nt@mail.ru	9369aaeb-d2aa-4efe-869f-ba9589a5438a
890	pbkdf2_sha256$260000$JGbCtgBV3n8A1ANS4lR12I$OwkiRXsFELIImvI/xjzFdirQ7x3FadWbaO4L3Fd9zxI=	\N	f	4baf537e-7a3f-4a68-afa0-c2b1e73dd914	Сергей		f	t	2021-12-14	morjchok@gmail.com	4baf537e-7a3f-4a68-afa0-c2b1e73dd914
891	pbkdf2_sha256$260000$KXnGLtnk1DmrSpYbKLJmqU$Ogt+d6TAAYnM4TDesC3HpKEWYFVHlS8nilHlj650h9I=	\N	f	743adb8d-20a5-4fa8-acec-3dc8ab55e7ef	Павел		f	t	2021-12-14	dolzhikovp@gmail.com	743adb8d-20a5-4fa8-acec-3dc8ab55e7ef
892	pbkdf2_sha256$260000$mCZPSiEv6eK3S0GQVlVSNe$bScKWGtMLfkmWRKBA0HYtIxR0peQQGDj71HHcEQepBg=	\N	f	cd5d5d08-e4eb-4b2b-8c16-3e66be4b51b4	Антон		f	t	2021-12-14	89965166094@yandex.ru	cd5d5d08-e4eb-4b2b-8c16-3e66be4b51b4
893	pbkdf2_sha256$260000$L4kmPSjBWA8GX7oZq08g1C$Eh75AZUd9L8TpqfiJVc98fy4BgkbfKoXGWFtG5X+JrA=	\N	f	db76d049-9b07-4422-9487-8357cce7ac7d	Ольга		f	t	2021-12-14	nilova.of@gmail.com	db76d049-9b07-4422-9487-8357cce7ac7d
894	pbkdf2_sha256$260000$EHjsmbfoj3i2gHQFvJXcGE$y22GfwIlbvWqhFGlptyIJWLMubHo0MrggmyDINcKKqk=	\N	f	0a0ed182-4b01-4633-bcd6-2f95e695c8a5	Михаил		f	t	2021-12-14	ugsp@yandex.ru	0a0ed182-4b01-4633-bcd6-2f95e695c8a5
895	pbkdf2_sha256$260000$jWax1aotIPvnxS1xr9eM9h$Ml91JNTfl/4y+QS62FkVkgc1HfFvbjj58Gq9lgqamsY=	\N	f	656528b9-46d5-4535-9da0-09734582a0e9	Андрей		f	t	2021-12-14	headmagic82@gmail.com	656528b9-46d5-4535-9da0-09734582a0e9
897	pbkdf2_sha256$260000$9MQOBdmkdVj1cxM7fx99hc$myFOfkQh2l/AxUurJAmLFCU/xJLr9beuRVDcdONCydU=	\N	f	aca16823-7e3a-412f-adfb-af3d834f3bb1	Евгений		f	t	2021-12-14	johnfomin@mail.ru	aca16823-7e3a-412f-adfb-af3d834f3bb1
898	pbkdf2_sha256$260000$qd5BU9rsg8V3qx7l3OhByu$+QkkS0g09rotgMaz0ETzV3Nu67GRozJe8PhusB+LEPs=	\N	f	4a0e5ecf-781c-4fa0-ba4f-569987d13e90	Максим		f	t	2021-12-14	maks.badak98@gmail.com	4a0e5ecf-781c-4fa0-ba4f-569987d13e90
899	pbkdf2_sha256$260000$G0MdZDFbOHbD3WrAMEz4O0$ALhYIbFLR4EYrBg5cekGyXXFo13rshUNlqMnYQbLLEM=	\N	f	11f0a619-81cf-4522-a0a4-69d65d24f155	Виктор		f	t	2021-12-14	viktpower@yandex.ru	11f0a619-81cf-4522-a0a4-69d65d24f155
900	pbkdf2_sha256$260000$kFuZAHIPPqW0MDxtLEpggA$iwBzMaC1OG8SxlKc9GEe8qnqKhbYAR0UCOZ2RYokYZ4=	\N	f	d30fb9ee-a963-4fae-a3f6-d3bb69b87c4f	Игорь		f	t	2021-12-14	igorekdan@mail.ru	d30fb9ee-a963-4fae-a3f6-d3bb69b87c4f
901	pbkdf2_sha256$260000$c9prjHj36M0tzwm8nWsRWo$4ANSJj/ZSOrkVZwneqpX5ivwLvvnOZRrv6SJyd7fNT0=	\N	f	3c9d984d-60cf-4556-9ce9-07d11a6c338e	Алексей		f	t	2021-12-14	horsik85@bk.ru	3c9d984d-60cf-4556-9ce9-07d11a6c338e
902	pbkdf2_sha256$260000$7fDNod09RnkPhgNQdh86Dw$C7Sl63oBvhHTp//5MlyMOurwk/H8yaTHP8zsuKC0O7Q=	\N	f	0855af11-51a9-4d85-bb9a-5f44e84327f4	Алена		f	t	2021-12-14	filimonchig@gmail.com	0855af11-51a9-4d85-bb9a-5f44e84327f4
903	pbkdf2_sha256$260000$pHT0pTdzyKAgV2GwF6RX2a$dpd6Lu5LP0T99bszgP0G/1GoEu9IVJJG98oi4ef/oHA=	\N	f	02d8acee-73a4-4048-a25d-d594775a8f88	Елена		f	t	2021-12-14	lenka-shatenka@mail.ru	02d8acee-73a4-4048-a25d-d594775a8f88
905	pbkdf2_sha256$260000$DQMrwZsBlKKuWm9kifWchT$jyiwy1G/+I4PqoL+S04bGNrtPodXIcZWVCs6tMUALsQ=	\N	f	4cb8d588-ab51-443f-8c95-ea828c060de0	Денис		f	t	2021-12-14	zlobin.d.a@yandex.ru	4cb8d588-ab51-443f-8c95-ea828c060de0
906	pbkdf2_sha256$260000$klxcWkHuryVY2PgnLLpqti$lVoCSQ08G6GZw8QGHffesyKDN4CRzFzDn5to0B0Q+RI=	\N	f	7ddb82cc-0a8c-4a18-9b58-4d00d9c03ee9	Дмитрий		f	t	2021-12-14	mutafrukt@gmail.com	7ddb82cc-0a8c-4a18-9b58-4d00d9c03ee9
907	pbkdf2_sha256$260000$ktkpKKj0lzaSxeMgpV5HIF$H+gDPXQalWtPiZPTP8MKCajNT3BkHppniLic/OdjwXI=	\N	f	88ac7a28-317d-4d49-ba9e-d4c5d81548c9	Илья		f	t	2021-12-14	2152691@gmail.com	88ac7a28-317d-4d49-ba9e-d4c5d81548c9
908	pbkdf2_sha256$260000$IxQoZpzKIUGLjpQGG1BTym$m2mBio0z2qRfT/j105QstC9VPd08208/DX33LOUkXqE=	\N	f	e05b1fe9-9ba5-454c-b35e-b02dceeae1b9	Егор		f	t	2021-12-14	vinipux170@gmail.com	e05b1fe9-9ba5-454c-b35e-b02dceeae1b9
909	pbkdf2_sha256$260000$vDhY4pya1FReaWBvUoV4Gd$S2vgAJe7K8va2TZUGwfHgF71EyXjCnDhTmykQWKg/Bo=	\N	f	adaaa15d-3bbe-4bc9-9267-7dd387ec8337	хуй		f	t	2021-12-14	really.bitch@mail.ru	adaaa15d-3bbe-4bc9-9267-7dd387ec8337
904	pbkdf2_sha256$260000$KZBf6pzk238JmXX9CTEdTf$f/1bGZn3PTTinx3E2RxqYZfvmtSLNbLWb6fzhY9zv8E=	\N	f	ce344b39-14d3-4fd2-9dbb-f6837fef0ce0	Liana	Kachakhmadze	f	t	2021-12-14	liana.kachakhmadze@gmail.com	ce344b39-14d3-4fd2-9dbb-f6837fef0ce0
910	pbkdf2_sha256$260000$OfuoANk2lctJKHt6nf1zrI$9VNRlmv4iVDa1uZXhY8Q8xKVCglCU+9jabjolQ4NgX0=	\N	f	8d994a2f-c01f-488f-9440-fb9bedb94dff	Ксения		f	t	2021-12-14	demetra23.88@mail.ru	8d994a2f-c01f-488f-9440-fb9bedb94dff
911	pbkdf2_sha256$260000$p5uarz8hWGTmKIdCMh2Pmr$YnZy+n62DVtsLNfvVND/Dn06uxvnwyNIQZIK0TOVCf0=	\N	f	c572b70e-3240-434f-abea-1a2b897503d1	Михаил		f	t	2021-12-14	mihcigan@mail.ru	c572b70e-3240-434f-abea-1a2b897503d1
912	pbkdf2_sha256$260000$aTo6BnyAafNMN6KVKK3ZTz$2P61hhQ4UBcpKb7IbvQox/Yeqxi83wkGPzcs0LA2W84=	\N	f	f91f4c36-f2d1-4fc2-80cb-53497cc7b200	Михаил		f	t	2021-12-14	mak256@mail.ru	f91f4c36-f2d1-4fc2-80cb-53497cc7b200
913	pbkdf2_sha256$260000$e13SD89HFD0KALruhfloeV$T0FmL3poDHg22p/+py0V4ftBTPvIdOinLdj5q6W7Jyc=	\N	f	81e19f97-4317-4962-a225-63fa24c6572a	Евгений		f	t	2021-12-14	snake649@yandex.ru	81e19f97-4317-4962-a225-63fa24c6572a
914	pbkdf2_sha256$260000$nJBwHMWnBPsJotsVPJ4Olx$gQTVIb4WRzzjgkpdXjXECZLHS06cIwJlwlE78sohN4M=	\N	f	2e1968d6-f2f7-4669-83b0-c9d822975287	Давид		f	t	2021-12-14	drstein@list.ru	2e1968d6-f2f7-4669-83b0-c9d822975287
915	pbkdf2_sha256$260000$ZqMteB7SWQDFW07pfHvVcN$9iA66tPnUI1GJclDuk4clOnQtF7/RCajZBnYxNbRww4=	\N	f	fc216b61-b580-4b77-918b-89c5b7bd832d	Рустам		f	t	2021-12-14	dagarustam@mail.ru	fc216b61-b580-4b77-918b-89c5b7bd832d
916	pbkdf2_sha256$260000$KZTgah6lTH2ZJFgHULHubD$t6jWzMGmyBL9P1kIUSjVbC34BEC5YMe8MyHH7wNs2nA=	\N	f	bee4316e-f639-4f47-a772-c8c1884de497	Александр		f	t	2021-12-14	nadejda_vek@mail.ru	bee4316e-f639-4f47-a772-c8c1884de497
918	pbkdf2_sha256$260000$vEKPSECbxGgy2MBXpvMmpo$iH2+Lnu5QaHOCHEXXYdsWm9oFfCsyGWnhWB+stAvcMo=	\N	f	7a6b96bb-02e7-4328-8467-bc9d859cb27e	Эльвира		f	t	2021-12-14	e.kino@mail.ru	7a6b96bb-02e7-4328-8467-bc9d859cb27e
919	pbkdf2_sha256$260000$IrebaWdkvztCiPjYVTpyRC$HqRrwHQoZn3K77GhxKMyJHIjEZl2SVyS8wOXwJq5fOk=	\N	f	0df1f078-cafb-4a05-bd16-e86b39690383	Светлана		f	t	2021-12-14	svsay@yandex.ru	0df1f078-cafb-4a05-bd16-e86b39690383
920	pbkdf2_sha256$260000$iur67PxoEcdfgADQFU78Dn$H73sP01VRD/nfNMN8ldokYl6XSUTxwte/acMoi6Bvcc=	\N	f	d3f01b79-937f-4453-b503-984e0ffb8be3	Yulia		f	t	2021-12-14	kowalewayulia@yandex.ru	d3f01b79-937f-4453-b503-984e0ffb8be3
921	pbkdf2_sha256$260000$PA1yyvSFaCBnrthzEFtxu7$gtwoNa/nhqTUJ+dxop8P0gIJrto8zagLpmwCmlkTELI=	\N	f	2b9e8a85-5576-41e2-8afa-046e884b1ee5	Никита		f	t	2021-12-14	gamenik13@gmail.com	2b9e8a85-5576-41e2-8afa-046e884b1ee5
923	pbkdf2_sha256$260000$1kwk6aYtNWCvCT6RVqOixz$lHmaRZEdwPcnPM48iATQ30FM+Z0119upzQp3KT4lGvk=	\N	f	a8036cd7-a050-4760-9a87-4e90d954a2eb	Александр		f	t	2021-12-14	migashkinaa@mail.ru	a8036cd7-a050-4760-9a87-4e90d954a2eb
924	pbkdf2_sha256$260000$sa3FsJTN4PLBGlfMwuZknS$p8cNGlWFgwKmJMeFoeqPCM6CiviPdJjrsOOGOM5hgxk=	\N	f	94128095-cec2-46c5-b707-69c649d0123d	Иван		f	t	2021-12-14	pavlov.i.s.2502@gmail.com	94128095-cec2-46c5-b707-69c649d0123d
925	pbkdf2_sha256$260000$7hi21EnRqgWjXGIJeTvtEc$FNZeVavGWBp+VZC+9DN9Uraq21r2SdStkYR9mC/5nnI=	\N	f	d80f5199-97cc-466a-a1ba-0d3470846ca0	Елена		f	t	2021-12-14	ajalisa@yandex.ru	d80f5199-97cc-466a-a1ba-0d3470846ca0
926	pbkdf2_sha256$260000$vbRa1o22bajOuGarHLj6UL$g9I+Dc/atmJs6dZIOwvdVUEyvUju05PRQJ9OgNQW9Ig=	\N	f	3fab323a-a7f1-4cae-8c22-493247b48d79	Сергей		f	t	2021-12-14	sinexsis@yandex.ru	3fab323a-a7f1-4cae-8c22-493247b48d79
927	pbkdf2_sha256$260000$paUY1PZ59d0Im7Ue0MoH4K$uPizk95DfvMu0rIIQ8xfHQx5YEY2z+IHsvMhDB3btEg=	\N	f	df607a19-2aa7-4faa-8d4e-c3a5f498915d	Иван		f	t	2021-12-14	polovinkin.ie@gmail.com	df607a19-2aa7-4faa-8d4e-c3a5f498915d
929	pbkdf2_sha256$260000$PF4cNiHLtThmh2hxmOfxHA$HFQz5JZvKLCgpUd1O15RKiEoYpeRqpuss3cXgPVsDgU=	\N	f	842d2a12-370c-49ef-bdea-bfce969e1790	Гаскевич Алексей		f	t	2021-12-14	332913@mail.ru	842d2a12-370c-49ef-bdea-bfce969e1790
930	pbkdf2_sha256$260000$zU5GsPFqf7Ef6xgvsE5f15$YHaeDBf7XHEkQH1P6WiZ9A0InpgJN1Sgk/abLHIujaA=	\N	f	751ab8a7-e5a5-40dc-ad77-1b30413750e0	Александр		f	t	2021-12-14	a.leontyev88@gmail.com	751ab8a7-e5a5-40dc-ad77-1b30413750e0
931	pbkdf2_sha256$260000$xHfiPlLtXhvig5qkvokJxj$yXYYNQ7plA9D6gDbl6F/ZQTnML3qU9nlVCoSCFctUew=	\N	f	fc30a26e-6b9b-48e8-9958-c74dce9c83c8	Леонид		f	t	2021-12-14	reklamator07@gmail.com	fc30a26e-6b9b-48e8-9958-c74dce9c83c8
932	pbkdf2_sha256$260000$4zj5d2NOrelvycd9B50qv9$VKq2U4FrZvQCAcx8mL68K9OVoP3CHwO9l9Fm4QWq/5I=	\N	f	2b4a0ab2-e7ea-4e45-9d3b-f9ed6443fc01	Давид		f	t	2021-12-14	arutynyan.david@ya.ru	2b4a0ab2-e7ea-4e45-9d3b-f9ed6443fc01
933	pbkdf2_sha256$260000$uD2K0tqLb54NNDOmYf6JIo$cseSFddVVfhk7POKyfw5P5ZHpoohTQlqtsRRHjkqfTw=	\N	f	efa5ff3d-cc3c-43e7-8954-97c358b25f47	Александр		f	t	2021-12-14	litvinenko21sv@mail.ru	efa5ff3d-cc3c-43e7-8954-97c358b25f47
934	pbkdf2_sha256$260000$lG4HgO7CmOouXLneOiYPbV$tieeReL7aGzIRYV2A2YVCZ7HGqekXgwax3yX86B8fhw=	\N	f	cce8a978-fcad-4178-bf3a-4563f3ce85d6	Николай		f	t	2021-12-14	mic_07@inbox.ru	cce8a978-fcad-4178-bf3a-4563f3ce85d6
935	pbkdf2_sha256$260000$g9ne1ICW2zhE7LNFDzAczy$URsNgDSTRpDGRaLxGp9HviE9+Df7/bF6DZPcGznA7w8=	\N	f	075ce83c-58a2-48d9-a1c7-ec0fbe50a7b7	Вячеслав		f	t	2021-12-14	mr.kindwolf@mail.ru	075ce83c-58a2-48d9-a1c7-ec0fbe50a7b7
936	pbkdf2_sha256$260000$FzkoTEMN6GTIt9mRrWXNyC$9bHToBldGZiegOLUEQFdVUZfT6QEVpj/p0Qzr5t11f4=	\N	f	0c0cadeb-1d96-4b1e-83f9-839fd3568446	Александр		f	t	2021-12-14	riber11@yandex.ru	0c0cadeb-1d96-4b1e-83f9-839fd3568446
937	pbkdf2_sha256$260000$IOdYHdRl32KKJ3l4Sivqq9$oww2MOkwyjaIe9zYlO+wU8eNyrsq9Syd7J3o5xYIexE=	\N	f	ab60d3ca-1baf-4d2c-bb44-1f5c29de1ed6	Анастасия		f	t	2021-12-14	05.03@mail.ru	ab60d3ca-1baf-4d2c-bb44-1f5c29de1ed6
938	pbkdf2_sha256$260000$GAlPK22bJScCY10Sg4sm6h$np6SrtR6k0gQmMO+ofbCtiRdKoBJIqA7cizeQaC+Zq0=	\N	f	000ae4ff-abf7-4a9d-9224-a45ef8effb13	Дмитрий		f	t	2021-12-14	goryn6517@gmail.com	000ae4ff-abf7-4a9d-9224-a45ef8effb13
939	pbkdf2_sha256$260000$jbTOXqLWBqgzTT8uiiMRVE$i397IJmhEuFZkG+XReQOyRQrGf9TlhctmW5jmMNcp9g=	\N	f	b93e8dd1-e2d7-4301-8e97-4dcf3e6f7db3	Константин		f	t	2021-12-14	world1984@mail.ru	b93e8dd1-e2d7-4301-8e97-4dcf3e6f7db3
940	pbkdf2_sha256$260000$ZENyaFiU4RbPR54eBifLxZ$0W+eDrlFtM4Pu1Mn6dxYlxUd7zoJaYqaFK+KeB9sFz8=	\N	f	62589f44-9f99-4226-8793-42e0bc6c674c	MK		f	t	2021-12-14	marat-kopylov@bk.ru	62589f44-9f99-4226-8793-42e0bc6c674c
922	pbkdf2_sha256$260000$t759t4cVvKxrIO0YUayEIe$LQVHa3vHyYmU5yEbAIMzcvLrKW3tNm6/H6iERzL5Ga0=	\N	f	76ba41a9-c42b-4efe-a309-a22a9bffb93c	Алексей		f	t	2021-12-14	lesha.schelokov@yandex.ru	76ba41a9-c42b-4efe-a309-a22a9bffb93c
942	pbkdf2_sha256$260000$9PDPn3BIjU93jvN1jyk5wc$Jg/TiWzEUrx0ozEnMOeyqCZHgLjl+r1F5FXdA3QpU2s=	\N	f	9b1f9b96-87ee-4696-b9d2-eca18535773d	Роман		f	t	2021-12-14	www.sheyankin@mail.ru	9b1f9b96-87ee-4696-b9d2-eca18535773d
943	pbkdf2_sha256$260000$vI9UoxCpGmwyfSaN8lkPDG$CzllVPim8t0MeeH7MKUl+bb7d7U2432V/DjwFR4DqfM=	\N	f	1e2bcb5d-0347-4831-93bd-7c1e0e359a67	Егор Андреевич		f	t	2021-12-14	gta3434@yandex.ru	1e2bcb5d-0347-4831-93bd-7c1e0e359a67
944	pbkdf2_sha256$260000$1JMjriVhL4EJJKGXplk8ZL$0wa8mJmvVjkHpdg1i83ihDsuqKJhnPOpV8msauFMXK0=	\N	f	49b72004-d0fb-4bb2-8f79-01259ba53822	Евгений		f	t	2021-12-14	jackoffice@mail.ru	49b72004-d0fb-4bb2-8f79-01259ba53822
945	pbkdf2_sha256$260000$dfhLAF6bxXFsX0wySskWIP$4zY9bl/T5iTuPhEuIRevJ928BdRhmPVqU7b5wMQn0rM=	\N	f	48f4df75-d206-4e75-a0a1-a1a39c4b4879	Александр Петриков		f	t	2021-12-14	petrikov.mail@gmail.com	48f4df75-d206-4e75-a0a1-a1a39c4b4879
946	pbkdf2_sha256$260000$9PQqIOEyJlmXVLPO1EURVb$ekCJQqtFo6E5qkbDtPRo2+gKIXFhXG9b0mhEgaN1w9k=	\N	f	6033b87d-3a65-46a6-bb92-77f448f4eef9	Михаил Мартынов		f	t	2021-12-14	martun.92@mail.ru	6033b87d-3a65-46a6-bb92-77f448f4eef9
947	pbkdf2_sha256$260000$W4hc0Dw7RjiALY0KlcH3oD$9eVk0ewFC3iCUjCNu40n/qBPkiwy8LyEXprva5LBF8k=	\N	f	fdc4d6b1-fccf-4e6e-b4c0-16704780b314	Yevhenii	Dolzhkovyi	f	t	2021-12-14	dolzhkovyi@gmail.com	fdc4d6b1-fccf-4e6e-b4c0-16704780b314
948	pbkdf2_sha256$260000$ywXoP0ssbsdKkzwf9s8l4S$sT9CWBnfXdqNYEKlz6XUFk2fE1feWBG3qTkeTM05ODQ=	\N	f	0f2ff099-eaa4-47a8-b41d-276fdfc4c8ae	Дмитрий		f	t	2021-12-14	d.net93@mail.ru	0f2ff099-eaa4-47a8-b41d-276fdfc4c8ae
949	pbkdf2_sha256$260000$9XogHxSRRoyoiQeO9Vh9iF$H5OvPnuh11saAGNDlcBFeFbEqRkso9BZvmitRRYFWfo=	\N	f	b4d0a26c-6258-487e-8ff6-d631d11d4140	Екатерина		f	t	2021-12-14	kate.skipina@gmail.com	b4d0a26c-6258-487e-8ff6-d631d11d4140
950	pbkdf2_sha256$260000$1j1SIlv8BO0mvfVpg13sHq$4NznWL4hJxnOh/aprGGcokBz6tNCYocbRM3ZEKvWbxk=	\N	f	be6f4a13-4730-4e60-966e-43d62dafbf9b	Александр		f	t	2021-12-14	kanin-av@mail.ru	be6f4a13-4730-4e60-966e-43d62dafbf9b
951	pbkdf2_sha256$260000$Goqc3QHU5FeKHVJvxDlerk$m9er8PqFgRYfGJILQvMqDbwSNRd5Vpuptu2FVZkwF3E=	\N	f	b92c0ae1-5b8f-4d49-a69a-baf860074ff3	Alexey	Ososyuk	f	t	2021-12-14	lynchbassyuk@mail.ru	b92c0ae1-5b8f-4d49-a69a-baf860074ff3
952	pbkdf2_sha256$260000$jymcnAVair5Gz40TLB9lOO$mDb6Exd8+yfRWErUqwwlFlw6D9vpEV1wX1MLmTrZ+wk=	\N	f	3428aecf-148e-4229-ac8d-99ebc041a61b	Gennady		f	t	2021-12-14	ygv30@mail.ru	3428aecf-148e-4229-ac8d-99ebc041a61b
954	pbkdf2_sha256$260000$CN7NFGGjcL4699Um3uekx5$Ufs1aMA8NlMF29eq1jmy8h+HMIy9LinxTIqVZOAc2NI=	\N	f	4b524dd2-ca70-4cf8-828a-a744f5490693	Ирина		f	t	2021-12-14	irisha-chel@mail.ru	4b524dd2-ca70-4cf8-828a-a744f5490693
955	pbkdf2_sha256$260000$OR3OVRlbItxh2CMJoif8yD$CserEf5sOuNQEwZUEK1LMBlKAAmjgaXppY+9K8hm/gI=	\N	f	5cd7c91a-a594-428c-9738-f214a921824b	Ivan		f	t	2021-12-14	vasilchukivan@gmail.com	5cd7c91a-a594-428c-9738-f214a921824b
956	pbkdf2_sha256$260000$ShXTFlh2j8oj6K85HSLoFJ$5viV7k9m79d9ZdndgrUzt3ICjhXCYCfAzVLlnNdCYW0=	\N	f	e6d9ca92-bd3e-4043-8607-10babf4bbc64	Абдулджабар		f	t	2021-12-14	abduldzhabar.shirinbegov@mail.ru	e6d9ca92-bd3e-4043-8607-10babf4bbc64
957	pbkdf2_sha256$260000$6s3dRY0kaWfZbDhk2U9AGL$rJAsJVrsqoxGQ++zXQEi3J1QBIHJdJDqIgDB4Ef7NZY=	\N	f	a7b0eef8-360a-4e45-adbf-0b15613ef7b5	Максим		f	t	2021-12-14	kuzmin_mv@hotmail.com	a7b0eef8-360a-4e45-adbf-0b15613ef7b5
958	pbkdf2_sha256$260000$GugF989X84Gc5693Wh3Z6U$B37Y9/iMaeJaUWIWiHB/LVBaBjql7jMw4UafOk/Ra20=	\N	f	9dd5064d-c821-4e12-9cbc-ccd4936e34ff	Людмила		f	t	2021-12-14	muroval@mail.ru	9dd5064d-c821-4e12-9cbc-ccd4936e34ff
959	pbkdf2_sha256$260000$BiIqpJmTsqFdf8FUjnNNip$oS5AtV+JcgcVGxYqInObsY9ntGQPSWbARHVpU6flTlQ=	\N	f	ddd6ba07-ae4a-4685-85b0-ee69b9713acc	Галина		f	t	2021-12-14	chalikovagalina@gmail.com	ddd6ba07-ae4a-4685-85b0-ee69b9713acc
960	pbkdf2_sha256$260000$UxMmvPruAGlMd7p8dclWCh$ErQ5GvKZBPAuWs/8bG0kE2jbYfePD17ljve91/fW2So=	\N	f	5716f60a-66a8-402b-bf85-588a35f1f127	Максим		f	t	2021-12-14	safetin@mail.ru	5716f60a-66a8-402b-bf85-588a35f1f127
961	pbkdf2_sha256$260000$rcpBlWeB0cFdP58rIATMYW$gmerXuo3aKmEcq8DOueE5xSr6EtakPvKJSXvND38ab0=	\N	f	ac6885a9-3d2e-4a31-b2ba-5360ff89c046	Ридван		f	t	2021-12-14	donari2021@list.ru	ac6885a9-3d2e-4a31-b2ba-5360ff89c046
962	pbkdf2_sha256$260000$XCM7CX5LV3e54bG89kfmOv$XYaCK73jQrs24Dc5EqqCfAT1kqZC6ei3Ftw1qNwvly4=	\N	f	a251b0c3-b080-442f-bac9-93da668bcac6	Роман		f	t	2021-12-14	rtopilin@yandex.ru	a251b0c3-b080-442f-bac9-93da668bcac6
963	pbkdf2_sha256$260000$cud5t9Z0apT8UvMtzN600E$xioae3sQQEtNn9oyppYH1DSFuZGQlHhtshqj/aDATPM=	\N	f	1391de89-5ae4-48b9-b68a-fab3a1868304	Татьяна Васильева		f	t	2021-12-14	v_tanita@mail.ru	1391de89-5ae4-48b9-b68a-fab3a1868304
964	pbkdf2_sha256$260000$qwJT9SDCppEQyUTSsqLj0g$zdLBs8JZOxpkakmN34Zwd6u5uZb9duspBrCDumeyLJM=	\N	f	ac0c8158-c0bf-4e0d-a289-91750c4f50be	Ермек		f	t	2021-12-14	yermek_zhar@mail.ru	ac0c8158-c0bf-4e0d-a289-91750c4f50be
965	pbkdf2_sha256$260000$Y91YquXnk8yNdOwI0DjmXV$MRW04rj2RXgT7LzA2ARtNcGv62BtTMcGcVu/bpqaHRc=	\N	f	f40ec5fa-6299-411b-b54c-731a864a2aa2	Кирилл		f	t	2021-12-14	fox90546@gmail.com	f40ec5fa-6299-411b-b54c-731a864a2aa2
966	pbkdf2_sha256$260000$7yiho2uxGzyNhMmnXuFuD6$yy6RoIkZYlUcBK9g2IN6oTlPotW4GcIYC2hke0GoWss=	\N	f	7587d994-c585-4c13-8dac-e66a17d9dec1	Вячеслав		f	t	2021-12-14	kirpich25@mail.ru	7587d994-c585-4c13-8dac-e66a17d9dec1
967	pbkdf2_sha256$260000$Sshz6iufceTYgKZn6YNqxg$o6CFA+vh6qH0tDS8/ikx30kQjtqHWfeljzxrKtkdBHs=	\N	f	b8005e73-45ba-41d2-849b-0febdcd9d8ac	Юрий		f	t	2021-12-14	yurazakh28@mail.ru	b8005e73-45ba-41d2-849b-0febdcd9d8ac
968	pbkdf2_sha256$260000$MxC34LiSuNCGPMSAtamJ3m$xFfFKHSBMaIA9BTZa/tPSX4DphXhK2G9FWxXNterm68=	\N	f	3970c392-5f06-4f31-9d6d-5ad870ad9555	Семён		f	t	2021-12-14	poletaev@baikalexpress.ru	3970c392-5f06-4f31-9d6d-5ad870ad9555
969	pbkdf2_sha256$260000$3GCcuusQdpgzUp7nxQ4PEF$p+pkMGFT5NKuiziG7VhNEg+R+SHY8A8rXifDO9gINdc=	\N	f	f31d1535-977c-4f4d-8528-f30cb900d644	Владислав		f	t	2021-12-14	sorrowrealinvest@yandex.ru	f31d1535-977c-4f4d-8528-f30cb900d644
970	pbkdf2_sha256$260000$bK12NWujXsr48lCO8iN9Rm$3H4Cg6o2WTTsGDAyDF+SqmZ8uPwOOxiJELKL1WfuxS0=	\N	f	32d10cb1-42cc-4a6c-a13f-204d25775c78	Ирина		f	t	2021-12-14	iragoldan@inbox.ru	32d10cb1-42cc-4a6c-a13f-204d25775c78
971	pbkdf2_sha256$260000$kgAPhQUujK0a7FCQtwLaIZ$KOHIj4XpnG0FvSjOC2x5UQsRmpcoFixY3hlA5wNltHU=	\N	f	b4900ad8-43a8-48a2-a0c7-74327942e33a	Игорь		f	t	2021-12-14	tds-igor@mail.ru	b4900ad8-43a8-48a2-a0c7-74327942e33a
941	pbkdf2_sha256$260000$aj2lrrJEx9sH96ydV2WKXU$PrLBaiuz9kvqVlcAWlKNviVffsK1+a+9LPqFxYZPfQo=	\N	f	bac597d9-7db3-4e54-a8b3-287459ccf96d	Евгений		f	t	2021-12-14	evgutorov@yandex.ru	bac597d9-7db3-4e54-a8b3-287459ccf96d
973	pbkdf2_sha256$260000$Mh4ouJZMObMMrZI5tSqLBW$WnZg9n8M6azDp46wic7GOwAAG/8AqiyVkqE3D5ha9AI=	\N	f	92f73618-9eb5-4f41-84fa-3aa5850523b6	Константин		f	t	2021-12-14	k_tim69@mail.ru	92f73618-9eb5-4f41-84fa-3aa5850523b6
974	pbkdf2_sha256$260000$jNelKcCmbX0YEdgJX2v9np$JsZ/2Vgm8ICFlpEgHZStvTyPLxXKu90jLdFgwT3TPz4=	\N	f	0556a89a-fbce-43a6-913f-69696f079593	Дмитрий		f	t	2021-12-14	efrodim@yandex.ru	0556a89a-fbce-43a6-913f-69696f079593
975	pbkdf2_sha256$260000$JUFNB9kK1P2gNj0XbWFyHE$H1cccAuTt7lKHkixinTNqwNSD+rWcY2FpWtgaibaOOU=	\N	f	b71399f3-c763-41cf-a66f-d795505b5364	Лусине		f	t	2021-12-14	klucine@mail.ru	b71399f3-c763-41cf-a66f-d795505b5364
976	pbkdf2_sha256$260000$89jQ7mwJuHI38Z1ESHxQkc$FdmP9HW/NklSY6QFyckYJTKIOfXWgxw9cccTP/a4aJA=	\N	f	7b333fb2-2a58-49b1-b30b-6e5f03f1116a	Артур		f	t	2021-12-14	artyr.200114@mail.ru	7b333fb2-2a58-49b1-b30b-6e5f03f1116a
977	pbkdf2_sha256$260000$YeDOAOPJ2GZUWLOPjurv2E$w5r/ncc7XGU8b1+kwQvxM5las9qxDO+qrFvYFy8r2eg=	\N	f	8877cfe3-d66c-426b-8949-78417475c383	Валентина		f	t	2021-12-14	vgeverts@icloud.com	8877cfe3-d66c-426b-8949-78417475c383
978	pbkdf2_sha256$260000$bhXgBGOVRorz2ERGA1THhM$3Vf7G1boxMHEpavtHgnQu50VXaMN5vk3Hrrgo/iP8Ow=	\N	f	33c86920-b20d-4a41-b14f-71147566a80f	Виталий		f	t	2021-12-14	vitoagad@mail.ru	33c86920-b20d-4a41-b14f-71147566a80f
979	pbkdf2_sha256$260000$rJl8nit8MTpjmyqzKbqDC5$ilji3W/+YShppHjPudpDwJ4Fka7q4NAbM0mPJrFsdtg=	\N	f	ad6e2028-648c-4d08-938e-4c37f6f4080f	Анастасия		f	t	2021-12-14	a9119182580@yandex.ru	ad6e2028-648c-4d08-938e-4c37f6f4080f
980	pbkdf2_sha256$260000$4KkRIeUVSy7fRtdbTS3hb2$Y5a80bXP7Vf9d4323B4UYT/qLJSEYoHTxL6+GeTB0Gs=	\N	f	455fc728-aa53-4409-b31e-1add9e30eceb	Елена		f	t	2021-12-14	catwomen2007@rambler.ru	455fc728-aa53-4409-b31e-1add9e30eceb
981	pbkdf2_sha256$260000$29zXjoDlalc4RW7dT9ba16$V0zloTAIdqRw64HKRXlqNzrQNAdkscg67z+DeHef0mE=	\N	f	4c71bae0-3ed4-4f05-9026-e6b4def9a701	Вадим		f	t	2021-12-14	vadim.tsay@yandex.ru	4c71bae0-3ed4-4f05-9026-e6b4def9a701
984	pbkdf2_sha256$260000$v2gtoRgpHxrP6HQwTEejLV$UKrJ8YpE4SFfoMp5WMs1/VnHdtfzirxQ9O/w3uYzkJQ=	\N	f	41d8c918-1d86-443c-a371-40a55f490bec	Амо		f	t	2021-12-14	badamoboy@mail.ru	41d8c918-1d86-443c-a371-40a55f490bec
985	pbkdf2_sha256$260000$TE3LqGX3R6X3stSqzT5aMd$w2soSDCtkJG+9VUcyihGuQI9H+sNhux/1K5HHC+MeKU=	\N	f	9a6136de-e319-40cf-b7c6-906bc75e2246	Владимир		f	t	2021-12-14	investments159@gmail.com	9a6136de-e319-40cf-b7c6-906bc75e2246
986	pbkdf2_sha256$260000$xPGh5Gr5QNvCqayGdl8R5z$LdcISzcYq0x6P3zjXhs4IffdKzXgPlgrCXI+/ECjdkA=	\N	f	5723e728-f8f0-4369-984e-6e0d1eadc521	Николай		f	t	2021-12-14	niko2027@yandex.ru	5723e728-f8f0-4369-984e-6e0d1eadc521
987	pbkdf2_sha256$260000$zRKSO2ttW0NcYqzGYXje3w$IrYGXfxr7FsCVhPpX97x8QvbVLZNxr2ckxd9CyLYjqY=	\N	f	0bd4e3ae-4a07-4d23-a834-9cb394e9b74f	Evgeny		f	t	2021-12-14	junq@ya.ru	0bd4e3ae-4a07-4d23-a834-9cb394e9b74f
988	pbkdf2_sha256$260000$hCkY1vvqqo8oMmxbYMLFRL$gToqU4CM0K/2zokJ3cvVL7aAJYKWi95mS5VNni2ANf4=	\N	f	4c1e75cc-22d5-4492-ab8d-a721336bbdcb	Михаил		f	t	2021-12-14	mikhailbrandine@gmail.com	4c1e75cc-22d5-4492-ab8d-a721336bbdcb
989	pbkdf2_sha256$260000$kvbEvW130gIfmGHsizmfm6$UI8srLE2H/mqkzdVM9BY9fCaukPtIsQkaKMnm8ZUu1g=	\N	f	69b18614-b4ed-48c5-a3c3-0d8a77ba0741	Александр		f	t	2021-12-14	reg@brigo.ru	69b18614-b4ed-48c5-a3c3-0d8a77ba0741
990	pbkdf2_sha256$260000$oHPE4boaiU6MuZiY9112op$uUwAmm0jjROvq6Iz4fch1LFnvV1TI3MnomGi5wTc7eM=	\N	f	6af100a9-454b-438e-a962-c4454c61ebee	Pavel		f	t	2021-12-14	larinvest33@gmail.com	6af100a9-454b-438e-a962-c4454c61ebee
991	pbkdf2_sha256$260000$GpP06VaYxD0X2f4U8wSaKk$HePHLmqnBcXh7RdlgBcbp7sV8dgJUJAnpLRnEARwK0c=	\N	f	90eaf052-e94a-40bc-b0d8-b44a04621d94	Сергей	Прокопенко	f	t	2021-12-14	vodjnoy34@yandex.ru	90eaf052-e94a-40bc-b0d8-b44a04621d94
993	pbkdf2_sha256$260000$Lr65zM4mwnWDvoMrjndnrE$sjRzRXZV+V/knxbe7W/lXqegCJdriGGFkJYGRef2I4U=	\N	f	bb05fee9-5cc1-4c78-8c57-5d2acbeade58	Юрий		f	t	2021-12-14	yys63@yandex.ru	bb05fee9-5cc1-4c78-8c57-5d2acbeade58
994	pbkdf2_sha256$260000$nVxK5XrXSaM7JLnj6y5kmj$vcFlYeisYAWLc9GQekD+aGqa2Mn4FBkgz0s8c4GUDaQ=	\N	f	aed19ae5-4b4c-4156-823a-9760cb57f105	Инна		f	t	2021-12-14	ip0301@yandex.ru	aed19ae5-4b4c-4156-823a-9760cb57f105
995	pbkdf2_sha256$260000$lCJeSB1ZaJVmhVw18u5mLG$3xe4wQcpjOHFI3zSpwtj5M4yigu03KnfHZn2pLrRC6c=	\N	f	61106305-7845-4f53-a90c-fc8eee9f32da	Дина		f	t	2021-12-14	aysina_dina@mail.ru	61106305-7845-4f53-a90c-fc8eee9f32da
996	pbkdf2_sha256$260000$7tqHJEmwOkUvZIBgtTZHED$+Olm1fgSObuL+/35JllxvJgqsGcwCUJFB6BEvx5i8AE=	\N	f	4fc9484d-b3f7-4b19-b52d-1d9f72de9fe4	Владимир		f	t	2021-12-14	kalyan92@list.ru	4fc9484d-b3f7-4b19-b52d-1d9f72de9fe4
997	pbkdf2_sha256$260000$P7MCfcQrhkv30Pk808RFiz$wHU2N6b4NSdeQKut38Knjj8Y5fCOVu6s/+GgRzPSQIM=	\N	f	3bd7e765-135d-4366-81d7-c81a445facd8	Мария Максименко		f	t	2021-12-14	main_ya@list.ru	3bd7e765-135d-4366-81d7-c81a445facd8
998	pbkdf2_sha256$260000$WcXgqwsDDYcDYJaJL25ccP$lTvVOdIU5RsjL8mzal1QBMuQBXbzQcCCC55dnfuerFQ=	\N	f	1cfefee2-d42a-4f7d-a9a4-13aadf3243fe	Виктор		f	t	2021-12-14	vcampese@mail.ru	1cfefee2-d42a-4f7d-a9a4-13aadf3243fe
999	pbkdf2_sha256$260000$M2nRDtZVC1CWor4aw4Qsjl$IQL3oWYqydine//tLhyXih+wX8TIu1faQnCtGbRpajw=	\N	f	8a548cd2-e89e-4d58-a87f-141698d7bd1a	Кирилл		f	t	2021-12-14	tarasovk87@gmail.com	8a548cd2-e89e-4d58-a87f-141698d7bd1a
1000	pbkdf2_sha256$260000$mFgagZAg52StmQ9WbcUanv$/6PCb5dCYA03Aq0/6fQrB/Y0mP//Zff6bKGnMSdNSkk=	\N	f	57e52089-9cc9-4436-a563-5b3b07f87978	Viktor		f	t	2021-12-14	luckybroker85@gmail.com	57e52089-9cc9-4436-a563-5b3b07f87978
1001	pbkdf2_sha256$260000$cFpRJBKvQHN0c5698X6w1a$rRGIXtZCwVZUQx+pJhethaQY51nbrnql0qzPThs+whs=	\N	f	f7a0ab45-5dd3-4b77-ac75-47c48decaddf	Андрей Прокофьев		f	t	2021-12-14	anprokof@gmail.com	f7a0ab45-5dd3-4b77-ac75-47c48decaddf
1002	pbkdf2_sha256$260000$9HSXYKabsWA4EzHMnMsI7y$ezqjapG8H76NfD+ijgppzb1v8FIHcuWba7XwFWkUBDE=	\N	f	1a6568b0-6e61-429c-9faf-9fb6af0f7c35	Сергей		f	t	2021-12-14	krukk1985@mail.ru	1a6568b0-6e61-429c-9faf-9fb6af0f7c35
982	pbkdf2_sha256$260000$OoAwkjWIRsqap8mygPlOGj$gslWfxjOYE6yewtln8lP/kU1+JthxtJ3kUQFSOMScQY=	\N	f	6438a3d9-037a-48ce-8c2a-23bdd7fd9173	Елена	Бугаец	f	t	2021-12-14	elena.bugaec69@gmail.com	6438a3d9-037a-48ce-8c2a-23bdd7fd9173
983	pbkdf2_sha256$260000$6zVOgSGiV35WBq9we7ho13$mAp9bI/NHmPVI5zX37Ex1u3hiTZ2UKV6VL8gg2/6Mhc=	\N	f	56492e69-a99a-405b-b19b-0e30a82abbea	Алексей		f	t	2021-12-14	mr.kosch@mail.ru	56492e69-a99a-405b-b19b-0e30a82abbea
972	pbkdf2_sha256$260000$Mg8PpXlbRGT69lzZSTVT7D$iMB52wzYfxV6xtLuIdLokC52NWBVH/axfbtGW6jnjBM=	\N	f	65ba300f-d94d-4d41-a552-528deff77b4a	Юлия		f	t	2021-12-14	julyapozdnyakova2015@yandex.ru	65ba300f-d94d-4d41-a552-528deff77b4a
1003	pbkdf2_sha256$260000$sQnRdnVJaU2wlb9mukogwj$we/LnPkx7tkSljVsEMqGFwBU5yVdAAhivYUs0TMjNMM=	\N	f	35a2658c-eabb-40b1-8a55-096adcf0c75f	Александр		f	t	2021-12-14	ckb44.ru@yandex.ru	35a2658c-eabb-40b1-8a55-096adcf0c75f
1004	pbkdf2_sha256$260000$QJ8kIqANmwPPja4XIGPtR5$s1pQqHF0FmCR0gsZatIwV5b4VGJ5RGu4iQZ8PrsJSSQ=	\N	f	b39ea54a-26a3-4395-a7fc-7bb7d774eedf	Виталий		f	t	2021-12-14	ctroikaveka@yandex.ru	b39ea54a-26a3-4395-a7fc-7bb7d774eedf
1005	pbkdf2_sha256$260000$A2HguQOLrBiLQIUvZHY7hX$vC1eAuDufJrI77QVhl1gZrnjuxig9+gJ7IZJsonc7JM=	\N	f	9b907ae7-3a85-49a5-91c5-358d407e50ae	Евгения		f	t	2021-12-14	only.taora@gmail.com	9b907ae7-3a85-49a5-91c5-358d407e50ae
1007	pbkdf2_sha256$260000$PZvGFuqlCnGH3MSZK3iEdt$CpWCgukWw2vYLq4GsyATAXPmaWpUKWvIDFEOG0w5CsI=	\N	f	9207487b-aafb-42d3-b440-680511382b5f	Андрей		f	t	2021-12-14	base1874@mail.ru	9207487b-aafb-42d3-b440-680511382b5f
1008	pbkdf2_sha256$260000$362F84kRbCaF1szlQIct07$CMBx2MS6rcGcCCB/JQ1Ybg+LyKM7cui9XJc+A0agBe0=	\N	f	97a590d9-c55a-4507-8bd3-88d04fb0688f	Мария		f	t	2021-12-14	art.maria@bk.ru	97a590d9-c55a-4507-8bd3-88d04fb0688f
1009	pbkdf2_sha256$260000$oPVufmyhnVfCOutrSnmnCV$s/94ijDbFDpmo4Rn4b2duWSqw8plO7U3j49EICx+3a0=	\N	f	6e705409-7839-4c5e-a034-9a97e03c04d6	Родион		f	t	2021-12-14	nesterov6969@mail.ru	6e705409-7839-4c5e-a034-9a97e03c04d6
1010	pbkdf2_sha256$260000$g5DsEBsOdBuQSRZ68mwLWS$VxK0CDCnL1dqwC63fTrNzfsGxjnVggm6N9SxbBX7+OM=	\N	f	25dc80ca-d351-440a-8a15-0c80556aa6c4	Борис		f	t	2021-12-14	borism1122@gmail.com	25dc80ca-d351-440a-8a15-0c80556aa6c4
1011	pbkdf2_sha256$260000$1Qbe8gqS5Tb8B2upQ744Vf$mV4eunSZdb8m9eP7ozw7mgnPDXHjjVc+0VJeFmy9Sd0=	\N	f	30e619b4-a0af-4aa9-9173-f38ab5f14360	Андрей		f	t	2021-12-14	fandrei80@yandex.ru	30e619b4-a0af-4aa9-9173-f38ab5f14360
1012	pbkdf2_sha256$260000$tcc0jYR1CaDC4tlmo7kXN8$vZXWhwk6gaglzfNalS0qvrzqsF7ISDO+lNp/0iwxL/A=	\N	f	2c457eac-7d37-4a5b-a220-52d7e6a0e307	Нина		f	t	2021-12-14	ya1998876@yandex.ru	2c457eac-7d37-4a5b-a220-52d7e6a0e307
1013	pbkdf2_sha256$260000$5Vrd11ZR34qB9LzqNj8BnL$q9zThYLHUVGbBV6c6SsxuozYSB4p7iN1uJe/h6zDozE=	\N	f	e34fd9fa-5fb0-4786-be75-075541b2bd37	Сергей		f	t	2021-12-14	mr_master_22@mail.ru	e34fd9fa-5fb0-4786-be75-075541b2bd37
1014	pbkdf2_sha256$260000$i44S5uEAbnAebb82eQtNLm$GE/46yx8pz3iuZamT5cM00MMtRSReaTAUTMIy3rGf1M=	\N	f	897b67ec-a0de-4691-b466-a7d8ae495eab	Максим		f	t	2021-12-14	maxymtsehelnyk@ukr.net	897b67ec-a0de-4691-b466-a7d8ae495eab
1015	pbkdf2_sha256$260000$dCa4Ja33ZU1WHo5fWyNFCo$GwbkzG998f2XA1i74N9cLXrrQmBdsIUtwZmDkm/953k=	\N	f	85c06642-4757-4c40-9d52-0c5665e2ebc9	Никита		f	t	2021-12-14	nikitakizerov@yandex.ru	85c06642-4757-4c40-9d52-0c5665e2ebc9
1016	pbkdf2_sha256$260000$BrTlQeut1jRRFQbNbGJL3J$ykorA0wMKJ6neQCdFbDv2BBjNTinIMme3f72z+ZiUn8=	\N	f	a2881ecd-1345-4b94-a009-6a0cad4acc62	Ленар		f	t	2021-12-14	lenar_g87@mail.ru	a2881ecd-1345-4b94-a009-6a0cad4acc62
1017	pbkdf2_sha256$260000$weo3XIZJ4iz7mDiqGjC3Qh$4NFZw/r/PBD7TzbKza/tOytfFAHx9Q1aUtepNK9LhZM=	\N	f	f2cc9f8c-18cb-4379-9d7d-e1670fecbe1a	Алессандро Гаетано	Населли	f	t	2021-12-14	alessandronaselli29@gmail.com	f2cc9f8c-18cb-4379-9d7d-e1670fecbe1a
1018	pbkdf2_sha256$260000$Ge6wY7QNSnW3pp2EDRmTqA$Sg6iZXEmiLyYqEP5V/AY46ZKA0gtjpF8lNq8VI8pjZA=	\N	f	90ffcc5f-6b74-41e5-bb85-debb7ef821b6	Александр		f	t	2021-12-14	gelios-nk@mail.ru	90ffcc5f-6b74-41e5-bb85-debb7ef821b6
1019	pbkdf2_sha256$260000$1Ieyg9qqSjoTvycHl90skl$v+s13FAfgHqbDvCL+k0n3ZhZ7PZNSQNXMoRk9Idwz+g=	\N	f	5d7ed6df-8f1f-4f80-8dd7-e2abd390397e	Марат		f	t	2021-12-14	marat180192@mail.ru	5d7ed6df-8f1f-4f80-8dd7-e2abd390397e
1021	pbkdf2_sha256$260000$vFMixdUQlPad1H5ybwow4p$F76VT50ziHkm4Xjw9TqjQS2U0UUVTdQQdzHaqTIcDh4=	\N	f	267ebc24-3b45-474e-af21-e28c23fb7d44	Станислав		f	t	2021-12-14	kimstass@gmail.com	267ebc24-3b45-474e-af21-e28c23fb7d44
1022	pbkdf2_sha256$260000$bWylYmQd66iyTonksuVox2$PyimemTNm1WDOEgrQL35kWGptIXpprTeDOpGG9CmBvs=	\N	f	5cc85d81-133c-4895-8ae4-2493e3ea491a	Анна		f	t	2021-12-14	sovagav@yandex.ru	5cc85d81-133c-4895-8ae4-2493e3ea491a
1023	pbkdf2_sha256$260000$0Eou0SJw9K2EuvlGYztFjR$oM9VvaJ8FLxNZ8IpuJ5CLSIPo3kJXDN6CI6w+VZW7mQ=	\N	f	3e677955-35ed-426b-b441-9b5d7e9bbc8e	Павел		f	t	2021-12-14	p.tsigankov@mail.ru	3e677955-35ed-426b-b441-9b5d7e9bbc8e
1024	pbkdf2_sha256$260000$Sr38z1bgqtnkcDr4ZA6aRi$dRvYzDJrA/6xKBISV7VZbUq79lgSU4Fv6y5Qf12IGPQ=	\N	f	d12d9401-648c-4ef2-a650-08327a4bb8da	Семён		f	t	2021-12-14	gorenburgse@gmail.com	d12d9401-648c-4ef2-a650-08327a4bb8da
1025	pbkdf2_sha256$260000$rqjzNlXJxJsxFxVFVqgPsa$3PgsuHIrmgEm3SM+HFYc7tT0Q3R+ELgJvfIMWHHZuwc=	\N	f	c3208780-b7eb-40c0-9432-27cec79b73c5	Андрей		f	t	2021-12-14	slemgem666@gmail.com	c3208780-b7eb-40c0-9432-27cec79b73c5
1026	pbkdf2_sha256$260000$4Uwh0gFkZvjojs8GsUnn3k$Wxy5SebGb9Vjbya9/0Nz6bgiRrbiSp9m8Jwh3adMjVU=	\N	f	8e0fdb42-05d8-4c2f-bd86-2d78631c78e2	Орхан		f	t	2021-12-14	oa.abdullaev90@mail.ru	8e0fdb42-05d8-4c2f-bd86-2d78631c78e2
1027	pbkdf2_sha256$260000$lrRkNqsvJD3nlEuBrlKw4f$o3FxACrtcKsl2l+9LCOLXlf7v5PYppfXfX3M+YaulHM=	\N	f	69e42d33-f76f-4d80-929a-1a043230e5cf	Юра		f	t	2021-12-14	lyuran777@mail.ru	69e42d33-f76f-4d80-929a-1a043230e5cf
1028	pbkdf2_sha256$260000$olLCnp3FUIrBwo7Fv0qlsO$mR/8e9G3Zb+mQhe3+Yzkw/gBiDga3ZWNlF2XUU7m60k=	\N	f	982cdcb9-f0cb-49c3-b76d-8740db66c9ec	A.999.G		f	t	2021-12-14	aurum.999.group@gmail.com	982cdcb9-f0cb-49c3-b76d-8740db66c9ec
1030	pbkdf2_sha256$260000$f9lpQLGhEXPSqBCWnaxnRU$ZQH69dHPyOEpLthmIravW5o/RDAuYYHbXTznA//TVm8=	\N	f	68cb05d9-2bc4-4134-a368-042ccb2c5d01	Максим		f	t	2021-12-14	maxim2070@yandex.ru	68cb05d9-2bc4-4134-a368-042ccb2c5d01
1031	pbkdf2_sha256$260000$ZGaeE0EfUmF7WbRNKApIov$8tHs3e31kzALylw9tFr6M6yU2vQM2M/sy7Mo+yjv9R4=	\N	f	f51052bd-933f-4938-b2d3-bc0a062731fe	Сергей		f	t	2021-12-14	sergrussia@mail.ru	f51052bd-933f-4938-b2d3-bc0a062731fe
1032	pbkdf2_sha256$260000$Y7EJo8pZvd9pBhSP17M0br$aJcNNPLm6d20ol1k1BQuhuhJx//EaELfjjggzZdgtXI=	\N	f	ff04d9fe-8bb5-43d3-a30f-a377e71bf439	Егор		f	t	2021-12-14	ferrar@yandex.ru	ff04d9fe-8bb5-43d3-a30f-a377e71bf439
1033	pbkdf2_sha256$260000$BHZoTHrkx8H1QD5qvCFaxj$jFPYShE16oqkqipk6Nvs3nMReiUOA1hRal7PEkhGLhk=	\N	f	f5a3ad03-890d-4fa6-8220-6497f8c3493b	Алёна		f	t	2021-12-14	laav70@mail.ru	f5a3ad03-890d-4fa6-8220-6497f8c3493b
1029	pbkdf2_sha256$260000$WjBXAfWb1aJWIsLyqxUwEh$Sw64vKeJEMnNCA+c4eC//Oaq8pV+JozUGb6PnjJjpUI=	\N	f	a300464a-8767-4f84-914e-b578a0bdc9a2	Симонов Александр		f	t	2021-12-14	alsim2@live.com	a300464a-8767-4f84-914e-b578a0bdc9a2
1020	pbkdf2_sha256$260000$NJzUptrYUdYcn3NkN1p5s3$H+Gq6Hyc826n2ecWJecfM/l9qGJnCqwQb8lK0HjcC04=	\N	f	621c328d-8a89-4415-9dc3-e7b38102816d	Рита		f	t	2021-12-14	margoshavasileva@mail.ru	621c328d-8a89-4415-9dc3-e7b38102816d
1034	pbkdf2_sha256$260000$Hwgieo2JcXkVDewsRhWxvi$dJhkz+7SjX8QTcDDSaL1EvC4NnFtqB5HCgR8WgviMX8=	\N	f	e4c5d082-e3a2-4318-bc9e-781c8a1919aa	Иван		f	t	2021-12-14	ivaiash@yahoo.com	e4c5d082-e3a2-4318-bc9e-781c8a1919aa
1035	pbkdf2_sha256$260000$FhMlz3uctJmZooV6GWzguI$XlhaZu4VFeS+Pob/tiyinfd8I3R8DX+KlaLkLjEYpZ8=	\N	f	681b5854-469b-482d-9138-d9b186e3d6ce	Богдан		f	t	2021-12-14	bohdansidorenko@gmail.com	681b5854-469b-482d-9138-d9b186e3d6ce
1036	pbkdf2_sha256$260000$tJAHp027H8a9DlbQ2GXT9X$pC5w79koBKd6CfN2VQU7Of5W3FZwlprE0kPPyjXcjaM=	\N	f	3fdfc771-c5a3-4fed-ba81-0b96034d1ef4	Костя Лебедев		f	t	2021-12-14	lebedevkostja@gmail.com	3fdfc771-c5a3-4fed-ba81-0b96034d1ef4
1037	pbkdf2_sha256$260000$Lxft53Of08dc4KWmMIl1Rj$QQu+btNoO79RK8oVD8JzxtcX4bcJlxjIsLlFwe3Gy0o=	\N	f	df881568-4e05-4aab-8d28-a7bc9f2800e7	Иван		f	t	2021-12-14	79021629015@mail.ru	df881568-4e05-4aab-8d28-a7bc9f2800e7
1038	pbkdf2_sha256$260000$0jjIgYBj2DFumnKPoM0Vql$MaEDOghW2EUUukqYvLnGFr5mJp28REhtr4cRnJ5T2mQ=	\N	f	6cfc456a-f85c-4b2d-a852-5e18884541e6	Станислав		f	t	2021-12-14	smagera@inbox.ru	6cfc456a-f85c-4b2d-a852-5e18884541e6
1039	pbkdf2_sha256$260000$utm9mqI4PW6qXwyQHUEE83$DNB6t+i98HZPzUAu/SlbRcDPB3a95aIMNVkK9s26mJU=	\N	f	d7e355de-c543-4ede-9ea1-a4749b0b0273	Никита		f	t	2021-12-14	zuzinnikita@mail.ru	d7e355de-c543-4ede-9ea1-a4749b0b0273
1040	pbkdf2_sha256$260000$AGBiHeIbsV28QYxZ9Eghdu$PbhdzYQiuDI1h9h5ujjHySaiCxuNhS3IKzVtFe45c9E=	\N	f	38575d18-8110-4dcd-986b-7184e0455af4	Анатолий		f	t	2021-12-14	anatolii_iv@bk.ru	38575d18-8110-4dcd-986b-7184e0455af4
1041	pbkdf2_sha256$260000$n1Zw0GlahyLXQz1HlSAGK5$68HnkA44e7FFVA2cli1kh2+OYFgQokmggtS0u/J+tgQ=	\N	f	26b3fb18-67e0-42b6-bdfc-8f24eb79d000	Владимир		f	t	2021-12-14	dolgikh_2080@mail.ru	26b3fb18-67e0-42b6-bdfc-8f24eb79d000
1042	pbkdf2_sha256$260000$l5zdTM1S4b4ekovR6EPl40$X92Al4sNPNFgov/p91zEy/ilBY8VeG2IS55/01qwku4=	\N	f	0c08827d-11fa-40e7-9b2b-4e2edc893986	Петр		f	t	2021-12-14	rutep@mail.ru	0c08827d-11fa-40e7-9b2b-4e2edc893986
1043	pbkdf2_sha256$260000$prVkoXi7fUJJ3nlZPq2nGx$WRrj2IeCQEFiy003HPQE8OsktvMvZXmoKTJyCfBPb9k=	\N	f	9b1527f4-fd03-469e-951a-3c3cc44b464e	Максим Евсевьев		f	t	2021-12-14	mark.filatov08@yandex.ru	9b1527f4-fd03-469e-951a-3c3cc44b464e
1044	pbkdf2_sha256$260000$JnHs5dZq9H72MtiJEp20hV$ODXfbyKAzEAookCIlHdNhWNPI01v8XyfthcQYlUOnFw=	\N	f	a0a3e4f0-7052-43b4-9f97-70a6dc0aa67e	Мухамеджан		f	t	2021-12-14	dossayevmn@gmail.com	a0a3e4f0-7052-43b4-9f97-70a6dc0aa67e
1045	pbkdf2_sha256$260000$gtP9n9wX5eNqFfTq7pKNLU$PRNwRV5DrZew4YCXzsWesoWxjlt4Sc/c6xrKgAuhuA0=	\N	f	a62662bc-0bf2-4994-bf8b-84b2b62f0d5f	Руслан		f	t	2021-12-14	ruslan_lma@mail.ru	a62662bc-0bf2-4994-bf8b-84b2b62f0d5f
1046	pbkdf2_sha256$260000$D6Cw3uUgv6ftHSx0lyh1ko$gzmbzj/1Z74jE2d1iGJQvfaiWbAmsOoHUthkoThZb9M=	\N	f	a7b7f080-d03e-4c87-8060-a7c8764e1f54	Александр		f	t	2021-12-14	yeliz33@gmail.com	a7b7f080-d03e-4c87-8060-a7c8764e1f54
1047	pbkdf2_sha256$260000$gtx9Mfv4imVusyP3zsPYvm$GgHL9ItG6fwgvt9qy14iuRI0f6AUCIMqXmVY4AU5oSg=	\N	f	24844645-0af5-459d-ae03-4dc8ac81e1ef	Александр		f	t	2021-12-14	santei1383@mail.ru	24844645-0af5-459d-ae03-4dc8ac81e1ef
1048	pbkdf2_sha256$260000$4AlO8ggR3ZXKR6jotsyKPZ$51sscSjr2gQr63336qPDR3N7hBYt6ngu9XeSTLkt9Lg=	\N	f	93315e1a-8ccb-431b-875a-ce73c883ad59	Сергей		f	t	2021-12-14	senia077@yandex.ru	93315e1a-8ccb-431b-875a-ce73c883ad59
1049	pbkdf2_sha256$260000$IvCkfyHyuYAW6kNzcuUJJ6$5eaLP7zh+N1T38Vokohj6nAdOKt6BasUm9qHDXez7so=	\N	f	164c82df-79f1-42db-be41-8b4bebffe7bd	Алексей		f	t	2021-12-14	samarakovskij1996@yandex.ru	164c82df-79f1-42db-be41-8b4bebffe7bd
1050	pbkdf2_sha256$260000$82UKU2ju1Ta3OQsUnuoOhV$ksz0XP0lBZlgRqblFLcKqV40lpNlfMKrsUeEtXnEykQ=	\N	f	b7a787da-4814-4f01-9162-0f2ef96ff85c	Олег		f	t	2021-12-14	oleg.kochakov@mail.ru	b7a787da-4814-4f01-9162-0f2ef96ff85c
1051	pbkdf2_sha256$260000$2YF2Y5Dsgceytzp9WisXCC$jypGZwTgMMtN7JCECFjIrr9ICIV+38hXNlazZCPZgNU=	\N	f	a0bc2046-48c6-4770-b104-d69dc5b3e4bb	Максим		f	t	2021-12-14	fedchenkomax93@gmail.com	a0bc2046-48c6-4770-b104-d69dc5b3e4bb
1052	pbkdf2_sha256$260000$4E4BW2LrRFC4g5WnzJFqvm$h9jIIRZubdItL4ExfVOtTD/a3KmVmZmcwNRAidS8qug=	\N	f	05bd3074-eae7-4874-9b54-8eb51fb57af8	Артём		f	t	2021-12-14	shadl_96@mail.ru	05bd3074-eae7-4874-9b54-8eb51fb57af8
1053	pbkdf2_sha256$260000$jx1maoIuHBhpJ9LtGSFMQ7$LaL6n9DINrdvfyMJ+6VK+x2/ioQhJpl8hQv4YSL+i1s=	\N	f	b5fe1d62-f72a-4aa4-ba60-d57cfd9057b3	Ильшат		f	t	2021-12-14	mir1984_13@mail.ru	b5fe1d62-f72a-4aa4-ba60-d57cfd9057b3
1054	pbkdf2_sha256$260000$OGhs6ApuC7sQ9j5ZvEvKsr$pjR3Kt/cI9ok8cuank8ilcZ1uygcFcsGTBUaoGMYlbs=	\N	f	6ed6d75d-9ff0-47d3-88e9-9e26420954e1	Владимир		f	t	2021-12-14	bekoev83@gmail.com	6ed6d75d-9ff0-47d3-88e9-9e26420954e1
1055	pbkdf2_sha256$260000$wmXZgezL1NCQjaSFAhSYuv$VByoI3dLdHA1aX8tPt+KGTU2ASR8FVIYMGECSJiKtLc=	\N	f	0d26c79d-e93c-4886-a6d6-1eebf1f38bd8	Тимур		f	t	2021-12-14	timyr.sharipov@gmail.com	0d26c79d-e93c-4886-a6d6-1eebf1f38bd8
1056	pbkdf2_sha256$260000$ArqzrCB3gwp8HHmfm3rp62$z5pY4OGqylEcRyY5U0D3c73uCuiAonoPw0oTZOvzoWg=	\N	f	def1e1bd-2da6-48fd-acf4-a1d738b906a0	Сергей		f	t	2021-12-14	morozov7778777@gmail.com	def1e1bd-2da6-48fd-acf4-a1d738b906a0
1057	pbkdf2_sha256$260000$x0FdCduD7fA7LEwL9UPxb9$hTjVX1o1+kVdAKNmhWCLbUApqZuS+vi/Uh8c6QtGdEA=	\N	f	3f1e3e52-710d-447d-847c-7b79867b401b	Лариса		f	t	2021-12-14	larisa-u@mail.ru	3f1e3e52-710d-447d-847c-7b79867b401b
1058	pbkdf2_sha256$260000$wFU8RVh8h5T5JL2xl786ww$edVKSNt8JzwcCGWS79kslQMsBIeRpGd49p6+KJv9cXM=	\N	f	f9d9b548-c2ee-4db1-839e-2a30e64d96e1	Николай		f	t	2021-12-14	tisovnikolaj@gmail.com	f9d9b548-c2ee-4db1-839e-2a30e64d96e1
1059	pbkdf2_sha256$260000$kJChrKncnkPq7TaqnuKOSf$fq6RJPVhTy/z9QnIQW3qQzPVjxzKbzHeZCYj2obgkGE=	\N	f	c335bea5-a5c4-4065-807b-b35e03e11579	Андрей		f	t	2021-12-14	and.bars@gmail.com	c335bea5-a5c4-4065-807b-b35e03e11579
1060	pbkdf2_sha256$260000$A8iiZihix5fDI2Kl7jZKwm$yw0zorop5Y7dsL8qlsjuEFit84qRh7Q4G1Lrlbsko8Y=	\N	f	29fbf702-127a-42ac-9981-9fb460f8495d	Александр		f	t	2021-12-14	www.alex-sheglov@yandex.ru	29fbf702-127a-42ac-9981-9fb460f8495d
1061	pbkdf2_sha256$260000$4Uct3MEYDg93WW2IGvol8d$uXgs6iPiVHxVwYV+hi0ChDvBhn3o8yCHBtmj49C1CbI=	\N	f	b31421f8-23bf-4d43-b1af-3a2da8192d06	Евгений		f	t	2021-12-14	uekbrtdutybqdkflbvbhjdbx@yandex.ru	b31421f8-23bf-4d43-b1af-3a2da8192d06
1062	pbkdf2_sha256$260000$0OefuYuo01gEAwYtXPB1OI$g0T87XbbMYNYFPYOxKQQ3U8dukwo+an1vTnz1Pp1AIU=	\N	f	047b3f00-831f-4651-9117-a12423f73087	Андрей		f	t	2021-12-14	cvetok5@mail.ru	047b3f00-831f-4651-9117-a12423f73087
1063	pbkdf2_sha256$260000$2yoVVRd0ccIeKahPjUMkrl$KksHH/B0OPCvOnN5ekdsbUu74QXe60R3+yUBZbTUwQ0=	\N	f	2a13f664-7518-47e4-bdf4-acaf42025138	Андрей		f	t	2021-12-14	ankl-borovoe76@inbox.ru	2a13f664-7518-47e4-bdf4-acaf42025138
1064	pbkdf2_sha256$260000$880px8EctQxiNtGr9xuauf$bQPcMO6h2fov4588PWXCHpgyvnsVDgkJpqNU4DaYaaQ=	\N	f	8e439d12-2c5b-4c65-9567-d70408a8d9f5	Денис		f	t	2021-12-14	dmmakarevich@mail.ru	8e439d12-2c5b-4c65-9567-d70408a8d9f5
345	pbkdf2_sha256$260000$EToBoArxV85Yn7qFkNwl4a$zEn7g/ANhTDm1VIYbSJJTFWZh0WADVTxxKN4w8+qeMg=	\N	f	94117530-d30e-4696-8158-0c0b17122339	Николай	Потапов	f	t	2021-12-13	budulaysedoy@rambler.ru	94117530-d30e-4696-8158-0c0b17122339
1065	pbkdf2_sha256$260000$54uuYZorBYegeVg7TJbtuh$F+5ECicnQZDU5u0QL/xXdTPgQvZ4jOcOjubHkrVX1ao=	\N	f	79dd126e-7955-4b2e-8d66-cc2667cb805b	Никита		f	t	2021-12-14	chonjenkins@gmail.com	79dd126e-7955-4b2e-8d66-cc2667cb805b
1066	pbkdf2_sha256$260000$0Vy0nQZ1vlCFFXUKTKirH6$bTSbPJuF/xZPA/WdgDIoKhiXcvt2HXB5dAu04z+tR+U=	\N	f	0f8cb9d5-040f-4e79-abba-aa015284b414	Алексей		f	t	2021-12-14	tim_a_g@mail.ru	0f8cb9d5-040f-4e79-abba-aa015284b414
1067	pbkdf2_sha256$260000$C8M53dY6z4sVeMIxntG9sC$/8/yLKY1TKbt2meBB/u9SFdJPVOz5iWbHCNC8IhMXeE=	\N	f	8843296a-58b7-4f22-9d31-b7d216dab07e	Михаил		f	t	2021-12-14	mih.net@ya.ru	8843296a-58b7-4f22-9d31-b7d216dab07e
1068	pbkdf2_sha256$260000$z7ZSA7gdmlOjbMZ9hTrWCt$YUqbBy/JHUcP/jf4LLW2MQghcI92y8/4S4sMxY5EkRk=	\N	f	d52dde84-7c85-49ad-b741-dacba81aa7e6	Дмитрий		f	t	2021-12-14	vozorom1977@yandex.ru	d52dde84-7c85-49ad-b741-dacba81aa7e6
1069	pbkdf2_sha256$260000$4UU29mZx72b7KkCGbBhfj3$iichW7FVHjGfgtBQhhDyFUg815Bmaw6YnJvgzJHUWs0=	\N	f	e03803d0-6cd2-4cdb-96bb-4ee757a357f2	Николай		f	t	2021-12-14	urov.nv@gmail.com	e03803d0-6cd2-4cdb-96bb-4ee757a357f2
1070	pbkdf2_sha256$260000$kqNQBC2wlvOqrlZPyLh8BB$Z7PVtga16OmKasb6a5oGXxtuP0uxbiJMFJk7bD2G2as=	\N	f	a5eb4cc0-3ee0-49dc-a8b2-2411af0add7a	Сергей		f	t	2021-12-14	vsv262@gmail.com	a5eb4cc0-3ee0-49dc-a8b2-2411af0add7a
1071	pbkdf2_sha256$260000$5mewf4JnpGUGOFOwu5E1ug$sC6iF5metuqXd4cYEF1eMvcGtRMr+9PJkJdxwv4ThWQ=	\N	f	6ef7f59c-2d4e-4cec-a098-87486e05d57f	Павел		f	t	2021-12-14	pavlov_pa@bk.ru	6ef7f59c-2d4e-4cec-a098-87486e05d57f
1072	pbkdf2_sha256$260000$efYra8aSr9LypnkmIwlrK2$byVCIde7fVP/yfBI1kOhX9kaCXg79datna1bjpgRMwE=	\N	f	3166e84e-403d-4d83-b472-69226df1529f	Матвей		f	t	2021-12-14	matwey228@gmail.com	3166e84e-403d-4d83-b472-69226df1529f
1073	pbkdf2_sha256$260000$secPxWA4YQtzLlaiMAqhvm$a8VaWvi1sZxS2p5tV8JDHJt2i7kN7bXpQfXF5rdk6Zw=	\N	f	ff6404e1-3528-43dd-8dda-984f265856bc	Сергей		f	t	2021-12-14	semenov-s@list.ru	ff6404e1-3528-43dd-8dda-984f265856bc
1074	pbkdf2_sha256$260000$yged1N39IWf3whcLnpAvtd$4G5cZja9aaZy+9tHu4c1A5+0gtc2CUqB2UFye8kwU/w=	\N	f	58f54bd7-f40f-4dd6-bf03-97ece1bea596	Роман		f	t	2021-12-14	bush041001@gmail.com	58f54bd7-f40f-4dd6-bf03-97ece1bea596
1075	pbkdf2_sha256$260000$pFtz3mp9NWBz8Cs3BlpZta$0rCK0MGnpi92DWbatGtGcfe7FUqRogHoqspev8S3PpY=	\N	f	390fa6ff-2a98-450c-8773-a77ea624b692	Глеб		f	t	2021-12-14	lomov000@yandex.ru	390fa6ff-2a98-450c-8773-a77ea624b692
1076	pbkdf2_sha256$260000$pfGL4j4bw2aGcLcGopdTuB$cvxR0GuueQQzu801pxeFhkBxdQnF0zlJH3KbK4w5hLk=	\N	f	b8ce01c0-daf3-4a8a-bee6-2df38ae20d5d	Андрей		f	t	2021-12-14	kfh-shiryaeva@yandex.ru	b8ce01c0-daf3-4a8a-bee6-2df38ae20d5d
1079	pbkdf2_sha256$260000$91qz007jJ94RGUAQYFx2lz$Nwpl+VPnQUQp9/zeFqlS0NCqRqPIP2KZUenmEx6G+/M=	\N	f	03b8f9b6-4b79-44e8-899f-92da462007ee	Олег		f	t	2021-12-14	oleg74294@gmail.com	03b8f9b6-4b79-44e8-899f-92da462007ee
1080	pbkdf2_sha256$260000$I4yjCto6jENFad0kj1H0XW$zhZapJtDqoh0ABxWTry3kFUt7nBW20kPYcsxeeRLDn0=	\N	f	79344d69-b153-49c6-8894-f149768205a9	Динара		f	t	2021-12-14	mannanova87@inbox.ru	79344d69-b153-49c6-8894-f149768205a9
1082	pbkdf2_sha256$260000$ktriB4U47JTki0ODZod8Bw$mYPh6yTjeoVPiiRxmMpdLPVGGJL1jI3d1L0gED5GLkU=	\N	f	c3c41ff4-3153-49df-9c5c-70870e8d0589	Дмитрий		f	t	2021-12-14	dmitrii80_06@mail.ru	c3c41ff4-3153-49df-9c5c-70870e8d0589
1083	pbkdf2_sha256$260000$LuDkp6S1DSiySIrRR8VgH4$xutNWfgcB+Sm36uQJ7vWxCFKmNnBqTTzQ/EkKdHIZK8=	\N	f	a032d678-d39a-47d3-900d-d2e274fdb649	Степан		f	t	2021-12-14	kychmiy-stepan@rambler.ru	a032d678-d39a-47d3-900d-d2e274fdb649
1084	pbkdf2_sha256$260000$uSMtgz6L4XjkgJECZwKgMP$BpovBeC6bWI6id5nWI+JADV62tLrIXdG0ZRqO+2PWBA=	\N	f	fae6993d-3cb2-46fd-bb05-db726c463df5	Аркадий		f	t	2021-12-14	arkada101@yandex.ru	fae6993d-3cb2-46fd-bb05-db726c463df5
1085	pbkdf2_sha256$260000$YSa2KBk7mkZz4sq2aJoCLY$jkJDCnFjXGfonj47Jm50H2niKrpYQ0/j1FFs6Vey+6Y=	\N	f	19a41841-3fb5-434b-93a4-489cabadd26a	Дмитрий		f	t	2021-12-14	zinageking@gmail.com	19a41841-3fb5-434b-93a4-489cabadd26a
1086	pbkdf2_sha256$260000$wPmokp5KnsBJINfUYLRaGA$GzIX9AABh9MaGsVkmBfRK6h6ipCVAABoapuXGF9wLz8=	\N	f	ceac9c3f-9b85-411f-b156-ac34bbbee825	Алексей		f	t	2021-12-14	a.naymoff@gmail.com	ceac9c3f-9b85-411f-b156-ac34bbbee825
1087	pbkdf2_sha256$260000$TIKhL6Cds8D7oIDFmgoVSc$E44zrmOJENkdc7Iw2M8rTvRtU5dwNv4Iv9yf++rrmSw=	\N	f	6c07c6a2-0353-4cf3-b81a-9b67f649a79d	Юлия		f	t	2021-12-14	vlasovayu7790@gmail.com	6c07c6a2-0353-4cf3-b81a-9b67f649a79d
1088	pbkdf2_sha256$260000$CU3QVASKRIwQ6irCDwDuxs$lGoul3Xt4FuEzivDF2j0iFM3ViRamTmH5RkOlIJixhQ=	\N	f	2ec7c5dd-16c7-42bb-9af1-95034b09bab7	Олег		f	t	2021-12-14	9727732@mail.ru	2ec7c5dd-16c7-42bb-9af1-95034b09bab7
1089	pbkdf2_sha256$260000$muX6Pvrng6KOzb4MisCUlv$hkxjjHlXy9X2BHZ87zX0ZRP1KmPRSUf45lFxNODJ+Ug=	\N	f	59245cb5-86b0-48f3-841c-5bb6aa8ec6fa	Михаил		f	t	2021-12-14	lokomotiv93@inbox.ru	59245cb5-86b0-48f3-841c-5bb6aa8ec6fa
1090	pbkdf2_sha256$260000$oZVFOUjSnQe70f7TGbriCm$Q2AivIZJvcLEwS3n2FJ9akkYJ2jOI1mS1NycB3qjCpI=	\N	f	416a0a03-bffe-4742-9abb-1d94dd7dc6e0	Юля		f	t	2021-12-14	julialeegore@ukr.net	416a0a03-bffe-4742-9abb-1d94dd7dc6e0
1091	pbkdf2_sha256$260000$eRbzChdtb91MVPS7EaVzg3$ZcqCOc38JgScFcKBcH3feoQSxj4+g5uLC7b/oeu5t6k=	\N	f	89cd72c1-0a1e-4029-8c07-cd8ad3d0ffa9	Анна		f	t	2021-12-14	sponch_bob@inbox.ru	89cd72c1-0a1e-4029-8c07-cd8ad3d0ffa9
1092	pbkdf2_sha256$260000$wfQEHE2spE2ioe3LExWciG$qHM3fRB1v3pJinf9fBHC0R207W6VcFdO611riXiMGcM=	\N	f	d717047f-719b-4fee-b366-010e07a9601e	Серик		f	t	2021-12-14	serik.alekulov@gmail.com	d717047f-719b-4fee-b366-010e07a9601e
1288	pbkdf2_sha256$260000$sl2kFaCdKUhKmgpY2Kdunj$Ra2FIwQJNWgfpo03xz3vNAxiMq3/Gje4KMsWRXMKwqE=	\N	f	46f13706-d7f8-4dd7-b4b8-33b24932d2ab	Павел		f	t	2021-12-15	ovsienko_pn@mail.ru	46f13706-d7f8-4dd7-b4b8-33b24932d2ab
1580	pbkdf2_sha256$260000$jYgZJ44VAgFp4ojnAh8F06$wbb3h47PaDJNFSrTgzZNcx2lStZPueOGiaJloQguZMc=	\N	f	86e0bf10-e6a3-48ad-af7c-466aa177fa8c	Дмитрий		f	t	2021-12-17	kovt23@mail.ru	86e0bf10-e6a3-48ad-af7c-466aa177fa8c
1078	pbkdf2_sha256$260000$4L1XMz5ELsjPhjWZPOJ8h7$7Ul2ABP7vpk90/ullxOjEiQSg7s6TMluG8UYg+9yTHk=	\N	f	d2ebaa0d-141f-4fad-b900-457a12c7419c	Джамбулат		f	t	2021-12-14	aleroev511@gmail.com	d2ebaa0d-141f-4fad-b900-457a12c7419c
1077	pbkdf2_sha256$260000$cSNITA1ZxYOsMs8XtCabcr$4MypEkoPbdtSJEsIIgGyD38C/wH5T4mgfTLTb2RemSQ=	\N	f	08c72594-377a-4642-8d4b-34224fa2ecdf	Данис		f	t	2021-12-14	reason2205@yandex.ru	08c72594-377a-4642-8d4b-34224fa2ecdf
1097	pbkdf2_sha256$260000$IehnMtUL3roup01JpJ8MPA$ESjvj28q9TgvAmIq+vORkaFLuikAd+y/zFWpHJeCrp8=	\N	f	2253b6a0-792b-489a-acbf-b9f28fb93f30	Сергей		f	t	2021-12-14	saynex@mail.ru	2253b6a0-792b-489a-acbf-b9f28fb93f30
1098	pbkdf2_sha256$260000$Ok7mzCnd3MnbyskBgMVdic$RquJz7Cd/GOva2ZJa8iYhYZkzDHleQdhl7J9nAyWSUQ=	\N	f	1f7bce03-d020-4665-bf0c-c7205b6cfcf1	Олеся		f	t	2021-12-14	olessya-olessya@mail.ru	1f7bce03-d020-4665-bf0c-c7205b6cfcf1
1099	pbkdf2_sha256$260000$xe4iHiQu6cqXOWHopjP0UK$4xa6kWc7DlxUG9AilW8QqKyrBAUQRAX3ElQfphJ1zC8=	\N	f	02176813-f27a-4aa9-ab1c-0f27f24af497	Константин		f	t	2021-12-14	kostyadanilov2@gmail.com	02176813-f27a-4aa9-ab1c-0f27f24af497
1100	pbkdf2_sha256$260000$OwIb470JYqMs2sA27oRyag$rQ47Eotlr/CeJg3W1yC+5LVXvI9OF5teT5K24AVRp8U=	\N	f	f0aed360-63fc-4d67-bcca-12f43efa9b89	Дмитрий		f	t	2021-12-14	dcupa@yandex.ru	f0aed360-63fc-4d67-bcca-12f43efa9b89
1101	pbkdf2_sha256$260000$hhaGacvLZzaLaio14Cyvmk$fbb8RnnJ3FzHzqdjR3mukdwwTlhUEsSJL8UYYIcbElA=	\N	f	65dfc5e1-610c-4a84-806d-de868fdb4018	Адель Муллагалиева		f	t	2021-12-14	mullagaliev@mail.ru	65dfc5e1-610c-4a84-806d-de868fdb4018
1103	pbkdf2_sha256$260000$VzpnyBYQy4W0293yC55Nrl$cxudtcji4sMUIRvt86ikoSBUNDsyEn7KxUkDd2h0x2U=	\N	f	0039743a-3562-4240-80e8-9ea16ea5ad46	Evgenii		f	t	2021-12-14	elitegroupp@yandex.ru	0039743a-3562-4240-80e8-9ea16ea5ad46
1104	pbkdf2_sha256$260000$bcWJd7qiCDGRmvJjvA5DTD$cXjmig42TdHLkwpRRZUlg3yLG6B7eYLjahMrdicPUEc=	\N	f	0934212d-0d47-4b32-85ea-8481d6a93062	Андрей		f	t	2021-12-14	conjore@gmail.com	0934212d-0d47-4b32-85ea-8481d6a93062
1105	pbkdf2_sha256$260000$3ckgw9BkulbKgeydhUT21C$RUQtmJZvRB0Oj9/4yH/Dd3NazMnlfpzScdjuaXyEzuU=	\N	f	c09d1914-e0d7-4ace-baad-b5c55e545c29	Юлия		f	t	2021-12-14	bashtanova@gmail.com	c09d1914-e0d7-4ace-baad-b5c55e545c29
1106	pbkdf2_sha256$260000$OyYHOhNSbPV7svmUcj6uE3$Dp6oI6MlQMQ2clIM5l33fzMXMEfq2L6+RMp10gUvRJw=	\N	f	70d0da0a-8a81-4e5b-8c2e-5606362667f5	Константин		f	t	2021-12-14	konstantinov.k-87@yandex.ru	70d0da0a-8a81-4e5b-8c2e-5606362667f5
1108	pbkdf2_sha256$260000$clBR1L2e9FA2QT0miPlAYX$PY+TIevmJjA9Xzsu/23tmIMbFglWnYrb3SrybCsFtJU=	\N	f	0e86c2ca-850b-4636-a10b-46a81f6b593e	Тенгиз		f	t	2021-12-14	amoevtengiz68@gmail.com	0e86c2ca-850b-4636-a10b-46a81f6b593e
1109	pbkdf2_sha256$260000$YvGoIhJyzeJTyKYuPzUHYl$dgJmombrpaj6wAP43T2EBOvE/7MtZzIZ6Zcn9QJp5/k=	\N	f	db75f354-c299-43f5-9d47-a713f67ac9ce	Константин		f	t	2021-12-14	stan.spb@mail.ru	db75f354-c299-43f5-9d47-a713f67ac9ce
1110	pbkdf2_sha256$260000$P8lnlB9Nx2WsgXckIAW3MW$A7t+D7HUJvvKCRu2I/UwEVCaFCarot8nlj88VmOFzFM=	\N	f	96b4c7f5-788b-4158-86d4-5a927d3b38f2	Андрей		f	t	2021-12-14	anechaevsar@gmail.com	96b4c7f5-788b-4158-86d4-5a927d3b38f2
1111	pbkdf2_sha256$260000$aKjArOcZuX4DAuLeKQWxDZ$U3TWB4i6D+D5EyemmrkYmBW3JqnZEAxwJIIbfhlV/BI=	\N	f	9f8e1360-4be5-43a1-aba5-2563de138d13	Светлана		f	t	2021-12-14	svetlana.kaminskaya@gmail.com	9f8e1360-4be5-43a1-aba5-2563de138d13
1112	pbkdf2_sha256$260000$Dor3U6CoPAvDWcY3NQZkqO$bbghMifLAKlrcuDlcXmsCzvMUXuUE3N9IXM7jm1hnpE=	\N	f	aa3e8aa7-753e-43cf-b553-6ebcf4ad5b43	Рустам		f	t	2021-12-14	rustam.galimov.91@mail.ru	aa3e8aa7-753e-43cf-b553-6ebcf4ad5b43
1113	pbkdf2_sha256$260000$fRCxTdLgmLSwSYP03lfcl4$TE5wpd92upIHx8/rbAbIjS7UvwSvSpwOHQANGB5FIRU=	\N	f	c0619639-0337-42f5-8fcf-62dbc028c5e3	Роман		f	t	2021-12-14	roman.zhabin.86@mail.ru	c0619639-0337-42f5-8fcf-62dbc028c5e3
1114	pbkdf2_sha256$260000$A3WhsTYk00mAnlv3MsQXoD$9/Bt/uaJogJpCTQPE+zW2kUG+Q1qjpqA2OzOrnhTNho=	\N	f	c245f98f-ae43-4c68-9004-663f06e04f50	Дмитрий		f	t	2021-12-14	svdr71@mail.ru	c245f98f-ae43-4c68-9004-663f06e04f50
1115	pbkdf2_sha256$260000$fyouPPvtXR7z3BuHgFpyVz$3tzGVDN6e/SAw40seRIfNJyMdhWRZGbPvd8oC3STWj0=	\N	f	019ffe89-0b67-409c-ab7d-825ffb44516f	Михаил		f	t	2021-12-14	mik-glazov@mail.ru	019ffe89-0b67-409c-ab7d-825ffb44516f
1116	pbkdf2_sha256$260000$yy3ZzKFcR0X2ZC4MTEmm1P$7oAVf/gMQmBwhAM0EL2oDL0adLG03PDYR53fVOJkPSQ=	\N	f	3c82c830-ebc2-480d-a450-01f8db39409e	Иван		f	t	2021-12-14	szfpk_vch8@mail.ru	3c82c830-ebc2-480d-a450-01f8db39409e
1117	pbkdf2_sha256$260000$jPGKfGapO6Cf3J4TOld6y8$1hB04fDOpT4wV5g3IBZi1Q1MiauAZcCZgwu2jomkL0o=	\N	f	aafac39d-0d26-4889-af57-328485cedefe	Вадим		f	t	2021-12-14	vadim.v.p@bk.ru	aafac39d-0d26-4889-af57-328485cedefe
1118	pbkdf2_sha256$260000$sxYSrercqOYR0YhWi4YEkZ$NvVgSiRSWePJbiSLyt/g6ybMwZt62QdqwqyAibbzmlA=	\N	f	86f8464a-d009-40b0-b91c-d2aafeb12259	Сергей		f	t	2021-12-14	9833371@gmail.com	86f8464a-d009-40b0-b91c-d2aafeb12259
1119	pbkdf2_sha256$260000$LYtIab0pad4UESN15jBROf$AuMkOvNKGsW4rv/+ORj+osyUcCP4jX2vF37uGebADQg=	\N	f	3fbd8593-bea0-4700-8a4b-f00a59574d87	Даниил		f	t	2021-12-14	833780@mail.ru	3fbd8593-bea0-4700-8a4b-f00a59574d87
1120	pbkdf2_sha256$260000$kzzmDNElgbrA62YtaNCwfe$lvPsqGZUf70sIcvY8Ckz1AzCybdM7P7WQzp+Tm5huog=	\N	f	e2b5b92c-d685-4016-a388-5ed2e880f2af	Сергей		f	t	2021-12-14	serz71@yahoo.com	e2b5b92c-d685-4016-a388-5ed2e880f2af
1121	pbkdf2_sha256$260000$rOOxODUamQKSpt1zmJRZSG$99OlYrxd5gaJKDTwFdUa7W/LmYOB6VlGONFPtUTn19k=	\N	f	1eb24d76-0278-414e-a8f6-b91e74312bfe	Алексей		f	t	2021-12-14	alexhao@ya.ru	1eb24d76-0278-414e-a8f6-b91e74312bfe
1122	pbkdf2_sha256$260000$Mm3hAL5fPVRSEbqLYHmnCi$PyFIJZ2ZMW4dRa2FYDsJUkZMuSGZ9SjawmG4GucICLg=	\N	f	d1dca742-5b79-4eba-be6e-30cd0df256f3	Марина		f	t	2021-12-14	marika73@bk.ru	d1dca742-5b79-4eba-be6e-30cd0df256f3
1124	pbkdf2_sha256$260000$hQkul8An8TiGDb3hBuMAot$Y8kOQQqfwSvwkwQs1PgeT0aR77KibLBZtRtKvFBU0cE=	\N	f	20d2ac6c-957b-4e31-a61d-b1ee3d981da8	Роман		f	t	2021-12-14	r.tolstunoff@gmail.com	20d2ac6c-957b-4e31-a61d-b1ee3d981da8
1095	pbkdf2_sha256$260000$sXOWNlrox3qGuBCdMgRJRF$K81tJh3sdEKLVfyZo++EZEJMZIHLbXqsVVufhnUV+rA=	\N	f	c4ce1445-2123-4765-9640-25858b35205f	Антон		f	t	2021-12-14	aylarionov@yandex.ru	c4ce1445-2123-4765-9640-25858b35205f
1102	pbkdf2_sha256$260000$CF8s1WfwgbHUQT6N2HKbft$iM5pn2YKXinryMYQxdc8pXnxyt0BFoXga7GzI75E3AA=	\N	f	3b1d7e23-6c86-4b47-b737-9ce20568b31b	Илья		f	t	2021-12-14	ilia.plast@ya.ru	3b1d7e23-6c86-4b47-b737-9ce20568b31b
1096	pbkdf2_sha256$260000$L4u6MvMbqdZRLaaTIP2SyL$vfPo1IP9B/CvnaddTWfSLoDiFJW7xFRTcevRtVpmOn8=	\N	f	09802e7e-6552-4db5-8c6e-a6f2e954b708	Шамиль		f	t	2021-12-14	shamilk5305@gmail.com	09802e7e-6552-4db5-8c6e-a6f2e954b708
1123	pbkdf2_sha256$260000$lfyH76MUklcixUcdlnFh3p$cV/AvMToFSyuCM5mwNTeGmkETybXw4m0t+z+hyxu74g=	\N	f	1e8ef45c-0700-4580-976c-d76348b29082	Сергей Ш.		f	t	2021-12-14	ssa2000@mail.ru	1e8ef45c-0700-4580-976c-d76348b29082
1107	pbkdf2_sha256$260000$JDZxxeYE9nBXM5cBlerzsL$LF6unNK0snal+TCaG1mpJ2cpZKmYfM5IX+/HrPYb0ic=	\N	f	3cd3a579-078c-4813-8797-f9e6c6aa36b7	Людмила	Слепченко	f	t	2021-12-14	lyudmila.slepche@mail.ru	3cd3a579-078c-4813-8797-f9e6c6aa36b7
1125	pbkdf2_sha256$260000$D4DllZzS71bs3SDNv4CXLT$idH4fBBhzOcaG/w54IcVj1TSKzG402JCewnAGfrzAyY=	\N	f	866daa79-cf55-4f35-9772-9d5428e2d91b	Sergey		f	t	2021-12-14	meller.007@mail.ru	866daa79-cf55-4f35-9772-9d5428e2d91b
1126	pbkdf2_sha256$260000$juhCLMpYDOyYblLeY44IIW$XCOVq1uzSTwjsA8CjaterViurXaYsi4RfMyjSYZwdUg=	\N	f	6392daa7-da77-4fab-a9ae-92df73a7c04a	Денис		f	t	2021-12-14	denny.senkevich@gmail.com	6392daa7-da77-4fab-a9ae-92df73a7c04a
1127	pbkdf2_sha256$260000$bDfO4WZ85pxzSFgCT1PGdV$qKYWp2AWH5h2BZo3HwMRfu4hRxTU/KotqAEwgoULGEM=	\N	f	5603fdc4-3832-4969-a8d8-958bc56c27ab	Флюз		f	t	2021-12-14	ffkhasanov@mail.ru	5603fdc4-3832-4969-a8d8-958bc56c27ab
1128	pbkdf2_sha256$260000$WyfSedhz2sA1uij1BrNNor$lRxdpERrWPtbTSlJOrfrpUckVb0n4HYgSJAf7syglFc=	\N	f	da453d3c-0123-4343-a9f0-862183654972	Андрей		f	t	2021-12-14	bacterial.fox@gmail.com	da453d3c-0123-4343-a9f0-862183654972
1129	pbkdf2_sha256$260000$DnVSXhLEakXqE2NNq1ZAVk$i+bmE229jOJNoBGWMIRWmpk1mUH99W2+vjxDBL2oxgE=	\N	f	f89dd8cd-030c-4010-826e-e8aa078bc2ff	Максим		f	t	2021-12-14	2277mk@gmail.com	f89dd8cd-030c-4010-826e-e8aa078bc2ff
1130	pbkdf2_sha256$260000$UnHc7g3opBXpTLJF1K03s9$90NO3LcNXfp6qEOFXgunwhIQWxk/tn8nkMBjn/UuQwM=	\N	f	45c2dd7f-7e48-48b8-b3e8-9dca3cca69f0	Виталий		f	t	2021-12-14	vewtal@gmail.com	45c2dd7f-7e48-48b8-b3e8-9dca3cca69f0
1131	pbkdf2_sha256$260000$Dn6E2AxOUNvLLfmpJQvSNq$6BWfFWal5uIpWYyAXWxtY7rrfrxeUydnY7GRfVk/31E=	\N	f	27a67c8d-76de-4f52-ae0d-b49238cd9185	Индира		f	t	2021-12-14	ibadatt82@gmail.com	27a67c8d-76de-4f52-ae0d-b49238cd9185
1133	pbkdf2_sha256$260000$Y7UQRrV9ul6iuIlx4G6fiM$dDEg5V5h4H9Nnru3xivHV4Im1AUwGjnnmB1yXzB0jHo=	\N	f	edbc2ab7-d9ca-43a4-9425-983be817046d	Максим		f	t	2021-12-14	makarov2717@gmail.com	edbc2ab7-d9ca-43a4-9425-983be817046d
1135	pbkdf2_sha256$260000$TFfPqmkJWjBh7DSipPBPUR$CiGy0so1tT0fz7bEyQkEZ68YBrO3xD1rMZZXImSMzco=	\N	f	662de6e0-7774-4d09-8c64-64c103b72109	Елена		f	t	2021-12-14	alobnosova@gmail.com	662de6e0-7774-4d09-8c64-64c103b72109
1136	pbkdf2_sha256$260000$tVYrIo4dq7iirR6FX0uVMN$C0mtTfBbSjVbIhgEHW5Co7r7dKt4Ja8fXOva7P7Psjc=	\N	f	390109b7-bf66-46de-b313-c582a977f47d	Михаил		f	t	2021-12-14	7651229@gmail.com	390109b7-bf66-46de-b313-c582a977f47d
1137	pbkdf2_sha256$260000$tceDvo2O0vr2cHhxSolkf9$Ztr+ni1JrqrbLDtJZOu+YrNszDgm0KXGjMHLijAvp9g=	\N	f	e4652ecf-8f57-45a3-9fad-701970832c0e	Даниил		f	t	2021-12-14	danilshuz3112@gmail.com	e4652ecf-8f57-45a3-9fad-701970832c0e
1138	pbkdf2_sha256$260000$GQH1AUVeg2A1HLsiR1toTJ$29NuiJ2OHM6TxtCp31qIPn5z6/4WIJ++Po8hwgx5CJM=	\N	f	43d99344-e023-4145-a392-21863b8e45dc	Dmitri Metsatalu		f	t	2021-12-14	dmitri.metsatalu@gmail.com	43d99344-e023-4145-a392-21863b8e45dc
1139	pbkdf2_sha256$260000$DefyENoKdZ4Hlu9XyqdFwq$BAM4rWLNSgY2B9bUASpyuMaLXDkMpMdrXyEND8Si2qI=	\N	f	454bbab2-b161-4752-97b5-d95e7c198c4c	Дмитрий		f	t	2021-12-14	volkov.agroline@gmail.com	454bbab2-b161-4752-97b5-d95e7c198c4c
1140	pbkdf2_sha256$260000$vY8jsnvth7RB7sN6RIXit9$uAYSgS68ojtUHiypF9lEhezAEzJFIhwC+GTpOLrdtYI=	\N	f	7881562f-6fcb-493d-8396-7e194696478b	Сергей		f	t	2021-12-14	shsf1978@gmail.com	7881562f-6fcb-493d-8396-7e194696478b
1141	pbkdf2_sha256$260000$TqZvVOtVp7J3f7VUTzknCU$2y70ZzxZOK4nCQTzjzHUt9xTzWpbadATDLgCjFtBcxQ=	\N	f	262dd201-7234-415e-929f-d21e9dc8333d	Александр		f	t	2021-12-14	generalov.tender@mail.ru	262dd201-7234-415e-929f-d21e9dc8333d
1142	pbkdf2_sha256$260000$Uhyy2akgoJyFVdgHictZ1S$ATcFDZUrOAvvw0gvkjUvRQwfmKoe9Ef3oVlPUImpeO0=	\N	f	18772fbf-6e40-49e5-9d8b-9ac5eeadc715	Иван		f	t	2021-12-14	tyghnyh@mail.ru	18772fbf-6e40-49e5-9d8b-9ac5eeadc715
1144	pbkdf2_sha256$260000$D8lRnTYW3s3sL7pdzh1cZ1$Ax0pJRneK191hazsAkA9H/DI0DIRJFB2t75DU0F+Oak=	\N	f	a285c567-0010-4c9d-96f0-0a4a5b14904e	Алексей		f	t	2021-12-14	i_mister@mail.ru	a285c567-0010-4c9d-96f0-0a4a5b14904e
1145	pbkdf2_sha256$260000$cUfW5sBoHMnsmq9Ib1ID2v$0qQfWfcyxvXghSgFQT1sILsieDbip6eMZ+heWyD/qBA=	\N	f	63192a9f-4033-4711-9472-c9e05f9c5e19	Вячеслав		f	t	2021-12-14	v.bohatov@gmail.com	63192a9f-4033-4711-9472-c9e05f9c5e19
1146	pbkdf2_sha256$260000$CP97BYkq8am3bwx1KMqwuu$uwbbHNER5MD0faHWvKI+lA41ItZQyYVFjK/ZaDzWQFs=	\N	f	457cabf4-adf8-4dcf-83b0-823447147a29	Денис		f	t	2021-12-14	money_rulez@mail.ru	457cabf4-adf8-4dcf-83b0-823447147a29
1147	pbkdf2_sha256$260000$hd6LjmcHNbs0BgeQpreMAF$v+6MdzaFuWBdRC+zZmbIe49z1sdJS6PD/WJrcAoCGSQ=	\N	f	b0d9796d-5188-488a-bffb-cfca58e49cff	Юлия		f	t	2021-12-14	yuliakartazaeva@yandex.ru	b0d9796d-5188-488a-bffb-cfca58e49cff
1148	pbkdf2_sha256$260000$o7ajFxwsGGfXFkdn8X5qyd$14WEGCKD4u/QpZG6dDHDJ5tbR80zXwuYCl/l90unFoQ=	\N	f	418a8eba-5145-4f69-82f1-f4ece01dcc49	Дмитрий		f	t	2021-12-14	di42ma1@gmail.com	418a8eba-5145-4f69-82f1-f4ece01dcc49
1149	pbkdf2_sha256$260000$HJd89CXXiV1XQ16hBj4he4$PR/3B1a9++vhvxu+tH1wjKoVCFMm7zci4fUUjoOH4Gk=	\N	f	54ed0853-7d15-4a33-8a29-6be7731365b3	Надя		f	t	2021-12-14	nadegda.cat@mail.ru	54ed0853-7d15-4a33-8a29-6be7731365b3
1150	pbkdf2_sha256$260000$AURvuY5yjnN1aM4o6vN4U5$CS1X0M2WnRz9B2On1S+8XQjOZ2PcMfRU42Zdv8Vzrnc=	\N	f	ceb1c384-1ed0-49f5-891f-f8dd50ac70d9	Тарас		f	t	2021-12-14	9184635868@mail.ru	ceb1c384-1ed0-49f5-891f-f8dd50ac70d9
1151	pbkdf2_sha256$260000$iElDjLtfe4YZvw41FAuCp0$1ViqlnfdKsHTqLD977He6lYRuWtHNx6QVuBrFTfpwTI=	\N	f	7f6a6f28-702a-408a-80b1-c9d1a55d6ec7	Олег		f	t	2021-12-14	eoo-anytime@mail.ru	7f6a6f28-702a-408a-80b1-c9d1a55d6ec7
1152	pbkdf2_sha256$260000$OaJHNCRFux5uu32bZep7FQ$RMZCnVBeyicLS/ATB04hvvxqfpQ5J7Csf7pFrbmmfK8=	\N	f	f4309756-4ff7-4d60-883a-2e14ad870863	Мая		f	t	2021-12-14	maya.dzhndoyan@yandex.ru	f4309756-4ff7-4d60-883a-2e14ad870863
1153	pbkdf2_sha256$260000$J0CaM1J3rV5Ezs10b9uMMa$pvLLC+9ui1E+FAD38xxtCixnQ3E/Xth2hu5HSnlrV80=	\N	f	c1498719-045b-4a54-bd53-346daa149a98	Денис		f	t	2021-12-14	den_varava@mail.ru	c1498719-045b-4a54-bd53-346daa149a98
1154	pbkdf2_sha256$260000$YZDczSTBCtqABskktQEEkx$eV9W0dGoBx8rdp4OpHtDFTOTNlMhDEoBNkuK2nGSPEI=	\N	f	343591f9-0ec4-46d2-aa50-6e2445e7f7fc	Serg		f	t	2021-12-14	seobog@gmail.com	343591f9-0ec4-46d2-aa50-6e2445e7f7fc
1155	pbkdf2_sha256$260000$VwSinOoCnd8rJBLDkmU9gu$VM/5i2uW3A72TQEyPSJrIs4w0+Pdzz3/n28fVmnZIEo=	\N	f	83f3f818-61be-459d-8565-a20f018b39b2	Алексей		f	t	2021-12-14	nlav1@yandex.ru	83f3f818-61be-459d-8565-a20f018b39b2
1143	pbkdf2_sha256$260000$tSpi1j04Gurkoc74rTXx73$IfEn9jKzhhthI30d0ahXd0CWxjgkm9jIU2Dvx0txpTY=	\N	f	0a787b4d-5e16-4927-9f90-6353170ee39d	Alexander Solntsev		f	t	2021-12-14	9119490@mail.ru	0a787b4d-5e16-4927-9f90-6353170ee39d
1134	pbkdf2_sha256$260000$uTTfRrefVEUXMgs7kmv5Kt$TIbhS6UHXCd6g6fbXLQamIH0WzH6EzgCfMfNY5z3moU=	\N	f	3bd60bd4-3c8b-4b45-b5af-3a9ba692a3a8	Александр		f	t	2021-12-14	lukyanov.alexandr@gmail.com	3bd60bd4-3c8b-4b45-b5af-3a9ba692a3a8
1156	pbkdf2_sha256$260000$dtzEYEgyRXkPwOXLCXTZur$KtrltWcdEFLV9aJTOXZeOqEzrgh6v52x4qigozubSxw=	\N	f	9318773b-b4e0-4d55-83ab-99c48478db83	Сергей		f	t	2021-12-14	sergeygyuriev@gmail.com	9318773b-b4e0-4d55-83ab-99c48478db83
1157	pbkdf2_sha256$260000$dW8wB24JdhZOSIyIXSKtAY$hW5VwBPGuA2k/81R/GJHTcDYKY6kqpqTgVLNuFaRC1Q=	\N	f	641c11f3-62b3-4102-a7ce-3043d2c1ba94	Алексей		f	t	2021-12-14	brov@list.ru	641c11f3-62b3-4102-a7ce-3043d2c1ba94
1158	pbkdf2_sha256$260000$57q4nbMLShmGG4fWJutzrr$f5EaUtmOAWit42aGD34UeEGyAwavqIbLNeUafA4OsGo=	\N	f	0b4a3c46-6630-4625-a63b-0b9fd733893e	Михаил		f	t	2021-12-14	rozovoshekiy@gmail.com	0b4a3c46-6630-4625-a63b-0b9fd733893e
1159	pbkdf2_sha256$260000$J4QgsDr8tdmgwVcAOwpZe5$5adDYWzx65Ob/ry0qLf0h3dqJPFIcdJUonki4qh2Bo8=	\N	f	ee0bd39d-fa54-4899-9c14-be1d483e704e	Михаил		f	t	2021-12-14	taktak56@mail.ru	ee0bd39d-fa54-4899-9c14-be1d483e704e
1160	pbkdf2_sha256$260000$oxBK3xHkksHDKIpgR9eAZC$WAGjuVvq5qdRi47LWgF32jl/dxCpyJJNACsS4jo3zbE=	\N	f	1116ccfc-9564-4d73-9c5a-354ad7bd00fb	Егор Безенков		f	t	2021-12-14	egor720@mail.ru	1116ccfc-9564-4d73-9c5a-354ad7bd00fb
1161	pbkdf2_sha256$260000$19hd62pEgLFO32Oy0JZce3$woI9zS4K0KUT7aHepVA8XG8DUiXpUIOGsh/Dn67LhAU=	\N	f	a9698ff5-49ff-4102-8cad-63b8624a1dc7	Николай		f	t	2021-12-14	0407199o777@mail.ru	a9698ff5-49ff-4102-8cad-63b8624a1dc7
1162	pbkdf2_sha256$260000$0QVxHJKEXdaqE6kgZsLKMS$XP4Qp7IhK4ahEynPjFDDWEz+6hp2jICq0yJoeObRY3o=	\N	f	e017a735-c175-493b-a4d6-025b3c4c2789	Сергей		f	t	2021-12-14	arnold28@yandex.ru	e017a735-c175-493b-a4d6-025b3c4c2789
1163	pbkdf2_sha256$260000$SfnbnD3iby0pm8182eNtGX$tRlbjPJu3qrLhqD4t2IOveTM5qcDib4TqjH31EpCTXE=	\N	f	1a40ff14-0727-4546-a655-4efc84a9846d	Кирилл		f	t	2021-12-14	goldin.kirill@gmail.com	1a40ff14-0727-4546-a655-4efc84a9846d
1164	pbkdf2_sha256$260000$KIoCbArfr6ElAv7ZT7Cwig$6cm5lOqbxrVWhudgpdjticbG3zEJVT2XZ6MrfO9dzVY=	\N	f	6a1b1299-ab7a-4579-8af8-6015690ca793	Иван		f	t	2021-12-14	iv.rodionow2018@yandex.ru	6a1b1299-ab7a-4579-8af8-6015690ca793
1165	pbkdf2_sha256$260000$cESh3Rubx3cI30R23hCyhx$CrTYXG01xYIBu0om2JlEiCr1v1y9tXS2wRJ5K2NLcLo=	\N	f	99ab308d-6d52-4c99-b444-34c79ec8d155	Андрей		f	t	2021-12-14	niko.ae@yandex.ru	99ab308d-6d52-4c99-b444-34c79ec8d155
1166	pbkdf2_sha256$260000$DS7G4TZxQOMKwE1qkW6W7V$NYlaMxA5Fcb7DiZR2n22dxoy4M1A80MNr0JcQOIMxbQ=	\N	f	afbb9009-1d12-4237-9116-bd07228ea1a5	Анастасия		f	t	2021-12-14	astrokan@mail.ru	afbb9009-1d12-4237-9116-bd07228ea1a5
1167	pbkdf2_sha256$260000$4DMdS9SUf0YSGcfsOjeIBj$vzOWplgrDsiJEruE+gcattI9baBnIYATDBv02cATRHU=	\N	f	7b11a241-b1c6-4e46-8f31-923722e52633	Алексей		f	t	2021-12-14	lexamatviyuk@gmail.com	7b11a241-b1c6-4e46-8f31-923722e52633
1168	pbkdf2_sha256$260000$PymlN5pzqwQZE6EjTJ0Orj$T9fCwvUe6zVi5e7I6Mb/kQeP1bgxYfdu7yRMAvDw4ho=	\N	f	d6f30a26-abdb-479f-9629-fa351440adad	Артем		f	t	2021-12-14	sakson-aw@mail.ru	d6f30a26-abdb-479f-9629-fa351440adad
1169	pbkdf2_sha256$260000$fZ9DxjPeurpuAk3anOrO48$5NgmRVUPTLmKMf54l7RXgGs5RidAbBmkULCJcybMgYc=	\N	f	a69cbbf6-cd0a-407f-b091-574c36f2882f	Сергей		f	t	2021-12-14	maksimich007.88@mail.ru	a69cbbf6-cd0a-407f-b091-574c36f2882f
1170	pbkdf2_sha256$260000$Qq2tEhhv8z4EC7hvGNm1F1$x547ftrnNi+DuuWH/9+5LltchQt3ZtjR5uoXTiWyWkA=	\N	f	75e349e7-6d28-495b-9ed9-124865885b65	Михаил		f	t	2021-12-14	mihulich@mail.ru	75e349e7-6d28-495b-9ed9-124865885b65
1172	pbkdf2_sha256$260000$npKba2upr8tKjLvl40amKd$YrWiNPUeoes8opiwO3blGs5bPedDjWzjviNrSAcfTWU=	\N	f	b00b3509-6e61-43a5-8ca3-8c0deba3d07d	Егор		f	t	2021-12-14	mekhonoshin.e@gmail.com	b00b3509-6e61-43a5-8ca3-8c0deba3d07d
1173	pbkdf2_sha256$260000$VDjv2taeWykQzls1vvVbZp$580ziriooRV4xPrxpq/g0UaKbcER9srICSXLKjqkV0w=	\N	f	bd8dfd77-8e05-49a7-a698-657e9dd049f1	Владимир		f	t	2021-12-14	lukinov@gmail.com	bd8dfd77-8e05-49a7-a698-657e9dd049f1
1174	pbkdf2_sha256$260000$QD1u3dUKpADItVrC7w4bCv$Kg7MesK+c4tbG7K/RVAy82f2M0IZ9p24kA8YEuj2YHE=	\N	f	5c2a9be2-104e-401b-98cf-08da3b005c9f	Алексей		f	t	2021-12-14	shipilov_ae@mail.ru	5c2a9be2-104e-401b-98cf-08da3b005c9f
1175	pbkdf2_sha256$260000$XxEtDXS0Zso91QvY09Hnz6$kj1fUyXmlACgMdr0oBi03KIQ/0Y8tP5IWDJPiD87uGc=	\N	f	fab2a29b-77d4-495b-90c1-eab808307b0a	Алексей		f	t	2021-12-14	pulnikov.1974@mail.ru	fab2a29b-77d4-495b-90c1-eab808307b0a
1176	pbkdf2_sha256$260000$hWzneF9rdXDMRaHFqpgC5q$T4G3QcZUXNCPXRV1aHymkePOaRCIzOrKMhbCIQe1pME=	\N	f	521123b8-f9da-420f-ae94-d5f332e942b5	Юлия		f	t	2021-12-14	crocodile@email.ua	521123b8-f9da-420f-ae94-d5f332e942b5
1177	pbkdf2_sha256$260000$x97ZcMuRPGpryVVJE1Gt8l$r5jlOtMQziA4lUzjgpa9imFI2s6J2q5BTfdvOyHsB+I=	\N	f	54f6e6da-3b49-4169-b1f6-896007318d30	Данил		f	t	2021-12-14	daba-888@mail.ru	54f6e6da-3b49-4169-b1f6-896007318d30
1178	pbkdf2_sha256$260000$jXljNlMLCEFkh3QiHNxPsG$otTUlWlnMvFlrBb3VnYyL7b7TA6SJ/5nMqyE67dXzDs=	\N	f	5ef68ce4-9082-4492-9db8-0f9a9e81c5d9	Виталий Мельник		f	t	2021-12-14	vit-melnik@yandex.ru	5ef68ce4-9082-4492-9db8-0f9a9e81c5d9
1179	pbkdf2_sha256$260000$Efmc4ic621KXVb95GOyT1P$IksiQj4RpfRHzXlJ6wBJTDfQ6BtUpoRaASKlzB5mlPU=	\N	f	82e682c9-6226-41c5-8fcc-1cc66f3efc48	Александр		f	t	2021-12-14	s.semenovs@mail.ru	82e682c9-6226-41c5-8fcc-1cc66f3efc48
1180	pbkdf2_sha256$260000$BmZn3AKdoOvJ80HYVMIWL5$IC/dEkveViSKMq6PNL1TOSt1lcPdHzi9lSigX2C6zkI=	\N	f	9e972aa5-d066-494b-950b-e58f5b0e422a	Сергей Москалев		f	t	2021-12-14	sergejmoskalev1996@mail.ru	9e972aa5-d066-494b-950b-e58f5b0e422a
1181	pbkdf2_sha256$260000$xYfsPN7UBFSWphn2BWecan$LjlILYcpDMbKPG8Zf0oXzIJRLPgR4m0WvP9khLXno0w=	\N	f	b387ee68-6e5e-4b86-b51b-011fca776c75	Евгения		f	t	2021-12-14	evgeniya.pugacheva2014@mail.ru	b387ee68-6e5e-4b86-b51b-011fca776c75
1182	pbkdf2_sha256$260000$SIJZAYei0vhyeDgb5gX9LV$gHTfb2jq3Ejrh8IsVzpqVEi6YG+/oYi6ktdsnIbQ+xI=	\N	f	47caecce-9e9a-4b8d-b0f9-d016a9c4c40d	Глеб		f	t	2021-12-14	ponamarev-offender@mail.ru	47caecce-9e9a-4b8d-b0f9-d016a9c4c40d
1183	pbkdf2_sha256$260000$fRRAq3VH995jHDbjsvBKUg$30FgwQRoLRxjZCyBN4yVdelYRP55vnAMmTIirTHDYpE=	\N	f	5c017d40-a254-4ca2-b81e-db028daa27ca	Алексей		f	t	2021-12-14	aleksei4450@gmail.com	5c017d40-a254-4ca2-b81e-db028daa27ca
1184	pbkdf2_sha256$260000$Yl7ZIn7MM8vEsMJDyNKkPM$pff3+un/8XMCatD255vgBJrVOJcTjEO+HCNVFSMOslw=	\N	f	a0b89f61-4b17-49d2-8e7c-fa169e40c99d	Евгений		f	t	2021-12-14	bashkir1505@icloud.com	a0b89f61-4b17-49d2-8e7c-fa169e40c99d
1185	pbkdf2_sha256$260000$HMTDaRFHzx8MB7uXvRwsWh$B1+5sJfA80FTJrMSVRu3VmAvLPHOBZMe+9ZlziGTtrU=	\N	f	7ef99575-1ece-485f-b361-77278a1d51d5	Андрей		f	t	2021-12-14	spuskoff@yandex.ru	7ef99575-1ece-485f-b361-77278a1d51d5
1186	pbkdf2_sha256$260000$o789OAGPdIVL6rqke3JXII$5qPTOPRJoYVMHEVB99KDS94h6YdbH8NpKV/17B4ws+I=	\N	f	869ee8f1-18e8-4c8a-aeb3-168f17c4f4e8	Ирина		f	t	2021-12-14	kimik1984@mail.ru	869ee8f1-18e8-4c8a-aeb3-168f17c4f4e8
1187	pbkdf2_sha256$260000$vzp6RGHSB4VHxSaL4CtD3L$dCLvif/PnJ0W7fh8WAlKE2MJgfUKNudnJPhxY75MoY4=	\N	f	9a3f83fc-4ba1-482e-a755-06b6622cbe0c	Дмитрий		f	t	2021-12-14	dmitriy171273@mail.ru	9a3f83fc-4ba1-482e-a755-06b6622cbe0c
1189	pbkdf2_sha256$260000$Ul9WKGWZ3HD85bRzYomVhf$L2VIGZ1NRmCQ0XrhY5Sz/yJ6e0JSuwgvqcRck35Pmi8=	\N	f	5314c87a-84de-4470-994f-ea6ca47c76da	Максим		f	t	2021-12-14	m@mandarin.io	5314c87a-84de-4470-994f-ea6ca47c76da
1190	pbkdf2_sha256$260000$eKBtUuNcdYCGPYxuQtJI3C$jVuNzDfbJl89fnPNpwt7pjfdM7YQ6iNEujb246vFWrs=	\N	f	790150e3-2a93-418e-8bb6-5b9ea51f3082	Максим		f	t	2021-12-14	dashsogaz@gmail.com	790150e3-2a93-418e-8bb6-5b9ea51f3082
1191	pbkdf2_sha256$260000$OeflTS4xUtqzN0w9aViClr$DBLo/Uw6HB4x8NfWi3FxR1+SdOJr4MkBBBwRfQAv4ps=	\N	f	000fb59a-512b-41f4-91a9-3157e35464cf	Иван		f	t	2021-12-14	dr.evdokimov@gmail.com	000fb59a-512b-41f4-91a9-3157e35464cf
1192	pbkdf2_sha256$260000$fOJtoKRyPhWOMOPoFkFXt4$UN76Fr8+LJY6F1X7+ncN0PVNdYz0WFWEm8fTc43xtWE=	\N	f	6887ac22-3007-4694-bbd7-f80e5e47ecaa	Сергей	Киселев	f	t	2021-12-14	kiselev_2008@mail.ru	6887ac22-3007-4694-bbd7-f80e5e47ecaa
1194	pbkdf2_sha256$260000$qsJOfFV3ofIQsJBTKW9Azg$ST82UxzTLQPFXvHILuOqQqMnby3DHBkReGe9InS9YzU=	\N	f	f3f6f82c-f490-4879-8651-6cd46da5d78c	Максим		f	t	2021-12-14	maven@list.ru	f3f6f82c-f490-4879-8651-6cd46da5d78c
1195	pbkdf2_sha256$260000$XHIX5XPC2Xou6FjNYiO94i$uq11wjinDFhLE7tx5ES7EYDD9/7Tf5X8mKCOPKHhuBo=	\N	f	047b2f29-b193-47a7-bd59-50542c797c2c	Егор		f	t	2021-12-14	bolshak2929@gmail.com	047b2f29-b193-47a7-bd59-50542c797c2c
1196	pbkdf2_sha256$260000$GgmyadjTny9VAFU92O1Wrw$CiBjPOphqxF8yDxeLHGcTXAJ+cr5WLdCfkH6CqMdr44=	\N	f	974cf4e3-13f4-4940-991f-1537da62d092	Ирина		f	t	2021-12-14	irina.gluhareva@rambler.ru	974cf4e3-13f4-4940-991f-1537da62d092
1197	pbkdf2_sha256$260000$SHGOZ7mogBXQZXWq1qPF3S$K29kIcmp+MHExrvO2anteGavzH73HCcyQsCVXJZYTgw=	\N	f	60c67bc3-8e4c-4df9-95d1-b5eec6318695	Денис		f	t	2021-12-14	dde5791@yandex.ru	60c67bc3-8e4c-4df9-95d1-b5eec6318695
1198	pbkdf2_sha256$260000$GF0CpE7qBHyapVP4bbKxxN$dcEPmN4RvhsEvqdMgYTKPlhAwNr2BmTCuAS9j/Vh1Cg=	\N	f	b7d9cbf4-4728-49a2-8c7a-4b560d624855	Larisa		f	t	2021-12-14	pelar51@icloud.com	b7d9cbf4-4728-49a2-8c7a-4b560d624855
1200	pbkdf2_sha256$260000$hBVfoNj6bgfBGAN7uJ0vGC$9luJZWNXBV+JiCNaMC3NbdsM2bk6/WUwLo+yUA7s6pA=	\N	f	ed96f120-fb49-40e6-a3d5-fbb3c0423045	Андрей		f	t	2021-12-14	andrey.voprak@gmail.com	ed96f120-fb49-40e6-a3d5-fbb3c0423045
1202	pbkdf2_sha256$260000$AZmdDofv9SHEANAMLbRoaB$MrFcy0AigSLsVoKQgCqyISOMYrYkY0AjFLfxxDeSq/0=	\N	f	5a717b46-3a28-4f3f-beeb-f1d2baf7a7d6	Юрий		f	t	2021-12-14	levin.yura@hotmail.com	5a717b46-3a28-4f3f-beeb-f1d2baf7a7d6
1203	pbkdf2_sha256$260000$FRMlY7wF7LCpkmByGeH02G$3t2gH18VUJ7QFV/QGeIruBSWRlFD6mdPrYjzkpP3e5E=	\N	f	2da6e9d0-0f0b-4016-bda4-588d368dacd6	Андрей		f	t	2021-12-14	andreykicum@yandex.ru	2da6e9d0-0f0b-4016-bda4-588d368dacd6
1204	pbkdf2_sha256$260000$nIAqf9O1UbkhK8COOZO957$DPDzyG6p0sKAfhvex2mo5YqukFI4Mi5OMFj6fEguGRo=	\N	f	90a6be59-8948-4651-bac2-bb86a7b0f11b	Владислав		f	t	2021-12-14	slavacondrat@yandex.ru	90a6be59-8948-4651-bac2-bb86a7b0f11b
1205	pbkdf2_sha256$260000$AUjIT2PeLVzJ72wFVrtBcS$VqNqiO95U2HwcgbLb2UDUPqKVMx04QYTI1lGXgTSewM=	\N	f	374a0319-4200-415b-b675-444e80173c21	Семён		f	t	2021-12-14	vizitagent@mail.ru	374a0319-4200-415b-b675-444e80173c21
1206	pbkdf2_sha256$260000$kOfOp8fSPiy09GbRGnumD8$AyTwZB6ExSsYgNDWDLpxWIbBhz3RU5cylujZPBS+wG8=	\N	f	c6ef3264-6fb8-43d9-ab35-3cd946e4053b	Сергей		f	t	2021-12-14	omram108sm@gmail.com	c6ef3264-6fb8-43d9-ab35-3cd946e4053b
1208	pbkdf2_sha256$260000$pYVSWxtLlbyPdsaWY7hsAl$HZDLf2g9Co1qC4aA/UT5lLj8wu2Ca6RkdKlCO7CdiRM=	\N	f	7f9bedc7-65c3-47fb-8dd3-f48add56995f	Арсен		f	t	2021-12-14	ari100krat.900@yandex.ru	7f9bedc7-65c3-47fb-8dd3-f48add56995f
1209	pbkdf2_sha256$260000$BBaEkMt3kPOmtt9Rt0wTYX$c2+Owr73WnB+2yczbcotE+hFsrtbFRJtAIAmIn6cuOc=	\N	f	e22034e9-98a9-48bd-9193-6950b59feb88	Denis		f	t	2021-12-14	denis59r@yandex.ru	e22034e9-98a9-48bd-9193-6950b59feb88
1210	pbkdf2_sha256$260000$3D0zkenl6RZxLviWzLfIK8$Httj9FGP0g+W4fClXMVA1PWMc+AN2XXIS4QNHDimiSA=	\N	f	1dedf1fd-689c-451e-9564-46b00e02ebe2	Оксана		f	t	2021-12-14	zhilinaom@gmail.com	1dedf1fd-689c-451e-9564-46b00e02ebe2
1211	pbkdf2_sha256$260000$PiKReZ2OzeLltESEnjAlhq$9j5pojKqRSn+0OnW+OGPQso8haSNv21mxSE3TkElsec=	\N	f	7ac828d2-413a-4f3a-9594-3247fb6f5433	Иван		f	t	2021-12-14	shikkumon@mail.ru	7ac828d2-413a-4f3a-9594-3247fb6f5433
1212	pbkdf2_sha256$260000$TGrpXmw54LEldymWXjwWfi$IBP3LyVwHsdzCTmgDJ7FDOesLfk40re387QLq1n2uw8=	\N	f	e56ca9d4-3c73-4dd0-980e-c5cb9af2e549	Михаил		f	t	2021-12-14	gma_80@mail.ru	e56ca9d4-3c73-4dd0-980e-c5cb9af2e549
1213	pbkdf2_sha256$260000$uLkLeUtDs6yp9g5LWz29GB$HzRHvDSV/8ZbotDZd+4WMP7KycWiBcYiwzqivvC6ipc=	\N	f	7aeebe33-f980-4fa2-b8d0-050c0d36a57c	Сергей Тахтаров		f	t	2021-12-14	sergiitakhtarov@gmail.com	7aeebe33-f980-4fa2-b8d0-050c0d36a57c
1214	pbkdf2_sha256$260000$QOJTFMRYePhe4gT0Wbl9km$RDtCk0qOBN1YoZ6oM1xKlbRu78iYBoW9EpVTssiuUb4=	\N	f	74c952dc-b76f-4dcb-b9cf-ca074e51e342	Лэйла		f	t	2021-12-14	lejla.velieva@bk.ru	74c952dc-b76f-4dcb-b9cf-ca074e51e342
1215	pbkdf2_sha256$260000$AID1E2OincTd9bCVz3wmmX$IIPW1iK5RyrEq8Lfw1nxWhE/RopsieNkKVRTcRHjHUE=	\N	f	b09977f2-0335-4f73-b22a-0638acb2f3b2	Aliaksei Chumakou		f	t	2021-12-14	madeserv@mail.ru	b09977f2-0335-4f73-b22a-0638acb2f3b2
1216	pbkdf2_sha256$260000$8VrpEHQg744KS5RhIzOmej$ZBfcz60VhCyvh/eHQHh/qHGCYlyaQTMH5YG8VdB+H9c=	\N	f	1909fe50-2424-43ba-a5c0-c5dae7545671	Вадим		f	t	2021-12-14	frostzasx10@gmail.com	1909fe50-2424-43ba-a5c0-c5dae7545671
1217	pbkdf2_sha256$260000$McQMdUKm2jS6W68mCGbupd$5JrHSngT/r3gVrB/g2QLYVczpPpkvbFbWaaTQK9/gJY=	\N	f	67e104e9-aa9b-4acb-9fc8-fc1abb1a20a0	Алексей		f	t	2021-12-14	l_m1980@mail.ru	67e104e9-aa9b-4acb-9fc8-fc1abb1a20a0
1199	pbkdf2_sha256$260000$kB4EJ3iNlAYVGVMBGv3ebI$+nNek2GbeerBqKtMSMmPI8dMJIhGVf+Hqu3QyUmH9B0=	\N	f	fffe9889-4111-4de2-8851-d6fee862fd7d	Иван		f	t	2021-12-14	polkunoff@gmail.com	fffe9889-4111-4de2-8851-d6fee862fd7d
1201	pbkdf2_sha256$260000$dUbYInlyjNweHjoaW0WUoM$7IC8E+DUvfKBnYiZE6BPHGU4+5Voio95agqVqvg6JxY=	\N	f	908b6681-33a2-47cd-957a-a85967ff771b	Ярослав		f	t	2021-12-14	ridosaroslav@gmail.com	908b6681-33a2-47cd-957a-a85967ff771b
1188	pbkdf2_sha256$260000$53Wg4xnoMS50QbhSXo4IPn$tT59LUcbABDalzQHBhrc79HRlT79ZN1wBWNAPppsmws=	\N	f	5d1c36e4-c72e-40d2-afdb-cb8d91a58956	Александр	Геращенко	f	t	2021-12-14	lekar2689@gmail.com	5d1c36e4-c72e-40d2-afdb-cb8d91a58956
1193	pbkdf2_sha256$260000$diJA30frN3WbEVKv7KGFrv$tlPdZyhKifPPEKryI4LZnda7T8dBA4CT62ZfhJvVYBM=	\N	f	485aabec-1202-461c-9135-f609e1ce41b7	Алексей		f	t	2021-12-14	klimovap@mail.ru	485aabec-1202-461c-9135-f609e1ce41b7
1219	pbkdf2_sha256$260000$RIxyePSzX1MmA2Buvdv8OP$SyoVZbw85GjpPmhKvrsdwPUXPL/R7LDRg5ANIf74/R0=	\N	f	95b0a4fe-8ead-40f2-809a-6c6a95bb6eb4	Никита		f	t	2021-12-14	nyangendalf@gmail.com	95b0a4fe-8ead-40f2-809a-6c6a95bb6eb4
1220	pbkdf2_sha256$260000$tzjFAHOtLcsgJueHAd1gvj$POlr8Sibgx9L0lrqqNECoCAqeKOcaHE//T2UzY6pSpQ=	\N	f	838411a2-dc2a-44f3-8e96-bd081bb0f0ca	Евгений		f	t	2021-12-14	clyucherman@gmail.com	838411a2-dc2a-44f3-8e96-bd081bb0f0ca
1222	pbkdf2_sha256$260000$pXlpfWep4e2gjAk2ngwIcC$dxtTiyoL35KObZ0iXED+WEj20PCa7ZjaPZFbTSq61W0=	\N	f	3dbf0154-e213-44d2-9ded-4ac9f3b4bfe1	Геннадий		f	t	2021-12-14	cr0ck@rambler.ru	3dbf0154-e213-44d2-9ded-4ac9f3b4bfe1
1223	pbkdf2_sha256$260000$acswlDPbcxJCvAvIg67Ozw$5WUmyyyfGd/83+xncq9Vjwen4TC3WI4Xe2KlKsCIJ28=	\N	f	fcc77f4c-f947-460d-87a6-dc3a979aed0e	Дмитрий		f	t	2021-12-14	meetandok@gmail.com	fcc77f4c-f947-460d-87a6-dc3a979aed0e
1224	pbkdf2_sha256$260000$EIkoBzOcJaILgYZxXewdE6$2CK8v9+1rT7uUxB4J8UcIVyj8Hjc2axynssZa2A2wFk=	\N	f	9d73cb29-87a9-488d-95f7-077e02ba9778	Иван		f	t	2021-12-14	optimist75@mail.ru	9d73cb29-87a9-488d-95f7-077e02ba9778
1225	pbkdf2_sha256$260000$9s0iWH3puRUJ67zMmM5UxY$ByNuzmCBZZAFSukK3KTp/REThn9jt0JR8ZY+HhrRK9k=	\N	f	765ef8e2-420f-4775-821c-3c8f27524d58	Юрий		f	t	2021-12-14	scorp-93@mail.ru	765ef8e2-420f-4775-821c-3c8f27524d58
1226	pbkdf2_sha256$260000$9j2jlWcXH2MTy2fRpUzYE9$n69twId2rPpRu2GbaDqZhkrPdDYPHkvDR2lvYPQXNbg=	\N	f	68593bcb-0162-4228-a017-214a09992caf	Сергей		f	t	2021-12-14	izmailovlz@yandex.ru	68593bcb-0162-4228-a017-214a09992caf
1227	pbkdf2_sha256$260000$qiIiaO74hNB6iiKDOHoVI1$cc2sdn6142zww98SWI2NuvV29jSYKHQpgii5P6pC0vU=	\N	f	f0709cbc-df2a-4a16-9883-4848d255759e	Антон		f	t	2021-12-14	tkm_design@inbox.ru	f0709cbc-df2a-4a16-9883-4848d255759e
1228	pbkdf2_sha256$260000$647FpuFCkXddz4G5td3tbF$Pv2e5MgAVU7CSR6+428KLYlEHSl0o8YQf6QY6zfYhA0=	\N	f	bdbeab51-6d2c-46d8-98c9-df52a76f5a39	Александр		f	t	2021-12-14	vokrugdoma33@yandex.ru	bdbeab51-6d2c-46d8-98c9-df52a76f5a39
1229	pbkdf2_sha256$260000$PSr4x0zQXFzBXh9w1j49Gp$lRGdwTCchTpkHTF1Sb/cUvQIbmBFRo3xfPx58sVVCVk=	\N	f	a188783f-099e-4b43-b4f9-97ce6b85e94f	Леонид		f	t	2021-12-14	kostin.py@gmail.com	a188783f-099e-4b43-b4f9-97ce6b85e94f
1230	pbkdf2_sha256$260000$qhCZc6NXJ0Yy9RbxsgF4Ln$JW+27fNN+nSlp+af+55OSH9dADeHgjid/Mfs29Q8VC4=	\N	f	f70b1aba-1376-4922-a13f-c7505b2c09ac	Gena		f	t	2021-12-14	fanatt1977@gmail.com	f70b1aba-1376-4922-a13f-c7505b2c09ac
1231	pbkdf2_sha256$260000$zLtFwOBdHB0TbwgMPGWNm0$eTLOBGv4s80rtnWtCzcv5DiX4gy+oP526k+MYxerGlc=	\N	f	97cb8f9e-cc8e-40e5-a46c-41563ddc4806	Alexander		f	t	2021-12-14	alexalor@gmail.com	97cb8f9e-cc8e-40e5-a46c-41563ddc4806
1232	pbkdf2_sha256$260000$8QSgWN5HJSYoPJL7cHoLdQ$Tpm5c0i+NKNAOmJYARXp7FOim2jp35q2uN5uhy+rz2E=	\N	f	8e638384-f01d-48a6-8cb2-7344f61b10d4	Kastantin Ascaso		f	t	2021-12-14	klm414168@gmail.com	8e638384-f01d-48a6-8cb2-7344f61b10d4
1233	pbkdf2_sha256$260000$5iiLIT25JnzYVGZVpGLqVJ$yzzhPTJIFcSQb8BshkyafWf0R/dGF2QroDdMcHvpV3o=	\N	f	95cdec66-51ae-4bc7-aac8-dd7c4644c55f	Тимофей		f	t	2021-12-14	t1i0m0o6x8a9@gmail.com	95cdec66-51ae-4bc7-aac8-dd7c4644c55f
1234	pbkdf2_sha256$260000$BxT2P3t9CjXjm3HpcXsnzy$ULmtAgwrfy0bSY4MgZ2KcW84oupN0SDa5hjbZAoDV5s=	\N	f	117b041b-404e-4773-96ec-61ca480adf7c	Максим		f	t	2021-12-14	miskryabin@gmail.com	117b041b-404e-4773-96ec-61ca480adf7c
1235	pbkdf2_sha256$260000$Lp4yIINW8VSNYADkEq6A8r$pmr9yq0bXkVXyUQ7NEh99ES3O00SEXghqWu1P+A9kmc=	\N	f	855c82c8-e377-4516-addd-16a0febea7ec	Алексей		f	t	2021-12-14	yantwit2@yandex.ru	855c82c8-e377-4516-addd-16a0febea7ec
1236	pbkdf2_sha256$260000$oxXnffX0bYXOPMaKk2Szeo$IA6qwgln1nlhoNpU07HB8YKZfokZWZrPkdjtfG8OQUE=	\N	f	2a811303-f999-4d94-a69d-3369d2585570	Виктор		f	t	2021-12-14	vicvlab@gmail.com	2a811303-f999-4d94-a69d-3369d2585570
1237	pbkdf2_sha256$260000$BysuCGjY9AZ1Z429uzsGzO$Z92PkwefkAMmD0uXWMp6Iaxr+A/2GDiNamAU650ga/Q=	\N	f	8481fc48-5486-43f6-b3fc-4f21640dcbf7	Виталий		f	t	2021-12-14	vital555_2011@mail.ru	8481fc48-5486-43f6-b3fc-4f21640dcbf7
1238	pbkdf2_sha256$260000$zKDawmFw6Vp3L4VqHCOhUg$GbyAdUcsXsr3I8zBEav1IFH5elaH22+YQyET2YUivgY=	\N	f	1e3758f5-928a-45ef-9ce4-eec4e5d14b81	Николай		f	t	2021-12-14	9202111@gmail.com	1e3758f5-928a-45ef-9ce4-eec4e5d14b81
1239	pbkdf2_sha256$260000$t9uoEfG4tJRNl6oUFvm43Z$9WvPC0TC40j6gh+zkwPNfFZdkV1cjSttujRtSrZoc3U=	\N	f	6621ec25-93df-4104-b0c3-4b62ccb4ed2c	Павел		f	t	2021-12-14	pavel_samokhin@hotmail.com	6621ec25-93df-4104-b0c3-4b62ccb4ed2c
1241	pbkdf2_sha256$260000$z9zctZwOsfuSQbJ4kqs9Vc$s34/UOdeTJLsLKg74LoB+ldxXP5IWRP2HcaGtSzHoY0=	\N	f	517e8ba3-6881-4e3c-a06c-6ef823d79e57	Дмитрий		f	t	2021-12-14	tchkd@mail.ru	517e8ba3-6881-4e3c-a06c-6ef823d79e57
1242	pbkdf2_sha256$260000$xbxz154WNU3s01CKpXOasO$EKiqcE2Hh4xYmb2yXzN+Rhnf4vo3pSwQYYcaBOzJ66s=	\N	f	b3316307-ba91-4353-b706-4cda961b00d9	Александр		f	t	2021-12-14	kuzinatrabk.ru@gmail.com	b3316307-ba91-4353-b706-4cda961b00d9
1243	pbkdf2_sha256$260000$qtUOQn1TRMFKsM4oUIdU6E$eJsxsrWQAVk0PsS6gV38uViUbf1MkQsyrDi46VxM2zc=	\N	f	dbe1847c-68f0-4be2-bcc6-55c737870b99	Вадим		f	t	2021-12-14	1188930h@gmail.com	dbe1847c-68f0-4be2-bcc6-55c737870b99
1244	pbkdf2_sha256$260000$KtUUJLh8btLZAIPb41106d$zU8G+rLX54AAkQ5MtKZJKglZjF7NRtMe8sLXVntFiQ8=	\N	f	75b57971-82a9-45cb-b28b-fa455806dbfa	Андрей		f	t	2021-12-15	opopmop1984@gmail.com	75b57971-82a9-45cb-b28b-fa455806dbfa
1245	pbkdf2_sha256$260000$HDDE42eLfaqR3MbGVXEkYS$O/0PBRrUck7kEUJ2z0MDLpwiVIR7gHM7HMlA3Lomuy4=	\N	f	99c1fd05-f69e-4537-b885-c857878419b6	Антон		f	t	2021-12-15	anton.19851101@gmail.com	99c1fd05-f69e-4537-b885-c857878419b6
1247	pbkdf2_sha256$260000$PfjCsSuPs6R8aMtQhhaCV5$zcMqNyG1PZw8ZiBGmARoln7qUKSQtA9bkc3w7jUfAA8=	\N	f	2e31357d-0cb4-4f5f-8d36-a688a8827ea9	Антон		f	t	2021-12-15	antgor@mail.ru	2e31357d-0cb4-4f5f-8d36-a688a8827ea9
1248	pbkdf2_sha256$260000$Tr3D4IsPilgFidBYYyfrYt$tyVcYxkQwSXhceniD9b72/tV/XfVxdXKtIHpggI9Ue0=	\N	f	226c5dfd-d770-436a-b81e-cd51b1e2714c	Роман		f	t	2021-12-15	vrv_astana@mail.ru	226c5dfd-d770-436a-b81e-cd51b1e2714c
1246	pbkdf2_sha256$260000$CQ1sNKaDiMDrbq8qdGqE6n$XzpJuDC07zogkBO0cTzEsaIdGKTN9lsvPd06TnHgkTY=	\N	f	ea6485e5-937d-4300-aac9-eee666bf1035	Denis Piniagin		f	t	2021-12-15	dns.piniagin@gmail.com	ea6485e5-937d-4300-aac9-eee666bf1035
1221	pbkdf2_sha256$260000$TPBRK53jT4SOk64qAloUCU$D8iZPQKdVHHgLsfia2A8pnDtBLxgXbb714e48aCynDw=	\N	f	8b8ef259-2215-42a8-9a81-bfad98d4818c	Миша	Кумашков	f	t	2021-12-14	mkumashkov@gmail.com	8b8ef259-2215-42a8-9a81-bfad98d4818c
1218	pbkdf2_sha256$260000$H8exaD5rVdAj3FY4wCDFTL$kG7jg9n+WbQ6m7Rm76ws48EY5IawWGRcADSo1lzboOw=	\N	f	e0dd5ca0-c804-4e98-8a06-5c5cfc049f1a	Мария		f	t	2021-12-14	mariya.ermakova.1987@mail.ru	e0dd5ca0-c804-4e98-8a06-5c5cfc049f1a
1249	pbkdf2_sha256$260000$Igx03CuW8QX6PPFINuX2u9$OLwoCTMm1eEOb3gBetH2oQuPq80qZ7KyUu0DNXB0ln0=	\N	f	043fbe67-b697-4495-b36e-b51dec38bae3	Виктор		f	t	2021-12-15	v_neustroev@mail.ru	043fbe67-b697-4495-b36e-b51dec38bae3
1250	pbkdf2_sha256$260000$zXkZuJcoCdN0hth5oG6nES$i4ySNj8KABDzHU+MtILXeXEf98CKGolvHMj8vPE46Cw=	\N	f	77bb0607-5648-4a8a-8622-4e5f4a22c424	Алексей		f	t	2021-12-15	homlis@mail.ru	77bb0607-5648-4a8a-8622-4e5f4a22c424
1251	pbkdf2_sha256$260000$5DVDWH1ZppUhSRHR1nbCjn$ILHKV7i2xLocy/oWeZewBuNDIhfyT7xDbKo3MfUHgG4=	\N	f	3e799184-ace0-420f-8ca7-c3a967b91012	Леонид		f	t	2021-12-15	alshevskiyleonid@mail.ru	3e799184-ace0-420f-8ca7-c3a967b91012
1252	pbkdf2_sha256$260000$CNkWuMeeHpPOPbVQN01aPV$EHbjK+7RmgGr77ilCY5nSggWbRjhaZRQb9gHkbLXa8A=	\N	f	bf1321d4-498a-4bf4-a62e-86868367acc8	Ахметжан		f	t	2021-12-15	akhmetzhan.k22@gmail.com	bf1321d4-498a-4bf4-a62e-86868367acc8
1254	pbkdf2_sha256$260000$PMxQGN0XZ7pPFTscPlvny4$RPm96wOQhpZn0e4b1bQ5b1ga9Wts3+j/6lE0QF4+j0I=	\N	f	ceee3988-9ffc-4704-9651-ba86241ec072	Сергей		f	t	2021-12-15	s_a555@inbox.ru	ceee3988-9ffc-4704-9651-ba86241ec072
1255	pbkdf2_sha256$260000$zCnjnrOVChoxs5XSJd0ybe$YJpnoIHWVPGoWcl9kZtlK4Vzzw9OygvD/PIXOsCKFno=	\N	f	c4ee8a0d-0884-4d54-af45-76a6e93e18d6	Александр		f	t	2021-12-15	maddoc83@list.ru	c4ee8a0d-0884-4d54-af45-76a6e93e18d6
1256	pbkdf2_sha256$260000$TEJ5HLaLiiIRW0Tz40hgMC$KyjVpy1xz9XesouIUJwykBjY2mrq79GaQW6RpoSSebY=	\N	f	6672fe75-74e4-492b-86ce-c5c08b37a364	Данил		f	t	2021-12-15	d.hmurchik@gmail.com	6672fe75-74e4-492b-86ce-c5c08b37a364
1257	pbkdf2_sha256$260000$1mSUmbMhiCTHwWTyGeKHaV$oUMNc2RG7mL9PFOseVNpN1f0tW3cQHmN/Xogitwz8VI=	\N	f	9c66ce9f-2563-4f32-a7b4-2dd31f25ef94	Наталия		f	t	2021-12-15	nataliy-belyanina@yandex.ru	9c66ce9f-2563-4f32-a7b4-2dd31f25ef94
1258	pbkdf2_sha256$260000$yb8oaJet3ISQPlBDeiLzz5$dXU6trXfRsXIVeTxNA5dAp/12hVH6M13fz27R628GCs=	\N	f	830ba71c-27f2-4063-bb42-19ae53c3b79c	Хаял		f	t	2021-12-15	kerimovhalik@mail.ru	830ba71c-27f2-4063-bb42-19ae53c3b79c
1259	pbkdf2_sha256$260000$fmhnN8NwqsBVdZBZeZ8hYJ$b5+lLhvj5lSbmBRUaDBs34WSesDoSHUJsIdcSiPFUcE=	\N	f	c85d8f89-e62e-448c-b6cc-d9aad37b52a4	Анастасия		f	t	2021-12-15	tekutyeva_ai@mail.ru	c85d8f89-e62e-448c-b6cc-d9aad37b52a4
1260	pbkdf2_sha256$260000$OosJtNECXHO6wdmQMYSEyL$SIb05R5x+mxByOB/09v4Ox8jwxSkkTv460hPLAUrfG4=	\N	f	c178e582-a4b3-4da5-97ff-2498c91f4b43	Андрей		f	t	2021-12-15	andelrewan@gmail.com	c178e582-a4b3-4da5-97ff-2498c91f4b43
1261	pbkdf2_sha256$260000$QvFpM0PfpdnwSRYonBQgG9$hgJURTBL3G4GUhdP7yXN/bPnZ7l7BeWxVOBgDu9MONw=	\N	f	2e4f34b9-877f-4e35-b7a8-2bc4d3f5ce0b	Данил		f	t	2021-12-15	didunkan@gmail.com	2e4f34b9-877f-4e35-b7a8-2bc4d3f5ce0b
1262	pbkdf2_sha256$260000$DI74ioVR9zzKAZ0EjnehYJ$oSEhbDxlCMemetfIs2WTnOPVmimzTVNIFKqghq5iBcc=	\N	f	e2a161d7-d60b-4770-bf4e-f9e5816715bd	Nursultan		f	t	2021-12-15	nr.turganbayev@gmail.com	e2a161d7-d60b-4770-bf4e-f9e5816715bd
1263	pbkdf2_sha256$260000$nHEgsLEGRJqSnbNyanpeUC$DuRsOthDEYSzJqIDm8dLhvBQHUN5HottX2av1/BxBB4=	\N	f	fc0e4523-a9cb-487a-8fba-dfa7b44d2260	Дмитрий		f	t	2021-12-15	dsb69@rambler.ru	fc0e4523-a9cb-487a-8fba-dfa7b44d2260
1264	pbkdf2_sha256$260000$JhJuTalH2vLjgCUca2ZjbG$KJqtvOA8TUn40ry+lQ8/QBxy24MwzBgSeomUwLViwZY=	\N	f	cf5f65bc-9bc7-4735-adda-b9fbaf219b86	Евгений		f	t	2021-12-15	mikes_1990@mail.ru	cf5f65bc-9bc7-4735-adda-b9fbaf219b86
1265	pbkdf2_sha256$260000$AprbtOsyC0R8v8jeWKeO7A$LhohAmjgJco8h9mCiZ9jV9wiEHpi8z3UPQQRRrfrlN8=	\N	f	013fd117-91d8-4d95-8566-11073d89ff6f	Андрей		f	t	2021-12-15	a.yanchenko@mail.ru	013fd117-91d8-4d95-8566-11073d89ff6f
1266	pbkdf2_sha256$260000$ZfiNmpTWjbzcj5AFTE5OYL$Iu6tn7sljYbKHNe30nioVBXzBuvu2WZ33Tkwwsm04YA=	\N	f	73cea22c-967a-4748-8240-e346af985dad	Михаил		f	t	2021-12-15	askon1991@mail.ru	73cea22c-967a-4748-8240-e346af985dad
1267	pbkdf2_sha256$260000$lpyGY92wPZNGOAnoBlLNN7$awq+lfXwcHXy5/a/kSQDHi9ePS3cVKabvWmAEoE0YC4=	\N	f	233f15fb-8dd1-47c4-ac4b-5e0b90b51c02	Екатерина		f	t	2021-12-15	savkinakaty@mail.ru	233f15fb-8dd1-47c4-ac4b-5e0b90b51c02
1268	pbkdf2_sha256$260000$YoqKvav6ZuLBAW7m7SRi4U$RUMrwmIoLdFaBnQsKdqpq1g65gW4GffcNmTw4HIQRbU=	\N	f	204dec94-8b3f-4253-877f-c683c825b28e	Денис		f	t	2021-12-15	denis.vniiem@gmail.com	204dec94-8b3f-4253-877f-c683c825b28e
1269	pbkdf2_sha256$260000$qPbc4bWY5ABl8SzfUC5THo$Ke0Ead4cpQydZID9NbSzc97ZKTLTNTZp/ixgYsI/GfE=	\N	f	d77e040d-148f-413b-9c5a-7deb3f57f685	Владислав		f	t	2021-12-15	aviation@rambler.ru	d77e040d-148f-413b-9c5a-7deb3f57f685
1270	pbkdf2_sha256$260000$150qr3QdXFRU9BqGWOArzf$XI4p0ssw3WxYtt38zFgsGJQvF7RnsS+Pe+4PumtEfIg=	\N	f	e20e6236-a23c-4203-a891-8df5ba04ab6c	Соболева Вероника Викторовна		f	t	2021-12-15	veronica20@mail.ru	e20e6236-a23c-4203-a891-8df5ba04ab6c
1271	pbkdf2_sha256$260000$tisMBOwhEPouA48OI2HVVK$x4CJwp2K3+ei5YOIQJKkf9KVPNrPvihsfzR9xFMCEco=	\N	f	34c4bc25-17b3-4d05-8c0f-f7cac16d9774	Сеня		f	t	2021-12-15	panda39gg@gmail.com	34c4bc25-17b3-4d05-8c0f-f7cac16d9774
1272	pbkdf2_sha256$260000$ZDvBThWDEwz5izyMUG0HMq$PjkwHOaN14fYtnfegAVqIlekTD5pVPkyp2zhuU+1MR0=	\N	f	d7aa0264-e1c4-4517-8434-3f110910bb96	Оксана		f	t	2021-12-15	oksana1685@mail.ru	d7aa0264-e1c4-4517-8434-3f110910bb96
1273	pbkdf2_sha256$260000$tP0pHu7KiozGh8azZL50D3$nk8ceRb8Sj/RDwxH9ov1Ai2aYBztdHTscZnHtxM3cw4=	\N	f	d765ca93-e23b-40e6-98fa-39bcfbc4fe68	Ольга		f	t	2021-12-15	zinchenko_94@mail.ru	d765ca93-e23b-40e6-98fa-39bcfbc4fe68
1274	pbkdf2_sha256$260000$o9UTteOu7TkBKiMuo29MOJ$JyxBVOeEXhIqo52HMcBeEDluoOVWttR4ClNUPBh7UMc=	\N	f	ef7a56d9-5250-4f41-8202-17ff3c44cb18	Роман		f	t	2021-12-15	mail.vinokurov@yandex.ru	ef7a56d9-5250-4f41-8202-17ff3c44cb18
1275	pbkdf2_sha256$260000$dOeByg2Vz2IvTaxENi92r0$1MGM3EfrdS+SluR0TFBCI+VgJC1BARk+zn3upA2SDvA=	\N	f	814d3226-4a5e-4ec4-bde6-121d89db42db	Тимур		f	t	2021-12-15	creator_777@mail.ru	814d3226-4a5e-4ec4-bde6-121d89db42db
1276	pbkdf2_sha256$260000$ZLY7wMiRqoUtyDzmjRQpIf$nldD8aADPSa0irdtXmuEHwBBV4zJ/1atLw579mMmwa4=	\N	f	d79982c9-1b67-453c-9841-6a5248671990	Булат		f	t	2021-12-15	nagaev_bulat@mail.ru	d79982c9-1b67-453c-9841-6a5248671990
1278	pbkdf2_sha256$260000$5hwODrhk8s5WwdqzcJ6kWW$O/JMb+ZO0ORrzQTsXYQb1JQBb9G3UcxquO4AYvuQKPE=	\N	f	5f80387e-bdc2-42fc-b5c7-d8875504e3c0	Alexey Khursin		f	t	2021-12-15	khursin@mail.ru	5f80387e-bdc2-42fc-b5c7-d8875504e3c0
1279	pbkdf2_sha256$260000$YBZTPlR2XUdI5oivxWx58M$W3vOOqSAnC+PdADAeTo7ZKi2qoyzJGxpja0yFWoV+Ao=	\N	f	9fc940d0-7067-43da-a25f-f0be022662d3	Сергей		f	t	2021-12-15	sabanovsg@mail.ru	9fc940d0-7067-43da-a25f-f0be022662d3
1253	pbkdf2_sha256$260000$8NON7PrZEM6WVUtSs9BEz4$rgge6nlivnltQhcA284Jp5VrtK1Q3aj30gex40lUxEs=	\N	f	824f4b6b-8c2d-4451-af1e-0d15b4a4a808	Сергей		f	t	2021-12-15	serega131@bk.ru	824f4b6b-8c2d-4451-af1e-0d15b4a4a808
1280	pbkdf2_sha256$260000$yRDvrVSqXSRxzezKr64BzB$lpKXLK1Sgnfu7DkbBVT4zEHSpjWC1BWeprJTS+awwBI=	\N	f	985e2e51-d488-4420-bf7a-b463e73e69b4	Олег		f	t	2021-12-15	cwmc@mail.ru	985e2e51-d488-4420-bf7a-b463e73e69b4
1281	pbkdf2_sha256$260000$ZWti9e7dyx5kAmJ5x1fLvJ$bU2JvTBxy2O+3c1AQta2y9bmDwySeRwbbfPpRo1sZR8=	\N	f	9b08bab8-1d6a-4445-8e1e-73553534b098	Артем		f	t	2021-12-15	afarutin@gmail.com	9b08bab8-1d6a-4445-8e1e-73553534b098
1282	pbkdf2_sha256$260000$u98mxFQdY5SEJC9WCQ3YuN$3keKsgcqhLsr5brJzS4s3lzNmWvBA3zt3K1RGffxakE=	\N	f	4f2a99c6-9066-4807-a6d6-a166c2995c67	Роман		f	t	2021-12-15	0859421@gmail.com	4f2a99c6-9066-4807-a6d6-a166c2995c67
1283	pbkdf2_sha256$260000$KhuaenxrHm411EeixmGBV5$zoAbK35K3AYuoooYhjpcVJKzWodDdXtbt+/D9MwptUM=	\N	f	6b2fe162-aee0-4006-8d92-dc6a41dfe010	Александр		f	t	2021-12-15	patcan89@mail.ru	6b2fe162-aee0-4006-8d92-dc6a41dfe010
1284	pbkdf2_sha256$260000$U2my7MjFL0iMAmiKP1NIwQ$FFOBLjiit/q7luMbTHcdQc0wwTO4xHb7ZJOROn3kz80=	\N	f	e3bc5c9c-100c-442b-a655-2acb3abcaccf	Евгений		f	t	2021-12-15	i@kavretskiy.ru	e3bc5c9c-100c-442b-a655-2acb3abcaccf
1285	pbkdf2_sha256$260000$UG22DS3aizt0BUz2FptVHX$1Ib44dqTskZNyqcGtvYlEi9SLPpxyDrR0tKRrliHeJ4=	\N	f	8327ad87-5cf2-4ecc-8234-7488c38e0a3f	Аркадий		f	t	2021-12-15	gameitpc@gmail.com	8327ad87-5cf2-4ecc-8234-7488c38e0a3f
1286	pbkdf2_sha256$260000$ZT8ZrUxPRUJufAHbY5Cqcy$1MLjLS9kL0dyVqF+ZL3YldELRrvNb0Oowc07+OeQ+zU=	\N	f	81d5ee90-d19a-41a2-8f70-c751bf952e9b	Константин		f	t	2021-12-15	koroboov@yandex.ru	81d5ee90-d19a-41a2-8f70-c751bf952e9b
1287	pbkdf2_sha256$260000$CmdtnuRoo30LBtsyQkJB9u$+JghM2a0g6n+m1ho+iZGhtKG1x8EjFjtPwy7AApkM6Q=	\N	f	25999978-884f-4779-b7b7-00c3cb5d2fb5	Дарья		f	t	2021-12-15	prokina.darya.00@mail.ru	25999978-884f-4779-b7b7-00c3cb5d2fb5
1289	pbkdf2_sha256$260000$jxial1X4EKhqg38M5LUYKw$UiCZI9//e7ZYQM8GfspiWNQEjh+p0lj343l6kR+rQWo=	\N	f	61aaab17-7d84-43a3-822f-7053e8488b67	Михаил		f	t	2021-12-15	izumrudmg@mail.ru	61aaab17-7d84-43a3-822f-7053e8488b67
1291	pbkdf2_sha256$260000$zwxjobYoiTpQRZlnxi8z49$YTio9B2kYitLwP1GX9AhExTALcjCu0WTMvkWhA6jTGM=	\N	f	617aeb8a-f8fc-4596-99bf-d57e11634397	Олег		f	t	2021-12-15	oleg_moskvin71@mail.ru	617aeb8a-f8fc-4596-99bf-d57e11634397
1292	pbkdf2_sha256$260000$o84uH3C3SLBxIK3MNk6QMI$PvxpA845r86kfDR34Ihamdf7ovBPYC/oZs55MWU/W1M=	\N	f	74a016dc-9c58-4eef-aa05-dcc1ffa203e0	Федор Николаевич Елкин		f	t	2021-12-15	elkinfedor@gmail.com	74a016dc-9c58-4eef-aa05-dcc1ffa203e0
1294	pbkdf2_sha256$260000$O7vq9OZwWgzzUWuAMlMj6G$sgX0VcGKGjklnsdCkF2G+tqicmRezQcrLTz4hqrhKaA=	\N	f	51af114a-0281-4367-8358-db0e20f24c63	Александр		f	t	2021-12-15	alexsokolov0205@mail.ru	51af114a-0281-4367-8358-db0e20f24c63
1295	pbkdf2_sha256$260000$WVI9VQFyUuRXR05yR02a7j$KbYgwH+auAz1y+M2F1kOw6u1A+sWuiQargmlMbY5whk=	\N	f	d3edab09-0b48-420e-baa9-cfba6f3ce95c	Амир		f	t	2021-12-15	amir.vafin04@gmail.com	d3edab09-0b48-420e-baa9-cfba6f3ce95c
1296	pbkdf2_sha256$260000$JW3MhCdkjjKYh7tQNPHRrs$mbgf4rkDtDdYN9WKnVIJj2Cm5NYzWPviyy8icGP+OnI=	\N	f	498c26ac-cfc6-42fe-8ec0-6af69d34fe58	Медведева Алла		f	t	2021-12-15	alla180868@mail.ru	498c26ac-cfc6-42fe-8ec0-6af69d34fe58
1297	pbkdf2_sha256$260000$GiUyyv4k4mpzu08UcH8zss$NI93S4dZ94LmOQMTR6MY/AAEMTsO/7pVOzKLX/XfLRs=	\N	f	2f510ff2-ea29-46d3-9c05-e04859c7731e	ОтецДмитрий		f	t	2021-12-15	9166818569@mail.ru	2f510ff2-ea29-46d3-9c05-e04859c7731e
1298	pbkdf2_sha256$260000$pmlhe1PdHZbSAH3eIdv9HZ$q+7gYwyrEPkvSIxGVysmpe1edUcX9sqfgGUwdJJfwJU=	\N	f	31e49151-8df6-46e0-b715-9d2881817e50	Oksana		f	t	2021-12-15	oksana31051@yandex.ru	31e49151-8df6-46e0-b715-9d2881817e50
1299	pbkdf2_sha256$260000$F99Kg2vCMeE7JBNLRCaG1w$9DYnf21Vxbuwu9Q5B6qs1qeUoIR/rtGM37vCTpjwz0k=	\N	f	ea27ec18-5be2-4c3d-ab0c-28059d1b50fb	Илья		f	t	2021-12-15	iskaurov@gmail.com	ea27ec18-5be2-4c3d-ab0c-28059d1b50fb
1300	pbkdf2_sha256$260000$tb3FtTY1xu5RissZNnAk0D$NNDeUq/ZIFMEABtEscLwYJtmPk1RHiYE91ZYwCBYvXA=	\N	f	0cc931b7-d60d-4814-895e-cd3d3526c65a	Viktor Kirol		f	t	2021-12-15	viktorkirol@gmx.de	0cc931b7-d60d-4814-895e-cd3d3526c65a
1301	pbkdf2_sha256$260000$rr9FiA3mre2EQA4Yoq3RyT$kdhGaEBOwmnAGPe7j0/9Q1PouMOVHDpWY9RaB2vs5zI=	\N	f	5dcb5c7f-5ef8-43ed-85b1-fe5d1bce9292	Денис		f	t	2021-12-15	quickmai1@yandex.ru	5dcb5c7f-5ef8-43ed-85b1-fe5d1bce9292
1302	pbkdf2_sha256$260000$XjKTHP4xjurErxyR0smAwZ$WJFL7mDJLqqWtDkq99OqLlH4q4+RJQipSNEOZb3RBBU=	\N	f	41c331c4-dca9-4d9f-9a5d-0525211455d8	Дмитрий		f	t	2021-12-15	dmitriy.litvintsev@gmail.com	41c331c4-dca9-4d9f-9a5d-0525211455d8
1303	pbkdf2_sha256$260000$d17CbDL2qV9v33VsWZiZPL$+0LcTXYpbjYgBQh4vVbtSjt7i3hhb5wu3xF3xmhOVdw=	\N	f	383df6e0-bd0a-4717-8df8-2ef842582e18	Алексей		f	t	2021-12-15	alexmalf@mail.ru	383df6e0-bd0a-4717-8df8-2ef842582e18
1304	pbkdf2_sha256$260000$emVBIlaYFo4KabugODTowQ$9iOj43B71Q2VQ4VaPykCjIZwJO0kXcPnxBu9vWX4s74=	\N	f	ee8acc9b-978b-4a19-9631-90207d391962	Евгений		f	t	2021-12-15	kravc_ed_92@mail.ru	ee8acc9b-978b-4a19-9631-90207d391962
1305	pbkdf2_sha256$260000$9FGGxCbdF5pfUHwIyeW8Jb$ib2ERYViva74Vsl909B5qe7buEkpnes6Tt6v+JjRmYY=	\N	f	dc9cf050-2b6e-484b-8b17-548bb9b3e1b1	Филипп		f	t	2021-12-15	germ.filipp@gmail.com	dc9cf050-2b6e-484b-8b17-548bb9b3e1b1
1307	pbkdf2_sha256$260000$ZwQZSS57mEZ2gmncY84SuN$J60KL0PH1UC5gHiem0Y6kHbVqSjpOopbzx+wOgv2Itg=	\N	f	2e23a5bc-4a1a-4549-a1a1-299c135514dd	Марина		f	t	2021-12-15	bazinamarina69@gmail.com	2e23a5bc-4a1a-4549-a1a1-299c135514dd
1308	pbkdf2_sha256$260000$uOl8huPCOmHTRO3p3sIIIu$9+v6ZFKusVqpq7zbe+eNlq61Roml2kzvGgJRrLpMyCU=	\N	f	ea144561-965d-4217-9500-219c7346f485	Николай		f	t	2021-12-15	mn.8.2015@gmail.com	ea144561-965d-4217-9500-219c7346f485
1576	pbkdf2_sha256$260000$RdphLHBPArl4kWgYtuR59o$PuEPW8w3gvsbjvtw7ydmfZ75zluZTxOJBuJlea/XenU=	\N	f	8c3e01b0-887b-4f51-8f87-09ef8054d1a6	Руслан		f	t	2021-12-17	rus.kochetov@yandex.ru	8c3e01b0-887b-4f51-8f87-09ef8054d1a6
1658	pbkdf2_sha256$260000$Hzqsz5qcUHxoczLVXBGR5O$3w1Qi/GveV052gkc//FLmVOSHGaY/oDJBJh1Jlab8Do=	\N	f	1d833c95-4cea-4126-8888-48ff826c0776			f	t	2021-12-19	frolov_s@mail.ru	1d833c95-4cea-4126-8888-48ff826c0776
107	pbkdf2_sha256$260000$a533e72Vg9HiXXpBeBp04F$zO5Byp0qBYrzico7VHbHLRiYiRif2cvzykmWXBN8WQ8=	\N	f	1b1e747c-77b6-43c4-9d94-4f78f501b52e	Анна		f	t	2021-12-13	beata_anna@mail.ru	1b1e747c-77b6-43c4-9d94-4f78f501b52e
1293	pbkdf2_sha256$260000$gvKHdfJk4OkxMVAy0vX2rz$2Mft8L0laYl17uH/h4NQ3SoHTWZ1TYF9iB9ZWYtvjXI=	\N	f	35b90505-74ae-4fef-88b4-120444616971	Ирина		f	t	2021-12-15	irinayakimenko22@gmail.com	35b90505-74ae-4fef-88b4-120444616971
84	pbkdf2_sha256$260000$qVO19cBTtmXScSeIcatw3i$ZQ18/9L4evrj9wx0A04cnF7+SaUfc1pWt6CYBvk2umk=	\N	f	5e0940ff-0122-47b5-a461-f266379443c1	Александр	Рыбаков	t	t	2021-12-13	rybakov_web@outlook.com	5e0940ff-0122-47b5-a461-f266379443c1
85	pbkdf2_sha256$260000$DF35WeAqJmEe7Z1pSRLu9p$7FWSGPGdy9XNKI55RJSArBeyn1CcTea0YMrnOrhIYgE=	\N	f	be8c12fb-e9cd-4c54-8438-579de71dd2ce	Антон	Инвестор	t	t	2021-12-13	meadow.media@bk.ru	be8c12fb-e9cd-4c54-8438-579de71dd2ce
1309	pbkdf2_sha256$260000$4hO6SjVPIrUdYz6mngJxLv$8Cy0d8CTjCZgPN5wxx8lImM6XhTsA8elkD5uc0GyRmM=	\N	f	2b564238-76f4-40c4-b8b3-8f4f4c373ead	Дмитрий		f	t	2021-12-15	snipe@inbox.ru	2b564238-76f4-40c4-b8b3-8f4f4c373ead
1310	pbkdf2_sha256$260000$pvf5sb7GZgzTYD3KHpkBcu$jMWpYps13sF9hIC5JefraLE6WFv3GwCpCpWCXDbkD2k=	\N	f	2e0d2e24-f834-4a7e-9cce-2dda6440c313	Дмитрий		f	t	2021-12-15	greenembrace@gmail.com	2e0d2e24-f834-4a7e-9cce-2dda6440c313
1311	pbkdf2_sha256$260000$82wrzHJZigswcTxYSlTGrS$5nFxjfIgdZqNKnBEbjtPH5L77Bc/e6vmWzF7smUwbH8=	\N	f	e5686311-ad55-40ba-ae16-ce79d59df17f	Екатерина		f	t	2021-12-15	katik02@yandex.ru	e5686311-ad55-40ba-ae16-ce79d59df17f
1312	pbkdf2_sha256$260000$oWHLJ3hjchqDrQRTC7QycY$lSqhz4gII6Ka3FtwppO3WyilrUyw7JK6gk8ydQqOvos=	\N	f	a6e42769-430e-4453-a255-5acdc34da91e	Георгий		f	t	2021-12-15	scandium@yandex.ru	a6e42769-430e-4453-a255-5acdc34da91e
1314	pbkdf2_sha256$260000$LAixJZiF5shc80Fgd9qRFK$Ljx+4IPjk/Ukihdtjt/WH65sLTInkXI9Ov+EYW0fuBg=	\N	f	1ec992e1-e83a-459a-82aa-473b7b12e687	Андрей		f	t	2021-12-15	koskokos777@gmail.com	1ec992e1-e83a-459a-82aa-473b7b12e687
1315	pbkdf2_sha256$260000$Psl1JCrB8zdnkKx7iwZ5u5$XaYZGWySphszc2blsstYiEylt43f8J1qiSYkhvdMwhk=	\N	f	f19d61e6-4f20-4ce8-a6ba-25c9d6b3de9c	Роберт Усманов		f	t	2021-12-15	irobertu@gmail.com	f19d61e6-4f20-4ce8-a6ba-25c9d6b3de9c
1316	pbkdf2_sha256$260000$bE3oAmHfRCvdwt9Ms8fKMM$rvbpZYoEvddxlmct/FyhQPVcWs2GOcfh8j4K2poXOGs=	\N	f	881abfef-b562-4df6-8be0-694430de465c	Арсен		f	t	2021-12-15	gasanovarsen@yandex.ru	881abfef-b562-4df6-8be0-694430de465c
1317	pbkdf2_sha256$260000$oKwSGwks7ciXjXHmvH7STo$rOPNUWJVaOdSTlSqwuO6d5K28m+d6d15QgSKPfbmxbo=	\N	f	ff63f868-012b-48c7-a42d-8ad78f8979be	Maksim		f	t	2021-12-15	mmartianov47@gmail.com	ff63f868-012b-48c7-a42d-8ad78f8979be
1318	pbkdf2_sha256$260000$r331iDJzhDbX1snGgl64vc$T9w/amSvTGuZQFXm8Hyoe8FiYSgwrvzrHkRCCGTBcJ4=	\N	f	238ffd74-7463-4234-bd11-59677b6dc2de	Владимир		f	t	2021-12-15	kaz21@mail.ru	238ffd74-7463-4234-bd11-59677b6dc2de
1319	pbkdf2_sha256$260000$qv5rPslSmF3QYINS0kSdMs$ENJel/Rza9HzXPXGpOA3g51v8OO6814Fig+b/A1m9pQ=	\N	f	073d358d-9dbd-4b19-a032-345d07e38a36	Дмитрий		f	t	2021-12-15	dmitri.novitski@gmail.com	073d358d-9dbd-4b19-a032-345d07e38a36
1320	pbkdf2_sha256$260000$sa4jeX7k52uMiLnrJjCOVl$9nt9Ox8rHwFE3CgJWak4JLjoF9WXsa3FSCpmT4uZi1Q=	\N	f	5bc78ce8-805b-4ee3-9803-759c2395e42d	Игорь		f	t	2021-12-15	i-chmil@mail.ru	5bc78ce8-805b-4ee3-9803-759c2395e42d
1321	pbkdf2_sha256$260000$kDjRein1laxBsyJ3x2UhuG$yiImaey+j8HdRQs+fL4dHhXn01ZCLXI3a3pnYcT7Wno=	\N	f	c80aab7d-da37-4992-a3e6-b4c4459c4835	Алексей		f	t	2021-12-15	qwerty-rock@mail.ru	c80aab7d-da37-4992-a3e6-b4c4459c4835
1322	pbkdf2_sha256$260000$FElKsXFqcijxtrdOYHFkVL$RL/R/4AmLV5juz94suYiyOybuc++us4XPVfpvzLJ4+s=	\N	f	78bdfda0-26fd-406b-bd89-463163d137df	Валентина		f	t	2021-12-15	valentina.prorekhina@gmail.com	78bdfda0-26fd-406b-bd89-463163d137df
1323	pbkdf2_sha256$260000$6HyYjePgZzzRi9MzGGa9sj$Cimd74JosJI8Q8sbRXXjWTR+mtNCrES67SuteOwrir0=	\N	f	afa587f1-4362-4c23-868f-d5d2012506fe	Юлия		f	t	2021-12-15	yuliya-g94@mail.ru	afa587f1-4362-4c23-868f-d5d2012506fe
1324	pbkdf2_sha256$260000$aHrAM9i54ZVumqosDreJZO$t9wfSA6+fn2U+ckGbMDOSGF/hf4F4ii41fXRx89/3T0=	\N	f	3f49bb04-ec1f-4dbe-b764-cc44903222db	Алексей		f	t	2021-12-15	davidov1986@bk.ru	3f49bb04-ec1f-4dbe-b764-cc44903222db
1325	pbkdf2_sha256$260000$z4D1e2MP3hCalQd5OfTcbs$6AHJcLHoxgCsTexnCVZP9dAjOK2CYLCf51IYapyRm/w=	\N	f	8cd23ec0-127a-4831-8fab-5eb322fc0ff0	Дмитрий		f	t	2021-12-15	shattlkostroma@mail.ru	8cd23ec0-127a-4831-8fab-5eb322fc0ff0
1326	pbkdf2_sha256$260000$2TUncPblW4k47S5dp2rhDQ$mKmE5vvSR7hwgOwv8Lj7bchjTZIezXkSL6bzTCTwSGg=	\N	f	2ec592a3-6e85-4df2-bafd-c6944ac06992	Евгений		f	t	2021-12-15	jenyachekulaev@gmail.com	2ec592a3-6e85-4df2-bafd-c6944ac06992
1327	pbkdf2_sha256$260000$QUnIertM3dCZ04WJ8dTcPh$a4RN1OnOJDPkICRQpLwdcBQwSFHYbKHSr9XA8c5+g4g=	\N	f	42a42e3c-7c89-4303-be7f-a68dfa5b9a1f	Олег		f	t	2021-12-15	mayushonok@yandex.ru	42a42e3c-7c89-4303-be7f-a68dfa5b9a1f
1328	pbkdf2_sha256$260000$2mtbRTVvspVHy89c6GBjwh$HVzzujclQPwiTShYtYTzJpas6Cc8HbVoF3RSBVqZdaI=	\N	f	a056d0d6-9e80-4320-ae33-41120e977994	Кирилл		f	t	2021-12-15	75391@mail.ru	a056d0d6-9e80-4320-ae33-41120e977994
1330	pbkdf2_sha256$260000$BZ9Ee8kwsdUcQ5ZNvO3IZf$3D+r3bJnDXZrhf3Qgrd6xqTj004m+QW1E4k4jCKjxk0=	\N	f	738e4a6b-5ed2-43b4-ab10-c00cccbfc479	Джейсон		f	t	2021-12-15	jasonhue@yandex.ru	738e4a6b-5ed2-43b4-ab10-c00cccbfc479
1331	pbkdf2_sha256$260000$e3EUPqV7Q2Bem6l3ljSeuf$SWA4FQQFJOY5BZ26fLlm0C/BZLLYrrZP6Kj0akdvoLs=	\N	f	ca82774b-3afe-493d-9bb0-447e81fad385	Юлия		f	t	2021-12-15	ju.sochi@rambler.ru	ca82774b-3afe-493d-9bb0-447e81fad385
1334	pbkdf2_sha256$260000$zAT58Mwo1vl5EnvyXxVs9W$rKSvtzVM/BeNA3ebLxVd0Kq1s8N/EYaOZMLGYheEudg=	\N	f	b6199ac3-c893-47b0-96b8-c305aff870ac	Евгений		f	t	2021-12-15	eu.kostomarov@yandex.ru	b6199ac3-c893-47b0-96b8-c305aff870ac
1335	pbkdf2_sha256$260000$X12iD5OROQCQTK7gW4appu$QTBn4brt1llf+dsVrbqr9TsY9ztykMs1xNVA6V0zeq8=	\N	f	b444554a-9619-4a75-833e-db86573ec461	DMITRY		f	t	2021-12-15	dimanext3@gmail.com	b444554a-9619-4a75-833e-db86573ec461
1336	pbkdf2_sha256$260000$ROWgJJV1TVSaAtlY1oSHau$UZWeoMu57eFA9R7y/J/VeGjDs6I6761Z+YTq+lFIvQU=	\N	f	3245d3ae-d42f-4926-91a5-b7a3271288d8	Раксана	ОГАНЯН	f	t	2021-12-15	r0ksi88@mail.ru	3245d3ae-d42f-4926-91a5-b7a3271288d8
1337	pbkdf2_sha256$260000$ikJnC6OYtTPFSpje6FGogk$ssJQIkmxisLPiNUSn/iVvVE3YQL/dw/RbF1sPA0bD1w=	\N	f	54d0bb1a-95a7-4f8f-a748-41c27f9e84a0	Максим		f	t	2021-12-15	demmax_128@mail.ru	54d0bb1a-95a7-4f8f-a748-41c27f9e84a0
1333	pbkdf2_sha256$260000$xBqshZIbeqv6Hl2IETcWkh$yhRyg4pm8boApdZH+gXb6aHAaO35lsLl4ZDl4Unlvg8=	\N	f	377c75a8-ce16-4412-b361-242402e0bd65	Владимир		f	t	2021-12-15	myprofile76@gmail.com	377c75a8-ce16-4412-b361-242402e0bd65
1332	pbkdf2_sha256$260000$vLSlvjZckeztY6LCyFucoI$Fgtn9K54yBdos0PfQJ4jMYl0VSrQ+qmV0lF7ejCLPls=	\N	f	3a41808b-fc5c-4e5a-9fbe-a7315cf69b0b	Елена		f	t	2021-12-15	terrafima@mail.ru	3a41808b-fc5c-4e5a-9fbe-a7315cf69b0b
1313	pbkdf2_sha256$260000$6nHpqXevIv6j7Qsmk9oZHP$WUio9jf4vJbKcxofvcx1fNpkR3dRb2mLLqjZKilUenA=	\N	f	ce0c5adb-da4e-45bd-9f67-ec886e015273	Дмитрий		f	t	2021-12-15	diman-nikitin-1994@mail.ru	ce0c5adb-da4e-45bd-9f67-ec886e015273
1329	pbkdf2_sha256$260000$hSfd4BsLABhWVDu5KVzky9$4JciXUmxbC1H1jfzbB5Tv7imz/j4Z8FC+mVaE59ODFM=	\N	f	a0bbad9c-8138-420c-900e-440b332a388b	Дмитрий		f	t	2021-12-15	dimamarchenko84@mail.ru	a0bbad9c-8138-420c-900e-440b332a388b
1338	pbkdf2_sha256$260000$F28AkYeEuDKSDBPUXCOhWc$QVca2Ssr4HJF3Xe9op6wCysHb+hz6zIhCE3a0gUgAVc=	\N	f	77e14854-d52b-42b3-9754-5fddeffe2969	Артем		f	t	2021-12-15	ryzhoffart@yandex.ru	77e14854-d52b-42b3-9754-5fddeffe2969
1339	pbkdf2_sha256$260000$NdnJHlHL66QmNqsm3CD9U0$JlH6G/+1J/7zl//QKH5NymCeLSKd2/PZ7aQFeeI8GMk=	\N	f	4c0b59bf-1277-469b-bdf2-5c0324ce95cc	Александр		f	t	2021-12-15	tereshin_alex@mail.ru	4c0b59bf-1277-469b-bdf2-5c0324ce95cc
1340	pbkdf2_sha256$260000$lI8Ra1BX8YsZ0ICWGL2uid$aYfpzlI38zwkdqnbYIgecWrfQ+4hectolw30sSqXPJc=	\N	f	bb05db13-1ac0-4fe0-9214-62d1025ec53a	Дарья		f	t	2021-12-15	darya2787@mail.ru	bb05db13-1ac0-4fe0-9214-62d1025ec53a
1341	pbkdf2_sha256$260000$Pzj1IpSWUSSbbRn6Sp61ue$6hG/TpxXllkrGXrY37OduFtjULGE5jzsXed/zCZBMLI=	\N	f	34aa91a0-096f-409d-955b-d99dabd60a9a	Aliya		f	t	2021-12-15	i.aliya@me.com	34aa91a0-096f-409d-955b-d99dabd60a9a
1342	pbkdf2_sha256$260000$zyPkGYi0wO4fBqy1Tr2MUj$70G+lD9h+KeLRJoBIVKZ15QRTlDwQ3/acWtn6FxtvHA=	\N	f	bef3a317-1453-457d-8d89-10b5cebc76e1	Максим		f	t	2021-12-15	sidunov161@yandex.ru	bef3a317-1453-457d-8d89-10b5cebc76e1
1344	pbkdf2_sha256$260000$yoiJJi46dPQvcchtfqlduZ$MljDTntoZ1LDMGno/QmeYEF0/YwrmB0P8t9FSIZUXWE=	\N	f	a34eb78e-496f-41f7-941f-f53eaaef7b11	Иван Стамбульников		f	t	2021-12-15	ivanstambulnikov@yandex.ru	a34eb78e-496f-41f7-941f-f53eaaef7b11
1345	pbkdf2_sha256$260000$oqQBGNffYu07AMO0J3jkpj$N6N/0MRae7L8T3JyHw9iiY7ju431dl+KJbtp5z90FmI=	\N	f	e186c273-9823-4bf4-8157-ceeca901fce9	Азат		f	t	2021-12-15	azatlek2008@mail.ru	e186c273-9823-4bf4-8157-ceeca901fce9
1346	pbkdf2_sha256$260000$dbh1SekwJbvcLpsWDvm8gl$H1Z6ONw6NeFFPBA1ay8x0x5j45dib4MqJprjBu4ZukU=	\N	f	c4ac26f6-d68a-4fb6-80c3-cee151370744	Глеб		f	t	2021-12-15	0gleb0@mail.ru	c4ac26f6-d68a-4fb6-80c3-cee151370744
1347	pbkdf2_sha256$260000$yjhGAN6Rovfr4CmtZj5UZV$IYX0nhrKdF2ru1TZmQkzoYcAw6hl+6LQY/Er3awX8vY=	\N	f	983b5861-6820-4011-ad86-09b725033be8	Владислав		f	t	2021-12-15	neitral89@yandex.ru	983b5861-6820-4011-ad86-09b725033be8
1348	pbkdf2_sha256$260000$eSjor7QoUIiCwvm3e7td9I$/Vtj4zPtIwbOn7SU+FEVC0sAvivdWHwzCizROCPe1kg=	\N	f	96812e46-0aa3-4e32-948e-004460c0f344	Сергей		f	t	2021-12-15	se.sv@mail.ru	96812e46-0aa3-4e32-948e-004460c0f344
1349	pbkdf2_sha256$260000$yFOWvQ81po31Y5QhTbQsPx$vVB9ilF32EZ7vkS/hA1gZa6ji7N3hU1VyI6CCe5e6+o=	\N	f	cf5e8be4-9635-4463-9e34-074bf23e1d6f	Фёдор		f	t	2021-12-15	feodor.h.p@gmail.com	cf5e8be4-9635-4463-9e34-074bf23e1d6f
1350	pbkdf2_sha256$260000$iFZ07DDp1clc7q2zDdIh0W$t54GsE6yX2RQ4At2/1JWUmI4SeVgNmVJs9GcwkbF3iw=	\N	f	6ec2c6a3-6cde-4712-a10c-94ed482c9abd	Максим		f	t	2021-12-15	mlelyuk@gmail.com	6ec2c6a3-6cde-4712-a10c-94ed482c9abd
1351	pbkdf2_sha256$260000$U0Zozuv0yu4g71a9y8Agge$QObd5DuNZ5WtGeEUycMFpbo7rxJYWMWlRvkojtFw61Q=	\N	f	8e40428e-08b1-4902-a927-7b18ad9cc524	Алекс		f	t	2021-12-15	northicefox@yandex.ru	8e40428e-08b1-4902-a927-7b18ad9cc524
1352	pbkdf2_sha256$260000$aZQSn3iGPHNYbI1o1gqMZP$ZGafmcG+CGUn0s/ubsnUTlDALGmxUcz4CYE3pY0ykJU=	\N	f	9120abb0-9279-4a4a-bf56-e1668e513afe	Алексей		f	t	2021-12-15	a9052091393@yandex.ru	9120abb0-9279-4a4a-bf56-e1668e513afe
1353	pbkdf2_sha256$260000$LZRHSp5W0ItAU57a63tsQp$f/5OgkGCQFb3O6XYBgAv94MPqXPp/Ex/8zbO9D8PDu4=	\N	f	70d75adc-10fd-4411-979e-357dfc1eba54	Сергей		f	t	2021-12-15	barser1@mail.ru	70d75adc-10fd-4411-979e-357dfc1eba54
1354	pbkdf2_sha256$260000$eIWl82fwITKAOWh1yewRgW$Ck/3NfA7tzPXix3wQ1d0PYwUojp41bmRR1AvwdXMKHA=	\N	f	ff85a90f-746c-4ee1-9bab-50c370fc9194	Иван		f	t	2021-12-15	zhirovivan@gmail.com	ff85a90f-746c-4ee1-9bab-50c370fc9194
1355	pbkdf2_sha256$260000$po5MuDVcIIfZNyW8AwOVcH$/UaXD2dfah6jrUldcP/uYzTmT9xF1tQ/X9qCjkhzyFw=	\N	f	7e77fe86-ff56-40d0-a771-a022e1c6cbbe	Артем		f	t	2021-12-15	ae.andru@gmail.com	7e77fe86-ff56-40d0-a771-a022e1c6cbbe
1356	pbkdf2_sha256$260000$cdhCvzea9nQlN506D2st8O$sy+VRh5zsMrWBKGyj/vkHfaD4WP4dy992tFORkENxhI=	\N	f	5d6b10e0-fb2e-4d23-9835-d66fe8af6b93	Иван		f	t	2021-12-15	ya.vanter@yandex.ru	5d6b10e0-fb2e-4d23-9835-d66fe8af6b93
1357	pbkdf2_sha256$260000$G1Zzoo5ic60vrYDTN564RS$JYrSiBRDSO9IY5n622CXyPOYrSalHVHHovd2GrO/tLE=	\N	f	0233cfd6-6709-4c3a-a61a-aa3c9004825a	Алексей		f	t	2021-12-15	panamarew.a@yandex.ru	0233cfd6-6709-4c3a-a61a-aa3c9004825a
1358	pbkdf2_sha256$260000$k6BaxhciTBpBVFQK5Ff4oT$M59LTiIsW7hqJDl6lYgxVFdcP6ORYn123GJ8dJ1WFOw=	\N	f	d97ad4e5-a680-4540-9f5f-13ade678fe17	Андрій		f	t	2021-12-15	kozak17092000@gmail.com	d97ad4e5-a680-4540-9f5f-13ade678fe17
1360	pbkdf2_sha256$260000$vns2HpHIjcQRhmDIhsWC0v$0jdJM984Yaip6ShAgUYf9QTkzzLdaV6y5sBGvuKJMbI=	\N	f	858149e6-8587-440f-8df1-113ccf0d0e6b	Илья		f	t	2021-12-15	boarder2003@mail.ru	858149e6-8587-440f-8df1-113ccf0d0e6b
1361	pbkdf2_sha256$260000$RpSLa4JhUEOHtq3t6raRId$XrMu2j6XiEB9VERPusqWB2lnnOLxMso76E/q0vfv0oo=	\N	f	739d9889-2fd2-435d-be5a-c830a6cb990a	Новое имя		f	t	2021-12-15	ivanolegtindik@gmail.com	739d9889-2fd2-435d-be5a-c830a6cb990a
1362	pbkdf2_sha256$260000$6c12L1ZHlSqmrtTw8rqCiZ$NQdGAe7Ci8/ghCNADjnsYZaSyCkeWbAVl/lyNOuTyJo=	\N	f	d86f691e-2941-4e04-b044-d163f4aa4575	UserhBZISWBaKs		f	t	2021-12-15	antimodern777@gmail.com	d86f691e-2941-4e04-b044-d163f4aa4575
1364	pbkdf2_sha256$260000$YB3CULjKhZGmuiHJ0voQKs$To7ihNcCfzclbte+o3+34A7EcTvEE8sqeXwerRCmHbs=	\N	f	42c17eb2-c7e6-4b23-acf2-e0015effd66f	Gennadich		f	t	2021-12-15	sosninrg@yandex.ru	42c17eb2-c7e6-4b23-acf2-e0015effd66f
1366	pbkdf2_sha256$260000$Df0yOXBo5Z92OYcIlmAfh9$AEBFVqV8moQRgNHJ8MUT/k6qrE4E2cZRnax4gyb7lQg=	\N	f	d6366c14-e2d9-4f43-bb30-77440a39534e			f	t	2021-12-15	selyankin.varabora@yandex.ru	d6366c14-e2d9-4f43-bb30-77440a39534e
1367	pbkdf2_sha256$260000$DdCEDo8NpkcDOT4zPayMeh$nsZGQ3fRYUv61kf+ADKMgNvugAU9EPntsQyOkBqRXV0=	\N	f	72fb1ab9-3fa2-4ba7-af75-a2020ae5ed37			f	t	2021-12-15	finansy.kot@gmail.com	72fb1ab9-3fa2-4ba7-af75-a2020ae5ed37
1368	pbkdf2_sha256$260000$zyGkQwW8uGzOkA4cwf2BfF$05eo6Sf3W5NEiM95KPCjTucDT1gyuxFkHctMQQyBAtg=	\N	f	a6600fb6-07be-43a3-be82-daeb8f6a32af			f	t	2021-12-15	kuramshin58@gmail.com	a6600fb6-07be-43a3-be82-daeb8f6a32af
1369	pbkdf2_sha256$260000$rqULgtlMkDItI8xd11BY23$+tS2UOyzZoBj36bVzjhXL9wQCF87z4QfmYKr1fFbFcg=	\N	f	8d5cfc26-fd36-4609-ba00-a976335184ca			f	t	2021-12-15	kmaiboroda@gmail.com	8d5cfc26-fd36-4609-ba00-a976335184ca
1359	pbkdf2_sha256$260000$uQtBsg6YGw4f1PJL78AF0a$R0KNbtMmwqVr3mB368rAA/SdYqJAZrYMCrcb3gf6860=	\N	f	2f2f5ebc-9bc3-4be0-98c0-feb34dcea5f1	Владимир		f	t	2021-12-15	vnk75_05_25@mail.ru	2f2f5ebc-9bc3-4be0-98c0-feb34dcea5f1
1343	pbkdf2_sha256$260000$4rielvwfBksjZ3yZSAFNP8$84nrTM5x7uWpoXCISeGdYKIGG447GcdpwXIFhPH5XAY=	\N	f	de9336b3-9a01-4bca-9e48-c0f0bc2d4f98	Евгений		f	t	2021-12-15	castusvox@gmail.com	de9336b3-9a01-4bca-9e48-c0f0bc2d4f98
86	pbkdf2_sha256$260000$SyVCW6DLRv4H0A6ALevEug$3XjuYu7xubhzg7xtcg10L04tvOZ7GBTqIbq2tdD02tg=	\N	f	105e39e4-a1c5-43a2-89fb-3134911f4a27	Антон		f	t	2021-12-13	mokosin.anton@mail.ru	105e39e4-a1c5-43a2-89fb-3134911f4a27
1370	pbkdf2_sha256$260000$lzaJ6p2ylfSj0MaVtMIsMp$/IvkfsOyPJd/cR6aN2vapHZViDE3U6rdSHIth54SiOg=	\N	f	0848f295-244a-4768-bcb3-370548775a1d			f	t	2021-12-15	6512776@gmail.com	0848f295-244a-4768-bcb3-370548775a1d
1371	pbkdf2_sha256$260000$DjGHQ8ZZbs9YBcxMdLgjUA$VGOKCZqc1Ua7AI0EOreujAwl45WhoFWCTZRv1RL4hRw=	\N	f	3152b07c-c90a-47c5-af97-3d8e95e63a2d			f	t	2021-12-15	artemborisov123@gmail.com	3152b07c-c90a-47c5-af97-3d8e95e63a2d
1372	pbkdf2_sha256$260000$U1vILzjIcMsB52qqm12qAE$OC5Fhvv+rO1h9/HzvIYv/bgwwBWia/c0jggxGEO9BQc=	\N	f	80e69dae-4af9-45c1-9d44-3da51626a57f			f	t	2021-12-15	gmv47@mail.ru	80e69dae-4af9-45c1-9d44-3da51626a57f
1373	pbkdf2_sha256$260000$PXlErgvF5BpwpUXS2kd7Yd$04I8h/+dDfAPXnH4n2C5HOv8QbMct+lLWZF44qm94ZA=	\N	f	41908f57-afb6-439c-a7b4-ca93ca94402a			f	t	2021-12-15	aakulachko@bk.ru	41908f57-afb6-439c-a7b4-ca93ca94402a
1375	pbkdf2_sha256$260000$KfYpmTuGrB8PtajLBAOs5t$eIQPiYj3CGUaJTS+FIJBGiswOtyuAKKrweaTo0YRUtA=	\N	f	fe3d46fe-e116-456e-a38f-e0b86c3485ad	Наталия		f	t	2021-12-16	natasha_ural@mail.ru	fe3d46fe-e116-456e-a38f-e0b86c3485ad
1376	pbkdf2_sha256$260000$iByYte3VX3DUPBMHzX76Nd$+QjA9If50rJpoRy38mWnnKFFSNprELE0wPmA/UfKwEM=	\N	f	894f950e-6322-4f5a-92e1-f8394cc01c4c	Максим		f	t	2021-12-16	maksiminsk1@gmail.com	894f950e-6322-4f5a-92e1-f8394cc01c4c
1377	pbkdf2_sha256$260000$fo1eDu7UI1Msxlr4tTAslK$zrcyExNWnmmem4X1hhKIV6u/XylIRaaksrjJM63ZrYI=	\N	f	05ed2abb-2f0e-4cfb-9642-d736146e1e5b	Денис		f	t	2021-12-16	den.tsebro1988@gmail.com	05ed2abb-2f0e-4cfb-9642-d736146e1e5b
1378	pbkdf2_sha256$260000$ZiItvuEAS5FyXyQODWc7XP$H0ciIgCnTD03oK9NfS+AOOEsYDyVXU6DNgRbdc/Vblk=	\N	f	515b6e98-1ac7-4726-a76e-13ab88263c1c	Захар		f	t	2021-12-16	bondarenkozahar59@gmail.com	515b6e98-1ac7-4726-a76e-13ab88263c1c
1379	pbkdf2_sha256$260000$O2k5qqEb0B0vb0WmatMlxi$dyJZX1hdjkSQNRckWY1e2KbM1NZmP24MvyRB9Z5+9fk=	\N	f	10547f76-74a6-45c3-b2f3-91d987bc6eec	Влад		f	t	2021-12-16	aidushevvo@gmail.com	10547f76-74a6-45c3-b2f3-91d987bc6eec
1380	pbkdf2_sha256$260000$q4Kepzx2Hioij6KOiw2Hm1$5Fs5xZ8v+5YQYzGfk3klE5SpKpAPeLSbH2ZhII7P14c=	\N	f	fe58a2eb-3859-43a5-98db-513a1da204e4	Евгений		f	t	2021-12-16	crusaderjen@gmail.com	fe58a2eb-3859-43a5-98db-513a1da204e4
1381	pbkdf2_sha256$260000$lyxqwvJckeM9brXoT3H5Mt$MQDjWLgRTPyepEEARPUxavofLSVDEglY1KVckQXIWT8=	\N	f	e8546148-4040-43b5-9096-ff727c9be9b9	Александр Бреус		f	t	2021-12-16	sanechek.evo@mail.ru	e8546148-4040-43b5-9096-ff727c9be9b9
1382	pbkdf2_sha256$260000$jKp15Bs9HcB84IxomH8lMs$expVjMf4yI2FLNsTl1lyGUofnwj24l5DOh/rhMy2HtQ=	\N	f	dcb85eca-1441-4055-bfb2-2a9f47a994a6	Александр		f	t	2021-12-16	asp197986@gmail.com	dcb85eca-1441-4055-bfb2-2a9f47a994a6
1383	pbkdf2_sha256$260000$qrQiQbGCdh4TPwezI1lhKK$Ldp+7c3liLXXJEcZSNrsXH7TakktbIecduncFbPrtTY=	\N	f	14073746-9b31-4b4c-9bdf-0f30b8cc47e7	Vadim		f	t	2021-12-16	vadim@stroykurs.ru	14073746-9b31-4b4c-9bdf-0f30b8cc47e7
1384	pbkdf2_sha256$260000$qEg0HA9e61hh8WGhseiWNx$6DL/iMkBC5dc9CmmT7QJeq31texB8vwvo+Qjg+vkEuw=	\N	f	5fbc6b04-aa5d-49a7-b1dc-5d0bdc73b039	Сергей		f	t	2021-12-16	sergey3374@mail.ru	5fbc6b04-aa5d-49a7-b1dc-5d0bdc73b039
1385	pbkdf2_sha256$260000$qoBC6Qvy4BBzLV21bLC0gr$aq0SJT/unnFCN7wqpKX0FFTVD26fWpa+TimExzSMULk=	\N	f	54727843-4e26-4248-b004-13e9c09b40bb	Григорий		f	t	2021-12-16	grigerball@icloud.com	54727843-4e26-4248-b004-13e9c09b40bb
1386	pbkdf2_sha256$260000$RyduXxC2olDB4wXVgyMZVS$n1dEvftU24j7HUDknmrq5j/0Fv3daNcVatGTVsqEKRA=	\N	f	b1b232f2-a893-42ca-86a3-a436594a9a05			f	t	2021-12-16	cergeynik72@mail.ru	b1b232f2-a893-42ca-86a3-a436594a9a05
1388	pbkdf2_sha256$260000$xNmgCvwQzs8GD087AJPEQJ$CsGb5wS0WkPU5nsiTeL9sIu1D90+W4OY3tlXbKF32OM=	\N	f	72c5360a-bb03-46a3-899e-a36435f3577b			f	t	2021-12-16	work.den1skofar@gmail.com	72c5360a-bb03-46a3-899e-a36435f3577b
1389	pbkdf2_sha256$260000$LpPtNyUBNgUu6nPHubMfdN$mjODRKPddmV9gujNhWQlfQxd5du3rJdYUuXstay2PLc=	\N	f	7609daa4-d445-4d9a-acd1-1895a01a3e8a	Андрей		f	t	2021-12-16	set2_1@mail.ru	7609daa4-d445-4d9a-acd1-1895a01a3e8a
1390	pbkdf2_sha256$260000$VkpK32uAC2hydBzEepneUs$+BgCSxeNYXbiCYl0kwy4NnBKiAjv5/+PS8esbNqYegY=	\N	f	61ededcf-63ac-42ca-95e1-a91f59a672c6	Алексей		f	t	2021-12-16	lexnur@yandex.ru	61ededcf-63ac-42ca-95e1-a91f59a672c6
1391	pbkdf2_sha256$260000$Udb8BrjgoHwqjSbmXaLRAZ$CJQwUk1Agza3MomISpWl4zaPmX1eY6c33IGaFLB+kuc=	\N	f	e4a0328e-bf63-4f79-8091-2fc2ca6c86a1	Виталий		f	t	2021-12-16	blinoff1977@mail.ru	e4a0328e-bf63-4f79-8091-2fc2ca6c86a1
1392	pbkdf2_sha256$260000$F223OLgu7pb4xo7juERDOn$+HgG7GXt/Yn3FsBLqQ2Q6mKpad4vbmlS6z1SzzL6bZ4=	\N	f	50d116d0-70b8-461b-a81b-b59947b07b5c			f	t	2021-12-16	vitsheff@list.ru	50d116d0-70b8-461b-a81b-b59947b07b5c
1394	pbkdf2_sha256$260000$37AptcBJ1vLEyfHywVvtdh$bExPeAExDIUh0Y3fj154Tiegi5B/ODGgO1hJemoWexw=	\N	f	b7b6eeb2-d3d6-4593-9e97-f8b1c05a65cf			f	t	2021-12-16	nikitakoshlakov@ya.ru	b7b6eeb2-d3d6-4593-9e97-f8b1c05a65cf
1395	pbkdf2_sha256$260000$xQagSCB8sofzmwglhV6Puc$jj9vM/yPEjwHSomBFKX7fVaA6grTjkxf6bR31iT3s9k=	\N	f	02165dd3-8383-4b85-bf1c-3e5f546cd5d8			f	t	2021-12-16	nd588@yandex.ru	02165dd3-8383-4b85-bf1c-3e5f546cd5d8
1397	pbkdf2_sha256$260000$x69vLUQ6kl6VbNyWHcDDIh$suXD853btHS4xgMgfgvKvnqWRv8BiIxPgkU0leAxD0Q=	\N	f	e6a89eee-f77d-46af-a563-784d47ff71db	Sergey		f	t	2021-12-16	sdanilov@list.ru	e6a89eee-f77d-46af-a563-784d47ff71db
1398	pbkdf2_sha256$260000$wWpOOaGcb6mCyYye6bUTy7$IvABHfKVOHWYMpZI+jpnU9uIThYIRSlJFWvoz/TRAtM=	\N	f	af55c330-19dc-4ce3-9a93-d23cdf935e64			f	t	2021-12-16	fs8767@gmail.com	af55c330-19dc-4ce3-9a93-d23cdf935e64
1399	pbkdf2_sha256$260000$qZRFxqMUdWRw3W7uhXbbBr$Do3ldZFEljC1+x3WKkb5gvlBSQGpS+krGEOrUPs9Taw=	\N	f	1f874a84-052a-413c-ad34-ff683ecf9d7b	Александр		f	t	2021-12-16	shurygin1996@gmail.com	1f874a84-052a-413c-ad34-ff683ecf9d7b
1400	pbkdf2_sha256$260000$vktiH5W8RXg4K4abCWJVVF$k+9YcDEykp1gqoeTwRvSUxBjSx+p7am0Y2s0mxQnxkw=	\N	f	81de9f9b-7640-4a96-9eb9-3dcbe68bb798	Тимофей	Шаруев	f	t	2021-12-16	sharuev-t@mail.ru	81de9f9b-7640-4a96-9eb9-3dcbe68bb798
1402	pbkdf2_sha256$260000$Ry9aPQju9iqGrw462sNuV0$Y8GmRu2pxf2fTHx1wiVJ3K53Vf3khMJqG+d8s7SqIGE=	\N	f	4e14b1ac-9457-459d-b25d-bb45a025609f	Николай		f	t	2021-12-16	kolya.2107@yandex.ru	4e14b1ac-9457-459d-b25d-bb45a025609f
1403	pbkdf2_sha256$260000$Dx4b6AZGy7esSjIdU22iba$0nJlEluylVsYRv/7MwmVTSxr0XGw0Hiy3u7kvMg8fEs=	\N	f	79d269d9-713a-47ab-a189-b886c1ad6b20	Андрей		f	t	2021-12-16	shul_a@list.ru	79d269d9-713a-47ab-a189-b886c1ad6b20
1374	pbkdf2_sha256$260000$9tpCrpBMzKjORPB7rypL7i$RDY69CiDno0h14hoqb1wnf/u1Y04lAd4Yafx6esSb9A=	\N	f	a70d6aa1-1d1f-4a5a-a4f9-b969a33d8d28	Артем	Федин	f	t	2021-12-15	art_em333@mail.ru	a70d6aa1-1d1f-4a5a-a4f9-b969a33d8d28
1404	pbkdf2_sha256$260000$yQkmehXUEnXzsygf4QRuxP$LMOD7CpP8l/12/lnG04JeU8pis8ZljAqEz7HUwfqi7g=	\N	f	5fbd35a5-1cee-425f-a8f1-11c1e4581bb9	Юлия Семенова		f	t	2021-12-16	july@yandex.ru	5fbd35a5-1cee-425f-a8f1-11c1e4581bb9
1405	pbkdf2_sha256$260000$jCJQCB0ODW3EFnwp5pItgn$Jg10AGiakjn8siOT+PR+JAMdMP8KuoSrlDoPpCr1wg0=	\N	f	16d5e55e-44ae-4461-b937-daaf40f4d7ea	Людмила	Лаптева	f	t	2021-12-16	lobanova85@mail.ru	16d5e55e-44ae-4461-b937-daaf40f4d7ea
1406	pbkdf2_sha256$260000$hgIhWI15bmHLRIFPkc08lY$+sp6Xj4gJ9VpWYrn9K0cRwruqUCcqZXHYcjWaxUInOQ=	\N	f	6a3b898b-5aee-4bf7-88a9-2645b000ac12	Александр		f	t	2021-12-16	amderugin1988@gmail.com	6a3b898b-5aee-4bf7-88a9-2645b000ac12
1407	pbkdf2_sha256$260000$X1m6DjMa2Ddpk6n8irXFXl$dUbY8wvGPiTjkP3mk59QiSnQlG/LVNYKOp6ACdQ0QVw=	\N	f	c1de4b89-4a8d-41c7-8e62-7e72b3b3c29f	Юлия		f	t	2021-12-16	juliyamit@yandex.ru	c1de4b89-4a8d-41c7-8e62-7e72b3b3c29f
1408	pbkdf2_sha256$260000$hSFAgM2TXk87qOjfpXDrXZ$zc6WG9/862vRfZkteafZtryMftuc2gdqVPJIrr6rR2A=	\N	f	5329763d-ecca-4845-94cd-6c27d9d536b2	Дмитрий		f	t	2021-12-16	keibl1@yandex.ru	5329763d-ecca-4845-94cd-6c27d9d536b2
1409	pbkdf2_sha256$260000$rk5NfT4BHsDJFPKKrpTg4t$e7lc3Oo9saB6MvK3MLgFFpUA9jfSVvjmQXq6CZjq90o=	\N	f	635bcdf1-77dd-4bac-a35e-709e46e8b43c	Артур		f	t	2021-12-16	galimartur@yandex.ru	635bcdf1-77dd-4bac-a35e-709e46e8b43c
1410	pbkdf2_sha256$260000$ymvgksTTgBpTBiSG18JstU$bPeqOtCxmwsM2QcsKA/iAQJCgTQOfUh88fQJuK+0ahQ=	\N	f	67d2b1bf-b88c-471f-95e1-cab12526c028	Андрей Олейников		f	t	2021-12-16	kenworth@list.ru	67d2b1bf-b88c-471f-95e1-cab12526c028
1411	pbkdf2_sha256$260000$igwNG4r1yNVP7PeumzHpPq$Rke2jemG5S8Q56h21dHlUcsnYL+YjtPwxb+r5Jm0luk=	\N	f	72b706f8-2bbc-4247-b11e-281759f0f45e	Алексей		f	t	2021-12-16	amkazachkov@gmail.com	72b706f8-2bbc-4247-b11e-281759f0f45e
1412	pbkdf2_sha256$260000$TCYR0tuMqECtvn8SNoaxt4$58c0E6TMXPSZaC+rUpB3pR/LrnSmghnynLQP+egZ5i8=	\N	f	ac393ed1-fc01-41be-a082-caa08c7ce735	Женя		f	t	2021-12-16	nugpb@yandex.ru	ac393ed1-fc01-41be-a082-caa08c7ce735
1413	pbkdf2_sha256$260000$35coorQthnAh8tvPaXbtUI$fWAylj8ZqltxIOVvatqyHWC8EzrjF80Jl22kdvjpwwQ=	\N	f	b8899199-35ec-47ef-bd1e-0716e251520e	Данила		f	t	2021-12-16	rodyushka@gmail.com	b8899199-35ec-47ef-bd1e-0716e251520e
1414	pbkdf2_sha256$260000$osUtbCvOqDWEizsxuBH5xB$E1GmS1ppNFyNMZvvKGm/YchB6J3zEBux9ZOzpaWnGxg=	\N	f	246d29e7-33ae-4e7f-aa7b-56f042a21db4	Руслан		f	t	2021-12-16	rkuramshin@mail.ru	246d29e7-33ae-4e7f-aa7b-56f042a21db4
1416	pbkdf2_sha256$260000$4AIMZUWLB9Wqt3KR2EIfuT$Ny0jMKMr3kBY9OzBl7xPN+9y0kJJTfX267A8YaMRRxI=	\N	f	fcdeb0ba-7ab3-446c-abf5-9c5fe9102d5c	Кирилл		f	t	2021-12-16	syvorov.kirill@gmail.com	fcdeb0ba-7ab3-446c-abf5-9c5fe9102d5c
1417	pbkdf2_sha256$260000$xPV1TX0n8MQPIUmYL9TbNP$2VQI4z8WDJyf0F08AEYBxLwJPPfR40T7eYIZgjcj/8w=	\N	f	2a8b64d0-4764-4922-a790-f24fc407c31d	Алексей		f	t	2021-12-16	revs08@yandex.ru	2a8b64d0-4764-4922-a790-f24fc407c31d
1418	pbkdf2_sha256$260000$jF4MD61N5npCjds6myfEGu$cSduet8o1QAvJwB1DJKkaMyVr9U58HL8MnwFnfJZFUI=	\N	f	58ef8c31-1b9b-4716-983a-f38835b64c1d	Геннадий		f	t	2021-12-16	zanziko@mail.ru	58ef8c31-1b9b-4716-983a-f38835b64c1d
1419	pbkdf2_sha256$260000$SYBsnXsVaL1W7jHhBQGZEr$YalN/MHToEumm393gT9V6uB7gFD+iPMLz8sjxhnxzz0=	\N	f	0bab086f-0f83-4063-a908-51766a43870c	Екатерина		f	t	2021-12-16	beloborodova_eka@mail.ru	0bab086f-0f83-4063-a908-51766a43870c
1420	pbkdf2_sha256$260000$HiUTg5lpAKoXOjYVhTgtDj$OifG29EfXDIptLRiLM/bTzID+M2KDDSQ/IbhqyzqpVM=	\N	f	ecca53c2-49d6-4b45-a215-11d2910522cd	Александр		f	t	2021-12-16	bamletus@yahoo.com	ecca53c2-49d6-4b45-a215-11d2910522cd
1421	pbkdf2_sha256$260000$zKZVRk5mSaOWTjgplburVr$hkJF6Q70jcJlW5uDpohNZeFU4NJV8K7f3pSQ55j47ac=	\N	f	2f49c282-9986-4287-99cb-fc20e5ff3bbb	Салтанат		f	t	2021-12-16	saltanat.auyelbekova@gmail.com	2f49c282-9986-4287-99cb-fc20e5ff3bbb
1422	pbkdf2_sha256$260000$Ilmzc0BYw1ZV3PFTYwKlNB$92Y5CG10TU3Gjf64K0+R+3KO56U0M8uGAtW1zrX4zwQ=	\N	f	f43a59d6-47a9-47ff-81e8-a2eeb805b18e	Алексей		f	t	2021-12-16	dudko.v.aleksey@gmail.com	f43a59d6-47a9-47ff-81e8-a2eeb805b18e
1423	pbkdf2_sha256$260000$qEWj5wbQIf3VIjdbI0oDRf$uWuyP0g0gAaFCPoDdCgT/iEsl9owAu2srnaKnn5bgg4=	\N	f	00ddfd64-962e-4e0e-adf2-ed6f78e03e58	Евгений		f	t	2021-12-16	hohlov-g@mail.ru	00ddfd64-962e-4e0e-adf2-ed6f78e03e58
1424	pbkdf2_sha256$260000$pG4m9Ez4LrS4luOk3UYfEI$jpB4wGd7e/F2QhR5R6cmXK8YTE2cf0QZYPjJIFyfOMg=	\N	f	781825f2-c17e-4fb4-92d5-59d028b89b4d	Марина		f	t	2021-12-16	podobedmyu@gmail.com	781825f2-c17e-4fb4-92d5-59d028b89b4d
1425	pbkdf2_sha256$260000$sRNZzE9ni8SGBvVmh70np2$L31yXg5B7MHo9ql3K3zUrwgeLblx0BZ1JM7F7c1DClE=	\N	f	7ea3e3f3-32c0-46bc-bbc3-ffdbbb0a27a4	Станислав		f	t	2021-12-16	marvellavrysov@gmail.com	7ea3e3f3-32c0-46bc-bbc3-ffdbbb0a27a4
1426	pbkdf2_sha256$260000$cS4jCsKcihiKPHC2Q2sQzL$ZtNcwjAIiiyJn0NRAbTPUBKcuvshYDz+kKeGPJFazTE=	\N	f	ca873b4d-5c2d-489d-8579-45b10b0c946d	Георгий		f	t	2021-12-16	cotoman43@gmail.com	ca873b4d-5c2d-489d-8579-45b10b0c946d
1427	pbkdf2_sha256$260000$LDCpThj5mQHci6mohKYDzT$3FR71PkdFojVtoXJMwwK9i9vZDL7uu8876gTAOSq//Q=	\N	f	36ff5f87-7908-4544-af9e-5def5d6ab295	Эдгар		f	t	2021-12-16	sharifedgar7@gmail.com	36ff5f87-7908-4544-af9e-5def5d6ab295
1428	pbkdf2_sha256$260000$0ubIXOv9xx6ySnWOS9nTeR$d6Ej989+p+3q7o642u3w6FHqVmF7NBnd7IILHXdAh88=	\N	f	4c227d5b-bde1-45db-998e-7e6713c47d94	Малик		f	t	2021-12-16	za.maximus@mail.ru	4c227d5b-bde1-45db-998e-7e6713c47d94
1429	pbkdf2_sha256$260000$5Kej3ruFphKdIqF6D2nV4u$iGEFA9DG6KUbqy8F3MrmomQjJvvpdc9dA8WMSxdaxeE=	\N	f	0a313ad4-3421-4836-b160-419057e2daed	Татьяна		f	t	2021-12-16	strogaya_@rambler.ru	0a313ad4-3421-4836-b160-419057e2daed
1430	pbkdf2_sha256$260000$qUeDD5tQVguBahTW2AAynC$wvaf3kj7x10zOg1+zQOjfepDkoBn/E5kyGt3cQjkIE0=	\N	f	e78f8d52-5e5e-4902-b49c-8664c0182472	Ирина		f	t	2021-12-16	nugunija@gmail.com	e78f8d52-5e5e-4902-b49c-8664c0182472
1431	pbkdf2_sha256$260000$LnvpiJ10Z58BGketywv4vy$jiZvv2mW3akaXbkK/ZRsXGkcOsTwnivs16JdnPqDbf0=	\N	f	071430a1-2e9f-42ce-8a13-98b69b8a60c7	Юрий		f	t	2021-12-16	y.safonov74@bk.ru	071430a1-2e9f-42ce-8a13-98b69b8a60c7
1433	pbkdf2_sha256$260000$zuCGAjrbrdTkUvnQqtCTRp$iClIB/IjCH5WSF3johPHf0F4ozN5nHs6ap9ptp53W1w=	\N	f	933fac38-2f39-4812-b367-de7e06b6fb3e	Павел		f	t	2021-12-16	pashadvoretskoff@yandex.ru	933fac38-2f39-4812-b367-de7e06b6fb3e
1434	pbkdf2_sha256$260000$MPoP5RBtlmMenpDhNv7omI$Wv+6RmDvWZ251t8v58a6BVTpblYYu8+LQMB17tMOJjk=	\N	f	b6ae5bf3-0323-4b36-9668-fae609dd2159	Синди		f	t	2021-12-16	cindy.avdeeva@gmail.com	b6ae5bf3-0323-4b36-9668-fae609dd2159
87	pbkdf2_sha256$260000$w3tcPrOra9k0iw2Inxmi8X$ZBkNoc6JTSur7D8xyOLEk+OaavJdPU40FE2RPY7Ekfc=	\N	f	968becb8-14fc-4a37-8682-b7d2f15c6431	Андрей		f	t	2021-12-13	mad08199708@gmail.com	968becb8-14fc-4a37-8682-b7d2f15c6431
1435	pbkdf2_sha256$260000$JFHPAZb0X104UbLAM3AxIe$PRVdthHg4r/h7zP/l6036Ulh9dyaiQWUZWYlS0yU7mc=	\N	f	a7310782-f3d7-476f-b40d-778e930cb5d7	Сергей		f	t	2021-12-16	sergey-roshka@mail.ru	a7310782-f3d7-476f-b40d-778e930cb5d7
1436	pbkdf2_sha256$260000$3adGSXXSshhdbfMobKZxEC$NgbgW9yjX8vcZ/3R2gej1qy3Y/uiaLUheohMUyf79l0=	\N	f	7987b4b8-c5f2-415a-a231-94af76e79873	Михаил		f	t	2021-12-16	mike-lk@yandex.ru	7987b4b8-c5f2-415a-a231-94af76e79873
1437	pbkdf2_sha256$260000$2cRiw1S67qnrzA0q9XK6Yg$Md2CEDdRr/+s9qlNFNWgnc4apk0EJ2ygZIUq+5gVQQY=	\N	f	a77be397-d79b-436c-b459-79848c7c8cee	Дмитрий		f	t	2021-12-16	megalover1@yandex.ru	a77be397-d79b-436c-b459-79848c7c8cee
1438	pbkdf2_sha256$260000$NTBYIUmEEmniFrJBqT2vnp$TEtsfIN0UaCZ9GibTmWIIRAyAwLGcD1PZyCupMYlJYA=	\N	f	6ef98dca-c287-406b-9e77-f91ed4235534	Андрей		f	t	2021-12-16	an-o-90@mail.ru	6ef98dca-c287-406b-9e77-f91ed4235534
1441	pbkdf2_sha256$260000$OIAhjnrqYqzYJpAMn2axlL$Kj9Wla9u3wmPiGRa02E3W/JLsB28h3LrjiLcN8mVh5s=	\N	f	231b2815-a3d9-47ee-a3e6-1e8fa9e830aa	Андрей		f	t	2021-12-17	ibec31337@gmail.com	231b2815-a3d9-47ee-a3e6-1e8fa9e830aa
1444	pbkdf2_sha256$260000$mFP8xvqIh5Imq2gEWY09Yg$P8vWrnG1U500uhOQsNjow/LMKfaA9SJMIARX/Kai5z4=	\N	f	d8905d6a-00e3-4779-bf7a-d3e5fb25f503	Лазченко Оксана		f	t	2021-12-17	lazchenko.ok@yandex.ru	d8905d6a-00e3-4779-bf7a-d3e5fb25f503
1445	pbkdf2_sha256$260000$antKua9lwvXPayjEnhTHby$UpqXlI+WGL9/TJZWlzycUGnyVxZLqpR7hN/ihDWqTgk=	\N	f	c3465011-14ff-4b71-9d74-7788bca232a7	Владислав		f	t	2021-12-17	vbuzinskij26@gmail.com	c3465011-14ff-4b71-9d74-7788bca232a7
1446	pbkdf2_sha256$260000$uEvmWpFTm3vTFP7jOwYwc4$3JL4BxE0zeJy6KXxcVWd0XjlwGIvyD7q/yRJ7wRng04=	\N	f	970ef919-aad0-41d4-91f9-36262e886ed3	Илья		f	t	2021-12-17	im.fomin@yandex.ru	970ef919-aad0-41d4-91f9-36262e886ed3
1448	pbkdf2_sha256$260000$ENC0L7OgieVcQCHQjJtwjP$W68cb6TP+qfAZKUPiGIsoTQDVb4FpJmJGedaxyHKvVU=	\N	f	a6153d6c-bfc9-41cd-8399-92021fdca5b9	Irina Safronova		f	t	2021-12-17	irasaf2012@gmail.com	a6153d6c-bfc9-41cd-8399-92021fdca5b9
1449	pbkdf2_sha256$260000$Dx7v0Jys3ADUNchRZA4lPb$bpwpmBih2L838P6Bi/BgqJh0wcwhH+jcJx7lwoI2dTo=	\N	f	82f0d4fe-511e-41a6-a6c1-a28f9d09b0f9	Роман		f	t	2021-12-17	roman_si@mail.ru	82f0d4fe-511e-41a6-a6c1-a28f9d09b0f9
1450	pbkdf2_sha256$260000$0J1P9lPulNN0wKU7dxXuKt$0kuILVpOX16I35/IiQU9W1osl9pZTEqLYrm8pfP6Lv4=	\N	f	b0198ca7-4ca5-4b03-8929-2c92567712d1	Эльнар		f	t	2021-12-17	gafurzyanov91@gmail.com	b0198ca7-4ca5-4b03-8929-2c92567712d1
1451	pbkdf2_sha256$260000$weaO39sPViXkaMD0fHQ4qi$f+w7yhxGqHCCxym0jJKPE9Tr8zvkUr4y3DCxsaZT28Y=	\N	f	765c63e7-3392-4ded-a608-740e2da160b9	Olga Ivanova		f	t	2021-12-17	shizandrin@gmail.com	765c63e7-3392-4ded-a608-740e2da160b9
1452	pbkdf2_sha256$260000$5w7Ydqs0Xosdm7W3IUzNRI$dyocsI9FVx49Ed3ihVDDFc0Xpy8OOUuTc/h8U2iKI+0=	\N	f	357f927d-df6b-406c-9f15-0d86cb056b03	Вячеслав		f	t	2021-12-17	nabvd@rambler.ru	357f927d-df6b-406c-9f15-0d86cb056b03
1453	pbkdf2_sha256$260000$5d4H13cqEheD96jvSwj4io$gSDNfdbqNb9jCcd0i2I74wqo4XracjVyMRB2vQxIvj8=	\N	f	36fc19f3-3a24-4f96-9bea-299d2b43c701	Павел		f	t	2021-12-17	pavel3431@yandex.ru	36fc19f3-3a24-4f96-9bea-299d2b43c701
1455	pbkdf2_sha256$260000$RZmAhT4rvi5X0bw9myCvkf$MTK6Qi55dTRc0b2tax3whVG7ExnTVV0VWDySXiQTRIU=	\N	f	fe66de5c-2bda-43ed-b3b1-4b32131531df	Сергей		f	t	2021-12-17	slador@mail.ru	fe66de5c-2bda-43ed-b3b1-4b32131531df
1456	pbkdf2_sha256$260000$wHzl0mR2KuVvjqCdyLlgbU$5teGYgE/G4sZEuBi5rsHJl9KHYwiGDwA1o6o2nD/KkE=	\N	f	7b4d1d6e-b28b-4b88-b745-397667af433b	Сергей	Макаров	f	t	2021-12-17	makarovserser@gmail.com	7b4d1d6e-b28b-4b88-b745-397667af433b
1457	pbkdf2_sha256$260000$BnnR5VEAMx3Kf058ECoRGc$5KVwH9S+PmndPlXwEgpaflv8OOUAdBKqRGtEjBTKLDQ=	\N	f	b0f50deb-62f0-4032-a8d1-54002c88421f			f	t	2021-12-17	mobiusguitarist@yandex.ru	b0f50deb-62f0-4032-a8d1-54002c88421f
1458	pbkdf2_sha256$260000$6ATi4n0cBaczXIsWywgN8v$I75mMdYtlMW7d05KvBsPGDDgyqye7tJAV6gp+Y1FefY=	\N	f	8aac6fbd-af5d-4bce-aee7-685605b11ce3			f	t	2021-12-17	olesya.era@yandex.ru	8aac6fbd-af5d-4bce-aee7-685605b11ce3
1459	pbkdf2_sha256$260000$pkDszA1F3fw2zvJRixFxTY$C1K9u4UX4Mw31DHtmgMHnZMdf8om0RMbbSfhYzgBuMc=	\N	f	eea6abe7-2167-4231-8925-1af1bf6a4cca			f	t	2021-12-17	robhui@yandex.ru	eea6abe7-2167-4231-8925-1af1bf6a4cca
1460	pbkdf2_sha256$260000$PgD0NYlngE4MEklu1d4mmW$EMMGf/vvZvSZJKtm0+LjfHlD4iO8AeKkq5MB3Dbws6I=	\N	f	21261b29-fd23-4acb-82b1-434f1f547b3a			f	t	2021-12-17	viktoriia-matvienko@yandex.ru	21261b29-fd23-4acb-82b1-434f1f547b3a
1461	pbkdf2_sha256$260000$ejROWvl2aFBkdpwT7ajGEz$LeMaPmsVULs12mwCifzoLZu6ua/2EOPaGf18aeIALdA=	\N	f	b0ec621d-b0ae-4e52-b618-fea6ffd53b0c	Юлия	Видонкина	f	t	2021-12-17	julli-83@mail.ru	b0ec621d-b0ae-4e52-b618-fea6ffd53b0c
1463	pbkdf2_sha256$260000$PXEDxOqiIOqty8uHhipJl2$JM6PDmNtYxEBp1wfO+ZLpT4vwvG749VPsKwdvvY7sTg=	\N	f	b2cdd100-64d3-4bd8-9b4e-cea8c31d0ba5	Артур	Исхаков	f	t	2021-12-17	jetstreamarthur@gmail.com	b2cdd100-64d3-4bd8-9b4e-cea8c31d0ba5
1581	pbkdf2_sha256$260000$2mDjUW5yoMHXFLmKfJ9VvO$pds74YjFm/7GxrvN5NSPyxDyt2NcdGnAVk7Uc+9396k=	\N	f	74a648c2-d160-4d77-be95-0ebcbc5fe410	Павел		f	t	2021-12-17	pavel.hramcov@mail.ru	74a648c2-d160-4d77-be95-0ebcbc5fe410
1447	pbkdf2_sha256$260000$cJfh6ff8KX7jSieWwXeNAT$DfEXizv0LkqNloCnDQQdydaB03YAG83vsYU9R62MnQo=	\N	f	bac6ecdf-3173-4819-a225-d53d5b9e4aa9	Алексей	Куликов	f	t	2021-12-17	klw.alex@gmail.com	bac6ecdf-3173-4819-a225-d53d5b9e4aa9
1464	pbkdf2_sha256$260000$ME4VbyuIDO1dt5WkneMlfW$BTFQ3BwrjqyDj3o8EreK3fhaU/DrgKlfvgRBq32CZrs=	\N	f	223b9616-80d0-4e1d-b09e-ae607cad4f21	Анастасия		f	t	2021-12-17	nika_inbox@mail.ru	223b9616-80d0-4e1d-b09e-ae607cad4f21
1462	pbkdf2_sha256$260000$4LliH7hYB8Jlue0uuU9gfr$J9jgv0tOqkqkX2uzV2miDFZjGOOlMzJEQ4mYYovSx1c=	\N	f	3bfeaf8c-a66c-45c7-8220-3241c5ef9351	Дима Кулик		f	t	2021-12-17	mitya.kulik@bk.ru	3bfeaf8c-a66c-45c7-8220-3241c5ef9351
1454	pbkdf2_sha256$260000$T6Jor9xiiin9wS0wNJAlLz$AJ3EaOQE9mZUUlt0B7eCVkTZ0dQ17bG+1rZkNOhKLws=	\N	f	d0c37827-6357-46f2-9583-1c10c68dcb52	Дмитрий		f	t	2021-12-17	orlan-starcity@mail.ru	d0c37827-6357-46f2-9583-1c10c68dcb52
1440	pbkdf2_sha256$260000$nZoRQK8Vo8ES1yufRXu8bd$+ZB7qnGITJwMo2shU74rMWl/w1myMv0up6jbp5w6LWE=	\N	f	26a6135e-eeeb-4b0d-a2a8-2ae41bd89f11	Сергей		f	t	2021-12-17	infa.mail@bk.ru	26a6135e-eeeb-4b0d-a2a8-2ae41bd89f11
1442	pbkdf2_sha256$260000$trtKVcBKsHf7U8281knIiT$Kbf9t5QgdCaJbOWEokjp/AgUQsB8GxcoI8t9aQRVqT0=	\N	f	1ac059d5-f1c9-48a0-8824-d1d4c036cf71	Юлия		f	t	2021-12-17	trottt232@gmail.com	1ac059d5-f1c9-48a0-8824-d1d4c036cf71
88	pbkdf2_sha256$260000$h7cknYxklUfKqtLtZ1WQRa$rftb60RfctaNEKn84UZCpFrxRzoGhDjIyGO5B2nwKYs=	\N	f	6cf64709-52b4-4d60-9bc6-ecfeca39197f	Дмитрий	Федотов	f	t	2021-12-13	torpory@gmail.com	6cf64709-52b4-4d60-9bc6-ecfeca39197f
89	pbkdf2_sha256$260000$ljcRblYgM4Le4GwNQwyg7A$XX6D3qDsZbnq4sTLY4rNXIRcQUeoeu+IyXE4TFgZn3Y=	\N	f	b619c14b-a763-4cb5-b71b-9ed70554b7aa	Karim		f	t	2021-12-13	kuramshim58@gmail.com	b619c14b-a763-4cb5-b71b-9ed70554b7aa
90	pbkdf2_sha256$260000$S5KY19VadQEnny170Ylum3$dQFS4oZ0SN7wwAZOXYKjDuY6c/150df/S9LCHayXTC8=	\N	f	2afc98d2-d146-4fb1-b52c-f573c1601b1c	Gleb Rebriev		f	t	2021-12-13	gotphri@gmail.com	2afc98d2-d146-4fb1-b52c-f573c1601b1c
953	pbkdf2_sha256$260000$uUjGSjMk3xXWvEZhclKA3Y$HUO5jzNBuTUo4KbmuUJDMpbVIYEN0KrPGK4lWeUwGxg=	\N	f	62c9e2d1-12cc-4e0b-b3e0-129f631c99e5	Дмитрий	Митяев	f	t	2021-12-14	mityayev23@list.ru	62c9e2d1-12cc-4e0b-b3e0-129f631c99e5
1365	pbkdf2_sha256$260000$LbqvmhITgV4PRtSmW6eiux$R3XXo6TOH4ZmmGMHiBZOt98neUDMf1GrsKyK3ul+F+Y=	\N	f	8217c5da-78b8-4bc2-956b-ba09ccb71ee0	Алина	Бог	f	t	2021-12-15	albogomolova1@gmail.com	8217c5da-78b8-4bc2-956b-ba09ccb71ee0
1627	pbkdf2_sha256$260000$vT87bfeyMEfcU567hIJNdL$KVpcl/9f9UlaruYpnt9uNHE/6q1r9rhXkIKcYzhWOdg=	\N	f	7ffe714f-9912-4c3b-8386-a4648949dff4	Максим	Барбарисов	f	t	2021-12-19	maksim.barbarisov@gmail.com	7ffe714f-9912-4c3b-8386-a4648949dff4
1659	pbkdf2_sha256$260000$Cno9ewX3abDEav6EFJjqSG$cZ0ypioR0/M4JZ9HAcY20Nx2ZT6rhwu9Frm+oNmABRI=	\N	f	5af0ddf3-2d2e-4f19-89dc-697b59772b36	Надежда		f	t	2021-12-19	nadezhda_simanov@mail.ru	5af0ddf3-2d2e-4f19-89dc-697b59772b36
1707	pbkdf2_sha256$260000$TikuXNUKGkNJ2FLaV2QCoM$N8GiWYUJ7kjhj7fiA9wMG/wz8gH+ojMdKvGF1+jrhWc=	\N	f	d10398bf-45d7-417e-b7c8-8b88926ffd58	Кирилл		f	t	2021-12-20	kirillsamoylov88@gmail.com	d10398bf-45d7-417e-b7c8-8b88926ffd58
1758	pbkdf2_sha256$260000$SUR1wqztILqRbmQssQhOfH$uwvxjGGbATqFMrxKWqWzc+btpuVcuXzSl3ZrVFsv3AM=	\N	f	30eb3cda-be71-4fcd-a335-f569d409d3d4	Айгуль		f	t	2021-12-20	aigul.karabaeva84@gmail.com	30eb3cda-be71-4fcd-a335-f569d409d3d4
1803	pbkdf2_sha256$260000$3wFrfBj9KvxRgbw4ctL4nN$TDp3WUHbivyu2ojntkCZCXl10AQhiF03bF7SRRablBQ=	\N	f	44f760b5-8d77-4f42-9018-3ac8522a96e6	Дмитрий		f	t	2021-12-21	dmitrysuganov89@mail.ru	44f760b5-8d77-4f42-9018-3ac8522a96e6
115	pbkdf2_sha256$260000$YWQMydBxBSCtLFC3vo3IX4$vMUNWsxPu1Y8tnVn0SNAN5UT3Y0E+0Vh2/h1eTFj6s8=	\N	f	c713a63c-e89c-4d8f-8aee-26d5ee7f40b1	Григорий		f	t	2021-12-13	grigori73@gmail.com	c713a63c-e89c-4d8f-8aee-26d5ee7f40b1
116	pbkdf2_sha256$260000$Xuc10x3NsMcLJwW4ODjham$F0xNxn7eBHYd5KQqiUn4sYIKvgYRRJSRMupFR5U2rLk=	\N	f	41e98cce-13bf-47e2-9be5-6a1bb3bf900f	Андрей		f	t	2021-12-13	andyshas@yandex.ru	41e98cce-13bf-47e2-9be5-6a1bb3bf900f
117	pbkdf2_sha256$260000$NbV4Th9aSuDKbAUHRRT5zx$2sXf803gkSL1U2yUiVuVM6Xx0vP3UdeLrZQXTmnMEz4=	\N	f	9d6e1d99-b259-46bc-b9b3-538f88e1e14a	Leonid Kulikov		f	t	2021-12-13	leonid.kulikovtf@gmail.com	9d6e1d99-b259-46bc-b9b3-538f88e1e14a
1628	pbkdf2_sha256$260000$HaIH95rl5J5qUk6VED4SDI$Q59DU3TJjS4oCm04IuPTtKzOkmlFbQUv5149acluriY=	\N	f	88196a0b-5f32-459b-85cf-2ab339f01e1b	Сергей	Темриев	f	t	2021-12-19	stemriev@yandex.ru	88196a0b-5f32-459b-85cf-2ab339f01e1b
119	pbkdf2_sha256$260000$k2rS0xa81mgX1zTWCz72Sl$tOVTiYnkp1sSeDnmPLfqN+R+7ozHHYXN/Vv/b2UvL8Q=	\N	f	c14d4242-bb42-4733-a277-b7c77bfa376e	Елена		f	t	2021-12-13	ezaitseva@gmail.com	c14d4242-bb42-4733-a277-b7c77bfa376e
1306	pbkdf2_sha256$260000$ztxUUJJOcZ4ZjkBMCGEHHR$RG+fsS/XLeVM3T+r5hDRO8vObL33SehKo6MqAtjTs0U=	\N	f	23ce7c4c-78f7-4146-9909-d457e23cd527	Алексей	Ермолаев	f	t	2021-12-15	lexaermolaev5@gmail.com	23ce7c4c-78f7-4146-9909-d457e23cd527
1439	pbkdf2_sha256$260000$kTNomnr47jAcnQTTRHrNac$gjs0jRn0wPIhe/EHiHcKELqUDs/UHnzt51kLLACDw8s=	\N	f	e4f4eb86-209b-4d15-8e67-8ff73cc17616	Ильшат		f	t	2021-12-17	ilshatej5@mail.ru	e4f4eb86-209b-4d15-8e67-8ff73cc17616
1804	pbkdf2_sha256$260000$6PVoTjnoKXRYGGUl64ZVOY$HtA7+zh9xwKHFNFBbQrgx0wpzu4kI07HOXfEipE7VYg=	\N	f	8c2ca3cd-0090-4d06-a4c7-7cbff1f3f445	Евгений		f	t	2021-12-22	tev15@list.ru	8c2ca3cd-0090-4d06-a4c7-7cbff1f3f445
118	pbkdf2_sha256$260000$NbXRjXlIc87NcSwqFlFNnC$2CzJvWvQbM5ucWnEyuIAD9sTcykvLTmYmwpQzCWx2ZM=	\N	f	39234b90-5b69-433a-b52e-aac541e4e8cf	Андрей		f	t	2021-12-13	12neorus12@inbox.ru	39234b90-5b69-433a-b52e-aac541e4e8cf
1660	pbkdf2_sha256$260000$xofuOGSCqVL4j7UPImFZlt$YJjIz/j1ZZoonUTpRfJZbEz9Y3A1WqrzEsjyyWefohQ=	\N	f	7fe76b8d-2282-47da-8860-6315d357645c	Дмитрий		f	t	2021-12-19	dmitrij-ko@mail.ru	7fe76b8d-2282-47da-8860-6315d357645c
1708	pbkdf2_sha256$260000$F3mYZUGp72i5My0jZI9Q5Z$jESxd08lCRPlWQkVM8AMvdMKbaOaB0o6H71mKppH/aQ=	\N	f	06661904-5f68-44df-970b-f03c8624a384	Arsen		f	t	2021-12-20	arsen.gazaryan.2015@mail.ru	06661904-5f68-44df-970b-f03c8624a384
1759	pbkdf2_sha256$260000$rD7fgI7SsDKrS9DuWW9q99$HMJ0jbKDUyflKegoPZk4+ogZYl8xxNz+J/3h4RUbDiw=	\N	f	dd725747-3d01-43ed-b92d-f4d2bf962d9a	Александр		f	t	2021-12-20	alex7858@mail.ru	dd725747-3d01-43ed-b92d-f4d2bf962d9a
142	pbkdf2_sha256$260000$9irS5ISyoJs6OWoWRaPPHA$tXNa02JKd5s+EGkdXIGRCD+hM+50DqndwNrcxg41RIM=	\N	f	489a9070-33b9-483d-8bb1-210dbd4116a3	Сергей		f	t	2021-12-13	serega140782@mail.ru	489a9070-33b9-483d-8bb1-210dbd4116a3
143	pbkdf2_sha256$260000$5MrUgEpL1aoRyPMuBa0OIb$jofy0EGXGRzXcn+wlqxBOcKldFlxyKmYN61VwIz0HLA=	\N	f	02d10f89-36fc-4ee7-8163-2e6bf16507b9	Светлана		f	t	2021-12-13	kolonda@mail.ru	02d10f89-36fc-4ee7-8163-2e6bf16507b9
144	pbkdf2_sha256$260000$8LtPTIEyTORcJIpbEHlkvh$30GJ/JdFz3FMGa5IcTNJ53pZoEgvaLcjK+dmf17v41s=	\N	f	a6786abd-2e0d-4326-b173-ec8fb581b49c	Станислав		f	t	2021-12-13	stas.yashnikov@mail.ru	a6786abd-2e0d-4326-b173-ec8fb581b49c
145	pbkdf2_sha256$260000$XFjuSqNP4sulhznKvegv5i$dgDl9n3upIw72oTkbFsUZBnHjzcr/FVkuv1QJFP0h88=	\N	f	b3965097-d4fa-428b-96bc-a5902f08d064	Семён		f	t	2021-12-13	mele4enkovsemen@mail.ru	b3965097-d4fa-428b-96bc-a5902f08d064
1582	pbkdf2_sha256$260000$SMBumFsfvz15sidPtkArH8$WwhikXih6s0J9vNJRLwZZKP+fLOK4Q6BhOlajamFKuU=	\N	f	7e0a4227-69ec-4af2-99b3-11ac0c6662e7	Василий Коптяев		f	t	2021-12-17	cattanni@yandex.ru	7e0a4227-69ec-4af2-99b3-11ac0c6662e7
1629	pbkdf2_sha256$260000$1VVYwC2nLl7AgJn3g6rlw4$j5UqOAvoBXFgO5pLeu4InqcZNMjxvMwQ0x8FjPkbuEg=	\N	f	a2fa23d6-ff84-4451-b1a4-7b96892a26ee	Иван		f	t	2021-12-19	super.mad-10@yandex.ru	a2fa23d6-ff84-4451-b1a4-7b96892a26ee
1661	pbkdf2_sha256$260000$EFW6poer6xA9uDdEvm4ABx$nH0rMIKacps+mOih3K+K5enoYuTBlTFPPt72aggj24Q=	\N	f	8f03027a-2ea3-4acc-af68-4c4deb55a09f	Даниил	иванов	f	t	2021-12-19	daniil_ivanov_pr@mail.ru	8f03027a-2ea3-4acc-af68-4c4deb55a09f
1588	pbkdf2_sha256$260000$VL6msrCK3t9cSFLQwC6QzN$takNsbtxlhmuTppFRvlH4Wd/hwRXaKquWH2YZwNGDVE=	\N	f	d328718d-19a6-454a-8c0e-00bb851fe1e3	Андрей		f	t	2021-12-17	a9202910888@mail.ru	d328718d-19a6-454a-8c0e-00bb851fe1e3
1709	pbkdf2_sha256$260000$RIPBpWqoxFf5LTPvywb9j9$ohVzNOwB7HKpCqwcbghbIJw5lH4BfV6y9yTYeHxVKZA=	\N	f	edd59b6a-1318-4f63-ace2-2850505c5316	Евгений		f	t	2021-12-20	seugene@mail.ru	edd59b6a-1318-4f63-ace2-2850505c5316
1760	pbkdf2_sha256$260000$455Zu6kMnVIR2UU73Y5EUo$SUwlVTEG2kdoR9F3llKg3aop5GcOp/sdRZTXfj9koWM=	\N	f	62dbe7d7-9879-400e-9a2e-3d8e6a89f1a9	Петр		f	t	2021-12-20	bol-petr@yandex.ru	62dbe7d7-9879-400e-9a2e-3d8e6a89f1a9
1805	pbkdf2_sha256$260000$zTVxqjZS62FftSHsCYSb00$VT3XFBhhuQTtoXvDWWdDhE5AFWVL6Hv6nz445shJ17c=	\N	f	39c0c83d-c9ab-4df5-8aff-9eb6c03a01d5	Егор		f	t	2021-12-22	iegor627@gmail.com	39c0c83d-c9ab-4df5-8aff-9eb6c03a01d5
170	pbkdf2_sha256$260000$aeaoh20tpgz5T574rucjc1$68Ktjl5q5XsiBYK5u/tCUstP8ZZ7G7eT7IhhHQbKPIc=	\N	f	796d843a-6a31-4bb8-af4c-84d843e7291c	Максим		f	t	2021-12-13	chusmaksimus@mail.ru	796d843a-6a31-4bb8-af4c-84d843e7291c
171	pbkdf2_sha256$260000$W9Mu48vYL4LTy6jVbyYyzg$cuksGaS8TqWMn9oX4Kd/5ac7cPmZOTYo+viZWjHGD8A=	\N	f	90b6e08d-992e-4246-a912-0af1847ad3eb	Юлия		f	t	2021-12-13	6290@mail.ru	90b6e08d-992e-4246-a912-0af1847ad3eb
172	pbkdf2_sha256$260000$7nKkotAeQV5L5l7czlVYkL$sCLEVAOzKOfjihhLh7SVznUjkRkUlDfSI5N8tnzUCbU=	\N	f	d319809f-1cbb-47ca-b7f4-8700f2ac0e73	Дарья		f	t	2021-12-13	d.a.kochetkova@mail.ru	d319809f-1cbb-47ca-b7f4-8700f2ac0e73
173	pbkdf2_sha256$260000$Ivq8yqWYDyLqcIa8Yubha6$Qksm54I8Geh1TwHZPyDqa9jYEeVxrmbeTgaMcT6lJto=	\N	f	c903280b-9484-4f62-9081-0f83f74c8b4a	Денис		f	t	2021-12-13	kazarkin.denis@yandex.ru	c903280b-9484-4f62-9081-0f83f74c8b4a
100	pbkdf2_sha256$260000$xLVa54RoDyrvEgyNaueEml$PhIreGnOjj4qPHqgC9aGW3/C23UU8hdLiaSaNIY7zsw=	\N	f	3051b36c-5af2-4c60-b475-0d6c5f6f8ce0	Сергей		f	t	2021-12-13	sever_detal@mail.ru	3051b36c-5af2-4c60-b475-0d6c5f6f8ce0
1630	pbkdf2_sha256$260000$9xjoNkRafGOyTSQ0OeSOMy$Ap9KQqyw+7EY6TUjg4drhMTapGLIkcCCTbmmv5IWNKw=	\N	f	5c86f808-4bb8-4260-bf9e-1117d2371a00	Игорь		f	t	2021-12-19	ameron@list.ru	5c86f808-4bb8-4260-bf9e-1117d2371a00
1662	pbkdf2_sha256$260000$oAOg0RstHztnh8z98o6YyN$6SIF9+2zWcg/8qvasJJsEHMZpl+kB0fZSo+L1W8/G+E=	\N	f	863407c0-0423-4fb8-9594-0826bef8374f	Сергей		f	t	2021-12-19	poge.strage@mail.ru	863407c0-0423-4fb8-9594-0826bef8374f
1583	pbkdf2_sha256$260000$Uj1EoDOBcFXbxdF3L84bhG$OKA7RIBZABKZeWWjoueqBXJAokEgTgAsPh+644LL7PY=	\N	f	d20dd816-072c-4af1-8abc-5bcebc1b5e75	Артур		f	t	2021-12-17	awesomeorange@mail.ru	d20dd816-072c-4af1-8abc-5bcebc1b5e75
1710	pbkdf2_sha256$260000$6vmgawZCmDet9d3c9LE4qb$++cAgiylhI4K2/+ScTZQrC3WKBjtFqmB3sAQnRr58jM=	\N	f	713cc740-c342-4096-91eb-f556e9bf3f37	Виктор		f	t	2021-12-20	avilov-89@mail.ru	713cc740-c342-4096-91eb-f556e9bf3f37
1761	pbkdf2_sha256$260000$eBSPwVDEAONEp7EoNHXpPj$KvyCVzeYQ5nFjN8MhSINSKDywNskgNZaPH+PN7NGWhM=	\N	f	3fcb1378-ff8d-4af9-be1c-913dc0c3be3b	Олег Демянишин		f	t	2021-12-20	yourvision1991@gmail.com	3fcb1378-ff8d-4af9-be1c-913dc0c3be3b
1806	pbkdf2_sha256$260000$In4mYr6qiIfQ2IPn0JauHk$sA4O7bDHDjDA4QZ9F18TDT6dPBFYbqS3cVq0v4xKfW0=	\N	f	845479d2-2617-425a-8602-1d3765ada75b	Mikhail		f	t	2021-12-22	kirassirov@gmail.com	845479d2-2617-425a-8602-1d3765ada75b
199	pbkdf2_sha256$260000$dntu9Q0oFGnOB8gTyMx2y8$YRqnCGgtRTThCK79Wity9anRSbqlAGkXa+o09AAXUVI=	\N	f	547ee12f-1859-4cbb-aa08-b26620a92852	Николай		f	t	2021-12-13	nkedrus@gmail.com	547ee12f-1859-4cbb-aa08-b26620a92852
200	pbkdf2_sha256$260000$u1ZfYUDGjCkiLv9ttVMOPF$UMvUzKALG3wa3ht6t9+u90XUrlCDnCoOumEVeZ5JYN0=	\N	f	800cf6a5-8cd7-4452-9780-d1e8881648d2	Сергей		f	t	2021-12-13	krypton21@yandex.ru	800cf6a5-8cd7-4452-9780-d1e8881648d2
201	pbkdf2_sha256$260000$V62UBx4gryQY42iZKTm6lN$KZ3EJmfQi+d6u0/iTJJACy7smoybiCMcJVWD++GuyQU=	\N	f	a98745ec-6399-412f-bb90-5f36e99c3928	Роман		f	t	2021-12-13	romsimak@gmail.com	a98745ec-6399-412f-bb90-5f36e99c3928
202	pbkdf2_sha256$260000$p1sPHLoFlLKll84aUCoHuv$98GtkpJJn3LEf9/iNWas9s9fgRI6BrEUumRZJYMeTZc=	\N	f	c41a7a28-b613-45ca-a896-06763aed3654	Максим		f	t	2021-12-13	maxrem714@gmail.com	c41a7a28-b613-45ca-a896-06763aed3654
1584	pbkdf2_sha256$260000$7infRgSP5DWDrTkqmrrl66$2mTU5yW91NbEQjHVnlzrr5lmowddM/5BTzQpPzqtyWk=	\N	f	b61dc260-4a8a-414b-a9c2-7ffa22626189	Федор		f	t	2021-12-17	melnikey@bk.ru	b61dc260-4a8a-414b-a9c2-7ffa22626189
1132	pbkdf2_sha256$260000$4yD5spn6ac7Acta756DxtE$Ireamp4c+X3XYKLej4lcZSf4kXB+6fKVkEmduJmZDB0=	\N	f	41498bb2-7915-4e84-ba7d-7d319e31f5f4	Виталий		f	t	2021-12-14	afanasyev.08.10@gmail.com	41498bb2-7915-4e84-ba7d-7d319e31f5f4
1631	pbkdf2_sha256$260000$AfmxD0WXfaTquRNQZtltTN$/XIVdVMFZnMiel4+jqalF2uEF1XLBJLgJy0RO2+3v4c=	\N	f	4f2c43f7-7be1-4096-8c9c-92ed780dbea6	Зоя		f	t	2021-12-19	alfazoya@gmail.com	4f2c43f7-7be1-4096-8c9c-92ed780dbea6
1663	pbkdf2_sha256$260000$lgLUkBb2k4JgLEg64HfFzk$Bbqe8ZuD1v3WRiOGxNkMsAjA+BT2Mqm668SOGM/lAjA=	\N	f	c542cd9f-c0e4-4f58-b020-71edf429aaac	OXANA	SEMEDO	f	t	2021-12-19	ovgs86@gmail.com	c542cd9f-c0e4-4f58-b020-71edf429aaac
1711	pbkdf2_sha256$260000$bEdL7VuYJR7M3iVDCeKMck$bhmnqGCYtmusOJh3BV3PNXdzaOfVl0MELigQFvuHdRA=	\N	f	a0e5b365-fac1-400e-a6ee-53a4ef3dfa8b	Oksana		f	t	2021-12-20	ocsana9@hotmail.com	a0e5b365-fac1-400e-a6ee-53a4ef3dfa8b
1762	pbkdf2_sha256$260000$9Bljf24efVubL0QA06aJvo$vcIvXGF6BIAonFEEzSSfn66Bi8mD6U/Bh3//LO01WFU=	\N	f	bb6a74bc-62d5-4f34-87b8-2834871b91c7	Malika Erkenova		f	t	2021-12-20	e_malika@mail.ru	bb6a74bc-62d5-4f34-87b8-2834871b91c7
1807	pbkdf2_sha256$260000$Kx1zYTJboZaKUe1EZPJfMU$ldvHANXj8WSt5a+Aeks9LLPjr2KMzqlyEa8rCpFISVU=	\N	f	a87950d8-3e6a-49f1-a4fa-b6c289ee278b	Константин		f	t	2021-12-22	queenskillavt@gmail.com	a87950d8-3e6a-49f1-a4fa-b6c289ee278b
227	pbkdf2_sha256$260000$9wdQSW40Z3lGoopHa5sckJ$AEq7I/aiDJn08htaVwCv0Dk0PQHaDa4E2ixBuN07uh0=	\N	f	0949c739-75d0-4e79-9b05-10819fa8ed40	Alex Gera		f	t	2021-12-13	thuglifestyle@mail.ru	0949c739-75d0-4e79-9b05-10819fa8ed40
229	pbkdf2_sha256$260000$EKNjFK0ARO19mXtLctkgYW$9TqPXtMQkQ+5A2LyieuYQbv/+jw7UwD9yjmIXeG1xC4=	\N	f	75e56c95-bd2c-48ca-ae54-05b11bad225c	Александр		f	t	2021-12-13	kchndr@yandex.ru	75e56c95-bd2c-48ca-ae54-05b11bad225c
230	pbkdf2_sha256$260000$qCul3rk39b264i2ZGJSUmv$qQKTYBsk/0cSqgBYDBy8oMnWReT+gaLc0TMnJrSAg9I=	\N	f	5c7840be-d118-4436-b491-4f45304d1d08	Алексей		f	t	2021-12-13	sedoff44@yandex.ru	5c7840be-d118-4436-b491-4f45304d1d08
1207	pbkdf2_sha256$260000$WmnBKo6L1lx5ojQ4WalLkt$VtGlEMdLKz3oqBPUDsr/fINu/eNdUhyL9ipYWQg7f60=	\N	f	4fb7bba2-87ec-4c74-a194-672a057e9342	Александр	Фелькер	f	t	2021-12-14	belyj840@gmail.com	4fb7bba2-87ec-4c74-a194-672a057e9342
1589	pbkdf2_sha256$260000$DJc8Bl2IB8oIdIOphjvOvT$1NBNy7YoD5yL9zBlY+DffF5j3Z0Be7rbuaHe/2gfumw=	\N	f	1a5c2e07-b7a3-4131-9130-cc81dc79036c	Владимир		f	t	2021-12-17	slonvovan@gmail.com	1a5c2e07-b7a3-4131-9130-cc81dc79036c
1664	pbkdf2_sha256$260000$3pAqyicKcKwiNwRrPro8IL$h2ZLxM5gylRJudHXdyeFsg6aqRsBR63BOw6OLdVtAIw=	\N	f	79e3e982-e56f-4c6e-a168-7c71c3d6a444	Иван		f	t	2021-12-19	ikurlykov@mail.ru	79e3e982-e56f-4c6e-a168-7c71c3d6a444
1712	pbkdf2_sha256$260000$VsLsgzcNFp6Xufb7aqndnM$G8oGlLkJWl0BZH3Zo0ExKIwqzpXqqYdNb7ANFNh+U+k=	\N	f	74796ae4-47f0-4422-acf8-c9cd884454dc	Виталий		f	t	2021-12-20	vmaltsev@inbox.ru	74796ae4-47f0-4422-acf8-c9cd884454dc
228	pbkdf2_sha256$260000$BL1w5jfr1BZ0W0QrqRpvJ1$WFKSM4E44Tr+1pHuo30mdeHZ4azMwAYrTd0WlbhnBx8=	\N	f	975d6a2b-3afd-4d94-b7b0-aa4cfe2f431e	Игорь		f	t	2021-12-13	isurkov74@mail.ru	975d6a2b-3afd-4d94-b7b0-aa4cfe2f431e
1763	pbkdf2_sha256$260000$ztJNwSO9AWeDWiLCBOw0ym$I9Jb8aWHFZext39y+8PEHYCKgu6IYtiqpjoCVjr4ALs=	\N	f	64655d07-8147-4292-8d9c-2a65cd2523c9	Ян		f	t	2021-12-20	yanbb2000@mail.ru	64655d07-8147-4292-8d9c-2a65cd2523c9
1632	pbkdf2_sha256$260000$F4cD3gPlNeGDw850gIDcFU$lihDIFjmn4CnmGa1OlS3oghStrioz9RQzAb+CboW06I=	\N	f	68e2b8c7-bf07-432a-a17d-35bef2b4ec1e	Александр	Виноградов	f	t	2021-12-19	apvinogradov87@gmail.com	68e2b8c7-bf07-432a-a17d-35bef2b4ec1e
256	pbkdf2_sha256$260000$PGnp5trMnI47aiG2Eoh8Ja$aAMRzFEg0kLS1z1YRBVPUatHxTvp+ca5WUxZef902j8=	\N	f	b355c293-643d-4938-aa5d-9f50ddfc18b9	Эдуард		f	t	2021-12-13	askue37@mail.ru	b355c293-643d-4938-aa5d-9f50ddfc18b9
257	pbkdf2_sha256$260000$C0zQizqxomBDlY1z0SfIk5$aQjAFUvlYZVnk9QtHEpXWIYK05kptrKmKrwzTbjK1Fg=	\N	f	394784fc-32e4-4da6-9cac-8aa583fc91ae	Даниил Богдановский		f	t	2021-12-13	daniel43skat@gmail.com	394784fc-32e4-4da6-9cac-8aa583fc91ae
258	pbkdf2_sha256$260000$HRhaB4VrRrBDPlpeo2gyGP$2pv4HqKaxd0P7uopsuXU6VuHzTEce+bQ4AYXa0VH1ME=	\N	f	751df7b8-40c6-4634-b6da-fd3569a05a3a	Дмитрий		f	t	2021-12-13	dmitrynpoltavskiy@mail.ru	751df7b8-40c6-4634-b6da-fd3569a05a3a
259	pbkdf2_sha256$260000$Pe9FvuhZ3YbB93p6jNVoUi$sF4ALvlBhCrTizCqKLmAQXc+GbXEPBE/08L/pGCdc2A=	\N	f	30645daf-bb8d-4dfe-9608-e54296a09cd5	Рамиз		f	t	2021-12-13	ramiz8254@gmail.com	30645daf-bb8d-4dfe-9608-e54296a09cd5
1585	pbkdf2_sha256$260000$hUYEg08n47cI43tb7SSSkv$yNS48Y6kKJ6aFgj985M7p28O/cicvnYZ2qRv8YRt5Z4=	\N	f	3a9ff966-0fbc-4cd4-9d7a-b7f452825998			f	t	2021-12-17	spbvadim@bk.ru	3a9ff966-0fbc-4cd4-9d7a-b7f452825998
1590	pbkdf2_sha256$260000$hyL61yCHUCxmw9kQCm8DLv$uICPLgbs3rAtpYGGYiO/Cy+YogNCvPITiumbjWqGrPg=	\N	f	667296e0-ea11-4244-ba8d-7ff270acbe37	Байсангур		f	t	2021-12-17	baysangur.aytaev@yandex.ru	667296e0-ea11-4244-ba8d-7ff270acbe37
124	pbkdf2_sha256$260000$5Z5OSpEiEruHZuKqeVYsKt$IkRSKf3T2fi8SsixtFByEZXCo8ag5hFcXhC3Rnfacrw=	\N	f	f4260343-b071-4599-a275-191cec7e9997	Александр		f	t	2021-12-13	bananza88@bk.ru	f4260343-b071-4599-a275-191cec7e9997
1665	pbkdf2_sha256$260000$0HKrAK3d9Fd4p7oUDus1zI$n/4ljpIj/sOlGLoWyuJsufdFWkK66Z5mj/SUzRkhdgo=	\N	f	589ee530-ee22-450e-8c61-23b8980428ea	Глеб		f	t	2021-12-19	suetingleb4@gmail.com	589ee530-ee22-450e-8c61-23b8980428ea
1713	pbkdf2_sha256$260000$yP7VnU3Wf43uQ25EsibQSA$9yZuVel9GI7mt4nezikmoRk8V4tzucL3cDjvMoK5/c8=	\N	f	e93e544d-7b30-4b11-a4d7-79670ab6361c	Валера		f	t	2021-12-20	sarapulmensh@mail.ru	e93e544d-7b30-4b11-a4d7-79670ab6361c
1764	pbkdf2_sha256$260000$lXcJaUZXgnTjixZpHYJehR$k7yT2Yh+iAKliMKsntIZ+VHe9BQzajqqgaFHkTjSjvA=	\N	f	772ac256-f83c-4d77-995b-03727ce44f0b	Станислав		f	t	2021-12-20	protasenyastas@mail.ru	772ac256-f83c-4d77-995b-03727ce44f0b
283	pbkdf2_sha256$260000$oxeEFPIsqPyi8PPIkBArFI$W1x7e+e7H/u/48Iz3zNvWZWcHYwoJ/DGcebq6wXcNHw=	\N	f	d4ed53af-7689-4791-a6f8-3d70df0cae4a	Елена		f	t	2021-12-13	corelline@gmail.com	d4ed53af-7689-4791-a6f8-3d70df0cae4a
284	pbkdf2_sha256$260000$QzkUu3VCWeRauLz80yNIDQ$MjNIOJVh3x/RBEwMRraRIfbqqf//KpzdyIGm9UEgPVk=	\N	f	d9409c1a-92a0-42f7-b02a-538f3717918c	Юрий		f	t	2021-12-13	motorolla@tut.by	d9409c1a-92a0-42f7-b02a-538f3717918c
285	pbkdf2_sha256$260000$OJeszcpoo6psljV5yo7uVw$pFdIcjrVSO1iZbIQiYufyU+fFtzt3vVyRJK6ENUS89E=	\N	f	1bb3b356-4395-49f5-8171-8449c496e19e	Виктор		f	t	2021-12-13	victorbear@mail.ru	1bb3b356-4395-49f5-8171-8449c496e19e
286	pbkdf2_sha256$260000$G90MrVMyVsEqM0ngzoFvbP$4qdh0TGciStMXnGv2w24Urfz+f7Mdv0n60slOCQrJX8=	\N	f	902e43ea-f16e-4895-bf2e-728fdb5c0991	Феруза		f	t	2021-12-13	amankulovaferuza@mail.ru	902e43ea-f16e-4895-bf2e-728fdb5c0991
1567	pbkdf2_sha256$260000$eW4QvNlTQtrE8RheclDuzZ$qOomkr1MNNEiPmhYy3PKAOKtpFWGDK47JJdXDkvd0Mw=	\N	f	e3b95cc7-2dfe-4592-9e34-9a4fa5fd0e58	Владимир		f	t	2021-12-17	vlas_82@list.ru	e3b95cc7-2dfe-4592-9e34-9a4fa5fd0e58
548	pbkdf2_sha256$260000$cEikW8dDzyJYjB2Ev5SUr3$Eef/qFPxFHxsljIPQbyxdrbi505sPwXIYMqj/88fK98=	\N	f	7f9dca87-adbb-4895-81a6-2f1b63ae0443	Александр		f	t	2021-12-13	alexander-rus1@yandex.ru	7f9dca87-adbb-4895-81a6-2f1b63ae0443
1633	pbkdf2_sha256$260000$PiP7ED1VUDTPwHe6iuxLdU$pUhhijXRwfguEEVY2WSck02D45oRu+UWMQFZduh1Kas=	\N	f	8f6559ea-c653-48dd-8f9f-b3111de1aebc	Дмитрий		f	t	2021-12-19	dimongrus@mail.ru	8f6559ea-c653-48dd-8f9f-b3111de1aebc
1666	pbkdf2_sha256$260000$SWLFlmDE87E09yMGTbxKSJ$3U4DmeAiC+fJq+AxctpxHqN/VgqTi+feq2Uoa9u6bsI=	\N	f	ff34ac9d-4f69-4f45-b610-9dd45ccdaccd	Илья		f	t	2021-12-19	iplyukhin@gmail.com	ff34ac9d-4f69-4f45-b610-9dd45ccdaccd
1714	pbkdf2_sha256$260000$Acww52Mwgm9De9R9XtuNkY$bQfef4JMc1yLF0+8WVaun16R0nbKBhRW/j0htyxKTwg=	\N	f	41dc91c1-2e5c-436c-a155-1e14def59638	Зазга		f	t	2021-12-20	lik_fin@mail.ru	41dc91c1-2e5c-436c-a155-1e14def59638
1765	pbkdf2_sha256$260000$4HbMh3rZywV9jFAz0NtwME$Kq6LQiwzT5BUJ6EpuqBo7Ima2Ee5gsvgXXDMmENQzek=	\N	f	46a44972-8926-402c-acca-634791bc44a8	Галина		f	t	2021-12-20	galka8@inbox.ru	46a44972-8926-402c-acca-634791bc44a8
312	pbkdf2_sha256$260000$4jwr3YDfw5X8BXTyNLVkEV$YKbS9TnNq/hW7jvV2viWYsUE9KC5HTy73HtvvuxFfiU=	\N	f	c9057aea-89c7-41e6-81ce-cf8e8da2046e	Максим		f	t	2021-12-13	max_rom@inbox.ru	c9057aea-89c7-41e6-81ce-cf8e8da2046e
313	pbkdf2_sha256$260000$uD6xwV2VM05UdVloNAqf3C$qKE19bo3xWXSZXNnWlUWASvOTFky5GsOyNRHcxMbXeE=	\N	f	af61e6db-1605-4f74-bd93-35463490db92	Кирилл		f	t	2021-12-13	kirillefremov94@gmail.com	af61e6db-1605-4f74-bd93-35463490db92
1081	pbkdf2_sha256$260000$T0jAfPFJl3hD5imagm1ANK$aG2n2nmK3P8sJtyvy/2yAOd6+ictHLZPuL1PuEI5pMA=	\N	f	d6926d58-a42f-4bea-a56d-f6b75200bbcb	Залина		f	t	2021-12-14	izis2006@rambler.ru	d6926d58-a42f-4bea-a56d-f6b75200bbcb
315	pbkdf2_sha256$260000$kdQY3aKhoOAedpXRSte7XP$p3XO9GvIRxIK8fuIBnsrjTakwwnkXS53QKGuz5YLEPo=	\N	f	63c49efc-0067-49de-b680-539595a74599	Andrey		f	t	2021-12-13	info@sibtsc.com	63c49efc-0067-49de-b680-539595a74599
314	pbkdf2_sha256$260000$zxsPXCMbe4ggKq3I5vJtgz$gx6IHbNOjFpJ/RkSP+CVH0ZD8K2JaN2NhN6Ovd4vPSk=	\N	f	13f23872-68f6-4a76-aa78-da2ad1bbd167	Юлия	Смолина	f	t	2021-12-13	smolina.julia@inbox.ru	13f23872-68f6-4a76-aa78-da2ad1bbd167
1591	pbkdf2_sha256$260000$9bD5WjiE2pUiCvh5GV7QMO$z8skdMYhq+bdNr9xJeqqZmQpHk813unjGjhb4XISLp0=	\N	f	e7df3315-b67e-433b-b4a1-5fa3e71b4b0c	Татьяна		f	t	2021-12-17	taya.siwkowa@gmail.com	e7df3315-b67e-433b-b4a1-5fa3e71b4b0c
1634	pbkdf2_sha256$260000$T6qqN3MQ2xfb83HpET4stp$3DYHt7xTNPBiT3gKC/sQ0vh6BPc7CalRhLqhMzktetg=	\N	f	dc2b3d0c-557f-49cf-987a-e09ba6698e0b	Михаил		f	t	2021-12-19	kandaurov.m@yandex.ru	dc2b3d0c-557f-49cf-987a-e09ba6698e0b
764	pbkdf2_sha256$260000$lMPuDOk6pE7YFZt2Pz0HFZ$SJmNGj94iqxtOVZJHWPFfaClU+IO1SKMIkVa/2l8V+I=	\N	f	ece57b40-ddae-4963-928c-63289b9d0fa4	Константин		f	t	2021-12-14	rks17@mail.ru	ece57b40-ddae-4963-928c-63289b9d0fa4
1715	pbkdf2_sha256$260000$8GR12cyRKMI3PfKHfynY0G$zV00nzodPpoDNUvIBjUwlQotDDatY+F+n83i8IU4T+8=	\N	f	d710053c-d2e9-40d0-a7b5-fef3f295e653	Azamat Kulfaizov		f	t	2021-12-20	akulfaizov@mail.ru	d710053c-d2e9-40d0-a7b5-fef3f295e653
1766	pbkdf2_sha256$260000$8aAWl9mPUMCkhexLHtBGsl$H6yxW3bga1fOHc7WnlITwsPRh40gnXuHjwGWw56HHMM=	\N	f	fdfa940a-0c4c-4f1b-b31d-7f47d608a142	Ульяна		f	t	2021-12-20	postnikova1982@bk.ru	fdfa940a-0c4c-4f1b-b31d-7f47d608a142
123	pbkdf2_sha256$260000$HlgG52xtgxSKi6gFpwr1Yt$NsE4KhFYQtQim236xMyn+k8kIaa1U6kQidHX3Ff3m14=	\N	f	9df5fff7-b011-498d-8141-fe8ac962a528	Александр		f	t	2021-12-13	alexzag333@gmail.com	9df5fff7-b011-498d-8141-fe8ac962a528
339	pbkdf2_sha256$260000$RNkpkBdDo7WM0XQhqDLESJ$CeE2yhQtmKzuUQMpN41zv0VrN35KU3pBhY5Ntmrc9FI=	\N	f	bd2455fa-8b0f-4173-a3a5-86a1536e9d86	Надежда		f	t	2021-12-13	elanskaya@inbox.ru	bd2455fa-8b0f-4173-a3a5-86a1536e9d86
341	pbkdf2_sha256$260000$kSGa8bq0fOW0CBRLz5SBvI$Vnxo9EE+h12BpZDZ92KqR2nnVlbKdxu3nQrIPFXBR8w=	\N	f	e86b84ff-d6ac-4ec8-a486-5f1d274921f9	Любовь		f	t	2021-12-13	taela@e1.ru	e86b84ff-d6ac-4ec8-a486-5f1d274921f9
342	pbkdf2_sha256$260000$N4CSj8cBXvlnwvkfXzntKW$T66KRBfkkVoah3JGM6LdqN2UCxfPIUY/EGDvYMA+Kto=	\N	f	e72a71a8-0ef8-4bd3-95f8-fa530e5feaa4	Антон		f	t	2021-12-13	2kaptolllka7@gmail.com	e72a71a8-0ef8-4bd3-95f8-fa530e5feaa4
349	pbkdf2_sha256$260000$mbxCHdUfqOSAUXA2cLVwYO$TLpe4dO7XNfnXenoE3LvzvMwZMXwZ+VPEMIi+XjV6B8=	\N	f	0e6b686c-68cc-4965-a6f4-5f90914a56c0	Сергей		f	t	2021-12-13	sg1053@bk.ru	0e6b686c-68cc-4965-a6f4-5f90914a56c0
1586	pbkdf2_sha256$260000$4SKumLia225VUYtsT7WEwQ$daYVASeUfHpHCAycRygD4xrUVxGFUtObzHCaFd4elgg=	\N	f	2357874b-acac-450f-a98c-43a66e670bfc	Екатерина		f	t	2021-12-17	blassful@gmail.com	2357874b-acac-450f-a98c-43a66e670bfc
1635	pbkdf2_sha256$260000$2njzxVzJ6hRskQ681mQ4ev$DYiaQasZzN7X847s8eHOPSZTf5bf7Onzu9BLh9Jx1Ls=	\N	f	0783dfcd-c53a-4b8f-a0e5-732b3c510dcb	Руся		f	t	2021-12-19	buckram123@gmail.com	0783dfcd-c53a-4b8f-a0e5-732b3c510dcb
338	pbkdf2_sha256$260000$P5z4b0YYzeH6mEinLYhWVv$HIFBj7VbcCR2HpmYEFZU8YhGWGg9HCcEeR6seeVEH8c=	\N	f	5a8c6561-25b4-4fef-acf7-f8e6b6d8a529	Александр		f	t	2021-12-13	rusanchic086@mail.ru	5a8c6561-25b4-4fef-acf7-f8e6b6d8a529
1667	pbkdf2_sha256$260000$HrKYKrTTcpmfucUC7VrBuK$eVXVZq0Vcp5Fy/SWIYxohZbO1a+cCdwq/eUROPYl02U=	\N	f	f4444d5d-96a0-4076-baa9-6e288d18a306	Михаил		f	t	2021-12-19	misha.mob16@gmail.com	f4444d5d-96a0-4076-baa9-6e288d18a306
1716	pbkdf2_sha256$260000$6BQIqFlBDOQ8mfGGzdQndo$e+75xj0wmTR0cbZEKj/YtU9NeM1eTrpznAb0cwhA+ek=	\N	f	0c06462d-5112-4313-8f82-3427b11146f2	Вячеслав		f	t	2021-12-20	slava-gurilev@yandex.ru	0c06462d-5112-4313-8f82-3427b11146f2
1767	pbkdf2_sha256$260000$l83WIpDZelVImz5h9qBAaL$HpoK9v3ZqPSfceTnlnrrvw7Tnpi9XOGOetNLlY8Ixew=	\N	f	40f56c2d-6f91-4d5d-be6d-5bdd88ef72e4	Булат Хайруллин		f	t	2021-12-20	bulat23@mail.ru	40f56c2d-6f91-4d5d-be6d-5bdd88ef72e4
340	pbkdf2_sha256$260000$Pxvs56V99olqaxMkVdbeKP$7h3wj2maWL7jKIVTjV81QSq9zbNr1lKGK8IwrRioZac=	\N	f	130cd5a0-0054-4703-a602-077bff5b6a12	Андрей		f	t	2021-12-13	perekryostov@gmail.com	130cd5a0-0054-4703-a602-077bff5b6a12
361	pbkdf2_sha256$260000$1XAktrVtDR1wAWpiFiswsY$TyhMQ8rauyBQRCCQwH9Van9tAp+gV1Y5RudIdVPbqbs=	\N	f	c452ea6f-2504-43f3-b3dc-f4c3b4e44626	Мади		f	t	2021-12-13	besttamplier@gmail.com	c452ea6f-2504-43f3-b3dc-f4c3b4e44626
362	pbkdf2_sha256$260000$qelL4GDxDlngfuG8v3HQZm$GoWw4Vq9N0/PmXE5cP2dgepT8ZBwW5P5u/8oNicwaEM=	\N	f	20fafb5b-ec79-4555-8c91-cc0ade364de4	Александр		f	t	2021-12-13	av_leksin@mail.ru	20fafb5b-ec79-4555-8c91-cc0ade364de4
363	pbkdf2_sha256$260000$594wunqv4MydUImfpRdEcg$ZnW2l2TFPLwQ5Rj0urXRQOIw9LsG8/MPZOkrZ/QqSvk=	\N	f	cbd244dc-417a-48da-93f3-27a3cf830169	Андрей		f	t	2021-12-13	serpantin174@gmail.com	cbd244dc-417a-48da-93f3-27a3cf830169
1593	pbkdf2_sha256$260000$M9cPIGhbQLaSmDqViIgmET$QY4AplcoeSmJsNCdd7rdLf1MOTfXQi57QJsz+iU0JB8=	\N	f	41e2a5b7-2785-4c1f-adc6-ad3a3e691ed4	Вера		f	t	2021-12-17	vila_moura@yahoo.com	41e2a5b7-2785-4c1f-adc6-ad3a3e691ed4
1636	pbkdf2_sha256$260000$9G6BTO8TG0xe4GoDzDHb6b$rrq62pSMe+NMrcCnVIO+ITFrunEWQPq7HJor4kix+F8=	\N	f	684465a2-7c4c-4813-850c-9da31bbaa540	Vadim Forafonov		f	t	2021-12-19	vadimforafonov1968@gmail.com	684465a2-7c4c-4813-850c-9da31bbaa540
1668	pbkdf2_sha256$260000$SYwyGEvWHGgaqtKZrnQDOA$BqUSi3ghkcFaFOu4XowNWeohDssj9nt2Lk/ZhNmYhiE=	\N	f	4fd277c0-533e-4c16-856d-2192259ba715	Евгений		f	t	2021-12-19	mart1994@mail.ru	4fd277c0-533e-4c16-856d-2192259ba715
1717	pbkdf2_sha256$260000$v9kT0aoKFdVv27obS38EMP$n+gxxsRofa6CFa/URZehCuH7frOJojeWajDf4K7IOJ8=	\N	f	766313b3-cfa5-4c20-8809-629b73400415	Владимир		f	t	2021-12-20	maslo-86@ya.ru	766313b3-cfa5-4c20-8809-629b73400415
1587	pbkdf2_sha256$260000$I9xS2iBGkDERp8bs9dgMEw$l5TyhuHFlzWTK9pb6VwMXprywds/umWrdbAyW3afd3w=	\N	f	82356b52-0186-4daa-88c5-7bab7fde9233	Антон		f	t	2021-12-17	anton5555@list.ru	82356b52-0186-4daa-88c5-7bab7fde9233
1768	pbkdf2_sha256$260000$OncBZZed7jpiLstuehMQ7H$GEBS0BCzbBahpnYkAN011OmXRMYJ19ulw+WIVRzfcsE=	\N	f	84db4401-ba2f-49b7-b747-a5b3cacc7db4	Максим		f	t	2021-12-20	maxikman@mail.ru	84db4401-ba2f-49b7-b747-a5b3cacc7db4
389	pbkdf2_sha256$260000$jPFrRQbwOqBNYkNfibWJ60$d7HoEkPOCu0qzJk//cEpEDoL8wywQhj/NcOiFeNM0ss=	\N	f	232fa577-8167-4675-9d55-90ae39476f33	Михаил		f	t	2021-12-13	miha-nayk@yandex.ru	232fa577-8167-4675-9d55-90ae39476f33
390	pbkdf2_sha256$260000$lNKdm94F0WAevanThTUCk5$TVsPV+UN7K1RmOPDgqrl0f4bc5x6N+n/wk0IWz3DZuY=	\N	f	31243aef-a9d8-4dea-9b40-89b01d614ec1	Игорь		f	t	2021-12-13	igorussia174@gmail.com	31243aef-a9d8-4dea-9b40-89b01d614ec1
1094	pbkdf2_sha256$260000$KCuY79pQF1kw4xo3NZOPbl$/L+QnD62zx+/p33bCvU9YndSzvMYpRCtLtFgUTblqMg=	\N	f	8cb75bd7-10ea-4b30-bea7-b5186f6e8c97	Мурат		f	t	2021-12-14	dugur1@mail.ru	8cb75bd7-10ea-4b30-bea7-b5186f6e8c97
1637	pbkdf2_sha256$260000$VZCNPknMxjIjervS5nvDNc$QTxE8ZSfS4TR0X1fijxEoEmw+lM+1Xy3E1rY7v8gmuM=	\N	f	88c81ea4-6363-442d-820b-07818dc667a5	Сергей		f	t	2021-12-19	s.k.kazakov@gmail.com	88c81ea4-6363-442d-820b-07818dc667a5
1669	pbkdf2_sha256$260000$U2PCuwrgv9YFaOZJ9XGxSE$LS+P3y6wH4WWfA7gAxX9Bm8UhZ0sUAPKU0dM3TfoS0s=	\N	f	8637b74c-add4-492d-984b-792368ac3293	Юрий		f	t	2021-12-19	artsuperstart@gmail.com	8637b74c-add4-492d-984b-792368ac3293
1718	pbkdf2_sha256$260000$x56KU73FmLh0wZtNdpmcNP$IBpEiV8GjtvVCMdc2IJ67FsR9wMrj4qnULFVvrg2w2Y=	\N	f	0a563694-844f-48c0-a632-55101af6ce10	Александр		f	t	2021-12-20	decor-s3@yandex.ru	0a563694-844f-48c0-a632-55101af6ce10
1769	pbkdf2_sha256$260000$mf3y1c2yale87hpoAuYbpM$UvQblbb2CX2PW1cP4EweQgE77wwFRqwRLmzUiolINuc=	\N	f	471ce527-d86f-4c97-8dd6-8f9195a59cc2	Виктор		f	t	2021-12-20	zhilin_viktor31@mail.ru	471ce527-d86f-4c97-8dd6-8f9195a59cc2
419	pbkdf2_sha256$260000$if1LpJ1l7cIrWYI5W4btJX$Pr15hF4fO87HUzOpXuMiRQaYlqlV1Iiz/1/hPHmPkMg=	\N	f	ff3026b8-05da-4a1a-a3b0-1d3040d8eb7c	Марина		f	t	2021-12-13	89055044457m@gmail.com	ff3026b8-05da-4a1a-a3b0-1d3040d8eb7c
420	pbkdf2_sha256$260000$VYlw3oPjaeNKkYMY0mCK0u$U5kT0IxAsRN6TgV6r2Wu461LnMWHBFuQCWfgDf/2Ook=	\N	f	1ee4d5b5-4721-403f-b6ec-523b66bb35be	Никита		f	t	2021-12-13	nikeign@gmail.com	1ee4d5b5-4721-403f-b6ec-523b66bb35be
421	pbkdf2_sha256$260000$CHK5hpp8A7ymz0PUYn8Y83$RCHY9a6e6MTiIYuWReH1b6ZHx9Gvj+Qp2MiWHrVp/nQ=	\N	f	ed9b1a69-c956-4218-9f7f-40a8e83e0733	Илья		f	t	2021-12-13	kist-dov@yandex.ru	ed9b1a69-c956-4218-9f7f-40a8e83e0733
810	pbkdf2_sha256$260000$CH7ShVV7y5aBKn5eRrIBbn$o8StTZFBGPQ0MeZMfWJIdTAi5bGu3+st/wdP1Lovc90=	\N	f	f92b3575-f6c1-4b40-b178-d5e11a709c4f	Михаил		f	t	2021-12-14	oms85v@gmail.com	f92b3575-f6c1-4b40-b178-d5e11a709c4f
1638	pbkdf2_sha256$260000$kvDgPF61WadYJgBIqA9Mvl$sxCls38yefnLflF+HzLHur3VEyhiKySple6TXi/3tPY=	\N	f	3a161839-1d23-43b5-87e1-c7575772ea3a	Оксана		f	t	2021-12-19	kssuusha@yandex.ru	3a161839-1d23-43b5-87e1-c7575772ea3a
1670	pbkdf2_sha256$260000$d1lz01El3gMo7jEOW8BMRP$syZ1C+utfJtbDOPe9IHc9bLWorOoSXJxJ263nVDO/xU=	\N	f	2fd81d2a-0ed7-44ac-9c9a-becab26eafe7	Михаил		f	t	2021-12-19	kolobov.m@inbox.ru	2fd81d2a-0ed7-44ac-9c9a-becab26eafe7
1719	pbkdf2_sha256$260000$ICmxs8vKjJpVpPCzMfCWoi$Y/uBVmC1+JeCM0HB0+Q8fuO8FybVzVZXaRW1e/hsQJ4=	\N	f	456a9b2e-2c01-4693-9572-4bee5c13eb06	Юлия		f	t	2021-12-20	282julia828@mail.ru	456a9b2e-2c01-4693-9572-4bee5c13eb06
1770	pbkdf2_sha256$260000$1IjLXg5289lI87GUjGChOo$5jcQwc3kDYrC0dqSBhsX+4XDPGN+NyhbwEgItLQOhLs=	\N	f	8890f405-ea0b-44d0-9abd-f68892ae7ec1	Андрей		f	t	2021-12-20	kolesovskii@gmail.com	8890f405-ea0b-44d0-9abd-f68892ae7ec1
1639	pbkdf2_sha256$260000$PtX3nBqZk9gsK3LtiwtQDA$IwhnME1ra46FbJs/G9N1s+LvPNNQz3cPVQe4AmPkHZw=	\N	f	9158214f-ea44-4dc2-99af-b2a7b7d1f9ca	Иван		f	t	2021-12-19	slavutich68@mail.ru	9158214f-ea44-4dc2-99af-b2a7b7d1f9ca
1671	pbkdf2_sha256$260000$M27k4s6mXGoB2TJk6LOfzU$MAl38pqqU/x38SIEaDeTPnf46X4CxtCvjNhpRl+rDlc=	\N	f	fa0cde90-c8dc-4e1e-910a-acff4ffb687c	Георгий		f	t	2021-12-19	piter_2017@rambler.ru	fa0cde90-c8dc-4e1e-910a-acff4ffb687c
1720	pbkdf2_sha256$260000$laTpp0Phn0xMi8SOuXS5Yc$Y331S344f0F3s/tUVts8oJOY2m98ynwUy33Vs3lnP3k=	\N	f	260eb700-26ad-4a54-848f-271e2ea0193f	Юлия		f	t	2021-12-20	perviisneg@gmail.com	260eb700-26ad-4a54-848f-271e2ea0193f
1594	pbkdf2_sha256$260000$IvS4guF1DXOcEQlSn2IphQ$EP0NFaM577xuXJcewCvbPZ3AEwCpV2mDASvLg4EjrkU=	\N	f	a4225430-2d57-4631-b501-7f967c7c1300	Мурад		f	t	2021-12-17	ramazzanow@mail.ru	a4225430-2d57-4631-b501-7f967c7c1300
1771	pbkdf2_sha256$260000$5Zx4i2SIhYz1fPyA3d0oLV$jXGLwSt6ny9ocm2GvdlgdCOZOA9dZFPaOKbpN/dP22I=	\N	f	a18f52f2-c0ef-4b2a-a449-de498b0d640f	Татьяна Кокорева		f	t	2021-12-20	t.kokoreva92@mail.ru	a18f52f2-c0ef-4b2a-a449-de498b0d640f
1595	pbkdf2_sha256$260000$mK0i0M6KYcWflUuI28rGjX$NRzi0sLCkfw+4iP6/SAHyB3csStRdd3FRip9btlT2Ow=	\N	f	a1bf78a2-4f13-464b-8bc2-493893040abe	Елена		f	t	2021-12-17	dandy72@mail.ru	a1bf78a2-4f13-464b-8bc2-493893040abe
1640	pbkdf2_sha256$260000$TozFjEUbrkFAmRx9nBmgm9$/GjZhF6RQXQ8ifp3b9UpOXwL6IyMnfF7Q+xSZjMs6CI=	\N	f	16833743-fad4-4e7f-b2ff-6dac0ff05d2a	Антон		f	t	2021-12-19	mr.fortunatus@mail.ru	16833743-fad4-4e7f-b2ff-6dac0ff05d2a
1672	pbkdf2_sha256$260000$YSI42GXmZJujyaPyVZL5Gp$9Xiu8fV71EpDx33enk93qkCsVri6VaWiCA/bp3SsQZQ=	\N	f	11ed58f8-c3a4-4958-af39-02f74d870b5d	Равиль		f	t	2021-12-19	tretyakov-1@mail.ru	11ed58f8-c3a4-4958-af39-02f74d870b5d
218	pbkdf2_sha256$260000$KIugClBhKVJJzZ08P7WZa4$Df/KLPqEC+541QDLLq7MLG67TT+dD7+/AGfyIE3XJkQ=	\N	f	4b07174e-58f1-4d9e-8f41-cc7140bccee9	Алексей		f	t	2021-12-13	dsidemello@gmail.com	4b07174e-58f1-4d9e-8f41-cc7140bccee9
1772	pbkdf2_sha256$260000$4s6d1XFeaP8QNhgAgsFizI$8Y7Tv/P0n0IoGa9M0uapiw/G6KXGJWEHexFPxqw19pk=	\N	f	671c235a-63a3-4b00-bcad-3e7bd6e438ac	Дмитрий		f	t	2021-12-20	dmaximov68@gmail.com	671c235a-63a3-4b00-bcad-3e7bd6e438ac
1596	pbkdf2_sha256$260000$sz1UuMsJPUQwH1ezO6IKFW$4gioTwPuPdqk3cb7XQjajXgGq2OuZbt535G+qxc/kVQ=	\N	f	9a001eeb-a5fb-4fa3-9dea-08c1c7d1a8d7	Денис		f	t	2021-12-17	denismdar@gmail.com	9a001eeb-a5fb-4fa3-9dea-08c1c7d1a8d7
1641	pbkdf2_sha256$260000$AjBBPJNiLhEOYW9qOCUYxd$dOU0IGDm706YBtyTqKByvTVXrZUqxW4piSd85G+bNKs=	\N	f	f4cc5f47-4913-4c56-b220-8e087bfa9dd8	Ольга		f	t	2021-12-19	navigator.ok@rambler.ru	f4cc5f47-4913-4c56-b220-8e087bfa9dd8
1673	pbkdf2_sha256$260000$LAoISeo2udv1HvIhHQAy6L$ZaXPJQSxVlBJvbAZbOJp/4aLAAyd8he2SNbbna8jwJM=	\N	f	dc680649-ad03-4133-bfb4-37c6220077f5	I		f	t	2021-12-19	ilya.vinokourov@gmail.com	dc680649-ad03-4133-bfb4-37c6220077f5
1721	pbkdf2_sha256$260000$WQI9F9SyCeEdEYh6bkN3Zq$RL73Z5clpctEPhOcFsXkON4RAArlNR+DnFTlGTn7TMc=	\N	f	05be7e44-81a4-4995-a8b8-40637ad70df5	Алексей	Гаршин	f	t	2021-12-20	a.g87@yandex.ru	05be7e44-81a4-4995-a8b8-40637ad70df5
1773	pbkdf2_sha256$260000$TWnG6BtEeG6REosAOIpV2G$AhJdLjDsBzYe0WNygY7CVqyGFG/6PkcvtuVkh+Tqfe0=	\N	f	2c238eb7-613b-489f-aa39-6cab3fdf56df	Николай	Полунадеждин	f	t	2021-12-20	2398559@gmail.com	2c238eb7-613b-489f-aa39-6cab3fdf56df
1597	pbkdf2_sha256$260000$aLIb8g41S6uf0goifYOt7m$5EcVd3lwcEIgOh7d546E6sQK3eTZ/s1/kZwFEK7e3ag=	\N	f	582f7af2-32b9-43dc-a9bb-9c82c2be2786	Андрей		f	t	2021-12-17	orlina1991@icloud.com	582f7af2-32b9-43dc-a9bb-9c82c2be2786
1642	pbkdf2_sha256$260000$rkxNJQLou6qdrS6Vv7kRdB$1CPnRDD4fcGR5bCOC3/Euc2OpD9aMsduPMgfUKwj458=	\N	f	955112da-7f21-4759-aff8-6ffc869871c8	Роман		f	t	2021-12-19	rombond92@mail.ru	955112da-7f21-4759-aff8-6ffc869871c8
1674	pbkdf2_sha256$260000$iOv6CgF6XDGRgKt2s0CHQe$eOU64a5uBOwRG7t835etYfwG3K+UtL+5jiaCvm5UVFg=	\N	f	d3e5c7ef-bd98-4797-9628-5625b1c60dd2	Владимир		f	t	2021-12-19	orangekrokodil@gmail.com	d3e5c7ef-bd98-4797-9628-5625b1c60dd2
1722	pbkdf2_sha256$260000$vfbIpHBT0Pv1FUuUJhwIhX$cHH7vSgKMef20Za+x9yqiOwCMlSXRXMAc0CcStkQZAQ=	\N	f	df02cf11-8bbc-4ba7-b5d1-57aa84e851c5	Сергей		f	t	2021-12-20	evstakhov@yandex.ru	df02cf11-8bbc-4ba7-b5d1-57aa84e851c5
1774	pbkdf2_sha256$260000$7Ckw07VnuFTE0pXJ7jx1BJ$WxljBOMmx5v2mNECczwO3LtTkXmTb+tMXIOJl68CCMs=	\N	f	dc2f2da1-63ce-446e-acb2-4a69729d291d	Viktoria		f	t	2021-12-20	viktoriapikk@gmail.com	dc2f2da1-63ce-446e-acb2-4a69729d291d
1598	pbkdf2_sha256$260000$KcL3J4hif9vgCLTHlXFdiR$P9CogmFwZuvgoBV/5ZnQLwWvkDyt+aN38dDeRbIyORc=	\N	f	ae9d287b-6418-4803-a811-3b8529956c49	Дмитрий		f	t	2021-12-17	yallum@gmail.com	ae9d287b-6418-4803-a811-3b8529956c49
1643	pbkdf2_sha256$260000$J2eC4imCwo1FEdfzGvhHrz$ohKLFi4rWTIuTeOyO9KICfSjOjL/3Qeq6N/2c5CJTjw=	\N	f	50ed6305-d3b4-4663-ab99-ac4f4717aec1	Павел		f	t	2021-12-19	p.abaturov@yandex.ru	50ed6305-d3b4-4663-ab99-ac4f4717aec1
1675	pbkdf2_sha256$260000$WWdobgXwiA1kgUBIVNpMPC$QmT/DSH6EEFnMy92GoP71TI1CXw67tC352CaLfTP87U=	\N	f	a256c861-0ce5-4ae5-9d5b-4435d97a43fd	Кирилл		f	t	2021-12-19	kaa_studio@mail.ru	a256c861-0ce5-4ae5-9d5b-4435d97a43fd
1723	pbkdf2_sha256$260000$04TIPrUmeNvpQ60Dy6y6TZ$ER64mStnvn7YlM4HWfEpAOndIYnHqRtFd9IZXX/Ix2w=	\N	f	79ff626a-6ef8-410e-8442-f3b8f687ebd3	Арсений		f	t	2021-12-20	cronin.senya@mail.ru	79ff626a-6ef8-410e-8442-f3b8f687ebd3
1775	pbkdf2_sha256$260000$QFdZdYIRfGYvxyIQX76Cff$fMQD3EsI17avAz73QAXkxoynT0hjSbW1XlFGB6AtGfc=	\N	f	635503a1-cc2b-4186-a8ee-0fae9f5be6cd	Илья		f	t	2021-12-20	kildyushev5@gmail.com	635503a1-cc2b-4186-a8ee-0fae9f5be6cd
1599	pbkdf2_sha256$260000$buCsRWb8N5uF5WHrKmGTLf$KD8/+7lHtHDX/v4OCBzkknJ/2Mro2zcwP3TGm039bMA=	\N	f	b6a24c4e-5d35-46f4-bbf1-3c353c817d10	Эдуард		f	t	2021-12-17	pirogov72ek@yandex.ru	b6a24c4e-5d35-46f4-bbf1-3c353c817d10
1571	pbkdf2_sha256$260000$kr8gcwjFMdN9isiwvYDj91$W2JyZ6X/Tz07xjPLV6H05D1lPPPP7LlL7hJXuUlKwNY=	\N	f	3350a324-64c1-4405-b62c-5232b4d677f9	Владимир		f	t	2021-12-17	cva77@bk.ru	3350a324-64c1-4405-b62c-5232b4d677f9
1724	pbkdf2_sha256$260000$owEfrKibkYVfGgE3ZT8T8U$w2WGxsIDGftuJkFIAd/Q99fncmadE3M2TyqYgeabZlY=	\N	f	5bb60fbf-b53a-46bd-b885-c7a0baca5953	Михаил		f	t	2021-12-20	sokolov.mik@gmail.com	5bb60fbf-b53a-46bd-b885-c7a0baca5953
1644	pbkdf2_sha256$260000$NAihX1QoeMCNYFRiyzU2ip$wT/eKDuqclo0Bu7f5SPBrqkKfwhHS+iy15cxCB8cKX4=	\N	f	a15116c4-6788-4dff-a647-b7375081b096	Сергей		f	t	2021-12-19	s-chuprin@bk.ru	a15116c4-6788-4dff-a647-b7375081b096
1776	pbkdf2_sha256$260000$pqb6v3dUcadukSdb9dF7V4$zNJeSHNkVVRUfCXzdBJ+iGbszmwR/7eu5CzVp3qr3QU=	\N	f	e7ea013c-6607-490a-9ec6-61d101ea862a	Вячеслав		f	t	2021-12-20	sla25-89@mail.ru	e7ea013c-6607-490a-9ec6-61d101ea862a
1600	pbkdf2_sha256$260000$PLr8DU5Zoen7ABm72sfTft$tatGVeMY4mtlTmDniWuVYoMR3mRmZcfygxVM7jsSyM0=	\N	f	7018b54d-69fb-41cf-a7ed-1f2e140e3f5b	Александр		f	t	2021-12-17	007-88@mail.ru	7018b54d-69fb-41cf-a7ed-1f2e140e3f5b
1645	pbkdf2_sha256$260000$pgnM1nOzuN82UtPwffMA3p$AGmTAQyuoC09uiuSyDMwHylYEn8ub7dIh1bd5ffyHI4=	\N	f	191d6e73-24c9-4b7c-8b2c-06d0ea1a6682	Ольга		f	t	2021-12-19	mir-ov@mail.ru	191d6e73-24c9-4b7c-8b2c-06d0ea1a6682
1725	pbkdf2_sha256$260000$yntC2TRSklzvUxfB4BBbOw$6vwqqiNZXrYeLKUuh31GUcX6iXDmssZi36R19GCf3Go=	\N	f	108a2eb3-8fbd-4665-9a2b-90e83b0a3509	Сергей		f	t	2021-12-20	kovalevskiy.s@gmail.com	108a2eb3-8fbd-4665-9a2b-90e83b0a3509
1777	pbkdf2_sha256$260000$s3JV7bezJCGnaU6lRNWkpU$6FgrI4RNqezqxjYUUZQlSqTnGM8sQRdbh6Wh4VNf/xk=	\N	f	0f5e44ac-edfc-4cbc-919d-9577d19e8984	Artem		f	t	2021-12-20	stm7436@gmail.com	0f5e44ac-edfc-4cbc-919d-9577d19e8984
1676	pbkdf2_sha256$260000$iFMOON5spTaICnkNyxVREB$mTWyLFJ+Q/ZKNbbr8e1OptoC9NBbZ4xQXToC4aa6Bx0=	\N	f	e2349192-b92e-4b1d-9b4c-18f819428725	Даниил	Ермилов	f	t	2021-12-19	ermilovdaniil3818@gmail.com	e2349192-b92e-4b1d-9b4c-18f819428725
638	pbkdf2_sha256$260000$MIeY39199CddIdaoYYrQgw$C1VH4B+OrWL7qWQ8IlQCOpOuuXrqjWEdHrUDlwKZIQ8=	\N	f	9a025231-cf66-4120-adca-b6355bf44e62	Михаил		f	t	2021-12-14	komkim@mail.ru	9a025231-cf66-4120-adca-b6355bf44e62
1601	pbkdf2_sha256$260000$SYuDzubSzAWyxfeylaBIMj$TPY2dXnwYDkjngl1unNJXtmyTDb2FNDoyN2a8f/ghBY=	\N	f	b7924846-386d-4a69-8592-e15d6593612b	Дмитрий Бабенко		f	t	2021-12-18	0150561bdi@gmail.com	b7924846-386d-4a69-8592-e15d6593612b
1646	pbkdf2_sha256$260000$tpVIvgleYI25c9lqtB6Ins$KkRQoA6EBKsYAFDsf7Zuw0n4/1GL/OlxJ7kOblWFjwQ=	\N	f	ed59d83a-d035-4646-9017-c09963dfa07a	Данияр		f	t	2021-12-19	nauryz.88@mail.ru	ed59d83a-d035-4646-9017-c09963dfa07a
1677	pbkdf2_sha256$260000$hRN1ClKAkTdkgE5Wt2kZYX$sRdQdI3zJv3g04kRNYDd8eZJ8PDC6jmhZjkkn/lF8QI=	\N	f	f9c4fa3c-f91a-417d-b225-491800ed3c4f	Александр		f	t	2021-12-19	anikulin1@gmail.com	f9c4fa3c-f91a-417d-b225-491800ed3c4f
1726	pbkdf2_sha256$260000$054NvLOflscvex21r0pM3I$1ysyT1JZZAOApCMfh1IrqrbW/nobMPUgSx8M0QazLxU=	\N	f	cd994911-a686-4149-a1f9-110ba187261c	Сергей		f	t	2021-12-20	sart72@bk.ru	cd994911-a686-4149-a1f9-110ba187261c
1778	pbkdf2_sha256$260000$hoI4JntAwNQ2q7ombywiO6$+P8e8oEQkQrY3egvXd5QTJl5eJovuHat0vXoSPYg0cI=	\N	f	e6cfccba-9150-43fc-9163-f4981fcd18c2	Михаил Вишневский		f	t	2021-12-20	mvishnevskyy@gmail.com	e6cfccba-9150-43fc-9163-f4981fcd18c2
1602	pbkdf2_sha256$260000$Mr42qLMTnOdCt8yDVWBYKL$uajY2l5ocgWapnr/IpEoJD321O5oSrM0CaB1zD8GA9s=	\N	f	d43da570-ffa3-41b9-8070-ce4d976ab39c	Дмитрий		f	t	2021-12-18	673889@gmail.com	d43da570-ffa3-41b9-8070-ce4d976ab39c
1647	pbkdf2_sha256$260000$nU149U3XClykaToJumazJS$GCBVVLNa6eJQMF47ZC1rQFQgSWHxWYTuO9L7Rb6SuNo=	\N	f	03ff1e56-a028-433a-8251-26e6e8d20e39	Михаил		f	t	2021-12-19	chadovmm@yandex.ru	03ff1e56-a028-433a-8251-26e6e8d20e39
1678	pbkdf2_sha256$260000$G3KTUFhi6UwCiWYLm1cyJ6$wYFXbfhfTQWV1nfVF2k7M1VLIoGG5ArWd8AvvZADWNU=	\N	f	b5924692-1019-47bf-b331-9b31ac62276c	Виталий		f	t	2021-12-19	zilberblumvn@gmail.com	b5924692-1019-47bf-b331-9b31ac62276c
1727	pbkdf2_sha256$260000$79gLdeY3LrC6euRicQib8p$hAfuuICxxdv79woTu2G8cWBUMUnz8GjSf9cIoQda+eA=	\N	f	601b915f-2019-4959-9161-af7bf952a098	Михаил		f	t	2021-12-20	smait97@gmail.com	601b915f-2019-4959-9161-af7bf952a098
1779	pbkdf2_sha256$260000$PObvT2akUeV4TwY3SzXmMP$IYA7OA1fEFKlL8DcV7j2E4b0d82fh4FukbUPDY/ZB18=	\N	f	6dd5c2ca-c48e-4a37-a5d7-1d57350be985	Илья		f	t	2021-12-20	vitanonstop@gmail.com	6dd5c2ca-c48e-4a37-a5d7-1d57350be985
1603	pbkdf2_sha256$260000$m285sGgCkfFPR6JYOkjYoZ$xhInanMwD4Tas2S3yp9Xz56JQqnr65AjC6bF6LKk64o=	\N	f	6ad80994-33f2-4958-81db-9d44831258a6	Евгений		f	t	2021-12-18	salient@e1.ru	6ad80994-33f2-4958-81db-9d44831258a6
1648	pbkdf2_sha256$260000$xxRxW4fYo6gW1W86Pnu92Q$/7I4PH/COWHAuGXsdfWJIIaBR+EyICCpdTYjwsuQoAA=	\N	f	238a1331-3e98-4585-8ad7-57528acb4eff	Dont Worry		f	t	2021-12-19	agent108r@yahoo.com	238a1331-3e98-4585-8ad7-57528acb4eff
1679	pbkdf2_sha256$260000$WWXBwKKrx31OZUHgNtMO8q$Zd206FW0f3jYZYPfmGla4FseLc7lzM+pOiYYzRt4lm0=	\N	f	a299d10a-1516-4dcf-b479-ff04254c9847	Леонид		f	t	2021-12-20	lion1389@mail.ru	a299d10a-1516-4dcf-b479-ff04254c9847
1728	pbkdf2_sha256$260000$wbqkmBTYaQiEcQLDPJjgeW$k6JDYLoNe4oZdzJfIC0wbFyuDBCC0CnNF3699mUDg10=	\N	f	2ec36a14-0370-41dd-b3b5-7657616eeaa4	Дмитрий		f	t	2021-12-20	dimka-aztec@bk.ru	2ec36a14-0370-41dd-b3b5-7657616eeaa4
1780	pbkdf2_sha256$260000$D4UXdZ6VI1Qn53tMhQ8wJx$sHzBn9eai0eSpr9Cto1tsuz10mbo/IJU7iXJm42YN1o=	\N	f	105111db-b644-4637-844b-3d7fdfb20146	Андрей		f	t	2021-12-20	gori1ka@yandex.ru	105111db-b644-4637-844b-3d7fdfb20146
618	pbkdf2_sha256$260000$ubKIXk6tS10ehjMp84Iv7v$1zw1J1VFbwse92dywymOAOJSi1Io1QEvWsOlfCQElZc=	\N	f	f7407dfc-647a-4dc5-8b5a-15d8dbfee187	Дмитрий		f	t	2021-12-14	namidx@gmail.com	f7407dfc-647a-4dc5-8b5a-15d8dbfee187
1649	pbkdf2_sha256$260000$5uQjfRABKpB6ahYYXr5k8j$bMJCmXUzdS6ysYjMDtHfLjctT34XgXkjmUTlHgqhB2w=	\N	f	ba654149-d246-4fef-ac81-214431873e16	Андрей		f	t	2021-12-19	dd.kaz@mail.ru	ba654149-d246-4fef-ac81-214431873e16
1093	pbkdf2_sha256$260000$5S6AJg554tWZ3Gw50hKDFY$gdDjc9y13Db+gYBU0vEEyOUqhUqIkjHLW7FrXBZh72o=	\N	f	0e00a549-d0b7-4303-a590-5d9b6ef40ff6	Александр	Бычков	f	t	2021-12-14	shura.bychkov.95.95@mail.ru	0e00a549-d0b7-4303-a590-5d9b6ef40ff6
1729	pbkdf2_sha256$260000$RhlPzTv2L7TZV8Cgq2ODdx$+rUhgtOQFGNSzVmLQ7S82Sg35qsjJ0m+Mz9An+kHhnI=	\N	f	2fb31a1b-cb75-4440-810c-4e014cbafb51	Валерия		f	t	2021-12-20	vers1292@mail.ru	2fb31a1b-cb75-4440-810c-4e014cbafb51
1781	pbkdf2_sha256$260000$Z1l1MQKWWN4ZEseosMs5b0$wmhryCgfTTyFaOP/G9cGD4Cu4c97S1FeaXm+Xgnkp2E=	\N	f	d661f0ca-1a17-42e0-8927-6bbf98d9cf3c	Таир		f	t	2021-12-20	salyushkin@gmail.com	d661f0ca-1a17-42e0-8927-6bbf98d9cf3c
1604	pbkdf2_sha256$260000$yiA5GaF2f8fjHjNQwjynlt$/PJHuyCt4ly/qEWmgx7bm+HM2PIkwieridJEnXnZWEA=	\N	f	a34f0cb1-5a39-4859-87f3-4c22202dfc43	Василий		f	t	2021-12-18	ivanchenko.v@inbox.ru	a34f0cb1-5a39-4859-87f3-4c22202dfc43
1650	pbkdf2_sha256$260000$cO1K2r3GgaP6FWPcUWlrr6$0oRudOaibzwZPYthcqEVarcAqmPsJREkcvZbqjK5VFA=	\N	f	792c3d7b-633b-4ff7-ba28-33f2d6313a3c	Сергей		f	t	2021-12-19	spogrebnyuk@yandex.ru	792c3d7b-633b-4ff7-ba28-33f2d6313a3c
1680	pbkdf2_sha256$260000$2kyppv9tmqfkprrJ4Pvkj4$SrMb9MIduUtmqrwmwcxPlW5SkXP0elqqxoqkYI2XhbI=	\N	f	046480c1-c589-42a4-bc2b-4f8cec531a33	Роман		f	t	2021-12-20	rom_i83@mail.ru	046480c1-c589-42a4-bc2b-4f8cec531a33
1730	pbkdf2_sha256$260000$sQtEqANr2u2oMIcT8OESnd$oKF111OERTYlEHTTXGclCXUzGJrGj5jOLFofLLeqsWw=	\N	f	c2aa012b-ee2e-4e70-95b4-f1b695711ff2	Антон Котяев		f	t	2021-12-20	stepwagon076@mail.ru	c2aa012b-ee2e-4e70-95b4-f1b695711ff2
1782	pbkdf2_sha256$260000$nLQxmtD5qTRRz1Tjd3pSIK$fcekWh1Fb9EZyS5RVqmdS18vGJ7zvcAPjtTg8rt8g+8=	\N	f	1f4f0598-38cf-44da-b6d2-7468f5f946a4	Наталья		f	t	2021-12-20	golden-time2017@yandex.ru	1f4f0598-38cf-44da-b6d2-7468f5f946a4
1605	pbkdf2_sha256$260000$ab6AuDBIo1xTY644q3SpuC$MB7jobTlUpANL6ppWzfHUIJfL9AWmEzVRfDQGzH43ww=	\N	f	6de4bb12-573a-4088-a020-c2ade9730c78	Юлия		f	t	2021-12-18	sav_ui@mail.ru	6de4bb12-573a-4088-a020-c2ade9730c78
1651	pbkdf2_sha256$260000$qjmOoRvdsjBhpwglVbsDOa$T96GmDy81AyRxwD6HXMTcXEqO+vCAFsKqPzKgYVOSlA=	\N	f	e7e2c9ca-812b-459b-92a1-0a638d53c11b	Бахадыр		f	t	2021-12-19	ilmuradov_b@bk.ru	e7e2c9ca-812b-459b-92a1-0a638d53c11b
1681	pbkdf2_sha256$260000$Jj9ppWUL5mZOg3tPyDA8oX$DyBCglkbd1TXgLWL6coYS1dNnLcYcTFt/KdFjYsE+KY=	\N	f	13f81dae-9c87-4d87-8afc-a9cb1ebeacd8	Алина		f	t	2021-12-20	ciocca@inbox.ru	13f81dae-9c87-4d87-8afc-a9cb1ebeacd8
1731	pbkdf2_sha256$260000$jLiBUS3aAr5JFUqUBOMpEv$UR9Q2QeiUs9amH02hT+Qt7P6U0cciog6C9dDIK8hR14=	\N	f	69bcab8c-c18d-4946-893e-febb6f34ce3c	Татьяна		f	t	2021-12-20	tatiana.kab@mail.ru	69bcab8c-c18d-4946-893e-febb6f34ce3c
1783	pbkdf2_sha256$260000$We1eXKEkxYIJmJj5yUCVBB$+w3TWMxTspAX1cJAQBF5dv8aIi9o1vemUaLrB4x8YOo=	\N	f	936e6c7d-984f-46ea-af26-6353caea75f1	Alex		f	t	2021-12-20	alex.dubrovsky@gmail.com	936e6c7d-984f-46ea-af26-6353caea75f1
834	pbkdf2_sha256$260000$yPZAjoN8AAEIW1co4tAW4R$X3WkT7lVO2HCxz3kXQAzjZR2dOi0cP2+xcHaJW42FCQ=	\N	f	3ec95f77-267b-47f0-a129-087ccfbeebdb	Павел		f	t	2021-12-14	saratovtsev@mail.ru	3ec95f77-267b-47f0-a129-087ccfbeebdb
1606	pbkdf2_sha256$260000$Yu9lvynQyayVBMh3802XZq$4QMrYtdw9qshMVQaACrXs7KzA0zJRrDCIG63LcvCMgg=	\N	f	8c926391-1097-4c42-85ff-73556a7c31a0	Kirill Fateev		f	t	2021-12-18	fateevki58@gmail.com	8c926391-1097-4c42-85ff-73556a7c31a0
1652	pbkdf2_sha256$260000$uoIp78nGdbbDhp1KgNQfVi$lS6X5/b0oBX+Uw+brAkvrnfzL2DF1Yu5CtOb47/0qWE=	\N	f	78ed930c-4d92-414e-8c9c-7c09d989eac0	Максим		f	t	2021-12-19	maggot_max@mail.ru	78ed930c-4d92-414e-8c9c-7c09d989eac0
1682	pbkdf2_sha256$260000$9x2sihANjockyCKJoonK3V$EavkxldiskrKL/TzOlZJuVaIiggSVVnvwaCeGZIawcA=	\N	f	f5ba2bee-5f67-4b91-bee9-8d2ad19ccd5c	Ангелина		f	t	2021-12-20	angelinaburnakova@yandex.ru	f5ba2bee-5f67-4b91-bee9-8d2ad19ccd5c
1732	pbkdf2_sha256$260000$i8dwjiH6WnNU3EmRmspRLl$ucyKpyHJlbEZdSOcC1CmX+mg0Vhs+HU2G3qtkuPLSkM=	\N	f	c364ddb7-7b88-4cae-9ef8-57d6232aece4	Максим		f	t	2021-12-20	sigemax@yandex.ru	c364ddb7-7b88-4cae-9ef8-57d6232aece4
1784	pbkdf2_sha256$260000$3CzECYlVxN3kSOrG3XueiK$iIpKuFusiHh98NjWzqDOUtmZD8rhmM5H3p5y8+YZABU=	\N	f	fdda3584-d88c-4c4c-b1f7-f4263606c3d9	Никита		f	t	2021-12-20	kirin.nk8@gmail.com	fdda3584-d88c-4c4c-b1f7-f4263606c3d9
1607	pbkdf2_sha256$260000$dYK5P9FGJpq39hJImTtmtk$KnYqDHKZqDTqvFrLNfZrqKNVoo5mcdIPhqyUF8+E2+4=	\N	f	1eda1ce7-e83a-4052-afa8-9e5b4f844399	Вячеслав		f	t	2021-12-18	shulga_slava@mail.ru	1eda1ce7-e83a-4052-afa8-9e5b4f844399
1653	pbkdf2_sha256$260000$8SHMEkpKFpclBLezTSOYY5$4l3JugodRdwbY1FYBN4FXxqFPB1aFrqv/X4OsAfUaK8=	\N	f	208bb824-2cbd-44d7-afa6-effafdf01b34	Галина		f	t	2021-12-19	galisakova@yandex.ru	208bb824-2cbd-44d7-afa6-effafdf01b34
1683	pbkdf2_sha256$260000$Vz24aDrKFXCIf50Tyl5NkL$1r4mzUXh/71dFkY6wZjwykuBW3C0UtWvJqIYbs72LpE=	\N	f	b32d86ac-977f-4833-ac09-04314b39e36c	Роман		f	t	2021-12-20	alliyans_nikitin@mail.ru	b32d86ac-977f-4833-ac09-04314b39e36c
1733	pbkdf2_sha256$260000$VS5FxDh7bisSs97VlZ8BPH$uxlpIF4qhr4qzPxrh31PL1jW/bZBdjIytyn/Ol3FeWE=	\N	f	90f5a080-394d-4427-af2e-084531c63092	pavel		f	t	2021-12-20	pahadesign@gmail.com	90f5a080-394d-4427-af2e-084531c63092
1785	pbkdf2_sha256$260000$DvLdToutP01KHH3XGR65VO$FreD7LjcmmsDnXyZcKSVOzLGHgohASMXivRc2orYPhY=	\N	f	3570b847-d27d-4994-8011-2ed5ee5d4a22	Igor		f	t	2021-12-20	infodrom@gmail.com	3570b847-d27d-4994-8011-2ed5ee5d4a22
1608	pbkdf2_sha256$260000$COSwngONS6dBcXZWGGPysN$UhNxiVzv/4OwgcHBvjs+VvrH35erLVg8dy5Q7Cvuzdw=	\N	f	e1b29c40-ec9e-45a8-b909-23262d545fc7	Егор Галдин		f	t	2021-12-18	zdarova1337@list.ru	e1b29c40-ec9e-45a8-b909-23262d545fc7
1654	pbkdf2_sha256$260000$wODLaB5YSZiza21UDanzOk$cYxtnKk5fnMMDK6L+Tt9rBgE97weEEVNOSwOw5zDZYo=	\N	f	1f6df5b6-84b0-4b2a-8a2b-411c2755e344	Бейбут		f	t	2021-12-19	beibut.mamytov@mail.ru	1f6df5b6-84b0-4b2a-8a2b-411c2755e344
1684	pbkdf2_sha256$260000$0hCVlWoK1AUGkrPM2tCjev$14A4PrCf0xyJLYP6I/1iI8qAMCR4xIOM6s/4LzZAnUQ=	\N	f	28f854a5-b95e-461b-9604-269e761d02fd	Константин		f	t	2021-12-20	astao@list.ru	28f854a5-b95e-461b-9604-269e761d02fd
1734	pbkdf2_sha256$260000$my46MYeU0r1Vsz35Tq9YYC$8DyycutRc1FImcJNb6l4LY8A2nXlFvCi/agzkWrAWpg=	\N	f	46a1dc2c-3a7c-41e2-9f58-fae6c0f4baf8	Александр		f	t	2021-12-20	zaqfred@mail.ru	46a1dc2c-3a7c-41e2-9f58-fae6c0f4baf8
1786	pbkdf2_sha256$260000$K0WlOfN2EA7bJcmoTj71Q3$wcT2Uj0rL+urRWXIVUMmJjHFDrTUQVpjjWn06xpq5LA=	\N	f	69432260-286f-4ca4-b219-ddace7467d79	Дмитрий		f	t	2021-12-20	tikhomirov_dm@mail.ru	69432260-286f-4ca4-b219-ddace7467d79
1609	pbkdf2_sha256$260000$LxIxSwpTyODUsdL0BtCFZQ$OKruX1jr8vRpeb8jVqKm6T9+VSwNc+UFyRsSpjnEE+A=	\N	f	1d46ebad-8ee2-491c-a495-9398d8c409c6	Анна		f	t	2021-12-18	impresskrd@mail.ru	1d46ebad-8ee2-491c-a495-9398d8c409c6
1655	pbkdf2_sha256$260000$K4AyDByQvPGNxVsqVek6hB$2ARlAiC07bZYqs3PHS5Vmnlaqjz33vlsSQvF+tcFgLY=	\N	f	66d6d740-04e1-48f3-8409-c6cafafbfa35	алексей		f	t	2021-12-19	gintech@mail.ru	66d6d740-04e1-48f3-8409-c6cafafbfa35
1685	pbkdf2_sha256$260000$MRMETlqDIi3bMZ0hZIZB7d$nip0qzBEB2J1KADPyCBi5rIPKB6iZFyZjt19cHwG+b4=	\N	f	07630a52-bbf3-497b-b310-8838b8a1fdf0	алексей		f	t	2021-12-20	stalnov@gmail.com	07630a52-bbf3-497b-b310-8838b8a1fdf0
1735	pbkdf2_sha256$260000$5djuxGvL0f3tfGAOBL3ju4$Ud9ZbH8JFj9PoWordY+J0vT3UPD9swjmmDuMFfOnEQ0=	\N	f	4b4b521d-73b6-4c0c-a739-83f44c441404	Ольга		f	t	2021-12-20	popov_ss26@mail.ru	4b4b521d-73b6-4c0c-a739-83f44c441404
1787	pbkdf2_sha256$260000$o6pKyETXsCoNMcbF3u5t8H$ZlqHEM5vAMxRDY+QGGjRuglw/Jc/YgEQ+FzTEMazMFs=	\N	f	e7a25316-f6ed-49c7-a328-3759913c6c9f	Александр		f	t	2021-12-21	fas06@inbox.ru	e7a25316-f6ed-49c7-a328-3759913c6c9f
1610	pbkdf2_sha256$260000$4mTknF5W7ki6QqySQ8BtCr$mVHim9cE8Ifpws+VR60YZ5xR6un0d2bIRSO3y+kAm4Q=	\N	f	28114d9b-f5d2-492a-92d7-dc5fddefacf1	Данил		f	t	2021-12-18	danil9819@gmail.com	28114d9b-f5d2-492a-92d7-dc5fddefacf1
1656	pbkdf2_sha256$260000$cYaGb7p6OXvZ1JjTO9hnEr$PohXDeUr/fsk7p3S4nIZM4gtqX/BTJnfo5sGRzakYDg=	\N	f	34299098-6fa7-4c44-a4be-009fc8c37f92	Виктория		f	t	2021-12-19	viktoriya_zakirova@bigmir.net	34299098-6fa7-4c44-a4be-009fc8c37f92
1686	pbkdf2_sha256$260000$dd2l3nBKhpQ16mwMLMTAGA$aaVIQO9SE5zgUWNi5InwNjRqU5LRv7aSvnokQsIW4IM=	\N	f	a0e5d07f-d252-4d2f-89cf-f3a62cc45ee2	Наталия		f	t	2021-12-20	enandr@mail.ru	a0e5d07f-d252-4d2f-89cf-f3a62cc45ee2
1736	pbkdf2_sha256$260000$EherEOhxX7w2sD6QlAyuq5$BO7W7OQTb4+ksbB/0hK1qaT7b2syA1/ffELcbTV7F0A=	\N	f	2c62f07e-3a10-4c36-80c6-20e5b89b9dd6	Олег		f	t	2021-12-20	ovkon@mail.ru	2c62f07e-3a10-4c36-80c6-20e5b89b9dd6
1788	pbkdf2_sha256$260000$ABGIwuUi4V0OZr0a2Bqu9n$abnCVGSvgFINSkAPTX+KyIX+H/Tc7uiHrDLjPBWMDXw=	\N	f	325825f3-4d09-4599-a5f5-cbef4a92f3d6	Владимир	T	f	t	2021-12-21	t-stroy32@ya.ru	325825f3-4d09-4599-a5f5-cbef4a92f3d6
1611	pbkdf2_sha256$260000$nrAW9qt9J62QNBn0Z2EvLS$Po303wNeRxzOKou8mo0IuF1pG8j/tBvbX226vnLh20Q=	\N	f	f08b2298-5416-4e74-8d9d-5969f63e2499	Владимир Шишкин		f	t	2021-12-18	vl_shishkin@mail.ru	f08b2298-5416-4e74-8d9d-5969f63e2499
1657	pbkdf2_sha256$260000$WkKueVCHrrdrFqXHPUM6ai$nzgmhk3GfpAQXenUEEOsG23pV14B/bRKfue3uR8hgm0=	\N	f	acdbfad6-66c8-486c-81d6-4db6a96e9131	Максим		f	t	2021-12-19	maxdraiv@gmail.com	acdbfad6-66c8-486c-81d6-4db6a96e9131
268	pbkdf2_sha256$260000$sE0tlQpZj9ekoGKTygN7PV$dMx7DpM7kAKUktffRJz4PlW6sI6eOAAMyG/zgnQAwzc=	\N	f	cee0830e-eab5-41ba-aff8-63708827d12e	Евгений		f	t	2021-12-13	e.gridnev@gmail.com	cee0830e-eab5-41ba-aff8-63708827d12e
1737	pbkdf2_sha256$260000$xUn7AZu0UxM3AOQSg7zORl$oVA+GYJx+/kWlB/ElVCW7iC3ruoiJRSMk6pL0cL7U8Y=	\N	f	afd91345-8dcd-4b80-8a01-2a2db179031e	Максим		f	t	2021-12-20	alfa.klin@mail.ru	afd91345-8dcd-4b80-8a01-2a2db179031e
1789	pbkdf2_sha256$260000$56JroXDs6ZfWkmUv3XI1rr$v1x7E6zK6WESKEDTaLiYVT6Ppnt/P1B8WVikGU5ZIvY=	\N	f	9201d849-acf3-4c29-9b39-d2214a71dec9	Pavel	Burenko	f	t	2021-12-21	burenkopp@gmail.com	9201d849-acf3-4c29-9b39-d2214a71dec9
754	pbkdf2_sha256$260000$z7coeXkP8GI5uhQbYjxJdE$WnEaAiPEoSRai74UidRvYfcrXLI5+98lPWfuD+CPxPI=	\N	f	3a1d11d6-087f-47c5-98b7-d8e52d2625ee	Сергей		f	t	2021-12-14	trubachev_s@mail.ru	3a1d11d6-087f-47c5-98b7-d8e52d2625ee
1687	pbkdf2_sha256$260000$NMpy24sgcukjkkgdSTuixk$OPy+1VCtlOf1YXOf3YXgpasa+Yp2zxWENyTHVlaVEoU=	\N	f	c671f77d-f2d9-4c2a-9e3b-93277c9dcef0	Дмитрий		f	t	2021-12-20	veselovskiydv@gmail.com	c671f77d-f2d9-4c2a-9e3b-93277c9dcef0
1738	pbkdf2_sha256$260000$owyDx9thlHMtx4jSVnQnw4$Zph01dxaLl9saMf7FvTUemNNOqtkYtfAYCITxhuCnnM=	\N	f	857f5bbd-b426-4383-946f-c3410108f061			f	t	2021-12-20	oksana1nz@mail.ru	857f5bbd-b426-4383-946f-c3410108f061
1790	pbkdf2_sha256$260000$h2spOz0WcAq36Uk5WyW851$fWfhUbWTi9gUFKyiGp7ipgf0kXW4fzcq6jhCVodHDu0=	\N	f	bb25265f-b20f-4e0b-95af-3bcf8053e02e	Аркадий		f	t	2021-12-21	arkady.khvan@gmail.com	bb25265f-b20f-4e0b-95af-3bcf8053e02e
220	pbkdf2_sha256$260000$yDBYH4X35xWheyUN0YTrOu$EYni/Fd4s4RIGztJ1hBRGN9mMwjyV2v5bnFTwhhM05M=	\N	f	05a1e465-d495-44d9-b8b0-822fdc71f87d	Дмитрий		f	t	2021-12-13	demontchik@gmail.com	05a1e465-d495-44d9-b8b0-822fdc71f87d
1688	pbkdf2_sha256$260000$PbFy9SvPu46aBEosazBQhm$P2ASAXezoWRAsZQ6p/8iYZ/2ITl43qm3Frn0vXlBydU=	\N	f	957d1d1f-7c7c-42d7-a517-ee7959bc0f15	Роман		f	t	2021-12-20	sintoniavsgrace@gmail.com	957d1d1f-7c7c-42d7-a517-ee7959bc0f15
1739	pbkdf2_sha256$260000$bUh3NKup5ivBbidG8jtBYe$N/s97G7fy/4Xt9uTSEGIqw6tTqRGjPLIjsLHGQ8Pgig=	\N	f	8f9f1202-5dea-4473-943e-9f21f88ea909	Вадим		f	t	2021-12-20	v.konashov@yandex.ru	8f9f1202-5dea-4473-943e-9f21f88ea909
1791	pbkdf2_sha256$260000$eLDptkH5uZjmdR97yTACWl$XRjp3EoqbL/jxL+n2KpBnnYVCEQaG829RXYcz2EMeg0=	\N	f	c740f072-2b4d-406d-95d2-2fbe74544d07	Алексей	Климов	f	t	2021-12-21	alexey.klimov90@yandex.ru	c740f072-2b4d-406d-95d2-2fbe74544d07
530	pbkdf2_sha256$260000$SkhOgtEAja9EJ3N9a6c4VW$zGHMiyPDk3HiTkyO9Jk5d8Zlgc3jJTGOVL0sC3uo4Jo=	\N	f	e4e929b4-bb85-48da-9650-c90df98a4e6f	Сергей		f	t	2021-12-13	vsp7496828@gmail.com	e4e929b4-bb85-48da-9650-c90df98a4e6f
1689	pbkdf2_sha256$260000$zKbTH2Lljhtksp5mB7CRLj$wgzn948PmaAJaAJgYbme+zoDadvw88pUVEhHRuUJwWg=	\N	f	dd200e72-0348-40b9-b08e-9e07ec0ec0cd	Игорь		f	t	2021-12-20	igor.stepanenko.93@gmail.com	dd200e72-0348-40b9-b08e-9e07ec0ec0cd
1740	pbkdf2_sha256$260000$nSmFkkMUiBbwoNJVP0R4co$ckscpcwHPqRVdDahv1MkhVZPP/z5bcyAsTLQ9ZT9rM4=	\N	f	3efbc6bb-1ad4-4da5-8fd5-320bf1832eed	Ильяс		f	t	2021-12-20	nugaev.ilias-nug@yandex.ru	3efbc6bb-1ad4-4da5-8fd5-320bf1832eed
850	pbkdf2_sha256$260000$b5Zcj7GCgPtadiYb4lvXCX$92QtVtGh7kKrGrKdYqOlIzOP8Sxhb9J1UanAx6xZUiU=	\N	f	97ec09df-81f4-4cef-9bdd-264bb1e5b4da	Сахиб		f	t	2021-12-14	sakh.asckerov2015@yandex.ru	97ec09df-81f4-4cef-9bdd-264bb1e5b4da
1612	pbkdf2_sha256$260000$566MWNWkNZ6S44rKaTQgoA$oyc0C9P5mHtCBrtqTo/7bMddCKyxBLjf+0ElCbqxMsQ=	\N	f	ab4e5d09-8b6a-4565-a8be-98d2ccca291f	Алексей		f	t	2021-12-18	a.v.rassadkin@yandex.ru	ab4e5d09-8b6a-4565-a8be-98d2ccca291f
1690	pbkdf2_sha256$260000$IOOWuZtzk9Fw0sy2BUlqEd$O31o95N5zoe9JG5bQTcUnhsheSD0DwZdlbhSYDtwdkc=	\N	f	3ecd30d0-d463-4903-a550-ab5b832cac29	Михаил		f	t	2021-12-20	miha.26@mail.ru	3ecd30d0-d463-4903-a550-ab5b832cac29
1741	pbkdf2_sha256$260000$l3MXaWso3kEnRnUtyy9nrp$zoroc7kzU19A8N/u+isLdpMj3amhsWbad20MmcK4clI=	\N	f	6439ed25-13dd-4269-b60d-75cfded08394	Тимур		f	t	2021-12-20	itidoctor1984@gmail.com	6439ed25-13dd-4269-b60d-75cfded08394
1277	pbkdf2_sha256$260000$k6H7HPnrvcODrMVZLTB0kb$txH0Z17UIn6RihpwNOP3V3A13JClBuLtLA21Kx0xTTo=	\N	f	cba49421-d475-40c0-912e-69f6d9e6c069	Роман		f	t	2021-12-15	kostenco21@mail.ru	cba49421-d475-40c0-912e-69f6d9e6c069
1613	pbkdf2_sha256$260000$4KzMgJU6Im6unjPw0gxA7h$GWXqak2izvE5TJPWE6N1oVZfI3pV68CxpPsGGMmRbC4=	\N	f	4a712e21-7929-4d61-ac45-df0dcba0a92f			f	t	2021-12-18	krotovaka@mail.ru	4a712e21-7929-4d61-ac45-df0dcba0a92f
1691	pbkdf2_sha256$260000$I0Li3V9nizfVdXwFnA0XM1$shQlgQ9ubzYfXingjsSlDruPvd/Fdqa4/ZM0ephIJiM=	\N	f	48d1b5ea-c4b9-40d6-ac25-6a941fe3f388	Мария		f	t	2021-12-20	maria.korsun@gmail.com	48d1b5ea-c4b9-40d6-ac25-6a941fe3f388
1742	pbkdf2_sha256$260000$PiJlUgpbzxpmwoHhVciGsV$ZtUJUV/ljsAqWV4rLVhwKZ+AYWF47Ryqd8rev1jOZrk=	\N	f	8c252050-9e0d-4012-b5ac-25c448ce269d	Григорий		f	t	2021-12-20	ppt971sol@mail.ru	8c252050-9e0d-4012-b5ac-25c448ce269d
1792	pbkdf2_sha256$260000$ph1K1CV5AWMzzvhLc8qaPS$bv4m2kHSFo5BeArsAPdSDnifyctYoFzJRs/O5jwZq8Q=	\N	f	86fa4963-81d1-4cb1-9ffb-6e4b7bf4d154	Сергей		f	t	2021-12-21	slovaque@ya.ru	86fa4963-81d1-4cb1-9ffb-6e4b7bf4d154
992	pbkdf2_sha256$260000$I9sAkN9NSRpJYGGVxbYvCh$TLfB2ruSj+Pr1FY63+zyw7k6+1TaA0us5K+eJFgAZEg=	\N	f	fc89175e-300d-45d1-a19d-d60b3bb5270d	Павел		f	t	2021-12-14	astafpavel@gmail.com	fc89175e-300d-45d1-a19d-d60b3bb5270d
1692	pbkdf2_sha256$260000$mbPstEFsB94V0MdFnCVQuB$zzPFDF3YWJk1VPj6elKeHOj7otNw/aK2fZt70rstgOg=	\N	f	e73d90b0-1a68-43d9-801a-05183a62dbb9	Владимир		f	t	2021-12-20	b-425660@mail.ru	e73d90b0-1a68-43d9-801a-05183a62dbb9
1743	pbkdf2_sha256$260000$K1vHhvgaWrG3JfUHFKBTdv$Q0CXFf2dnKrVKkHKNyygw3EG2zF6tMpwebjbcBoC7QY=	\N	f	3726a67d-983b-4e9c-949a-974735688575	Артём		f	t	2021-12-20	timon.bagdos@gmail.com	3726a67d-983b-4e9c-949a-974735688575
1793	pbkdf2_sha256$260000$Z42RDbyVjstd77Pr4Zu15H$mHmHq7cjtlTJ+TTm633z6PfpjbMuw70AkU2/07zlBs4=	\N	f	58378d2c-51d1-4e87-a43a-ca2ed6b50554	Елена		f	t	2021-12-21	miksel@list.ru	58378d2c-51d1-4e87-a43a-ca2ed6b50554
1614	pbkdf2_sha256$260000$KgooHmwlmVU8u2v5s02kvW$msommofL4ZggvOUUckDBGaeTpmOaEcn5a5pYGc2/leY=	\N	f	c40ee988-d061-47c4-a4ff-f3a92f9f89ff	Юлия		f	t	2021-12-18	ameno09@bk.ru	c40ee988-d061-47c4-a4ff-f3a92f9f89ff
1693	pbkdf2_sha256$260000$vTMd3WCli88Vjg1snb2S5P$TnBp2DK6r2bS3eeouvnnEwfDSgiDsQLUIAQMNox2dJY=	\N	f	3e2949f9-a9d3-43da-91fb-46c2d0022a54	Елена		f	t	2021-12-20	elena664848@mail.ru	3e2949f9-a9d3-43da-91fb-46c2d0022a54
1744	pbkdf2_sha256$260000$QVcpn3EdrPhSx06uCT03Wb$aLZpQnxOdXMUD0X3rEHc5XlAbRuyZ834Us+WASH09aE=	\N	f	973c4dbc-ce1e-419c-8a4a-4f86575c0877	Дмитрий		f	t	2021-12-20	dimaul98@bk.ru	973c4dbc-ce1e-419c-8a4a-4f86575c0877
1794	pbkdf2_sha256$260000$WfcnGctVT84UmNGeXgNdo0$z2Wt+0Ydu072IeIHhSSCWr4dHQS+Hs9rg2R31qQ9LFo=	\N	f	c62f0569-9d64-40a6-a33e-7247faab4d7b	Егор		f	t	2021-12-21	egor.d2000@yandex.ru	c62f0569-9d64-40a6-a33e-7247faab4d7b
1615	pbkdf2_sha256$260000$QsIxm0ycHX1PJLvCdPVrXq$9xdYx/ad0LGivcMywQqbi9F5p4XoiC6mh97ULEHrce0=	\N	f	3d5c1c58-a38a-4f30-93b3-7211a71e4869	Виталий	Инвестор	f	t	2021-12-18	v.vorobev05011983@gmail.com	3d5c1c58-a38a-4f30-93b3-7211a71e4869
1694	pbkdf2_sha256$260000$uMSv1f29tIsCUzBtdz3qCN$tXQhkk6Xv79QiPkjEkiMr7dclUjFcqhdZvJI2zrMH10=	\N	f	611ac679-a1eb-4282-8d63-dae300a55494	Виктор		f	t	2021-12-20	cool.kostiak@yandex.ru	611ac679-a1eb-4282-8d63-dae300a55494
1745	pbkdf2_sha256$260000$NmNXPKKlCRzJCR54oE7Zbj$Q2HRgprUY21OnRGrKVVof1j77frGqEqqnl6J0yYfpkw=	\N	f	46b100fa-9f1d-45b6-b084-a740b76b3aed	Konstantin		f	t	2021-12-20	romanovkm@mail.ru	46b100fa-9f1d-45b6-b084-a740b76b3aed
1795	pbkdf2_sha256$260000$pyRxelqJOwW38t5ftweE2u$Lka12GlYCsa3DlQs3qM4dn31RqLlSz4cSS+VbSPWlDY=	\N	f	879985d3-e0ce-42ac-a1cd-257af53ad650	Анна		f	t	2021-12-21	nyuta591@gmail.com	879985d3-e0ce-42ac-a1cd-257af53ad650
1616	pbkdf2_sha256$260000$9CCB6LYysiYI62GAKfrPLO$tGpAV/cDy1yVcC2HjYdGGkJwHKfOJACYT9WCh2md5CA=	\N	f	40dfc6c1-c19c-42e8-8203-a66019c78282	Владимир		f	t	2021-12-18	milovan78@yandex.ru	40dfc6c1-c19c-42e8-8203-a66019c78282
1695	pbkdf2_sha256$260000$TQPC779hyyBtZamEMU4RqY$u8Fy76qgrWPJB05ersdhVSzubUUzDibShBr3kwV5k9s=	\N	f	c9ed26d7-eae3-4b27-a9ac-075a41f45b9e	Андрей	Красильников	f	t	2021-12-20	ak84.04@yandex.ru	c9ed26d7-eae3-4b27-a9ac-075a41f45b9e
1746	pbkdf2_sha256$260000$zrC5U22AV5kRCzJ1rWS23H$2MsQOCDHGKcNpj2tq4sooB1n0jOYZVN/fRjcdzsGBOw=	\N	f	e84bcd0d-5910-4b9d-bd8f-3b404d285398	Роман		f	t	2021-12-20	shamanich26@mail.ru	e84bcd0d-5910-4b9d-bd8f-3b404d285398
1796	pbkdf2_sha256$260000$5nFCaAQit9O774l2ILSW1b$ro5jzQidaDXZU/ofRkV/pAdV9JVXTyrTfESIVdxL5fs=	\N	f	face1bf8-5aae-4d7c-8286-c54dcb058fbf	Руслан		f	t	2021-12-21	ruslan.kuanyshev@outlook.com	face1bf8-5aae-4d7c-8286-c54dcb058fbf
1617	pbkdf2_sha256$260000$M8uovnKLIeImMuNPGipv30$El7O5JQJd0u48WjoI0fon3KPkz94o+kcCuuUf93Ff3Q=	\N	f	9482e35a-e5fa-4859-9797-62d137f98d69	Татьяна		f	t	2021-12-18	stg1001@yandex.ru	9482e35a-e5fa-4859-9797-62d137f98d69
1747	pbkdf2_sha256$260000$vWrdUyZWRwanCHrT55PPoJ$kBy2SBpIBT1NSAFBYnllt0FPIMDezho/LZTg9qJaArc=	\N	f	4bee9f8b-87ac-4ae6-8100-f52103681111	Сергей		f	t	2021-12-20	prostodengi@gmail.com	4bee9f8b-87ac-4ae6-8100-f52103681111
1797	pbkdf2_sha256$260000$0St12e6RpbCSEMdplWUvyV$68JDZVe8SDEQELuikBJQnjpebK5EwQbQsFUWu/C6gV8=	\N	f	5dbe071e-4e90-404f-b3cc-9063477f1e51			f	t	2021-12-21	lazermichelflowers@ya.ru	5dbe071e-4e90-404f-b3cc-9063477f1e51
1696	pbkdf2_sha256$260000$fCD7XkMIpruu0pOzsqdlHk$rvUBpr3NRb/i4wGoyLAcQXJVHFDRDQ9V4YRykDfF7kY=	\N	f	4345ad82-d8b1-4a1d-9a14-ef92bc3626bb	Константин		f	t	2021-12-20	sawyer23@mail.ru	4345ad82-d8b1-4a1d-9a14-ef92bc3626bb
1006	pbkdf2_sha256$260000$javFUwzVlHlqmxSoubUMhG$xKuBPP0v+JDgww4y2KV3HaBBT6OLhsHymIV50IIZ0kY=	\N	f	7a822591-350d-4461-9170-df2f04951fc3	Гелани		f	t	2021-12-14	gelanikr@mail.ru	7a822591-350d-4461-9170-df2f04951fc3
1577	pbkdf2_sha256$260000$T5qDFotv2SiWuoyYFW3oEN$qTVZFOV43xnBsLcNdFZAEKxrLOPUvX809wfwm15Z0bI=	\N	f	07e2f117-87ee-4cdf-8ee6-1f42c4b3acb8	Женя		f	t	2021-12-17	klimenkov_87@inbox.ru	07e2f117-87ee-4cdf-8ee6-1f42c4b3acb8
1748	pbkdf2_sha256$260000$Ff8pD9bA1kci8aOxKNwM2x$L9MdaT1QabM6RZMB5tL5CM9qpgfqxx8MSlF381C8X/4=	\N	f	1e1f1132-2eb8-49fc-8ee3-44ac34242c7f	Владимир		f	t	2021-12-20	motnop@gmail.com	1e1f1132-2eb8-49fc-8ee3-44ac34242c7f
1798	pbkdf2_sha256$260000$RVSRo6MWHJcEbK1dD0kfKN$pIjvlT/9lrPW7gQ+brjboaLB2e1AOwuWs/PBXD3Chnk=	\N	f	bda981f1-60f3-43c0-8db4-e030a3f53284	Михаил		f	t	2021-12-21	vvv.mxk@mail.ru	bda981f1-60f3-43c0-8db4-e030a3f53284
1618	pbkdf2_sha256$260000$neG7hMhlK6NNq7pQ3wiq3d$Lp9VTOF0nF38IGHLqK7YC0fYVKDzTudzjQyI9bAThdg=	\N	f	97288e09-9940-4feb-a426-987270e14a8b	Барановский Виталий		f	t	2021-12-18	traxtar@inbox.ru	97288e09-9940-4feb-a426-987270e14a8b
1697	pbkdf2_sha256$260000$Y0e8TSz0MMS1GadEvCmH0s$XQZ5S4SAMbXhHv0R+/hMMFXfJSBYW22JB+4KFpYHgv4=	\N	f	c125d7fb-eb8f-458a-bcea-0a261df51a90	Андрей		f	t	2021-12-20	kvkrevenko@mail.ru	c125d7fb-eb8f-458a-bcea-0a261df51a90
1749	pbkdf2_sha256$260000$BCSvyKscLrZ4qN0GJHK4tn$wRBOdwog/2GpGzoyoz/Ct9bzorZOG2SKu+ZWVlJBtD8=	\N	f	62239422-6373-40a0-aad3-6d245079b2d8	Станислав		f	t	2021-12-20	stas92902@gmail.com	62239422-6373-40a0-aad3-6d245079b2d8
1799	pbkdf2_sha256$260000$UC7oSO4y7u5VygtzhZZGtx$2lXsfa+WA3cplqJBsdgcAFMhRWsIb+jNmTlR4w9thrk=	\N	f	7ae227a5-c74d-42c8-971c-8d7919fa50d6	Алексей		f	t	2021-12-21	avk687@gmail.com	7ae227a5-c74d-42c8-971c-8d7919fa50d6
1619	pbkdf2_sha256$260000$6xuF5MUNn59m3OXxPkgnC4$ILW11TE1PGJz446CKgqjiO4lwC2Dsq1FOHJl/oUKBjw=	\N	f	bc17ce56-d358-4066-b63f-b46438db32ca	Амангельды		f	t	2021-12-18	magzamov77@gmail.com	bc17ce56-d358-4066-b63f-b46438db32ca
917	pbkdf2_sha256$260000$gmefVhz0R8PpWyXY4VnXgw$S0Py6cN+IETpLU4kTNxhg6JJilp0TxQKt00YdH0/Eps=	\N	f	3aec369d-70d5-4b52-9d0d-dc2d48827ed9	Валерия		f	t	2021-12-14	dimler1@rambler.ru	3aec369d-70d5-4b52-9d0d-dc2d48827ed9
1750	pbkdf2_sha256$260000$PDcNOETB1YkzciYciYDA0q$rtJfgItNm+DEDAh4l3xGtn89q5CuoW4/kmr95dZRyVs=	\N	f	e169859e-f8ce-4fb9-8889-80e4fa170bc5	Николай		f	t	2021-12-20	mk5680@mail.ru	e169859e-f8ce-4fb9-8889-80e4fa170bc5
1800	pbkdf2_sha256$260000$HTNoHcaWXqTVPwy5RouM4L$ikPQFwyhp6CAsCM5CHH7bGlepGP5qZM2WNFAKsl+4Eo=	\N	f	8e8c23a3-1801-4137-9ce1-1c5032491a55			f	t	2021-12-21	saneevmu@gmail.com	8e8c23a3-1801-4137-9ce1-1c5032491a55
1443	pbkdf2_sha256$260000$TdQacOYGlqZyEnpmBEVdxB$gw6mp5oW+QEk/951WrjyoKZHoskuG/cPJUyN2z3V8qQ=	\N	f	d4cb2ed6-743f-4bd3-8fef-6a20e2bf3669	Василий		f	t	2021-12-17	promenergo1@yandex.ru	d4cb2ed6-743f-4bd3-8fef-6a20e2bf3669
1620	pbkdf2_sha256$260000$KcyprSNMbGl38fcPXSfESP$gPaxSrr2bi9t4YFnhhSynB3kS0EnfzoEqn3pMptIPGc=	\N	f	a44378cb-db4a-4811-acff-cb789ecbff3a	Александр		f	t	2021-12-18	kocherov_an@mail.ru	a44378cb-db4a-4811-acff-cb789ecbff3a
1698	pbkdf2_sha256$260000$72XOFX6hh5y00mDtdRy2FX$tQFK07i1Q6fjKlrIjLn2XXUT1+YN0po76JNYP9gOdVE=	\N	f	48b3597c-a003-4391-9d36-127f41542ebd	Иван		f	t	2021-12-20	anclvania@mail.ru	48b3597c-a003-4391-9d36-127f41542ebd
1751	pbkdf2_sha256$260000$E2GoLsQIteM6LS0bh8w0w9$+lJQah16Ez5gLgUqu02L4z7KiVNjTLL4OFiENfBiXUY=	\N	f	ade45652-f297-4ccc-be55-6ad65d688a0a	Светлана		f	t	2021-12-20	fot379@yandex.ru	ade45652-f297-4ccc-be55-6ad65d688a0a
1801	pbkdf2_sha256$260000$50uva2WTlc1IDV9ceDDU3u$ZyZg2vqZNK90sPcvii5qXuCNqMYpXO1amcYLZuaBnj4=	\N	f	9d77bad7-42dc-4067-83b4-a7501005107a	Лариса	Борисова	f	t	2021-12-21	borisova2209@mail.ru	9d77bad7-42dc-4067-83b4-a7501005107a
1474	pbkdf2_sha256$260000$bV10wvNfiFGgM3jalbwvPM$yLQjCGErrMmt0hnsX+uxO4fqPJMSOyMO3KRcHT3pUuU=	\N	f	45cf3324-455b-4a97-a1ab-dde1435e278e	Евгений		f	t	2021-12-17	mes82@yandex.ru	45cf3324-455b-4a97-a1ab-dde1435e278e
1621	pbkdf2_sha256$260000$oTQ6MfSwFOadN7EGDRE4vK$Aibq94LVz8EYo7PnmS5wjzZ7PUA7mSwuZrUFB5Z4EAA=	\N	f	a6c65b24-38ad-4842-a774-872f08e2fe1d	Александр		f	t	2021-12-18	bombastic92@yandex.ru	a6c65b24-38ad-4842-a774-872f08e2fe1d
1752	pbkdf2_sha256$260000$tHsRS38pEjXWfCP6CwF3ne$oz+LT2v3lfEvlyultpIttvD7FyeWgZllr9dohCxDuno=	\N	f	113997d9-0c56-45b3-b13c-847ed326a821	Ярослав		f	t	2021-12-20	yar.obryad@yandex.ru	113997d9-0c56-45b3-b13c-847ed326a821
823	pbkdf2_sha256$260000$qEkDjLaOUhs2Rz2WJRok8r$6fmVHbuEXW99e16HlTuG6I2h5Q7xbqgCK4BtXxnI8tk=	\N	f	2a337be5-30a9-4a5c-872d-dd0a060b4e8d	Игорь		f	t	2021-12-14	gvozdevigor@yandex.ru	2a337be5-30a9-4a5c-872d-dd0a060b4e8d
1699	pbkdf2_sha256$260000$LeQYqAoGU4AZmKvohwkval$A/rrzavBL6iYTQMDKnsPfyq99/gypfQWpxNpKApZzzQ=	\N	f	d69cc030-bd3d-4597-bba1-a6f15c3a68b3	Влад		f	t	2021-12-20	vladislav.rozhdestvenskiy@gmail.com	d69cc030-bd3d-4597-bba1-a6f15c3a68b3
1506	pbkdf2_sha256$260000$j29TEDruOmLJrS9DSXsvSi$smWA/1UUh5urXBTO56WCQXQSISlcPAzc2x/JLxFepa4=	\N	f	4931d144-e857-4faa-8b0f-d46de08f9a70	Михаил		f	t	2021-12-17	rdydb1st@gmail.com	4931d144-e857-4faa-8b0f-d46de08f9a70
1473	pbkdf2_sha256$260000$fth5mVyAND1dGfHWsXvykF$n8XDbFO0gqa7s8Y1xw2J0O156N2wNEnxUTpxCvj0SjE=	\N	f	2823dd13-553e-48c0-9a89-943ef8f5ebe3	Айрат		f	t	2021-12-17	shamsutdinov.ayrat@bk.ru	2823dd13-553e-48c0-9a89-943ef8f5ebe3
1466	pbkdf2_sha256$260000$Aqg3A37CFwSoSXvOZCjfrw$7qSbxsjlLMEOMUH1dp3YhFIG7wq02ns2TLPvgv5HqLM=	\N	f	f669a743-0ff0-426f-a66d-31d5257b6047	глеб		f	t	2021-12-17	titgb@mail.ru	f669a743-0ff0-426f-a66d-31d5257b6047
1622	pbkdf2_sha256$260000$lk0NuyQc1DcOC36kJzkBWi$xvygGCgc0emCaOzSiPL2VFLI6xiLioc7VDFjHhR/l48=	\N	f	219ccb53-daa6-4183-bfd0-8af6de0eb56c	Arman		f	t	2021-12-18	armank8@gmail.com	219ccb53-daa6-4183-bfd0-8af6de0eb56c
1700	pbkdf2_sha256$260000$nbQ666a1pcEDzFyGkZVhkU$kz65rNIM17ZYJRpoOlfcX2+tfGnJJZ4hpgZTIKMLZRU=	\N	f	addd0b41-c82f-454c-8ff2-3e7c86a54222	Андрей		f	t	2021-12-20	aborisov92@mail.ru	addd0b41-c82f-454c-8ff2-3e7c86a54222
1753	pbkdf2_sha256$260000$iQcSpc9iZivdWdtZ9RD644$rq4t76QcC6vx+i0C0Ew8EbcBgefMkc3Pdxh14RvPZtI=	\N	f	bbaecea2-cf63-48db-9617-d1d87bc238e4	Максим		f	t	2021-12-20	maks84@yandex.ru	bbaecea2-cf63-48db-9617-d1d87bc238e4
1475	pbkdf2_sha256$260000$2Q2NqUpeXXfliNgiOzbsPB$5xaLFEt50WawXlj/VCzGXHRW9GDAC03UNfqlzS1PYnk=	\N	f	5591555b-0473-465e-8df4-d0c212f45fbe	Андрей		f	t	2021-12-17	gorbunov_76@mail.ru	5591555b-0473-465e-8df4-d0c212f45fbe
1802	pbkdf2_sha256$260000$NvWwUvLtBJECCeaZDLKcNE$bVVS+NjYVxdtclaEUgP/daC3oOnrSOvroyF9yMK+T4M=	\N	f	0afc272f-0d8a-4d8b-8efe-d2f29db2dd23	Николай		f	t	2021-12-21	nvchizov@mail.ru	0afc272f-0d8a-4d8b-8efe-d2f29db2dd23
1465	pbkdf2_sha256$260000$72VdCrvjB8T7e1yrRcPGKO$vjOrOPoV2/YVVO9E08ywhFStW48UdPc5ibGO2On8KTA=	\N	f	e86a7ac4-1754-4e61-ba84-a07d09e285aa	Полина		f	t	2021-12-17	noff.polina@gmail.com	e86a7ac4-1754-4e61-ba84-a07d09e285aa
1467	pbkdf2_sha256$260000$2Dgrrx1pC6Iqfb2llKUvxz$Ze0afWKZBJPeuAnfE6Bj11wYNU4h1IuGqxOhQUAg5V8=	\N	f	19ea605b-7527-49c9-a157-5d02f495cd5f	Дмитрий		f	t	2021-12-17	dimon.butovo@gmail.com	19ea605b-7527-49c9-a157-5d02f495cd5f
1468	pbkdf2_sha256$260000$DfH4uRqcKabYYOD6g8nlZw$QTZV8aD8vQFru5dVpFAi7BkiNRS+qVYOe/QSHTbOUCs=	\N	f	c6d7e107-a940-47be-97d1-2b5e097956b0	Дмитрий		f	t	2021-12-17	dashmodin@yandex.ru	c6d7e107-a940-47be-97d1-2b5e097956b0
1469	pbkdf2_sha256$260000$24oEgYKyldW4tKwrXH4wS8$E2rTwVSAsKPESh5DzfqbVmlSv9W57NVo/5ZUdV9sKLk=	\N	f	adfdeb0b-f460-4be0-a767-09186738fdd9	Евгений Верещагин		f	t	2021-12-17	vereschagine1@gmail.com	adfdeb0b-f460-4be0-a767-09186738fdd9
1470	pbkdf2_sha256$260000$bFrCuoOAVDv5kwmPLxJKZt$fKGziexy4DLlPeeWpC4hJ8v0ao1rERd+GKcK5Ky/Lis=	\N	f	91001116-ba40-443c-b02a-5f74909469c0	Andrey		f	t	2021-12-17	a.danchenko@dvgr.ru	91001116-ba40-443c-b02a-5f74909469c0
1471	pbkdf2_sha256$260000$uTMJ7Qrqc1Heu1M0Ube0w4$+Q6MSOrUWrrzbZVXCby8UnG4E63KIHtSLYO5RRCi5q8=	\N	f	15f04dc9-2952-48b9-8b2a-a13a88873948	Виталий		f	t	2021-12-17	solo525@yandex.ru	15f04dc9-2952-48b9-8b2a-a13a88873948
1472	pbkdf2_sha256$260000$h4zypv5MzekCooOEDwjjnw$jnSXy+RKuf0JGsmsvR2EfWOqiWJhfWj2LPM5par3b+Y=	\N	f	68bcb823-6a28-4520-8193-5265c822515e	Дмитрий		f	t	2021-12-17	dmitryratanov@gmail.com	68bcb823-6a28-4520-8193-5265c822515e
1476	pbkdf2_sha256$260000$0jgRsKiGBu8DUyCKVubH92$XTGHQZdcNb/ASwM7YfAL9aPXiqDP1Bv3I1p205mirUQ=	\N	f	159e785f-4236-4931-99d9-cbd0d0e425c2	Рамиль		f	t	2021-12-17	tutmanov@gmail.com	159e785f-4236-4931-99d9-cbd0d0e425c2
1477	pbkdf2_sha256$260000$yLVFg70EAvTHkBz77R2fjC$7kkwzh7k1Uk5mi7X/LZwTiAZaBTCNyC3A7bVmlXkHoQ=	\N	f	0ea2deb4-d0ef-4734-bdb9-0972b8b35854	Виолетта		f	t	2021-12-17	violka_vyskubova@mail.ru	0ea2deb4-d0ef-4734-bdb9-0972b8b35854
1478	pbkdf2_sha256$260000$UFugSgyHdONMSfNIIu7ufg$xtbIg1K1dRJ3WjytAcqd6ca6a/zel1Zm97Kb6cheeSo=	\N	f	4cc89e37-8a4e-4e0a-8650-81426bae5c59	Михаил		f	t	2021-12-17	mih.caraban@yandex.ru	4cc89e37-8a4e-4e0a-8650-81426bae5c59
1479	pbkdf2_sha256$260000$4RIU4HELBdzoeF66BgGTwq$ZdAXNvct9qgaK7Z+bQ+BX00ZSWGbAfSnx9g8/2PuCyQ=	\N	f	8d39e067-6d73-4b92-bfb4-7aeb17d421c0	Александр Медведев		f	t	2021-12-17	alexmoove@gmail.com	8d39e067-6d73-4b92-bfb4-7aeb17d421c0
1541	pbkdf2_sha256$260000$GEf3hgUrnPAofvK8DNbD4w$4eBOxx3WcRbqRUbanX6mw3SOnF9caAsGVCApy8/FJvE=	\N	f	2f0003fe-3ee4-44c5-b82c-b91f4d48f89a	Илья Дмитриев		f	t	2021-12-17	ge0metr7@yandex.ru	2f0003fe-3ee4-44c5-b82c-b91f4d48f89a
1543	pbkdf2_sha256$260000$WlFsQqcfxTqIVTfUulNHbH$2Y0+Iztu6PWpxgmxW+kCBDpkLDfgxbgLKejs9u8F8Ww=	\N	f	cfe94b67-9f69-4869-b0a3-10edb3483492	Илья		f	t	2021-12-17	74ashi@gmail.com	cfe94b67-9f69-4869-b0a3-10edb3483492
1544	pbkdf2_sha256$260000$YPIaZPUwDQ1EIrdsplhEoB$SDd2YA3XTVnD3IL+emjMeZQl+2wmUD4noPXq5au97og=	\N	f	9d917c3b-ac7e-4327-a228-a0141c1b8206	Григорий		f	t	2021-12-17	greg160772@gmail.com	9d917c3b-ac7e-4327-a228-a0141c1b8206
1546	pbkdf2_sha256$260000$nZYaYJxcJCcBD9KqHftgdR$9nFibAMLBox+UMwAnBxQ4Erw3lGUOpoLL0MCRHDWiK0=	\N	f	82b30c65-bf66-48df-bc0d-fe47dc752618	Дмитрий		f	t	2021-12-17	3174051@gmail.com	82b30c65-bf66-48df-bc0d-fe47dc752618
1547	pbkdf2_sha256$260000$QcqBHJaVa0FfXOIdiEdqWG$ovn9BYDxcjr7AyeOs3ODafVmKhzAPSqJeEAUFT9JeDk=	\N	f	4d38cb69-8916-4fc4-89a4-52ab765c0b63	Ольга		f	t	2021-12-17	voolgaaa@gmail.com	4d38cb69-8916-4fc4-89a4-52ab765c0b63
1548	pbkdf2_sha256$260000$bvDc3KylE3XckV3qtBYURN$J6+b/kYFOtQNDD2HiIwoDWS4gkIE5KLsUo36u23Oumo=	\N	f	190521c5-70ca-4e77-9602-ae386ec97990	Валентин		f	t	2021-12-17	valentin.tolkunov@gmail.com	190521c5-70ca-4e77-9602-ae386ec97990
1550	pbkdf2_sha256$260000$cGjSGwXgNKjy2sVIfQObfn$I24P2Qo7U6GehEjPZAXsuLwyUeIz5Jk8Kw1DvD0DfSY=	\N	f	4719c353-28c3-4294-8a7d-fa435d326d6a	Вадим		f	t	2021-12-17	_-379-_@mail.ru	4719c353-28c3-4294-8a7d-fa435d326d6a
1552	pbkdf2_sha256$260000$gcpynVphN5Er2Bg6TLRL64$FZkKfbYf5VlfanuvqeIdCRZjSoEfL+sKdzP9UI2G9bM=	\N	f	8adb2356-34ea-4b4a-8a42-112098906e09			f	t	2021-12-17	aasidorenkov1973@mail.ru	8adb2356-34ea-4b4a-8a42-112098906e09
1553	pbkdf2_sha256$260000$mPMa3CnWigr0dPMZv0l78l$mzM3Z+gQkclD7MCwSciTFIo4zAR9JRnqD0CnhJHdnvs=	\N	f	93818381-b5e3-43d2-9bf2-29b6711a91b2	Виктор		f	t	2021-12-17	colllfort@gmail.com	93818381-b5e3-43d2-9bf2-29b6711a91b2
1556	pbkdf2_sha256$260000$TRFsySXWNgMhRJ5CFZVzTA$cM1NZW1SV+BgUsEZu/J08f77Z7EFEtpO6byMtJvTTMk=	\N	f	09efc89c-c931-4a1b-a4d4-3dbba6c9077b	Алексей		f	t	2021-12-17	mozilla__firefox@mail.ru	09efc89c-c931-4a1b-a4d4-3dbba6c9077b
1557	pbkdf2_sha256$260000$cMGpK5QGoFhc99n005gBal$8PEkt2eK9nHoDLulcRQFwtwnDuBzFnC0MgaACv3qs3E=	\N	f	2156c231-569c-45ce-b282-b4d28069b2ea	Александр		f	t	2021-12-17	a.turkovskiy@yandex.ru	2156c231-569c-45ce-b282-b4d28069b2ea
1558	pbkdf2_sha256$260000$VdFywcE8xZZRwSe5KPt1Fs$NotlVlDh0KAd7uq2kqqqMync47ubeVYCXgP2vG606RU=	\N	f	db5baa03-447e-485a-acf3-ef9726f5b27f	Илья		f	t	2021-12-17	krasotkakatk33@gmail.com	db5baa03-447e-485a-acf3-ef9726f5b27f
1560	pbkdf2_sha256$260000$pIw6AFKczZ1WYuTVXtgkzP$j4lEhEXGGkaPq8eGy0V/kKsNXBu5zS4Bm4I6+79NpZ0=	\N	f	7fe55250-949b-41c0-bba5-ef4d8c78fb92	Татьяна		f	t	2021-12-17	burykina_t@mail.ru	7fe55250-949b-41c0-bba5-ef4d8c78fb92
1540	pbkdf2_sha256$260000$ovyrdNpeaUhGyshWyo2lsI$g4cbsf6uhWn3m6WCZdMdLMya8SdxXDnEE/Caa+/Sigs=	\N	f	7d259760-e334-4018-ab35-441b63abfb3e	Иван		f	t	2021-12-17	jean_scr@mail.ru	7d259760-e334-4018-ab35-441b63abfb3e
1545	pbkdf2_sha256$260000$E7Mp4MsYeQq0Oo9YJ0QyQn$Gqx7rkZKpo7p1VWMJJQ19SqktuvWe6bKEen2PYOVyK0=	\N	f	329c2f5c-788b-4afc-ba84-afbc099a6ab8	Игорь		f	t	2021-12-17	igorv3@list.ru	329c2f5c-788b-4afc-ba84-afbc099a6ab8
1555	pbkdf2_sha256$260000$AIKbWqpoAveFxgEXUEz72Z$TgSjlsSSHkoVLG+NG2fsAe/cofA9t392wUY5AANKV2c=	\N	f	e087ab22-2f6b-4cc3-9c3d-7f83c59d642e	Вероника		f	t	2021-12-17	veron-konfetti@list.ru	e087ab22-2f6b-4cc3-9c3d-7f83c59d642e
1549	pbkdf2_sha256$260000$Nq43sYWiq6wuUP1We7mn2r$n1FnaZIY81D6qIpPp+e9d3M2nXkkuQjnYy6KUgSTgLY=	\N	f	35fa6ebe-6759-4c2e-b5cd-37962511119c	Дмитрий		f	t	2021-12-17	dimylik@mail.ru	35fa6ebe-6759-4c2e-b5cd-37962511119c
1623	pbkdf2_sha256$260000$suABIDEniU7JGfh0NEg1r6$veHjcdILsxh+yoQTEJ7CUdTLeTgP4nTaQMNiZUL33gE=	\N	f	7d8d4ca9-2796-4012-96c8-30b55051fecc	Валерий		f	t	2021-12-18	vamotest@gmail.com	7d8d4ca9-2796-4012-96c8-30b55051fecc
1551	pbkdf2_sha256$260000$tc4QikxJnAR3kAyujpT84i$Uv2dxaBXo66lpx5y9Zcqb2fFI/urjLfiVqmqevJay4U=	\N	f	80a05133-35f6-4007-8ab9-7f2f295f65da	Виталий		f	t	2021-12-17	namelessv@mail.ru	80a05133-35f6-4007-8ab9-7f2f295f65da
1554	pbkdf2_sha256$260000$flFyXHi4q0agBW8yOtFHKY$VFN8nszMgf9fDzYoH7j/I7Drie1Af3VCtGA4pmitOpk=	\N	f	ea6d13ba-7f86-4b7a-8a43-7c87b7ad7870	Алексей		f	t	2021-12-17	alexm7@mail.ru	ea6d13ba-7f86-4b7a-8a43-7c87b7ad7870
1565	pbkdf2_sha256$260000$WNbYC3lbl7syhQILeQtguh$VZxD+xKR8pfFK0PhgXOO/YZ7cyD9KvcOcmgdrIh29uA=	\N	f	ec612798-c3da-4351-a5c8-fc7bf07c1fcd	Василий		f	t	2021-12-17	kefirkartoshkin@mail.ru	ec612798-c3da-4351-a5c8-fc7bf07c1fcd
1701	pbkdf2_sha256$260000$EcnowQxPD82F5P2ZYVSIxd$sjeYO5I8EX6XaT41ZP9VpcYIwGag5WDcO1QDw8Sj2to=	\N	f	1fa3743e-137d-4c21-bf48-4dd69a23a8be	Наталья		f	t	2021-12-20	natali--1969@mail.ru	1fa3743e-137d-4c21-bf48-4dd69a23a8be
1754	pbkdf2_sha256$260000$oxVYZoEbAyFYcxtPp9i4U8$rzwx3CGkv31DtFKJtzDTs2vRfG1JL+ftSQFm01lssLM=	\N	f	313014e9-efa0-41be-a5a5-5868be4f771b	Александр		f	t	2021-12-20	scat30@mail.ru	313014e9-efa0-41be-a5a5-5868be4f771b
1432	pbkdf2_sha256$260000$8EHj4whduHeGqe7YvD8cUD$CbMK6GLq3qX2IFAkK6bYqVFXOKLuVmj18fe8O1eq4xU=	\N	f	8ee8f117-2ff4-41d2-89e0-32c619a6e595	Сергей		f	t	2021-12-16	sergey.ch.74@mail.ru	8ee8f117-2ff4-41d2-89e0-32c619a6e595
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 90, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 39, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 73, true);


--
-- Name: files_document_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_document_file_id_seq', 2, true);


--
-- Name: files_image_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_image_file_id_seq', 423, true);


--
-- Name: files_video_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_video_file_id_seq', 41, true);


--
-- Name: learning_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lesson_id_seq', 30, true);


--
-- Name: learning_lessonrating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lessonrating_id_seq', 556, true);


--
-- Name: learning_questionanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_questionanswer_id_seq', 13388, true);


--
-- Name: learning_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_subject_id_seq', 19, true);


--
-- Name: learning_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_test_id_seq', 1, true);


--
-- Name: learning_testassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testassignment_id_seq', 549, true);


--
-- Name: learning_testassignmentquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testassignmentquestion_id_seq', 5860, true);


--
-- Name: learning_testquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testquestion_id_seq', 1, true);


--
-- Name: users_completedtest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_completedtest_id_seq', 2694, true);


--
-- Name: users_lessonprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_lessonprogress_id_seq', 1, false);


--
-- Name: users_passwordkey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_passwordkey_id_seq', 1, true);


--
-- Name: users_subjectprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_subjectprogress_id_seq', 1, false);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1807, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: files_document_file files_document_file_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_document_file
    ADD CONSTRAINT files_document_file_pkey PRIMARY KEY (id);


--
-- Name: files_document_file files_document_file_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_document_file
    ADD CONSTRAINT files_document_file_uuid_key UNIQUE (uuid);


--
-- Name: files_image_file files_image_file_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_image_file
    ADD CONSTRAINT files_image_file_pkey PRIMARY KEY (id);


--
-- Name: files_image_file files_image_file_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_image_file
    ADD CONSTRAINT files_image_file_uuid_key UNIQUE (uuid);


--
-- Name: files_video_file files_video_file_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_video_file
    ADD CONSTRAINT files_video_file_pkey PRIMARY KEY (id);


--
-- Name: files_video_file files_video_file_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.files_video_file
    ADD CONSTRAINT files_video_file_uuid_key UNIQUE (uuid);


--
-- Name: learning_lesson learning_lesson_document_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_document_id_key UNIQUE (document_id);


--
-- Name: learning_lesson learning_lesson_image_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_image_id_key UNIQUE (image_id);


--
-- Name: learning_lesson learning_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_pkey PRIMARY KEY (id);


--
-- Name: learning_lesson learning_lesson_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_slug_key UNIQUE (slug);


--
-- Name: learning_lesson learning_lesson_test_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_test_id_key UNIQUE (test_id);


--
-- Name: learning_lesson learning_lesson_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_uuid_key UNIQUE (uuid);


--
-- Name: learning_lesson learning_lesson_video_id_ea46f40c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_video_id_ea46f40c_uniq UNIQUE (video_id);


--
-- Name: learning_lesson learning_lesson_video_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_video_id_key UNIQUE (video_id);


--
-- Name: learning_lessonrating learning_lessonrating_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lessonrating
    ADD CONSTRAINT learning_lessonrating_pkey PRIMARY KEY (id);


--
-- Name: learning_lessonrating learning_lessonrating_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lessonrating
    ADD CONSTRAINT learning_lessonrating_uuid_key UNIQUE (uuid);


--
-- Name: learning_questionanswer learning_questionanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_questionanswer_pkey PRIMARY KEY (id);


--
-- Name: learning_questionanswer learning_questionanswer_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_questionanswer_uuid_key UNIQUE (uuid);


--
-- Name: learning_subject learning_subject_image_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_image_id_key UNIQUE (image_id);


--
-- Name: learning_subject learning_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_pkey PRIMARY KEY (id);


--
-- Name: learning_subject learning_subject_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_slug_key UNIQUE (slug);


--
-- Name: learning_subject learning_subject_test_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_test_id_key UNIQUE (test_id);


--
-- Name: learning_subject learning_subject_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_uuid_key UNIQUE (uuid);


--
-- Name: learning_test learning_test_lesson_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_test
    ADD CONSTRAINT learning_test_lesson_id_key UNIQUE (lesson_id);


--
-- Name: learning_test learning_test_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_test
    ADD CONSTRAINT learning_test_pkey PRIMARY KEY (id);


--
-- Name: learning_test learning_test_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_test
    ADD CONSTRAINT learning_test_uuid_key UNIQUE (uuid);


--
-- Name: learning_testassignment learning_testassignment_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignment
    ADD CONSTRAINT learning_testassignment_pkey PRIMARY KEY (id);


--
-- Name: learning_testassignment learning_testassignment_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignment
    ADD CONSTRAINT learning_testassignment_uuid_key UNIQUE (uuid);


--
-- Name: learning_testassignmentquestion learning_testassignmentquestion_image_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion
    ADD CONSTRAINT learning_testassignmentquestion_image_id_key UNIQUE (image_id);


--
-- Name: learning_testassignmentquestion learning_testassignmentquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion
    ADD CONSTRAINT learning_testassignmentquestion_pkey PRIMARY KEY (id);


--
-- Name: learning_testassignmentquestion learning_testassignmentquestion_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion
    ADD CONSTRAINT learning_testassignmentquestion_uuid_key UNIQUE (uuid);


--
-- Name: learning_testquestion learning_testquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testquestion
    ADD CONSTRAINT learning_testquestion_pkey PRIMARY KEY (id);


--
-- Name: learning_testquestion learning_testquestion_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testquestion
    ADD CONSTRAINT learning_testquestion_uuid_key UNIQUE (uuid);


--
-- Name: users_completedtest users_completedtest_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_completedtest
    ADD CONSTRAINT users_completedtest_pkey PRIMARY KEY (id);


--
-- Name: users_completedtest users_completedtest_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_completedtest
    ADD CONSTRAINT users_completedtest_uuid_key UNIQUE (uuid);


--
-- Name: users_lessonprogress users_lessonprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_lessonprogress
    ADD CONSTRAINT users_lessonprogress_pkey PRIMARY KEY (id);


--
-- Name: users_lessonprogress users_lessonprogress_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_lessonprogress
    ADD CONSTRAINT users_lessonprogress_uuid_key UNIQUE (uuid);


--
-- Name: users_passwordkey users_passwordkey_password_key_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_passwordkey
    ADD CONSTRAINT users_passwordkey_password_key_key UNIQUE (password_key);


--
-- Name: users_passwordkey users_passwordkey_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_passwordkey
    ADD CONSTRAINT users_passwordkey_pkey PRIMARY KEY (id);


--
-- Name: users_subjectprogress users_subjectprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_subjectprogress
    ADD CONSTRAINT users_subjectprogress_pkey PRIMARY KEY (id);


--
-- Name: users_subjectprogress users_subjectprogress_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_subjectprogress
    ADD CONSTRAINT users_subjectprogress_uuid_key UNIQUE (uuid);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: users_user users_user_uuid_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_uuid_key UNIQUE (uuid);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: learning_lesson_order_4b0f9e78; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_lesson_order_4b0f9e78 ON public.learning_lesson USING btree ("order");


--
-- Name: learning_lesson_slug_e238ab6f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_lesson_slug_e238ab6f_like ON public.learning_lesson USING btree (slug varchar_pattern_ops);


--
-- Name: learning_lesson_subject_id_1c93c08f; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_lesson_subject_id_1c93c08f ON public.learning_lesson USING btree (subject_id);


--
-- Name: learning_lessonrating_lesson_id_b8452171; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_lessonrating_lesson_id_b8452171 ON public.learning_lessonrating USING btree (lesson_id);


--
-- Name: learning_lessonrating_user_id_abcb696a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_lessonrating_user_id_abcb696a ON public.learning_lessonrating USING btree (user_id);


--
-- Name: learning_questionanswer_order_88412eef; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_questionanswer_order_88412eef ON public.learning_questionanswer USING btree ("order");


--
-- Name: learning_questionanswer_question_id_72b7cdda; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_questionanswer_question_id_72b7cdda ON public.learning_questionanswer USING btree (question_id);


--
-- Name: learning_subject_order_93a1ea78; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_subject_order_93a1ea78 ON public.learning_subject USING btree ("order");


--
-- Name: learning_subject_slug_21aeb1de_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_subject_slug_21aeb1de_like ON public.learning_subject USING btree (slug varchar_pattern_ops);


--
-- Name: learning_testassignmentquestion_order_7fab1625; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_testassignmentquestion_order_7fab1625 ON public.learning_testassignmentquestion USING btree ("order");


--
-- Name: learning_testassignmentquestion_test_id_cc1a7cd5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_testassignmentquestion_test_id_cc1a7cd5 ON public.learning_testassignmentquestion USING btree (test_id);


--
-- Name: learning_testquestion_order_a9e08326; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_testquestion_order_a9e08326 ON public.learning_testquestion USING btree ("order");


--
-- Name: learning_testquestion_test_id_b586b77c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX learning_testquestion_test_id_b586b77c ON public.learning_testquestion USING btree (test_id);


--
-- Name: users_completedtest_test_id_d0901bba; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_completedtest_test_id_d0901bba ON public.users_completedtest USING btree (test_id);


--
-- Name: users_completedtest_user_id_28f64729; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_completedtest_user_id_28f64729 ON public.users_completedtest USING btree (user_id);


--
-- Name: users_lessonprogress_subject_id_d2ebf677; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_lessonprogress_subject_id_d2ebf677 ON public.users_lessonprogress USING btree (subject_id);


--
-- Name: users_passwordkey_user_id_2605cd18; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_passwordkey_user_id_2605cd18 ON public.users_passwordkey USING btree (user_id);


--
-- Name: users_subjectprogress_user_id_c33b59a8; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_subjectprogress_user_id_c33b59a8 ON public.users_subjectprogress USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: users_user_uuid_6fe513d7_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX users_user_uuid_6fe513d7_like ON public.users_user USING btree (uuid varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_document_id_667fb3ff_fk_files_document_file_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_document_id_667fb3ff_fk_files_document_file_id FOREIGN KEY (document_id) REFERENCES public.files_document_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_image_id_ad5f88c1_fk_files_image_file_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_image_id_ad5f88c1_fk_files_image_file_id FOREIGN KEY (image_id) REFERENCES public.files_image_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_subject_id_1c93c08f_fk_learning_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_subject_id_1c93c08f_fk_learning_subject_id FOREIGN KEY (subject_id) REFERENCES public.learning_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_test_id_0a94b3da_fk_learning_testassignment_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_test_id_0a94b3da_fk_learning_testassignment_id FOREIGN KEY (test_id) REFERENCES public.learning_testassignment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_video_id_ea46f40c_fk_files_video_file_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_video_id_ea46f40c_fk_files_video_file_id FOREIGN KEY (video_id) REFERENCES public.files_video_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lessonrating learning_lessonrating_lesson_id_b8452171_fk_learning_lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lessonrating
    ADD CONSTRAINT learning_lessonrating_lesson_id_b8452171_fk_learning_lesson_id FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lessonrating learning_lessonrating_user_id_abcb696a_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_lessonrating
    ADD CONSTRAINT learning_lessonrating_user_id_abcb696a_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_questionanswer learning_questionans_question_id_72b7cdda_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_questionans_question_id_72b7cdda_fk_learning_ FOREIGN KEY (question_id) REFERENCES public.learning_testassignmentquestion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_subject learning_subject_image_id_f77ce3fb_fk_files_image_file_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_image_id_f77ce3fb_fk_files_image_file_id FOREIGN KEY (image_id) REFERENCES public.files_image_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_subject learning_subject_test_id_7b28ee84_fk_learning_testassignment_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_subject
    ADD CONSTRAINT learning_subject_test_id_7b28ee84_fk_learning_testassignment_id FOREIGN KEY (test_id) REFERENCES public.learning_testassignment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_test learning_test_lesson_id_d7698ffc_fk_learning_lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_test
    ADD CONSTRAINT learning_test_lesson_id_d7698ffc_fk_learning_lesson_id FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_testassignmentquestion learning_testassignm_image_id_b775b186_fk_files_ima; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion
    ADD CONSTRAINT learning_testassignm_image_id_b775b186_fk_files_ima FOREIGN KEY (image_id) REFERENCES public.files_image_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_testassignmentquestion learning_testassignm_test_id_cc1a7cd5_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testassignmentquestion
    ADD CONSTRAINT learning_testassignm_test_id_cc1a7cd5_fk_learning_ FOREIGN KEY (test_id) REFERENCES public.learning_testassignment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_testquestion learning_testquestion_test_id_b586b77c_fk_learning_test_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.learning_testquestion
    ADD CONSTRAINT learning_testquestion_test_id_b586b77c_fk_learning_test_id FOREIGN KEY (test_id) REFERENCES public.learning_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_completedtest users_completedtest_test_id_d0901bba_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_completedtest
    ADD CONSTRAINT users_completedtest_test_id_d0901bba_fk_learning_ FOREIGN KEY (test_id) REFERENCES public.learning_testassignment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_completedtest users_completedtest_user_id_28f64729_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_completedtest
    ADD CONSTRAINT users_completedtest_user_id_28f64729_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_lessonprogress users_lessonprogress_subject_id_d2ebf677_fk_users_sub; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_lessonprogress
    ADD CONSTRAINT users_lessonprogress_subject_id_d2ebf677_fk_users_sub FOREIGN KEY (subject_id) REFERENCES public.users_subjectprogress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_passwordkey users_passwordkey_user_id_2605cd18_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_passwordkey
    ADD CONSTRAINT users_passwordkey_user_id_2605cd18_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_subjectprogress users_subjectprogress_user_id_c33b59a8_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_subjectprogress
    ADD CONSTRAINT users_subjectprogress_user_id_c33b59a8_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: django
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

