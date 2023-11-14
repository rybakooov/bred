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
    file character varying(100) NOT NULL,
    uuid uuid NOT NULL
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
42281a27408c56cc657db82011205fe1bba392f0	2021-12-14 08:43:49.627496+00	699
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
64d2472cc307806888c230b1f5d5205f23f07dc3	2021-12-14 09:41:22.264336+00	744
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
c55b753fe4da6bc2f68eaecf6faa09d0ba45e70c	2021-12-14 16:18:03.708694+00	928
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
\.


--
-- Data for Name: files_video_file; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.files_video_file (id, file, uuid) FROM stdin;
3	videos/theme_3_lesson_6_video.mp4	b5f06cec-8aeb-486a-821d-036010a2f112
4	videos/theme_3_lesson_8_video.mp4	f6483781-4193-430b-be00-9a6ef60e6e24
5	videos/theme_3_lesson_11_video.mp4	ec62982d-398d-4e05-9761-b87b97b79480
6	videos/theme_3_lesson_14_video.mp4	25927728-e300-489a-a42c-56ac60b17f5a
7	videos/theme_3_lesson_13_video.mp4	62b61248-6dfc-4df8-914a-648da723e45c
8	videos/theme_3_lesson_15_video.mp4	ae622094-107a-4890-97a3-8b1fdfeca1d0
9	videos/theme_4_lesson_7_video.mp4	86e0bd35-89be-4508-a5f6-a1088d014968
10	videos/theme_6_lesson_19_video.mp4	12f754a5-68b8-4d46-9662-1dae1b93386f
11	videos/theme_6_lesson_19_video_fMxPSpK.mp4	e1465431-03a6-4f6c-ba3b-d9d96767bee3
12	videos/theme_18_lesson_22_video.mp4	8a38313d-2319-4821-9431-a8890ee92e08
13	videos/theme_18_lesson_23_video.mp4	9ab2badb-1963-48cc-8f5d-ed3cf5f4f894
14	videos/theme_18_lesson_26_video.mp4	a9eda05c-8a46-4644-9974-df660fdb640f
15	videos/theme_18_lesson_27_video.mp4	28ff691a-e147-4cf2-b0fb-46b5bbc9fc6c
16	videos/theme_19_lesson_29_video.mp4	5bb28f97-ab9d-45da-b07d-3c53720a60c5
17	videos/theme_19_lesson_30_video.mp4	c93ac0cb-d3f4-43ad-add9-094f74bff159
18	videos/theme_10_lesson_28_video.mp4	5299a0c0-a9c7-45b5-8e22-6974c2b99e30
19	videos/theme_8_lesson_21_video.mp4	0839efb4-c731-4671-b4cb-cbe940f8d46e
20	videos/theme_6_lesson_20_video.mp4	c9879a81-f3cf-44e1-9ae3-db52edcf815f
21	videos/theme_5_lesson_17_video.mp4	bfbfd869-759d-487d-b9d2-219324e82376
22	videos/theme_5_lesson_16_video.mp4	9384d2b5-4ff8-4569-9ec9-4093a86cefd9
\.


--
-- Data for Name: learning_lesson; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_lesson (id, "order", uuid, name, outline, slug, is_visible, document_id, image_id, subject_id, test_id, video_id) FROM stdin;
17	1	f3268be3-bec0-4121-9d61-7b4ab8e41919	Стратегии	[{"text":"Я предлагаю вам начать со связок и только потом подстраивать их под стратегии Связка - объединение индикаторов для более точного технического анализа\\nЧтобы собрать связку, мы должны понимать принцип действия каждого из используемых индикаторов\\n\\nПочему? Так как они имеют часто схожие свойства и ставить одинаковые индикаторы не имеет никакого смысла\\n\\nПредлагаю вам рассмотреть первую связку, она очень простая, но поможет вам понять принцип действия\\n\\nСразу скажу. Количество индикаторов в связке не ограничено, но обычно от 3 штук, редко на длинной дистанции могут встречаться 2 индикатора\\n\\nЭта связка выглядит следующим образом. У нас есть три индикатора : RSI, MACD и Bollinger\\n\\nRSI выполняет функцию опережающего индикатора, который нужен, чтобы сигнализировать о том, что скоро рынок может развернуться. MACD основной индикатор, который при пересечении говорит, что пора входить в сделку, а Bollinger трендовый индикатор, он указывает нам, не ошиблись ли предыдущие индикаторы с выбором тренда","image":"/media/images/theme_5_lesson_17_outline_0.png"},{"text":"То есть мы входим в сделку только в том случае, когда все три индикатора говорят - ДАВАЙ!)\\n\\nВ эту же стратегию неплохо пойдет четвертый индикатор - уровни PIVOT, чтобы определять точки выхода и сопротивления. Тогда эта связка будет полной и отработка на уровне. Работает на всех ТФ, проверял. Если вы составляете свою связку, сначала прогоняйте ее по истории на 50-100 сделок, чтобы определить, сколько из них будут успешными\\n\\nНиже привел еще один пример\\n\\nПредлагаю разобрать его на следующем слайде, так как там есть показательный момент, как делать нельзя!\\n\\nВсе как обычно. Сначала RSI, потом MACD, а потом Bollinger. Сделка на дневном ТФ и прибыль по ней\\nвыше выше 15%  за неделю. Но почему же мы не вошли раньше, где Bolligner уже сменился на зеленый?\\nВсе просто, мы не увидели закрепления\\n\\nЗакрепление должно быть минимум двойной, а лучше тройной свечой и причем желательно, чтобы они были по направлению тренда\\n\\nДопустим - после пересечения Боллинджера с красного на зеленый, должны быть 3 зеленых свечи.\\nСлабее, если 2 зеленых и 1 красная. Еще слабее 1 зеленая и 2 красных. То же самое и в сторону шорта. Запомните это правило!","image":"/media/images/theme_5_lesson_17_outline_1.png"},{"text":"Предлагаю рассмотреть возможные ТФ по этой связке на разных дистанциях. От\\nдолгосрочной к краткосрочной. Сейчас открыт график Virgin Galactic и ТФ 1 день ( ширина графика в 1 год ), таким образом тренд будет средне-долгосрочный, но на 5 летнем графике сигналы будут слишком редкие, чтобы их показать\\n\\nЧто мы видим на этом графике? Правильно, прибыль по связке)","image":"/media/images/theme_5_lesson_17_outline_2.png"},{"text":"Как мы видим, максимальное количество сигналов могло быть 6, а на деле 5, так как 6\\nтолько сейчас и еще никакого разворота нет\\n\\nТаким образом, давайте посмотрим сколько сигналов было подтверждено MACD\\n\\nСейчас я хочу подробно разобрать суть связки, чтобы вы все поняли и в дальнейшем было проще\\n","image":"/media/images/theme_5_lesson_17_outline_3.png"},{"text":"Как мы видим по MACD - из 5 сигналов все 5 были подтверждены. Многие скажут -\\nтогда будем брать все 5, а внимательные заметили, что их тут всего 4 по нашей связке и 5 вовсе не идет\\n\\nГляньте на Боллинджер, который указывает тренд, ничего не заметили? Против тренда не берем, один сигнал лишний. Давайте разберемся","image":"/media/images/theme_5_lesson_17_outline_4.png"},{"text":"Здесь сигнал по Боллинджеру не прошел, он не развернулся и так и показывал\\nнисходящий тренд, поэтому и брать мы не будем\\n\\nНам не зачем рисковать, когда есть четкая инструкция к применению. Ждем разворота или новых сигналов на шорт. Предлагаю посмотреть, сколько прибыли мы могли заработать за 4 сигнала по максимуму за 1 год с этой компании","image":"/media/images/theme_5_lesson_17_outline_5.png"},{"text":"Немного пофантазируем и представим, что вы каждый раз заходили в сделку на 1 миллион рублей. Таким\\nобразом, за 1 год вы могли сделать по максимуму с 1 миллиона 11 миллионов 634 тысячи рублей. То есть 1063.4%\\n\\nКак? Посчитайте, что вы входили миллионом в первую сделку и затем всей \\"выигранной\\" суммой во все последующие. В общем, это так, на помечтать оставил вам:)\\n\\nТак идеально входить в сделки невозможно, но 50% от этого забрать можно было не умея выходить из сделок, но умея заходить по этой связке\\n","image":"/media/images/theme_5_lesson_17_outline_6.png"},{"text":"Вот как выглядит график на среднесрочной дистанции. ТФ 1 час и диапазон  3 месяца\\n\\nВыглядит скучно по % по сравнению со среднесроком, но что поделаешь. 4 сделки, каждая из которых зашла, давайте проверим, что по прибыли\\n\\nПрибыль на таком ТФ обычно 5% и не больше","image":"/media/images/theme_5_lesson_17_outline_7.png"},{"text":"Сделок здесь, кстати, 5. Общая максимальная прибыль с реинвестированием =  41%, но\\nреальная не более 15-20, так как чтобы четко и идеально выходить из позиций, надо иметь счастливую руку, реальные показатели всегда ниже. Поэтому я просто сразу же режу на 2\\n\\nНо в целом, отработка есть, минусов нет, давайте посмотрим на короткой дистанции","image":"/media/images/theme_5_lesson_17_outline_8_ONlbj37.png"},{"text":"Отработка сразу же сводится к нулю. Конечно, не полный ноль, но результат\\nминусовой на ТФ 5 минут\\n\\nДелаем вывод, что связка работает на среднесроке и долгосроке?\\n\\nДавайте проверим на другой компании","image":"/media/images/theme_5_lesson_17_outline_9.png"},{"text":"Выглядит паршиво, согласны? Я надеюсь, что да, так как эта связка не подходит под\\nторговлю внутри дня или нескольких по следующей причине Слишком много шумов!\\nЭти шумы от постоянной смены всех индикаторов, особенно MACD и Боллинджера,\\nпоэтому мы будем часто ошибаться. Давайте сделаем выводы по связке","image":"/media/images/theme_5_lesson_17_outline_10.png"},{"text":"Выводы следующие :\\n\\n1)связка хорошо идет на среднесрочной и долгосрочной торговле, то есть от ТФ 1 час до месяца\\n2)чем больше ТФ, тем меньше сигналов она выдает\\n3)чем больше ТФ, тем больше % с сигнала мы забираем\\n4)чем больше ТФ, тем дольше мы сидим в компании по сигналу\\n5)входим в позицию только при полноценном тройном подтверждении сигналов. Тройное = от всех трех\\n6)нужно проверять отработку сигналов по истории компании на выбранном ТФ, так как на SPCE она может работать отлично, а на условном RIG ужасно. Никакого\\nобобщения по всем компаниям не делаем\\n\\nИнтересно? Давайте таким же образом разберем последующие связки, чтобы в голове отложилось все наверняка, чтобы не осталось никаких вопросов\\n","image":""},{"text":"(3.3) Связка по OBV + EMA 200 + Ichimoku\\n\\nВ данной связке все совсем иначе, предлагаю разобраться!\\n\\nOBV будет выступать подтверждением тренда и расхождением в нем, если подобное будет. EMA 200 поддержкой и основным направлением тренда. Ichimoku более слабым направлением тренда и зонами поддержки/сопротивления","image":"/media/images/theme_5_lesson_17_outline_12.png"},{"text":"Как образом тут входить в позицию? Вариант входа практически один - когда график\\nкасается ЕМА 200 - мы входим в позицию, неважно с какой стороны, мы входим в позицию по тренду, так как все, что выше ЕМА 200 = восходящий тренд, а ниже - нисходящий\\n\\nТаким образом будет следующее. График условно идет вниз и прошивает Ичимоку, мы понимаем, что значит дойдет до ЕМА 200, ждем этого соприкосновения и берем компанию в лонг. Если бы график шел снизу-вверх, то в шорт, но я не советую рассматривать такие варианты и лучше брать всегда в лонг и торговать на сильных мировых фундаментальных компаниях!\\n\\nТаким образом, OBV подтверждает нам направления тренда и будет показывать от случая к случаю расхождения между ним и котировками\\n\\nПриступим к просмотру с долгосрока!\\n\\nВсе правильно и так, как должно быть\\n\\nСмотрите слева на право. Первый сигнал. Пробито Ичимоку, берем на касании, OBV показывает повторение логики графика, значит все хорошо, мы идем выше. Прибыль только по этой сделке могла быть 400%+\\n\\nДальше мы видим касание Ичимоку, но ниже не пошло. Рисковать не стоит, ждем. Затем касание ЕМА 200 и пробитый Ичимоку, мы берем в лонг. Максимальная прибыль 40%, но видим, что не увеличиваются объемы по OBV, а котировки растут, готовимся к падению и закупаем повторно на касании с актуальной прибылью 80%\\n","image":"/media/images/theme_5_lesson_17_outline_13.png"},{"text":"По сути три сигнала могли дать нам максимальную прибыль в 2.658 сложных процентов или с 1\\nмиллиона рублей 26 миллионов:)\\n\\nПосчитайте сами, если хотите. Первая сделка дала с миллиона 9 сверху, далее 48% к 10 миллионам и еще 95% почти к 15 миллионам, я даже слегка обсчитался. Такие проценты приветствуются на фондовом рынке для тех, кто умеет ждать и держать. На деле скорее бы забрали процентов 500- 600 в лучшем случае, так как сложно совладать с эмоциями и желанием зафиксировать, да и выйти идеально трудно. Поэтому в 5 раз порежем и все равно получим сильнейший результат за 1 год!","image":"/media/images/theme_5_lesson_17_outline_14.png"},{"text":"Рассматривая график 2 часа, то есть пол года дистанции ( среднесрок ), то правила\\nиспользования будут другими\\n\\nДавайте взглянем и посмотрим, в чес кардинальное отличие\\n\\nОно заключается в том, что ЕМА 200 не держит удар и будет служить прошитым трендом, по которому будем вести проторговку\\n","image":"/media/images/theme_5_lesson_17_outline_15.png"},{"text":"Нас интересуют короткие сделки, которые будут приносить 3-8% прибыли, стратегию\\nможно выбрать самому. Имею ввиду - какой % хотите забирать. Тут ставим стопы, которые должны быть равны прибыли или в 2 раза меньше. Расскажу еще один способ выставлять стопы в конце урока\\n\\nСистема следующая - график должен пробить Ичимоку и ЕМА 200 вверх или вниз, чтобы мы взяли в лонг или в шорт, а OBV будет подсказывать, нет ли тут ошибок по объемам\\n\\nТакже, присутствует очень важное правило закрепления свечей. После пробития ЕМА 200, мы должны дождаться закрепления трех свечей над ней и брать на 4. Если 2-3 свеча ушла выше ЕМА 200, то сделка отменяется\\n\\nДавайте посмотрим, как это будет работать на графике\\n\\nДля примера возьмем момент, когда закрепления не было\\n\\nКак вы видите, я обвел это в красный прямоугольник. 1 и 2 свеча оказались выше ЕМА 200, а третья ушла вниз, поэтому в сделку мы не заходили\\n\\nТеперь давайте перейдем к отработке связки","image":"/media/images/theme_5_lesson_17_outline_16.png"},{"text":"Смотрим, как происходит отработка\\n\\nИдет пробитие Ичимоку, потом переходим к пробитию ЕМА 200 и рост.\\n\\nАналогично происходит в сторону шорта. Средняя прибыль с каждой сделки около 10%. Есть и по 20% прибыли, есть и по 3%, как последняя, которую я не обвел. Также, самый правый прямоугольник перечеркнут, так как показывает, что закрепления не произошло","image":"/media/images/theme_5_lesson_17_outline_17.png"},{"text":"ногда стратегия может изменяться. Что это значит?\\n\\nЕМА 200 будет снизу, Ичимоку сверху при восходящем тренде и наоборот. Никакой разницы нет, система та же, только теперь мы при лонге ждем закрепления над ичимоку, а не ЕМА 200\\n\\nОтработку вы видите на скрине ниже, вполне неплохие проценты\\n","image":"/media/images/theme_5_lesson_17_outline_18.png"},{"text":"Торговать на 5 минутном фрейме я вам не рекомендую, так как это слишком рискованно\\n\\nПосмотрите на скрин ниже и сойдите с ума от количества сигналов и волатильности бумаги\\n\\nЛучше на краткосрок торговать полугодовой диапазон. Результат лучше, а сделки также\\nкороткие\\n","image":"/media/images/theme_5_lesson_17_outline_19.png"},{"text":"Теперь перейдем к возможности установки стопа, про которую я вам говорил в начале\\n\\nЭтот индикатор называется ATR. Сейчас покажу принцип его работы, но для начала давайте его установим\\n\\nДля этого нужно ввести в поиске индикаторов три буквы ATR и выбрать \\"средний истинный диапазон\\"\\n\\nИндикатор носит название \\"средний истинный диапазон\\" и применяется для расчета стопов и в целом волатильности","image":"/media/images/theme_5_lesson_17_outline_20.png"},{"text":"Он выглядит как кривая волатильности, поэтому, когда мы хотим войти в сделку, мы смотрим его\\nзначение и умножаем на 2 или 3, смотря на какой срок берем компанию и смотря, какая перед нами компания\\n\\nЕсли честно, я всегда выбираю умножение на 3, так как более практично\\n\\nДопустим, я навел на определенный момент графика и мы получили число 23.44 по ATR, получается войдя в лонг, мы должны из цены, которая была в тот момент вычесть 23.44 умноженное на 3 и это будет число стопа. Тогда цена была 680 долларов, выходит это минус 70.32 = 609.56","image":"/media/images/theme_5_lesson_17_outline_21.png"},{"text":"Если рассматривать сейчас, то его значение равно 36, а цена Tesla 1114\\n\\nТаким образом, если мы входим в лонг, то стоп ставим на 1114 - 108 = 1006, а если в шорт, то ставим стоп на 1114 + 108 = 1224\\n\\nВсе достаточно просто. Но раз уж у нас зашла тема про стопы, то есть еще 1 вариант стопа, который можно использовать\\n","image":"/media/images/theme_5_lesson_17_outline_22_uCPKWWU.png"},{"text":"Данный способ тоже простой и требует использования индикатора уровни PIVOT\\n\\nПравило одно - мы устанавливаем стоп на середине предыдущего уровня Посмотрите, как это работает и где именно","image":"/media/images/theme_5_lesson_17_outline_23.png"},{"text":"Проще говоря, если вы хотите брать в лонг, то вы берете предыдущий уровень и его\\nсередину, там и будет стоп\\n\\nЕсли вы хотите брать в шорт, то берете уровень выше и его середину и ставите стоп Нет разницы, какой ТФ, просто стопы будут или меньше или больше\\nПример ниже иллюстрирует, как сделка не закрылась бы по стопу, так как не дошло до середины уровня\\n","image":"/media/images/theme_5_lesson_17_outline_24.png"},{"text":"Подводим итоги по стратегии :\\n\\n1)Торговля может вестись на 2 фреймах - среднесрчном и краткосрочном, за первый выступает ТФ 1 день и выше, за второй 2-4 часа\\n2)Торговать на 5 минутном ТФ не представляется возможным\\n3)Стратегия меняется в зависимости от ТФ, нельзя об этом забывать\\n4)Торгуется по 2 индикаторам, но 3 является сопровождающим - OBV\\n\\n\\nСтратегия интересная и имеет место быть, поэтому мы ее и прошли :)\\n\\nПредлагаю перейти к следующей, которую уже можно использовать и на коротком сроке\\n","image":""},{"text":"(3.4) Alligator + PIVOT + MACD\\n\\nСвязка простая и добавляет долю пикантности в связи с новым индикатором и его смешным названием - аллигатор\\n\\nЯ не стал уделять внимания ему в отдельной главе, так как это просто 3 ЕМА разных периодов, которые смещены вперед относительно графика","image":"/media/images/theme_5_lesson_17_outline_26.png"},{"text":"У ЕМА большое количество производных, поэтому рассказывать про каждое не стоит\\n\\nУ Аллигатора есть всего 2 сигнала - восходящий или нисходящий, так как он является трендовым\\n\\nПри пробитии вверх всех трех ЕМА у Аллигатора, задается восходящий тренд, если пробиваются все три вниз, то нисходящий\\n\\nПробивается очевидно графиком, поэтому все как у ЕМА и ничего нового Единственно - нужно также закрепление 3 свечей\\nТеперь давайте перейдем к стратегии\\n\\nСмотрим слева направо. Первая зона на MACD у нас не торгуется, так как у нее нет\\nволатильности и график просто в боковике, потом пошел всплеск. Наша цель взять на закреплении и пройти 3-4 уровня, если берем на ТФ 1 день и выше\\n\\nИмеется ввиду прошить 3-4 уровня по PIVOT и выходить из позиции. Идем дальше и видим сделку в шорт - закрепление трех свечей и в путь. прошили 3-4 уровня и вышли. Дальше минусовая сделка,  так как не пошло в нужную  нам сторону и затем шорт сделка с пробитием 3 уровней\\n","image":"/media/images/theme_5_lesson_17_outline_27.png"},{"text":"Аналогичная ситуация происходит с ТФ 2 часа, то есть уже ближе к краткосроку\\n\\nЕсть только 1 различие - количество сделок будет больше, а качество хуже\\n\\nПоэтому учитывайте это и если торгуете так, то надо входить почти во все, дабы результат учитывался с вероятностью","image":"/media/images/theme_5_lesson_17_outline_28.png"},{"text":"Но вот по сравнению с предыдущими связками, эта отрабатывает себя отлично, когда мы\\nвключаем короткий ТФ 5 минут для торговли внутри дня или в течение 1-2 дней\\n\\nКак вы видите, 0 минусовых сделок, но есть одно условие и правило, которое сменяется на такой дистанции - торгует не от уровня к уровню, а по фикс %, которые желаем забирать\\n\\nВидим, что до конца уровня вверх мало, ставим 1%  тейк и забираем прибыль","image":"/media/images/theme_5_lesson_17_outline_29.png"},{"text":"Большего сказать об этой связке не дано, они все +- похожи и результат один, но\\nсейчас мы перейдем к более интересной, которая полностью отличается от предыдущих трех\\n\\nНо все же, подведем итоги :\\n\\n1)Неплохо торгуется на всех ТФ\\n2)На маленьком ТФ 5 минут прибыль забираем по %, а не от уровня к уровню\\n3)Аллигатор трендовый индикатор, основанных на трех ЕМА разных периодов\\n4)Сначала ждем сигнала от MACD, потом только от остальных\\n","image":""}]	novyj-urok-7714	t	\N	\N	5	315	21
28	0	558e1a07-11dc-49bb-a707-24397d6db897	Временной и сезонный анализы	[{"text":"Что же такое временной и сезонный анализ? Сезонный анализ мы проводим на основании графика минимум за 10 лет и выявляем закономерности роста той или иной отрасли в определенное время года\\n\\nВременной анализ мы проводим на основании последних нескольких месяцев для торговли по : 1) индексу 2) отдельной компанией\\n\\nПредлагаю вам начать с первого\\n\\n\\n\\n\\nПоследнее время я активно использую данный способ для входа в сделки короткой торговли на 1-3 месяца\\n\\nЧтобы проанализировать сезонность, нам нужно просмотреть, как и было сказано - 10 лет графика (примерно), если у компании столько его нет, то хотя бы 7-8, меньше бессмысленно\\n\\nТакже, мы должны понимать, что это является лишь частью анализа, а не его финальным заключением\\n\\nКак правило, это первое на что я смотрю, когда нашел компанию интересную и хочется прикупить на спекулятивный среднесрок\\n\\nАнализ начинается с того, что включается 5 летний график или ТФ 1 неделя, чтобы упростить себе задачу и с легкостью найти те самые растущие сезоны\\n\\nДавайте рассмотрим это на примере Apple","image":"/media/images/theme_10_lesson_28_outline_0.png"},{"text":"Перед вами был график с 5 последними годами, где мной уже была найдена сезонность\\n\\nЭто сезонность компании Apple, она может послужить хорошей прибылью для тех, кто любит получать от 15 до 25% прибыли за 3 месяца\\n\\nНачинается сезонность прямо летом в июне и кончается в сентябре до презентации\\n\\nТаким образом, предлагаю вам проверить эту сезонность до 2012 года и сделать определенные выводы\\n\\nИз 10 лет всего лишь один раз сезонность подвела, а проходимость составила 90%, хороший результат? Я думаю восхитительный!\\n\\nДавайте немного обсудим эту тему\\n","image":"/media/images/theme_10_lesson_28_outline_1.png"},{"text":"Чтобы найти закономерную сезонность не нужно иметь 7 пядей во лбу\\n\\nТут все намного проще. Вы просто выбираете отрезок графика, который является растущим и затем сверяете, а не рос ли он случайно в прошлых годах\\n\\nЕсли рос - привет, сезонность!\\n\\nНо скажу сразу, что сезонность может быть \\"сезонность\\" по той причине, что не всегда она приходится на одно время года\\n\\nЭто может быть любой промежуток, хоть с октября по май, он может быть коротким и длинным, все зависит только от самой компаниии\\n\\nРассмотрим компанию PBF и попробуем найти у нее закономерность\\n\\nЯ сразу увидел ее в росте с периода с августа по октябрь. Только в 2020 году компания подвела свою сезонность, но тут все вполне очевидно. Точнее очевидны причины","image":"/media/images/theme_10_lesson_28_outline_2.png"},{"text":"Из 6 раз ( пока что ) 5 плюсовых, 1 минусовой. 3 гипер-плюсовых, 2\\nобычных\\n\\nСмотрим дальше, подтвердится ли сезонность. Как видим - подтвердилась. из 10 лет 8 плюсовых, 1 нейтральный и 1 минусовой\\n","image":"/media/images/theme_10_lesson_28_outline_3.png"},{"text":"У Теслы есть сезонность с мая по октябрь/ноябрь, тут кому как удобно\\n\\nВидите, сезонность очень длинная и назвать ее реальной сезонностью язык не поворачивается. Поэтому пусть будет просто инвестиционной сезонностью)\\n\\nПоказывать дальше особо смысла нет. Сезонность подтвердилась и было 1 минус и 1 нейтрально\\n","image":"/media/images/theme_10_lesson_28_outline_4.png"},{"text":"Сезонность, как и временной анализ очень короткие главы, но они короткие не потому что мне лень что-то написать, а потому что все гениальное просто и объяснять тему сезонности еще на 100 примерах - какой смысл?\\n\\nОсновные правила :\\n\\n1)Она либо есть, либо ее нет, не стоит придумывать за график\\n2)Сезонность не по временам года, может быть месяц, а может и пол года ( не может быть год, это уже не сезонность )\\n3)Является вспомогательным индикатором\\n4)Обычно является хорошей причиной для короткой сделки на пик сезонности\\n\\nДавайте перейдем к временной торговле, которая подходит только для тех, кто любит торговать внутри дня\\n","image":""},{"text":"Временной подход можно также называть - точка перелома, так как именно такая система находится внутри идеи\\n\\nЛично я пользуюсь ей редко, но может кому-то будет интересно и полезно узнать, что такое существует\\n\\nЛогика похожа на сезонность, но нужно проанализировать хотя бы 100 дней, что уже кажется немного сумасшедшим:)\\n\\nНо, есть выход - торговля по тренду\\n\\nВы можете проанализировать 1 раз график SPX 500 и все найти те самые точки его перелома, торгуя только топ компании из его списка ( идея самая адекватная )\\n\\n\\nОднажды вечером, когда мне не было куда потратить свое время с пользой, я решил пробежаться по графику за месяца полтора и глянуть, а что там сейчас по временным точкам\\n\\nИменно сейчас! Так как они меняются от фазы рынка к его другой фазе\\n\\nЯ выписывал в столбик время, когда происходили либо отскоки, либо сливы\\n\\nЛогика происхождения обоих одинакова, коим образом мне это не мешает приравнивать под одну гребенку\\n","image":"/media/images/theme_10_lesson_28_outline_6.png"},{"text":"","image":"/media/images/theme_10_lesson_28_outline_7.png"},{"text":"Таким образом, мной были выделены следующие временные точки ( диапазоны скорее )\\n\\n1) 18-18:40 ( обычно 18:30-18:40 )\\n2) 20:05-20:40\\n3) 21:30-22:40\\n\\nЕще раз, что это за \\"точки-диапазоны\\"\\n\\nВ это время по статистике за полтора месяца, которые я просмотрел, что-то происходит\\n\\n\\n\\n\\n\\nВы скажете, что значит \\"что-то\\"\\n\\nНа самом деле это не играет абсолютно никакой роли \\"что именно\\", так как мы отталкиваемся конкретно от того, был рост на рынке или падение, а также имеем важное правило - временные диапазоны ломаются в случае с происходящими на рынке независимыми событиями\\n\\nНа самом деле, как анализ, так и использование таких диапазонов штука сложная, ведь их нужно грамотно использовать, да и потратить немало времени\\n\\nДопустим, я только открыл график и сразу же перед нами резкие скачки и падения рынка 12 ноября\\nМагия или нет, то слева на право у нас идут временные диапазоны : 18:30, 20:30 и 22:30 То есть в 18:30 скачок вверх, в 20:30 резкий спад и в 22:30 снова скачок","image":"/media/images/theme_10_lesson_28_outline_8.png"},{"text":"Просмотрим то же самое слева-направо Это уже 11 ноября\\n18:30 низшая точка и отскок на 0.2% индекса ( 1-1.5% по волатильным компаниям )\\n\\n20:30 очередной отскок\\n\\n21:30 очередной отскок и в 22:30 уже слив\\n\\nФигурируют именно те даты, которые были названы, хоть я и анализировал их больше месяца назад\\n","image":"/media/images/theme_10_lesson_28_outline_9.png"},{"text":"Перед вами 10 ноября, мы просто идем по неделе в обратную сторону\\n\\nВремя слива догадайтесь) 18:30 Время откупа? 22:30\\nЭти временные диапазоны позволяют нам понять, что если происходит слив, то вероятно он будет идти до следующей важной точки, а если начинается отскок, то он будет также идти до следующей точки, только, если это не отскок или слив в конце дня","image":"/media/images/theme_10_lesson_28_outline_10.png"},{"text":"Перед вами 9 ноября и причина по которой я называл их все же временными диапазонами, а не точками\\n\\nСлив - 18:30\\nОткуп - 20:05\\nОткуп - 22:00\\n\\nНам даются диапазоны, среди которых будет точка, которая может показать тот или иной результат в зависимости от того, что происходит на рынке\\n","image":"/media/images/theme_10_lesson_28_outline_11.png"},{"text":"На самом деле эта тема очень интересна, но ей надо научиться пользоваться Допустим, что нам дает понимание диапазонов отскока или слива?\\nМы выбираем ту или иную компанию из SPX 500 ( допустим FB или Apple ) и торгуем ими по отношению к тому, что произойдет с индексом\\n\\nТут ничего нового, это стандартная торговля по тренду, которую мы с вами уже изучали, но есть важные дополнения - наши точки-диапазоны\\n\\nВот летит рынок вниз и в 22:30 начинает отскок, мы понимаем, что можем взять ту же Tsla на отскок, если она падала или сопротивлялась падению рынка ( это не важно, так как разница лишь в силе отскока ), а может она и вовсе росла, что даст невероятный рост при отскоке рынка\\n\\nПонимая это, мы входим в позицию, если рынок начинает свой отскок в 22:30\\n\\n\\n\\nЭти самые точки позволяют нам знать, в какое именно время стоит смотреть на рынок, а в какое он нам безразличен, понимаете?\\n\\nНо, скажу следующее - лично я анализировал лишь малую часть того, что действительно необходимо\\n\\nЕсли вам эта тема интересна, то просмотрите рынок за последние 100 дней и выпишите все точки разворота, которые в следствие станут диапазонами\\n\\nВыбирайте те, которые встречаются чаще всего и стройте по ним свои выводы\\n\\n\\n\\nИменно такие тонкие моменты и улучшают стратегии, которые у нас уже имеются\\n\\nВсегда думайте на 2 шага вперед. Рынок развивается, мы должны развиваться вместе с ним\\n\\nМногим из вас могут показаться эти точки угадайкой, но нет, это и правда рабочий инструмент\\n\\nПредлагаю открыть еще рандомную дату и проверить, будет ли эффект условно в мае или вообще в другом году\\n","image":""},{"text":"Все, как по фэншую\\n\\nИмеем нисходящий тренд, а в 18:30 начинается откуп и даже с поглощением ( хоть оно и слабое, так как находится всего лишь на 30 минутном ТФ\\n\\nКогда был следующий рост? Я не выделил, но в 20:00 следующая зеленая свеча и затем с очередным поглощением в 22:00\\n","image":"/media/images/theme_10_lesson_28_outline_13.png"},{"text":"одытожим тему\\n\\nЕсли вы хотите использовать данный инструмент временных диапазонов, то я советую вам еще раз самостоятельно и более детально прогнать статистику по последним 100 дням, так как она может меняться, хотя пока что указанные мной временные диапазоны вполне рабочие\\n\\nНе забывайте, что ни один из них не говорит, что будет рост или падение, это лишь переломные точки коротких трендов и не более. Тренд может продолжится, а может развернуться, так вот именно в это время его разворот или продолжение максимально эффективны\\n\\nДанный инструмент является лишь дополнением к торговле по тренду, которая в свою очередь является одной из лучших стратегий торговли на короткий срок, да и в целом - trend is your friend\\n","image":""}]	novyj-urok-5120	t	\N	\N	10	463	18
6	1	5c7b99c0-8109-4e98-b6d3-13564ce59b59	Мультипликаторы	[{"text":"Мультипликатор P/E\\nP/E - это отношение цены к прибыли. Но какой цены и для чего нам это нужно?\\n\\nЦена = стоимость одной единицы акции, а прибыль = EPS, то есть прибыль, полученная на эту акцию. Второе измеряется делением общей прибыли на общее количество акций, выпущенных компанией\\n\\nО чем говорит этот мультипликатор и какие значения должен иметь?\\nПростыми словами - этот показатель говорит инвестору, сколько времени потребуется, чтобы окупить вложения в компанию\\n\\nРазжевываю - цена акции 10$, прибыль на акцию 1$ ( все эти показатели общедоступны ), P/E = 10, так как 10/1 = 10 лет потребуется для полной окупаемости\\n\\nВы, наверное, подумали и испугались - \\"это как так? я вложу 1000$ и мне эти же\\nденьги вернутся только через 10 лет?\\"\\n\\nВовсе нет. Этот мультипликатор не отражает рост акций в цене, а лишь показывает настолько компания здоровая. Наоборот - чем выше растет акция в цене, тем выше становится этот мультипликатор ( как правило ), так как рост доходов не поспевает за ростом котировок\\n\\nУ нормальной компании данный показатель должен быть от 8 до 10. Если мы говорим про крупнейшие корпорации - 15-20\\n\\nЕсли показатель у обычной компании находится на отметке 100, а ее капитализация условно 10 миллиардов $, то очевидно, что ее переоценили.\\n\\nНо запомните! Мы никогда не судим компанию по одному показателю, берем только комплексный анализ, а о нем вы узнаете далее\\n","image":""},{"text":"Мультипликатор P/S\\nP/S - это отношение рыночной капитализации компании к ее годовой выручке ( не прибыли )\\nОн показывает,  сколько инвестор платит за 1 рубль  выручки компании Это достаточно важный показатель, так как с ним есть несколько хитростей :\\n1)если мы видим, что у компании растет прибыль и объем продаж, а P/S\\nостается на одном уровне или падает, то это говорит нам о том, что выручка предприятия растет намного быстрее, чем цена акций, такое не продолжается долго и, как правило, котировки подтягиваются вверх 2) обратная ситуация, когда P/S растет, а фин.показатели ( прибыль, объем продаж ) нет, то это сигнализирует о возможном откате котировок\\n\\nТаким образом, мы приходим к выводу - чем меньше этот показатель, тем лучше\\n\\nИдеальное значение мультипликатора от 0.5 до 1 - это говорит нам о том, что мы покупаем рубль выручки со скидкой\\n\\nЗначение от 1 до 2 является нормой, у крупных корпораций до 3\\n\\nЕсли значение 5-10-15, то это перебор и возвращайтесь к предыдущему слайду и читайте, что может быть с компанией\\n\\nСогласитесь, совсем несложно, когда каждый показатель объясняют простым языком и с примером, закрепляющим маленькую тему\\n\\nПереходим к следующему мультипликатору\\n","image":""},{"text":"Мультипликатор P/B\\nP/B - отношение рыночной капитализации к балансовой стоимости\\n\\nСравнивая рыночную стоимость с балансовой, инвесторы хотят понять, сколько они платят за чистые активы компании\\n\\nЧистая стоимость компании в свою очередь представляет из себя величину, получаемую с помощью вычета суммы обязательств из суммы активов организации\\n\\nТаким образом, мы получаем следующее :\\n\\nЗначение P/B < 1 = рыночная цена компании меньше собственного капитала = компания недооценена ( прекрасно )\\nЗначение P/B > 1 = рыночная цена компании больше собственного капитала = компания переоценена\\n\\nЗначение P/B = 1 = рыночная цена компании равна собственному капиталу и это в\\nрамках нормы, оценена по достоинству\\nЗначение P/B < 0 = компания на грани банкротства или же в очень плохом положении, лучше избегать таких активов, ведь сумма обязательств выше суммы\\nсобственных активов\\nЗначение P/B > 3-4-5 = рыночная цена компании намного больше собственного капитала = компания крайне сильно переоценена\\n\\nСложно? Нет! Кто читал внимательно, точно все понял!\\n\\nНо я кое-что приберег для вас. Вы же не думаете, что все отрасли имеют одинаковое среднее значение мультипликаторов...\\n\\nНе пугайтесь, ничего сверхсложного не будет, но вот сверхинтересное...не гарантирую...не гарантирую...\\n","image":""},{"text":"Мультипликатор Debt/Equity\\nDebt/Equity - соотношение заемного капитала к собственному. Чем выше данный показатель, тем выше уровень риска\\n\\nОбычно этот показатель считается одним из важнейших, так как фактически показывает - сколько же своих денег имеет компания, не много ли она набрала заемных ( долгов )?\\n\\nЕсли показатель выше 1 - значит количество заемного капитала преобладает над собственным и это не есть хорошо\\nЕсли показатель ниже 1 - значит своих денег достаточно, а долгов меньше, таким образом, это является положительным моментом в оценке той или иной компании\\n","image":""},{"text":"Мультипликатор EPS и Разводненный EPS\\nEPS - прибыль на акцию. Берется прибыль компании и делится на количество акций Разводненный EPS = Разводненная прибыль на акцию. Простым языком - это максимально возможное\\nснижение дохода на акцию\\n\\nЕсли с первым все понятно, то со вторым думаю нет. Тут нужно вникнуть в саму суть. Что такое разводнение? Это увеличение акций по средством дополнительной эмиссии, buyback-ов и многих других моментов\\n\\nЕще проще? Хорошо!\\n\\nПредставьте, что у компании 100 акций и 50 привилегированных. Держатели обыкновенных покупали их по 10 долларов за штуку. Но руководство решило разводнить обыкновенные акции и 50 привилегированных штук стали обычными. Теперь цена акции должна упасть\\n\\nпо той причине, что их стало больше. То есть резкое или плавное увеличение\\nколичества акций называется разводнением, так тот же показатель прибыли на акцию меняется, а в следствие и остальные мультипликаторы становятся на порядок хуже\\n\\nЕще не поняли почему? Вот вам пример!\\n\\nКомпания имеет 100 акций по цене в 10 долларов. Капитализация компании 1000 долларов\\n\\nЧему равен EPS, если прибыль за год составила 500 долларов? Правильно - 500/100=5 долларов на акцию\\n\\nНо, что будет, если случится разводнение? Главы компании добавят еще 50 акций и их станет 150?\\n\\nВерно мыслите! Если акций станет 150 штук, то прибыль на акцию сразу же\\nбудет составлять не 5 долларов, а 500/150=3.33 доллара на акцию, что намного хуже!\\n\\nТеперь, когда потенциальный акционер будет видеть компанию, он скажет - елки-палки, а EPS то уже не так шикарен. Но что будет с котировками и актуальными держателями активов? Правильно, подешевеют цены на актив, а инвесторы потеряют деньги\\n\\nТаким образом, мы пришли к ответу - что же такое разводненная прибыль на акцию и зачем она нужна?\\n\\nЗначение этой прибыли позволяет нам понять максимально негативный EPS ( прибыль на акцию ) в случае, если владельцы компании решат использовать разводнение по полной и использовать все возможные ресурсы\\n\\n\\n\\n\\nТаким образом, EPS - прибыль на акцию, а Разводненный EPS -\\nмаксимально возможное снижение дохода на эту же акцию в случае разводнения позиций\\n\\nДля чего нам нужны эти значения и как их понимать?\\n\\nПри выборе компаний из одной отрасли и одной страны, мы будем выбирать те, где EPS выше, так как компания прибыльней.\\nА Разводненный EPS поможет нам представить риски, которые мы берем при покупке актива\\n","image":""},{"text":"Мультипликатор Cash/Share\\nCash/Share или по другому Cash per Share - отношение наличных активов компании по отношению к количеству всех акций\\n\\nЭтот мультипликатор сложнее пройденных в связи со спецификой применения и понимания\\n\\nПо сути, смотря на этот мультипликатор мы видим сколько наличных денег приходится на одну акцию, похоже на EPS, но в нашем случае не прибыль, а именно наличные\\n\\nЕго используют для оценки компании в правильности действий. Понятное дело, что он не должен быть меньше 0, но что, если он 10-20-30$ на акцию?\\n\\n\\n\\n\\nВ целом, это должно быть вроде как и хорошо, ведь компания\\nимеет большой запас наличных средств, но с другой...почему\\nони не используются?\\n\\nПочему они не пускаются на дело, зачем они хранятся в наличных средствах? Для чего все это. Тут нет четкого понимания, сколько же должен составлять данный показатель в цифрах, так как это индивидуально для каждой компании, но давайте на очередном примере разберемся, что есть плохо, а что хорошо!\\n\\nПредположим, что у компании, где капитализация = 1.000 долларов, в обороте есть 100 акций, а\\nприбыль = 500 долларов. Таким образом, мы имеем следующее : EPS = 5 долларов, P/E = 2 и кажется из этих данных, что все максимально прекрасно. Но что будет, если я вам скажу, что маржа на товар/ услугу 1000% и прибыль в 500$ они получают, вложив всего 50$?\\n\\nВаше мнение еще не изменилось? Хорошо, объясняю дальше!\\n\\nУ компании прекрасный товар, который приносит огромную окупаемость, но она не пытается продать больше, вкладывает из года в год +- одно и то же количество денег на реализацию, сбыт и производство продукта\\n\\nОстальные деньги она не пускает в разработку чего-то нового ( НИОКР другими словами, будем проходить позже ), а оставляет в наличке, но для чего? Владельцы берут себе? Раскидывают между своими?\\n\\nЕсли так, то какая нам разница, что у них EPS 5$ и P/E =2? Если компания не пытается двигаться вперед, то в нее не стоит вкладывать ни рубля\\n\\nВы спросите - Антон, как же нам понять, что компания поступает именно так?\\n\\nВ этом вы окончательно разберетесь позже, но вкратце - есть НИОКР - Научно- исследовательские и опытно-конструкторские работы, данные по вложениям в которых открыты для всех\\n\\nЕсли мы видим, что у компании не идет развитие выручки, прибыль, а начинается обычная стагнация, зачем в нее вкладываться?\\n\\nЕще раз - компания делает стабильные деньги, имеет прекрасные показатели и отличную маржу на товар, таким образом и рентабельность на уровне, но она не пытается развиваться, не расширяет ассортимент, не увеличивает количество клиентов, не пытается пускать деньги в разработку, а лишь пожинает плоды от своей деятельности\\n\\nДайте мне ответ - вы вложитесь в такое? Если да, то перечитайте главу заново. У такой компании нет стимулов расти в котировках, умные инвесторы не дадут ей подняться\\n","image":""},{"text":"Мультипликатор Cash\\nFlow/Share\\nCash Flow/Share - денежный поток на акцию\\n\\nНо, чтобы понять, что же это такое, надо дать определение денежному потоку\\n\\nДенежный поток - это прибыль после налогообложения плюс амортизация в расчете на акцию\\n\\nТеперь надо понять, что такое амортизация\\n\\nАмортизация простыми словами - это выраженный в деньгах износ основных средств или нематериальных объектов. Суть состоит в том, чтобы путем амортизационных отчислений обеспечить постепенное возмещение стоимости объекта. Как? Эти суммы включаются в расходы\\n\\nТеперь возвращаемся к определению\\n\\nCash Flow/Share - это просто прибыль после налогообложения плюс амортизированные отчисления за износ основных средств и нематериальных объектов. И все это в пересчете на одну акцию\\n\\nПредставьте, если бы вам просто дали это определение. Сколько человек из 1.000 это бы поняли без пояснений? Я думаю не больше 5% ( сам в свое время во всем разбирался )\\n\\nМоя цель - дать грамотное и четкое объяснение каждой отдельной темы, чтобы после обучения вы вышли без шуток - знатоками инвестиций хотя бы в теории, а дальше дело за практикой\\n\\nВозвращаясь к нашему мультипликатору, хочу сказать вам следующее - нет четкого\\nопределения \\"денежному потоку\\"\\n\\nМногие экономисты интерпретируют его по разному, основные звучат так - совокупность распределенных во времени поступлений (притока) и выплат (оттока)\\nденежных средств, генерируемых хозяйственной деятельностью предприятия, независимо от источников их образования.\\n\\nПоскольку мнения разнятся, я предлагаю вам выбрать именно то, что ближе вам Теперь переходим к тому, а что нам с ним делать? С этим денежным потоком на акцию\\nЕсли у компании отрицательный денежный поток на акцию, это означает, что компания использует свой венчурный капитал для покрытия накладных расходов, и компания еще не получила положительного денежного потока от своей деятельности.\\n\\nПростыми словами - при отрицательном денежном потоке мы понимаем, что\\nвенчурный капитал уходит не в нужное русло, а на затраты, понесенные на организацию, обслуживание производства, реализацию продукции и управление\\n\\nЭто выражается в сумме денег, которые компания тратит сверх того, что она берет в месяц\\n\\nЕсли же у компании есть избыточный денежный поток на акцию, то это будет означать, что она может неплохо побаловать инвесторов своими дивидендами. Но помните, что новые и инновационные компании обычно не имеют избытков, так как все уходит в НИОКР и другие важные сферы для развития\\n\\nВы чувствуете, что НИОКР уже везде? Я тоже это чувствую, потому что вложения в него являются одним из важнейших показаний дальнейшего развития компании","image":""},{"text":"Мультипликатор P/FCF\\nP/FCF - цена/свободный денежный поток. На английском - Price/Free Cash Flow Начнем с понимания, что такое свободный денежный поток\\nСвободный денежный поток - это сумма, на которую операционный денежный поток предприятия превышает его потребности в оборотном капитале и расходы на основные средства.\\n\\nЧто же такое операционный денежный поток? - это сумма денежных средств, которые компания генерирует от операционной деятельности в течение конкретного периода времени. Операционная прибыль в свою очередь - это прибыль от основной операционной деятельности предприятия\\n\\nРасставим все точки над i?\\n\\nТо есть P/FCF =  цена/свободный денежный поток, основной задачей этого мультипликатора является определение способности компании выплачивать дивиденды\\n\\nЗначение ниже 15 означает очень здоровое состояние компании и способность к выплате дивидендов\\nЗначение ниже 20 означает приемлемое состояние компании и также способность выплаты дивидендов\\n\\nЕсли значения выше - компания не так здорова, как могла бы быть и платит меньше дивидендов или не платит вовсе\\n\\nЕсть несколько тонких моментов в интерпретации данного мультипликатора, о которых я вам сейчас поведаю\\n\\n\\n1 момент - как и все другие мультипликаторы все познается в сравнении. Мы\\nдолжны сравнивать конкретную компанию в своей отрасли, а не в целом по рынку, так как у IT все совсем иначе, чем у нефтянки, верно?\\n\\n2 момент - надо понимать откуда взялся положительный денежный поток.\\nКомпания \\"А\\" могла достичь его своим трудом и работой, а компания \\"Б\\" взяла кредит и перекрыла убытки, что будет в отчете? Правильно - положительные денежные потоки у обеих компаний. Я научу вас проверять это!\\n\\n3 момент - данный мультипликатор не может сказать нам даже о возможном изменении котировок компании, он лишь анализирует дивиденды, которые несомненно важны, но не являются ключевым при выборе компании, если вы не составляете дивидендный портфель\\n","image":""},{"text":"Мультипликатор Quick Ratio\\nQuick Ratio - это коэффициент быстрой ликвидности — финансовый коэффициент, равный отношению высоколиквидных текущих активов к краткосрочным обязательствам\\n\\nОн характеризует способность организации погасить свои краткосрочные обязательства ликвидными активами\\n\\nПричем, в ликвидные активы входят : дебиторская задолженность, наличные средства, краткосрочные финансовые вложения, да и в целом - все оборотные активы, кроме неликвидных запасов\\n\\nЧем выше коэффициент быстрой ликвидности, тем лучше для компании\\n\\nНормой считается значение 1 и выше, но прошу учесть в очередной раз, что мы\\nанализируем компанию относительно определенной отрасли, в которую она включена\\n\\nЭто означает, что коэффициент ниже 1 говорит нам о том, что ликвидные активы не способны покрыть краткосрочные обязательства, но если у условной компании \\"А\\" это значение 0.9, а по отрасли 0.2, то это является сильным положительным результатом, в то время, как у компании с таким же коэффициентом 0.9, а по отрасли 1.8 - плохим результатом\\n\\nЕсли вы вдруг сейчас задаетесь вопросом - вот я все это понял(а), что дальше? Где мне это смотреть, я ведь ничего не знаю!\\n\\nМой ответ - всему свое время, не стоит никуда спешить, давайте сначала изучать теорию, а только потом будем переходить к практике\\n\\nФундаментальный анализ - целая наука, которая не терпит спешки в своем изучении\\n","image":""},{"text":"Мультипликатор Current Ratio\\nCurrent Ratio - коэффициент текущей ликвидности. Он показывает способность компании погасить свои краткосрочные обязательства в течение одного года оборотными активами\\n\\nВы скажете мне - в чем же разница между Quick Ratio и Current Ratio. Я вам отвечу - в Quick Ratio должны использоваться только те ликвидные активы, которые могут быть переконвертированны в наличные средства в течение 90 дней, а в Current Ratio такие активы должны быть конвертированы в течение 365 дней или ровно 1 года\\n\\nТаким образом, если значение 2 и больше - это хорошо. Означает, что текущие оборотные активы могут в 2 раза покрыть краткосрочные обязательства. Все также зависит от определенной отрасли, не забывайте\\n","image":""},{"text":"Мультипликатор Asset Turnover\\nAsset Turnover ( далее просто AT ) - коэффициент оборачиваемости товаров.\\nПростыми словами - это коэффициент показывает, сколько раз в среднем реализуются запасы предприятия за установленный промежуток времени, отражая эффективность использования активов\\n\\nДанный показатель достаточно важный, но у него нет привычных цифр нормы или напротив, тут нужно проводить анализ относительно сектора компании. Если мы берем TSLA, то смотреть будем по отрасли автомобилестроения, если берем OIS, то по нефтяной отрасли и так далее\\n\\nНо для понимания скажу так - чем он выше, тем лучше. Если у компании маленький коэффициент оборачиваемости товаров, то ей стоит подзадуматься об эффективности использования своих активов\\n\\nПредлагаю вам немного разобраться, как этот коэффициент считается\\n\\nAssets turnover = Выручка (Revenue) / Среднегодовая стоимость активов (Average annual asset value)\\nЧто такое выручка понятно всем, но со вторым надо разобраться Среднегодовая стоимость активов (Average annual asset value) – это сумма стоимости\\nактивов на начало периода и конец периода, деленное на два\\n\\nСтоимость активов в свою очередь — это сумма внеоборотных и оборотных активов предприятия. То есть балансовая стоимость всех активов предприятия по данным бухгалтерского баланса на последнюю отчетную дату\\n\\nНадеюсь, что не запутал вас еще больше, но понимать, как это считается - очень важно\\n","image":""},{"text":"Мультипликатор Inventory Turnover\\nInventory Turnover - оборачиваемость запасов. Похож на предыдущий мультипликатор, но в данном случае не активы, а именно запасы\\n\\nПоказывает, сколько раз за анализируемый период организация использовала средний имеющийся остаток запасов\\n\\nПозволяет выявить остатки неиспользуемых или устаревших запасов. Прошу заметить, что под запасами понимаются : товары или сырье\\n\\nКак таковой нормы нет, желательно анализировать этот показатель в отношении среднего по отрасли, а еще лучше - по истории компании + по отрасли\\n\\nКак понимать мультипликатор, если неизвестно от чего отталкиваться?\\n\\nСначала давайте точно поймем - для чего он?\\n\\nЕсли у компании слишком низкий показатель, то она имеет слабую динамику продаж и слишком большое количество избыточной продукции = неэффективное управление запасами\\n\\nНормальный уровень = примерно по отрасли и чуть выше, вероятнее будет означать хорошее здоровье компании и меньшие риски от потери непроданного товара\\n\\nНо слишком высокие, оторванные от реальности и среднего числа по отрасли, показатели - могут сыграть злую шутку. Так как это означает, что компании приходится продавать практически весь товар, чтобы держать выручку/прибыль в норме\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nПонимать среднее значение нужно следующим образом\\n\\nНа ресурсе, где мы с вами будем рассматривать все показатели, есть графа средней по отрасли. Прибавляем 5-15%  к средней и получаем здоровую компанию. Если значение будем таким же, то тоже ничего плохого - значит это обычная рядовая компания по оному мультипликатору\\n\\nДалее мы с вами рассмотрим последний мультипликатор из этого блока и перейдем к рентабельности компаний\\n","image":""},{"text":"Receivable Turnover\\nReceivable Turnover - коэффициент оборачиваемости дебиторской задолженности. Он показывает, насколько эффективно компания дает кредиты и взыскивает долги\\n\\nКомпания, которая эффективно собирает кредитные платежи, будет иметь более высокий коэффициент оборачиваемости дебиторской задолженности\\n\\nСамое полезное - сравнивать эти показатели между средним по отрасли и анализируемой компанией\\n\\nНизкий коэффициент дебиторской задолженности будет показывать неспособность компании грамотно выстраивать денежно-кредитную политику со своими\\nклиентами\\n\\nМногие из вас подумают - \\"на кой нам все это надо знать?\\"\\n\\nОтвечу - если вы собрались стать квалифицированными инвесторами, хотя бы в своем понимании и значении этого слова, то стоит разбираться откуда берутся доходы компании, как она ими управляет, насколько эффективна в максимальном количестве аспектов\\n\\nПри выборе компании, я часто пытаюсь перевести аналитику в реальную жизнь\\n\\nКомпания имеет низкий коэффициент дебиторской задолженности - какой бы индекс имел я? Много раз не возвращали, я терял деньги. Стал бы я покупать акции имени себя? Конкретно по этому показателю нет, надо будет посмотреть на остальные и составить общую картину\\n\\nПонимаете смысл? Мы собираем максимальное количество данных и пытаемся сделать по ним грамотный вывод, чтобы верно вложить свои средства\\n\\n\\n\\nНа этом главу мультипликаторы мы с вами закончили\\n\\nПрошу вас посмотреть видео и пройти тестирование, а при его успешном завершении, пройти к главе 2 - рентабельность\\n\\nУ кого остались вопросы - \\"где нам смотреть все эти индикаторы?\\", я отвечаю - я разработал свою систему обучения, где сначала мы проходим материал и лишь затем практикуемся, чтобы не было никакой путаницы\\n\\nНебольшой спойлер - все эти мультипликаторы, а также будущая рентабельность смотрятся в одном месте\\n","image":""}]	novyj-urok-1331	t	\N	\N	3	472	3
16	0	81126a8e-67cb-4591-ae48-607656d6e70f	Индикаторы	[{"text":"Дорогие друзья, приветствую всех на новой теме, если вы дошли до нее, то вероятнее всего уже прошли фундаментальный анализ или же просто решили запрыгнуть в эту тему первой :)\\n\\nЯ принял решение, что я напишу лучшее обучение, которое есть на просторах интернета. Максимально четкое и со всеми пояснениями\\n\\nПоэтому, если вы проходили мои предыдущие обучения, то прочитайте и это, вы найдете очень много нового\\n","image":""},{"text":"Начнем с того, что Т.А. ( тех.анализ) делится на несколько групп, все из которых мы с вами пройдем\\nГруппы : индикаторный анализ, графический анализ, свечной анализ Каждая из них имеет свои свойства и логику, мы начнем с самой первой и плавно\\nбудем переходить к следующим\\n\\nНа пути прохождения каждой группы я буду демонстрировать вам связки, которые отрабатывают себя лучше остальных\\n\\nСвязка = группа индикаторов или иных способов опознавателей роста или падения, которая с большей точностью показывает на возможный результат\\n\\n(2.1) RSI или Relative Strength Index\\nRSI - это индекс относительной силы. Был разработан Уэллсом Уайлдером в 1978 году Важное примечание - используется по сей день, что означает его компетентность и реальную пользу\\n\\nЧто же такое этот индекс относительной силы?\\n\\nВсе на самом деле просто - это отношение роста к падению за определенный период или наоборот. Таким образом, Уайлдер посчитал, что мы поймем, кто сейчас преобладает на рынке и что может быть с ценой\\n\\nДля расчета берут все свечи, которые закрывались выше предыдущих и все свечи, которые закрывались ниже предыдущих, затем с помощью ЕМА ( дальше пройдем эту тему ) определяется среднее значение прироста\\n\\nRS = EMAn(Up) / EMAn(Down) - так выглядит формула\\n\\n\\nСоответственно, чтобы удобно было просматривать данный индикатор на графике, для него придумали значения. Он находится в диапазоне от 0 до 100%  в виде кривой линии\\n\\nТакже, перед тем, как показать вам его и научить ставить на график, я расскажу о правилах :\\n\\n1)данный индикатор лучше использовать в связках, но не по отдельности\\n2)на младших ТФ ( таймфрейм - длина свечи ) часто врет\\n3)если находится в зоне ниже 30, то значит, что сигнал бычий. Если находится в зоне выше 70, то значит, что сигнал медвежий\\n\\nОсновные правила я вам рассказал, все более углубленные будут идти после прохождения всех индикаторов\\n\\nСначала переходим на сайт TradingView и проходим регистрацию, чтобы у вас был доступ к индикаторам\\n\\nПо правилам TV на бесплатной версии вы можете добавить только 3 индикатора на один график, не забывайте об этом\\n","image":"/media/images/theme_5_lesson_16_outline_1.png"},{"text":"Сверху есть кнопка поиска, нажмите на нее и введите желаемый тикер компании или ее полное название\\n\\nВ моем случае это Tesla ( TSLA )\\nДалее вам нужно просто нажать \\"открыть график\\" и все, вы перейдете туда, куда нужно Сейчас будем ставить с вами индикаторы на этот график и изучать RSI","image":"/media/images/theme_5_lesson_16_outline_2.png"},{"text":"Перед вами график, важные функции я подписал, посмотрите и запомните. Сверху меняем только ТФ и выбираем индикаторы, слева много функций","image":"/media/images/theme_5_lesson_16_outline_3.png"},{"text":"Чтобы поставить индикатор, надо зайти в индикаторы ( сверху выделил красным ), затем ввести полное название нашего индикатора -\\nrelative strength index и выбрать первый вариант или найти нужный\\n\\nОн должен быть от создателя Everget, как на скриншоте ( создатель пишется справа )\\n\\nЭтот RSI является стандартным и использование остальных видов не нужно\\n","image":"/media/images/theme_5_lesson_16_outline_4.png"},{"text":"Вот таким образом выглядит RSI\\n\\nКак вы видите, когда он заходит за зону 70 - начинает подсвечиваться зеленым и означает, что компания перекуплена и возможно падение. Если он заходит в красную зону - компания перепродана и ждет роста. Красная зона находится ниже уровня 30\\n\\nЗона, которая находится между 30 и 70 - зона боковика, находясь в ней, он не сигнализирует ни о каких возможностях роста/падения\\n","image":"/media/images/theme_5_lesson_16_outline_5.png"},{"text":"Давайте посмотрим, как будет вести себя этот индикатор на различных таймфреймах\\n\\nНапомню, что ТаймФрейм ( сокращенно ТФ ) = длина свечи. Если он равен 30 минут, то значит, что длина свечи 30 минут и каждая свеча будет по 30 минут\\n\\nПеред вами RSI на дистанции в 5 дней и 5 минутном ТФ","image":"/media/images/theme_5_lesson_16_outline_6.png"},{"text":"Что мы видим? Неплохую отработку, причем на удивление неплохую. При установке\\nодинакового стопа и тейка ( о стратегиях позже ) мы бы имели приятную прибыль Но у данного индикатора есть свои правила :\\n1)чем шире ТФ - тем меньше шумов и лучше сигнал\\n2)в одиночку работает так себе, следует иметь связку\\n3)может быть затяжным, что путает трейдера ( поэтому в связке есть MACD - следующим разбираем )\\n\\nВ целом, индикатор сильный и хочется рассмотреть его и на других ТФ, чем я вам и предлагаю сейчас заняться\\n\\nСделаем его анализ и посмотрим на поведение, а также на % прибыль по сигналам на 2 часовом ТФ и дневном\\n\\nНа 5 минутном ТФ средняя прибыль 0.7-0.8% с сигнала с соответствующим стопом\\n\\nТаким образом ведет себя RSI на ТФ в 2 часа и широте графике пол года\\n\\nМало сигналов, то они стали сильнее - средняя прибыль около 4-5%, как и стопы\\n\\nЕсли посчитать количество успешных = 4 к 2, то есть 2 раза по стопу 5%, два 4 раза по тейку 5%, итого прибыль 1.66%  к депозиту\\n\\nСогласен, результат не лучший, но мы и не будем торговать по одному RSI, да и ТФ 2 часа мой нелюбимый, смотрим дальше\\n","image":"/media/images/theme_5_lesson_16_outline_7.png"},{"text":"На готовом ТФ мы видим полную отработку сигналов от RSI. Ощущаете разницу? Когда мы\\nпереходим к более старшому ТФ, мы получаем более высокую прибыль и меньше сигналов, которые вызваны шумами\\n\\nСредняя прибыль с каждой сделки 15%, даже близко к стопу ничего не подошло\\n\\nУчитывайте, что я рассматриваю BOEING и он не был особо интересным в этом году, сейчас покажу другой более шумный пример\\n","image":"/media/images/theme_5_lesson_16_outline_8.png"},{"text":"Apple вполне интересная компания, которая показала за год 4 раза сигнал от RSI, 3 из которых были плюсовые, 1 минусовой\\n\\nНа самом деле минусовых тут нет, то объяснять сейчас не время почему, скоро узнаете ( p.s. до стоп в 3 случае не дошло )\\n\\nСредняя прибыль за сделку в районе 10%, вполне приемлемая прибыль","image":"/media/images/theme_5_lesson_16_outline_9.png"},{"text":"Итог по индикатору\\n\\nДостаточно сильный индикатор, который лучше показывает себя на высоком ТФ, но есть большие риски того, что он будет идти долго и придется докупать\\n\\nЛучший его друг, который поможет это избежать - MACD, ставится с ним вместе в связку и спокойно вытаскивается прибыль\\n\\nЕсли хотите торговать на короткой дистанции, то ставьте одинаковые стопы и тейки, но прежде проверьте отработку минимум за 1 месяц. Если она по индикатору меньше 60%, то не надо лезть. MACD накинет еще 10%  отработки сверху, что даст приятные 7 на 3\\n\\nПереходим дальше к индикатору MACD\\n","image":""},{"text":"( 2.2 ) MACD\\nMACD - индикатор расхождения или схождения скользящих средних. Скользящая средняя является результатом усреднения цены на графике за определенный период.\\nПосле чего добавляется на график в виде кривой\\n\\nMACD имеет две таких кривых и гистограмму, что позволяет давать неплохие сигналы и в разных направлениях\\n\\nЭтот индикатор был разработан известным Нью-Йоркским трейдером Джералдом Аппелем\\n\\nЭтот индикатор является и трендовым и осциллятором. Если первое его назначение понятно, то что такое осциллятор? Они представляют собой графическое отображение краткосрочной ситуации на рынке\\n\\nВот что из себя представляет MACD. Я показал прямо сейчас, чтобы объяснить принцип работы, ведь без него\\nнельзя продолжать изучение\\n\\nMACD имеет 2 EMA. Как вы поняли - это графическое отражение ситуации на рынке ( перекупленность или перепроданность )\\n\\nПервая EMA MACD получается за счет следующего - из быстрой скользящей средней вычитают более медленную.\\nИх скорость зависит от периода, который у них установлен. В основном из 12 вычитают 26\\n\\nПо полученным значениям строится линия MACD ( синяя), вторая линия сглаживается ЕМА 9 и получается сигнальная линия ( оранжевая)\\n","image":"/media/images/theme_5_lesson_16_outline_11.png"},{"text":"Мы узнали, как построить MACD, но теперь надо понять, как его использовать\\n\\nЯ предлагаю сразу перейти к теории и затем перескочить на практику с графиком\\n\\nВ теории мы должны узнать все сигналы, которые он дает ( их не так мало из-за гистограммы )\\n\\nПервый сигнал и единственный, который дают там линии : сигнальная и MACD - это их пересечение\\n\\nПри пересечении сигнальной линии линией MACD сверху-вниз задается нисходящий тренд и нам следует встать в шорт-позицию\\n\\nПри пересечении наоборот снизу-вверх задается восходящий тренд и нам следует встать в лонг-позицию\\n\\nДавайте посмотрим на графике, как это работает\\n\\nКвадратиками я выделил места на графике и непосредственно на MACD\\n\\nНачинаем смотреть слева на право\\n\\nПервый сигнал - шорт, так как синяя пересекла оранжевую сверху-вниз, как видите на графике, он последовал за сигналом\\nДалее идет восходящий сигнал в лонг, так как синяя пересекла оранжевую снизу-вверх Далее все понятно, сигналы то в шорт, то в лонг\\nИз 6 сигналов 4 плюсовых и 2 минусовых, но опять же - при связке RSI + MACD их было бы 5, а минусовых всего 1\\n","image":"/media/images/theme_5_lesson_16_outline_12.png"},{"text":"Далее мы можем упростить себе просмотр гистограммы и отключить линии. Для этого наводим мышку на название индикатора и выбираем шестеренку","image":"/media/images/theme_5_lesson_16_outline_13.png"},{"text":"После переходим во вкладку \\"стиль\\" и убираем галочки с MACD и Сигнал\\n\\nТаким образом, у нас с вами остается только гистограмма, с которой мы сейчас и будем работать\\n","image":"/media/images/theme_5_lesson_16_outline_14.png"},{"text":"Сначала теория\\n\\nКак вы заметили, у гистограммы есть 2 цвета - красный и зеленый\\n\\nВ целом, она показывает просто разность между сигнальной и MACD линиями, чтобы еще больше упростить индикатор\\nНас интересует несколько типов сигналов, а точнее - дивергенция и конвергенция По сути - это обычное расхождение, когда гистограмма MACD не согласна с графиком\\nи говорит, что он нас обманывает\\n\\nПроявляется это в следующем --->\\n\\nПервый сигнал - дивергенция. На восходящем тренде на графике мы видим\\nэкстремумы, соединив которые имеем стрелочку вверх ( направление вверх )\\n\\nНо гистограмма MACD в тот же момент эти же экстремумы рисует вниз, то есть говорит, что так быть не должно. Это медвежий сигнал, так оно и произошло. После двух дивергенций Apple, график которой мы сейчас рассматриваем, скорректировалась на 10%  ( для нее это существенно )\\n","image":"/media/images/theme_5_lesson_16_outline_15.png"},{"text":"Дивергенции могут быть и на красных частях при восходящем тренде, как, например,\\nперед моментом обвала в 2020 году, дивергенция по Apple предсказала это\\n\\nДва нижних экстремума графика указывают вверх, а MACD со своей гистограммой вниз, что и произошло через пару месяцев\\n\\nВся прелесть гистограммы в том, что она показывает очень сильную отработку на\\n\\nдистанции от года, то есть дневном ТФ\\n","image":"/media/images/theme_5_lesson_16_outline_16.png"},{"text":"Аналогичный сигнал в лонг называется конвергенцией. Он происходит на падающем\\nпериоде графика, когда гистограмма MACD с ним не согласна\\n\\nПеред вами подтверждение тому, что на дневном ТФ гистограмма редко врет ( но бывает и врет, нет 100% индикаторов )\\n\\nЭто график SPCE и двойная дивергенция. При покупке после первой, вы бы заработали 170% на пике, при усреднении на второй около 230%","image":"/media/images/theme_5_lesson_16_outline_17.png"},{"text":"Таким образом, вы знаете два индикатора : RSI и MACD\\n\\nНа самом деле они являются одной из самых интересных связок в трейдинге, хоть и использование без третьего трендового индикатора очень рискованно\\n\\nДавайте хотя бы в рамках теории рассмотрим принцип связки","image":"/media/images/theme_5_lesson_16_outline_18.png"},{"text":"То есть мы видим, как первым из двух сигнал дает RSI, а MACD его подтверждает\\n\\nЗапомните эту \\"теорию\\", так как в трейдинге есть три типа индикаторов : опережающие, основные и подтверждающие\\n\\nИ каждый индикатор в определенной связке может менять позиции\\n\\nНо это лишь теория, так проще понимать принцип действия каждого индикатора для новичков\\n\\nВ целом все связки достаточно просты, так как индикаторы показывают четкое направление\\n\\nВ нашем случае RSI в зеленой зоне + MACD пересекает вниз, таким образом мы получаем нисходящий тренд и входим в шорт\\n\\nЕсли бы было все напротив - RSI красная и MACD пересекает вверх, встали бы в лонг\\n\\n(2.3) Bollinger Bands\\n\\nBollinger Bands - это индикатор технического анализа. Является трендовым индикатором и построен на принципах стандартного отклонения\\n\\nДля начала я хочу объяснить вам принципы стандартного отклонения, а затем мы перенесем их на устройство Боллинджера и все поймете\\n\\nСтандартное отклонение - это наиболее ожидаемый результат рассеивания значений случайной величины относительно ее математического ожидания\\n\\nКажется все сложным, но на самом деле нет. Дам мини пример и перейдем к полноценному. Команда А каждый матч забивает ровно 3 гола, какое ожидание к следующему матчу? Вот вам и ответ) А теперь к полноценному примеру со стандартным отклонением, так как в этом примере оно равно 0\\n\\nВ таблице ниже приведен пример расчета стандартного отклонения\\n\\nУ нас есть 2 футбольные команды и 5 сыгранных ими сезонов. Количество очков = количество забитых мячей за сезон за все матчи\\n\\nСумма забитый мячей у обеих команд одинаковая, что невооруженным глазом даст нам понять, что они имеют одинаковую стабильность, но разве это так? Вовсе нет\\n\\nНадо посчитать стандартное отклонение у обеих команд. Мы можем это сделать следующим путем - считаем разницу мячей между соседними сезонами и делим на их количество. У первой команды это значение =  8/5=1.6\\nУ второй команды =  57/5=11.4\\n\\nЭто означает, что с математической точки зрения команда 1 намного стабильнее и если сложить все мячи и поделить на количество сезонов и прибавить +- 1.6 мы получим примерным результат, который она покажет в следующем сезоне\\n","image":"/media/images/theme_5_lesson_16_outline_19.png"},{"text":"Таким образом, логика в следующем\\n\\nПервая команда в 6 сезоне забьет =  66/5+-1.6 Вторая команда в 6 сезоне забьет =  66/5+-11.4\\n\\nЕсть разница? Конечно есть. У первой = 13.2+-1.6 У второй 13.2+-11.4\\n\\nТаким способом и работает наш с вами индикатор, давайте перейдем к нему!\\n\\nСейчас мы будем разбирать этот индикатор по его множителям и на основании стандартного отклонения, мы поймем, каким образом он работает и как нам с ним совладать!\\n","image":"/media/images/theme_5_lesson_16_outline_20.png"},{"text":"Bollinger имеет три множителя : 1, 2 и 3\\n\\nЕсли индикатор стоит на 1 множителе, это значит, что с вероятностью 68% цена не выйдет за его пределы, если стоит на 2 множителе, то это означает, что цена с вероятностью 95% не выйдет за его пределы, если стоит на 3 множителе, то это означает, что цена с вероятностью 99.7% не выйдет за его пределы\\n\\nТут я думаю все понятно, но надо разобраться, что это за пределы и как он вообще выглядит?\\n\\nДля этого переходим в TradingView и начинаем искать этот индикатор","image":"/media/images/theme_5_lesson_16_outline_21.png"},{"text":"Все как обычно - заходим в плашку\\nиндикаторы, вводим слова ( обязательно полностью ) - Bollinger Bands V2 и видим первый индикатор, может у кого-то будет не первый, но он от Nomadand\\n\\nНажимаем обязательно звездочку слева, что индикатор добавился в избранное и нажимаем на сам Боллинджер, чтобы он появился у нас на графике\\n\\nТеперь переходим к графику","image":"/media/images/theme_5_lesson_16_outline_22.png"},{"text":"Таким образом выглядит сам индикатор, вы видите, что он имеет три полоски, две из\\nкоторых мы сейчас будем разбирать\\n\\nВерхняя и нижняя линии как раз и определяют этот диапазон, где цена должна держаться и не выходить из него\\n\\nСейчас у нас включен второй множитель, это означает, что в 95% случаев график будет находиться внутри индикатора, то есть внутри двух кривых\\n","image":""},{"text":"Чтобы протестировать различные уровни, я захожу в настройки индикатора, скрин\\nниже","image":"/media/images/theme_5_lesson_16_outline_24.png"},{"text":"Затем я захожу в аргументы и меняю множитель на 3\\n\\nКак я и говорил ранее - их всего 3, самый слабый 1, самый сильный 3, средний 2\\n\\nЯ чаще всего использую третий множитель и широкий ТФ, но об этом чуть позже\\n\\nБольше ничего в настройках менять не стоит\\n","image":"/media/images/theme_5_lesson_16_outline_25.png"},{"text":"Перед вами слева направо расположены все три множителя с интерпретацией на\\nграфике\\n\\nКак вы видите, самый левый график охватывает все свечи и держит их внутри себя, средний график уже имеет проколы, а правый график имеет их слишком много, так как всего лишь 68% графика должны в нем находиться\\n","image":"/media/images/theme_5_lesson_16_outline_26.png"},{"text":"Вот мы и разобрались, что же такое Боллинджер, теперь предлагаю перейти к более\\nинтересному - разбору его сигналов и поведения\\n\\nЕсли мы устанавливаем 2-3 множители, то у нас с вами есть несколько видов сигналов\\n\\n1)Трендовый. Вы видите, что когда-то Боллинджер красный, когда-то зеленый. Таким образом он показывает тренд, Чем шире ТФ - тем сильнее и длиннее тренд. Против\\nтренда мы не торгуем, поэтому путем зрительного установления тренда по Боллинджеру мы принимает решения в какую сторону входить в позицию : лонг или шорт\\n\\n2)Точечный. Этот сигнал дается в тот момент, когда свеча или несколько свечей выходят за пределы полос Боллинджера. Так как мы понимаем, как работает\\nиндикатор, то с вероятностью 95% или 99.7% график должен находиться внутри полос.\\nТаким образом, мы делаем вывод, что вероятнее всего он вернется.\\nТут ведется торговля против тренда, она для рискованных. Сейчас приведут примеры\\n\\nЯ продемонстрировал пример на третьем множителе, где при выходе за границу индикатора,\\nвероятность возврата обратно куда выше\\n\\nКак вы видите, график и правда вернулся обратно, а мы могли заработать большие проценты\\n\\nЯ рекомендую использовать данную технику только на дистанцию 1-3 недели на дневном ТФ или годовом графике (это одно и то же, написал для простоты )\\n","image":"/media/images/theme_5_lesson_16_outline_27_EuRyuiW.png"},{"text":"Но у Боллинджера также внутри находится магнит, который тянет график к себе - ЕМА 20\\n\\nЭта информация вам нужна, чтобы понимать, что это за средняя линия находится посередине. Когда график находится выше нее - индикатор показывает восходящий тренд, когда ниже нее - нисходящий\\n\\nПоскольку 20 ЕМА не самая сильная, я и рекомендую использовать индикатор на дистанции около 1 года и выше","image":"/media/images/theme_5_lesson_16_outline_28_0GgN1Cn.png"},{"text":"Казалось бы, может хватит сигналов от этого индикатора? Но есть еще один, он не показывает\\nнаправление тренда, но может предупредить вас о всплеске волитальности\\n\\nБоллинджер часто любит сворачиваться в сосиску, три из которых вы видите на экране. Это сильное понижение волатильности компании и в 99.9% случаев после такого следует всплеск\\n\\nЧто с этим делать? Держать в уме и понимать, что бумага покажет в ближайшем будущем, проводить анализ по другим показателям и индикаторам и делать выводы\\n","image":"/media/images/theme_5_lesson_16_outline_29.png"},{"text":"В целом, Боллинджер очень сильный индикатор и я советую вас к нему присмотреться\\n\\nВ скором времени вы узнаете много сильных индикаторов и придется выбирать лучшие, но держите его в уме всегда\\n\\nЗапомните заранее - очень сильная связка = Боллинджер + Уровни Пивот + ЕМА + МАКД, не пожалеете, если хотя бы прогоните ее на тестовом графике по истории или симулятору\\n\\nСейчас предлагаю перейти к новому индикатору, который несомненно является лучшим из лучших, так как на нем строятся 90% остальных, Боллинджер в том числе\\n\\nЭто ЕМА - экспоненциальная скользящая средняя\\n\\n\\n\\n\\n\\n(2.4) ЕМА\\n\\nЧто же такое ЕМА и почему она является ключевой составляющей в 90% индикаторов?\\n\\nЕМА - экспоненциальная скользящая средняя, выглядит как кривая линия, располагается на графике\\n\\nМожет быть использована отдельно и в связке. При втором варианте отрабатывает себя лучше\\n\\nДля начала давайте поймем, как получается ЕМА из чего она состоит и почему ее все так любят ( может и не все )\\n\\n\\n\\nЕМА - производная от SMA\\n\\nSMA - простая скользящая средняя Сначала разберемся в ней\\nОна является усредненным значением графика за выбранный период. Работает это\\nследующим образом - если у нас стоит SMA 10, то это означает, что мы взяли цену закрытия за каждый из последних 10 дней, сложили и поделили на 10, таким образом мы получили кривую. Если SMA 50 дневная - берут 50 цен закрытия 50 дней, суммируют и делят на 50\\n\\nНо SMA очень ограничена в своих возможностях, поэтому была придумана EMA\\n\\nДля многих формула расчета окажется бессмысленной, но я все же напишу\\n\\nЕМА реагирует на график куда быстрее в связи с тем, что упор идет на получение последних и актуальных данных\\n\\nСчитается так : EMA =  P*A +  ( предыдущая EMA*(1-A)) Где P - текущая цена\\nA - сглаживающий фактор 2/1+N ( N - количество периодов )\\n\\nМожет формула и не нужна, так как все считается автоматически и показывается нам на графике, но понимать, как это происходит я считаю, все-таки необходимо для грамотной и осознанной торговли\\n\\nДавайте перейдем к примерам\\n\\nВот таким образом выглядит ЕМА. Я ставлю всегда ЕМА 12/26/50/200\\nЧтобы ее выбрать, в поиске индикаторов так и введите ЕМА и далее числа через /\\n\\nКак вы видите, это просто линии, которые без понимания ничего вам не дают.\\nСигналов и связок у ЕМА предостаточно, сейчас будем разбираться","image":"/media/images/theme_5_lesson_16_outline_30.png"},{"text":"Сначала, конечно же, мы пройдем все правила\\n\\n1)Чем меньше ЕМА - тем она резче реагирует на поведение графика\\n2)Чем больше ЕМА - тем она сильнее во всех своих проявлениях\\n3)Применяется на любом ТФ\\n4)Отлично работает в связке с уровнями и MACD\\n5)является как трендовым индикатором, так и индикатором отскока\\n\\nЕМА - универсальный боец. Многие не хотят ее торговать, потому что считают устаревшей, не принимая тот факт, что 90% индикаторов построены именно на ней без каких-либо изменений:)\\nПеречислять их смысла нет, вы сами все прекрасно видите или увидите в будущем Сейчас переходим к сигналам, какими ЕМА обладает\\n\\n1 сигнал - стандартное пересечение, которое встречается во многих индикаторах\\n\\nЕсли меньшая ЕМА пересекает большую снизу-вверх - задается восходящий тренд, если она пересекает большую сверху-вниз, то задается нисходящий тренд\\n\\nТакже, график, который пересекает любую ЕМА снизу-вверх, задает восходящий тренд, а сверху-вниз задает нисходящий тренд\\n\\nЧем больше была ЕМА, которую он пробил - тем сильнее тренд. Чем шире угол - тем сильнее тренд\\n","image":"/media/images/theme_5_lesson_16_outline_31.png"},{"text":"В стандартных рыночных условиях ЕМА 200 на ТФ от 1 дня до 1 месяца является\\nсильнейшей зоной поддержки. Чем шире ТФ - тем она сильнее. Зона поддержки будет в следующей главе, но для понимания - зона для отскока, где график развернется вверх\\n\\nЕМА 200 в нашем случае ей и является. На следующем слайде покажу один пример сделки, которую совершал буквально недели две-три назад\\n","image":"/media/images/theme_5_lesson_16_outline_32.png"},{"text":"Я одним глазом случайно увидел сделку на графике и на основании двух индикаторов\\nвошел в позицию. На дневном ТФ мы находились на зоне ЕМА 200, уже сколько раз за почти 2 года мы от нее отскакивали и в этот раз вряд ли было бы иначе. Риски есть, но они куда меньше, чем ловить падающие ножи\\n\\nПоэтому, я заработал достаточно быстрые 10%  и остался доволен\\n","image":"/media/images/theme_5_lesson_16_outline_33.png"},{"text":"На длинных трендах я не использую ЕМА 12 и 26, только 50 и 200\\n\\n50 я использую только на месячном ТФ и не меньше, пример ниже\\n\\nЯ использую систему двойного уровня. Покупаю на ЕМА 50 и докупаю в случае чего на ЕМА 200 сильные компании. Проходимость система огромная, так как очень и очень сильные уровни, как и компании, которые я выбираю\\n","image":"/media/images/theme_5_lesson_16_outline_34.png"},{"text":"Однажды на такой системе можно будет совершить сделку века на том же Apple\\nПочему на нем? Смотрите график ниже\\nНа протяжении 13 лет она отскакивает от зоны ЕМА 200 на недельном ТФ каждый раз без исключений и рост составляет после этого сотни процентов\\nПокупать начинать можно будет на ЕМА 50 и докупать на ЕМА 200, а затем получать неимоверную прибыль\\n","image":"/media/images/theme_5_lesson_16_outline_35.png"},{"text":"Таким образом происходит первый сигнал на дневном ТФ. Помните - чем меньше ТФ, тем\\nбольше сигналов и больше шумов = минусовые будут попадаться активнее в несколько раз\\n\\nВидно на скрине пересечение ЕМА и пробитие их графиком снизу вверх на двух левых и сверху вниз на правом\\nЗадавались восходящие и нисходящий тренды","image":"/media/images/theme_5_lesson_16_outline_36.png"},{"text":"Таким образом, ЕМА является очень важным индикатором, который создает 90%\\nостальных\\n\\nУ него есть свои правила и законы, как и у других, в этом нет ничего нового\\n\\nНо у ЕМА большая вариативность связок, так как он выступает в роли сразу нескольких типов индикаторов и имеет различные функции на разных ТФ\\n\\nНа большом ТФ он имеет минимум ошибок и задающийся тренд имеет такую силу, что можно позавидовать тому, кто вошел и держал достойную компанию по такому сигналу\\n\\nИспользовать этот индикатор или нет - право ваше\\n\\n(2.5) Поддержка и Сопротивление\\n\\nВ данном случае мы будем проходить индикатор уровни PIVOT, а не графический, который мы строим сами, так как второй будет в блоке графического анализа, а не индикаторного\\n\\nУровни PIVOT - построенные по формуле уровни, которые по сути отражают обычной линией важное значение цены, где она когда-то отскакивала или падала\\n\\nУровни PIVOT считаются по экстремумам дна и хая, чтобы определить значения Работает аналогично другим - чем выше ТФ, тем сильнее уровни\\nСейчас посмотрим, как они выглядят и я расскажу подробнее\\n\\nДля начала найдем этот индикатор и в поиске введем слова со скрина\\n\\nВыбираем стандартные точки разворота, ставим звездочку слева и переходим уже к настройкам на графике\\n","image":"/media/images/theme_5_lesson_16_outline_37.png"},{"text":"Единственное, что мы меняем - тип и\\nуровень P\\n\\nТип выбираем Фибоначчи, изначально будет стоять на классическом или традиционном, а уровень P делаем черным для удобства.\\nЗатем снизу слева от кнопки отмена выбираем еще раз по умолчанию и нажимаем ОК\\n\\nПосле этого на графике появится наш индикатор и мы начнем его использование","image":"/media/images/theme_5_lesson_16_outline_38.png"},{"text":"Выглядит он следующим образом\\n\\nУ нас есть 7 зон, которые в зависимости от направления графика являются либо поддержкой, либо сопротивлением\\n\\nЕсли график идет вниз - они поддержка, если вверх - сопротивление\\n","image":"/media/images/theme_5_lesson_16_outline_39.png"},{"text":"Пройдемся по зонам :\\n\\nЗона P - самая сильная и имеет название поддержка, хотя также может быть и сопротивлением, если график идет снизу-вверх\\n\\nЗона S1, S2, S3 является также и поддержкой и сопротивлением Зона R1, R2, R3 аналогично зоне S\\nВсего уровней 7 из которых самыми сильными являются центральные, то есть : P, S1, R1\\n\\nДалее по значимости идут S2 и R2 И только потом S3 и R3\\nИх значимость определяется силой, а сила - способность не пропустить график ниже\\nили выше себя. То есть оказать поддержку или сопротивление\\n\\nНо в этих зонах есть некоторое уточнение\\n\\nS3 и R3 становятся очень сильными в тот момент, когда график резко к ним летит или же просто без остановок приближатся\\nЗона R3 выступает мощным сопротивлением, а зона S3 выступает мощной поддержкой Если же график выступает за эти зоны на 10-15%  на дневном ТФ, возвращаясь обратно эти зоны\\nбудут слабыми. Если график закрепился над R3 или под S3, то они выступают мощными\\nподдержкой и сопротивлением. Закрепился = ушел далеко выше или ниже\\n","image":"/media/images/theme_5_lesson_16_outline_40.png"},{"text":"","image":"/media/images/theme_5_lesson_16_outline_41.png"},{"text":"В целом, в этих уровнях нет ничего очень сложного, нужно на опыте торговли\\nзапомнить и понять, на каком ТФ, какая зона сильнее\\n\\nСкажу на своем опыте - если вы торгуете на короткий срок, то прямо сильные зоны это S3, R3 и P\\n\\nЕсли вы торгуете на средний срок хотя бы на ТФ 2 часа, то средние зоны P, R1 и S1 будут достаточно сильными\\n\\nЕсли дальний срок, то есть от ТФ 1 день, то это зоны P, S1, R1 и S3, R3\\n\\nЭти зоны отлично входят в любую стратегию. У них есть несколько функций, которые можно применять на торговле, пройдемся по первой\\n\\nЗона P является разделителем трендов\\n\\nЕсли график переходит снизу вверх по зоне Р, то задается восходящий тренд и мы торгуем только лонг, если сверху вниз, то нисходящий тренд и мы торгуем шорт\\n\\nПомним, что против тренда торговлю не совершаем\\n","image":"/media/images/theme_5_lesson_16_outline_42.png"},{"text":"Вторая функция, как вы могли уже понять - поддержка и сопротивление\\n\\nО ней я рассказал на предыдущих страницах\\n\\nНо также, эта функция становится и точкой входа и выхода из позиции, что вполне логично\\n\\nЕсли график на дневном ТФ опустился до зоны S3, то вполне вероятно, что мы можем увидеть отскок и этот момент будет входом. Если график поднялся после этого условно к зоне S1 или P, то понимая, что это сильные зоны, мы можем выйти из позиций\\n\\nНо есть конкретное уточнение - мы делаем все это в связке, а не отдельно, так как без использования вспомогательных индикаторов, мы можем быть обречены на провал в связи с сильной потерей прибыли\\n","image":"/media/images/theme_5_lesson_16_outline_43.png"},{"text":"Еще один интересный пример использования данного\\nиндикатора - закрепление над уровнем\\n\\nПоскольку мы понимаем, что на ТФ от 1 дня все индикаторы становятся сильнее и почти все точнее ( этот становится ), мы применяем закрепление при пересечении уровня.\\nСильным закреплением является пересечение уровня P и смена тренда среднесрочного или любого другого, смотря какой ТФ вы используете\\n\\nВ нашем случае на скрине слева, мы видим, как три свечи закрепились выше уровня P, а четвертая оказалась нисходящей, но все же выше него. Это означает, что с большей долей вероятности мы дойдем до уровня R1, чем упадем к S1\\n\\nТакое правило можно использовать и не забывайте ставить стопы\\n\\nТаким образом, уровни PIVOT дают нам следующее :\\n\\n1)определяют тренд\\n2)дают точку входа и выхода\\n3)понимание закрепления над уровнем\\n4)применение в любой связке для пункта 1, 2 и 3\\n5)определение сильных и слабых зон, что дает понимание шанса движения графика за пределы или шанс его разворота от уровня\\n\\nИ многое другое, что вы сможете обнаружить, лишь начав использование в своей торговле\\n\\nДальше я предлагаю вам перейти к новому индикатору, который похож на этот, но все же имеет отличия - коррекция по Фибоначчи\\n\\n(2.6) Коррекция по Фибоначчи\\n\\nМногие из вас, кто имел отношение в своей жизни к математике, физике и многим другим наукам знает, что такое золотое сечение Фибоначчи, оно также применяется в трейдинге\\n\\nДля тех, кто не в курсе. Числа Фибоначчи - это элементы числовой последовательности, в которой каждое последующее число равно сумме двух предыдущих чисел\\n\\nЗолотое сечение Фибоначчи — это пропорциональное деление отрезка на две неравные части, при котором меньший отрезок так относится к большему, как больший ко всему\\n\\nТаким образом у нас появляется новый индикатор, который имеет 7 уровней и 5 зон, каждая из которых имеет свою значимость\\n\\nНачнем с того, как выглядит эта самая коррекция по Фибоначчи\\nОна представляет из себя разноцветную палитру уровней Пример сетки ( коррекции ) по Фибо","image":"/media/images/theme_5_lesson_16_outline_44.png"},{"text":"Суть у данного инструмента схожа с уровнями PIVOT. Кстати, как вы могли заметить,\\nтип уровней ПИВОТ мы использовали именно по Фибо, потому что он лучший!\\n\\nТеперь перейдем к практике - как поставить этот инструмент и что он нам показывает, как работать, какие уровни сильные, а какие нет\\n\\nЧтобы его установить, в левой колонке, где находится кисть, линейка и прочее третий сверху - коррекция по Фибоначчи\\n\\nЕсли у вас там стоит не она, то нажмите и выбирайте именно ее. Вероятно она находится снизу. Скрин прилагаю\\n","image":"/media/images/theme_5_lesson_16_outline_45.png"},{"text":"Затем, выбираем нужный нам ТФ. Сейчас я возьму дневной и буду растягивать сетку\\n\\nРастягиваем ее следующим образом - в два клика\\n\\nПервый клик мы делаем на самом нижнем экстремуме графика, затем тянем ее вверх слева направо до самого верхнего экстремума графика. Кликаем второй раз и получаем растянутую сетку. Пример также ниже! Экстремумы выделил красными блоками","image":"/media/images/theme_5_lesson_16_outline_46.png"},{"text":"Вот сейчас, давайте уже пройдемся по уровням и правилам использования\\nиндикатора!\\n\\nВсего есть 5 рабочих уровней из 7, так как два из них это 1 и 0, которые являются достаточно сильными и 0 является сопротивлением, а 1 поддержкой, так как первый находится сверху, а второй снизу\\n\\nДальше снизу вверх идут уровни : 0.786, 0.618, 0.5, 0.382, 0.236 Сильные из них средние уровни - 0.618, 0.5 и 0.382\\nЧто значит сильные? Также, как и в уровнях Пивот, они обладают большим шансом остановить график, неважно откуда он идет сверху или снизу. Все уровни также выступают сопротивлением и поддержкой, все зависит от направления графика\\n\\nВот так эти уровни подписаны. Всегда каждый из них пишется слева и в скобочках цена\\nна которой он находится\\n\\nПользоваться индикатором удобно и просто. Давайте разберем его на реальном примере","image":"/media/images/theme_5_lesson_16_outline_47.png"},{"text":"Перед вами график Модерны. Снизу вверх идут все названные на предыдущем слайде\\nуровни. Смотри, как они неплохо себя отрабатывают на недельном ТФ\\n\\nСмотрим слева-направо. Сначала падение остановилось на уровне 0.786, затем дважды не смогло пробить уровень 0.618, так как было оказано сопротивление","image":"/media/images/theme_5_lesson_16_outline_48.png"},{"text":"После этого график пошел к главному уровню - 0.5 и прошил его, это означает, что\\nвероятность полететь выше > чем упасть обратно\\n\\nТаким образом, мы не на долго спотыкаемся об уровень 0.382 и без проблем доходим до конца, до самого последнего экстремума, по которому сейчас уже протягиваем сетку\\n\\nНедавно я заключал сделку шорт по Модерне и держал месяц с целью 15-20% прибыли. Брал на скромные 5-6к$ ( уже сам не очень помню )\\n\\nЯ свое забрал и где вы видите падение в правой части графика до уровня 0.5 - там я продал, так как ожидал отскок от сильного уровня по Фибо. Продавал по 295 и 300 с копейками. Сейчас цена 340+ и скоро снова можно будет набирать шорт\\n\\nВот вам отработка уровней, сложного ничего. Просто запомните, что график привык ходить от уровня к уровню и коррекция по Фибо не исключение\\n\\nКоррекция по Фибо вполне неплохо сочетается с графической поддержкой и\\nсопротивлением, они подтверждают уровни друг-друга и помогают определить сильнейший из них\\n\\nОб этом мы будем говорить чуть позже, я заранее поделился с вами чем-то интересным, чтобы не пропадал запал:)","image":"/media/images/theme_5_lesson_16_outline_49_7hJJ9mM.png"},{"text":"У этого инструмента также есть свои правила, которые нужно соблюдать :\\n\\n1)использовать можно в любой связке, сделает только лучше, никак не хуже\\n2)растягивать снизу-вверх\\n3)растягивать с правого угла до левого\\n4)растягивать от тени свечи до тени свечи, если она имеется\\nТень свечи - полоска вверх или вниз или и вверх, и вниз по основанию свечи\\n5)не забывать про сильные уровни\\n6)график ходит от уровня к уровню\\n7)можно делать проторговку от уровня к уровню на короткие сроки\\n8)лучше всего покажет себя от ТФ 2 часа, но подходит и для 5 минутки\\n\\nСейчас мы будем переходить к следующему важному индикатору, который носит красивое название - Ichimoku\\n\\n(2.7) Ichimoku\\n\\nIchimoku - японский индикатор 30 годов прошлого века ( представьте, насколько же он хорош, что сохранился спустя столько лет )\\nОн определяет тренд и поддержку с сопротивлением\\n\\nОн не очень похож на предыдущие индикаторы, поэтому надо разбираться более досконально ( но работает на все триста )\\n\\nИнструмент имеет 5 линий - Tenkan, Kijun, Senkou A, Senkou B и Chinkou\\n\\nНо также и обладает областью между двумя линиями Senkou A и B, которая носит гордое название - Kumo\\n\\nЯ называю ее облачком и реальные названия линий вообще не использую, сейчас поймете почему\\n\\nПросто взгляните, как выглядит этот индикатор. Очень трудно что-то разобрать, верно?\\n\\nПосле того, как я расскажу вам про каждую линию отдельно, мы перейдем к реальному использованию всего инструмента и уберем лишние моменты","image":"/media/images/theme_5_lesson_16_outline_50.png"},{"text":"Линии Tenkan и Kijun - это две линии, которые определяют среднее значение за\\nопределенный промежуток времени. Этакие японские ЕМА\\n\\nНо Tenkan определяет за короткий период - равный 9-ти, в то время как Kijun делает это на периоде 26\\n\\nОни определяются, как сумма самой высокой точки на графике за промежуток и самой низкой, а она в свою очередь делится на два и получается линия\\n\\nSenkou A и Senkou B - это линии\\n\\nSenkou А - это среднее значение между Tenkan и Kijun, сдвинутое вперед на средний промежуток времени\\n\\nSenkou B - такой же, как и Tenkan с Kijun, просто сдвинут на очень длинную временную дистанцию в 52, также сдвинут вперед на промежуток времени 26\\n\\nЛиния Chinkou - простое повторение графика, сразу же убираем ее в настройках\\n( просто убрать галочку ), так как она бесполезна и только отвлекает и мешает просмотру графика\\n\\nНа самом деле, в данном случае поговорка - лучше 1 раз увидеть, чем 100 раз услышать, работает на все 100%\\n\\nНо пробегусь по правилам\\n\\n1)Использовать лучше без трендовых индикаторов на графике\\n2)На больших ТФ задает реально сильные тренды\\n3)Tenkan и Kijun бесполезные линии, которые можно заменить на EMA, будет результат куда лучше\\n\\nВ целом, можно перейти на график и посмотреть все имеющиеся функции\\n\\nСначала пройдемся по линиям Tenkan и Kijun\\n\\nОни аналогичны EMA и имеют лишь 1 отличие - если их пересечение произошло внутри облака ( зеленое ), то это \\"не считается\\", сигнал аннулируется и брать не стоит\\n\\nА так - синяя пересекает красную снизу-вверх = рост и наоборот. Синяя - Kijun, красная - Tenkan\\n","image":"/media/images/theme_5_lesson_16_outline_51.png"},{"text":"Самое интересное тут облако, поэтому на графике я оставляю исключительно его\\n\\nОблако состоит из двух линий, как я и говорил ранее - Senkou A и Senkou B Суть облака такова, что оно дает два сигнала :\\n1)поддержка и сопротивление. Каждая из линий служит и тем и тем. Если график идет\\nснизу-вверх, то он встретит сопротивление у обеих линий и наоборот, если он идет сверху-вниз, то встретит поддержку\\n\\n2)Пересечение облака графиком. Тут суть похожа на ЕМА. Если график все же пересекает облако сверху вниз - то задается нисходящий тренд, если снизу-вверх, то\\nвосходящий тренд\\n\\nВ таком случае интересно использовать на графике уровни Пивот или Фибо, чтобы понимать, до куда он может пойти дальше\\n\\nЧем выше ТФ у графика, тем реже будут пересечения, но тем сильнее будет их эффект и\\nодного хватит на год и десятки процентов прибыли\\n\\nНиже вы видите график SPCE и отработку сигналов на годовом графике ( дневной ТФ ) у облака Ичимоку","image":"/media/images/theme_5_lesson_16_outline_52.png"},{"text":"Перед вами два примера отработки облака Ичимоку как поддержка и как\\nсопротивление\\n\\nСлева - поддержка. Цена была поддержана на первой линии и шла ровно по ней.\\nСправа - сопротивление. Senkou не дала пробить себя и отправила график обратно вниз","image":"/media/images/theme_5_lesson_16_outline_53.png"},{"text":"","image":"/media/images/theme_5_lesson_16_outline_54.png"},{"text":"Ичимоку лучше ставить с Фибо или же Уровнями Пивот\\n\\nНа графике ниже привел пример с Пивот. Это нужно затем, чтобы при пробитии облака или оказанию от него сопротивления или поддержки, мы могли понять - куда дальше двинется график, где его следующая зона","image":"/media/images/theme_5_lesson_16_outline_55.png"},{"text":"В целом, индикатор очень сильный и достойный, но обязательно стоит использовать его в связке, то есть в совокупности с другими индикаторами для лучшей отработки\\n\\nМожно также в зависимости от цели и ТФ ставить вместо Tenkan и Kijun ЕМА 12/26 или 50/200\\n\\nБольше тут не добавить не убавить Предлагаю перейти к следующему индикатору\\n\\n(2.8) OBV\\n\\nOBV - индикатор балансового объема\\n\\nСуть работы очень проста. Если следующая закрытая свеча выше предыдущей, то ее объем прибавляется к общей сумме, если ниже, то вычитается\\n\\nГрафически индикатор представляет из себя кривую, которая показывает изменение накопленной вышеописанным образом суммы\\n\\nОсновным принципом работы индикатора служит - корреляция между графиком и кривой объема. Сейчас мы рассмотрим ситуации, как это работает\\n\\nВ целом, на OBV используют даже даже дивергенции и конвергенции, но как по мне они работают очень слабо, поэтому не стоит и пытаться\\n\\nПосмотрев на этот график, можно подумать, что объем его точна копия, но это не так\\n\\nКак правило, если мы смотрим ТФ от 1 дня, то объем будет показывать лишь 1 свой сигнал - подтверждение движения. Если идет рост цены, то будет и рост объемов, но иногда попадаются следующие моменты, которые мы и должны использовать","image":"/media/images/theme_5_lesson_16_outline_56.png"},{"text":"На графике четко видно, как цен резко пошла вверх в течение 3 дней, но что было с объемами? Они даже не дернулись. Первое правило найдено - если растут котировки, но не растет объем, то цена с большой долей вероятности вернется\\nобратно\\n","image":"/media/images/theme_5_lesson_16_outline_57.png"},{"text":"Такое, как правило, постоянно попадается на 5 минутном фрейме. Давайте проверим за\\nпрошедшую неделю количество подобных сделок и их успешность\\n\\nПроверять я буду на графике Tesla. Только за вечер две сделки. Каждая из которых могла принести вам от 1 до 3%\\n\\nЧетко видно, что график растет куда быстрее объемов. Правило себя отработало","image":"/media/images/theme_5_lesson_16_outline_58.png"},{"text":"Аналогичный пример мы наблюдаем за день до вчерашнего. Резкий рост котировок сопровождался полным игнорированием от индикатора OBV\\n\\nТакое \\"не прощается\\" и Тесла была наказана, опущена вниз и растоптана)\\n\\nМожно было отлично вставать в шорт позицию и забирать прибыль\\n\\nНа самом деле, создатель индикатора Джо Гранвилл сказал - свой анализ я всегда начинаю с показателей объема и что именно объем является движущей силой фондового рынка\\n","image":"/media/images/theme_5_lesson_16_outline_59.png"},{"text":"Следующий сигнал от OBV идет тогда, когда он растет, а котировки нет\\n\\nЭто означает, что они скорее всего скоро покажут быстрый рост\\n\\nПеред вашими глазами отличный пример, который показывает, что при падении котировок или их боковике при растущем OBV, вероятнее будет рост и откуп","image":"/media/images/theme_5_lesson_16_outline_60.png"},{"text":"Мне даже грустно, что у этого индикатора больше ничего нет, так как он слишком хорош для этого мира)\\n\\nНо я предлагаю вам рассмотреть идею адепта его \\"секты любителей объемов\\" и сравнить с оригиналом\\n\\nПереходим к новому индикаторы A/D\\n\\n\\n\\n\\n(2.8) A/D индикатор\\n\\nСоздал его Марк Чайкин, который и был вдохновлен нашим Гринвиллом и еще одним человеком, который придумал индекс накопления Лари Вильямсом\\n\\nВ основе индикатора A/D лежит сравнение цены закрытия с серединой диапазона от минимума до максимума, когда у того же OBV это только закрытие\\n\\nПо его словам он сделал это, так как в газетах редко писали про цены закрытия, что ему было неудобно или просто не нравилось\\n\\nДавайте разберемся в идее индикатора и чем же он отличается\\n\\n\\n\\n\\nМарк Чайкин сделал следующее\\n\\nОн взял разницу между минимумом дня и ценой закрытия, затем между максимумом дня и ценой закрытия. Получил разницу между ними и разделил на разницу минимума и максимума, затем умножается на объем торгов. После чего прибавил полученный результат к предыдущему значению дня по этой же формуле\\n\\nТак и работает его индикатор A/D\\n\\nВсе достаточно просто и в понимании и в использовании\\n\\nСейчас я предлагаю вам на него взглянуть и мы рассмотрим его функции\\n\\nДля начала напомню, что этот индикатор также ищется в обычном поиске, а не как коррекция по Фибо, поэтому просто вводим полностью его название Accumulation/Distribution и ставим первым от DovCaspi\\n\\nСейчас рассмотрим его и я покажу, какие сигналы он дает\\n\\nНа самом деле они очень схожи с OBV, за отсутствием\\nодного","image":"/media/images/theme_5_lesson_16_outline_61.png"},{"text":"1 его правило - направление тренда\\n\\nМы с вами торговцы только по тренду, для нас это важно. Поэтому когда движение A/D совпадает с движением графика, точнее подтверждает его движение, то мы с вами получаем восходящий или нисходящий тренд. Когда мы видим красный A/D, то стоит вставать только в шорт. Когда зеленый - только в лонг. Но помните, чем короче ТФ, тем быстрее меняются тренды и тем они менее заметные\\n","image":"/media/images/theme_5_lesson_16_outline_62.png"},{"text":"По моим наблюдениям, лучше всегда вставать в лонг, а шорт просто пропускать или накапливая долгосрочную позицию - докупать на дне этих красных бугорков\\n\\nОн часто запаздывает или плохо себя отрабатывает. Основное правило A/D заключается в другом","image":"/media/images/theme_5_lesson_16_outline_63.png"},{"text":"Поскольку у нас OBV плохо отрабатывает дивергенции и конвергенции, то A/D наоборот - это его главный \\"фокус\\", который кстати лучше работает на средних дистанциях в 2-4-24 часа по ТФ\\n\\nНа скрине слева вы видите, как график обновил своих хаи и закрыл вторую вершину выше предыдущей, когда A/D закрыл ее ниже, что следует из этого? Правильно! Сигнал дивергенции. Незамедлительно график отправился вниз и восстановил баланс)\\n","image":"/media/images/theme_5_lesson_16_outline_64.png"},{"text":"Таким образом выглядит конвергенция - то есть расхождение на восходящий тренд\\n\\nКак мы видим график указывает по своим нижним экстремумам на падение, когда A/D на рост. Таким образом, мы получаем ту самую желанную конвергенцию, которая толкает график вверх. Конвергенция тут сильнее, чем у MACD\\n","image":"/media/images/theme_5_lesson_16_outline_65.png"},{"text":"Также, этот индикатор можно использовать, как пробои уровней, но сейчас мы это разбирать не будем, да и толку мало, отработка слабая, но коснемся это в графическом анализе\\n\\nВыводы по индикатору :\\n\\n1)Использовать в связке\\n2)Хорошо подходит под дивергенции и конвергенции\\n3)Модернизированная модель OBV\\n\\nИндикатор интересный и полезный, его можно использовать в своих целях на разный срок\\n\\nСейчас мы переходим к изучению связок и стратегий, что является важнейшей частью индикаторного-технического анализа\\n","image":""}]	novyj-urok-8325	f	\N	\N	5	520	22
8	2	545f0238-b484-466b-9435-88a108df15c8	Рентабельность	[{"text":"Рентабельность\\n\\nДавайте сначала разберемся, что же такое рентабельность!\\n\\nРентабельность - это показатель экономической эффективности бизнеса, который измеряется различными способами\\n\\nЕсть много вариантом проверки рентабельности, причем сама рентабельность не одна, а разделена на условные : рентабельность инвестиций, рентабельность активов и прочее\\n\\nНаша с вами задача разобраться в этой теме и плавать, как рыба в воде, чтобы понимать, какой реальный результат показывает компания и может показать в ближайшее время\\n","image":""},{"text":"Net Profit Margin\\n\\nИли просто Net Margin - один из показателей рентабельности бизнеса, который расскажет нам - сколько же денег становится прибылью из выручки в % соотношении\\n\\nЕще проще - компания заработала 1.000.000 рублей грязной прибыли = выручки, чистой прибыли из нее 100.000р. Наш показатель будет равен 10%, все просто!\\n\\nНо этот показатель является одним из ключевых и важных, я не просто так с него начал Данный показатель отражает насколько сильно можно \\"переживать за компанию\\"\\n\\nЕсли у компании очень высокая маржинальность ( высокий процент прибыли от\\nвыручки ), то мы можем предположить, что она будет вести себя лучше, чем остальные компании в ее же отрасли с меньшей маржинальностью при падении цен на используемое сырье или же просто свой товар\\n\\nЕсли у компании маржинальность слишком низкая ( опять же мы все сравниваем внутри отрасли ), то надо задуматься, стоит ли инвестировать в такой актив, вероятно их стратегия бизнеса дает сбой или что-то идет не так. А что будет, если упадут цены на сырье? Представьте себе нефтяную компанию с маржинальностью ниже средней по отрасли при падении рынка сырья - ей конец\\n\\nТакже, один из важных факторов этого показателя - его рост. Если вы видите, что у компании за последние 5-10 лет идет стабильный рост повышения маржинальности, то вы можете предположить, что она движется в правильном направлении, по крайней мере касательно процента прибыли от выручки\\n","image":""},{"text":"Pretax Profit Margin\\nЭтот показатель является небольшим дополнением к предыдущему, но я не могу вам о нем не рассказать\\n\\nЕсли прошлый рассказывал нам о том, сколько прибыли остается из выручки, то этот делает то же самое, но не учитывает налоги, что является в моем понимании более правильным при оценке реальной рентабельности компании\\n\\nИспользуя этот показатель, мы исключаем влияние посторонних эффектов на чистый результат. Так делают многие, ибо налогообложение даже внутри одной отрасли зачастую может разниться, что явно мешает определить четкую рентабельность бизнеса\\n","image":""},{"text":"Gross Margin\\nGross Margin - валовая рентабельность, а точнее, выручка компании за вычетом себестоимости уже реализованных товаров\\n\\nДругими словами - это остаток выручки от продаж, за вычетом понесенных затрат на реализацию проданного товара или услуги\\n\\nВы можете подумать - снова какая-то маржа? Но не поняв это, нельзя двигаться дальше. Если вы хотите понимать рынок и компании, то придется один разок разобраться\\n\\nЭтот показатель помогает нам понять, сколько же денег уходит на реализацию товара и чем выше данный показатель ( он показывает, сколько остается, я вам напоминаю ), тем лучше для компании, ведь тем больше денег она может пусть в благое русло на развитие\\n\\n\\nУровни валовой рентабельности могут сильно различаться от одной отрасли к\\nдругой, поэтому мы также проводим сравнение компаний только внутри одного \\"дела\\"\\n\\nСравнивать IT и Нефть мы не будем, это бессмысленно\\n\\nЕсть один большой минус - он не учитывает никаких других расходов, только затраты на себестоимость и использовать его лучше с полной оценкой всей рентабельности, а затем делать выводы\\n\\nВ целом, это очень неплохой показатель, как и все, что присутствуют в этом курсе, плохих я бы просто не дал вам. Но скажу для вашего же понимания - никогда не решайте судьбу компании по одному лишь показателю\\n","image":""},{"text":"ROE, ROA, ROI\\n\\nТри важнейших показателя рентабельности, которые отражают основную суть прибыльности бизнеса в трех разных аспектах\\n\\nНапомню, что даже, если каждый из них выше нормы - это не значит, что компания максимально привлекательна\\n\\nЗабудьте слова \\"сильно привлекательная компания\\", когда начинаете проводить анализ. Такой вывод можно сделать только в конце, но никак не по первым показателям\\n\\nROE\\nROE - рентабельность собственного капитала. Определяет меру прибыльности бизнеса по отношению к собственному капиталу\\n\\nБолее простыми словами - сколько копеек дохода приносит каждый вложенный рубль собственного капитала\\n\\nВеличина ROE помогает понять, насколько высокими могут быть дивиденды\\n\\nСоветую проводить анализ ROE по 1 и 5 летнему периоду. Если идет сохранение положительной тенденции у показателя на дистанции, то можно сделать вывод, что компания имеет правильную динамику развития ( не в целом, а по рентабельности собственного капитала\\n\\nROE не учитывает в себе заемные средства. Собственный капитал должен быть именно\\nчистым. В скором времени вы поймете, зачем я вам это написал","image":"/media/images/theme_3_lesson_8_outline_4_oVBZZPj.png"},{"text":"На примере выше вы видите, как за последние 5 лет тенденция ROE имела положительную динамику первые 3 года, а затем что-то случилось с компанией и она начала терять показатели\\n\\nЕсли бы мы смотрели цифры за последний год, то могли бы даже увидеть положительную тенденцию внутри 365 дней, но открыв 5 летку, мы сразу видим настоящую картину.\\nПоэтому всегда смотрите как за 1 год, так и за 5 лет\\n\\nROA\\n\\nROA - рентабельность собственных активов. Показывает эффективность использования активов для генерации выручки\\n\\nТеперь пришла пора понять - зачем я писал про не учитываемые земные средства у ROE. Потому что у ROA они учитываются и в этом основная разница. То есть идет учет без внимания на финансовый леверидж\\n\\nДумаю, что стоит внести в лексикон еще одно понятие - финансовый леверидж\\n\\nЭто отношение заемного капитала к собственным средствам или иногда называют эффект от использования заемных средств, когда не хватает собственного капитала\\n\\nROA также нужно использовать исключительно по отраслям. Как и у ROE и ROI адекватной оценкой является 10%, но в целом - смотрим по конкретной отрасли, чтобы понимать ситуацию не в целом на рынке, а именно в области той компании, которую мы рассматриваем\\n\\nПри анализе очень рекомендуется проверять на дистанции, как и ROE\\n\\nЕсли мы видим нисходящее движение, то стоит задуматься почему \\"либо-либо\\" : 1) падает выручка 2) растут обязательства\\n\\nЕсть и корреляция между ROA и ROE - если между ними большая разница, а чаще всего ROE выше ROA, то значит, что у компании большое количество заемных средств и надо определить, почему и идет ли конкретная тенденция или какие-то сторонние вмешательства ( долги у авиа компаний в связи с пандемией )\\n\\n\\n\\n\\n\\n\\n\\n\\nПри анализе этого показателя нам надо смотреть за динамикой и естественно желать\\nвидеть большее количество % по ROA, так как это будет означать \\"или-или\\" : 1) высокая выручка 2) малый % заемных средств\\n\\nПока что мы изучили два показателя из трех и как вы замечаете, они имеют между собой интересную корреляцию\\n\\nПри прохождении всего блока по фундаментальному анализу у вас в голове сложится картина, которая должна помочь вам в дальнейшем анализе\\n\\nПока что перейдем к ROI\\n\\nROI\\nROI - коэффициент рентабельности инвестиций. Простыми словами - окупаемость ваших вложений. По сути, таким образом мы определяем выгодной или невыгодной для нас и в целом является компания ( лишь по этой метрике )\\n\\nЕсли еще проще - на каждый вложенный вами рубль в компанию пори ROI 50%, она генерирует\\n1.5 рубля выручки или 50 копеек прибыли\\n\\nФормула расчета проста, как мир - выручка - затраты / затраты * 100 ( считается в процентах )\\n\\nУсловно : компания \\"А\\" имеет выручку 1.000.000 рублей, но чтобы его заработать, она потратила 500.000р, таким образом мы имеем : ROI = 1.000.000 - 500.000/1.000.000 * 100 = 50% ROI\\n\\n\\n\\nROI является очень важной для нас метрикой и слава богу, нам не нужно ничего из\\nвышеперечисленного считать, иначе мы бы сошли с ума\\n\\nЕсли брать во внимание последние 3 показателя, то они являются фундаменталом рентабельности, если так можно выразиться. Это основа-основ, а все остальное - дополнения вытекшие из них\\n\\nДалее мы с вами будем знакомиться с не менее интересными и важными метриками и будем переходить к следующей теме\\n\\nПомните - когда вы читаете всю информацию - пытайтесь запомнить и записывайте отдельные моменты для лучшего усвоения. В конце каждого урока вас ждет тест, а в конце каждой темы ( в нашем случае фундаментал ) вас ждет итоговый тест!\\n","image":""},{"text":"5 years sales, 5 years capital spending, 5 years EPS\\nВ этой главе мы будем рассматривать три метрики\\n\\nПервая - 5 years sales growth - показывает в процентах рост продаж на дистанции в 5 лет\\nЭта метрика нужна нам для четкого понимания динамики продаж в компании, идет ли развитие и если да, то в какую сторону\\n\\nКак правило, если это значение приближается к 10%, то результат является положительным и означает, что компания способная наращивать объем продаж и двигается в этом направлении\\nЕсли значение ниже 10%, условно 0-5%, то компания не особо стремится что-то развивать в себе и если нет никаких факторов, которые ей \\"запрещают\\" или сильно мешают, то компанию не стоит покупать с перспективой\\n\\n\\nЕсли значение ниже 0% - то опять же, вывод такой - компания не имеет\\nвозможности или желания наращивать объем продаж. Надо понять - если нет возможности, то, что ей мешает и временно ли это. Если проблема на их стороне и она фундаментально в компании, то проведите оценку данной проблемы и решите, а будет ли она развиваться после решения этой задачи? Развивалась ли она за 5 лет до этой пятилетки?\\n\\nДанная метрика будет идти в комплоте с со следующими, так как они тесно между собой переплетаются\\n\\nВ целом, для понимания - весь фундаментальный анализ между собой переплетается. Одно вытекает из другого и когда вы это поймете - вам станет намного проще\\n\\n\\n\\nВторая - 5 years capital sending - показывает в процентах рост количества капитальных затрат\\n\\nДанная метрика поможет нам понять - стала ли компания больше тратить на : приобретение, обновление и обслуживание физических активов, таких как недвижимость, заводы, здания, технологии или оборудование, а также на инвестиции и новые проекты ( часто используется )\\n\\nДостаточно важный показатель, который отражает желание компании развиваться, так как обычно такие затраты производят для увеличения масштабов своей деятельности и увеличения экономической выгоды от операции\\n\\nДругими словами, эта метрика показывает нам, на сколько за 5 лет вырос показатель\\nинвестиций в развитие,  а не просто затраты.  Почему не просто затраты?  Потому что тут и таится вся разница между операционными затратами - в нашем случае компания показывает их не в расходах, а в инвестициях и на своем балансе, а не в отчете о прибылях\\n\\nТаким образом, компании не так часто прибегают к капитальным затратам. Спросите почему? Потому что амортизацию никто не отменял. Но - важно видеть тенденцию по этому показателю, чтобы компания не стояла на месте, а двигалась вперед\\n\\nЕсли ее показатель отрицательный за 5 лет - значит, что она не удосужилась придумать или сделать что-то новое, да банально перейти на новейшее оборудование и прочее, тут много моментов. Что логично - момент отрицательный\\n\\nЕсли показатель положительный за 5 лет, хотя бы на несколько %, то это уже показывает положительную динамику. Он не должен быть 50%, это уже сумасшествие\\n\\nТретий - 5 years EPS growth - рост EPS на дистанции в 5 лет. Насколько вы\\nпомните - EPS это прибыль на акцию, таким образом, если он имеет восходящую тенденцию, то мы получаем вывод о растущей прибыли ИЛИ отсутствии доп.\\nэмиссии\\n\\nВ целом, EPS очень важный показатель, он не может отразить всех нужных нам моментов, но он показывает то, что не видят многие - тенденцию, а это самое главное\\n\\nЕсли компания вдруг за последний год заработала какие-то несусветные деньги и получила положительную прибыль, то стоит узнать - откуда деньги и чем вызван всплеск, потому что показатель EPS growth нас обманет\\n\\nНа деле обманывает компания, но показатель - это ребенок, на котором отражается вся хитрость его родителей\\n\\nЖелательно видеть рост EPS на уровне 10%  за 5 лет  - это будет говорить нам о том, что компания развивается в плане увеличения продаж и вероятно будет продолжать заниматься теми же вещами, не забывая о главном - о развитии\\n\\nЕсли мы видим отрицательный EPS, то варианта 2 : 1) падает прибыль 2) растет эмиссия\\nОба варианта отрицательные. Будь это первое или второе - надо четко понять, почему так происходит и была ли нарушена тенденция предыдущей пятилетки\\n\\nЕсли мы видим EPS в районе 0-2%, то смотрим, почему такой слабый рост и с чем это вызвано\\n\\nНо главная моя рекомендация - проводите сравнение со средними значениями по отрасли, иначе оценка будет необъективной\\n\\n\\n\\nНа этом пришел конец главы \\"рентабельность\\", но зато именно сейчас вы и\\nузнаете, где же смотреть все эти метрики, как их сравнивать с отраслью и прочие\\nмоменты\\n\\nЯ думаю, что самое сложное уже у вас позади, дальше с пониманием тем будет полегче, чем с мультипликаторами и рентабельностью\\n\\nВообще, принято считать, что самое сложное - мультипликаторы, так как их надо понять, чтобы грамотно использовать, надеюсь, что я смог вам все правильно объяснить\\n\\nСейчас переходим к долгожданному!\\n","image":""}]	novyj-urok-7258	t	\N	\N	3	105	4
29	0	07bf45b5-cb3f-44ce-bffc-75b1a3daa297	Обнаружение локальной коррекции	[{"text":"Что такое кризис знают все, но как мы можем определить его\\nпришествие\\n\\nДа, для этого надо обладать не малыми знаниями экономики, но есть упрощенный вариант для тех, кого волнуют кризисы на рынке, а не в целом\\n\\nОни отличаются, хоть и тесно связаны и по сути - кризис на фондовом рынке лишь вытекающее из основного, но разберем примеры\\n\\nЕсли кризис в глобальной экономике подразумевается, как что-то переломное, то на фондовом рынке он может быть запросто вызван обычным сезоном плохих отчетностей и мы получим сильное снижение индекса, которое никак не влияет на мировую экономику ( почти никак, по крайней мере глобально ), но сильно влияет на настроение инвесторов в моменте\\n\\nБыло бы неплохо распознавать именно подобные кризисы, чтобы понимать, когда может быть лучшая точка для входа или выхода\\n\\nМы разберем несколько инструментов, которые нам могут помочь в этом, а также пройдемся именно по анализу индекса, чтобы прикидывать, куда он может пойти. Для чего нам это? От него зависит движение 95% активов на фондовом рынке, которые мы держим у себя в портфелях\\nДовольна жена - доволен и муж. Растет рынок - растет и ваш портфель и наоборот\\n\\nНачнем с двух важных индексов, которые являются отражением результата торговли, но не предвестниками беды\\n\\nFear and Greed - индекс Страха и Жадности\\n\\nДанный индекс отражает поведенческое направление инвесторов, которое в данный момент преобладает на рынке\\n\\nКогда индекс находится в зоне жадности, это означает, что люди ощущаюсь эйфорию и безнаказанность за свою слепоту, скупают все подряд и не видят никакой угрозы\\n\\nКак правило, если индекс выше 70 ( измеряется от 0 до 100 ), то ситуация не сулит ничего хорошего и входить в позиции не стоит, так как вероятно они очень высоко, а люди и так перенасыщены этим\\n\\n\\n\\n\\n\\n\\nКогда рынок находится ниже 30, то это означает, что рынок 99% падал и многие покинули свои позиции и не спешат их набирать, так как боятся, что прольют еще ниже\\n\\nХочу вам сказать, что, если вы думаете, что при индексе выше 30 обязательно будет откуп или при индексе выше 70 будет падение, это не так\\n\\nОн лишь показывает вам настроение инвесторов, как один из принципов поведенческого анализа, который вы можете учитывать в понимании общего настроения рынка и куда он может двинуться в ближайшее время\\n\\nСмотреть данный индекс вы можете по ссылке - https://money.cnn.com/data/fear-and-greed/\\nВыглядит он следующим образом, пример ниже","image":"/media/images/theme_19_lesson_29_outline_0.png"},{"text":"В самом низу этого сайта вы можете посмотреть реальную статистику индекса за последние несколько лет. Как вы можете увидеть, после любого взлета - идет падение, особенно, если взлет был резким и быстрым, как сейчас, допустим\\n","image":"/media/images/theme_19_lesson_29_outline_1.png"},{"text":"Но, вопреки общему мнению, что сейчас индекс находится на значении в 82 и обязательно рынок должен упасть, я скажу следующее - он может упасть, а может и не упасть сейчас. Понимаете?\\n\\nОн не обязан падать прямо сейчас, так как он мог упасть и на 75 и на 78 и на 80, но уже 82. Он может упасть до 75 и потом на 90. У него нет обязанности падать сразу\\n\\nРаскрою секрет, как это обычно происходит\\n\\nИндекс забирается высоко-высоко и держится там какое-то время ( условно 1-2 месяца\\n), так как рынок ждет разгрузки и какой-то страшной новости. Когда эта новость приходит, он за неделю улетает на значение в 40-45, разгружая рынок\\n\\nДля всего нужна причина. Рынок всегда ее найдет, но не обязательно сразу\\n\\n\\nНо есть еще и второй индекс, который поможет вам понимать положение вещей\\n\\nИндекс волатильности VIX\\n\\nДанный индекс просто гуглится и представляет собой обычный график Чем выше этот индекс - тем выше волатильность у SPX 500 в данный момент\\nКак правило на росте индекса - VIX низкий, а на падении высокий\\n\\nПоэтому на WallStreet есть \\"поговорка\\" - если VIX высоко, это время для покупок, если VIX низко, то лучше продавать ( условный человеческий перевод )\\n\\nПеред вами VIX за пол года и как вы видите, сейчас он находится очень низко, почему? Потому что рынок растущий. Посмотрите на VIX в сентябре, когда мы летели вниз, что было? Правильно, он взлетел в небеса. Его стандартное значение 14-17, его высокое значение от 22-25 до бесконечности ( шутка, обычно не больше 60-70 даже в самые ужасные моменты )","image":"/media/images/theme_19_lesson_29_outline_2.png"},{"text":"Таким образом, у нас в голове проходит корреляция между индексами Fear and Greed и VIX\\nКоторая по сути представляет из себя достаточно простую математическую логику Если рынок перекуплен - VIX низко, а Fear and Greed высоко\\nЕсли рынок перепродан - VIX высоко, а Fear and Greed низко\\n\\nПерекуплен = не стоит покупать, стоит продавать Перепродан = стоит покупать, не стоит продавать\\n\\nПравила достаточно просты. Но разве этого не достаточно, чтобы предсказать падение индекса SPX 500?\\n\\nСо стороны подхода любителя, может быть и нормально, но мы же с вами куда лучше, верно? Стремимся к звездам и никак не ниже\\n\\nПо данным инструментам мы можем определить, что сейчас думают инвесторы на счет сложившийся ситуации, но нам ведь нужно понять, а когда все случится?\\n\\nРаз мы поняли, что все на пике своих возможностей и очень скоро случится падение или рост, падение в нашем случае, так как сейчас все высоко, то надо определять, какое событие послужит этому\\n\\nЧтобы это определить, нам надо вообще знать, какие события являются важными и на что они влияют\\n\\nПомогу вам в этом\\n\\nРазные события по разному влияют на рынок, что логично и понятно даже ребенку Какие-то из них являются краткосрочными, какие-то долгосрочными и так далее\\nОсновными короткими событиями для нас служат : 1) заявки на пособие по\\nбезработице 2) остатки сырой нефти 3) разрешение на строительство Почему они? Выходят достаточно часто и по наблюдениям влияют на рынок\\nЯ чаще всего обращаюсь к 1 и 3, еще чаще к 1, ко 2 почти нет. Сейчас расскажу почему\\n\\n2 и 3 влияют не на рынок в целом, а больше на свои отрасли, которые уже влияют на рынок. В связи с тем, что данные показатели не являются сильными, они в средней степени влияют на отрасль, а та уже очень слабо влияет на рынок и перетекает в дополнительны фактор, а не первостепенный\\n\\n\\nПолучается, что заявки на пособие по безработице являются сильным фактором?\\n\\nНет, они накапливающий фактор, но не сильный, есть большая разница\\n\\nВыходят каждую неделю и влияют на рынок внутри дня, но, если выйдет статистика 3-4 раза подряд и с динамикой ухудшения, то на 3-4 раз будет достаточно больно и возможно перерастет в длительный негатив и коррекцию\\n\\nПочему пособия важны? По сути они отражают \\"экономический успех\\" США, ведь чем меньше людей подают заявку, тем лучше, так как это служит следствием высокой занятости населения и расширением бизнеса и как следствие этого - рост экономики\\n\\n\\n\\n\\n\\n\\nОчень важным фактором в условиях нашей рыночной реалии являются выступления ФРС, даже Байден отошел на второй план со своими законопроектами, никто не ждет так сильно очевидных речей от него, но вот очевидных от Пауэлла пожалуйста\\n\\nДа, это не является даже правилом, так как в основном ФРС и тот же г-н Пауэлл привносят на рынок позитив, ведь в этом заключается их работа - поддерживать рост экономики любыми средствами\\n\\nНо они тоже могут влиять на краткосрочные коррекции, а особенно сейчас\\n\\n\\nНасколько вам известно, то основными триггерами к коррекции на фондовом рынке ( далее ФР ) служат : сокращение QE и ставка рефинансирования ( ключевая ставка )\\n\\nТо есть, при сокращении первого и увеличении второй мы увидим пролит индексов от 10 до 20% за кротчайшие сроки\\nКогда это произойдет? Очень скоро, но вы сами должны понять почему ФРС уже заявили о начале сокращения QE, которое было придумано для более\\nбыстрого восстановления экономики после кризиса в 2008 году, но используется по\\nсей день\\n\\nСтавку они повышать не хотят и логично почему\\n\\n\\n\\n\\nПредставьте себе повышение ставки через месяц-два-три\\n\\nЭто будет фиаско для американской экономики, которая еще не оправилась от коронавируса, да о чем речь, коронавирус еще даже не собирается уходить, а только развивается, мутирует, распространяется быстрее, чем в 2020 году, портит все вокруг и привносит мало полезного\\n\\nТаким образом, что же им делать? Сокращение QE Бог с ним, но ставка повлияет очень сильно, поэтому ее будут поднимать медленно, насколько это возможно и долго соответственно, чтобы не покалечить слабую экономику\\n\\nДа и делать это будут не раньше середины весны 2022 года\\n\\nФРС дает нам понимание более серьезной коррекции, хоть мы до этого и говорили про относительно краткосрочные\\n\\nНиже также предлагаю рассмотреть технический фактор любого спада","image":"/media/images/theme_19_lesson_29_outline_3.png"},{"text":"Давайте банально рассмотрим уровни, пока что только их Уровни сопротивления естественно, которые я начертил за полтора года\\nВзгляните на них еще раз, там есть 2 уровня и оба служат триггером к продажам, рынок пока что не готов перешагивать сопротивление и вряд ли это сделает в ближайшее время, только на гипер-положительных новостях\\n\\nОбъективно рассуждая, вряд ли они придут к нам со дня на день\\n\\nТаким образом, что мы получаем? Мы получаем постоянные уровни на ближайшее время, где будем иметь отскоки вниз = мини коррекции\\n\\nПочему ими не пользоваться? Не знаю, я пользуюсь\\n\\nУ меня есть еще один секрет, как я лично определяю, а точнее дополняю свой анализ по началу или предвестнику маленькой или большой коррекции\\n\\nСкрин также прикрепил ниже","image":"/media/images/theme_19_lesson_29_outline_4.png"},{"text":"У нас не особо стандартный рынок последнее время, как вы могли это заметить, он живет на стимулах и так далее\\n\\nПоэтому, я заметил некоторую закономерность, что после микро-коррекции рынок обычно проходит 3-4 уровня пивот и затем снова корректируется на 2-3 уровня и так из раза в раз с диапазоном 1.5 месяца в среднем\\n\\nЕсли коррекция была сильнее ( как в марте 2021 и сентябре 2021 ), то до этого он обычно проходит 4-5 уровней и падает на 3-4\\n\\nЭто лишь мои наблюдения, а не утверждение, что так все и происходит\\n\\n\\n\\nЕсли подытожить, то кратковременную коррекцию мы можем определить путем индексов Fear and Greed и VIX, анализом макроэкономических показателей, в особенности занятости населения, заявлениями ФРС о том, что будут увеличения/сокращения ( пока что только их заявлениями ) и графиком\\n\\nВсе это в моменте будет коррелировать между собой и вы это заметите\\n\\nВариантов действий 2 : освобождать средства для усреднения из сильно плюсовых позиций или, если вы краткосрочный инвестор - выход из позиций и заход позже или вставать в шорт по сильно перегретым бумагам\\n","image":""}]	novyj-urok-6382	t	\N	\N	19	470	16
5	0	e5ab654e-977d-4dba-b700-1d00718645a9	Вводная часть	[{"text":"Вводная часть в фундаментальный анализ\\n\\nВ данной главе мы с вами разберемся, что же такое ФА ( фундаментальный анализ\\n) и для чего он нужен\\n\\nВ первую очередь, ФА - это определение состояния компании, насколько оно здоровое или напротив болезненное. Под словами \\"здоровый\\", \\"болезненный\\" понимается финансовая сторона актива. Пример - у компании \\"А\\" 10.000р капитализация и 10.000р долгов, у компании \\"Б\\" 10.000р капитализация и 1.000р долгов. В плане долгов какая компания имеет здоровое соотношение? Конечно, это \\"Б\\". Таким образом, по состоянию на отношение капитализации к долгами компания \\"Б\\" будет здоровой, а компания \\"А\\" больной\\n\\n\\n\\n\\n\\nТаким образом, практически вся информация по ФА будет заключаться в\\nпонимании состояния компании, как в примере выше. Есть, конечно, исключения, но о них я расскажу попозже\\n\\nВ данной теме мы будем проходить мультипликаторы, рентабельность, читать отчеты компаний, смотреть инсайдерские сделки и многое другое\\n\\nЯ научу вас определять на какой срок, какой показатель нам показывает. Как совмещать с другими типами анализа и многое другое!\\n\\nПрошу вас перейти к первой главе основной части!\\n","image":""},{"text":"Второй абзац без картинки","image":""}]	novyj-urok-5528	t	\N	\N	3	462	\N
7	0	cbdf6727-c245-481f-bfd4-105a6a5a9189	Макроэкономические показатели	[{"text":"Макроэкономический индикатор — числовой показатель, применяемый в макроэкономике, служащий для отражения экономического состояния\\n\\nСуществует много различных М.И ( макроэкономических индикаторов ), но мы будем говорить о самых важных, которые позволяют нам оценить состояние экономики в данный момент и ее прогрессию\\n\\nСкажу сразу, в основном работать будем на Investing\\n\\nВВП - внутренний валовый продукт ВНП - валовый национальный продукт\\n\\nДавайте разграничим эти два понятия, чтобы не путаться\\n\\nСделаю это на простом примере - Если США производит товар во Франции, то это ВНП, так как товар Американский, но продается вне страны\\nЕсли Франция производит товар в США, то это ВВП, так как товар Французский, но\\nпроизводится в США\\n\\nТо есть, ВВП включает в себя стоимость всех товаров и услуг произведенных внутри страны, а ВНП включает в себя стоимость всех товаров и услуг произведенных СТРАНОЙ\\n\\nНемного подтянули знания по экономике и вернемся к главному - период отчетности по данным ВВП\\n\\nСтабильным уровнем роста ВВП в год считается 3%+, если рост меньше, то это может негативно повлиять на жизнь американцев\\n\\nВ целом, почему ВВП важно, сейчас я объясню\\n\\nВВП - внутренний валовый продукт, чем он больше, тем сильнее расширяется экономика, так как повышается уровень занятости населения, это в свою очередь приводит к повышению доходов домохозяйств, это уже приводит к большим тратам на товары и услуги самими американцами, это в свою очередь поднимает доходы компаний, а они расширяют свой бизнес, добавляя новые рабочие места\\n\\nДа, это циклично, но не бесконечно, так как черный лебедь приплывал и приплывет еще не раз\\n\\n\\nИменно поэтому рост экономики от года к году в 7-10-13% невозможен на дистанции, так как пойдет процесс гиперинфляции и прочие вытекающие\\n\\nОтсюда следует, что ВВП должен держаться примерно на 3-4%, чтобы быть стабильным и долговечным, а не быстрым и коротким\\n\\nПонимаете важность ВВП?\\n\\nПеред самими результатами мы часто встречаем всплеск волатильности, а также при негативе может сильно просесть по индексам\\n\\nДавайте посмотрим на результаты ВВП и сравним их с теми же периодами, но на пару лет раньше\\n\\nПеред вами данные с Investing. Гиппер ссылка ведет туда, где все это смотрим\\n\\nЕсли заходите отдельно, то с главного сайта переходите на \\"календарь экономических событий\\" и там будут все ближайшие важные экономические показатели","image":"/media/images/theme_4_lesson_7_outline_0.png"},{"text":"Как мы видим, ВВП зашкаливает и с течением времени не уменьшается, а продолжает свой рост\\n\\nПомните, к чему приводит подобное? Рассказывал вам чуть ранее\\n\\nЧрезмерный рост экономики не продолжается долго, поэтому делайте свои выводы\\n\\nТаким образом выглядела статистика по ВВП США до коронавируса\\n\\nВсе вполне неплохо и стабильно, ниже рамок нормы, но раз это никому не мешало и все были довольны - почему нет? Это не приводило к ужасным последствиям, просто экономика росла не с такой скоростью, как должна","image":"/media/images/theme_4_lesson_7_outline_1.png"},{"text":"Можем рассмотреть 2008 год, как\\nпоказательный пример\\n\\nВ период депрессии был очень низкий рост ВВП и даже отрицательны, который доходил до -6.3% в квартал!\\n\\nНо в конечном итоге, даже из такого смогли выбраться, так как экономика продолжает функционировать и не умирает в одночасье\\n\\nЗа ВВП нужно присматривать, но не возлагать огромных надежд, если видите сумасшедшие цифры, то вы знаете, что за ними следует\\n","image":"/media/images/theme_4_lesson_7_outline_2.png"},{"text":"9.2Уровень Безработицы\\n\\nНасколько вы помните, в прошлой главе одним из факторов роста ВВП, а значит и экономики в целом был уровень безработицы, который не должен расти, а наоборот - чем меньше безработных, тем больше в конечном итоге откроется новых мест для работы, все в экономическом круге ВВП :)\\n\\nСтатистика по нему выходит там же на Investing\\n\\nСмотреть мы должны - заявки на пособие по безработице, данный показатель четко отражает ситуацию\\n\\nТак как мы видим, сколько же людей каждую неделю подают заявку, а значит не имеют рабочего места по различным причинам\\n\\nСтатистика, которая выходит лучше ожиданий - толкает рынок вверх и наоборот\\n\\nВот таким образом выглядит данная статистика\\n\\nОна выходит каждую неделю и мы видим ее реальное значение, справа находится ожидание и еще правее - предыдущее значение\\n\\nЗа последние 3 месяца мы наблюдаем позитивную динамику, как вы можете заметить. Количество заявок упало с 385к до 293к и это является прекрасным результатом","image":"/media/images/theme_4_lesson_7_outline_3.png"},{"text":"Давайте сравним с движением рынка за последний месяц\\n\\n2 и 9 сентября выходит ужасная статистика, которая в совокупностью с перегретым рынком дает падение с хаев\\n\\nПосле нахождения дна, мы якобы пошли вверх, до очередной статистики 23 сентября, которая снова отправила рынок вниз, пока ситуация не начала исправляться и мы не увидели положительную динамику","image":"/media/images/theme_4_lesson_7_outline_4.png"},{"text":"Скажу сразу, рынок реагирует не только на \\"заявки на пособие по безработице\\", но и другие факторы, в совокупности показывая такие результаты\\n\\nНо это один из факторов, который мы включаем, так как он является достаточно важным в экономическом благополучии\\n\\nЕсли заявки только растут, то у людей нет работы, если не работы, то меньше денег у компаний и нет расширения бизнеса и т.д и т.п\\n\\nСейчас разберемся, какими же должны быть заявки в нормах экономики, чтобы они не вызывали море негатива или позитива\\n\\nПеред вами падение в 2020 году, когда заявки по безработице были на своем пике и\\nприняли максимальное значение в 6.600.000, когда за несколько месяцев до этого они составляли примерно 210 тысяч\\n\\nПосле кризиса 2008 года статистика только улучшалась. Если в 2015 году нормой было 300к заявок в неделю, то в 2019 уже 200-220к заявок в неделю. Поэтому, чтобы вернуться в нужное русло, нам надо идти уверенно до 200к и затем продолжать динамику","image":"/media/images/theme_4_lesson_7_outline_5.png"},{"text":"Есть еще один фактор в безработице, который называется - уровень безработицы. Он\\nотражает соотношение количества безработных к тем, кто работает\\n\\nУ него есть несколько минусов : 1) получается путем опроса 2) выходит с задержкой на 1-2 недели, так как его выпускают каждую вторую неделю нового месяца\\n\\nНо в целом, данный показатель отражает ситуацию в США и может показать динамику, которая нам важна\\n\\nПредлагаю рассмотреть его с нескольких сторон\\n\\nПеред вами статистика с той же логикой : слева - дата выхода и время выхода, затем\\nактуальные значения, прогноз и предыдущие значения показателя\\n\\nКак вы видите, на растущем рынке и при растущей экономике мы имеем уменьшения\\n% данного показателя, по той причине, что все больше людей поступают на работу при\\nрасширении производств и прочего-прочего","image":"/media/images/theme_4_lesson_7_outline_6.png"},{"text":"То есть, по сути - чем ниже уровень безработицы, тем лучше, как и чем ниже\\nколичество заявок на получения пособия - тем лучше, но все ли так просто?\\n\\nС одной стороны - да, но у медали она не одна :)\\n\\nЕсли рассматривать данный фактор, как вечно падающее, то это невозможно, так как в связи с падением безработицы будут увеличиваться потребительские расходы, которые в свою очередь будут поднимать уровень инфляции, а дальше - все, как по книге\\n\\nКакой самый простой способ уменьшения инфляции? Запустить обратный процесс и поднять ключевую ставку\\n\\nФРС поднимает ставку, компании начинают зарабатывать меньше, идет обратный процесс и безработица увеличивается до нужного уровня, пока ФРС снова не понизят ставку\\n\\nПо сути, это бесконечный двигатель, который приводит к росту\\n\\nТак как процесс падения безработицы куда дольше, чем ее рост. Отсюда мы и имеем циклы в 5-10 лет, чтобы снова прийти к повышению ключевой ставки, в то время, как взлет безработицы занимает максимум год\\n\\nВзгляните на этот график и скажите себе, что вы думаете?","image":"/media/images/theme_4_lesson_7_outline_7.png"},{"text":"Все максимально очевидно, да?)\\n\\nНам дадут еще 1-2 года, чтобы наиграться в трейдеров и инвесторов, потом будет очередное повышение ключевой ставки, что приведет к короткому, но сильному регрессу экономики, но ее понижение на пикировании поможет ее же и удержать от разгрома и начнется очередной цикл роста\\n\\nФРС и всем остальным вряд ли нравится, как сейчас все выглядит, они сами об этом заявляют - мы далеки от восстановившейся экономики, но мы хотим повысить ставку, вот смешные ребята)\\n\\nПредлагаю вам не терять время и перейти к статистике по ключевой ставке и проверим, когда и как они ее поднимают и главное - что происходит дальше\\n\\nНа счет уровня безработицы - показатель выше 6% обычно ФРС повышает ставку. При выходе статистики, рынок редко двигается, только если она запредельно высокая или низкая. Она имеет слишком большую задержку для трейдинга, поэтому используйте ее только для определения глобального тренда и того, что может произойти в будущем и к чему мы идем\\n\\n9.3Ключевая Ставка\\n\\nЧто же такое эта ключевая ставка? Для тех, кто не знает - это ставка по которой ЦБ выдает деньги взаймы частным ( и не только ) банкам, а банки от этого строят политику кредитов и вкладов\\n\\nЧем выше ключевая ставка, тем дороже обходится кредит у банков от ЦБ и тем выше процент по кредиту у самих банков и ниже по вкладу\\n\\nПроводим корреляцию, чтобы все поняли\\n\\nПри повышении ключевой ставки от ФРС, частные банки берут дорогие кредиты и соответственно дорогими их и делают у себя, а вклады принимают под более низкий процент. Таким образом, компании берут кредиты у банков под более высокий процент и вынуждены отдавать больше, что вызывает меньшие доходы и далее по накатанной)\\n\\nВсе просто, главное вникнуть в суть этой \\"пищевой\\" цепочки\\n\\nТак, возвращаемся к экономике\\n\\nПри экономическом буме ( в плохую сторону ), как было с коронавирусом, чтобы спасти страну и бизнес, ФРС понижает ставку, делая существование компаний настолько приятным, отчего они растут, как на дрожжах, отсюда мы и видим дикий всплеск роста экономики, которая по сути и состоит из частных компаний, их продуктов и услуг\\n\\nСейчас находится на уровне 0.25% - стандартный уровень, который был и при кризисе 2008 года, но там он продолжался около 7 лет, так как не было такого сумасшедшего роста экономики\\n\\nТаким образом, повышение ставки происходит тогда, когда экономика насытилась мизерными кредитными процентами и начинается сильная инфляция, о которой мы тоже поговорим\\n\\nПомните, что все факторы в экономике связаны и надо лишь понять их, чтобы\\n\\nПеред вами статистика ключевой ставки за последние полтора года, как вы видите, все свое время она находится на уровне 0.25%\\n\\nВ подтверждение своих слов, на следующей странице я приведу пример инфляции за тот же период","image":"/media/images/theme_4_lesson_7_outline_8.png"},{"text":"Результат на лицо. Но кто-то из вас\\nспросит, почему рост инфляции не начался сразу же после подъема ключевой ставки?\\n\\nОтвет прост :  1)  рынку нужно было время, чтобы прийти в себя после сильного обвала 2) дополнительная эмиссия новых денежных средств в страну путем печатания, все ведь помнят пакеты Байдена? Один из которых, кстати, будет принят этой осенью\\n\\nПо ощущениям, им без разницы на инфляцию. Но это такой процесс, которому тоже без разницы на всех и лучше в такие игры не играть\\n","image":"/media/images/theme_4_lesson_7_outline_9.png"},{"text":"В целом, что такое инфляция? Когда мы говорим это слово, то вносим разный смысл\\n\\nЕсли цена на хлеб поднялась на 50%, то мы скажем - инфляция 50%. Будто это от хлеба зависит\\n\\nИнфляция - рост цен на товары и услуги внутри страны, зачастую это происходит из- за дополнительных эмиссий валюты ( ее увеличения )\\n\\nРост цен идет не только за счет одного хлеба, но и каждого товара и услуги, ведь многие из них не поднялись в цене, а некоторые и вовсе упали. Поэтому и высчитывается между всеми\\n\\nЭтот процесс очень важен для фондового рынка, так как он является определяющим фактором экономики. Страна, где инфляция на высоком уровне каждый год - вероятнее будет жить на порядок хуже, чем страна с его низким уровнем. Так как идет прямое влияние на всех проживающих внутри страны людей\\n\\nЕсли говорить конкретнее и направлять это в сторону экономической машины, то\\nинфляция является одним из факторов, который не дает ФРС держать низкую ставку и разгонять экономику страны и мира до сумасшествия\\n\\nПочему?\\n\\nСитуация, когда понижена ключевая ставка, компании развиваются, экономика растет - не продолжается вечно, так как из-за сверх-способности обычных потребителей покупать товары и услуги, начинает развиваться та самая инфляция. У людей слишком много денег на личные траты, поэтому такой эффект\\n\\nТеперь представьте, что Байден раздал по 2.000$ на человека. Уму не постижимо, правда?) Но и такое присутствовало, что только подлило масла в огонь и дало очередной толчок инфляции\\n\\nКогда она доходит до рекордных уровней, а безработица падает до них же - поднимают ставку, которая заставляет экономику замедлиться и инфляцию тоже\\n\\nмежду ключевой ставкой и инфляцией прямая корреляция, но есть одно НО - надо\\nсмотреть по остальным факторам макроэкономики, так как бывают случаи, что инфляция растет вместе с ключевой ставкой и наоборот\\n\\nТакие случае случаются, когда ключевая ставка поднимается на незначительное количество %, допустим всего лишь на 20% от своего нынешнего значения\\n\\nДопустим, если сейчас ставка 0.25% и ФРС поднимут ее на 0.3% - это не замедлит инфляцию моментально, да и вряд ли замедлит в целом, разве, что на самую малость\\n\\nВ следующих слайдах я приведу подобные примеры, но также и приведу примеры сильного подъема ключевой ставки, какой будет в скором времени у нас и фактическую реакцию инфляции на данное мероприятие\\n\\nТакже,  случается  такое,  что сильный рост инфляции вызван не только ключевой ставкой, а неким ажиотажем или другими факторами, поэтому в следствие поднятия ставки, это лишь замедлит рост, не даст улететь намного выше, но не уронит инфляцию","image":"/media/images/theme_4_lesson_7_outline_10.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_11_XB0txLc.png"},{"text":"Как вы видите, инфляция не\\nпрекратила свой рост, но и не особо прогрессировала. 1% за год на мега-растущем рынке это очень неплохой результат. Как вы\\nможете заметить, мы прибавили 4% за 2021 год, а он еще даже не закончился)\\n\\nЭто один из примеров, когда инфляция не может падать, разве что при радикальных мерах. Но повышение ключевой ставки не дает ей расти темпами, что очень важно\\n\\nИ прошу заметить, поднимали ключевую ставку \\"по-детски\\"","image":""},{"text":"На примерах ниже вы видите, как сильно на графике слева начали сокращать ключевую\\nставку, так как понимали, что грозит что-то невероятное, ипотечный кризис все-таки скоро начнется :)\\n\\nНа графике справа повышающаяся инфляция, которая стучится в дверь и ее нужно останавливать. Но из двух зол ФРС выбрали меньшее по их мнению, инфляция пусть растет, но может сможем вытащить компании или не дать разбиться путем понижения ставки. Они сократили ее за 2 года 5.25% до 0.25%, можете себе представить?","image":"/media/images/theme_4_lesson_7_outline_13.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_14_cUBl8AU.png"},{"text":"Таким образом, что вы узнали из пройденных глав по макроэкономике :\\n\\n1)ФРС циклична, ключевая ставка регулирует большое количество моментов\\n2)вечного роста быть не может, инфляция убьет страну\\n3)повышение ключевой ставки в нормальных условиях вызывает понижение или замедление инфляции, если ее не разгоняют денежными вливаниями каждую секунду.\\nТогда меры должны быть радикальными\\n4)понижение ключевой ставки приведет к росту экономики после сильного спада и это практически единственное оружие ФРС против дальнейшего падения. Так как это дает\\nразвитие компаний, экономики, рабочих мест и т.д\\n5)понижение заявок на пособие по безработице не всегда дает положительный результат. Если безработица находится в слишком сладких условиях, помните про\\nинфляцию, которая вероятнее всего уже очень высоко\\n6)при корреляции не забывайте использовать инфляцию, безработицу и ключевую ставку, они сильно коррелируют между друг другом\\n\\n9.4число выданных разрешений на строительство\\n\\nНа первый взгляд вам покажется - зачем эта информация тут? Разве это как-то влияет на экономику?\\n\\nОтвет - вспоминаем 2008 год и забываем в страхе и ужасе\\n\\nНиже вы можете увидеть падение числа выданных разрешений и вспоминайте рынок","image":"/media/images/theme_4_lesson_7_outline_15.png"},{"text":"Значимость этого показателя не только в том, что он влияет на силу доллара, но и в\\nтом, что это прямой пример, как один показатель может принести миллионы рублей/ долларов или миллиарды, смотря у кого какой объем инвестиций\\n\\nНедвижимость - очень серьезная тема в экономике и без нее никуда, но нам она важна для двух факторов, которые описаны выше\\n\\nНа следующих страницах мы разберем два примера\\n\\n1)отношение доллара на повышение числа заявок\\n2)отношение строительных компаний Проведем корреляцию и сделаем выводы\\nЭто будет вам примером, как можно анализировать отрасль по макроэкономическому\\nпоказателю, хотя в данном случае он является и микроэкономическим, но это неважно\\n\\nТаким образом выглядит график доллар/рубль, где начальной точкой я взял 2005 год, что не\\nсовсем верно, но я таким образом показываю вам реальное поведение доллара на мировой арене\\n\\n\\n\\nПочему не совсем верно? Я не нашел статистики по заявкам на строительство в эти года, поэтому\\nдавайте исходить из фактов\\n\\n\\n\\nС 2007 года они начали сильно сокращаться, очевидно с чем это связано. с 2007 года доллар\\nподешевел по отношению к рублю на 13%, достаточно? Более чем!\\n","image":"/media/images/theme_4_lesson_7_outline_16.png"},{"text":"Но что же происходит следом?\\n\\nПосле сильного спада - начинается рост разрешений на строительство, это вызывает что?\\nПравильно, рост доллара на мировой арене и его укрепление\\n\\nс 2010 по 2013 разрешения выросли на 100% с полумиллиона до миллиона, что было с долларом? Правильно - рост. Сильный? Нет, но это рост, а не падение и даже не стагнация!","image":"/media/images/theme_4_lesson_7_outline_17.png"},{"text":"Смотрим дальше. Что было с долларом на таком взлете разрешений на строительство?\\nКак вы думаете? Выросли на 34% за 10 месяцев с 2014 на 2015 года!\\n\\nДоллар прибавил 55% и улетел вверх. Вы скажете - это вовсе не из-за строительства. Я вам отвечу - конечно, нет! Но оно подстегивало его рост, это один из факторов роста и укрепления доллара, так как строительство является важной частью экономики США","image":"/media/images/theme_4_lesson_7_outline_18.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_19.png"},{"text":"Но, что же самое интересное в этом показателе? И почему он вдруг становится\\nмикроэкономическим?\\n\\nОн показывает четкий ориентир на строительную отрасль. Без приукрас, так, как есть!\\n\\nЕсли мы видим динамику роста разрешений на строительство, то почему отрасль не должна расти? Может должна?\\n\\nКаждые 20 лет в США численность населения растет примерно на 50.000 человек ( это средний и грубый показатель )\\n\\nПоказатель рождаемости увеличивается в долгосрочной перспективе, таким образом, домов то нужно больше? Строительство будет идти вечно? Вероятно, да!\\n\\nДавайте посмотрим на корреляцию разрешений на строительство и график компании Lennar ( одна из крупнейших по строительству в США )\\n","image":""},{"text":"С 2011 года разрешения на строительство только растут уже на протяжении 10 лет!\\nДинамика явно положительная и сейчас мы проверим корреляцию между компанией и выданными разрешениями\\n\\nКогда показатель вырос на 200%, компания прибавила почти 800%!\\n\\nМожете себе представить? Давайте проверим соотношение. Получается, что на каждые 100% роста показателя приходится 400%\\n","image":"/media/images/theme_4_lesson_7_outline_21.png"},{"text":"","image":"/media/images/theme_4_lesson_7_outline_22.png"},{"text":"Данные показателя с апреля по сентябрь 2020 года.\\nРост на условные 50%","image":"/media/images/theme_4_lesson_7_outline_23.png"},{"text":"Такого бешеного роста строительная компания не показала, но 100% за 6 месяцев явно неплохой результат, верно? То есть краткосрочное соотношение где-то 1к2, долгосрочное 1к3-4\\n","image":"/media/images/theme_4_lesson_7_outline_24.png"},{"text":"Таким образом, делаем вывод, что число разрешений на строительство\\nвлияет не только на поведение доллара и его силу, но и на микроэкономику, которой можно пользоваться и зарабатывать деньги\\n\\nВероятнее всего, я создам бота по микро и макро экономике, который будет на основании прошлого и выхода новых данных предполагать будущее, поживем увидим, тут можно много интересного придумать!\\n\\nВот мы и завершаем фундаментальную часть нашего обучения\\n\\nСейчас вам предстоит пройти итоговый тест по всем урокам, которые были, надеюсь, что вы справитесь!\\n\\nУспешность его прохождения пойдет вам в статистику, которая видна исключительно в личном кабинете, не освещается на публику и прочее, чтобы вы могли подтянуть темы, которые хуже усвоили\\n\\nЯ надеюсь, что смог вам дать те знания, которые вы легко усвоили, ведь цель была именно в этом - помочь в усвоении. Никакой лишней информации, только практическая\\n\\nВсех жду в следующей теме по Техническому анализу!","image":""}]	novyj-urok-7834	t	\N	\N	4	160	9
21	0	b04b0140-dff0-4f45-b78b-a95022558a99	Волны Эллиота и Вульфа	[{"text":"Внутри волнового анализа мы будем разбирать с вами только эти два типа волн и сделаем вывод, какой вариант лучше, каким пользоваться, а каким не стоит\\n\\nВолны будут еще, но не на графике, а экономические, которые будут находиться в теме под названием \\"начало кризиса или как его идентифицировать\\"\\n\\nСейчас к теме - что же такое волны в целом?\\n\\nЭто закономерность в графике, которая попросту объединена линиями и это называют волнами:)\\n\\nНачнем с первого варианта - волны Эллиота ( спойлер - по моему мнению они устарели )\\n\\nВолны Эллиота бывают двух типов :\\n\\nДвижущие и Коррекционные\\n\\nДвижущие это : 1,3,5,B Коррекционные это : 2,4,A,C\\n\\nСуть заключается в том, что есть восходящий тренд и нисходящий тренд. Тренд будет длиться до той поры, пока не проявятся все 5 волн и дальше он либо : 1) пропадет 2) перейдет в коррекцию волн A-C и потом будет продолжен\\n","image":"/media/images/theme_8_lesson_21_outline_0.png"},{"text":"Абсолютно аналогичная ситуация происходит и в том случае,\\nесли волны перевернуты\\n\\nУ нас имеется длительный нисходящий тренд и по его завершению на 5 волне мы получим либо-либо : 1) конец тренда 2) начало отскока с продолжением тренда вниз","image":"/media/images/theme_8_lesson_21_outline_1.png"},{"text":"Каждый цикл объединяется в больший и так далее, пока не будет последней картинки снизу\\n\\nСначала мы имеем полную картину волн Эллиота, это должно произойти трижды и затем 2 коррекционные\\n\\nА для полного цикла 2 цикл должен также повториться 3 раза и затем два коррекционных\\n","image":"/media/images/theme_8_lesson_21_outline_2.png"},{"text":"У каждой волны есть свое правило, какой она должна быть и как далеко должна идти\\n\\nМногие трейдеры неверно их интерпретируют и придумывают свои, но изначально длина волн считалась по числам Фибоначчи и имела определенное отношение к длинам предыдущих волн\\n\\nПеред вами классическое соотношение волн по теории Эллиота\\n","image":"/media/images/theme_8_lesson_21_outline_3.png"},{"text":"Если первая волна всегда неизвестна и она может быть любого размера, то вторая\\nволна должна быть либо 0.382, либо 0.5 или же 0.618 от длины первой волны\\n\\nТо есть, если вторая волна больше 1 волны, то это априори не волны Эллиота или они формируются неверно или вы неправильно смотрите\\n\\nНиже два примера, где на одном правильная вторая волна, а на втором нет\\n\\nНа левом отношение 2 волны к 1 = 0.5, на втором близко к 1, что в корне неправильно, даже если ее минимум находится выше первой волны","image":"/media/images/theme_8_lesson_21_outline_4.png"},{"text":"Многие трейдеры пишут, что Волны можно не считать по Фибо, но тогда их смысл\\nтеряется полностью, они не идентифицируются по-настоящему и имеют 0 практического смысла\\n\\nИдем дальше. Третья волна чаще всего должна быть самой большой и иметь отношение к 1 волне : 1.618, 0.618 или 2.618\\n\\nОпять же, многие трейдеры говорят, что волна 3 обязана быть самой большой. С чего вдруг? Есть вероятность 0.618 от 1 волны и это никто не отрицал. Они придумывают свои правила построения волн\\n\\nНа следующем слайде разберем, какой может быть 3 волна, а какой нет\\n\\nНа рисунке слева третья волна имеет длину 0.618 от первой волны и является\\nправильной, когда на втором рисунке 0.25 от 1 волны и явно неверной\\n\\nМногие думают, что третья волна просто должна быть огромной, но если она будет 3-4- 5 длин волны 1, то это не волны Эллиота и нарушена концепция их построения\\n\\n","image":"/media/images/theme_8_lesson_21_outline_5.png"},{"text":"Четвертая волна должна быть 0.382 или 0.5 от длины 3 волны\\n\\nТаким образом, на примерах ниже покажу возможное расположение этих волн\\n\\nПравильное построение волны 4 представлено на рисунке слева, так как она является 0.5 от волны 3, в свою очередь на правом рисунке длина волны = 0.3 от длины 3 волны, что является в корне неправильным","image":"/media/images/theme_8_lesson_21_outline_6.png"},{"text":"И наконец 5 волна должна быть равна 0.382 или 0.5 или 0.618 от длины волны 3\\nПо сути, почти как 4 волна, но может быть и чуть больше и доходить до 0.618 Опять же - слева адекватный рисунок и волна 5 = 0.618 от волны 3, а справа она равна\\n5 от волны 3, поэтому и волны не являются правильными","image":"/media/images/theme_8_lesson_21_outline_7.png"},{"text":"Первая волна коррекции A должна быть равна 1, 0.618 или 0.5 от 5 волны\\n\\nТаким образом посмотрим на рисунки ниже и слева будет реальная волна с коэффициентом 1, а справа с коэффициентом 0.1\\n\\nДвижение коррекционных волн напоминает движение первых трех, соотношения тоже очень похожи","image":"/media/images/theme_8_lesson_21_outline_8.png"},{"text":"Волна коррекции B должна быть 0.382 или 0.5 по отношению к A\\n\\nТаким образом, на рисунке слева она имеет значение 0.5, а на рисунке справа 0.2 Осталась последняя волна C","image":"/media/images/theme_8_lesson_21_outline_9.png"},{"text":"Волна C должна иметь отношение к волне А такое как : 1.618, 0.618 или 0.5\\n\\nНа рисунке слева это отношение равно 1.618, на рисунке справа 0.25, таким образом рисунок справа становится полностью неправильным, а рисунок слева, хоть и слабо похож на привычные нам волны Эллиота, является абсолютно верным","image":"/media/images/theme_8_lesson_21_outline_10.png"},{"text":"Таким образом, Волны Эллиота достаточно сложны в их интерпретации и нахождении\\nна графике, так как имеют большое количество цифр и значений по каждой волне\\n\\nНо, они на то и сложные, чтобы ими могли пользоваться только умные люди, которые знают свое дело, такие как мы с вами\\nПо началу будет трудно, но в конечном итоге всегда становится проще Поэтому, предлагаю вам перейти к примерам, чтобы четко понять, что же такое волны\\nЭллиота и с чем их подают\\n\\nУдивительное рядом, только я открыл график Теслы, как сразу же увидел пятую волну\\nЭллиота на недельном ТФ. Прошу заметить, что чем выше ТФ, тем сильнее тренд, так как больше % он принесет\\n\\nПосмотрите внимательно на скрин ниже и на следующих слайдах мы его разберем подробно\\n","image":"/media/images/theme_8_lesson_21_outline_11.png"},{"text":"Начинаем разбирать по волнам :\\n\\n1 волна - произвольная длина\\n2 волна - 0.382, 0.5 или 0.618 от волны 1 Что мы видим у нас? 0.382, значит все верно!\\nКстати, хочу сразу сказать - определяем на глаз, обычно все вполне очевидно. Не нужно сидеть с линейкой и стараться высчитать длину каждой волны до сотых\\n","image":"/media/images/theme_8_lesson_21_outline_12.png"},{"text":"Дальше у нас появляется третья\\nволна, которая должна иметь отношение к первой волне по следующим пропорциям : 1.618, 0.618\\nили 2.618\\n\\nУ нас очевидно 1.618 и опять же третья волна четко вписывается в описание волн Эллиота\\n\\nТаким образом, мы считаем и 4 волну","image":"/media/images/theme_8_lesson_21_outline_13.png"},{"text":"Соответственно 4 волна будет иметь отношение к волне 3 таким образом : 0.382 или\\n0.5\\n\\nМы видим четкие 0.382 и понимаем, что имеем дело с закрытием 4 волны и началом 5, что же делать в таком случае?\\n\\nОбычно по волнам Эллиота входят в начале волны, но мы с вами увидели ее только сейчас, поэтому надо посмотреть, до какого уровня может дойти 5 волна","image":"/media/images/theme_8_lesson_21_outline_14.png"},{"text":"5 волна имеет отношение к волне 3 : 0.382, 0.5 или 0.618\\n\\nТаким образом, у нас есть 3 варианта события, которые я отобразил на графике. Каждое из них подразумевает дальнейшее продолжение роста. Чаще всего волна 5 принимает значение в 0.5 от волны 3, поэтому у нас есть основания полагать, что цена дойдет до уровня от 1.577 до максимума в 2.900\\n","image":"/media/images/theme_8_lesson_21_outline_15.png"},{"text":"Таким образом мы можем прямо сейчас войти в позицию и даже учитывая то, что\\nТесла находится достаточно высоко, по волнам Эллиота мы видим неплохой апсайд и с текущих значений\\n\\nДа, риск куда выше, обычно волны Эллиота используют, обнаруживая их на 3 или 4 волнах, чтобы войти на 3 и забрать большую прибыль, так как она чаще всего является самой большой, либо зайти на 5 и забрать всю волну, ибо интерпретация не бывает четкой, может быть и 0.35 и 0.7 и это будут правильные волны\\n\\nСейчас я предлагаю вам разобрать еще один пример, который будет полностью завершен, но ваша задача будет понять, правильно ли он построен и является ли это Волнами Эллиота в целом\\n\\nЭто график SPCE, после окончания\\nволнового образования мы еще немного откатились вниз, но затем показали очень сильный импульс вверх, что дало нам неимоверный рост на сотни процентов за 1 месяц\\n\\nНо посмотрим на график и волны, верны ли они?\\n\\nНет ли у них никаких ошибок, предлагаю разобраться вместе, чтобы вы случайно не попались на такого же рода ловушку\\n","image":"/media/images/theme_8_lesson_21_outline_16.png"},{"text":"Разбираем первые три волны\\n\\nВспоминаем правила - первая волна произвольная и длится столько, сколько пожелает нужным\\n\\nВторая волна должна иметь длину 0.382, 0.5 или 0.618 от волны 1. В нашем случае 0.618 и все правильно\\n\\nТретья волна должна быть равна 0.618, 1.618 или 2.618 от волны 1, все тоже верно, у нас 1.618 и вполне пока что совпадает\\n","image":"/media/images/theme_8_lesson_21_outline_17.png"},{"text":"Затем мы смотрим на 4 и 5 волны\\n\\n4 волна должна быть 0.382 или 0.5 от длины 3 волны, у нас близко к 0.5, поэтому можем закрыть на это глаза, но что с 5 волной?\\n\\nОна имеет длину 0.382, 0.5 или 0.618 от волны 3, но в нашем случае она намного больше, чем любое из этих значений. Она в целом длиннее, чем волна 3, что в корне меняет ситуацию и подрывает теорию волн Эллиота, рассматривать далее данный пример, как тему разбора смысла нет\\n","image":"/media/images/theme_8_lesson_21_outline_18.png"},{"text":"Все же ради интереса мы рассмотрим\\n\\nПервая коррекционная волна А должна быть равна 1, 0.618 или 0.5 волны 5\\n\\nЕсли закрыть глаза на точные подсчеты, то она близка к 1, но учитывая, что 5 волна нарушает правила, то это бесполезно\\n\\nКоррекционная волна В должна быть равна 0.382 или 0.5 от волны А. Тут все верно, 0.382 подходит. Волна коррекции С должна быть равна 1.618, 0.5 или 0.618 волны А. Тут снова не сходится, она занимает 5/7 от волны А, что равно 0.714 и является большим разбросом\\n","image":"/media/images/theme_8_lesson_21_outline_19.png"},{"text":"Так можно ли считать этот пример верным? Скорее нет, чем да\\n\\nЕсли бы не волна 5, то все было бы совсем иначе\\n\\nВидите синюю линию? Как правило, крайняя точка коррекции волны С находится чуть выше или на том же уровне, что и пик волны 1, у нас он находится значительно ниже, примерно на уровне 0.7-0.8 от волны 1\\n\\nМожно списать это на погрешность, можно не списывать, тут дело лично каждого","image":"/media/images/theme_8_lesson_21_outline_20.png"},{"text":"Но вопрос остается открытым - могли ли мы тут заработать?\\n\\nОтвет - конечно!\\n\\nМы узнали, что волны Эллиота начали сбиваться только на 5 волне. Таким образом, мы могли входить и на третью и на 4 и на 5 волну вполне себе успешно и ничего бы нам не помешало, но торговать дальше мы бы вряд ли стали, так как увидели бы расхождение в правилах и реальном графике\\n\\nТогда главный вопрос - почему же Волны Эллиота слабо работают и какую замену можно им придумать? Они слабо работают, так как часто сбиваются и их очень сложно найти\\n\\nОни неплохие в целом, но очень уж сложно с ними работать, если вы намеренно их ищите\\n\\nЕсли вы торгуете и они вам попались на большом ТФ - это удача, которую можно хватать за хвост, но в противном случае есть более удобный вариант\\n\\nВолны Вульфа\\n\\nБилл Вульф - имя и фамилия человека, который создал этот инструмент графического анализа, которые подразумевает собой создание некоего паттерна посредством волн\\n\\nУ этих волн также есть свои правила и есть свои направления, они также могут идти и вверх и вниз, давайте приступим к разбору\\n\\nНо для начала я хочу сказать вам, чем эти волны отличаются от Эллиотовского варианта\\n\\n1)они чаще появляются и на коротких фреймах тоже\\n2)они имеют четкую волну на которой надо входить в позицию\\n3)как по мне - более понятны и просты\\n\\nКак я и сказал выше - бывают два типа волновых паттернов : медвежий и бычий\\n\\nОни отличаются лишь тем, что при бычьем сам паттерн направлен вниз, а при медвежье вверх\\n\\nСейчас мы будем разбирать правила применения и использования графического индикатора\\n","image":"/media/images/theme_8_lesson_21_outline_21.png"},{"text":"Для начала разберем модель бычьего паттерна\\n\\nВолна 1 – основание модели\\nВолна 2 – какая-либо значимая вершина. Выход за максимум волны 1 необязателен Волна 3 – новый минимум. Эта волна всегда должна пробивать минимум волны 1 Волна 4 – всегда выходит за минимум волны 1, но никогда не должна выходить за\\nмаксимум волны 2\\n\\nВолна 5 – новый минимум, выходит за минимум волны 3\\n\\nВолна 6 – начинается после окончания волны 5 и является самой мощной из всех волн в модели Вульфа\\n\\n\\n\\nОсновное правило - идентифицировать волны Вульфа можно только в том случае, когда уже имеются 4 волны, а входить лучше только после 5, так как 6 волна является самой мощной и на ней делаются основные деньги и проценты!\\n\\nЧтобы определить куда пойдет волна 6, а точнее ее максимум, мы соединяем линиями точки волн 1, 3, 5 и 1, 4, получая некоторую расширяющуюся формацию, верхняя точкой которой и будет являться целью 6 волны\\n\\nПредлагаю сейчас на рисунке разобрать, как это должно происходить в теории\\n\\nМы будем подробно разбирать каждый шаг, чтобы вы четко поняли тему и\\nмогли легко воспользоваться данным инструментом на практике Перед вами волна 1 бычьего паттерна\\nЭто просто волна, которая шла сверху под нисходящим трендом и остановилась на каком-то моменте, чтобы образовать волну 2","image":"/media/images/theme_8_lesson_21_outline_22.png"},{"text":"Я делаю сразу на двух вариантах, чтобы вы понимали, где в итоге будет правильная\\nкартинка, а где нет\\n\\nСейчас мы добавили волну 2, она везде выполнена правильно, так как волна 2 - обычная значимая вершина, выход за пределы пика волны 1 необязателен, хоть и возможен, как на рисунке справа\\n\\nСейчас мы добавим волну 3","image":"/media/images/theme_8_lesson_21_outline_23.png"},{"text":"Вот и пошли расхождения, что вы думаете, где правильный вариант?\\n\\nОчевидно, что слева. Почему? Правила гласят, волна 2 может быть как выше, так и ниже максимума волны 1, но волна экстремум волны 3 обязан быть ниже волны 1, а не выше его, как показано на рисунке справа\\n\\nДалее везде будут правильные волны, но посмотрим, к чему приведет ошибка на одной волне рисунка","image":"/media/images/theme_8_lesson_21_outline_24.png"},{"text":"Тут тоже все верно\\n\\nВолна 4 должна быть ниже волны 2 и выше волны 1, что у нас и получилось на обоих рисунках\\n\\nКак вы заметили, тут нет никаких чисел Фибоначчи, без них куда проще, правда ведь?","image":"/media/images/theme_8_lesson_21_outline_25.png"},{"text":"По задумке мы уже могли определить, что перед нами волны Вульфа и войти в шорт\\nпозицию на пятую волну, но для уверенности я вам советую сначала дожидаться окончания 5 волны и затем только брать на 6\\n\\nПочему? Вы можете допустить ошибки, которые рынок не простит вам Волна 5 должна быть ниже волны 1 и 3\\nРисунок справа не удовлетворяет условиям, слева все правильно","image":"/media/images/theme_8_lesson_21_outline_26.png"},{"text":"По сути график не изменился ни на 1, ни на 2 рисунках, но мог бы, если бы это были\\nреальные свечи, вероятнее всего после закрытия волны 3 над волной 1, не было бы никаких волн 4,5,6\\n\\nСейчас мы рассматриваем вариант слева. Мы проводим линии между экстремумами волн 1 и 4, а затем 1,3,5 и получаем следующее","image":"/media/images/theme_8_lesson_21_outline_27.png"},{"text":"Вот таким образом будет выглядеть волна\\nкартина\\n\\nМы проводим от 5 волны линию до верхней границы сопротивления, которую построили через точки волны 1 и 4, тем самым получая волну номер 6, которая и является ключевой\\n\\nСразу после 5 волны мы входим в лонг позицию и получаем самый большой рост, который показывает этот паттерн\\n\\nНо есть один небольшой момент, который я бы хотел обговорить на берегу перед тем, как мы заберемся по колено в море\\n","image":"/media/images/theme_8_lesson_21_outline_28.png"},{"text":"Иногда 5 волна заходит чуть ниже, чем\\nдолжна и нижняя линяя проводится между точками 1 и 3, без учета 5 волны\\n\\nВ таком случае, мы входим в позицию только тогда, когда начинается разворот и начало 6 волны, только тогда, когда график войдет в этот треугольник, в эту расширяющуюся формацию\\n\\nМы не берем, когда волна 5 еще идет вниз, мы защищаем себя от лишних рисков\\n\\nСейчас предлагаю вам перейти к разбору волн Вульфа на нисходящий тренд или медвежий\\n","image":"/media/images/theme_8_lesson_21_outline_29.png"},{"text":"Разбирать мы будем по такой же системе - я буду чертить 2 рисунка и в 1 из них будет\\nдопущена фундаментальная ошибка, мы посмотрим и правильный и неправильный\\n\\nПервая линия ( волна ) идет снизу-вверх и не имеет никаких правил - где закончится, там и закончится\\n\\nЗатем строится вторая волна, сейчас расскажу про правила","image":"/media/images/theme_8_lesson_21_outline_30.png"},{"text":"Вторая волна - имеет значимый экстремум, но не обязана быть выше или ниже\\nминимума волны 1, просто как правило это так. Вторая волна не имеет никакой практической информации, поэтому она просто должна быть и все, такие правила\\n\\nВсе основные правила привносят волны с 3 по 5, к которым мы сейчас и переходим","image":"/media/images/theme_8_lesson_21_outline_31.png"},{"text":"Волна номер 3 всегда является максимумом и перебивает волну номер 1\\n\\nЕсли волна номер 3 ниже, чем волна номер 1, то это не Волны Вульфа или они себя сами не подтвердили\\n\\nДва примера, где слева - все грамотно, а справа нет, там максимум волны 3 ниже 1 волны","image":"/media/images/theme_8_lesson_21_outline_32.png"},{"text":"Волна 4 имеет такое правило, что на нисходящей фигуре всегда выходит за максимум\\nволны 1 и никогда не выходит за минимум волны 2 Проще говоря, она должна быть просто между ними\\nНиже примеры, где слева все правильно, а справа волна 4 поставила новый минимум\\nпод волной 2 и нарушила правила\\n\\nТакже, добавил пример и обвел волну 1 и 2, чтобы вы понимали, между чем и чем она должна быть","image":"/media/images/theme_8_lesson_21_outline_33.png"},{"text":"Дальше строится пятая волна, которая должна быть выше максимумов 1 и 3 волны\\n\\nЕсли данные условия удовлетворяют, то мы чертим линии и думаем, когда нам войти в позицию, так как профи заходят на 5 и 6 волны, а новичкам советуется только на 6, так как она самая очевидная\\n\\nЗдесь мы будем вставать в шорт, давайте расчертим уровни и посмотрим","image":"/media/images/theme_8_lesson_21_outline_34.png"},{"text":"Рисунок справа неправильный, слева правильный, так как справа была ошибка во\\nмногих волнах\\n\\nРазберем верный рисунок - волна 5 вышла за рамки, мы ждем, когда она вернется и пробьет красную линию, которую мы провели через волны 1 и 3 ( этот момент я выделил синим цветом ), а затем берем в шорт и по оранжевой линии зарабатываем","image":"/media/images/theme_8_lesson_21_outline_35.png"},{"text":"На самом деле, все предельно просто, просто нужно вникнуть, чтобы не забывать какая\\nволна под какой или над какой идет\\n\\nЯ предлагаю вам закрепить этот момент на практике, чтобы наверняка все запомнить и понять\\n\\nСейчас разберем несколько примеров : одну восходящую фигуру и одну нисходящую и после этого закроем тему полностью\\n\\nСейчас разберем результат восходящей\\nфигуры Вульфа, чтобы понять, какие подводные камни существуют и с чем лучше применять этот индикатор графического анализа\\n\\nСлева от вас график, где я начертил 3 волны на дневном ТФ\\n\\nПроверяем :\\n\\n1 волна произвольная, вторая волна также произвольная, выход на 1 вершину не обязателен\\n3 волна ниже минимума 1 волны, пока что все верно\\n","image":"/media/images/theme_8_lesson_21_outline_36.png"},{"text":"Появились волны 4 и 5, по правилам должно быть следующее :\\n\\nВолна 4 ниже экстремума волны 2, а волна 5 ниже экстремума волны 3 и 1\\n\\nВсе правильно?\\n\\nДа, все верно, сейчас мы должны начертить линии и понять, куда пойдет график дальше, а точнее до какого уровня\\n","image":"/media/images/theme_8_lesson_21_outline_37.png"},{"text":"Волну 6 я выделил зеленым цветом,\\nчтобы всем было понятно\\n\\nКак вы видите, она не дошла до своего ценового уровня, почему так?\\n\\nПотому что это реальная торговля и появляются свои правила, которые не всегда допускают ход волны четко до своей цели\\n\\nКак же тогда работать и что именно помешало волне, разбираемся!\\n","image":"/media/images/theme_8_lesson_21_outline_38.png"},{"text":"Вот основная причина, почему график не смог\\nпойти дальше\\n\\nМы потерпели поражение перед важнейшим уровнем на недельном ТФ ( очень большой ТФ ) и не смогли пробить его\\n\\nО чем нам это говорит? Когда вы входите по волнам Вульфа, обязательно смотрите на ценовые уровни. Волны это не панацея, которая спасет вас от всего, такие уровни не пробиваются за раз\\n\\nЧтобы заработать, просто выходите из 6 волны чуть раньше, дабы не вводить себя в заблуждение\\n","image":"/media/images/theme_8_lesson_21_outline_39.png"},{"text":"\\nЗа 3 недели прибыль по неполной 6 волне составила 22% прибыли\\n\\nХороший результат? Отличный!\\n\\nДавайте рассмотрим еще один важный пример, который поможет вам понимать Волны Вульфа лучше\\n\\nЯ вообще считаю, что чем больше примеров - тем проще будет на практике Поэтому советую вам тщательно смотреть каждый из них\\n\\nПеред нами такой отрезок графика, видите ли вы на нем волны Вульфа?\\n\\nВ самой левой части мы видим окончание 6 волны предыдущего примера, давайте попробуем найти что-то еще\\n","image":"/media/images/theme_8_lesson_21_outline_40.png"},{"text":"Может быть тут может крыться волна Вульфа? 3 ниже 1, 4 ниже 2, пока что все верно, посмотрим далее\\n\\nМожет 5 волна удовлетворит наши требования и тоже покажет подтверждение?\\n\\n","image":"/media/images/theme_8_lesson_21_outline_41.png"},{"text":"Увы и ах, но 5 волна оказалась на уровне с 1 и выше 3, а должна быть ниже обеих\\n\\nТаким образом, мы не можем дальше рассматривать этот пример и если бы это был реальный график и мы увидели, что волна 5 не дошла до своего значения, то брать не станем\\n\\nОна может не дойти капельку до линии, но условия обязана выполнить - ниже волн 1 и 3","image":"/media/images/theme_8_lesson_21_outline_42.png"},{"text":"от же она - настоящая и единственно верная волна, которая выполнила все условия,\\nпринесла 16% за полторы недели и оставила своих художников довольными и богатыми Волна 1 ниже волны 3, а волна 3 ниже волны 5 - верно!\\nВолна 2 произвольная, волна 4 ниже волны 2 и выше волны 1 - верно!\\n\\nВолна 5 вышла немного за рамки, подождали возврата и взяли в лонг - дошло четко до уровней, так как ей ничего не мешало!\\n","image":"/media/images/theme_8_lesson_21_outline_43.png"},{"text":"Подведем небольшой итог по восходящей формации :\\n\\n1)волны должны четко выполнять свои правила\\n2)5 волна может немного заступать, берем на возвращении в формацию\\n3)6 волна не обязана доходить до конца, если есть серьезные уровни сопротивления, которые мы можем посмотреть : 1) коррекция по Фибо 2) Уровни Пивот\\n4)никогда не берите раньше времени, просто в расчете на то, что вы правы Такие вот правила на восходящей фигуры, перейдем к примерам нисходящей\\n\\nВспоминаем правила нисходящей формации - волна 3 выше 1, волна 5 выше 1 и 3\\nВолна 2 произвольная, но волна 4 выше 2 и ниже 1 Проверяем на скрине ниже, что у нас\\nВолна 1 и 2 произвольные, волна 3 выше 1 - делаем вывод, что пока что на данный\\nмомент все верно и мы двигаемся дальше","image":"/media/images/theme_8_lesson_21_outline_44.png"},{"text":"Первые три волны мы проверили, осталось проверить еще 2 и сделать выводы, до куда\\nможет пойти график дальше\\n\\nВолна 4 оказалась верной, находится ниже 1 и выше 2, таким образом волна 5 должна быть выше всех волн, но главное - 1 и 3, так и случилось. Волна 5 также подходит по нашим требованиям, что прекрасно!\\n\\nДавайте определим, где будет находиться волна 6 и когда нам входить в шорт","image":"/media/images/theme_8_lesson_21_outline_45.png"},{"text":"Вот вам и Волна Вульфа, все выполнено грамотно и закрыты все из 6 волн\\n\\nМы четко вошли в шорт позицию, как только началась 6 волна и пошла вниз, прибыль 17% за 15 дней или 11 торговых дней\\n\\nПредлагаю разобрать последний пример для закрепления и полностью закроем главу волнового анализа\\n","image":"/media/images/theme_8_lesson_21_outline_46.png"},{"text":"Перед вами как раз тот пример, который\\nпозволяет понять и увидеть, что волна 5 и 6 не обязаны всегда касаться своих линий\\n\\nВолна 1,2,3,4 выполняют свои условия, так как волна 3 выше 1, волна 5 выше 1 и 3, волна 2 произвольная, а волна 4 выше волны 2 и ниже волны 1\\n\\nТаким образом, волна 5 выполнила свои условия, но немного не дошла до линии, разве это проблема? Нет! Условия она выполнила и это главное\\n\\nВолна 6 также остановилась на своем важном уровне, который мы могли бы посмотреть на Пивот или Коррекции Фибо","image":"/media/images/theme_8_lesson_21_outline_47.png"},{"text":"Подведем итог по волнам Вульфа :\\n\\n1)встречаются намного чаще Эллиота\\n2)легче идентифицировать и понимать\\n3)заходим на 6 волне, на 5 только с опытом\\n4)5 волна может выйти за пределы линии, которую проводим от волн 1-3, чтобы войти на 6 волну, надо ждать возврата\\n5)можно торговать на любом ТФ, но желательно от 1 часа\\n\\n\\nЯ часто использую эти волны, так как они мне интересны и показывают неплохой результат\\n\\nОбычно, я устанавливаю связку под каждый найденный паттерн, так как без нее мне не понять, дойдет ли 5-6 волна до линии или нет. Как правило это просто уровни пивот или же коррекция по Фибо\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nЕсли в целом подводить итог по двум видам волн, то скажу следующее\\n\\nВы можете использовать любой из видов, но волны Эллиота лучше отрабатывают себя на долгосрочном тренде, чем краткосрочном, учтите это\\nВсе остальные особенности были написаны в итогах каждого вида Сейчас я предлагаю вам перейти к новой теме, от которой зависит 50% успеха в\\nинвестициях - психологии","image":""}]	novyj-urok-8708	t	\N	\N	8	393	19
30	1	340e39ed-1b45-4b1e-bdda-b937eb5a6939	Обнаружение глобальной коррекции и не только	[{"text":"Циклы Китчина, Жюгляра, Кузнеца и Кондратьева\\n\\nЧтобы определять фазу рынка и его средне-долгосрочную перспективу, а также понимать примерное время глобальной коррекции, нам нужно воспользоваться трудами перечисленных выше экономистов\\n\\nИх фамилии были использованы для обозначения собственных циклов, многие из которых были открыты примерно столетие назад\\n\\nСейчас мы будем разбираться в каждом из них отдельно ( они имеют свои сходства, но и кардинальные различия )\\n\\n\\n\\n\\n\\n\\n\\nЦикл Китчина\\n\\nДанный цикл был открыт в 1920 годы и является рабочим до сих пор, что определенно внушает доверие в его логику\\n\\nХотя, если понять логику любого из циклов, вопросов про работоспособность идеи даже не будет возникать, а лишь наоборот - расстроит, что рынок настолько ничтожен перед реальными фундаментальными факторами и ничего с этим не поделать\\n\\nПредлагаю начать разбор с того, что это за цикл и дать ему объяснение\\n\\n\\n\\n\\nОн длится от 1 до 5 лет\\n\\nЛогика заключается во временном лаге между поступлением информации по смене спроса и произошедшим изменением спроса, а также все это усиливается временным диапазоном реакции производства на информацию\\n\\nВ основе всех этих изменений лежат колебания в объемах запасов\\n\\nПока что кажется не совсем понятным, но мы во всем разберемся, не переживайте\\n\\nэкономист предположил, что толчком к возникновению открытых им циклов являются колебания мировых «золотых» запасов\\n\\nНо в условиях нынешней реалии такое объяснение не может быть удовлетворительным, хотя циклы сохранились, поэтому им дали другое объяснение\\n\\nСейчас появление краткосрочных циклов интерпретируют такими моментами:\\n\\nПсихологический – людям, занимающимся управлением хозяйствующим субъектом, необходимо время на осмысление информации относительно происходящих на рынке перемен\\n\\nТехнологический – для внедрения в производство принятых решений также требуется время\\n\\nВот вам простой пример, чтобы вы все поняли наверняка\\n\\nКомпания А занимается производством продукта В, до руководства дошла информация, что на рынке спрос сильно превышает имеющееся предложение, таким образом, что начинает делать руководство? Правильно - увеличивает мощности, дабы производить больше товара и зарабатывать больше денег\\n\\nКажется и что в этом такого? Причем тут цикл и где плохие новости\\n\\nДело в том, что пока компания увеличивает мощности и доходит до назначенного уровня, спрос на продукцию В уже не так велик и на складах остается нереализованный продукт, который в свою очередь : 1) может портиться 2) просто не нужен в связи с пониженным спросом\\n\\nКомпания получает повторно информацию о понижении спроса и понижает мощности, а к моменту их снижения, спрос может появиться снова и это экономическая ловушка\\n\\n\\n\\n\\n\\n\\nВдобавок к этому идут : 1) время на создание плана по увеличению мощностей\\n2) время, пока дойдет новость, что спрос увеличился 3) время, пока нарастят объемы производства 4) проявление эффекта от созданных условий и так далее\\n\\nТо есть образуется временной ЛАГ, который заставляет компанию всегда находиться на несколько шагов позади\\n\\nКогда спрос есть - они еще не знают, а когда узнают, то нужно еще много времени на реализацию увеличения мощностей производства. Когда же это будет реализовано, то спрос уже не будет так велик, все просто\\n\\nИменно так и получаются циклы Китчина, отсюда они и берутся. Среднее время их прохождения 2-4 года\\n\\nНа картинке ниже вы видите в целом распорядок составляющих цикла","image":"/media/images/theme_19_lesson_30_outline_0.png"},{"text":"Все последующие циклы будут иметь различное объяснение, но в основном будут включать предыдущие\\n\\nДопустим, цикл Жюгляра включает в себя Китчина полностью и не жалеет об этом :)\\n\\nПросто все дальнейшие циклы крупнее своих собратьев, поэтому зачастую и включают их в себя\\n\\nС первым циклом и пониманием его мы разобрались, перейдем к следующему\\n\\nСкажу сразу - сначала разбираемся в циклах, потом пытаемся понять, как их использовать\\n\\nЦикл Жюгляра\\n\\nДанный цикл длится от 7 до 11 лет и одной из его составляющих является цикл Китчина\\n\\nОсновной смысл цикла заключается в том, что он идет сразу за Китчиным, а также его дополняет, так как начинает учитывать колебания в объемах инвестиций\\n\\nЕсли цикл Китчина построен на временном лаге, то Жюгляр уже учитывает колебания инвестиционных процессов, ведь вливания в основной капитал не происходят мгновенно, нужно время для установления инвестиционной политики, создания мощностей и т.п.\\n\\nПолучается, что в добавок к временному лагу, который представляет из себя задержку между событием и реакцией на него, добавляется также запаздывание, связанное с инвестиционным решением, таким образом цикл становится длиннее\\n\\nВливания в основной капитал происходят в среднем раз в 10-летие, таким образом начинает повышаться производительность и предприятие расширяется, когда же оборудование изнашивается и становится плохим, то происходит спад=регресс до следующего вливания в основной капитал для обновления оборудования и в целом имущества\\n\\nЦикл Жюгляра нестандартно разделен на большее количество фаз\\n\\nФазы старта и ускорения - начальный толок в связи с волевым решением руководства/ мощности расширяются, вливания средств увеличиваются\\n\\nФазы роста и перегрева - Производство увеличивается так сильно, что перекрывает весь спрос/спрос перекрыт, но объемы растут\\n\\nФазы краха и спада - затраты перестают окупаться/уменьшение вливаний и объемов производства\\n\\n\\n\\n\\nФазы стабилизации и сдвига - перекрытие спроса запасами и объемом после уменьшения/запасы уменьшаются, а производственный уровень слабый, чтобы перекрыть спрос, начинается увеличение мощностей и\\nобъема вливаний\\n\\nНа самом деле это все подфазы основных фаз - рост, пик, спад, депрессия или ( оживление, процветание, рецессия и депрессия )\\n\\nСтандартная ситуация - фаза подъема длится 4-5 лет, остальные 3 по 2-3 года, таким образом и получается среднесрочный цикл\\n\\n\\nОсновные причины кризиса :\\n\\nЗначительное и не всегда адекватное увеличение цен на ресурсы: недвижимость, сырье, оборудование и т.д.\\n\\nСверхнормативный спрос на кредитные продукты и чрезмерное увеличение объемов инвестиционных вливаний\\n\\nПоявление спекулятивных операций с фондовыми и товарными продуктами и разрастание их масштабов до неадекватных размеров\\n\\nРост числа высокорискованных операций.\\n\\n\\n\\n\\nПричины кризиса появляются на отдельных этапах и фазах, чтобы мы с вами могли понять, а где же сейчас находится наша экономика и чего мы можем ждать дальше?\\n\\nЦикл Жюгляра имеет отличительное свойство - он разделен на подфазы, что позволяет с большей точностью определить наше положение внутри цикловой системы\\n\\nСейчас мы перейдем к циклу Кузнеца, который является еще более долгосрочным\\n","image":""},{"text":"Для начала стоит прочитать описание каждой фазы, чтобы понимать, что за ними стоит\\n\\nПосле этого переходите далее","image":"/media/images/theme_19_lesson_30_outline_2.png"},{"text":"Цикл Кузнеца\\n\\nСаймон Кузнец был американским экономистом и после 2 мировой войны в мире был вопрос - куда двигаться дальше?\\n\\nИменно тогда было уделено большое внимание циклическим колебаниям, которыми и занялся Саймон\\nОн определил, что циклы в большей мере зависят от : Демографии\\nВливания средств в капстроительство\\nПеремещение капитала Изменение национального дохода во времени\\n\\n\\n\\n\\nДалее он определил, что основными факторами являются демографические сдвиги и инвестиции на длительный срок в капитальные объекты\\n\\nКузнец вывел свои волны еще в 1930 году, они развивались под воздействием миграции рабочих, которые реализуют себя в строительстве. В мировой экономике эти циклы совпадают с изменением цен на недвижимость в развитых странах\\n\\nДлина одной волны составляет 15-20 лет Далее рассмотрим фазы и их характеристики\\n","image":"/media/images/theme_19_lesson_30_outline_3.png"},{"text":"На самом деле все очень однотипно, просто имеет разную продолжительность и причины возникновения\\n\\nОднотипные я имею ввиду фазы и их описание. Допустим - фаза спада характеризуется понижением экономических показателей. Логично ведь?\\nКонечно понижением, на то она и стадия спада :)\\n\\nЯ дал вам описание для общего понимания, что происходит на каждой фазе, но в целом они практически идентичны, основные различия заключаются в обосновании фаз\\n\\n\\n\\nСейчас определить цикл Кузнеца не очень то и просто, потому что миграции рабочих с целью занятости в строительстве не так высоко и отслеживается с трудом\\nНо сам цикл сохранился и даже обоснование его не убрали Кузнец работал не только над циклами, но и выделил 6 характеристик\\nэкономического роста. Для чего они вам? Как же определять фазу \\"роста\\", а\\nзатем плавного перехода в \\"пик\\"?\\n\\nПонимая характеристики роста, мы можем определить стадию\\n","image":"/media/images/theme_19_lesson_30_outline_4.png"},{"text":"Цикл Кондратьева\\n\\nСамый длинный цикл из нами рассмотренных - он занимает 50-60 лет\\nСтруктура самого цикла заключается в определении быстрого и медленного развития экономики Ученый выделил эмпирическим путем четыре ключевые закономерности длинных ритмов.\\nНакануне развития повышательной волны (иногда уже в ее начале) происходят кардинальные и принципиальные перемены, затрагивающие условия хозяйствования. Они могут быть вызваны внедрением в практику изобретений и новаторских подходов, появлением на экономическом поле нового игрока в виде очередной вышедшей на рынок страны, изменением условий в обращении денежной массы и т.д.\\nВременные отрезки, на которые приходятся повышательные части длинных циклов, обычно характеризуются яркими переломными событиями в социальной сфере (войны, революции и т.д.).\\nТогда как в период понижательных волн такого не наблюдается.\\nПонижательные отрезки длинных волн сопровождаются затяжной депрессией, разворачивающейся в сельскохозяйственном секторе.\\nДлинные ритмы проявляются в точно такой же динамической последовательности, как и происходящие в экономической системе средне- и краткосрочные колебания. То есть для них характерны те же этапы развития: подъемы, кризисы, депрессии.\\n\\nПеред вами датировки экономических циклов Кондратьева начиная с 1803 года Экономисты считают, что в 2018 году начался новый цикл","image":"/media/images/theme_19_lesson_30_outline_5.png"},{"text":"В основе Кондратьевских циклов лежит ВВП и основные экономические показатели стран\\n\\nПредлагаю вам рассмотреть описание каждой фазы этого цикла, может вы заметите что-то похожее на реальность\\n","image":"/media/images/theme_19_lesson_30_outline_6.png"},{"text":"","image":"/media/images/theme_19_lesson_30_outline_7_39XDurH.png"},{"text":"Если вам это ничего не напоминает, то перечитывайте столько раз, пока не напомнит :)\\n\\nПо циклам Кондратьева мы находимся на первом этапе, об этом же говорят и экономисты\\n\\nВ практику внедряются изобретения с предыдущего этапа - этапа депрессии в 14-15-18 годах, когда экономике было тяжело\\nУ нас значительные темпы инфляционных процессов, а также скоро мы перейдем к повышению ставок\\n\\nНо даже Кондартьев вам говорит, что повышение ставок это не конец, а переход к стадии пика, а учитывая, что цикл длится 50-60 лет у нас впереди большой рост\\n\\nСтадия пика в основном характеризуется катаклизмом, который был при коронавирусе или при второй мировой войне, да и в целом мы говорим про что-то мирового масштаба\\n\\nНа самом деле по фазам Кондратьева мы находимся в смешанной фазе, которая не была им выделена\\n\\nВдумайтесь, мы попали в пандемию, которая не дает экономике восстановиться, победить пока что мы ее не можем, но с другой стороны у нас далеко не стадия депрессии, хотя отчасти она тоже замечается. У нас происходят инновации, которые подстраиваются под \\"новый дивный мир\\", но также инфляция летит вверх и повышение ставок не за горами\\n\\nЗамечаете, что нынешнее положение понемногу отовсюду?\\n\\n\\n\\n\\n\\n\\nЛично мое скромное мнение\\n\\nЯ считаю, что требуется пересмотр фаз, иначе трудно определить, где именно мы находимся. Если бы цикл был короткий - запросто, но он длинный и по логике мы на конце фазы депрессии, но когда она закончится, у нас уже будет инфляция в небесах, а ставки повышаться\\n\\nЭто только касательно коронавируса, на деле все стадии отлично себя показывают, а от нас они требуют инноваторских решений\\n\\nЕще помните про список циклов? Смотрите их объяснение","image":"/media/images/theme_19_lesson_30_outline_8.png"},{"text":"Каждый цикл = прорывная способность и что-то инновационное, что-то новое, переход на новый этап\\n\\nЯ считаю, что экономисты правы и либо цикл уже начался, либо мы очень близко к его началу\\n\\nСмысл заключается в том, что внутри этого цикла находятся все остальные и на самом деле основной идеей тут является прорывная инновация, новый уровень, то, чего не было раньше, а не ключевая ставка, которая меняется каждый год-два-пять-десять, это неважно\\n\\nКонкретно цикл Кондратьева мой любимый. Почему?\\n\\nОн сглаживает все шумы. Для него ФРС - назойливая муха, которая просто мешает спать, но не может заставить тебя не спать год, ты ее прихлопнешь, верно?\\n\\n\\n\\n\\n\\n\\nИнновации и долгосрочное развитие экономической системы приводят к тому результату, который был заложен первоначально\\n\\nСейчас мы закончим на этом и перейдем к объяснению практического использования циклов, который мы только что изучили\\n\\nСпасибо за уделенное время на прочтение\\n\\nЯ думаю, что отвечая сейчас на вопрос, зачем нам нужны циклы, 99% уже все поняли, так как это вполне очевидно\\n\\nПутем исследования мы понимаем на какой стадии находимся\\n\\nДавайте представим, что мы разбираем цикл Кузнеца и посмотрим его стадии, сравнив с реальным временем\\n\\n","image":"/media/images/theme_19_lesson_30_outline_9.png"},{"text":"Просто прочитайте описание фазы \\"роста\\", ничего не напоминает?\\n\\nУ нас сейчас происходит ровно то же самое. Вы спросите - как так? Ведь циклы были придуманы еще в 20 веке. Ответ прост - они фундаментальны и не меняются\\n\\nУ нас сейчас происходит все 1в1 - растет спрос на рабсилу, новые рабочие места, уменьшается безработица, спрос потребительский увеличивается ( увеличивая инфляцию ), расширение производственных объемов, ВВП на душу растет\\n\\nВы спросите - почему же мы не на стадии \\"пика\\"? Где сказано, что все на максимумах.\\nПотому что мы еще не восстановились от коронавируса и он до сих пор гложет весь мир\\n\\nМы перейдем на стадию пика в тот момент, когда коронавирус будет побежден хотя бы по большей его части и будет повышена ставка рефинансирования от ФРС\\n\\nСравнив наше время с описанием Жюгляра, мы можем понять, что мы на переходном моменте между фазами оживления и роста ( пика, как отдельной фазы просто нет ) или мы на самом начале роста\\n\\nЛадно, вот мы определили, что мы находимся тут или там, дальше что?\\n\\nПредставьте, что мы определили, что мы находимся на фазе спада. Будете закупаться среднесрочными активами? Очевидно. Может будете шортить? Если рынок падает и подтверждает вашу теорию\\n\\nДрузья, тут вариантов миллион и всем есть свое применение\\n\\nКому-то, как мне, просто достаточно понимать, что впереди есть еще год-два, чтобы мы могли порасти, а там уже можно и закрыть позиции, еще раз проанализировав ситуацию\\n\\n\\n\\n\\n\\n\\nЭто последняя тема во всем обучении\\n\\nЯ надеюсь, что вам было полезно для практики и для теории прочитать все то, что я писал примерно 2 месяца\\n\\nБольшое спасибо, что доверились и оказались тут\\n\\nДальше темы будут дополняться, не так часто, но зато очень важные Всем еще раз спасибо!","image":""}]	novyj-urok-5914	t	\N	\N	19	471	17
14	8	dfe7a3b7-6352-43dd-89c2-d8ac486142cb	Инсайдерские сделки	[{"text":"Кто такие инсайдеры и почему их сделки могут быть для нас важны?\\n\\nВ предыдущем курсе по Ф.А. я рассказывал про это, но сейчас я предлагаю более углубленно подойти к этой теме и затронуть многие важные аспекты, которых не было в предыдущий раз\\n\\nИнсайдеры - обычные люди, которые являются директорами компании или занимаюсь высокую должность в ней, а также владельцы крупных пакетов акций ( от 10% )\\n\\nИх сделки - общедоступная информация, которая публикуется на сайте https://finviz.com/insidertrading.ashx ( кликайте )\\n\\nрасными блоками я выделил основные моменты, которые нам нужно видеть\\n\\nСправа в верхнем углу мы можем переключаться с покупок на продажи инсайдеров или выбрать, чтобы видеть все сделки\\n\\nСлева мы видим тикер компании, затем идет имя инсайдера, затем его должность, число покупки, цена покупки за акцию, количество акций в покупке, сумма покупки, сколько всего акций компании у инсайдера и последнее - дата появления уведомления от инсайдера о покупке\\n\\n","image":"/media/images/theme_3_lesson_14_outline_0.png"},{"text":"Почему данная информация может быть для нас полезна?\\n\\nИнсайдеры вызывают интерес у публики, а точнее у инвесторов, которые, как пчелы на мед, скупают акции той компании, где была крупная сделка от сильного инсайдера\\n\\nЧто значит сильный инсайдер? В основном - занимающий высокую должность или является крупным пакетом акций\\n\\nЕсли какой-то директор купит компанию на 10.000 долларов, то это никому неинтересно, слишком маленькая сумма, чтобы двинуть рынок\\n\\nНо, если он же купит компанию на 1.000.000 долларов, то это уже внушает доверие, значит, что он что-то знает и ждет\\n\\nИменно такое мнение бытует среди обычных инвесторов, но разве это не так?\\n\\nОтчасти правда, но мы с вами будем умнее и углубимся в эту тему, чтобы раскрыть все карты\\n\\nВсегда ли покупка на 1.000.000 долларов является сильным триггером для роста и действительно инсайдер что-то да и знает?\\n\\nВовсе нет. Сначала надо проанализировать, что это за инсайдер и может быть - это попросту его зарплата или премия. Очень часто вознаграждения выплачивают в виде премии и чем крупнее компания - тем крупнее они могут быть, что спутает обычных инвесторов в ценности инсайдерской сделки\\n\\nКак это проверить?\\n\\nДля начала надо проверить, продает ли инсайдер эти же акции сразу после их \\"покупки\\"\\n\\nДля этого нам потребуется перейти на сайт https://www.secform4.com/ и вбить в поиске по тикеру\\nнужную компанию, затем найти сделку и проверить инсайдера Приступим!\\nНа FinViz мы увидели покупку неким крупным акционером компании REPX на сумму\\nболее 400.000 долларов\\n\\nПосле этого вводим тикер этой компании в поиске и нажимаем SEARCH","image":"/media/images/theme_3_lesson_14_outline_1.png"},{"text":"Переходим и видим следующую картину - большое количество сделок на покупку ( это плюс ) и бОльшая их часть от 10% владельца акций Libin Alvin Gerald, причем покупает он компанию с цены в 17$ и продолжает это делать и по сей день при цене в 25.97$","image":"/media/images/theme_3_lesson_14_outline_2.png"},{"text":"Нажимаем на его имя и смотрим все его сделки. Каждая из них - REXP, что сразу\\nвызывает внимание, так как : 1) он видит потенциал компании и ближе нас всех находится к ней 2) ни одной продажи за это время 3) это не зарплата/премии, так как он не является работником\\n\\nЗначит инсайдер что-то да знает. Причем, заметьте - суммы увеличиваются с ростом цены\\n","image":"/media/images/theme_3_lesson_14_outline_3.png"},{"text":"Обязательно смотрим в гугле, кто этот человек и\\nчем занимается\\n\\nВ нашем случае - канадский бизнесмен, филантроп, который имеет компанию, занимающуюся услугами по управлению инвестициями, специализацией на домах престарелых, отелях, нефти и газа, недвижимости и финансовых услуг\\n\\nС ним все понятно, интересный бизнесмен, который также занимается инвестициями напрямую, а не косвенно\\n\\nНо что же у нас за компания?","image":"/media/images/theme_3_lesson_14_outline_4.png"},{"text":"Так, так, так, что тут у нас? Нефтегазовая промышленность в энергетическом секторе\\n\\nНаш инсайдер как раз покупает такие и специализируется на них\\n\\nТаким образом, пока мы видим такую картину - некий г-н бизнесмен и филантроп, который имеет свою инвестиционную компанию, покупает акции некой компании REXP, которая находится в нефтегазовой промышленности, а он на таком и специализируется","image":"/media/images/theme_3_lesson_14_outline_5.png"},{"text":"Причем, покупает он не просто один раз, а по нарастанию цены и увеличенными\\nсуммами, таким образом, явно ожидая более высоких котировок\\n\\nДаже не копая глубже, мы можем сделать вывод, что 1% своего портфеля не жалко оставить в этой компании, хотя бы ради интереса, так как большое количество факторов говорит нам о том, что есть вероятность роста, если наш инсайдер не дал сбой\\n\\nНо, учитывая то, что он активно покупает ее с августа и наращивает позиции, он что-то да знает\\n\\nПрошу заметить, до августа 2021 не было от него покупок этой компании, знаете почему?\\n\\nОн представлял, когда нефть начнет дорожать. Как? Его спросите\\n\\nИнсайдеры - дело серьезное и я начал копать по остальным. Остался всего один и он\\nпредставляет собой в переводе \\"поместье Энтони Вандербринк\\", что ни о чем нам не говорит, которое покупает акции с апреля 2021 года и последняя сделка была 17 сентября. Суммы тут покрупнее, но надо как-то разобраться, что это такое Зацепкой будет являться Texel Resources ( см. нижние две сделки )","image":"/media/images/theme_3_lesson_14_outline_6.png"},{"text":"Единственной зацепкой связи первого инсайдера Элвина Либина и этой компании\\nявляется их нахождение в одной стране","image":"/media/images/theme_3_lesson_14_outline_7.png"},{"text":"Аналогичная ситуация и с Поместьем Энтони ВанденБринк\\nБолее ничего интересного по компаниям нет, поэтому вернемся к размышлениям","image":"/media/images/theme_3_lesson_14_outline_8.png"},{"text":"У компании есть 2 инсайдера, которые начали покупать акции примерно в одно время,\\nесли только не брать в учет весенние покупки от второго. Я имею ввиду, что второй возобновил покупки, а первый начал\\n\\nОба находятся в Канаде, совпадение?\\n\\nВторой является дочерней компанией серьезной американской компании Lydall\\n\\nПокупки от первого инсайдера пришли на момент роста нефти - угадал или что-то знал?\\n\\nВ целом, я готов рассматривать компанию дальше по ее мультипликаторам, рентабельности и прочему, так как по инсайдерским покупкам она максимально привлекательна\\n\\nНо как понять, что покупка или продажа инсайдера не окажут значительного\\nвоздействия на акции и на самом деле это просто бонусы за работу или же зарплата?\\n\\nЯ переключился на вкладку на FinViz по продажам от инсайдеров и нашел сделку EXEL Вбил ее на SecForm4 и вижу следующее\\n","image":"/media/images/theme_3_lesson_14_outline_9.png"},{"text":"последняя продажа инсайдером на миллион долларов и должна была сильно столкнуть акции вниз, но...\\n\\nЗахожу и смотрю, какие еще сделки совершал инсайдер. Одни продажи и снизу последние 5 штук, начиная с июня 2021 года\\n\\nЧто странного тут вижу? Количество акций под продажу часто совпадает, но самое главное - я не вижу покупок, но вижу рост количества акций в столбце справа. Откуда они? Значит начисляют за работу. Это не его рациональные покупки","image":"/media/images/theme_3_lesson_14_outline_10.png"},{"text":"Он продавал акции практически каждый раз, когда они отрастали намного выше. Почему так?\\nПотому что ему без разницы. Его продажи не влияли ни на грамм на котировки, так как они были не обоснованы, а являлись обычным выводом такого вида поощерения за работу во всеми любимый кэш:)\\n\\nНо, даже, если бы они не были \\"бонусные\\", а были реальные, то судя по последним сделкам инсайдеру верить не стоит, он не особо понимает в своей же компании","image":"/media/images/theme_3_lesson_14_outline_11.png"},{"text":"аким образом, мы делаем следующие выводы :\\n\\n1)проводим анализ инсайдера\\n2)смотрим, кто этот инсайдер является\\n3)смотрим, откуда у него акции и не бонусные ли они\\n4)пытаемся найти связь между инсайдерами, если компания третьего и второго эшелонов\\n5)проверяем по его предыдущим сделкам, влияли ли они на котировки и был ли он прав по отношению к своей же компании\\n\\nИнсайдерские сделки - очень неплохое дело, но использовать надо с умом и грамотно\\n\\nЕсли вы будете бездумно покупать по каждой сделке и каждую компанию - ничем хорошим это не обернется!\\n","image":""}]	novyj-urok-4836	t	\N	\N	3	150	6
15	9	81b0d2e3-f95f-45c5-b002-4b8eb2b04bcf	Корреляция	[{"text":"Чувствуете, пахнет чем-то интересным? Эта тема является одной из конкретных и практических внутри Ф.А.\\n\\nКорреляция - взаимная связь между друг-другом. Она может быть среди людей, предметов и даже компаний внутри отрасли, о чем мы и будем говорить\\n\\nГлавный интерес, который представляет корреляция - найти расхождение среди движения котировок акций - когда все идут вверх, а 1-2 не реагируют на рост или наоборот\\n\\nПоиск подобных ситуация позволяет нам сделать вывод в пользу запоздалого движения по отставшим от отрасли бумагам\\n\\nКак вы поняли, то в этом и заключается практическая суть корреляции Поэтому, давайте не будем лить воду и перейдем к делу\\nНа примере ниже я привел конкретный пример по корреляции между цены на нефть и одной из крупнейших мировых компаний в нефтяной отрасли","image":"/media/images/theme_3_lesson_15_outline_0.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_1.png"},{"text":"Тут четко видно, что в период с 20 августа по сей день нефть имеет сильный восходящий тренд, но вот ExxonMobil первый месяц показала рост всего лишь на 1.71%, что явно не коррелирует с ростом нефти\\n\\nТаким образом, эта компания являлась отстающей в своей отрасли, но в скором времени начала подгонять котировки и прибавила 16% в цене меньше, чем за месяц\\n\\nНиже привожу пример роста компании из нефтяной отрасли за период с 20 августа по 21 сентября, чтобы показать, что рост был\\n","image":"/media/images/theme_3_lesson_15_outline_2.png"},{"text":"Кто-то из вас скажет, но остальные компании также имели просадку к 21 сентября, где же тут корреляция? Давайте сравним. Рост с 20 августа по 21 сентября в среднем по двум компаниям выше составлял 10-17%, в то время, как у Exxon 1.71%\\n\\nЗатем, за период с 21 сентября по сей день все три компании сделали следующие %","image":"/media/images/theme_3_lesson_15_outline_3.png"},{"text":"Exxon +16.69%\\nOis +25%\\nPBF +53%\\n\\nДавайте измерим соотношение : Ois/Exxon =  1.49, PBF/Exxon = 3.17\\n\\nВ то время, как в период с 20 августа по 21 сентября соотношение было  Ois/Exxon = 6.35%, PBF/Exxon = 10.12\\n\\nВы видите разницу? За два периода корреляция между компаниями уменьшается, так как Exxon начинает догонять своих товарищей по отрасли\\n\\nВ этом нет ничего странного, это стандартная закономерность, когда одна компания, которая имела отставание от своей же отрасли, нагоняет ее в будущем. Ближайшем будущем\\n","image":"/media/images/theme_3_lesson_15_outline_4.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_5.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_6.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_7.png"},{"text":"На примере выше вы можете посмотреть и проанализировать топ 4 компании строительной отрасли США\\n\\nКак вы уже заметили, они все имеют +- одинаковые графики, так как зависят от одних и тех же факторов, что даже отчеты у них +- равные, ведь деньги идут или уходят по одному принципу\\n\\nТакие компании проще всего коррелировать между собой\\n\\n16 июля было для них всех отправной точкой, которая задала тем роста на ближайший месяц, затем снова вниз и снова все вместе\\n\\nНо как же выбрать, какую компанию купить, если они не все ходят друг за другом?\\n\\nЯ называют этот эффект \\"скрытая корреляция\\", но помните, что такого понятия в целом в экономике скорее всего нет, а если и есть, то обозначать будет совсем другое\\n\\nЕсли в первом примере мы с вами имели явную корреляцию, когда крупная компания не шла за рынком нефти, то тут они все идут нога в ногу и что же делать?\\n\\nВыбирайте самую волатильную. Это и будет эффект скрытой корреляции\\n\\nПочему скрытой? Потому что по графику они все идут одинаково, но если присмотреться, то $TMHC сделала в 2 раза больше своих собратьев, когда они сделали по 10-12% роста, она за тот же период 24%, но также сильно и откинулась назад, чтобы график был повторен практически полностью:)\\n","image":"/media/images/theme_3_lesson_15_outline_8.png"},{"text":"\\nРазница в падении также существенная, ведь в сравнении с топ 1 рынка она составляет 2.2 раза!\\n\\nНо, самые внимательные заметили еще один интересный фактор корреляции, который можно будет применять к компаниям строительной отрасли\\n\\nСейчас разберем его дальше!","image":"/media/images/theme_3_lesson_15_outline_9.png"},{"text":"","image":"/media/images/theme_3_lesson_15_outline_10.png"},{"text":"Внимательно присмотритесь к волатильной компании из отрасли строительства.\\nВы видите, что она начинает падать раньше других, а расти позже?\\n\\nЕе пик был 28 апреля, когда у остальных 10 мая, а нижняя граница пришла к 19 июля, когда у остальных 16 числа\\n\\nЕсть ли в этом смысл корреляции? Давайте разберемся Не буду вас томить, решил немного подшутить)\\nТакого рода постоянной корреляции существовать не может, тогда все давно были бы миллиардерами, правильно? Если можно точно понимать, что будет дальше\\n\\nНо есть и реальное действие, которое сейчас покажу\\n","image":""},{"text":"Эта компания действительно ходит за рынком, но с бОльшим разбросом по процентам, что дает нам возможность хорошо зарабатывать\\n\\nПрисмотритесь - падают обе, но как только летит вниз первая, а когда у всего остального рынка происходит разворот, она снова тормозит и дает пару дней для нас, чтобы мы это заметили\\n\\nНижний экстремум у рынка был 27 января, у нее 29 января и затем она ракетой отправилась вверх, как и весь\\nрынок\\n","image":"/media/images/theme_3_lesson_15_outline_12.png"},{"text":"Итоги главы по корреляции :\\n\\n1)Суть заключается в том, чтобы найти компанию, которая не идет за отраслью, а тормозит\\n2)не пытайтесь найти четкие закономерности - потеряете деньги\\n3)выбирайте небольшие компании в отрасли, так как именно такие имеют эффект запаздывания\\n4)корреляция может быть скрытой - когда компания имеет задержку всего в 1-3 дня и повышенную волатильность на взлетах и падениях\\n\\nЭто очень полезная информация в вашей голове, она может пригодиться не только в инвестировании\\n\\nПредлагаю вам перейти дальше!","image":""}]	novyj-urok-6404	t	\N	\N	3	159	8
9	3	f7445178-1ba6-44ba-a3e9-bf5da0c69705	Где смотреть показатели	[{"text":"Вероятно, что у вас будет возможность смотреть его уже на нашей образовательной платформе, но, если еще нет, то милости прошу на https://investing.com/\\n\\n\\nПерейдя на сайт выше ( просто кликните на ссылку ) вы увидите следующую картину","image":"/media/images/theme_3_lesson_9_outline_0.png"},{"text":"Как вы уже понимаете, я выделил стрелочками именно поисковик, куда вам надо нажать.\\nЭто верхняя часть сайта. Сайт на английском и кто не понимает - запоминаем действия или переводим с помощью программ ( гугл имеет встроенный переводчик )\\n\\nВведите любой тикер, любой компании, чтобы продолжить разбираться\\n","image":""},{"text":"После ввода тикера у нас\\nпоявляется список всех компаний, которые подходят под него\\n\\nОчевидно, что нас интересует только первая с биржи NASDAQ и американского происхождения:)\\n\\nПоэтому нажимайте на нее и смотрите дальше","image":"/media/images/theme_3_lesson_9_outline_2.png"},{"text":"Нажав на тикер, вы попадаете на страницу компании и над графиком у вас будет список того, что доступно посмотреть\\n\\nНас интересует только Financials в данный момент. Наведите курсор мыши ( или нажмите пальцем ) на данное слово и затем выбирайте Ratios\\n\\nВторой список появится после наведения курсора, ничего сложного\\n\\nСмотрим дальше","image":"/media/images/theme_3_lesson_9_outline_3.png"},{"text":"У вас перед глазами сразу же\\nпоявится то, с чего мы начали - мультипликаторы\\n\\nВам они покажутся знакомыми и на душе станет тепло, ведь все из них мы прошли и разобрали. Тут нет тех, которые вы не знаете\\n\\nКак вы видите, справа от мультипликатора идет два числа и над ними подпись : 1) Компания 2) Индустрия ( сектор )\\n\\nИменно так мы и сравниваем значение по компании и индустрии\\n","image":"/media/images/theme_3_lesson_9_outline_4.png"},{"text":"Таким образом, пролистав ниже, вы найдете все оставшиеся мультипликаторы\\nи метрики\\n\\nКаждая из них будет иметь сравнение со своей отраслью и это очень удобно, так как не надо больше гуглить подобные моменты или искать на сторонних ресурсах\\n\\nТут все просто, я просто показал, где мы смотрим эти мультипликаторы\\n\\nНадеюсь, что мы добавим то же самое себе на обучающую платформу, чтобы упрощать вам работу в нашем непростом деле!","image":""},{"text":"","image":""}]	novyj-urok-7144	t	\N	\N	3	137	\N
22	0	c98547a3-a042-48f1-8498-a165c276ab94	Психология понимания рынка	[{"text":"Чтобы начать углубляться в себя и в психологию в целом, мы должны понять, как устроен рынок и почему психология в нем играет ключевую роль\\n\\nДля начала вот вам пример - Компания А занимается CRM системами ( если не знаете что это, то гуглите ), в течение 5 лет она росла по показателям и доходности, ее отчеты выходили в рамках ожиданий или выше, показывая положительную динамику роста, но вдруг в 2021 году она заявляет, что понижает ожидания по отчетам на ближайшие 2 квартала. Предположим, что ожидания по выручке были 600 миллионов, а стали 590 миллионов ( что все равно выше предыдущих значений, но ниже прежнего ожидания ), на второй квартал вместо 650 миллионов - 635 миллионов\\n\\nВы держали эту компанию на 1.000$, что является 5% от депозита, что вы сделаете в случае, когда участники рынка прольют ее на 15-20%? Ответьте и смотрите дальше за правильным ответом\\n\\n\\n\\n\\n\\n\\n\\n\\nЕдинственным правильным ответом будет являться - докуплю компанию, менее\\nправильным, но не критичным - ничего не буду делать, пусть лежит\\n\\nПочему мы должны предпринимать такие действия? Потому что фиксировать хорошую компанию в минус это глупо, особенно, если причиной является какое- то понижение выручки на мизерные проценты в течение 2 кварталов\\n\\nНа рынке слишком много дилетантов, которые часто помогают нам заработать, как? Спросите вы! Сейчас отвечу и также приведу пример\\n\\nВернемся на секунду к примеру с CRM компанией, когда ее скинули на 15-20% из-за\\nпонижения отчетов Знаете, как это происходит?\\nГруппа хомяков видит результаты и не намерена держать такую \\"ужасную\\" компанию,\\nтак как они рассчитывали на рост ответов и чтобы они были выше ожиданий\\n\\nКогда они начинают сливать свои акции, остальные видят такое падение и в страхе падения еще ниже также начинают сливать и свои акции, все это образует снежный ком, в котором каждый хомяк продали свои акции, как правило себе в убыток и ждет обвала дальше\\n\\nЧто же происходит дальше?\\n\\n\\n\\n\\n\\n\\n\\nДальше их ждет грусть и разочарование, потому что, как только основная масса\\nдилетантов продаст свои акции этой компании, вес покупателей станет больше и начнется отскок или боковик\\n\\nБольшая часть из хомяков продали свои акции по минимальным ценам, просто из-за того, что они не понимают, а что делать, когда компания падает? Они не понимают, почему она падает, может что-то серьезное? Они не понимают, что такое понижение отчетов и насколько это чревато\\n\\nИз-за своей глупости они теряют деньги, но зачем терять деньги нам?\\n\\n\\n\\n\\nВ психологии инвестирования есть несколько фраз, которые ставят наше\\nбушующее сознание на место :\\n\\n1)Если ты покупаешь, значит кто-то продает, ты знаешь по какой причине он продает? Может он что-то знает?\\n2)Если ты продаешь, значит кто-то покупает, ты знаешь по какой причине он покупает? Может он что-то знает?\\n\\nОбычно на ответы уходят месяцы, но в данном случае он очевидный\\n\\nЕсли я покупаю, а они продают, то они ошибаются в интерпретации новостного фона и неверно оценили ситуацию, если вообще хоть пытались ее оценивать\\n\\n\\n\\n\\n\\n\\n\\nНа самом деле, благодаря тому, что на рынке 90% торгующих хомяки, мы\\nможем зарабатывать намного больше и читать рынок становится куда проще\\n\\nЕсли бы их не было, то мы бы не видели проливов на таких тупых новостях как\\n: инсайдер продал акции, понизились ожидания, отчет вышел хуже на 0.000001% и прочее\\n\\nНадо просто понимать, что, если мы будем двигаться по той же траектории, что и остальные, то мы придем к тому же результату, а на рынке зарабатывает лишь 5%, остальные терпят убытки\\n\\nЕсли говорить более грубым языком, но понятным - у каждого хомяка есть свой\\nкукловод Почему? Все просто\\nЛюди, которые не пытаются разобраться в инвестициях, в психологии и прочем, не\\nтакие как мы с вами, они всегда имеют человека или группу людей, мнение которых им важно\\n\\nУсловно - есть в США огромная толпа людей, которые слушают Крамера, который часто говорит интересные вещи, но часто и пропагандирует некоторые не очень интересные\\n\\nОни его слушают и повторяют действия точь в точь. Но Крамер не дурак, он работает по фундаментальным принципам компаний, он анализирует их также, как и мы с вами, поэтому мы с ним видим одно и тоже и зачастую получаем один вердикт\\n\\nЕсли мы получаем +- один вердикт, то его сила направления толпы поможет нам\\nзаработать деньги, разве не так?\\n\\nВы думаете, что сентябрьская-октябрьская коррекция была естественной? Правда что ли?\\n\\nПочти в один день 3 крупных банка США и инвест дома соответственно заявили, что ожидают коррекцию на 10-20% прямо сейчас и приводят в пример огромную кучу факторов, но я писал про эту коррекцию еще в середине сентября, задолго до их слов\\n\\nПочему так получилось? Потому что мы видим одно и то же. Наша с вами задача читать рынок, \\"читать мысли\\" этих акул, чтобы предпринимать действия заранее до их громких слов\\n\\n\\n\\n\\nЕстественная коррекция была в 2020 году, в 2007 году, в 2001 году, но не в\\nоктябре 2021\\n\\nЕстественность порождает какой-либо фактор извне, а не слова топ менеджера какой-то пресловутой компании\\n\\nСледует понимать, что мы полагаемся только на свое мнение. Мы можем черпать идеи извне, но проверять их и поддавать сомнению каждый раз, когда этого делать не хочется\\n\\nЕсли вы хотите научиться торговать, то это необходимо\\n\\n\\n\\n\\nТак в чем же таится эта психология понимания рынка?\\n\\nОна таится в деталях, словно дьявол, кроется в них и ждет, когда кто-то это заметит\\n\\nМы должны принять тот факт, что толпа управляема. Если кому-то надо будет, то на идеальном рынке при идеальной экономике S&P 500 улетит на 50% вниз. Причины найдут всегда\\n\\nНо мы должны с вами читать рынок, понимать что и как\\n\\nДля этого мы изучаем фундаментальный анализ, технический анализ и графический анализ\\n\\n\\n\\n\\n\\n\\nДавайте разберемся по порядку\\n\\nПочему же спросите вы, если все всегда подстроено, если толпа управляема, мы должны изучать какие-то анализы. Для чего они вообще нужны, если являются неприменимыми, учитывая вышесказанное\\n\\nЯ вам скажу - вы ошибаетесь, как раз анализ и есть тот дьявол в деталях, который поможет нам опережать мысли и действия толпы, чтобы быть в одном из первых вагонов\\n\\nКаким образом фундаментальный анализ поможет нам в торговле, если все равно все действия основаны на психологии\\n\\nВсе просто, следите за четкой цепочкой и вы ответите на свой вопрос\\n\\nЕсли у компании хорошие фундаментальные показатели, положительная динамика отчетов и прочее, то именно на нее будут обращать в первую очередь свое внимание кукловоды, а затем и хомяки\\n\\nИменно ей будут ставить высокие ожидания от \\"топовых\\" инвест домов мира сего Именно эти компании будут в приоритете на покупку, когда придет очередной спад И многое другое\\n\\nПроще говоря, если вы понимаете фундаментальный анализ\\n\\nЕсли вы верно интерпретируете его сигналы, то вы опережаете других игроков, которые обратят свое внимание на эту бумагу чуть позже, когда она будет стоить дороже и дороже\\n\\nКогда ей поднимут консенсус прогнозы или же отчет выйдет намного выше ожиданий и прочее\\n\\nТакже, фундаментальный анализ позволяет нам опережать новости\\n\\nВедь все это новости : положительный отчет ( смотрим динамику ), новый продукт ( смотрим НИОКР ), положительная рентабельность и мультипликаторы ( смотрим фунд.факторы) и многое другое\\n\\nЗачем же нужен технический анализ? Как он нам поможет в торговле\\n\\nСкажу откровенно честно - весь технический анализ построен исключительно на вере людей в те или иные индикаторы ( точнее практически весь, примерно 95% индикаторов )\\n\\nЕсли бы ЕМА 200 не была популярная среди трейдеров и о ее свойствах и силе знали только мы с вами, то никакого бы эффекта не было от слова совсем\\n\\nСила технического индикатора зависит только от того, сколько людей его используют в торговле\\n\\nИменно поэтому ЕМА, Боллинджер и прочее и являются сильными индикаторами, так как они одни из самых популярных\\n\\n\\nКак это происходит\\n\\nМы видим, что компания падает на 30-40-50% внутри своего канала и подходит к его нижней границе\\n\\nЭтот канал существует 10 лет, мы предполагаем, что котировки будут расти после касания линии, верно?\\n\\nПочему они должны расти? С чего вдруг? Потому что 5-10% трейдеров и инвесторов видят этот момент также, как и мы, затем начинают покупать вместе с нами, начиная загонять цену выше и выше, это видят остальные люди, которые не имеют ни малейшего представления про ЕМА и просто покупают акции, загоняя их выше и выше, таким образом и работает Технический анализ, только таким\\n\\nЧто же касательно волнового анализа? Почему он важен?\\n\\nЛогика такая же, как и в техническом анализе, но работает он чуть хуже тех же ЕМА и прочих топовых индикаторов\\n\\nПочему? Потому что его сложнее использовать, это не просто линия, которая является сильно поддержкой, мы еще должны найти фигуры и прочие моменты. То же самое касается и обычных паттернов - голова и плечи и так далее, которые мы уже с вами проходили\\n\\nКак только часть игроков видит сигналы  от волн,  они начинают покупать  или продавать бумагу, тем самым перебивают объемы остальных на покупку или продажу, что заставляет хомяков продавать или покупать вместе с нами\\n\\nИменно таким образом будет расти или падать цена\\n\\n\\n\\n\\nИменно из такого понимания психологии рынка и вытекают все\\nостальные правила, которые мы с вами будем проходить далее\\n\\nМы должны принять, как факт, что на рынке царит психология и эта психология тесно связана с любым видом анализа, будь это ФА или ТА или ВА - никакой разницы\\n\\nПонимание всех видов анализов и их комплексное использование, позволяет нам в большей мере прочитать рынок и представить дальнейшее поведение котировок","image":""}]	novyj-urok-5606	t	\N	\N	18	464	12
20	1	d9033698-9108-406a-9649-a9851e60c700	Поддержка и сопротивление + Паттерны + Поглощение + Хайкен Аши	[{"text":"Поддержка и сопротивление\\n\\nИзучая индикаторы мы уже знаем, что это такое, но их можно строить и самостоятельно. Бывают они двух типов : горизонтальные и вертикальные\\n\\nГоризонтальные встречаются чаще всего у компаний, которые постоянно то падают, то растут, образуя \\"горы\\" на графике\\n\\nДавайте посмотрим на такой пример и определим, где же будут находиться поддержка и сопротивление\\n\\nВзглянем на график QIWI и проанализируем\\n\\nМы видим, что эта компания каждый раз ходит то вверх, то вниз, у нее нет растущего тренда и я бы вообще пропустил такую покупку, но кто-то любит риск-компании с горизонтальной поддержкой\\n\\nМы должны взять на графике верхние и нижние экстремумы и объединить их в сопротивление и поддержку\\n","image":"/media/images/theme_6_lesson_20_outline_0.png"},{"text":"Что мы сделали? Выделили верхние экстремумы и создали блок, который будет\\nявляться сопротивлением, также сделали и с нижними экстремумами, но без актуального, так как мы не знаем как низко падет компания. Если пойдет вверх, то это будет являться поддержкой. Нижний блок в данный момент является сопротивлением, но когда компания пересечет его, он станет поддержкой\\n\\nТут нет ничего сложного, но я предлагаю рассмотреть больше примеров для четкого понимания темы\\n","image":"/media/images/theme_6_lesson_20_outline_1.png"},{"text":"Компания SWBI имеет похожую логику. У нас есть четкий график до резкого взлета,\\nкогда компания ходила по своему горизонтальному каналу и имела поддержку и сопротивление. Потом она улетела вверх и сопротивление верхнее стало ее поддержкой. Затем она пробила его снова вниз и как видите, график стукается об этот блок, как об сопротивление, хотя еще пару месяцев назад отскакивал от него, как от поддержки. Удивительный графический анализ)\\n","image":"/media/images/theme_6_lesson_20_outline_2.png"},{"text":"Перед вами график SPCE, как вы видите, тут все вполне просто - верхние 2 экстремума\\nэто сопротивление, а нижние экстремумы = поддержка\\nВ этой теме нет ничего сложного, мы просто определяем место, где чаще всего были отскоки, это и будет зоной поддержки, а также зоны, где график не пошел дальше - сопротивление\\n\\nАналогичная ситуация будет и дальше, когда мы начнем изучать каналы и строить зоны по поддержке и сопротивлению вертикальные","image":"/media/images/theme_6_lesson_20_outline_3.png"},{"text":"Сразу хочется добавить, что правила те же - чем шире ТФ при построении поддержки\\nили сопротивления, тем она сильнее. Она может сыграть вам на руку и отправить акцию в космос за 1-7 дней и короткая торговля тут вполне уместна\\n\\nПеред вами ниже график, как вы думаете, что на нем видит трейдер?","image":"/media/images/theme_6_lesson_20_outline_4.png"},{"text":"Он видит возможность, как можно \\"выиграть\\"\\n\\nПочему? Посмотрите еще раз на график ниже. Это максимально четкие поддержка и сопротивление, которые в свою очередь создают торговый канал. Он является важной частью графического мира технического анализа\\n\\nКанал восходящий, тренд восходящий, мы находимся на нижней поддержке. Риск 70-75%, потенциальная прибыль на высоте. На 50% от желаемой суммы брать можно, остальную на докуп в случае чего\\n","image":"/media/images/theme_6_lesson_20_outline_5.png"},{"text":"Мы по сути просто видим канал. Четкий канал движения акции. Чем шире ТФ - тем\\nсильнее канал, все также очевидно. Чем сильнее канал - тем меньше шанса оказаться пробитым и с лосем в кармане\\n\\nЯ использую такие каналы постоянно, если анализирую компанию и не представляю торговлю возможной без них. Почему? Потому что они выступают основным принципом логики в ТА, сейчас объясню почему!\\n\\nКанал - движение акции в определенном направлении и ограниченное поддержкой и сопротивлением. Обычно, сильные компании идут прямо по сопротивлению вверх, как у ФБ на скрине выше\\n\\nНо, что мы получаем, когда компания резко вырвалась из торгового канала и полетела вверх? Это о чем-то говорит? Полетела неосознанно, случайно! Без супер важных новостей, просто на ерунде или мировом пампе! Что с ней по вашему будет? Сейчас расскажу на примере Модерны\\n\\nПеред вами торговый канал Модерны, который выполнял свои функции до ее летнего\\nвзлета. После пробития канала, она выросла на 100%. Это объективный рост? Нет.\\nКомпания стала зарабатывать в 2 раза больше или получила очень мощный контракт?\\nНет! Просто увеличилась заболеваемость и многие \\"эксперты\\" выражали свое мнение на счет продолжения локдаунов и прочего. Поэтому люди решили покупать Модерну.\\nЯ в это время ее шортил, начиная с 380 долларов и закрыл со средней около 400 долларов на цене в 285 долларов. Почему же она упала? Сейчас скажу","image":"/media/images/theme_6_lesson_20_outline_6.png"},{"text":"У компании был четкий канал и четкие экстремумы. Если она необоснованно выходит за его\\nпределы, то по условиям Фундаментального анализа должна вернуться к стандартным значениям. Что есть эти значения? Варианта 3 :\\n\\n1)Если до этого компания была совсем мусор, то на нижнюю часть канала к поддержке\\n2)Если компания имеет что-то за собой, как Модерна, то к сопротивлению, которое станет поддержкой для нового тренда и нового канала\\nМожет немного зайти ниже сопротивления, где-то до середины и оттуда начать новый\\nпуть наверх с новыми силами и новым каналом","image":"/media/images/theme_6_lesson_20_outline_7.png"},{"text":"Давайте посмотрим еще на один канал и как бумага ведет себя в нем\\n\\nПеред нами долгосрочный канал Apple. Бумага торгуется в нем с самого своего основания и вероятнее будет торговаться всегда. Сейчас и в 1998 годах у нас были ложные пробои, бумага с огромной долей вероятности вернется в канал, хоть может и походить вокруг да около еще 1-2 года на таком широком фрейме","image":"/media/images/theme_6_lesson_20_outline_8.png"},{"text":"Зачастую происходит следующим образом - растущая сильная компания вырывается\\nиз своего канала и создает новый, более вертикальный и сильный, чтобы развиваться дальше и торговаться уже в другом диапазоне\\n\\nТакое было, допустим, с Apple в 2005 году, когда она пробила сопротивление и оно стало ее поддержкой на недельном фрейме","image":"/media/images/theme_6_lesson_20_outline_9.png"},{"text":"Небольшой урок практики. Взгляните на это и скажите, что вы видите и какое\\nдвижение можете предположить\\n\\nТолько для себя, никто это проверять не будет, дальше я расскажу, что думаю сам и что я тут начертил\\n\\nНе думайте, куда пойдет компания, подумайте какие варианты движения есть. Только по каналам направление не определяют\\n","image":"/media/images/theme_6_lesson_20_outline_10.png"},{"text":"На данном скрине вы могли увидеть два канала и 1 горизонтальную поддержку\\n\\nТаким образом, варианта развития событий три : 1) сразу идем вверх к сопротивлению основного канала 2) стукаемся об доп.канал и идем вверх к сопротивлению основного\\n3)стукаемся об доп.канал, идем вверх к основному, но не можем его пробить и идем вниз к доп каналу. Это будет означать, что компания регрессирует, так как покинула\\nосновной канал и перешла в менее вертикальный","image":"/media/images/theme_6_lesson_20_outline_11.png"},{"text":"Подведем итоги по поддержке и сопротивлению :\\n\\n1)строятся по экстремумам\\n2)бывают горизонтальные и вертикальные\\n3)вертикальные создают каналы\\n4)каналы могут меняться. Если на более вертикальный - компания показала миру свою мощь и перспективы\\n\\n\\nВ них нет ничего сложного. Накладывать можно каждый раз, когда вы анализируете ту или иную компанию. Если она вам понравилась по граф.анализу, то вы можете продолжить ее анализ по всем остальным факторам\\n\\nПредлагаю перейти к поглощениям, не менее интересной теме\\n\\n\\n\\n\\n\\n\\n\\n(4.2) Поглощение\\n\\nЧто такое поглощение? Это элемент графического анализа, который подразумевает полное покрытие зеленой свечой красную или наоборот - красной зеленую. Этот означает сильную смену тренда. Чем выше ТФ - тем сильнее поглощение отразится на компании\\n\\nКак правило, поглощения в лонг сильнее, чем в шорт и продолжаются намного дольше Сейчас рассмотрим, как они выглядят и что стоит ли использовать их на коротком ТФ","image":""},{"text":"Перед вами стандартное поглощение. Как вы\\nвидите, красная свеча своим телом ( основной частью ) перекрыла тело предыдущей зеленой свечи и задала нисходящий тренд, причем мощный, так как перед вами недельный ТФ\\n\\nЕсть несколько типом поглощений и это один из них. Следующий тип подразумевает полное поглощение и даже тени свечи ( хвостика ), но я не считаю, что тут есть какая-то сильная разница и для меня это +- одно и то же, но для понимания давайте рассмотрим","image":"/media/images/theme_6_lesson_20_outline_13.png"},{"text":"Выглядит это следующим образом\\n\\nТо есть свеча следующая перекрывает предыдущую полностью, даже хвостика не оставляет за своими пределами\\n\\nКак вы видите, также задается нисходящий тренд, но все они, как по мне достаточно короткие, рассмотрим восходящее поглощение","image":"/media/images/theme_6_lesson_20_outline_14.png"},{"text":"Перед вами лонговое поглощение, которое использую я. Тело следующей свечи поглотило тело предыдущей, а тень это\\nмусор, который в данном случае меня не интересует\\n\\nКак вы видите это поглощение намного сильнее, чем в шорт, я выделил его цветом и показал прибыль в моменте максимума\\n\\nТакже, есть важное правило у поглощения. Мы заходим в сделку на следующей свече, после которой было поглощение, чтобы точно увидеть, что оно свершилось, а не взять компанию в надежде, что закроется положительно, а в итоге потерять деньги\\n\\nСейчас мы с вами будем проверять правило, что чем больше свечей поглотила одна свеча, тем сильнее будет рост","image":"/media/images/theme_6_lesson_20_outline_15.png"},{"text":"Посмотрите разницу в падении при поглощении 8 свечей и при поглощении одной\\nРазница на лицо и даже говорить тут ничего не надо, все очевидно становится сразу Поэтому переходим к просмотру поглощений на короткий фреймах и их отработку.\\nСейчас обзор велся на недельном фрейме, будем смотреть на 6 месячном","image":"/media/images/theme_6_lesson_20_outline_16.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_17.png"},{"text":"На следующих скринах вы увидите отработку на 6 месячном ТФ, как вам?\\n\\nПо мне - ужас и провокация, я не стану смотреть на такой ТФ и ниже. Минимальный ТФ для просмотра дневной и выше. Лучше недельный и месячный, чтобы видеть, какой тренд будет задаваться в дальнейшем\\n\\nВ ТФ меньше слишком много риска, который ни к чему\\n\\nЕсли вы не хотите торговать более глобальные тренды, то просто не используйте поглощения или используйте их для понимания, куда будет двигаться компания в ближайшее время, чтобы определять направление своих сделок","image":"/media/images/theme_6_lesson_20_outline_18.png"},{"text":"Давайте подведем итоги по теме :\\n\\n1)поглощения бывают полные или только тела свечи\\n2)чем больше свечей противоположенного направление поглощено, тем сильнее будет тренд\\n3)чем выше ТФ - тем сильнее и дольше тренд\\n4)ниже ТФ 1 дня лучше не торговать\\n5)не используйте поглощение отдельно от индикаторного или другого типа анализов\\n6)если торгуете на короткие сроки, поглощения на больших ТФ задают направление ваших сделок\\n\\nДалее мы перейдем к отработке паттернов, также в графическом анализе. Скажу сразу - я дам только те, которые потенциально себя могут отработать, всякие чашки с ручкой ищите в интернете, я ими не пользуюсь, это фактически мусор\\n\\n\\n\\n\\n(4.3) Паттерны\\n\\nПаттерн в техническом анализе означает фигуру, которая строится по графику и имеет некоторое значение, а точнее - показывает, куда пойдет тренд в будущем\\n\\nНа вопрос - как они работают, если это просто рисунки, ответ есть - слишком много людей в них верят, именно поэтому мы будем рассматривать самые популярные и фигуры, а не все подряд\\n\\nЕсли вы сейчас придумаете фигуру и найдете какую-то взаимосвязь в графиком, то шансов на ее реализацию будет минимум, так как сначала надо внушить остальному миру, что она рабочая :)\\n\\n\\n\\n\\n\\n\\n\\nНикаких чаше с ручками, звезд, китов и прочей ерунды, мы пройдем только те, что\\nдействительно имеют вес в мире ТА :\\n\\n1)Двойное дно, тройное дно\\n2)Двойная вершина, тройная вершина\\n3)Голова и плечи, перевернутая голова и плечи\\n4)вымпел\\n5)бриллиант\\n\\nНа каждый из паттернов я приведу двойной пример, чтобы было понимание темы и закрепление в голове, как он выглядит. Приступим!\\n\\nПеред вами пример Двойного дна ( ДД )\\n\\nГрафик начинает падение, затем небольшой откат, затем снова падение и уже восходящий тренд. Мы входим в позицию, когда он пересекает красную линию двойного дня и закрепляется там свечой. Лучше двойной свечой, так увереннее ( если свеча не улетела слишком высоко, в такой случае мы не входим )\\n","image":"/media/images/theme_6_lesson_20_outline_19.png"},{"text":"Аналогичный пример двойного дна,\\nсистема не меняется\\n\\nСначала падение, потом выкуп, потом падение, потом начало тренда восходящего\\n\\nВходим после красной линии. Красную линию берем не з головы. Проводим ее между началом падения и точкой отскока после первого дна, там мы получаем продолжение линии до закрытия фигуры и понимаем, где входить в позицию и ждать закрепления\\n","image":"/media/images/theme_6_lesson_20_outline_20.png"},{"text":"Тройное дно не имеет никаких фактических отличий, кроме дополнительного дна. Мы\\nтакже ждем три похода вниз и пробитие общей линии. Тройное дно встречается 1 к 10 по сравнению с Двойным дном, поэтому его вы редко увидите. Сильнее оно не считается, но как паттерн работает, так как по сути отражает поддержку и тренд","image":"/media/images/theme_6_lesson_20_outline_21.png"},{"text":"Аналогичная ситуация обстоит с двойной и тройной вершинами\\n\\nСейчас я приведу несколько примеров их реализации, как и обещал. Правила те же , только тренд уже задается нисходящий","image":"/media/images/theme_6_lesson_20_outline_22.png"},{"text":"Тройная вершина также имеет достойную отработку, но опять же встречается намного\\nреже\\n\\nНапоминаю, что правила абсолютно те же. Сначала мы дожидаемся полной отработки паттерна и только потом входим в позицию, после пробития трендовой линии","image":"/media/images/theme_6_lesson_20_outline_23.png"},{"text":"Паттерн голова и плечи очень похож на\\nтройную вершину за одним простым исключением - центральная \\"горка\\" намного больше остальных\\n\\nКак вы видите, у нас есть левое плечо, голова посередине и правое плечо\\n\\nЛогика та же, если вы видите этот паттерн, то строите линию между нижней его частью, она будет являться трендовой и затем входите в позицию в шорт в том случае, если она ее пробила вниз, лучше после 1-2 закрепленных свечей\\n","image":"/media/images/theme_6_lesson_20_outline_24.png"},{"text":"Еще один пример отработки ГиП ( голова и плечи )\\n\\nОчень яркий пример на графике $SPCE. Все четко видно и понятно - левое плечо, голова и правое плечо, их соединяет трендовая линия, на моменте пробития мы входим в шорт позицию и зарабатываем деньги :)","image":"/media/images/theme_6_lesson_20_outline_25.png"},{"text":"Аналогичная ситуация с пГиП, просто происходит все в обратную сторону и нужно вставать в лонг-позицию, после закрепления над трендовой линией.\\n\\nВстречаются они одинаково часто, хоть и обычный ГиП будете видеть чаще, но это связано лишь в тем, что он\\nпривычнее\\nОтработка обеих фигур вполне неплохая, поэтому я их и добавил к нам в список\\n","image":"/media/images/theme_6_lesson_20_outline_26.png"},{"text":"Фигура вымпел выглядит следующим образом\\n\\nУ нас есть 2 верхних и 2 нижних экстремума, между ними проводятся линии и получается такой треугольник, где нет горизонтальной нижней или верхней линии, обе вертикальные и +- симметричные относительно центральной линии, если таковую провести\\n\\nЭто один из самых часто встречающихся паттернов и при выходе из вымпела происходит восходящий тренд\\n","image":"/media/images/theme_6_lesson_20_outline_27.png"},{"text":"Он достаточно прост в своем понимании и эффективен, его легко распознать в отличие\\nот предыдущих паттернов, да и встречается он куда чаще Запоминайте его, так как видеть будете постоянно :)\\nЕсть также восходящий и нисходящий треугольники, но их отработка оставляет\\nжелать лучшего, я остался недоволен, как на истории графика, так и в реальной торговле\\n","image":"/media/images/theme_6_lesson_20_outline_28.png"},{"text":"Последняя фигура - бриллиант или алмаз, называйте как угодно. Она представляет\\nсобой ромб, который имеет точки соприкосновения с каждой из стороны и похож на 2 вымпела в разные стороны, которые просто объединены. У него нет четкого выхода, в лонг или в шорт, смотря куда он пойдет\\n\\nЕсли график выходит из бриллианта вниз - значит в шорт, если вверх - значит в лонг В нашем случае на скрине ниже явный шорт. Ждем 2-3 свечи после выхода и заходим","image":"/media/images/theme_6_lesson_20_outline_29.png"},{"text":"Бриллиант не всегда имеет четкую форму, он может быть и подобным, как на скрине\\nниже\\n\\nГлавный признак - обязательное соприкосновение экстремумов на каждой из точек\\n\\nЯ не советую использовать данный индикатор новичкам, так как он может ввести в минус и быть неправильно интерпретирован\\n","image":"/media/images/theme_6_lesson_20_outline_30.png"},{"text":"\\nТаким образом, подведем итоги по паттернам :\\n\\n1)используются только в связках либо для поиска компаний, либо для подтверждения идеи\\n2)четко определяются своими границами\\n3)нельзя додумывать паттерн, иначе это будет стоить вам денег\\n4)паттерн = дополнение, а не основа, не забывайте об этом\\n\\nЗнать паттерны нужно, но не стоит возлагать на них огромные надежды, так как встречаются они не так часто\\n\\nДальше мы изучим с вами свечи Хайкен Аши и будем работать с ними!\\n\\n\\n\\n\\n\\n\\n\\n(4.5) Хайкен Аши\\n\\nХайкен Аши - это трендовые свечи, которые будут помогать нам определять направление движения цены без лишних шумов\\n\\nПерейдем к правилам и потом к сигналам :\\n\\n1)Хайкен Аши не используются с другими трендовыми индикаторами\\n2)Хайкен Аши лучше всего коррелируют с MACD и RSI и в целом стохастиками\\n3)Хайкен Аши не являются обычными свечами и новый максимум может не означать максимум цены в реальности\\n\\nХайкен Аши является сглаживающим индикатором, который по своей сути\\nнапоминает EMA Считается он следующим образом :","image":"/media/images/theme_6_lesson_20_outline_31.png"},{"text":"Эти свечи не похожи на обычные, так как тут и наблюдается эффект сглаживания\\n\\n\\n\\n\\n\\n\\n\\nУ Хайкен Аши есть свои правила пользования, которые мы сейчас пройдем :\\n\\n1)должна отсутствовать нижняя тень при восходящем движении и верхняя при нисходящем. Это будет означать здоровый тренд\\n2)при растущем тренде тело последующей свечи становится больше\\n3)тренд подтверждается на 3 свече одного цвета после начала движения\\n4)\\"доджи\\" сжатие свечи означает конец тренда\\n5)при консолидации идет ряд свечей любого цвета с малым телом, чтобы понять выход из нее - используем боллинджер\\n\\nСложных правил нет, сейчас будем разбирать все это на примерах\\n\\n\\n\\n\\n\\n\\n\\nПункт первый - отсутствие нижних теней на\\nвосходящем тренде\\n\\nАналогичная ситуация и с нисходящий трендом, на нем отсутствуют верхние тени свечей\\n\\nЭто случается в 99.9% случаев и лишь является правилом понимания, а не использования\\n","image":"/media/images/theme_6_lesson_20_outline_32.png"},{"text":"Мы начинаем входить в позицию в том случае, если свечи увеличиваются в своих телах, так как это является фактором расширения и развития тренда\\n\\nЕсли свечи наоборот уменьшаются, то входить в позицию \\"запрещено\\", так как тренд будет только затухать, а не развиваться\\n","image":"/media/images/theme_6_lesson_20_outline_33.png"},{"text":"Мы не входим в позицию, если нет подтверждения третьей свечой, это видно на скрине\\nниже\\n\\nНо вы скажете, вот же есть 1 из 3 примеров тройная свеча, почему не берем?\\n\\nВсе просто - смотрите предыдущий пункт - свечи в этом случае сжимаются, а не расширяются, никакого тренда тут не будет\\n","image":"/media/images/theme_6_lesson_20_outline_34.png"},{"text":"Доджи - это сжатие свечи. Не скажу, что оно особо часто себя отрабатывает, но по\\nкрайней мере дает нам понять, что есть возможность разворота тренда и входить в позицию сейчас лучше не стоит\\n\\nПредлагаю чуть заострить внимание на этом пункте и рассмотреть еще пример\\n","image":"/media/images/theme_6_lesson_20_outline_35.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_36.png"},{"text":"По доджи можно выделить несколько правил :\\n\\n1)смотреть его стоит только после длительного тренда, так как обрубать короткие у него не очень получается\\n2)после него могут быть небольшие заскоки, которые как правило ложны Использовать данный пункт или нет - право ваше\\nЯ не вижу в нем ничего плохого, да и что-то кардинально он не меняет, поэтому при\\nвозможности его появления, надо быть внимательным и учитывать правила\\n\\nСтандартные периоды консолидации, которые ничего нового нам не привносят\\n\\nЕсли честно, я их вообще не использую, они почти не отличаются от обычных свечей и не дают мне никакой практической пользы\\n\\nПоэтому я просто знаю их и понимаю, но боковик и есть боковик, сторону выхода найти они вам не помогут, к сожалению","image":"/media/images/theme_6_lesson_20_outline_37.png"},{"text":"Вот вам четкий и понятный пример, для чего нужны Хайкен Аши\\n\\nЭто свечи для тех, кому надоели шумы, которые только отвлекают от реальной торговли, чем помогают в ней\\n\\nВ целом, если бы не было шумов, то прибыльность сделок была бы в 10 раз выше, но, к сожалению полностью от них не избавиться","image":"/media/images/theme_6_lesson_20_outline_38.png"},{"text":"","image":"/media/images/theme_6_lesson_20_outline_39.png"},{"text":"В целом Хайкен Аши неплохо себя отрабатывают даже в простой связке с MACD, на\\nпримере ниже разобрал ее на короткой дистанции с ТФ 30 минут\\n\\nВполне неплохая отработка, если заходить просто по цвету. Если ждать сильного тренда с увеличением последующей свечи, то вряд ли дождемся нормального","image":"/media/images/theme_6_lesson_20_outline_40.png"},{"text":"Отработка на дневном ТФ оставляет желать лучшего, но тестируя и добавляя связки\\nможет получиться вполне хороший результат\\n\\nЕсли брать сумму сделок и прибыль, то она есть, но небольшая, так как были и минусовые заскоки. Стоит добавить в эту связку RSI или уровни, можно Боллинджер","image":"/media/images/theme_6_lesson_20_outline_41.png"},{"text":"На этом графический анализ подошел к концу, но только в рамках этой\\nглавы, далее мы разберем в отдельной главе \\"волновой анализ\\", который на деле является частью графического, но я решил вывести в отдельный, чтобы ему придали особое значение, так как он таковым и обладает\\n\\nПоэтому предлагаю вам перейти к следующей теме нашего курса и изучить новую тему\\n","image":""}]	novyj-urok-4840	t	\N	\N	6	331	20
23	1	d71b07cd-1639-4206-8e18-0dd8c6519d1a	10 правил	[{"text":"Сейчас мы пройдем с вами те 10 важнейших и основных правил, которые помогут вам принимать верные решения при различных ситуациях на рынке\\n\\nПравил на самом деле намного больше, но на них мы не остановимся и будем разбирать конкретные примеры, чтобы в тот момент, когда ситуация из примера станет явью - не допустить ошибку\\n\\nПриступим!\\n\\n\\n\\n\\n(1)Контролируйте лишь то, что вы способные изменить или удержать\\n\\nВ чем смысл переживать на бумагу, которая упала на 20%, если перед покупкой вы ее проанализировали и на момент падения не произошло никаких коренных фундаментальных перемен?\\n\\nКотировки не зависят от вас и вашего поведения, они - необратимый и непрерывный процесс всех инвесторов, а не именно вас\\n\\nДа, вы тоже имеете долю вклада в рост или падение котировок, но слишком маленькую, чтобы как-то пытаться это изменить\\n\\n\\n\\n\\n\\n\\nПросто поймите, если вы будете переживать за каждую компанию, которая пошла\\nне по вашему прогнозу, то через 10 лет на вашей голове не останется ни одного цветного волоса, вы поседеете полностью\\n\\nНикогда не стоит жертвовать своим здоровьем ради того, что вы даже не в силах контролировать\\n\\nПросто подумайте, насколько бесполезны ваши бесконечные проверки котировок, переживания и прочая ерунда. Вы абсолютно ничего не меняете, а лишь портите свое психическое и моральное состояние, которое прямым образом отражается на\\nвашем здоровье\\n\\nПример такой биржевой деятельности четко проявляется в повседневной жизни\\n\\nВы знаете, что такое обцессивно-компульсивное растройство?\\n\\nКогда человек повторяет одни и те же действия по несколько раз без конкретной цели, а просто так, потому что \\"так надо\\"\\n\\nЭто психическое заболевание, которое мешает жить и портит нервы. Пример простой - по 10 раз проверять утюг и прочее при выходе из квартиры. Человек может по 10 раз проверять закрыта ли дверь, спуститься на улицу и загонит в себя мысль,  что сейчас она открыта или утюг все таки не выключен\\n\\nЧеловек вынужден возвращаться домой, тратить свое время, силы и моральное состояние становится ниже, как и количество нервных клеток\\n\\n\\n\\nНа самом деле, этот пункт я считаю одним из важнейших, так как именно\\nпсихологическое состояние позволяет нам грамотно распоряжаться инвестициями\\n\\nЕсли человек очень вспыльчив, он может запросто продать в панике актив или купить актив, которые не стоит ни продавать, ни покупать\\n\\nВсе это исходит от нашего сердца, которое ошибается в 99% случаев\\n\\nОсновная цель - научиться контролировать это и не переживать за счет инвестиций, так как в этом нет никакого практического смысла. Вы ничего не меняете своим волнением, а только ухудшаете, как я уже говорил ранее\\n\\n(2)Воспринимайте падения рынка как возможность, а не как неудачу\\n\\nПорой это кажется сложным, но это также одна из истин успешного инвестирования\\n\\nВ среднем инвестор каждый год встречает коррекцию на 10%, каждые 2-3 года на 20% и в эти моменты ваш портфель может просесть до таких низов, что страшно представить\\n\\nНо надо понимать, что за черной полосой - две белых полосы, особенно на рынке\\nТакими коррекциями стоит пользоваться, а не пытаться их избегать Вам дают хорошие компании по скидке, а не пытаются отнять ваши деньги\\n\\nПонимаете, если вы хотите всегда видеть только рост, то я вас расстрою - это\\nневозможно\\n\\nЕсли вы не готовы увидеть ваш портфель на -30%, то даже не начинайте инвестировать, так как через такое проходит чуть ли не каждый инвестор и трейдер\\n\\nДа, когда вы уже находитесь на бирже долгое время, то коррекции съедают только ваш плюс, но если вы его еще не наработали, то они съедят все, что у вас\\nесть\\n\\nНо это будет являться поводом к тому, чтобы усреднить свои позиции или докупить новые, которые являются перспективными в ближайшее время\\n\\nПонимаете, рынок растет всегда\\n\\nДаже, если случится какой-либо коллапс, мы отрастем выше точки, которая была до него\\n\\nПоэтому усредняя позиции, вы делаете лучше своему портфелю, а не пытаетесь как-то обмануть себя\\n\\nНо стоит понимать, что к усреднению годятся не все активы. Если вы напокупали RIG, HYLN и прочие компании 3 эшелона и ваш портфель целиком и полностью состоит из них, то вы потерпите такой удар, что вряд ли захотите что- то усреднять\\n\\nНе забывайте про правила диверсификации, чтобы выходить сухим из воды\\n\\n(3)На рынке нет места азарту\\n\\nЕсли вы привыкли делать ставки на спорт и ваша идея заключается в том, что купив 10 компаний, одна из них точно стрельнет - продавайте все акции, закрывайте этот курс и занимайтесь другими вещами\\n\\nХорошие инвестиции - скучные инвестиции, это факт\\n\\nРано или поздно вас настигнет такого уровня неудача, что перекрыть ее станет практически невозможно\\n\\nМожете верить или нет, но в основном деньги зарабатывают инвесторы, а не трейдеры, так как повезло однажды - не факт, что повезет дважды и трижды, вы понимаете о чем я\\n\\nЯ не говорю, что трейдером быть плохо, просто надо понимать, какой вы именно трейдер\\n\\n\\nЕсли вы грамотно подходите к выбору инвестиций на 2-3-4 недели, анализируете\\nкомпании, не входите в мусорные 3 эшелона перед отчетом в надежде на ракету и прочее, то это не есть плохо\\nЯ говорю конкретно про тех,  кто является  прародителем азарта в инвестициях К такому относится : покупка под отчет, покупка под одобрение ФДА, покупка под\\nлюбую другую значимую новость\\n\\nТо есть трейдер покупает компанию наугад и просто надеется, что сейчас ему повезет\\n\\nТакой трейдер не задержится на рынке долго\\n\\n\\n\\n\\n\\n\\n\\nКаждая ваша инвестиция должна быть обоснована\\n\\nДа, вы можете ошибиться и неверно вложиться и также потерять деньги, но вы хотя бы будете знать, где именно была ошибка и не допустите ее дважды\\n\\nА люди, которые просто рассчитывают на удачу, могут даже не стараться задержаться на рынке, их удел мы все прекрасно знаем\\n\\nМы все понимаем, куда это приведет и как больно будет при неудаче\\n\\n(4)Всегда думайте своей головой, а не полагайтесь на чужое мнение\\n\\nОдной из больших проблем 90% инвесторов считается перекладывание ответственности с себя на другого человека\\n\\nМне ли да и не знать об этом. Сколько людей писали мне и проклянали, что они вошли в SPCE по 28, когда я выкладывал свою покупку, а он упал в итоге до 15- 16, где я усреднялся, а они продавали\\n\\nЗатем эта компания принесла 100%+ прибыли, но я все равно был виноват, не они, а я\\n\\nПочему? Потому что так проще принимать поражения\\n\\n\\n\\n\\n\\nТак устроен человек, многие не смогли побороть внутреннего я и всегда во всех своих проблемах обвиняют других\\n\\nЭто начинается от повседневной жизни и переходит в работу, бизнес, а также и инвестирование\\nПоэтому думать всегда надо своей головой, чтобы не винить других Какой бы авторитетный источник информации не был, вам следует\\nперепроверять его на своем собственно анализе, а не пытаться скопировать\\nчужую идею и потом за нее же кого-то обвинять\\n\\n(5)Не сожалейте об упущенной прибыли\\n\\nЭто правило несет в себе глубокий смысл, так как с подобной ситуацией мы встречаемся очень часто\\n\\nМногие из нас вкладываются в компанию \\"А\\" и зафиксировав прибыль в 50%, жалеют через год, что не оставили деньги в ней, так как сейчас было бы 150% прибыли и входят снова, просто в надежде, что рост продолжится\\n\\nЭто ошибка. Инвестирование всегда должно идти с конкретной целью. Если вы хотели заработать 50%, вы их заработали и не думайте об этом больше, никогда не вините себя в том, что компания выросла выше и не пытайтесь входить в нее на хаях, так как об этом говорит не ваш разум, а ваше серцде\\n\\n\\n\\nУпущенная прибыль штука такая, очень интересная так скажем\\nНо она не должна мешать вам смотреть в сторону других компаний Если вы упустили некоторую прибыль, то лучшее решение будет следующим -\\nпересмотрите свои взгляды на инвестиции, так как вероятно, вы являетесь среднесрочным-долгосрочным инвестором и ваше желание забирать большие проценты\\n\\nЕсли вы являетесь  краткосрочным инвестором,  то ощущение потерянной прибыли будет преследовать вас всегда, так как в 80-90% случаев после продажи в 10-20-30% прибыли, компания будет продолжать свой рост\\n\\n(6)Инвестируйте по своим планам\\n\\nПредставьте, что ваша цель купить машину дороже на 1 миллион рублей и сделать это в течение 2 лет\\n\\nВы кладете деньги на брокерский счет, условные 3 миллиона и получается, что вам нужно сделать примерно 33% прибыли, чтобы достигнуть того, о чем вы мечтали\\n\\nТаким образом, стоит ли вам вкладываться в компанию под названием Virgin Galactic?\\n\\nОпределенно нет. Но многие забывают о своих планах и меняют их на ходу, потом жалея и виня себя в том, что отошли от заданного маршрута\\n\\n\\nЕсли вашей целью являлось делать 15% в год, то вы должны были вкладывать деньги в менее волатильные компании и более предсказуемые, где ваши кровные не могут быть заблокированы на большое количество времени\\n\\nРиски есть везде, но нужно правильно их оценивать\\n\\nМожно вложиться в FB в 2018 году и больше года находиться в минусе, но шанс этого был куда ниже, чем покупать SPCE по 60 в феврале и ждать роста до 75-80 прямо сейчас\\n\\nВезде есть своя градация рисков, которую нужно понимать и сопоставлять со своими целями\\n\\nЕсли ваша цель делать 5-10% годовых в долларах, то вкладывайтесь в\\nгигантов США, где высокие дивиденды и стабильный рост на маленькое количество %, все это диверсифицируйте облигациями в $ и живите себе спокойно\\n\\nНо я знаю сотни примеров, когда люди желая видеть такую доходность, становились голодными и боялись упустить возможность и прибыль, поэтому вкладывались в мега-волатильные инструменты, участвовали в IPO и многое другое, чтобы делать не 5-10% годовых, а 50-100%\\n\\nПотом, конечно, жалели, так как не разбирались в инвестициях от слова совсем. Они отошли от своего плана, от своей цели, потерпели неудачу, которая может запросто напрочь отбить все желание инвестировать\\n\\n(7)Никогда не спешите, инвестиции - не уходящий поезд\\n\\nМногие из нас постоянно спешат купить ту или иную компанию, тот или иной актив\\n\\nПо какой причине? В связи с нашим сознанием и воспитанием, у нас есть ощущение, что если это не сделать сейчас, то оно пропадет вовсе или уже будет не так доступно и привлекательно, как было на момент раздумий\\n\\nРешения не должны приниматься хаотично и на эмоциях, а особенно в спешке От наших решений зависит успешность наших инвестиций\\nЕсли вы будете спешить с их выбором, то окажетесь не в лучшем положении\\n\\n\\nЕсли вы видите где-то интересные актив и о нем пишут людей, то начните его\\nизучение, вероятность того, что он уйдет на 10-20-30% выше за несколько дней настолько мала, что о ней можно даже и не беспокоиться\\n\\nСтоит понимать, что каждый актив имеет свои риски, покупая его и не определяя их - вы ставите под удар свои инвестированные деньги\\n\\nМой совет - всегда тратьте время на анализ. Лучше купить компанию на 5% дороже, чем она была, но понимая, что она этого заслуживает, чем купить мусор и потом жалеть об этом\\n\\nПомните - поспешишь, людей насмешишь\\n\\n(8)В этот раз все точно будет по другому\\n\\nТакие слова я слышу из раза в раз от заядлых оптимистов, которые считают, что экономика меняется и в следствие этого меняется и ее цикл, но это не так\\n\\nДа, экономика несомненно меняется и спорить с этим глупо, да я и сам считаю также, но экономические циклы вариативны и их не волнует, что именно сейчас заставляет экономику расти, они лишь отражают следствие этого роста\\n\\nУ циклов есть 4 стадии ( иногда выделяют больше, но это основные ) : рост, пик,\\nспад, депрессия\\n\\nСколько бы вам не твердили, что в этот раз все будет совсем по другому, будет так, как написано в цикле\\n\\nПонимаете, экономика не работает по другому\\n\\nЦиклы не работают по другому, у всего есть одна общая концепция\\n\\nДаже, если вам кажется, что в этот раз не будет никакой стадии спад или депрессии, то в 99.9% случаев вы ошибаетесь. 0.01% мы оставляем на реальное отсутствие депрессии, такое и правда возможно, так как сейчас экономика стала слегка сильнее, чем в нулевых и показывает нереальные скорости восстановления после резких падений\\nНикогда не стоит полагаться на то, что в этот раз все будет по другому Наоборот, примите тот факт, что рынок - отражение экономики, а она циклична.\\nПусть циклы бывают разными, но : рост, пик, спад и депрессия существовали всегда\\nи будут существовать, иначе теряется момент риска\\n\\n\\n\\n(9)Не ловите падающие ножи\\n\\nВ нашей человеческой психологии можно выделить забавный момент, который вы можете заметить и на себе\\n\\nНас больше привлекают те активы, которые менее потенциальны к росту Почему так? Не знаю, я не психолог, но это факт\\nМы любим покупать компании, которые упали на 50%, а не покупать те, которые за это же время показали рост на 50%\\n\\n\\n\\n\\nПо сути данный эффект можно назвать \\"эффект падающих ножей\\" и связан он в\\nосновном с тем, что дешевое нам кажется более привлекательным, чем дорогое\\n\\nЕсли компания упала на 30%, то дальше будет отскок и рост. Почему? Вы задавали себе такой вопрос? У компании мог случиться фундаментальный сдвиг и потенциал пропал на года вперед, но нам все равно кажется, что актив отличный\\n\\nКогда реально потенциально растущие активы нам кажутся не очень, ведь они уже и так выросли\\n\\nНам кажется, что мы должны искать какие-то ракеты, чтобы заработать денег, но это не так\\n\\nЯ полагаю, что в 2016 году многие думали, что падать RIG больше некуда, но какого было их удивление, когда через 5 лет компания упала еще на 75% ( по текущей цене )\\n\\nПочему? Потому что актив-мусор, для чего его покупать? Очередное казино","image":"/media/images/theme_18_lesson_23_outline_0.png"},{"text":"За то же время с 2008 по 2016 года Apple показала рост на 350%, явно казалась\\nинвесторам переоцененной и вообще компания не очень...Она ведь даже не упала на\\nмиллиард процентов, о чем речь?\\n\\nНо, как показало время, с 2016 года она прибавила еще 450% до текущего момента, в то время, как RIG потеряла 75%\\n","image":"/media/images/theme_18_lesson_23_outline_1.png"},{"text":"Понимаете, какие выводы стоит делать?\\n\\nРастущие компании будут продолжать рост с большей вероятностью, чем падающие отрастать обратно\\n\\nДа, вы можете попасть и поймаете сотни процентов прибыли по таким компаниям, как RIG, но в основном вы будете на таком только терять\\n\\nИ сразу же можно вернуться к азарту в инвестициях, подобного рода активы и есть азарт, так как вы отключаете рациональность вашей идеи и включаете лишь желание заработать сотни процентов на \\"реально недооцененной компании\\"\\n\\nЭто ошибка и чем раньше вы это поймете, тем скорее начнете зарабатывать\\n\\n(10)Не стоит полагаться на предыдущие успехи и гарантировать такое же в будущем\\n\\nТакая ошибка также встречается среди инвесторов\\n\\nМы часто думаем, что если компания показала рост на 100% за месяц, то следующий месяц у нее будет ни чуть не хуже, а того и лучше предыдущего!\\n\\nЭто огромное заблуждение, которое приведет ваши инвестиции к полному краху,\\nколлапсу\\n\\nВы должны понимать, что предыдущие результаты никаким образом не влияют на будущие, так устроен рынок\\n\\nДопустим компания FB выросла на 80% за полтора года с 2016 по 2018, но в\\nследующие полтора года она не прибавил ни процента, а того и вообще показывала\\nминус своим держателям\\n\\nОзначает ли это, что компания плохая? Вовсе нет, но это говорит о том, что предыдущий результат не должен влиять на ваш выбор при анализе будущего","image":"/media/images/theme_18_lesson_23_outline_2.png"},{"text":"На этом основные правила подошли к концу\\n\\nДалее мы будем разбирать конкретные примеры, чтобы в моменте вашей торговли, вам было куда проще анализировать ситуацию и принимать верные решения\\n\\nПредлагаю не тянуть и сразу перейти к первому из них, который является достаточно важным и может помочь вам приумножить ваши средства в несколько раз","image":""}]	novyj-urok-1415	t	\N	\N	18	465	13
24	2	c0a9908d-b22d-45f9-b100-aedc2e94ef29	Ждем цену до последнего!(?)	[{"text":"Стоит ли ждать своей цели до малейшего цента или лучше забыть про\\nтакой подход к инвестированию?\\nЭтот вопрос мучает многих уже несколько веков Великие инвесторы писали о нем в своих книгах неоднократно и\\nосновываясь на своем собственном опыте и на словах людей вышестоящих, я делаю некоторые выводы, которыми делюсь с вами\\n\\nДавайте сразу разберем конкретный пример, чтобы вы вообще понимали, о чем речь\\n\\n\\n\\n\\n\\nВы решили купить компанию AMD по цене в 100$ за акцию, цена на данный\\nмомент составляет 102$ за акцию, ваши действия?\\n\\n1)Вы купите, не смотря на 2$ разницы\\n2)Вы не купите, так как желаемая цена покупки на 2$ ниже\\n\\nДанную ситуацию стоит рассматривать с двух сторон : 1) со стороны краткосрочного трейдера, где ответ однозначен - ждать 100$, так как там находится какой-то из важных уровней, а трейдер такого плана не зарабатывает много % и 2$ могут сыграть свою разницу 2) со стороны инвестора, который допустим инвестирует на 1-3 года, а то и дольше\\n\\n\\nДавайте пораскинем мозгами, стоит ли инвестору ждать 100$ или стоит сразу\\nкупить по 102$\\n\\nНе буду вас томить - не стоит ему ждать эти несчастные 100$, так как 2% разницы не являются ключевым моментом при покупке на срок хотя бы от 1 года, когда прибыль считается десятками таких процентов\\n\\nОсновное правило для инвесторов - не быть жадными. Если компания и правда стоящая, то она покажет вам большие проценты и эти 2% не будут даже замечаться на фоне заработанного, а если вы сжадничаете, может случиться ситуация описанная в книге \\"Обыкновенные акции и необыкновенные доходы\\" Филипа Фишера\\n\\n\\n\\nИстория повествуется о двух людях, один из которых является инвестором, а второй финансовым советником\\n\\nОднажды, этот финансовый советник предложил купить акции интересной компании на длительный срок с большими целями, на момент предложения цена была условные 52 доллара за акцию\\n\\nНо инвестор сказал следующее - я не хочу покупать так дорого, я считаю, что акция не должна быть куплена дороже 50.25$\\n\\nТаким образом, он приказал поставить ордер на покупку в том случае, если цена коснется этого значения\\n\\nС одной стороны сумма покупки акций компании данным инвестором была весомой и разница в 4% достаточно большие деньги\\n\\nКогда цена компании пришла в зону 50.50$, что на 25 центов больше, чем хотел купить инвестор, финансовый советник еще раз предложил приобрести пакет акций по заданной цене\\n\\nНо инвестор отказался, так как уже почувствовал себя очень умным аналитиком и по прежнему не собирался платить за акцию этой компании больше, чем назвал изначально\\n\\nКак вы  понимаете,  итог этой истории очевиден Инвестор никогда не дождался цены, которую назначил\\n\\n\\n\\n\\n25 центов жадности не дали заработать инвестору сотни тысяч долларов прибыли, так\\nкак он : 1) посчитал себя самым умным 2) оказался жадиной и не знал основных принципов инвестирования\\n\\n25 центов разницы это меньше 0.5%, согласитесь - смешно?\\n\\nКонечно, смешно! Но разве у вас не было таких ситуаций? Думаю, что были И у меня были, что ж тут греха таить\\nНо главное - понять ошибку и больше ее не допускать, а не пытаться оправдать свои\\nдействия ошибками других, понимаете, как все в психологии связано?\\n\\nЯ принял этот урок, как должное и одной из последних моих сделок, которые это\\nподтверждают - TDOC\\n\\nЯ хотел взять эту компанию на касании S1, но когда она стала подходить к нужной зоне, я взял ее дороже и не дожидался этого бесполезного касания\\n","image":"/media/images/theme_18_lesson_24_outline_0.png"},{"text":"Пусть этот урок и пример из книги Фишера поставят вас на путь истинный, ибо\\nдопускать ошибки связанные с психологией инвестирования является недопустимым\\n\\nПочему?\\n\\nПотому что можно допустить ошибку при анализе, можно не так понять смысл индикаторов или волн, но действовать против логики не является рациональным\\n\\nПоэтому, я советую вам со всей серьезностью относиться к теме психологии инвестирования и пытаться запомнить каждый пример, который был до этого и будет далее\\n","image":""}]	novyj-urok-1603	t	\N	\N	18	466	\N
19	0	fb0e315d-c47c-49a8-a785-9ff8c3e2b04f	Торговля по тренду	[{"text":"\\nЧто же есть эта торговля по тренду? Да все просто.\\n\\nТорговля по тренду - расхождение или схождение графика компании между графиком индекса, в котором она занимает весомую долю\\n\\nЕще раз - компания Tesla с весом более 1.5%  индекса растет, пока индекс S&P 500 падает, о чем это говорит?\\n\\nЧто она сильнее рынка в данный момент и если рынок развернется, то она улетит еще выше, а он всегда разворачивается. В этом нам уже поможет анализ временных зон торговли, что тоже очень интересно:)\\n\\nТема будет длинной, поэтому давайте сначала установим правила :\\n\\n1)Если компания растет, а индекс падает - хорошо и она с отскоком вырастет еще больше\\n2)Если компания растет, а индекс растет - нейтрально, тут все логично\\n3)Если компания падает, а рынок растет - плохо, она слабее рынка и при падении улетит в бездну и там канет\\n4)Если компания падает, а индекс падает - нейтрально\\n\\nЕсть некоторые моменты. Иногда компания в течение дня следует четко за индексом, а потом происходит \\"эффект запоздания\\" в ее котировках, это играет нам на руку. Таким образом, при росте рынка у нас компания будет в боковике и начнет рост через 10-20 минут, также с падением. Но это только, если компания до этого следовала рынку и его движению. Если она просто стоит в боковике, пока рынок растет - отрицательно\\nЕсли она стоит в боковике, пока рынок падает - положительно\\n\\nИсходя из логики торговли трендом, мы берем сильные компании, которые занимают\\nвесомое положение в индексе S&P 500 или NASDAQ, смотря что вы выбрали торговать Я торгую SPX 500 и сейчас покажу четкий пример с Tesla, как она следует рынку\\nСлева - движение рынка за выделенный период и справа - движение Tesla за тот же период\\n","image":"/media/images/theme_6_lesson_19_outline_0.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_1.png"},{"text":"Давайте пойдем по анализу графика\\n\\nПеред вами пример, когда SPX находился в боковике ( скрин слева ), а Tesla шла вниз ( скрин справа ), таким образом, при падении рынка мы должны получить сильное падение по Тесле, а при его откупе, мы должны получить боковик и слабый разворот по нашей компании\\n\\nВ этом случае рынок начал снижаться и сейчас покажу, что из этого вышло","image":"/media/images/theme_6_lesson_19_outline_2.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_3.png"},{"text":"После начала падения SPX 500, Tesla моментально на это отреагировала и сильно\\nпошла вниз. При общем падении индекса на 1.2%, Тесла потеряла с того же времени 2.25%, а за весь день 3.3%\\n\\nТаким образом, я показал вам один из вариантов, когда рынок в боковике, а компания падает, перейдем к следующим","image":"/media/images/theme_6_lesson_19_outline_4.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_5.png"},{"text":"Перед вами пример, когда идет запаздывание реакции компании\\n\\nИндекс показал рост к 17:00, а Тесла в это время была в боковике, таким образом, при падении индекса - она будет лететь вниз\\n\\nНо она оказалась запаздывающей в этот день и пришла к росту в 21:00 и обрела свой пик на 2.3% в 21:50 того же дня\\n","image":"/media/images/theme_6_lesson_19_outline_6.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_7.png"},{"text":"Но индекс снижался все это время и продолжил свое снижение и дальше, таким образом, Тесла\\nотреагировала снова с задержкой, которой можно было воспользоваться и встать в шорт-позицию\\n\\nКак мы видим - слева падение индекса, справа Tesla. Тут находится еще один положительный сигнал, который мы сейчас разберем.\\n\\nРынок падает, а Тесла после падения встала на месте и вошла в небольшой боковик. Что означает сильный откуп в момент разворота рынка на рост\\n","image":"/media/images/theme_6_lesson_19_outline_8.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_9.png"},{"text":"Обычно Tesla растет на 100% сильнее рынка, то есть в два раза\\n\\nА в этот раз почти в 3 раза, то есть на 200% сильнее\\n\\nЧувствуете, как все условия коррелируют друг с другом? Начинаете понимать торговлю по тренду? Надеюсь, что да!\\n\\nТаким образом, откуп Теслы не заставил себя долго ждать\\n","image":"/media/images/theme_6_lesson_19_outline_10.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_11.png"},{"text":"Сейчас мы разобрали с вами следующие варианты :\\n\\n1)Индекс в боковике, а компания падает\\n2)Запоздание компании по отношению к индексу\\n3)Индекс падает, а компания в боковике\\n4)Компания движется за индексом Сейчас мы с вами разберем оставшиеся варианты\\nПриступим?\\n\\nПеред вами пример, когда индекс падает вместе с компанией, но потом компания\\nпоказывает силу и при продолжении падения индекса начинает расти. Такой рост вероятнее всего окажется взрывным\\n\\nПросто посмотрите, за одно и то же время Тесла упала в 7 раз сильнее! Давайте посмотрим, что будет дальше\\n","image":"/media/images/theme_6_lesson_19_outline_12.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_13.png"},{"text":"Но взгляните, что было после\\n\\nКогда рынок продолжил падать и показывал мини-откупы, Тесла летела вверх. На момент падения индекса на 0.42%, в то же время Тесла показала 4.3% прибыли. Что же было, кода индекс развернулся?","image":"/media/images/theme_6_lesson_19_outline_14.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_15.png"},{"text":"Тесла показала рост еще на 2.37%, когда индекс сделал всего 0.86%\\n\\nЗа все время, начиная с момента роста, Тесла показала 6.35% прибыли, а индекс 0.56%.\\nРазницу ощущаете? Разобрали с вами еще один пример, когда рынок падает, а компания растет\\n\\nСейчас разберем ситуацию, когда рынок растет, а компания падает. Что же будет, когда рынок тоже начнет падать?\\n","image":"/media/images/theme_6_lesson_19_outline_16.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_17.png"},{"text":"Взгляните на это - рынок растет, а FB падает. Падает на негативных новостях, но кого\\nэто волнует? За 1 день новости редко меняются, скажу даже так - очень редко!\\n\\nПоэтому, как только рынок начинает показывать разворот вниз, можно брать в шорт и получать прибыль. После этого FB повалился намного быстрее, что являлось важным фактором, так как таким образом он быстрее дойдет до точки, когда индекс снова станет для него путеводной звездой","image":"/media/images/theme_6_lesson_19_outline_18.png"},{"text":"","image":"/media/images/theme_6_lesson_19_outline_19.png"},{"text":"Чтобы понять, как долго может рынок лететь вниз или расти, мы должны\\nвоспользоваться знакомым нам инструментом - Уровнями PIVOT\\n\\nБез них стратегию использовать не стоит, так как вы просто прозеваете выход или вход, таким образом она становится бессмысленной, правильно?\\n\\nНемного правил - лучше торговать движения от S2 до R2. Идеальная проторговка от S2 до P и от R2 до P ( это уже в случае шорта )\\n\\nМожно брать на отскок от уровней S3 и R3 ( в шорт ), если есть знаки поворота. Если нет - ждем, когда прошьет и заходим уже при возвращении и пробитии в нужную нам сторону уровней S3 и R3\\n\\nДавайте пробовать!\\n","image":""},{"text":"На скрине ниже вы видите пример, как\\nнужно было торговать по индексу.\\nСмотрим куда направляется индекс и берем цель на 2 уровня выше или на 2 уровня ниже. В случае на графике слева, мы просто проторговали от зоны P до зоны R2, в случае справа, мы подождали, пока график зайдет наверх за уровень R3 и начнет возвращаться, чтобы мы могли зайти в шорт до уровня R1\\n\\nТут также действует правило закрепления свечей ( их должно быть 3 )\\n\\nНо мы торгуем не индекс, а компании, давайте посмотрим, что было с FB в это же время\\n","image":"/media/images/theme_6_lesson_19_outline_21.png"},{"text":"Это сделки, которые происходили в то же время\\nна графике ФБ\\n\\nПервую сделку мы совершаем просто по той причине, что ФБ находится в индексе и следует за ним. Поэтому при росте - берем в рост, если компания показывает повторения движений графика, как в нашем случае\\n\\nВо втором случае мы уже используем правило, которое изучили в этом уроке - индекс в боковике, а компания падает = компания упадет при развороте рынка вниз\\n\\nСмотрим предыдущий скрин. Индекс начинает падать, ФБ уходит очень низко\\n\\nПрибыль с каждой сделки по 2%\\n","image":"/media/images/theme_6_lesson_19_outline_22.png"},{"text":"Таким образом, мы можем торговать по тренду\\n\\nТакже, здесь можно использовать временной фактор. Есть статистика по времени отскоков и сливов, которую я вам предоставлю в конце всего блока по ТА\\n\\nСейчас давайте подведем итоги по индикаторному анализу Сложно торговать? Вовсе нет!\\nМы изучили важнейшие индикаторы и связки, которыми можно пользоваться, также\\nпоняли, как торговать по тренду\\n\\nВы можете сами составлять свои связки, но и полный список связок вам будет предоставлен в конце этого блока, вместе со временным фактором\\n\\nПредлагаю вам перейти к графическому анализу\\n","image":""}]	novyj-urok-3925	t	\N	\N	6	329	11
10	4	944e653d-a13d-485a-9ea4-0b2492abebfe	Финансовая отчетность	[{"text":"В данном блоке мы будем рассматривать финансовую отчетность с двух сторон 1 - готовая фин. отчетность ( далее просто Ф.О. )\\n2 - определенные моменты из первоначальной Ф.О. на SEC\\n\\nПредисловие - отчетность это очень важная составляющая анализа компании. Из двух интерпретаций выше я больше ориентируюсь на первую. Почему? Потому что из второй мы уже получили все самое необходимое в мультипликаторах, тратить свое время на счет того, что уже посчитано, я не очень хочу\\n\\n\\n\\n\\nГотовая Ф.О. находится на том же сайте, где мы смотрели рентабельность и все\\nмультипликаторы - investing.com\\n\\nКак раньше, мы должны открыть любую компанию, которая нас интересует и нажать на financials, а затем на earnings и получим следующее","image":"/media/images/theme_3_lesson_10_outline_0.png"},{"text":"Я делал поиск по Tesla,\\nсоответственно получил при нажатии диаграмму за последние 4 отчета и последний отчет в цифрах.\\nНа которых я вижу, что Tesla отчиталась лучше, чем от нее того ожидали аналитики и получила 50% сверху к ожиданиям по EPS и +-5% сверху по выручке. Таким образом, понимая, что EPS = прибыль на акцию, мы понимаем и то, что прибыль у TESLA растет, что является важным показателем","image":"/media/images/theme_3_lesson_10_outline_1.png"},{"text":"листнув ниже, мы увидим похожую\\nтаблицу, нажимая постоянно Show More - мы будем получать более старые результаты по отчетам\\n\\nДля чего нам это? Чтобы сделать выводы на счет развития компании за весь промежуток, но желательно за последние 5 лет, так как нам важно понимать, насколько она может быть интересной в будущем и есть ли у нее та самая динамика роста и развития","image":"/media/images/theme_3_lesson_10_outline_2.png"},{"text":"Разберем на конкретном примере, который был на предыдущем слайде, а точнее Tesla\\n\\nМы видим, что в Мае 2016 года выручка составляла 1.15 миллиарда долларов, а прибыли не было совсем, так как EPS отрицательный\\n\\nПочему так могло быть? Есть выручка, но нет прибыли - банальное развитие и расширение компании. Помните, мы говорили с вами про компании, которые являются технологичными или просто стремятся к расширению своего влияния в отрасли, Tesla демонстрировала именно это\\n\\nЧто мы видим дальше. Выручка растет, а в октябре 2019 года появляется стабильная прибыль, которая в основном бьет все ожидания аналитиков, кроме одного отчета. Этот отчет вышел на момент  списания  400.000  машин  из-за  дефекта  мульти-панелей внутри автомобиля ( дисплеи )\\n\\nВ итоге мы приходим к 12 миллиардам выручки и по прогнозам тех же аналитиков через пару кварталов мы увидим почти 15\\n\\nНе могу сказать, будет так или нет, им виднее, я Tesla не держу и не особо анализировал ее финансовые показатели, но если брать исключительно динамику развития - для долгосрока отличная компания, с учетом развития альтернативной энергетики\\n\\nНо Tesla это результат недооцененности до ее взлета по показателям, а не после. Есть же компании, которые не оценены по достоинству и в наше время. Они имеют прекрасные отчеты и динамику, но инвесторы распродают их акции по тупым причинам, за такое надо хвататься\\n\\nОдними из примеров будут мои сделки в августе этого года по LYFT и UBER\\n","image":"/media/images/theme_3_lesson_10_outline_3.png"},{"text":"","image":"/media/images/theme_3_lesson_10_outline_4.png"},{"text":"Перед вами два скрина, где на левом - отчетность LYFT, на втором - график LYFT\\n\\nВ следующем слайде разберемся, почему покупка была потенциально прибыльной\\n\\nУчитывая специфику бизнеса ( в основном такси ), мы должны понимать, что\\nкоронавирус очень сильно ударил по компании и прервал восходящую динамику в отчете на май 2020 года, но далее шло четкое восстановление своих позиций и дальнейшее развитие. За полтора года компания вернула себе прежние показатели и уверенно идет вперед, как танк\\n\\nЧего только стоит одна динамика EPS, да и выручки за последний год-полтора Теперь посмотрите на правый скрин - минус 30% за полтора месяца, а знаете на чем?\\nСуд Калифорнии признал работников компании не партнерами, а именно\\nсотрудниками, за которых нужно платить и страховку и налоги и многое другое, а все это время, как и везде ( у нас в РФ также ) - те же таксисты являются не сотрудниками, а партнерами, которые имеют статус самозанятого и спокойно работают, но это уже совсем другая история\\n\\n\\n\\nТаким образом, мы получаем два фундаментальных фактора : 1) несерьезность новости,\\nтак как по аналитическим данным ( из открытых источников ) на Калифорнию приходится не более 12%  выручки компании, так много, ведь она является одним из крупнейших штатов. Также, была подана апелляция на изменения решения суда под предлогом полного ухода из штата сервиса LYFT и такая же ситуация с UBER\\n2)рост выручки и прибыли компании, положительная динамика и явное расхождение\\nрезультатов\\n\\nЧто я имею ввиду - акции упали на 30%, хотя даже в худшем случае компания потеряет 12%  выручки, может чуть больше\\n\\nИнвесторы переоценили риск и затем последовал выкуп, на котором я заработал хорошие деньги, также, как и те, кто покупал вместе со мной\\n\\n\\n\\n\\n\\nДанный тип анализа мы будем проходить немного позже, пока я лишь рассказал про его структуру\\n\\nВедь здесь также есть доля Технического Анализа, которую пока что я не посчитал нужным раскрывать\\n\\nЕсли брать вкратце : 1) новость не соответствует падению 2) положительная динамика роста и развития компании = возврат вверх до адекватного уровня\\n\\nДальше я хочу показать вам пример компании-реверсивной схемы, когда все падает, а котировки растут и то, к чему это приводит\\n","image":""},{"text":"Внимательно смотрим на график и\\nпытаемся проанализировать ситуацию\\n\\nКомпания GTHX - фарма, но никто не отменял значимости отчетов\\n\\nВидите, как резко взлетает до февраля на очень сильном отчете и новости о подтверждении их препарата от FDA, но что дальше? Негатив со стороны инвесторов, можно даже не разбираться чем он вызван ( в нашем случае, так как мы просто проводим корреляцию ), просто взглянем на график и отчетности\\n\\nИ самый интересный момент - все было правильно, отчетности падают - компания летит вниз\\n","image":"/media/images/theme_3_lesson_10_outline_6.png"},{"text":"","image":"/media/images/theme_3_lesson_10_outline_7.png"},{"text":"Но вот - 5 мая и отчетность в очередной раз ухудшается, а компания не падает, а растет\\n\\nЧто я имею ввиду под словами ухудшается : 1) ДИНАМИКА, только она имеет вес.\\nАналитики могут занижать и завышать ожидания по отчетам, а динамику не проведешь. Выручка падает - прибыль стоит на месте, а в тенденции только падает 2) Посмотрите на EPS, ожидания по нему катятся вниз, а инвесторы этому радуются\\n\\nЧто мы получаем в итоге?\\n\\nПосмотрите на график и все поймете\\n\\nПричин тут масса, конечно же, не только отчеты, но они играют большую роль.\\nЗамечая динамику и тенденцию развития компании, мы можем делать выводы на счет реальной ее стоимости и рисков. Стоит ли покупать компанию на ожиданиях по FDA, когда она без этого ничего не представляет? Стоит ли покупать компанию, которая имеет нисходящую тенденцию развития, стоит ли покупать компанию, которая решила пойти против фундаментальных факторов? Решать только вам, но я не стану\\n\\n\\n\\n\\nНо обязана ли расти компания, которая имеет стабильное развитие и рост\\nприбыли/выручки? - Нет, это лишь один из факторов, который помогает нам понять, что ее оценивают не по достоинству и упускают нужные факторы\\n\\nОценка компании по ее финансовым отчетам = добавочный пункт к общему анализу, но не самостоятельная единица полной оценки\\n\\nВ целом, в ФА и ТА нет самостоятельных единиц, посмотреть на которые вы скажете - тут 100%  надо брать в лонг/шорт\\n\\nНадо анализировать компании комплексно, а мы с вами по этому еще пройдемся и не раз\\n","image":""}]	novyj-urok-6197	t	\N	\N	3	119	\N
25	3	6a2c6dea-daca-4948-b456-fb19582b9362	Переиграть рынок	[{"text":"Кажется, как можно переиграть рынок? Что значит \\"переиграть рынок\\"?\\n\\nВсе просто. Это выражение подразумевает чрезмерную веру в свой анализ и свои предположения, даже если она основана на реальных фактах, не стоит возводить ее в абсолют, так как вероятность, что она ошибочна, имеется\\n\\nДавайте разберем конкретный пример, который касается данной темы и вы сразу можете узнать в нем себя\\n\\nМногие насладились примером из фильма, где группа инвесторов переиграла рынок и\\nпредсказала его падение в 2007 году Фильм носит название \\"игра на понижение\\"\\nНо мало кто помнит или знает, что прежде, чем персонажи из фильма ( и реальные\\nлюди, которых играют актеры ) забрали огромную прибыль, они сидели в таких минусах, что едва ли кто-то из нас смог бы это переждать\\n\\nУ них была идея, которая основывалась на фактах, они заработали на своей идее, но я думаю, что не только они это заметили\\n\\nЧто я имею ввиду? В истории говорится о нескольких группах людей, которые сделали в 2007 году состояние, но сколько было таких же людей, которые не выдержали минуса и не смогли вписать свое имя в историю фондового рынка?\\n\\nВы даже не представляете сколько таких персонажей, мы о них просто не знаем\\n\\nИстория всегда дает нам знания только о тех, кто \\"победил\\", но о проигравших ни слуху, ни духу\\n\\nМало того, что их идея могла быть ошибочной, так надо было еще переждать колоссальные убытки, вы бы смогли? Только честно\\nЯ думаю, что только 0.0001% из всех, кто это читает, смогли бы это переждать Идея этой главы заключается не в том, что вам не нужно изучать рынок и его\\nструктуру, не в том, что не нужно пытаться найти дивергенции в общем поведении и поведении рынка, а в том, что прежде, чем принять важное решение, вам стоит 10 раз подумать, а правильно ли вы все рассчитали?\\n\\nПосле истории 2007 года миллионы инвесторов пытались предсказать\\nпадение рынка и вставали в шорты индексов и прочего, но сколько из них заработали?\\n\\nв 2015, 2018 годах ожидая такой же провал, как в 2007, люди теряли миллионы и миллиарды долларов, просто пытаясь повторить успех коллег из прошлого\\n\\nКак итог я скажу следующее - развивайтесь и пытайтесь находить дивергенции, но будьте аккуратны со своими выводами, фондовый рынок не любит выскочек и будет до последнего вздоха пытаться вас потопить\\n","image":""}]	novyj-urok-4686	t	\N	\N	18	467	\N
26	4	ac938fb0-5f0b-4ece-8591-699581a4bd56	Кто главный враг?	[{"text":" Единственный ваш враг - вы сами\\n\\nЭто выражение носит в себе глубокий смысл, который нужно раскрыть и понять на конкретных примерах, чтобы находиться в контакте с самим собой и понимать, когда за вас говорят эмоции, а когда разум\\n\\nДавайте сразу перейдем к примерам, чтобы не заниматься пустой\\nболтовней\\n\\n\\nПредставьте, что вы взяли компанию FB в 2017 году в расчете на рост, что вполне\\nлогично\\n\\nПосле чего вы получили прибыль в 50%, но поскольку ваша позиция долгосрочная, вы не продаете и держите дальше с условной целью 500%\\n\\nНо вот в 2018 году случается обвал, который делает из вашей прибыльной позиции\\n-10%\\n\\nПредставьте ситуацию, что у вас в ней 1 миллион долларов и вместо прибыли 500 тысяч вы видите минус 100 тысяч\\n\\nУжасные новости произносятся из каждого утюга и что вам остается делать?\\n\\nВарианта всего 3 : 1) продать в минус 2) оставить, как есть 3) докупить\\n\\nРаскрыть секрет? Примерно 70-75% людей выберут первый вариант, около 20% второй и только меньшая часть третий\\n\\nПочему так? Это наша психология, наше человеческое...\\n\\nНам трудно смотреть на неудачи, мы начинаем вникать в каждое слово, которое слышим везде, где только можно\\n\\nЕсли какой-то хрен с горы скажет вам в такой ситуации, что стоит продать, так как мы пойдем еще ниже и там купить заново, то с вероятностью 80% вы так и сделаете.\\nПочему? Потому что вы потеряны, вы не знаете, как поступить, у вас впервые такая ситуация\\n\\nИ представьте себе, вообще неважно, анализировали вы компанию перед\\nпокупкой или нет, вы не будете верить в ее дальнейший рост и будете думать только о плохом\\n\\nПочему так происходит? Я не знаю, не являюсь психологом, но я знаю одно и очень точно, в такие моменты надо найти контакт с собой и понять, что вы хотели получить и какова вероятность, что ваши цели все еще реальны\\n\\nДля начала, когда у вас произойдет такая ситуация, я советую вам отсечь советников, которые будут болтать отовсюду, только бы что-то сказать\\n\\n99% из них даже не держат никакой позиции по вашей компании и слушать\\nих говор бестолку\\n\\n\\n\\nПлан действий должен быть такой :\\n\\n1)Понять, стала ли компания хуже, если нет ( что вероятнее всего так ), то зачем ее продавать?\\n\\n2)Падал ли фондовый рынок бесконечно вниз, если нет - чего бояться?\\n\\n3)В этой позиции ваши последние деньги на существование? Если нет, то почему не подождать? Если да - вы допустили катастрофическую ошибку\\n\\n4)Есть ли у вас деньги на усреднение? Если да, то почему не купить хорошую компанию по скидке? Если нет, то почему их нет? Ошибка инвестирования\\n\\n\\n\\nНа момент такой ситуации вам следует отключить эмоции и поддаться только\\nразумному мышлению\\n\\nНе стоит думать, что это конец для всего, что вам так не повезло и больше шансов нет\\n\\nЕсли бы человек и искусственный интеллект торговали одни и те же бумаги, то второй заработал бы в 100 раз больше, так как не обладает эмоциями и не стал бы поддаваться панике в те моменты, когда она совсем не нужна\\n\\nВ целом, на фондовом рынке вы должны думать головой, а не сердцем, иначе можете сделать себе хуже\\n\\nКак и было сказано в самом начале - \\"единственный ваш враг - это вы сами\\"\\n\\n\\n\\n\\n\\n\\n\\nЕсли вы хотите, чтобы ваша торговля была успешной, то вы должны\\nпридерживаться собственного плана, иначе для чего он нужен?\\n\\nЕсли вы хотели сделать на FB 500% прибыли - делайте, почему ваше сердце должно помешать?\\nНе стоит делать из себя врага, лучше быть другом и товарищем Всегда полагайтесь на факты, а не эмоции, иначе рано или поздно вы\\nпотеряете столько денег, что это отобьет у вас всякое желание инвестировать","image":""}]	novyj-urok-9365	t	\N	\N	18	468	14
11	5	4fd56841-a6a7-40f2-8330-eae0ed900406	Данные из отчетов	[{"text":"Данные этой главы будут сильно разниться с предыдущей, кто бы что не подумал, так как схожи только названия\\n\\nСейчас мы не будем смотреть прибыль и выручку, а посмотрим, откуда появляются по ним данные и что еще там можно найти ( также, данные по всем мультипликаторам )\\n\\nДанный источник носит именитое название SEC - https://www.sec.gov/\\n\\n\\n\\n\\n\\nПерейдя на него, мы попадем на что-то непонятное, но на самом деле,\\nнас интересует только окошечко для поиска в верхнем правом углу\\n\\nКуда мы должны ввести интересующий нас тикер любой компании с американской биржи, а затем нажать на него\\n\\nСмотрите пример ниже","image":"/media/images/theme_3_lesson_11_outline_0.png"},{"text":"Нажав на название компании, нас перекидывает на новую страницу, где мы уже имеем\\nвыбор с плане отчетов. Их есть несколько видов : 1) 10-Q и 10-K - квартальный и годовой отчеты. Они показывают нам все цифры, которые произвела компания за это время, а также риски, судебные дела и многое другое 2) 8-K - отчет, который может выйти в любое время и несет в себе \\"экстренную\\" информацию, чтобы предупредить инвесторов, допустим, о смене руководства","image":"/media/images/theme_3_lesson_11_outline_1.png"},{"text":"Допустим, нас интересует последний квартальный отчет у Tesla - 10-Q\\n\\nОн самый верхний от 27 июля, нажимаем на него и переходим уже на страницу самого отчета, сейчас я покажу, как удобнее их читать при всем своем желании!","image":"/media/images/theme_3_lesson_11_outline_2.png"},{"text":"Листаем немного ниже и находим оглавление, где расписаны все темы, касающиеся\\nэтой компании. Можете включить перевод и без проблем все поймете\\n\\nРаскрою секрет - первая часть до item 4 в основном служит для собирания информации для мультипликаторов ( в основном )\\n\\nПоэтому, если вы хотите узнать о компании что-то интересное, посмотрите вторую","image":"/media/images/theme_3_lesson_11_outline_3.png"},{"text":"Например, правовые разбирательства. Скажу честно - редко что-то тут встретишь, но\\nиогда находишь такие вещи, от которых волосы встают дыбом и ты думаешь - почему об этом никто не пишет, это никто не знает?\\n\\nУ Tesla нет серьезных разбирательств, но как вы знаете, суды очень сильно могут влиять на котировки, как в моменте, так и на длительной дистанции, если судятся за что-то серьезное. Поэтому зайти и прочитать небольшой текст не будет сложным перед покупкой очередной компании","image":"/media/images/theme_3_lesson_11_outline_4.png"},{"text":"Также, есть риски, которые описываются сразу же в следующей главе\\n\\nВ предыдущем своем обучении по Ф.А. я придавал им значение, но сейчас даже не читаю\\n\\nСпустя много времени я понял, что в основном эти риски одинаковые и никто не будет писать реальную угрозу, пока она не произойдет, ты должен найти и обнародовать ее сам\\n\\nВ основном там пишется \\"нытье\\" о том, что \\"вот, мы не знаем, будет ли популярным Tesla через 5 лет, принимайте риски\\" или \\"мы не знаем, дадут ли нам штраф за экологические нарушения на заводах\\" и прочие клише, которые пишет каждая компания\\n\\n\\n\\n\\n\\nЕсть достаточно интересный пункт, который я показываю вам ниже\\n\\nВ чем можно увидеть, что компания делает вбросы акций, то есть увеличивает их количество, тем самым размывая долю каждого из акционеров и проводя к сокращению котировок\\n\\nБудьте внимательны к этому пункту, если торгуете в краткосрок, если смотрите только в перспективу - он вам не нужен\\n\\n","image":"/media/images/theme_3_lesson_11_outline_5_ah9boHQ.png"},{"text":"Отчетность формы 8-К\\nОтчетность 8-K - это такой тип отчетности, который предоставляет нам срочные \\"новости\\", а точнее перемены в компании\\n\\nЭтот отчет публикуется в любой день, не бывает квартальным или годовым. Что-то происходит - выкладывают\\n\\nОбычно это назначение нового человека на должность и увольнение старого или его понижение\\n\\nУметь читать такие отчеты не надо. Как только он выходит - вы его увидите и узнаете в чем дело\\n\\nИсходя из изложенной новости, мы будем делать определенные выводы\\n\\nДля примера взята компания $VLDR\\nОтчетность формы 8-К находится прямо над 10-Q/K\\nНажимая мы видим, что только за лето и первые 9 дней осени мы получили 5 важных уведомлений от компании, давайте посмотрим, что в них","image":"/media/images/theme_3_lesson_11_outline_6.png"},{"text":"Мы сразу видим важную новость, что идет разбирательство против бывшего директора, который украл и использовал 300.000 данных компании в своих целях. Суд говорит, что он на стороне VLDR, если специалист признает реальное использование украденных материалов на Электронных носителях вора ( Дэвида Холла )\\n\\nЯвляется ли данная информация важной? Разбираемся дальше!","image":"/media/images/theme_3_lesson_11_outline_7.png"},{"text":"Первое, что можно вынести из данной новости - компания могла потерять на\\nнегативе от такого воровства. Потерять котировки имею ввиду, упасть в цене, так как инвесторы расценили такой случай, как слабую защиту систем и распространение огромной базы информации ( это я так думаю )\\n\\nНо, если посмотреть в будущее, то суд будет выигран, если VLDR не пытались оклеветать бывшего директора ( вряд ли ), а выигранное дело всегда дает позитив\\n\\nПокупать компанию на день суда, конечно же, дело неблагодарное, поэтому такую информацию лучше оставить у себя в голове и использовать при\\nдальнейшем анализе\\n\\nВ одном из следующих отчетов мы встречаем увольнения и назначения на важные\\nдолжности с подробным описанием нового директора, чтобы мы понимали, кто это и на что способен. Так как смена руководства всегда является важной информацией","image":"/media/images/theme_3_lesson_11_outline_8.png"},{"text":"Таким образом, мы можем посмотреть все реальные цифры, которые уже потом преобразуются в мультипликаторы. Можем также их и посчитать при большом желании. Можем посмотреть, что же нам говорит компания, о чем таком срочном хочет предупредить и многое другое\\n\\nИз важного : 1) можем посмотреть судопроизводственные моменты 2) можем посмотреть размытие доли держателей акций 3) можем узнать о резких переменах\\n\\nОтчетности важная штука, но большая их часть интерпретируется через мультипликаторы в 100 раз удобней, чем напрямую через каждый показатель\\n\\nВы можете делать так, как вам удобно, это лишь моя рекомендация к использованию определенного ресурса\\n","image":""}]	novyj-urok-7742	t	\N	\N	3	127	5
12	6	9dbfe9d8-23b1-40c8-88d2-8d38adee996f	НИОКР	[{"text":"ИОКР - Научно-исследовательские и опытно-конструкторские работы\\n\\nВ прошлом курсе по Ф.О. я не уделил должного внимания этой теме, прошло время и я понял, что ошибался. Я придавал ей значение средней или слабой важности, но сейчас я переквалифицирую ее в высокую\\n\\nПочему? Потому что в условиях нынешней реалии они слишком важны. Сейчас на коне находится та компания, которая дает инвестору надежду на будущее, а не живет настоящим. Именно НИОКР и будет отражать реальную действительность и динамику компании в этом направлении\\n\\nПредлагаю сначала немного разобраться, в чем же суть данного показателя\\n\\nОна состоит в следующем - чем больше траты НИОКР у компании, тем больше средств уходит на новые разработки : лекарства, технологии, новые продукты и прочее\\n\\nЧем \\"прогрессивнее\\" будет продукт и чем инновационнее, тем активнее пользователь будет его приобретать\\n\\nМы живет в век технологий, когда бумажные книги заменяются электронными носителями, а бензин - электричеством\\n\\nТаким образом, новые продукты становятся также приближеннее к желанию пользователя\\n\\nПоэтому смотреть НИОКР компании является очень важной составляющей Ф.А.\\n\\nГде вообще его смотреть?\\n\\nКонкретно траты на НИОКР мы будем смотреть в отчетности компании ( из предыдущего урока )\\n\\nТам же мы будем сравнивать траты по сравнению с периодами предыдущего года и анализировать, понимает ли компания, что пора развиваться или нет\\n\\nНо это еще не все. Мы проверим, а что же такого она изобрела и на что были потрачены эти деньги в реальности\\n\\nПредлагаю перейти к технологической компании Apple, которая последнее десятилетие фигурально являлась одной из передовых в данном направлении\\n\\n\\nДействия аналогичные :\\n1)заходим на gov.sec\\n2)вводим название/тикер компании в поиск\\n3)нажимаем на последний отчет 10-Q\\n4)ищем оглавление и жмем на первую строчку","image":"/media/images/theme_3_lesson_12_outline_0.png"},{"text":"Листаем чуть ниже и находим следующее - операционные расходы \\"исследования и разработки\\"\\n\\nСправа есть значения в сравнениях с периодами предыдущего года\\n\\nВ нашем случае компания Apple потратила на НИОКР за 3 месяца на 20.1% больше, чем годом ранее\\n","image":"/media/images/theme_3_lesson_12_outline_1.png"},{"text":"Если рассматривать те же данные, то мы увидим интересный фактор, который также\\nможно применять в своем Ф.А.\\n\\nОбъем чистых продаж, по сути это и есть выручка. Таким образом, мы можем посчитать НИОКР к выручке и получим, что Apple потратила 7.02% на НИОКР от выручки, что является очень неплохим показателем. Но опять же, все познается в сравнении\\n","image":"/media/images/theme_3_lesson_12_outline_2.png"},{"text":"Перед вами располагается компания FaceBook, давайте сравним расходы на НИОКР с\\nApple\\n\\nДоход компании 29.077, а расход на исследования и разработки 6.096, таким образом имеем формулу ( исследования и разработки/выручка ) * 100 = 21%\\nЭто соотношение явно бьет Apple, еще можно сравнить с маркетингом и продажами, расход на которые около 11%\\n\\nПредставляете, какое щедрое у FB руководство? Компания смотрит в будущее, она понимает, что на рынке победит лишь тот, кто даст пользователю лучшие условия","image":"/media/images/theme_3_lesson_12_outline_3.png"},{"text":"Иногда показатель НИОКР важнее всех остальных вместе взятых\\n\\nЕсли компания не имеет прибыли, а всю свою выручку ( условно ) направляет на разработки и исследования, то : 1) она может прогореть с минимальным шансом, если все пойдет не по плану 2) с большим шансом в перспективе добьется именно тех высот, о которых так грезила\\n\\nИ поверьте, это не звучит банально, это жизнь и так все и происходит\\n\\nЕсли вы жадничаете, не хотите отдавать свои кровные за свою же идею, то может идея и не такая уж хорошая? Может вы в нее не так уж и верите?\\n\\nПоймите, это вселенское правило - чем больше отдаешь, тем больше получаешь, также работает и с НИОКР. Эти разработки помогают пользователям в выборе продукта определенной компании\\n\\nКак пример - взгляните на одну из моих любимых компаний SalesForce ( CRM )\\n\\nОна занимается CRM системами, что является очень перспективной темой в будущем.\\nВпервые я взял ее в декабре 2020 года и долго ждал хотя бы плюса, а не минуса.\\nСейчас я имею 35% плюса по позиции в долларах и доволен, но держу дальше, так как я вижу, как сильно они стремятся к развитию и шанс на победу в моей сделке намного выше, чем, если бы они не развивались","image":"/media/images/theme_3_lesson_12_outline_4.png"},{"text":"авайте просто посчитаем наш показатель - ( исследования и разработки/выручку ) *\\n100 = 16% ( отличный показатель )\\n\\nНо прошу учесть и затраты на маркетинг и продажи, который составляет 43%. Вы можете себе такое представить?\\n\\nСуммарно оба показателя дают 59% от выручки. Все эти деньги уходят в развитие компании, в разработки и маркетинг, понимаете?\\n\\nВот так сильно компания хочет стать лидером, вот так сильно они не допускают конкурентов ( Oracle, Google ) на первое место, поэтому я в них и вкладываюсь\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nЯ думаю, что вы поняли всю важность этого показателя и впредь будете смотреть на\\nнего и возможно, анализировать, отталкиваясь от его значения\\n\\nЯ не знаю, есть ли такая формула в реальности, где мы ищем % НИОКР в выручке, но стандартное значение должно быть около 10%, а также смотрите по отрасли среди конкурентов, это еще важнее\\n\\nДальше, мы будем с вами проходить тему, которая имеет косвенное отношение конкретно к Ф.А, но она очень важна, для понимания рынка","image":""}]	novyj-urok-2450	t	\N	\N	3	135	\N
27	5	a18cabfd-88e6-4218-b4fe-e64f3d457be0	Последние правила	[{"text":"Всегда понимайте, что плохое, как и хорошее - рано или поздно заканчивается\\n\\nЕсть одна интересная картинка, которая иллюстрирует данное правило","image":"/media/images/theme_18_lesson_27_outline_0.png"},{"text":"Конечно же, пример выше описывает не просто это правило, но и психологию\\nинвестирования в целом, что на самом деле упрощает мне работу\\n\\nПредлагаю сначала разобрать его, а потом косвенно перейдем к основной теме, вытекающей из будущего изложения мысли\\n\\nВзгляните на картинку еще раз, не напоминает ничего? 19 шагов, которые сделают вас бедными, можно назвать это даже так\\n\\nКогда мы видим рост, который продолжается определенное количество времени, нам сложно войти в позицию морально, так как, как я вам и говорил - нас больше привлекают активы, которые падают, а не растут, в них мы видим меньше опасности обвала\\n\\nМы можем ждать коррекций, чтобы войти подешевле, это основная ошибка инвестора.\\nПочему? Потому что он ждет коррекции без оснований на нее\\n\\nПовторяюсь - если вы проанализировали ситуацию на рынке и сделали выводы, что коррекция может начаться очень скоро, то входить в позиции и правда нет смысла, но если вы просто так для себя решили, что коррекция начнется, потому что компания уже выросла на большое количество процентов, то это дилетантский подход, простите за грубость\\nНо мы собрались, чтобы этот дилетантский подход искоренить, а не развить Таким образом, ожидая коррекцию, которая не придет, мы понимаем, что ошиблись и\\nвходим в позицию, дабы залететь в последний вагон\\n\\nЗнакомо такое выражение? Так вот на фондовом рынке оно встречается повсеместно\\n\\nПоверьте мне, сколько же людей за последний год написали мне с проблемами в\\nих портфелях и 50% минусов были именно из-за жадности. Неспособность оставить мысль о покупке компании приводит к таким результатам, чего же тут удивляться?\\n\\nВернемся к теме - мы входим в позицию и надеемся, что продолжится рост.\\nДалее случается вовсе не рост, а коррекция, где приходится усреднять позиции почти до бесконечности, так как и зарезать актив мы не можем, в связи с жалостью\\n\\nПочему? Мы ведь ждали коррекцию, не дождались ее и принять второе поражение в ряд очень трудно, да и кто этого хочет\\n\\nВ расчете на то, что мы снова ошиблись, начинаем усреднять и усреднять позицию\\n\\n\\n\\nВ какой-то момент усреднение позиции уже кажется сумасшествием, так как\\nминус растет, а денег то уже и нет\\n\\nЧто происходит далее? Моральное выгорание\\n\\nУ разных типов людей оно проявляется по разному, обычно варианта 2 : 1) продаю все к ******** ******* и больше никогда не инвестирую 2) я уже в полном забвении, пусть хоть полностью сгорят эти деньги, но я не продам позицию\\n\\nЕстественно логично, что оба подхода неверные, хоть в случае со вторым шансов выйти в + намного больше, но он не гарантирует вам, что вы не вложились в условный RIG, который только падает без шансов на рост на дистанции\\n\\n\\n\\nЕсли анализировать ситуацию на картинке в начале главы, то второй тип\\nчеловека заработает денег, но это не так :)\\n\\nВероятнее всего, он не продаст на росте и будет ждать сумасшедших процентов, а когда компании в следующий раз уйдет в коррекцию, он уже перейдет к первому типу, так как так долго ждать уже не может\\n\\nА первый тип человека просто потерял свои деньги и в итоге будет перезаходить в надежде на удачу\\n\\nСлишком большую роль отводят удаче в нашем с вами деле, надеюсь вы не\\nделаете также?\\n\\n\\n\\nКакие же выводы - зададите вы мне такой вопрос\\n\\nВыводы очевидные :\\n\\n1)перед входом компанию анализируем\\n2)на волатильные активы ставим стопы\\n3)усреднять надо с умом, а не каждые 5% вниз\\n4)если брали сильную компанию и случилось глобальное падение - продавать не стоит в 99% случаев\\n5)меньше думайте сердцем и больше головой\\n6)не думайте, что умнее всех и не пытайтесь злорадствовать\\n\\nПравила простые, но важные, надеюсь вы усвоите их и торговать станет проще\\n\\n\\nВозвращаемся к хорошему и плохому и то, что они рано или поздно заканчиваются\\n\\nЭто одно из правил, которое вытекает из картинки в начале главы\\n\\nЭто вселенское правило распространилось и на фондовый рынок тоже, конечно же, оно имеет логичное объяснение, которое называется \\"волны\\" или экономические циклы\\n\\nЯсное дело, что падение и рост компании в течение 5-10 дней не является циклом и даже не близко к нему, но это волна, она как и цикл имеет 4 стадии : рост, пик, падение, депрессия, просто они укорочены и необъяснимы\\n\\nВы просто должны понимать, что правило \\"за черной полосой две белых полосы\\" работает на фондовом рынке и все имеет свой конец\\n\\n\\nПод словами \\"все имеет свой конец\\" я подразумеваю соответственно смену трендов. Не\\nможет быть бесконечного нисходящего или наоборот восходящего тренда Рано или поздно первый или второй закончится\\nЧем больше ТФ, тем больше на это требуется времени, но факт есть факт, все рано или\\nпоздно и падает и растет\\n\\nДавайте так, не все, но 99.9% компаний рано или поздно будут падать и отрастать.\\nЕсть примеры банкротств, когда уже ничего не отрастает обратно, к огромному сожалению\\n\\nТакая вот глава, которая подарила вам несколько интересных знаний, я надеюсь!","image":""},{"text":"Понимание инвестирования\\n\\nЕсть одна интересная фраза - инвестирование должно напоминать наблюдение за тем, как сохнет краска или растет трава. Если вам нужен азарт - возьмите 800$ и поезжайте в Лас-Вегас\\n\\nСогласны ли вы с этим высказыванием? Я думаю, что более 80% из тех, кто сейчас читает эти строчки вовсе не согласны или согласны отчасти, но есть один небольшой секрет, который я вам раскрою\\n\\nБолее 90% из тех, кто это читает не имеет прибыли на фондовом рынке и все равно не согласны. Более 95% инвесторов в мире не согласны с высказыванием или согласны отчасти, но не имеют прибыли и не могут даже сохранить свои деньги\\n\\nЭто вовсе не упрек, это лишь мои наблюдения\\n\\n\\nПо своей натуре человек очень азартен, фондовый рынок лишь подогревает его\\nазарт, заставляя совершать те действия, которые вовсе не нужны\\n\\nЛично я согласен с автором высказывания, так как понимаю, что можно трейдить в плюс, можно даже трейдить в плюс на дистанции и это совсем не ново!\\n\\nНо инвестор заработает больше. Инвестор на дистанции сделает намного больше денег, чем трейдер, потому что удерживание позиции позволяет ему зарабатывать сложные проценты\\n\\nЯ не исключаю варианта, что в мире есть и не один десяток трейдеров, которые показывают изумительные результаты, которые во много крат обгоняют доходность S&P 500, да и любого инвестора в целом\\n\\nНо какова вероятность, что одним из них окажется кто-то из нас?\\n\\nСогласитесь, очень маленькая\\n\\nЛично я не могу себя относить к таким. Я неплохо занимаюсь трейдингом, но больше инвестирую в долгую, так как мне так удобнее\\n\\nЯ люблю \\"жить жизнь\\", а не сидеть каждый день у графиков, чтобы доказать себе - я могу также!\\n\\nТрейдинг отнимает огромное количество времени, нервов и что самое главное совсем не гарантирует результат\\n\\nИнвестиции не отнимают время, разве что немного, нервы могут, но меньше, результат также никто не гарантирует, но вероятность положительного исхода куда выше\\n\\nНа самом деле успешного трейдера и инвестора от неуспешного отличает в основном\\nпсихология и  понимание  рынка Вы можете в это не верить, но это так\\nЕще раз - если посадить робота и человека, допустим меня и дать нам одинаковые\\nусловия, дать нам одинаковые знания, робот выполнит работу в 10 раз лучше, так как у него нет эмоций\\n\\nНаша задача, пока не появился искусственный интеллект, который будет зарабатывать нам \\"миллионы миллиардов\\", пытаться быть прототипом того самого робота без эмоций\\n\\nМы должны понимать, что любой зов сердца будет приносить нам скорее убытки, чем прибыли\\n\\n\\nМожно еще десятки и даже сотни страниц обсуждать  психологию  инвестирования,\\nно основные знания  положены  в том,  что было выше\\n\\nПонимание важности психологии большинству из нас приходит только с опытом, а не через литературу или иное чтиво\\n\\nМы  можем знать  сотни правил,  которые уже были доказаны  на опыте других людей,  но в основном надо потерять  свои деньги,  чтобы  усвоить  их железно\\n\\nНадеюсь,  что блок психологии инвестирования  не пройдет даром и вы  примите для  себя  важнейшее правило -  будьте бесчувственным роботом,  которого не интересуют зовы  сердца.  Выполняйте свою  работу четко по плану,  который вы  для себя  же и построили.  Не стоит суетиться  и совершать  необдуманные действия","image":""}]	novyj-urok-620	t	\N	\N	18	469	15
13	7	3e017a48-5e6b-4be3-a701-7fbccfb641fa	Покупка компаний	[{"text":"Странное название, не находите? Покупка компаний...о чем это он сейчас будет рассказывать? Неужто о том самом...\\n\\nО чем самом я не знаю, но желаю в данной главе поведать вам о простой истине, которую мы будем разжевывать и получать реально полезную и практичную информацию\\n\\nТолько с вашего позволения, начинаем!\\n","image":"/media/images/theme_3_lesson_13_outline_0.png"},{"text":"","image":"/media/images/theme_3_lesson_13_outline_1.png"},{"text":"Что общего и что разного у этих\\nкомпаний?\\n\\nМожете ли вы мне ответить?\\n\\nЧто это за цифры 1 и 2 на первом графике, кто скажет?\\n\\n\\n\\n\\nОдна компания падает и падает, а\\nвторая растет и растет, так вопрос в следующем - как выбрать ту, что будет расти и расти, а не падать и падать\\n\\nКакой такой секрет, который сейчас вам будет раскрыт, существует в нашем деле\\n\\nПеред вами график за 5 лет до графиков выше, компании те же. Сможете ли вы\\nответить на 2 вопроса : 1) какой график к какой компании принадлежит 2) в чем же смысл...?","image":"/media/images/theme_3_lesson_13_outline_2.png"},{"text":"","image":"/media/images/theme_3_lesson_13_outline_3.png"},{"text":"Полагаю, что сейчас ответ очевиден. Если нет, то намекаю - падающее падает, растущее растет\\n\\nПоговорим об этом подробнее\\n\\nПеред вами находились две компании : растущая Apple и падающая Transocean Ltd.\\n\\nТеперь встает вопрос, а в чем смысл, что мы должны были понять?\\n\\nИстина находится на поверхности и я вам ее описал на предыдущем слайде То, что растущее - растет, то, что падающее - падает\\nПонимаете, в этом есть какой-то вселенский смысл\\n\\nПока все вокруг пытаются поймать падающие ножи, вы заработаете куда больше на растущих компаниях. Я заметил и проверил это и на себе. БольшАя часть падающих ножей, которые я подбирал в итоге все равно уходили в минус еще больше и не давали мне нужный результат, а растущие компании росли и росли, им никто не мешал выполнять свою главную функцию. Так вот и вопрос, а в чем же смысл?\\n\\n\\n\\nСмысл в намеке, что не нужно пытаться ловить ножи, куда прибыльнее купить\\nрастущую компанию\\n\\nЧисто математически шанс продолжения ее роста выше, чем шанс полного разворота падающей, таким образом вы и будете получать прибыль, а не ждать, когда же на наконец развернется\\n\\nУчитывая то, что падающие ножи покупают вообще бездумно, то лучше так покупать компании растущие ( не путать с компаниями роста и стоимости, о них позже )\\n\\nПредставьте, пока все вокруг бегают, чего-то ищут,  пытаются  заработать,  можно купить fb, aapl, spot и еще парочку интересных компаний и получить профит? Думаете так легко быть не может? Проверьте\\n\\n\\nПомните, что я лишь пишу свое мнение на этот счет, а не утверждаю, что прав\\n\\nВыбор всегда за вами, но проверьте среди выбранного вами списка компаний ( любой список )\\n\\nСколько компаний из растущих в течение год показали убытка/прибыли, а сколько из падающих убытка/прибыли, вы удивитесь, как это соотношение будет с треском выиграно растущими\\n\\nПредлагаю надолго не зацикливаться на одной простой теме и двинемся дальше. Будем изучать инсайдерские покупки и что они из себя представляют\\n","image":""}]	novyj-urok-1071	t	\N	\N	3	138	7
\.


--
-- Data for Name: learning_lessonrating; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_lessonrating (id, uuid, rate, lesson_id, user_id) FROM stdin;
1	f58df464-9eb3-46a7-93a8-c42fe46a848b	5	6	84
2	f8c22e11-a234-478f-aee6-95fa3e18da47	3	7	85
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
9932	1122	a36b5bad-5ea2-44c5-9571-302ddb62621c	день	t	верно	4461
9933	1123	a7d127ec-91a8-4a75-b8a4-2835c9aa516d	4 часа	f	неверно	4461
9934	1124	557c5947-aae7-4890-87c9-d65577e9b41f	Нет, для чего они?	t	верно	4462
9955	1145	f71f52cc-961f-4ca6-9d6e-c597f72bb39c	0	t	0	4471
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
9354	1062	a512e5e4-b6d3-4b70-b372-7e93a3673da3	Нет, я стал(а) умнее и не буду переживать	t	верно	4188
9355	1063	e2991fe5-619b-43bc-9c31-37a961f53fdc	Хорошо	t	верно	4189
9356	1064	37350337-0ca6-4dbc-bccc-85a14d513b5d	Плохо	f	неверно	4189
9357	1065	bc9cb469-7f6b-423b-a2b3-77e254006464	Конечно, а вдруг что	f	неверно	4190
9358	1066	d7dc3686-87a7-4534-84be-d6ee219c3c6e	Не стоит	t	верно	4190
9359	1067	b80d123a-4bc0-4aa9-b2d3-126f9c78e48d	Стоит	f	неверно	4191
9360	1068	0641720c-4ca5-4673-9b4b-07146e16a6e2	Не стоит	t	верно	4191
9361	1069	dbb9915e-1aa3-4316-8c5f-d461b54aa149	Не стоит, оставьте компанию	t	верно	4192
9362	1070	645db6ee-1c25-45fd-a286-705557338a96	Стоит, это второй шанс	f	неверно	4192
9363	1071	cc189b8f-c566-4e89-ab8f-38a0be9711fa	Стоит, там большая прибыль	f	неверно	4193
9364	1072	018d17f8-d66c-45be-b842-e735775d1834	Не стоит, она не входит в мой план	f	верно	4193
9365	1073	d691b8d3-07ea-4713-8c61-efb89a721db3	Стоит взять	t	верно	4194
9366	1074	c345a2d4-e2dd-40a6-8812-ecbea68eb94b	ждать до последнего	f	неверно	4194
9367	1075	ab2f1b52-2087-46ee-aaa4-7fce10fcc1e1	прибыльней, чем по рынку	f	неверно	4195
9368	1076	4702fe4e-4373-49ed-b786-73635af3b6e6	убыточна и заберет ваш депо	t	верно	4195
1141	190	0e232934-9759-4680-b214-f76c39c5f3a5	0	t	0	521
1142	191	2fca62c5-3e74-4a3d-a2df-869abbc33086	0	t	0	522
9763	1117	bb29c03a-4f65-4dfc-952e-686ef4cb5f2f	Нет, сначала анализ	t	верно	4389
9764	1118	98b4a3d9-b7dc-4b7e-a236-88290603053e	Они улетят на все 30-40% вниз	t	верно	4390
9765	1119	2ee38de6-3936-448c-8388-5510d97b63c6	Они будут в боковике	f	неверно	4390
9766	1120	571de345-1879-4fd0-85ad-20c1a60a345a	да, конечно!	t	верно	4391
9767	1121	9c4ad75c-e4ee-4118-b8ed-19ee68334aed	нет, конечно!	f	неверно	4391
9341	1049	1f5b4287-f3cd-4924-a596-95b5c08b833c	Буду сливать	t	неверно	4182
9342	1050	546055e5-210b-404b-b457-72eb1b2c7dfa	Не буду сливать	f	верно	4182
9343	1051	74192b90-e92c-4306-82f2-6de873bb0243	Не буду, она же упадет еще ниже	f	неверно, так мыслит каждый хомячок	4183
9344	1052	2c99be75-5fc6-4add-bf6b-0364d6d90ac5	Буду, сильная компания, толпа всегда ошибается	t	верно	4183
9345	1053	f754f994-51ba-4cfa-843d-4d3568a66768	Хомяки	f	неверно	4184
9346	1054	3b6dfd29-6736-4eed-9665-4676de492d18	Спокойные инвесторы	t	верно	4184
9347	1055	8d695ec5-62e7-4826-8a64-7c06942c8d0f	Не поддамся на провокации	t	верно	4185
9348	1056	6e1ef4c0-4fd3-42ba-9e6f-a205c60b4f77	Придется сливать, толпа убьет	f	неверно	4185
9349	1057	50fd2f9b-fa72-4e6d-928c-40f0b3987c29	Да	t	верно	4186
9350	1058	6004685c-1921-4e64-a23e-bbdace561d87	нет	f	неверно	4186
9351	1059	b6ce4624-8fe5-4395-857a-e421b7c6ed4c	Да, солью	f	неверно	4187
9352	1060	25726596-4df3-4cae-be4a-390a5f3e7ea1	Откуплю или оставлю	t	верно	4187
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
9353	1061	be0c6f6f-8590-4602-b9ab-e2272ecb1bcb	Да, такова моя натура	t	Тогда рынок вероятнее не для вас или адаптируйтесь	4188
7374	893	4bbaa0de-ad3b-41f5-8f9e-fa5566e357fa	RSI	t	верно	3222
7375	894	a739479e-3a3e-4e53-b913-690f087f4c41	MACD	f	неверно	3222
7376	895	a8b785e7-9224-4ea2-8c98-c0b946778390	Bollinger	f	неверно	3222
7377	896	4535291b-d7d5-459c-96d1-8f7a323f4cec	да, лонг	f	неверно	3223
7378	897	efe24cc1-378a-457e-9bc7-d9f286f57178	нет, шорт	t	верно	3223
7379	898	1f676945-8431-4fd3-a16c-52569f647508	больше прибыль	t	верно	3224
7380	899	c96670cc-b38d-4cb1-bd4c-ebdfd2249f8b	меньше прибыль	f	неверно	3224
7381	900	de512810-cc51-4781-9653-dc7334f7d50c	Верное	f	неверно	3225
7382	901	f42dcc6d-426e-4ad2-bd58-5e1d2176ec7a	Неверное	t	верно	3225
7383	902	5eb2ef40-bb5c-4764-9f95-8a3b08309fe1	5%	f	неверно	3226
7384	903	04d79085-f8f2-4b78-8244-327f5feabad5	1%	f	верно	3226
7385	904	12d178e9-c70e-4d97-ba51-661ee050114d	Можно, если ТФ высокий	t	верно	3227
7386	905	0484fcb5-58e6-452f-914d-8508e46b4ed0	Нельзя ни при каких обстоятельствах	f	неверно	3227
7387	906	e75e2b00-6c89-456a-aee5-5946ca0b8289	средне	t	верно	3228
7388	907	22097663-f9b9-4e9a-be54-b6a28dd36098	нет, слабо	f	неверно	3228
7389	908	b41e192e-e347-4615-bd76-da839a5a3673	Можно	f	неверно	3229
7390	909	31d07b9a-40df-4a09-8e85-38ee3c482f57	Нельзя	t	верно	3229
7391	910	7fa50ae8-755a-4d8b-8857-3f7b3aa483b1	Беру в лонг	t	верно	3230
7392	911	94b140cc-4e64-4fab-bb0e-8bb2879616ce	Жду OBV	f	неверно, чего там ждать?	3230
7393	912	4c401432-b58b-4a1e-989c-6e052f33d7ed	нежелательно	t	верно	3231
7394	913	59b588bb-e02f-4dce-93e1-7dc5129c51fc	нужно!	f	неверно	3231
7395	914	3ab2f91b-2ab0-4b67-869b-d84507cc9f42	Лонг	t	верно	3232
7396	915	de7966f4-9836-4cda-9b70-edc3349bae1b	Шорт	f	неверно	3232
7397	916	f24222c4-3dd9-429b-818f-26f1659d94e8	Лонг	f	неверно	3233
7398	917	e7c9c2b8-e138-4d2d-915d-ce50a360ab97	Шорт	t	верно	3233
7399	918	28527e99-d684-40ef-97ac-19c7995f49d9	стопы	t	верно	3234
7400	919	b368902b-dfe1-4fa8-b82d-04a872f99063	поддержки	f	неверно	3234
7401	920	dec3b0a3-0b3e-4c7b-b6d8-2fe09a2122e5	предыдущий уровень	t	верно	3235
7402	921	88cd3547-fbbd-4119-8273-ab4e49987be4	два предыдущих уровня	f	неверно	3235
7403	922	86707d47-8424-4d9a-a486-6865b8322161	Лонг	f	неверно	3236
7404	923	cfcb2878-1226-4e7f-bcbd-593c7c1abe2b	Шорт	t	верно	3236
7405	924	5dfe2f4d-c803-4baa-954e-eb3f49b336ce	Стоит	f	неверно	3237
7406	925	c96266ee-0652-4998-aa43-818cc55d8e54	Не стоит	t	верно	3237
7407	926	2580f42a-22a8-42f2-bf7e-354223006834	ЕМА	t	верно	3238
7408	927	4d8d00c0-baf0-48a5-b420-2c7864257a0a	SMA	f	неверно	3238
7409	928	13a03eb6-4f48-4bc1-8526-d71d483d2176	Да	t	верно	3239
7410	929	a4f6a54a-1f20-40ee-b45b-6b7658543f4d	Нет	f	неверно	3239
11969	1345	8a285cfd-4109-4bfb-be53-f5aa3da0c8a2	Стоит	t	верно	5324
11970	1346	2d5eef81-244a-4b6d-95d6-006d6990ae20	не стоит	f	неверно	5324
1455	392	22da69e8-46c8-4f73-bfc5-25709adb25e0	Которая выросла	t	Верно	645
1456	393	5a31016d-6443-4e07-8d84-7b4745ae8a38	Которая упала	f	Неверно	645
1457	394	6daea975-ced6-4c62-8628-634c7c5a91aa	Да, ошибка	t	Верно	646
1458	395	c977157f-c505-47a6-8914-1cc9c125c848	Нет, это не ошибка	f	Неверно	646
1459	396	cacd4aac-7767-4b61-a2f3-c91c5687516b	Первый вариант	t	Верно	647
1460	397	924abd8d-20a5-49da-b73f-4dec306beaad	Второй вариант	f	Неверно	647
1461	398	0d49b998-b3e1-4c50-a7b8-255307088f75	Ошибочно выглядят перегретыми	t	Верно	648
1462	399	39812a47-b9fa-47ee-877f-f5f195c1191e	Они им нравятся, их покупают больше	f	Неверно	648
1463	400	b6702ad4-f686-42e5-9c3b-6d6c0b5c71ff	МОМО лучше	f	Неверно	649
1464	401	25a90430-06ca-47e6-a0f3-c31a8ca4f42a	Apple лучше	f	Верно	649
1345	319	b2072ee8-5499-4dcc-9a9d-99954ba958bb	Куплю	f	Неверно	598
1346	320	c01fae06-6149-47a9-bee3-8b6f2e3b059d	Продам	f	Неверно	598
1347	321	001f3e40-e16b-417d-b53b-042538e37ca9	Нейтрально	f	Верно	598
1348	322	ea6b3858-7a15-4fd4-bbbc-93bfed020830	Куплю	f	Неверно	599
1349	323	3687eb80-3d86-4dbd-acaa-bd586eebf845	Продам	f	Неверно	599
1350	324	7a954e32-a40c-4898-b1bc-a7d9aa2da7b8	Проанализирую	t	Верно	599
1351	325	06186266-c0ca-4873-93ce-decc48beb54b	Куплю	f	Неверно	600
1352	326	f34d35e2-a3b5-4d4e-bc29-f3ffa502f9b0	Продам	f	Неверно	600
1353	327	b78a438e-64e0-4961-b61a-a21ae8ee9ab0	Проверю инсайдера и его сделки	t	Верно	600
1354	328	d1cb60df-fbef-46b4-ba7f-c1fadb955f24	Да, продам	f	Неверно	601
1355	329	73357a14-cd3d-4b78-8fca-da90fef4095f	Не отреагирую, ведь это премиальные	t	Верно	601
1356	330	0f7e5296-7548-47b9-bfbe-3e05100526cc	Мелкие сделки, не буду	f	Неверно	602
1357	331	398118ed-e266-4ca1-a8e5-6de00a1da040	Буду, он может разбираться в вопросе	t	Верно	602
1358	332	c2f0e3c4-6190-49c2-92d7-239199b10196	Директором, он ближе к компании	f	Неверно	603
1359	333	e0f60fd7-8749-4906-8ef0-ac89d818d917	Владельцем пакета, у него нет премиальных	t	Верно	603
1360	334	c6e3aacb-e2b5-4018-a4e2-fe6a2491bcb4	Можно купить после анализа	t	Верно	604
1361	335	293e1de7-3423-484f-9c4a-9e2a03ead1a1	Не стоит покупать	f	Неверно	604
1362	336	d7246895-71f5-4d63-a78a-c9dc0748cf35	Стоит	t	Верно	605
1363	337	1402b66a-6a2b-4c63-8659-d0b07b0a1192	Не стоит	f	Неверно	605
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
8407	949	712fb86b-1575-4f61-a1bf-eec6dbcf2c5e	Правда	f	неверно	3738
8408	950	9c619a71-1890-4ca4-aa5a-d712b6ca7ff6	Ложь	t	верно	3738
8409	951	1404fd9c-3824-4f65-8e82-d705c49367a1	правильно	t	верно	3739
8410	952	84b55664-b9a5-4373-b31d-2f46ac1f06ad	наоборот	f	неверно	3739
8411	953	2a7a6a5b-6871-46e8-b5fb-14bbcf843fd7	Нет	t	верно	3740
8412	954	1a0248c9-e0c8-4535-9907-e025497a55ad	Да	f	Кто вам такое сказал? Неверно!	3740
8413	955	43726fc9-3aea-430e-b2cb-596d7badf2f9	Да, является	f	неверно	3741
8414	956	7e9d3b30-dc86-497b-84b1-02661b2a90f9	Нет, так как это ТФ 5 минут	t	верно	3741
8415	957	ad65da29-8939-4be8-927a-4827ceab1fc2	Отработана	t	верно	3742
8416	958	0a4ab14a-87e5-47bf-947a-3c4db4ae1281	Не отработана	f	неверно	3742
8417	959	c3c71c02-a4fb-49cb-af87-16ca8d8b7bd7	Пробьет вниз	f	неверно	3743
8418	960	75f75239-b2a1-40db-91d8-4531926887a1	Отскочит вверх	t	верно	3743
8419	961	4eb6b4f0-23aa-4074-bccc-ec5541967157	Да	f	неверно	3744
8420	962	dca33df5-5307-4158-9f33-1c1f9cd95b93	Нет	f	верно	3744
8421	963	f5a41f1c-d755-42b4-8ff8-36c480872a59	Является	t	верно	3745
8422	964	5f7fd8ae-1ff7-4c68-bba0-d458f5645303	Не является	f	неверно	3745
8423	965	efee4a2d-7872-4fc1-87f0-0fab64358d8d	Может	t	верно	3746
8424	966	e6d42398-f493-44fb-a10f-5485a1d9c172	Не может	f	неверно	3746
8425	967	454621d0-faff-46a6-94b6-088e04f4e6c7	Возможен	t	верно	3747
8426	968	0c95d8d7-7d97-4483-ad62-9863971b4e4d	100% нет	f	неверно	3747
8427	969	59de3aed-b694-464d-93d1-e2f860bd4379	Поглощение	f	неверно	3748
8428	970	fcef30ce-1ad1-4cbb-b5b2-25d187803ecd	Не поглощение	t	верно	3748
8429	971	c43033c7-b556-4520-ba96-ad322de0501d	Да	t	верно	3749
8430	972	26a19f5b-dec3-4fb6-be72-48f17a4e9b94	Нет	f	неверно	3749
8431	973	cfb8d7d8-eb27-4be9-8568-821c56cff933	Поглощение	t	верно	3750
8432	974	3b2c7ba8-89f8-4779-8081-8de51a6c6f89	Не поглощение	f	неверно	3750
8433	975	26c782da-19e0-4c5f-86f9-e0462c2562e5	слабее результат	f	неверно	3751
8434	976	66f95457-f60b-497e-ab94-1a603669f3f3	сильнее результат	t	верно	3751
8435	977	29f2da50-8ad2-45f1-a20e-784f7663abf1	Да	f	неверно	3752
8436	978	7f561e6c-1552-4145-b0cd-5c42676112df	Нет	t	верно	3752
8437	979	04f5f5d4-ab9e-4706-957a-640073d80526	да, правда немного косая)	t	верно	3753
8438	980	79a1cf35-b7f7-42b6-839a-891fa799b550	Нет	f	неверно	3753
8439	981	611518f0-ede5-4dd9-a470-c4fc4ddb1dfd	Двойное дно	t	верно	3754
8440	982	51ab6578-c547-4445-b64e-2e0058ca2904	Тройное дно	f	неверно	3754
8441	983	7a1c3a3f-e50d-4a59-8423-32e621a74b8a	Шорт, ведь тройная вершина	t	верно	3755
8442	984	ae0a8a5c-698d-4956-ae06-5293b7569aa1	Лонг, ведь двойное дно	f	неверно	3755
8443	985	9a557994-b506-4428-9a9f-3d0d7aa0aab2	Да	t	верно	3756
8444	986	ca79de03-5872-451c-a930-1d0ca1930790	Нет	f	неверно	3756
8445	987	d86d4881-0523-4ef5-9f72-b2877d4ad56b	разрастается	f	неверно	3757
8446	988	3938792d-40f8-45d5-979f-e80a827ae7ab	сжимается	t	верно	3757
8447	989	c3d66a60-cee2-401a-95ba-1d221c3058b8	повышается волатильность	t	верно	3758
8448	990	d233be23-b623-4a37-acd5-f172af755f41	понижается волатильность	f	неверно	3758
8449	991	1ee3e225-095a-43fa-b2a7-1c1be2c60e6b	Ничего не происходит	f	неверно	3758
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
9965	1155	8e5c0397-a495-4bac-afbf-b43f920ec240	Единицы технического анализа	f	Неверно	4481
9966	1156	5cf729e0-4556-4682-ba00-745acac895b0	Формулы для рассчета здоровья компнии	t	Верно	4481
9967	1157	7f097fca-5c89-469a-8b06-802aa32069c2	Составляющая графического анализа	f	Неверно	4481
9968	1158	ff0d1463-9499-439d-9c1b-886425c1c77d	Цена/прибыль	t	Верно	4482
9969	1159	c8bf569c-d3b2-4294-b46e-13bc928032aa	Выручка/прибыль	f	Неверно	4482
9970	1160	0cd71c2e-f867-43a0-a094-6a16345bc2fe	Долг/капитал	f	Неверно	4482
9971	1161	d149a73b-80ca-42df-a9bc-57c6c3ee9dc7	6-8	f	Неверно	4483
9972	1162	64c862ac-8652-4e1b-9ab3-8eab5ba15420	8-10	t	Верно	4483
9973	1163	2e6f987c-6af9-4459-8d2d-5d81db42f955	12-16	f	Неверно	4483
9974	1164	5ed8822d-e674-4f27-806a-eee82659e5b2	Да, критично	f	Верно	4484
9975	1165	bb32a7d0-653b-440b-b4a7-bbc42dfe2e46	Нет, не критично	t	Неверно	4484
9976	1166	1ff9b7bb-f273-4a52-9371-6d626fea454d	Капитализация/выручка	t	Верно	4485
9977	1167	02387421-188d-4279-a8d3-3c3256c986aa	Капитализация/прибыль	f	Неверно	4485
9978	1168	def5a557-e167-49d9-9fd7-c21afa7049cf	Прибыль/цена на акцию	f	Неверно	4485
9979	1169	50ded693-284b-46b8-a5fa-6d4b45af4c6b	1-2	t	Верно	4486
9980	1170	8285b2ff-3878-4bb1-8f24-16d66a36881f	0.5-0.7	f	Неверно	4486
9981	1171	00feff39-107f-418c-978f-df22ebae56bb	3-4	f	Неверно	4486
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
9982	1172	3a394f58-d697-46d4-b089-2b62af220995	Капитализация/балансовая стоимость	t	Верно	4487
9983	1173	91e87ac7-53da-453d-9664-f2b731bc3749	Капитализация/EPS	f	Неверно	4487
9984	1174	5c66498d-0ec1-46b4-9455-010ab82076a7	Прибыль/балансовая стоимость	f	Неверно	4487
9985	1175	374840c6-a832-4ac4-8584-3f592f9cc97a	4-6	f	Неверно	4488
9986	1176	60169907-ef0c-41e4-8b88-f78df8375ed9	0.5-1.5	t	Верно	4488
9987	1177	bb0f7e64-e730-42df-af9f-38447cdacdb5	3-4	f	Неверно	4488
9988	1178	44b39de5-1dac-4a19-97d9-65d94a94c8fb	Отношение собственного капитала к заемному	f	Неверно	4489
9989	1179	91add33d-6427-48b5-832a-05ed1051506c	Отношение заемного капитала к собственному	t	Верно	4489
9990	1180	afdf3708-87a6-4ee8-b4cc-5130f9398095	Отношение уставного капитала к собственному	f	Неверно	4489
9991	1181	6b1883b5-a198-476d-b5a0-0291ff9e86f0	Выше	f	Неверно	4490
9992	1182	b4cbfc2c-5b89-4921-a86a-e992a6996b66	Ниже	t	Верно	4490
9993	1183	56345383-445e-491a-b9d9-b2fa6b7fe801	Без разницы	f	Неверно	4490
9994	1184	69e6cc77-5121-42ee-9af3-798c0ce0df3e	Прибыль на компанию	f	Неверно	4491
9995	1185	29c6ad71-366c-4f75-9347-e1a05813fab8	Прибыль на акцию	t	Верно	4491
9996	1186	c59216a8-9065-4ec6-917d-6d3e7d0e60c2	Прибыль на облигацию	f	Неверно	4491
9997	1187	0438aab1-087c-42b8-a028-d05d4c62a31c	Расти	t	Верно	4492
9998	1188	344f3cf3-e0ed-4f3d-84ff-9fc7c0d6df80	Падать	f	Неверно	4492
9999	1189	9371ef1e-7f75-4e5f-8ad5-dfd26c0f3eef	Никакой разницы	f	Неверно	4492
10000	1190	e5250e54-bd36-4a57-bfff-9e67b4b913fd	5	t	Верно	4493
10001	1191	7e679089-25ec-4658-9a66-57b260090b43	50	f	Неверно	4493
10002	1192	f0346ac6-b2c7-4ac5-913f-c373f151e025	0.5	f	Неверно	4493
10003	1193	abaeb745-a6d8-4ee2-b151-60f9c748f295	Обычный EPS + налоги	f	Неверно	4494
10004	1194	8820b32e-5659-48b0-a55d-e860b7ff5492	Упрощенный EPS	f	Неверно	4494
10005	1195	bbca22dc-b970-4214-ac14-64b350704ad6	Допустимый EPS при доп. эмиссиях, переводе префов и прочее	t	Верно	4494
10006	1196	052b32d9-89e4-42c4-b2c6-d739e83067f6	Лучше	f	Неверно	4495
10007	1197	5ab5c4ea-96f8-488d-8e04-cd5fc7148500	Хуже	t	Верно	4495
10008	1198	9c959916-4473-4bf3-9b98-c31870d3804a	Нейтрально	f	Неверно	4495
10009	1199	35b9b86b-927e-4d4a-9771-ffe7ce863b67	Отношение заемных средств ко всем акциям	f	Неверно	4496
10010	1200	9eda6d4e-3f79-454f-9b32-b9b2d9d07c22	Отношение налички ко всем акциям	t	Верно	4496
10011	1201	d570c2a7-776b-4586-8250-c1cb32f718a2	Хорошо	f	Неверно	4497
10012	1202	7d314cd9-6954-4ddf-9d0d-ef4e9de25cd0	Плохо	t	Верно	4497
10013	1203	6bad5fde-b64b-4de8-9817-6e60c457be22	Нейтрально	f	Неверно	4497
10014	1204	75943c7d-a3a8-4dcf-88d1-4c6a5c03790c	Деньги не направляются в нужное русло	t	Верно	4498
10015	1205	fd1e24ea-3275-43c4-93d5-2f4700ab073f	Это наоборот хорошо, много свободных средств	f	Неверно	4498
10016	1206	16992a14-6cdd-4be7-9744-a602680f6343	Плохо	f	Неверно	4499
10017	1207	b319640e-d5e1-4800-801a-44ce90792875	Хорошо, если деньги идут на развитие	t	Верно	4499
10018	1208	ead8ed0f-d492-486d-b36a-4b18483fe803	Нейтрально	f	Неверно	4499
10019	1209	e33a8315-b6cc-432b-903b-f55a61f08eca	Валовый поток на акцию	f	Неверно	4500
10020	1210	b5629d5b-b40a-4abd-ac77-8324aca8381f	Денежный поток на акцию	t	Верно	4500
10021	1211	e58b1a77-8135-499a-a278-495199317319	Кредитный поток на акцию	f	Неверно	4500
10022	1212	eb12870a-4e55-4249-a702-bccefab920a4	Прибыль после налогообложения	t	Верно	4501
10023	1213	42903fc9-571d-4792-8b93-a0cd4d2a3957	Прибыль до налогообложения	f	Неверно	4501
10024	1214	1c120795-b34c-4940-9bad-2838bbf378a3	Прибыль без участия налогообложения	f	Неверно	4501
10025	1215	dabc049a-9654-4c1f-abfc-06f63baf905b	Износ основных средств или нематериальных объектов	t	Верно	4502
10026	1216	6746c8b1-e0d6-4ed7-bffd-2939766c54f4	Износ зданий	f	Неверно	4502
10027	1217	f498fb02-6665-430c-9cb6-2b27704557a2	Износ сотрудников	f	Неверно	4502
10028	1218	93c45018-171f-4e6c-a487-b5269ded88ad	Отрицательным	f	Неверно	4503
10029	1219	bbe58e34-0855-4b9e-be15-d28dfe14319a	Положительным	t	Верно	4503
10030	1220	ef8554b2-deef-43d9-bc6d-78b5669ee3dd	Да	t	Верно	4504
10031	1221	e66acef1-33af-4939-979e-80d9724085a1	Нет	f	Неверно	4504
10032	1222	cc691383-299e-45d6-8b6a-7e235df4ad8d	Нейтрально	f	Неверно	4504
10033	1223	ab7526cb-7549-43a5-8830-1a3e9ed57976	Цена/свободный денежный поток	t	Верно	4505
10034	1224	e32dd26a-f851-492f-8374-75a29e94c78a	Цена/закрытый денежный поток	f	Неверно	4505
10035	1225	5c1b0c94-521f-4453-a9c2-1ea635f5f0b1	Прибыль/свободный денежный поток	f	Неверно	4505
10036	1226	2ed22712-9739-4ec3-8f74-bb93fd5b5020	Прибыль от второстепенной деятельности	f	Неверно	4506
10037	1227	9240db3b-87cb-4447-9337-258a5d189732	Прибыль от основной деятельности	t	Верно	4506
10038	1228	8dce448a-5011-42f7-96ed-c72c0b5cbae5	Прибыль от кредитования	f	Неверно	4506
10039	1229	f0a61ebf-042d-4550-8f65-eb21f4eac1b3	Определения потенциальных дивидендов	f	Верно	4507
10040	1230	2b1f8b90-2643-4d15-9bcf-14ab26e818b5	Определения потенциальной прибыли	f	Неверно	4507
10041	1231	e16f3da9-8732-4818-9140-5d30a901723e	Просто так	f	Неверно	4507
10042	1232	f5c579d7-95d3-44fe-8a5f-9d00552169db	Ниже 20, но лучше ниже 15	t	Верно	4508
10043	1233	5e046a65-1166-4061-9776-bf9e3f43feb3	Ниже 40	f	Неверно	4508
10044	1234	2d30ff4e-c30d-412d-b4c8-59e92a3c9298	Ниже 25	f	Неверно	4508
10045	1235	dc0d22d9-2155-4827-aa8d-908587be5793	Да	t	Верно	4509
10046	1236	c5015829-b4c7-4e06-8eef-5d8b2dea9526	Нет	f	Неверно	4509
10047	1237	5960de7b-874a-4db6-948c-22183706daeb	Без разницы	f	Неверно	4509
10048	1238	f2d39900-7c5a-43c8-83a5-e511a84d466a	Коэф. быстрой ликвидности	t	Верно	4510
10049	1239	ff0a7ee2-35a2-41ca-863f-829aa4c46f6e	Коэф. медленной ликвидности	f	Неверно	4510
10050	1240	5ea9d23f-b45f-4916-ace3-ce3db2a97fd9	Коэф. валовой ликвидности	f	Неверно	4510
10051	1241	c3114cf1-bb5f-48f2-befd-6473dfe06b03	Выражает способность компании погасить обязательства активами	t	Верно	4511
10052	1242	683103c2-f5fd-4156-8cda-a4daa336ce2e	Показывает максимальное количество дивидендов в след. квартале	f	Неверно	4511
10053	1243	63df4da4-6a0c-4fdb-9a75-2600de86b497	Нет	f	Неверно	4512
10054	1244	4e11fe13-da7d-4792-aba6-9844d5c9974b	Да	t	Верно	4512
10055	1245	07a847d4-cd7c-473f-9eaa-1668ea1d25a2	Большим	t	Верно	4513
10056	1246	c0ba4145-1663-4e82-96b7-8f98f4830973	Маленьким	f	Неверно	4513
10057	1247	074b6671-997c-4027-a8a9-1876f4a61f24	2	f	Неверно	4514
10058	1248	451f8f16-ff77-44f2-9176-18464d4ff107	1	t	Верно	4514
10059	1249	005d8ef5-5044-4430-a61d-6d1db061b46f	0.1	f	Неверно	4514
10060	1250	46dd73f5-9c65-4709-8257-895be5f5087d	Коэф. текущей ликвидности	t	Верно	4515
10061	1251	48d23774-4f6c-469e-9b4e-ae05e12463b5	Коэф. прошлой ликвидности	f	Неверно	4515
10062	1252	5aed1c33-a1c2-4cac-aef6-43763de9b660	Коэф. будущей ликвидности	f	Неверно	4515
10063	1253	17705491-d120-4922-99fb-ec51a1d595e2	Во времени погашения	t	Верно	4516
10064	1254	63e73fff-a40e-4cce-9f70-4483c2e29952	В сумме погашения	f	Неверно	4516
10065	1255	63de5ef1-df89-40b8-8df3-5ba247972bf2	В принципе погашения	f	Неверно	4516
10066	1256	84f894e7-482f-44a5-b686-27470952d405	Коэф. оборачивоемости товаров	t	Верно	4517
10067	1257	b6b88b04-c10b-4ff0-85cd-6a5cdcb88bc1	Коэф. сжимаемости товаров	f	Неверно	4517
10068	1258	861ede1c-6f5c-4b3d-be49-7cbd98ec210b	Лучше	t	Верно	4518
10069	1259	838f1a32-9c5e-4bf2-aae8-a253432fe5eb	Хуже	f	Неверно	4518
10070	1260	6ee4f318-0d1a-4886-b7c8-8b762a2337d5	Без разницы	f	Неверно	4518
10071	1261	e2abaafc-7929-46bd-8321-33b71e123bbd	Коэф. оборачивоемости инвестиций	t	Верно	4519
10072	1262	224319ee-b938-4150-b6ec-72e5b19cca59	Коэф. оборачивоемости запасов	f	Неверно	4519
10073	1263	9d896f7f-4c94-48c0-a1cc-7d4388dc29f8	Остатки запасов	t	Верно	4520
10074	1264	165a87cc-c93f-48b9-bd8e-a0d99385ee1a	Излишек запасов	f	Неверно	4520
10075	1265	a30fc588-68b0-4ab2-877c-472e6e9a7549	Отсрочку запасов	f	Неверно	4520
10076	1266	2ab71c17-be87-4283-a270-68f9ed1ed0d8	Большое количество запасов и слабую динамику продаж	t	Верно	4521
10077	1267	8c318f89-0f3d-4bb2-b749-2cc1af02edf5	Маленькое количество запасов и высокую динамику продаж	f	Неверно	4521
10078	1268	d6edccdc-027a-41b0-9ce5-a1186f60b310	Да	t	Верно	4522
10079	1269	0b4f7cd6-5972-43d7-97d3-461b9d58c56e	Нет	f	Неверно	4522
10080	1270	cbf4683e-e036-4f2e-8b8e-7a136f97f695	Нейтрально	f	Неверно	4522
10081	1271	41979576-058b-4339-9323-a61d2e6e8ac9	Коэф. оборачивоемости кредита	f	Неверно	4523
10082	1272	bc5898dc-465a-417f-b0ee-5a0314579f63	Коэф. оборачивоемости деюиторской задолженности	t	Верно	4523
10083	1273	4875cba4-8cd2-4151-bb89-51119e2a488b	Коэф. оборачивоемости долгов компании	f	Неверно	4523
10084	1274	09072b31-3fde-4865-b7ef-84af4ae27bd0	Способность компании вести правильную политику и взымать долги	t	Верно	4524
10085	1275	65e7385d-5a03-4226-a673-2d9ff93dc277	Способность компании к востановлению после кризиса	f	Неверно	4524
10086	1276	ee0ccc6e-9f8c-4cbf-ab53-fb685153e82a	Способность компании искать средства	f	Неверно	4524
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
18	6fd79755-d296-41ec-8565-0f546ce6d119	Психология инвестирования	novaja-tema-1	6	Садитесь удобнее, так как вас ждет одна из важнейших тем в истории фондового рынка\nи торговли - психология\n\nМногие пренебрегают ей и получают тот результат, которого они опасались - минуса в портфеле\n\nНикогда не пренебрегайте психологией, так как именно она приведет вас : 1) к спокойствию и вы не потеряете миллионы нервных клеток 2) к истине, которая кроется в панике от других игроков на рынке	t	421	29
6	e6fd5480-0fdf-446b-a84e-48699156ef20	Технический графический анализ	novaja-tema-6	3	В данной теме мы разберемся с вами в графическом анализе, будем строить каналы и блоки, а также много важного!\n\nВсем приятного просмотра	t	369	26
5	d1074560-498b-403c-83b7-9d7a1ba386b4	Технический индикаторный анализ	novaja-tema-7	2	В данной теме мы будем проходить с вами индикаторы и их применение в связках\n\nПриятного просмотра!	t	461	25
4	ac9986e2-9e6e-41bb-b93b-bb880da581ab	Фундаментальный макроэкономический анализ	novaja-tema-5	1	В данной теме мы разберем с вами влияние макроэкономических факторов на фондовый рынок\n\nПройдемся по важным метрикам и поймем, как их читать	t	187	24
10	f4d795a0-b61f-4cd8-a553-2e5ab0d6cf05	Сезонный и временной анализы	novaja-tema-10	5	В данной теме мы разберем с вами сразу два типа вспомогательного анализа\n\nЯ советую уделить особое внимание информации, которую вы сейчас прочитаете\n\nВсем приятного просмотра!	t	405	28
8	19c7ef93-90e4-4ae3-8a71-a100489f4d77	Волновой анализ	novaja-tema-8	4	В этой теме мы пройдем с вами волны Вульфа и Эллиота более углубленно, разберем множество примеров и закрепим это на графике\n\nВсем приятного просмотра!	t	392	27
3	1cbb51e7-8204-43d3-aee4-5d1712b4c33c	Фундаментальный анализ	novaja-tema-2	0	В данной теме мы пройдем с вами несколько видов фундаментального анализа и познакомимся со многими важными моментами\n\nПрошу вас отнестись серьезно и впитывать информацию. По возможности даже выписывать в тетрадь для курса, чтобы лучше усваивалась информация	t	448	36
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
421	6373bb99-14c7-4f4a-af36-f547d241b482
137	a8c64f3e-255d-4fac-bd7f-c3932be289f6
138	ccc03e0c-2926-4940-aabe-b9806c3321c2
369	bc2ae6c6-c922-48f0-a00c-b8a68b1ceaa8
315	335577f1-4ab9-4707-b7f2-4ded81ca7ae2
150	03cd9fcb-a6fb-4c25-aa12-8802425ed6b5
157	7ac12208-c194-463a-940a-5aa76308dd39
159	b6922f3d-6a71-4e12-8e4a-8c9bbac1ffa6
105	c8b6fb3b-bb62-43ae-badd-9973b9f6c81e
160	611343ee-5e9a-45a7-974f-9d25709e33a6
438	bc244dde-286e-4c8b-97c9-92c1342692c0
329	ff4f3d0b-fbfd-47c1-9aa7-7e4417dd1bfa
331	d98edd3e-d092-4ab4-a79c-0d2dfcd3034d
448	f6094dc4-3fd0-46aa-918e-74b88eb90427
392	cfe59185-5e2f-4994-8ad5-3ffa9ca76356
393	a7358d38-7846-42aa-8287-5252f0638d50
520	48729254-ccc5-487c-918c-4643f451f9e7
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
472	f70057a4-cf36-4646-baf1-29086d551b06
\.


--
-- Data for Name: learning_testassignmentquestion; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.learning_testassignmentquestion (id, "order", uuid, question_text, test_id, image_id) FROM stdin;
13	0	16be0328-6df6-4c2b-a664-430023484329	string	24	\N
4471	479	87dcf40b-7f7c-4d8b-8e96-9d71483b32c8	0	462	\N
4481	489	94ae44dd-f995-4954-989c-4d73cdf68d5c	Что такое мультипликаторы?	472	\N
4482	490	dbfc4855-9afe-47a0-8d73-4a347dabca21	P/E — это	472	\N
4483	491	95bd5906-358d-49da-82ae-fca028baa9c3	Норма P/E	472	\N
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
635	154	06d2168e-01f4-41db-8416-447f985dab2d	Что лучше купить ( при равных показателях ) - компанию, которая выросла за 10 лет на 10000% или которая упала на 95%?	157	\N
636	155	ec12bcd1-f3b4-4ae7-9f33-4cbd46986b87	Является ли ошибкой постоянная покупка падающих компаний, которые упали на 70% за 5-10 лет?	157	\N
637	156	c56f2a93-e472-4ee8-bd09-91294e3c33fc	Что лучше купить для стабильного роста? FB+AAPL или RIG+PBF	157	\N
638	157	65e5719a-db3f-4493-9afc-8aa0936e7d8c	Почему растущие компании не нравятся инвесторам?	157	\N
640	159	f7c70474-5e6a-4e26-8483-5fa246451e08	Покупка МОМО лучше, чем покупка Apple? ( сравните графики обеих компаний )	157	\N
645	160	6906e999-cc8f-453c-8d5d-1e10101b5d33	Что лучше купить ( при равных показателях ) - компанию, которая выросла за 10 лет на 10000% или которая упала на 95%?	159	\N
646	161	9618ec60-a84b-4248-90b6-259f28f20fca	Является ли ошибкой постоянная покупка падающих компаний, которые упали на 70% за 5-10 лет?	159	\N
647	162	ae8c375f-70b6-4b2e-be84-53fb7586eadc	Что лучше купить для стабильного роста? FB+AAPL или RIG+PBF	159	\N
648	163	5efbe9e2-5946-45e0-b7e6-43a66f4c58bf	Почему растущие компании не нравятся инвесторам?	159	\N
649	164	fc7dd11a-faa8-4b93-a071-54dc0b3b7e42	Покупка МОМО лучше, чем покупка Apple? ( сравните графики обеих компаний )	159	\N
598	131	6987c54a-a68b-4dac-a145-6e350d0676e3	Если инсайдер купил компанию на 10 тысяч долларов, ваши действия?	150	\N
599	132	f3f83d1e-a357-4b84-a726-2f66588956f5	Если инсайдер купил компанию на 100 тысяч долларов, ваши действия?	150	\N
600	133	7c5003a6-dadb-4bec-8c8f-74d300133969	Если инсайдер купил компанию на 10 миллионов долларов, ваши действия?	150	\N
601	134	26a43fdb-be7f-4481-94ff-094337f5d520	Вы держите позицию по компании "А", инсайдер продал ее на 100 миллионов долларов, но это акции с премиальных за 10 лет. Вы продадите за ним?	150	\N
602	135	424eba3d-4161-4369-9fc8-e78248a8b01f	Вы видите сделку инсайдера, который покупает компанию частями. Он является владельцем фонда, специализирующимся в т.ч. на нефти. Будете ли вы анализировать компанию и инсайдера, если сделки по 30-40 тысяч долларов, но их 10-15 штук?	150	\N
603	136	23efc7b7-16ce-4181-be7d-c7e385522509	Что лучше - покупка акций директором или владельцем 10% пакета?	150	\N
604	137	0579d689-1d00-48fc-8fdb-324f08d2bac0	Если за инсайдером замечены покупки компании в прошлом и на графике она сразу росла. Сейчас он совершил покупку этой же компании, стоит довериться?	150	\N
605	138	13e167d0-403c-449f-bb96-cc6bb0b21ff9	Стоит ли вообще анализировать компанию после инсайдерской сделки?	150	\N
522	85	acde2f56-4ea4-4ba2-a365-08b49bbad67d	0	138	\N
4472	480	a9b2f786-fd10-4068-89c7-ff4b2e096f07	0	463	\N
4484	492	03b077f6-af1c-46f6-935e-ebd3a656db44	У Facebook P/E больше нормы — это критично?	472	\N
4485	493	292f1373-184e-4c42-9aa1-a8a703b9a86d	P/S — это	472	\N
4486	494	31094cdf-7f1c-4392-bd36-b6e32ba37534	Норма P/S	472	\N
4487	495	012ad7a5-a6ed-4c07-8562-985f60d89286	P/B — это	472	\N
4488	496	748bd6c5-8788-435b-a6e8-6815ff3baf73	Норма P/B	472	\N
4489	497	da9862fd-8a5e-427c-aa12-c84e0ac3abc3	Debt/Equity — это	472	\N
4490	498	255308fb-1577-43bc-b146-08362baa5cc9	Показатель должен быть выше или ниже 1?	472	\N
4491	499	86a729a4-117e-4719-a733-6977429ebf1a	EPS — это	472	\N
4492	500	b32ade3d-0844-4f83-8217-c8ed900be20a	EPS должен расти или падать?	472	\N
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
3222	357	560cfefa-38a7-4d52-82bb-febc8b49ccfe	Какой индикатор в связке RSI + MACD + Bollinger является опережающим?	315	\N
3223	358	fd9d1937-3655-4753-8837-bc6c89afc4d9	Перед вами график, будете брать в лонг?	315	376
3224	359	692fcfde-94c2-4fff-8c84-607c2d48061b	Чем больше ТФ по связке выше - тем ...	315	\N
3225	360	581d28a5-58fb-46f9-9c9d-dc1691f0d477	Если идет долгий RSI, можно брать без подтверждения третьего индикатора. Верное суждение?	315	\N
3226	361	a1d6b395-0ec8-41f8-a683-125848094d34	Какую прибыль стоит ожидать по связке на ТФ 5 минут	315	\N
3227	362	8eef8b59-557b-48f8-bb1a-2a6ffa8e4b97	Можно ли входить в шорт при неполном касании RSI?	315	377
3228	363	11c6d140-cb81-4d80-be81-200943ce51e8	Хорошо ли себя отрабатывает связка выше на ТФ 5 минут?	315	\N
3229	364	9cc8282b-3909-4a66-9919-501cb735bc30	Можно ли входить в сделку, когда 2/3 индикаторов подтвердились?	315	\N
3230	365	f07bf3a6-b0d9-4217-80e7-540ee565a052	Перед вами график с новой связкой Ichimoku + EMA 200 + OBV на ТФ 1 день, ваши действия?	315	378
3231	366	4d93c51b-c8f4-419c-85d9-470c903929c1	Можно ли торговать на связке выше на ТФ 5 минут?	315	\N
3232	367	00ffb40c-54f1-4af1-956c-636363cd526c	Перед вами график, куда будете заходить? Лонг или Шорт?	315	379
3233	368	12e3168e-feb6-42c2-a692-547dc7b94351	Перед вами график, куда будете заходить? Лонг или Шорт?	315	380
3234	369	914789f2-0fef-4646-a09b-0be3d086fedc	По АТР ставят	315	\N
3235	370	db4d207d-3ee8-41dc-a024-c34c4d9b7019	Стоп по пивот ставится за	315	\N
3236	371	c3c83e94-bf85-47ba-b03c-dfb9b1467e49	Перед вами график, входить в лонг или шорт?	315	381
3237	372	d46801d8-c361-48e2-8de4-7cee59577fd3	Если MACD в боковике, стоит входить в позиции?	315	\N
3238	373	0734c431-3583-436b-bcd1-c3e48780eed7	Аллигатор это 3...	315	\N
3239	374	bfc6a5e7-d5db-43ec-b8cc-529ba58d1fdb	Торгуется ли эта связка на ТФ 5-30 минут?	315	\N
3738	385	ab106851-03e5-4a7b-b9a2-831bf04653ac	Поддержка и сопротивление бывают только горизонтальные	369	\N
3739	386	edb2ba8e-413c-43a0-9a78-724747eeff55	Чем шире ТФ - тем сильнее поддержка и сопротивление	369	\N
3740	387	cb87df99-4405-44f7-a6eb-7cfbb6f666d3	Канальная система является устаревшей?	369	\N
3741	388	9b7cf448-77d5-47b4-b186-1fdbe1f66b1f	Перед вами график. ТФ 5 минут. Предположим это ЛП. Считается ли канал сильным?	369	384
3742	389	550e85bd-b27b-419a-bb47-3311e990e31b	Как вы считаете, отработана ли главная идея каналов - сопротивление предыдущего = поддержка следующего	369	385
3743	390	8f242646-7d5f-4bbb-bee8-b85750150d81	Куда пойдет график на основании темы?	369	386
3744	391	7a2db25c-c0f9-490a-ae3a-817633f430d4	Является ли это каналом?	369	387
3745	392	ec752650-c4f4-4a36-a008-7015142f3b75	Является ли это блоком поддержки?	369	388
3746	393	49d9d549-75f3-4380-9f45-f47e0ab43e87	Может ли канал быть в канале?	369	\N
3747	394	3222f878-abd4-48f5-8cca-c00962409cef	Возможен ли такой вариант для TSLA в краткосроке?	369	389
3748	395	002df29f-7616-4e8a-8c30-e8c9b5056899	Перед вами график, это поглощение?	369	390
3749	396	b96cefe4-18ff-4061-a106-1867d89bc85d	Перед вами график, это поглощение? ( по моей системе )	369	391
3750	397	7fdc2513-99ba-40f8-801b-bb72120467de	Перед вами график, это поглощение? ( в общем понимании )	369	392
3751	398	579838ad-eab8-4648-86e0-d42ac2470321	Чем больше свечей было поглощено, тем	369	\N
3752	399	e70b636b-7f08-4242-88a1-b8870e3eec48	Используются ли : поглощение и паттерны отдельно?	369	\N
3753	400	893412ae-f1d0-4590-b2cb-cee7dd00ea01	Перед вами фигура вымпел?	369	393
3754	401	a2161a9b-2fea-4074-b0f0-31d84f21a4a7	Что это за фигура?	369	394
3755	402	97a02541-b906-4ab4-8327-08c07d67488d	На основании паттерна скажите, куда пойдет график вероятнее всего и почему	369	395
3756	403	0b8495b0-41bf-4714-91ac-2632ef9f83c4	Доджи сулит развороту тренда?	369	\N
3757	404	2afc43ef-cad0-4ca8-b2bc-eca26d508795	В данном случае тренд угасает или разрастается?	369	396
3758	405	cdfa595e-5943-4cb0-93fb-59c73a78adc8	После консолидации...	369	\N
4473	481	7902e9c9-5f47-4a41-8503-c96bc885bcc0	0	464	\N
4493	501	225820ee-ca21-48b4-88bd-1c901b6d3d28	Чему равен EPS, если выпущено 100 акций, а прибыль за год 500$?	472	\N
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
4182	433	4a196915-3bef-460f-b415-82bc52febb89	Компания имела динамику на отчетах 10 лет, но ближайшие два будут значительно хуже ожиданий, будете сливать вместе с толпой, чтобы не уйти в еще больший минус?	421	\N
4183	434	5ccfcdac-80e7-4370-bc22-6af28eae77a8	Сильная компания ( допустим Apple ) упала на 25%, будете докупать?	421	\N
4184	435	e523dd00-b82b-4e5b-8ab7-61c7354b3e9e	Кто создает панику на рынке?	421	\N
4185	436	80ae4bd7-4420-45b5-abfb-6974d241b123	Манипулятор проводит действия в свою пользу и пользу своего круга, роняя рынок, поддаваться на провокации? Вдруг за этим армагеддон последует?	421	\N
4186	437	08fff0dc-7a54-4a75-b697-4c8a4a412a91	Правда ли, что каждые 2 месяца ( примерно ) мы встречаем коррекцию?	421	\N
4187	438	c7fba232-003c-4d9e-bc8a-2ba147cdcf35	Ваша компания упала на 20%, вы ее анализировали и были в ней уверены. Она не сильно пострадала, будете сливать?	421	\N
4188	439	25ba7f4d-0f7c-4f54-8d0c-2bb14b2ae85e	Если ваш портфель упадет на 20%, вы испытаете желание все продать поскорее?	421	\N
4189	440	79344c35-db33-47be-8cab-a1e5884cc051	Падение рынка - хорошо или плохо?	421	\N
4190	441	055f7cea-b2f7-47e5-ab4e-a2cfa1af5fd1	Стоит ли раз в день проверять свой долгосрочный портфель?	421	\N
4191	442	602b26fb-45b3-49a5-bf09-602672ef28c4	Стоит ли полагаться на чужое мнение, а свое откладывать на второй план, так как вы считаете себя менее осведомленным(ой)	421	\N
4192	443	a151aafc-fcf1-46f3-95d5-d22d08ef23a5	Вы продали компанию и она показала рост на 100%, стоит ли жалеть об упущенной прибыли и впрыгивать обратно?	421	\N
4193	444	fba15bc4-0ba8-466b-b77d-a2f7c94c0afa	Если вы хотите делать 10% годовых, стоит покупать вирджин галактик?	421	\N
4194	445	6d078a4d-27e0-4d7c-bee4-3683c658564d	Компания не дошла до нужной цены для покупки на 0.5%, стоит ли взять или ждать дальше?	421	\N
4195	446	b9dc8649-d208-4926-9bd2-a6fbe779f0be	Торговля против рынка...	421	\N
4474	482	1eae9236-edf0-41df-b39f-189c47d66463	0	465	\N
4494	502	d36627eb-38fc-40c8-b984-1f6da83718b1	Разводненный EPS — это	472	\N
4495	503	6dbd0158-b4c7-4656-98ac-439c662bb384	Чем EPS ниже — тем	472	\N
4496	504	74713df4-636a-44b7-bd70-f627df7dbded	Cash/Share — это	472	\N
4497	505	7a25c4e6-1c8d-43c9-9f9f-2578c876f450	Большой запас налички — это	472	\N
4498	506	ebfcbe37-2cbd-4088-af13-e4a5142f779e	Почему большой запас налички — это плохо?	472	\N
4499	507	4aab68dd-cf49-455b-9a83-ee2537667bb7	Компания с большой маржой и маленьким количеством налички — плохо?	472	\N
4500	508	b2909588-252a-450e-a827-dbbbfae91892	Cash Flow/Share — это	472	\N
4462	470	71a4c1e6-3484-4ba1-b8d1-929d8101ad41	Если в связке 3 трендовых индикатора, это хорошо?	461	\N
4463	471	aa7611a2-24b2-48e7-a9ff-fb7f02535079	Стандартное отклонение присутствует у...	461	\N
4464	472	4648c8ae-23e6-4063-9cd7-9be4f4b733f1	сжатие в "сосиску" у трендовых индикаторов означает...	461	\N
4465	473	2d4ec79d-00c8-4978-aab3-998334da03ca	Самый сильный индикатор в ТА	461	\N
4466	474	d70cb60a-6034-4de3-9a13-7ca50fd179ac	Если свеча поглотила 7 свечей, то сильный будет тренд или слабый?	461	\N
4467	475	6f99ddad-ba88-4fc3-a626-51c5ab8ac36f	0.5 по Фибо сильный уровень?	461	\N
4468	476	70a53ec4-9cd2-41d1-8d6e-037f489ee5bf	Если OBV растет по объемам, а котировки падают, то чего ждем?	461	\N
4469	477	dbdd741e-b919-4168-9bfd-757659fa7840	В связке мы ждем всегда всех индикаторов или 60-80% из них будет достаточно?	461	\N
4470	478	72650613-457e-458f-bb7b-24dc427c9505	Если компания вышла из канала вверх, есть вероятность ее возврата на сопротивление бывшего канала, как на поддержку?	461	\N
4501	509	c911f5e0-c0db-40c6-ab23-83bffa5f0159	Денежный поток —	472	\N
4502	510	151299b8-640a-4b55-8968-3b7468104e95	Амортизация — это	472	\N
4503	511	34ac9ea1-0193-48cb-b964-a10276df3af9	Денежный поток должен быть отрицательным или положительным?	472	\N
4504	512	3f90fc6d-d6e9-4a9f-9415-6b3a1ff74faa	Положительный поток на акцию подразумевает бОльшие дивиденды?	472	\N
4505	513	3f41e2fa-8879-4d9c-b348-e1d7ed3bfabe	P/FCF — это	472	\N
4506	514	8f3b2d3b-d3cb-46ec-b85c-314eb5eb6d34	Операционная прибыль — это	472	\N
4507	515	512f4f51-2f40-4cf2-bd3f-be1d77f97932	Для чего нужен P/FCF	472	\N
4508	516	12cff9d3-23e0-4e2f-9df8-abcd480106dc	Каким должно быть значение?	472	\N
4509	517	a8b12a0a-5f33-4c5a-8215-1adbd603678f	Стоит ли сравнивать мультипликатор по отрасли?	472	\N
4510	518	aa549a21-fc5c-4eb3-8efa-1330be7244d5	Quick Ratio — это	472	\N
4511	519	414f86c3-da2c-4f2c-a7e3-176589b30278	Для чего он нужен?	472	\N
4512	520	434f9ae7-d192-46b5-8322-81bdd7ec7e4e	Входит ли дебиторская задолженность в ликвидные активы?	472	\N
4513	521	2b233575-1ee3-4389-8ae1-48e46197553b	Quick Ratio должен быть	472	\N
4514	522	64d078d0-7a4d-4292-a245-504ab9367cdb	Норма для мультипликатора — это	472	\N
4515	523	1e2ce14f-a614-46ec-b965-a377438db3aa	Current Ratio — это	472	\N
4516	524	b961f71b-09b1-478d-a77f-a46ce2b41126	В чем разница между Quick и Current?	472	\N
4517	525	2438fd74-27a9-40af-b411-2ad655b7a7a9	Asset Turnover — это	472	\N
4518	526	5c411748-1ae4-4144-b565-06d150cf4bd7	Чем он выше — тем...	472	\N
4519	527	c26e1305-dd76-4801-983a-64e9374842c1	Inventory Turnover — это	472	\N
4520	528	52aabab7-405c-4df5-a515-d0d025da0553	Позволяет выявить...	472	\N
4521	529	6fb971f1-9c1e-4dd4-a5d6-a116a007bd72	Маленький показатель означает...	472	\N
4522	530	fa398df4-1bf0-4830-87c1-ee6b8ff3bfbb	Стоит ли сравнивать по отрасли?	472	\N
4523	531	4c6a65fa-0e3a-418b-b0b3-3025e8c6ef8a	Receivable Turnover — это	472	\N
4524	532	3be607bf-ea39-4416-850c-c0797285ccaf	Что отражает?	472	\N
4475	483	29262096-5b12-4a14-9e04-5bdcd2e2086f	0	466	\N
4384	461	9da5ed40-3211-4644-b671-03e2f6dbe618	Мультипликаторы в совокупностью с рентабельностью могут показать достойный уровень оценки?  Если еще использовать НИОКР и некоторые фишки ФА	448	\N
4385	462	1e52f369-6306-48e5-b089-cc254f0ee246	Данные для составления мультипликаторов берут из ...	448	\N
4386	463	344ce62a-1a26-40b3-a034-a718656c9d41	Если акции выросли на 200% по выручке, а сами котировки всего на 30%, есть потенциал роста?	448	\N
4387	464	e35b1a37-406a-4046-b551-c3f51ebeb96e	НИОКР и расходы на маркетинг - важные статьи в отчете?	448	\N
4388	465	2f369b11-fb80-47db-92b5-91f6a8486bd9	Если есть риск суда, вы будете вкладываться в компанию?	448	\N
4389	466	191f6c58-41a1-408b-97eb-b4599f21dabc	При покупке инсайдера мы сразу входим в позицию?	448	\N
4390	467	f03bd74a-36ab-4c15-bf6b-1498702cee8e	Что случится с нефтяными компаниями, если цены на нефть упадут на 20%	448	\N
4391	468	0d5c45fd-5df8-493a-bc55-7ece408e3fff	Влияет ли нефть на доллар?	448	\N
4476	484	da27d67a-247b-4a27-9fff-1099239ebdae	0	467	\N
4477	485	9c3c68d8-9d3a-4e72-a567-7800af341de6	0	468	\N
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
1	7919d6b3-332d-46e7-b007-9a5a4c57d050	2021-12-14 21:32:59.256689+00	462	84
2	aae2a48f-af74-4be8-a6d3-466c9d0eb256	2021-12-14 21:41:56.531548+00	462	85
3	3443da6b-ceb3-4d47-8408-08ba430d7133	2021-12-14 21:43:49.944339+00	462	85
4	5d530126-e833-4d62-8d09-b6bfecc4e535	2021-12-14 21:52:03.052005+00	160	85
5	e56d01d2-7832-4d9d-8c09-1a57263e3c84	2021-12-14 21:53:19.520919+00	160	85
6	e02e5d37-b6a1-49f8-b60a-9023180cf858	2021-12-14 21:57:53.564535+00	393	85
7	ba86a1f4-cd78-41b6-aa83-800c44bca0eb	2021-12-14 22:12:02.630679+00	463	85
8	0a54c396-0f84-4bd9-9228-cb8c9786fda9	2021-12-14 22:12:54.943861+00	470	85
9	b5474c98-3270-4097-9c34-cba99711f676	2021-12-14 22:13:05.332225+00	471	85
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
84	pbkdf2_sha256$260000$LzY9rHcDSV3RMhkLhy0EmZ$rBI7VNZiCudhDV0KpGnosaQGV/f55kg2LgGpcy9c1Q8=	\N	f	5e0940ff-0122-47b5-a461-f266379443c1	Александр	Рыбаков	t	t	2021-12-13	rybakov_web@outlook.com	5e0940ff-0122-47b5-a461-f266379443c1
81	pbkdf2_sha256$260000$emmrdbljPPIeE728lgf1Gv$6yACylllvwePlJNdoZ9tyXREVU4mFElTD6JFCj8no1w=	\N	f	b92eaf02-e31b-43e3-acd9-14da2e1abf63	Иван	Трушин	t	t	2021-11-17	itrushin99@gmail.com	b92eaf02-e31b-43e3-acd9-14da2e1abf63
86	pbkdf2_sha256$260000$HdOuWwcN8VHUnRlyaERYif$ncs+5i1UxDFlF8yXxJD524Y96MGKIRs2waMlToW66vg=	\N	f	105e39e4-a1c5-43a2-89fb-3134911f4a27	Антон		f	t	2021-12-13	mokosin.anton@mail.ru	105e39e4-a1c5-43a2-89fb-3134911f4a27
85	pbkdf2_sha256$260000$kxAWmblPOQbbtKpsJ5vHU9$B4SPBWwdvRat4TrezsxZiXUH3pjPlz0ZHCTVU+O4rro=	\N	f	be8c12fb-e9cd-4c54-8438-579de71dd2ce	Антон	Инвестор	t	t	2021-12-13	meadow.media@bk.ru	be8c12fb-e9cd-4c54-8438-579de71dd2ce
87	pbkdf2_sha256$260000$w3tcPrOra9k0iw2Inxmi8X$ZBkNoc6JTSur7D8xyOLEk+OaavJdPU40FE2RPY7Ekfc=	\N	f	968becb8-14fc-4a37-8682-b7d2f15c6431	Андрей		f	t	2021-12-13	mad08199708@gmail.com	968becb8-14fc-4a37-8682-b7d2f15c6431
88	pbkdf2_sha256$260000$iqKd0klWUjITAjGBmXeiN6$aG6YlqUDS2wrAvQ+tYk50/2QJJqOzMSRefubGoW/kpw=	\N	f	6cf64709-52b4-4d60-9bc6-ecfeca39197f	Дмитрий		f	t	2021-12-13	torpory@gmail.com	6cf64709-52b4-4d60-9bc6-ecfeca39197f
90	pbkdf2_sha256$260000$S5KY19VadQEnny170Ylum3$dQFS4oZ0SN7wwAZOXYKjDuY6c/150df/S9LCHayXTC8=	\N	f	2afc98d2-d146-4fb1-b52c-f573c1601b1c	Gleb Rebriev		f	t	2021-12-13	Gotphri@gmail.com	2afc98d2-d146-4fb1-b52c-f573c1601b1c
89	pbkdf2_sha256$260000$ljcRblYgM4Le4GwNQwyg7A$XX6D3qDsZbnq4sTLY4rNXIRcQUeoeu+IyXE4TFgZn3Y=	\N	f	b619c14b-a763-4cb5-b71b-9ed70554b7aa	Karim		f	t	2021-12-13	kuramshim58@gmail.com	b619c14b-a763-4cb5-b71b-9ed70554b7aa
91	pbkdf2_sha256$260000$D85o5wgBDo7Ius86I9FvlE$a+J05EqOEqoG8HjC1TFJSZ/eVrt435p5p61lMo5zBlk=	\N	f	05d19e9a-1d8d-4f91-9d6d-2dd5ccc19e02	Денис		f	t	2021-12-13	denis.tmebel@yandex.ru	05d19e9a-1d8d-4f91-9d6d-2dd5ccc19e02
92	pbkdf2_sha256$260000$5MNs2zuQSCvr0llCcv9y8G$yt8dFP8rP6K/QhgIrx7IORVZKt9/b/x0N3xIcgwOKxs=	\N	f	af4cd2cf-14b9-410f-91d7-6958019f485c	Александр		f	t	2021-12-13	avfilimonoff@gmail.com	af4cd2cf-14b9-410f-91d7-6958019f485c
93	pbkdf2_sha256$260000$EDZw4iUx8KxCAa27wAMV0J$8eHGds5FMa5roMykz11Y8MckOhShd75RYWdtiudUvv4=	\N	f	5177c486-995b-45fa-b78b-525c9fe47933	Alexey Ermakov		f	t	2021-12-13	ermakov-alexey@mail.ru	5177c486-995b-45fa-b78b-525c9fe47933
94	pbkdf2_sha256$260000$YcWLmZoI074zhhFUuNpjlS$mUYQXVxXJCh1Hb/0kTwEwYUiltGOJL4VzSzBS0+GJ3o=	\N	f	07d8a8f1-35e2-441f-bcc2-525430a3b48b	Дмитрий		f	t	2021-12-13	Topko@mail.ru	07d8a8f1-35e2-441f-bcc2-525430a3b48b
95	pbkdf2_sha256$260000$Ny064H4YTpTiSDkJ6jAVoJ$V+fYpzlsHNiMOBfetehDemrtbg50DGDe1EEyd2D6a5Y=	\N	f	a157cc91-f8a9-4552-a1e3-8b6cb99546c6	Святослав		f	t	2021-12-13	svyatoslaf@gmail.com	a157cc91-f8a9-4552-a1e3-8b6cb99546c6
96	pbkdf2_sha256$260000$EKQ2Zupn2mp84rmGfQ7Vnd$oAD0tJdjHM9shJ5paUhWxGsAKizGCjaVKvn+uY29Hgo=	\N	f	d4a0a890-646c-448e-b5a1-308e59248fc4	Юлия Перкова		f	t	2021-12-13	izumrudbereg@yandex.ru	d4a0a890-646c-448e-b5a1-308e59248fc4
98	pbkdf2_sha256$260000$UXlDqwIgRDFLujbj9lOfka$ARDufHYmmfJCyAW8SN87quO+9ffg2SH/7D7/ujx5HNY=	\N	f	c41f1559-644d-456c-86f1-909307a8d920	Алена		f	t	2021-12-13	pyatigorskaya97@gmail.com	c41f1559-644d-456c-86f1-909307a8d920
99	pbkdf2_sha256$260000$vUUVqVFL5qSTpV8Bb57Fy5$Y96sQ3iSwpxV8tuvUddB27V8JK3KRx8oa9vNFQZDcqg=	\N	f	5a1e306f-0464-44c3-a440-179f36f67e06	Дмитрий		f	t	2021-12-13	lesnojdmitry@gmail.com	5a1e306f-0464-44c3-a440-179f36f67e06
100	pbkdf2_sha256$260000$IytbhIn6SfDT63wQ0QNobA$nTEmKPXbZz8gVOIXh5aVHy5XJbIqL+ToYeVtikD8Ypg=	\N	f	3051b36c-5af2-4c60-b475-0d6c5f6f8ce0	Сергей		f	t	2021-12-13	sever_detal@mail.ru	3051b36c-5af2-4c60-b475-0d6c5f6f8ce0
101	pbkdf2_sha256$260000$Y0xo1dYmy4vvBsTDOJNoP4$GoPGGNPdYAuXUyJh7fHaoD+qx3Xjw5emJ16gz+qC4xk=	\N	f	42c9c0bb-eb66-4a1e-9421-175039a79d51	Тимофей		f	t	2021-12-13	timofey.leonov007@gmail.com	42c9c0bb-eb66-4a1e-9421-175039a79d51
102	pbkdf2_sha256$260000$ZHf0hRVaOfTh5U3LlwfYvw$PWvQZTEbBjSSARb9VVmiL7JhrqUawAdCJfa8SxdcdbU=	\N	f	2bf23a70-5db2-4cd8-b823-f1362ec2896c	Семен		f	t	2021-12-13	semyonsemenyuk@gmail.com	2bf23a70-5db2-4cd8-b823-f1362ec2896c
103	pbkdf2_sha256$260000$UIHtxdaxPvEL7HYaOXDyrK$o4XV/QMp+Qhp6SxyXCEljBAnUfWOQs3kU9fP3oddKQQ=	\N	f	41dd9be7-dd4d-427f-a4ac-86bf9d36d003	Александр		f	t	2021-12-13	aleksandr243574@gmail.com	41dd9be7-dd4d-427f-a4ac-86bf9d36d003
104	pbkdf2_sha256$260000$1glifO5LEDkeinYo0ryKVy$Tr4aGIQO54uzGZ/2F+tv7jAIWNC3pM2/3H/52OE6tD4=	\N	f	448a9a69-72dc-40d2-a7bc-dbd27edbea40	Михаил		f	t	2021-12-13	simmisha@yandex.ru	448a9a69-72dc-40d2-a7bc-dbd27edbea40
105	pbkdf2_sha256$260000$P83e7a2jul19MAUF3GWmXO$ADpk/v8zfdZIhR9lrSfiWhApd1cCBhnLycVCpbqkQCE=	\N	f	17640372-4df2-4b1b-9a79-6b4afd469043	Константин		f	t	2021-12-13	argon_08@mail.ru	17640372-4df2-4b1b-9a79-6b4afd469043
106	pbkdf2_sha256$260000$DrUnIynVqLub1vIiHI6ZL4$lIPJ24t8KRbd9RMnp9t4hK70OO6A/xDR4LuMj1Yzsc4=	\N	f	3f564393-33c6-48a2-b542-ed782bff2a83	Артур		f	t	2021-12-13	minkhairov.art@gmail.com	3f564393-33c6-48a2-b542-ed782bff2a83
107	pbkdf2_sha256$260000$cPDCB1hhI2vhWGRgvgIeyB$PGbY74/GUlMqDT8DoyyVIa1roaXu6/cdZnBGj3N8Zos=	\N	f	1b1e747c-77b6-43c4-9d94-4f78f501b52e	Анна		f	t	2021-12-13	beata_anna@mail.ru	1b1e747c-77b6-43c4-9d94-4f78f501b52e
108	pbkdf2_sha256$260000$VQltcnvHXTqFjbM0yI7xsi$huyjhqI2NKhXCQQWolFW9WVPPOFjsdtZavfbtTFozA4=	\N	f	39c2a094-718e-41d7-aebc-06109d43fc19	Евгений		f	t	2021-12-13	Angel100_05@mail.ru	39c2a094-718e-41d7-aebc-06109d43fc19
109	pbkdf2_sha256$260000$f32nJRMQdrV4lIhqezBD3i$RbetZ2nUEy66OEqNFMSqALxzZmLLxHHY8L6SuLA0Cm4=	\N	f	b276f05d-63e5-4b1b-97e5-94b1b29e198a	Эдуард		f	t	2021-12-13	Abdulvaliev88@mail.ru	b276f05d-63e5-4b1b-97e5-94b1b29e198a
110	pbkdf2_sha256$260000$KXpxSiNkwkyTUkxrJDFpVX$b/Vj8bZ1yqVD3rl3Hko92UHoplyKSu16tSPV+B+R3gc=	\N	f	f2b57159-a566-4e75-a765-99a5881cfdf7	Леонтий		f	t	2021-12-13	marshava@yandex.ru	f2b57159-a566-4e75-a765-99a5881cfdf7
111	pbkdf2_sha256$260000$a9EAfb8PxRwOHxX8X97Udi$o6/wlel8qifx8AocL06uoe8P4FFwKrl1mOzWsO8WQOI=	\N	f	3f9cc448-9b73-4a15-9534-c4b50524725b	Алексей		f	t	2021-12-13	admza@yandex.ru	3f9cc448-9b73-4a15-9534-c4b50524725b
112	pbkdf2_sha256$260000$kRoXQvHtQm4yOPVl7gT7oT$EYiqnD94QZCJcLP+ubZu6ztv4fpbMyeKb/HlLrMlWf8=	\N	f	bf43e1b3-8025-4385-82c2-96a640853c03	EHOT		f	t	2021-12-13	antrekotik@yandex.ru	bf43e1b3-8025-4385-82c2-96a640853c03
97	pbkdf2_sha256$260000$ZGw7EiAG92ACYCXDrgSzDy$3/jtQm4Nn75h3VdB1zDR2qOQ3T6SSnJH0E2AfZITYvM=	\N	f	f8f621a5-77a5-4b8f-82e8-7bae0239939d	Никита		f	t	2021-12-13	polyansky.na@yandex.ru	f8f621a5-77a5-4b8f-82e8-7bae0239939d
115	pbkdf2_sha256$260000$YWQMydBxBSCtLFC3vo3IX4$vMUNWsxPu1Y8tnVn0SNAN5UT3Y0E+0Vh2/h1eTFj6s8=	\N	f	c713a63c-e89c-4d8f-8aee-26d5ee7f40b1	Григорий		f	t	2021-12-13	grigori73@gmail.com	c713a63c-e89c-4d8f-8aee-26d5ee7f40b1
116	pbkdf2_sha256$260000$Xuc10x3NsMcLJwW4ODjham$F0xNxn7eBHYd5KQqiUn4sYIKvgYRRJSRMupFR5U2rLk=	\N	f	41e98cce-13bf-47e2-9be5-6a1bb3bf900f	Андрей		f	t	2021-12-13	andyshas@yandex.ru	41e98cce-13bf-47e2-9be5-6a1bb3bf900f
117	pbkdf2_sha256$260000$NbV4Th9aSuDKbAUHRRT5zx$2sXf803gkSL1U2yUiVuVM6Xx0vP3UdeLrZQXTmnMEz4=	\N	f	9d6e1d99-b259-46bc-b9b3-538f88e1e14a	Leonid Kulikov		f	t	2021-12-13	leonid.kulikovtf@gmail.com	9d6e1d99-b259-46bc-b9b3-538f88e1e14a
118	pbkdf2_sha256$260000$J14FJWUdMEhIkbRh782SPR$RdeAJE4lVQAj28OkulopvvUfBL8BLXbShvGJIZIBNDc=	\N	f	39234b90-5b69-433a-b52e-aac541e4e8cf	Андрей		f	t	2021-12-13	12NeoruS12@inbox.ru	39234b90-5b69-433a-b52e-aac541e4e8cf
119	pbkdf2_sha256$260000$k2rS0xa81mgX1zTWCz72Sl$tOVTiYnkp1sSeDnmPLfqN+R+7ozHHYXN/Vv/b2UvL8Q=	\N	f	c14d4242-bb42-4733-a277-b7c77bfa376e	Елена		f	t	2021-12-13	ezaitseva@gmail.com	c14d4242-bb42-4733-a277-b7c77bfa376e
120	pbkdf2_sha256$260000$ItlJsq4rczXsJ57gYh6uTo$wzYM4T0rUHsFmDg+4uP4OT0pLxwgldGYwLFeB8GtnrU=	\N	f	74840035-bd06-4f67-8ced-b5cae5cab4e4	Светлана Колесова		f	t	2021-12-13	sbk2774@mail.ru	74840035-bd06-4f67-8ced-b5cae5cab4e4
121	pbkdf2_sha256$260000$CORMP8O6sl4WYgQvmQaG6H$00qynNpPUqyIDx8BYPDASJXbghJmnaLdeHLxMU5Fz+w=	\N	f	0cca052b-81fb-49d2-9ec7-3ab4e57eee0a	Никита		f	t	2021-12-13	naikita753@mail.ru	0cca052b-81fb-49d2-9ec7-3ab4e57eee0a
122	pbkdf2_sha256$260000$C4BVN26UC1PrHMfNxVjSYQ$K6gxYmkpA/uF5l/zRwNLG7Prbnr133avBrBnwzUxDkU=	\N	f	23e15195-8a4c-429c-80d9-7224345e5f17	Сергей		f	t	2021-12-13	tiranov@mail.ru	23e15195-8a4c-429c-80d9-7224345e5f17
123	pbkdf2_sha256$260000$gjTgUvLW9wZE5PcKUBoJC2$WOYbdK2lISoucFy4P3bG72CPkUfoOJWv/FgPZriXtc8=	\N	f	9df5fff7-b011-498d-8141-fe8ac962a528	Александр		f	t	2021-12-13	alexzag333@gmail.com	9df5fff7-b011-498d-8141-fe8ac962a528
124	pbkdf2_sha256$260000$ZNH2SzJzgMPuZsPyY7xyYE$j1w358AhLSTQDoH/aGk4QN9dwj0B46QRCAS2MeOyE14=	\N	f	f4260343-b071-4599-a275-191cec7e9997	Александр		f	t	2021-12-13	bananza88@bk.ru	f4260343-b071-4599-a275-191cec7e9997
125	pbkdf2_sha256$260000$PLvrOP4f7sGTkcZoGqKqHc$OXs0/jouYdUmLJNXC3WtVUNJXV0mi7GCJ52mPAmoVZI=	\N	f	0755cdcf-ed77-4829-999c-01ff838ea6f8	Алексей Астахов		f	t	2021-12-13	a.astahov76@gmail.com	0755cdcf-ed77-4829-999c-01ff838ea6f8
126	pbkdf2_sha256$260000$PvotxJgmYQT1qxNGG8ncmU$klHDUiTXB+t+7ctwNcRIDXt5Nc9xGnuObQxSBkKlqqU=	\N	f	d5230e87-9fb6-4eb9-b501-8cc02d32d27f	Эдуард Керимов		f	t	2021-12-13	kerimovedik161@gmail.com	d5230e87-9fb6-4eb9-b501-8cc02d32d27f
127	pbkdf2_sha256$260000$XL9CtYTJAjuJJGHpWxa5fZ$+sh5JU4CIJDiYTmvkDso1iP52ZwesVSkYCn16zeeRmA=	\N	f	f72f6de4-3711-4c12-b725-236df9fec363	Евгения		f	t	2021-12-13	lipkka@gmail.com	f72f6de4-3711-4c12-b725-236df9fec363
128	pbkdf2_sha256$260000$iuenFnNOqKZEiv62tx7f2q$tVwAVaB5L2KJeJ9moxbC+Xpvgrwtw18OpWxg8UaOJaw=	\N	f	0d9511e5-2c62-4cb4-bca0-e3d6938dea16	Anna		f	t	2021-12-13	me2sage@gmail.com	0d9511e5-2c62-4cb4-bca0-e3d6938dea16
129	pbkdf2_sha256$260000$iX6wggWxFL76b4nCLoRKR9$Xoy+EIQlXpdtxyg2y3IQNkcknUyJwqCWpV6k3ZSSmOc=	\N	f	16d448d2-6d28-40e4-aa23-1b8824885704	Александр		f	t	2021-12-13	alexandrsolopov@gmail.com	16d448d2-6d28-40e4-aa23-1b8824885704
130	pbkdf2_sha256$260000$2XAZezHL2pAeneKlgYUPvt$9Sf08jdhvzGvcTT1dhaObTZZQDbdLym7VuvQp+gzjOM=	\N	f	a2c52cf5-e584-46d6-97e7-3606aa0db988	Aleksey		f	t	2021-12-13	2023777@bk.ru	a2c52cf5-e584-46d6-97e7-3606aa0db988
131	pbkdf2_sha256$260000$Lc7j9hV1BB6pNLyVnkC2PM$ame3nNT/lYJWDpr9xkD1tc9INYYr0wkGPvG27sZ7F3g=	\N	f	d91d3c89-3e25-4225-82f3-c5dc27030682	Андрей		f	t	2021-12-13	stoa@mail.ru	d91d3c89-3e25-4225-82f3-c5dc27030682
132	pbkdf2_sha256$260000$CljqxTmDSNfGxx4fyFma4N$xdO85fxq4Cjie6xS7zmLeUZKxXdoyGiUT7MR2PJQvXI=	\N	f	bcc1c353-0614-4750-8118-838485928e99	Андрей		f	t	2021-12-13	brigadir59@tut.by	bcc1c353-0614-4750-8118-838485928e99
133	pbkdf2_sha256$260000$29dhm3Qd30nBBwIUQSlNTf$aw7JF8wHCKDUmJLxZyYqW2Y8f0Lc7hZaGI//kMEkgdk=	\N	f	8c77c817-dab3-4525-83af-d9be7e6c5e81	Дмитрий		f	t	2021-12-13	iamdb78@yandex.ru	8c77c817-dab3-4525-83af-d9be7e6c5e81
134	pbkdf2_sha256$260000$43kcqJ4XGBEOuWjoLumnx6$5ddy2bZoSiJoG6qUEv35QgnMBKwblDBvIpSkdSxeMpg=	\N	f	acf1553f-fade-44bd-9816-df2daec494c2	Никита		f	t	2021-12-13	nikskaut2009@yandex.ru	acf1553f-fade-44bd-9816-df2daec494c2
135	pbkdf2_sha256$260000$FVAZ3jpzHuWzbVMF66kUCB$TjXFW2GJ6MDxDWoU3TLtJccobdQ1srb11bZR9Su6das=	\N	f	7f80c17b-f5ea-4889-b8c4-dc9585773896	Сергей		f	t	2021-12-13	kuzin.kuzins2015@yandex.ru	7f80c17b-f5ea-4889-b8c4-dc9585773896
136	pbkdf2_sha256$260000$xVpZpp4MMnbFlPGfztiF20$6HADZLndBZsZ+2jc7LZp20XJ6Bkv4CFSZr5x5Pqy8V8=	\N	f	aea59eb4-6b92-4aef-ad5b-8b22f69ec2a1	Максим		f	t	2021-12-13	makskuznetsov19@gmail.com	aea59eb4-6b92-4aef-ad5b-8b22f69ec2a1
137	pbkdf2_sha256$260000$b0CTIbC2pSzPUUaaavFQxY$5yBbzVwDfWyJHOxfzgNPlgRf7+FPGR3un948PJO2WMw=	\N	f	c63d5dc6-f27d-4198-bb8d-c076365ebd01	Вадим		f	t	2021-12-13	vadim3105@mail.ru	c63d5dc6-f27d-4198-bb8d-c076365ebd01
138	pbkdf2_sha256$260000$Vzd38xETFoc63nL07mRHkx$T6HHXpHs/MyN9+mOQ7jV5NrysnYJzaiR43xtAccl9Rg=	\N	f	6e0a730f-3db2-43c7-a2b8-a4f144cbaf01	Евгений		f	t	2021-12-13	krechet01@mail.ru	6e0a730f-3db2-43c7-a2b8-a4f144cbaf01
139	pbkdf2_sha256$260000$MKFJbxv8NWxN9WxrgHPrkU$iZlgtfq88eczYD7lg0OLwW6q7Spcq/0NA1lYYvVD5ME=	\N	f	4622d295-355b-4ba5-93af-f53236a5629a	Аркадий		f	t	2021-12-13	weltonmaquinaria@gmail.com	4622d295-355b-4ba5-93af-f53236a5629a
140	pbkdf2_sha256$260000$HDHgihfEyLb0ZLEGIqs3lf$ERp1AHSCJ5P1YJzM2m4Jcj/0MG/jcah2eRVqJTyzv8E=	\N	f	0317b555-c014-4cbc-a3f7-e10eadd6a992	Андрей		f	t	2021-12-13	visochkin.andrey@gmail.com	0317b555-c014-4cbc-a3f7-e10eadd6a992
141	pbkdf2_sha256$260000$I6oidit4mSQCjsTvyAFz0c$4GW8f9S/l5mBypJtq9YWzo+H3FdKQ44NYlLcbPV7hp4=	\N	f	6e59e51c-39b5-43cf-afc8-e717da2c7731	Владимир Мартьянов		f	t	2021-12-13	vladimart@mail.ru	6e59e51c-39b5-43cf-afc8-e717da2c7731
142	pbkdf2_sha256$260000$jh1EoLokD66HoLqVEwqoot$akR8xSi4HSU5dlwA1OqBHWNmOWpQE67ORZ3HuWTw1SU=	\N	f	489a9070-33b9-483d-8bb1-210dbd4116a3	Сергей		f	t	2021-12-13	serega140782@mail.ru	489a9070-33b9-483d-8bb1-210dbd4116a3
114	pbkdf2_sha256$260000$F11sgBNjMcfL2nWH0hLCzH$OJHHjhkY9H2HwYJ2n23CoDd+ose7ShQctTcq8r8bSRA=	\N	f	9044e7cd-6246-4c80-a8e6-05dac853d1e3	Игорь		f	t	2021-12-13	igortarasevich1992@yandex.ru	9044e7cd-6246-4c80-a8e6-05dac853d1e3
113	pbkdf2_sha256$260000$UBpNijfwITJDRW9dK914XK$lkdrRNpdof96X+rOLgZsFcP2Cw7nXTnxIVMjMtSKjzI=	\N	f	1cd710f0-4857-4e33-a8b2-59de11fb1591	Эдуард		f	t	2021-12-13	eduard.a.lisienko@gmail.com	1cd710f0-4857-4e33-a8b2-59de11fb1591
145	pbkdf2_sha256$260000$uPhosFTAnPEl5EdnZXOan5$/xtPS4b6pBz45kK52J1InVKtqKccKI5UYmgRsfIbjwA=	\N	f	b3965097-d4fa-428b-96bc-a5902f08d064	Семён		f	t	2021-12-13	mele4enkovsemen@mail.ru	b3965097-d4fa-428b-96bc-a5902f08d064
146	pbkdf2_sha256$260000$UCli44VLioqryUK4n4ZXKg$98zF+J5ajbQpLZmqE3ZD9snVPq9N9lHKgt/z4op+umo=	\N	f	0518eb75-a13c-48e9-b2cf-baf4d8633136	Виктория		f	t	2021-12-13	Kameliya.lantana@mail.ru	0518eb75-a13c-48e9-b2cf-baf4d8633136
147	pbkdf2_sha256$260000$Ui31mh5bhGDHbY2JyTD8jz$Q6U0Z2dRl0X6Gi9CCJhy+59Oj+R832IdTh8dBIrbw1Q=	\N	f	fa2935b3-3637-4223-bb7e-86268186751d	Кирилл		f	t	2021-12-13	dyakov.kir.il@gmail.com	fa2935b3-3637-4223-bb7e-86268186751d
148	pbkdf2_sha256$260000$PNGOpUaStNjyq77S5rnDmO$trFaqiKvIpvpkkGVkN7yn4q+K0KxJxccyAo6FQOzTi0=	\N	f	d2f1aece-302d-4e64-adff-7e5ea64ab8f2	Александр		f	t	2021-12-13	chas93@mail.ru	d2f1aece-302d-4e64-adff-7e5ea64ab8f2
149	pbkdf2_sha256$260000$lbs93uN8Sn4u8dEj1z57Cs$UoKkEtvfwS3w6DHI/pN9K+f6Od2IA83W5ci1co54Nl0=	\N	f	74bbecf6-3159-48b3-b942-1264c31617b6	Никита Южаков		f	t	2021-12-13	nikita.yuzhakov96@mail.ru	74bbecf6-3159-48b3-b942-1264c31617b6
150	pbkdf2_sha256$260000$GE5Kthpm0weWdBcqhDmYRP$pfm4TGV2TD6f04U5GX87aPsv+qOd3KQww5VOKkuwBWA=	\N	f	197fa092-e235-4358-a3eb-e74e9e8867ef	Фёдор		f	t	2021-12-13	Fedja.96@mail.ru	197fa092-e235-4358-a3eb-e74e9e8867ef
151	pbkdf2_sha256$260000$v16FM3WlrhU94x8s5myyp7$t7Pl3s7/DUuKGGyNFQ1vX/RFDJPhPWGp40S1OhP+z90=	\N	f	e1aad780-9430-498e-b353-cab39ce6f66e	Павел		f	t	2021-12-13	pavdav2012@mail.ru	e1aad780-9430-498e-b353-cab39ce6f66e
152	pbkdf2_sha256$260000$Tj414LpjrXDiY80Z8JZWBe$0X9+F3krHswm/b51P6v8Fb6KUa/C7aDYsC/e5ee6YJY=	\N	f	14fe62c3-afa6-4930-b4b3-33c8564925c9	Андрей		f	t	2021-12-13	and19720731@yandex.ru	14fe62c3-afa6-4930-b4b3-33c8564925c9
153	pbkdf2_sha256$260000$CSbhqHgE8hiWlGfQvbxALZ$NeS6CrYALXJnlQmEQpeqL2K1NieGhy56XTefAZ3iftA=	\N	f	eeed17b2-605b-4d05-b52f-ce72aaf8a031	Евгения		f	t	2021-12-13	extrov9@gmail.com	eeed17b2-605b-4d05-b52f-ce72aaf8a031
154	pbkdf2_sha256$260000$WBim3AuuLWImyE18fBL8ZW$sRPnHSXui/UnUvTdLjK6CW7DaKdhx32ReH30DXAMcpU=	\N	f	79b09712-53fa-454f-b572-d8c5b1b9e909	Анна		f	t	2021-12-13	fav312@mail.ru	79b09712-53fa-454f-b572-d8c5b1b9e909
156	pbkdf2_sha256$260000$hN0I3l5TT8MurHcv0315SA$kTko/C5x3nhXhwxW5Mz0Yrnw33nNO84jpuqdiW2A+dA=	\N	f	68bbdfb5-ed49-4285-86d9-d11242d4d07a	Дмитрий		f	t	2021-12-13	vasilevich@me.com	68bbdfb5-ed49-4285-86d9-d11242d4d07a
155	pbkdf2_sha256$260000$B4V2SHxPu11VQ1qsap8ByN$si8SpMmqTMiVX0jeWxDgeDoYG7cRrDExKVQvAgGT2Uc=	\N	f	697ba18f-49f1-4deb-93cc-d1b5143523ea	Алексей		f	t	2021-12-13	alexr66@yandex.ru	697ba18f-49f1-4deb-93cc-d1b5143523ea
158	pbkdf2_sha256$260000$1SqQgKwOwKKcUx6YI5ErbB$N2Dh5N34tnFFlZnzJiNcqY7B8JkQ1PaF1BUzfRD4De0=	\N	f	96844534-5af5-4a3d-8926-fe123933b1ea	Сергей		f	t	2021-12-13	sergeynek@inbox.ru	96844534-5af5-4a3d-8926-fe123933b1ea
159	pbkdf2_sha256$260000$PeF6MFSPtzJQ5J90lolcmU$4mVqhCuPyomBtiiC9AR1OD8B8vcJso105Ec8oPDbj70=	\N	f	d0824de1-b215-4bfc-950d-261c1e719874	Сергей  Рыжов		f	t	2021-12-13	samsonsound@gmail.com	d0824de1-b215-4bfc-950d-261c1e719874
160	pbkdf2_sha256$260000$k7h2TnkxAZuEEaRPWGm8bK$djzq0ByNEb26+p9hHPTRaLFl/+75HzBXebRrPxDMhnI=	\N	f	d13d0978-2089-41b2-b95c-2beca05ff868	Александр		f	t	2021-12-13	pcmactep@yandex.ru	d13d0978-2089-41b2-b95c-2beca05ff868
161	pbkdf2_sha256$260000$x3YKkUmdLeHQaW5ygC0X1m$VBE9AHKQIBE+ZoQ1IUgz/kRi65+4H4KSDqdbgsePt3Q=	\N	f	da833144-972a-4cf1-a19e-c63ae3474ace	Евгений		f	t	2021-12-13	paretskiy@mail.ru	da833144-972a-4cf1-a19e-c63ae3474ace
162	pbkdf2_sha256$260000$kx5Xj4JitF6XLvLpJo0Ep5$XJnU5keT6Y/yZ2oiSZKdbho6mOYM5FtCDF9LO3W5jKI=	\N	f	52a4911a-3f14-41b4-81ad-da7e8c0c12e9	Денис		f	t	2021-12-13	Andreev.D.N@yandex.ru	52a4911a-3f14-41b4-81ad-da7e8c0c12e9
163	pbkdf2_sha256$260000$y4rbbeaaE2wq2NdiB62kkg$HGkvLGwNAlAAXmsUbkHLxzoKFK9gCugdEPMQuy3QR8s=	\N	f	f15576e4-cabe-4493-8ce5-011852d47556	Наталья		f	t	2021-12-13	nstec@yandex.ru	f15576e4-cabe-4493-8ce5-011852d47556
164	pbkdf2_sha256$260000$gWmWNrtrxqyhQlHuW4VbJh$4n22wq60EoMUvfj+KfqmC3rffZWQOR2JC7PHykRnSiY=	\N	f	b668cd09-f5dd-4f41-bf82-3e9f07008090	Сергей		f	t	2021-12-13	Pionerskaia27@mail.ru	b668cd09-f5dd-4f41-bf82-3e9f07008090
165	pbkdf2_sha256$260000$TeXOnORNBnVhEQDM6kGC5x$UwCX1TWwKT9oiS++boC+hjtLSTksUcjpBIpVw2urLQg=	\N	f	04c87b09-b56e-4f59-a922-c660024a09cf	Виктор		f	t	2021-12-13	v1221@mail.ru	04c87b09-b56e-4f59-a922-c660024a09cf
166	pbkdf2_sha256$260000$gBwrRnKnmTLI3SbIy7s8NC$O28CbCgIq3KZHQXFlaLSJ03pprgzPp5rsdbJ4rwSdn8=	\N	f	0da8abfe-f79f-445c-85d6-b1fdb98db61b	Павел		f	t	2021-12-13	jiimbo@mail.ru	0da8abfe-f79f-445c-85d6-b1fdb98db61b
167	pbkdf2_sha256$260000$lSzd8crDS6LPPLcCUlGGrl$bih8tbzrD6ioRuroKf2q0gy+9MMX67GTSwElCGZipGI=	\N	f	42239580-312e-4491-9c3c-c5888ff79b6f	Владимир		f	t	2021-12-13	im@vlev.me	42239580-312e-4491-9c3c-c5888ff79b6f
168	pbkdf2_sha256$260000$CaQIEl9EYAcK45ty8rRY9a$fmRWw3iJDhy0UZsBCf3xLwnj+K3XoFTLTaQPp7ia8fg=	\N	f	8cdec1fc-536d-4c36-ba0b-5c57ff6b8183	Дмитрий		f	t	2021-12-13	dimitri_80@inbox.ru	8cdec1fc-536d-4c36-ba0b-5c57ff6b8183
169	pbkdf2_sha256$260000$2TaFjZPTmPkhWtdHmvK0Qm$Uzl+/sxr/+zW6YvAnRbu1zCpTc1iFvfcifMjCYLCLRI=	\N	f	5c613815-903d-4679-b091-f8a8f5f353b2	Сергей		f	t	2021-12-13	seregaplys@mail.ru	5c613815-903d-4679-b091-f8a8f5f353b2
170	pbkdf2_sha256$260000$uWURQVisO02zeEoOTCWjhT$bU+FxrIAeKLGWSEpEvLLG+FRvwJ52/2RKVBqbBbssqM=	\N	f	796d843a-6a31-4bb8-af4c-84d843e7291c	Максим		f	t	2021-12-13	chusmaksimus@mail.ru	796d843a-6a31-4bb8-af4c-84d843e7291c
171	pbkdf2_sha256$260000$W9Mu48vYL4LTy6jVbyYyzg$cuksGaS8TqWMn9oX4Kd/5ac7cPmZOTYo+viZWjHGD8A=	\N	f	90b6e08d-992e-4246-a912-0af1847ad3eb	Юлия		f	t	2021-12-13	6290@mail.ru	90b6e08d-992e-4246-a912-0af1847ad3eb
172	pbkdf2_sha256$260000$7nKkotAeQV5L5l7czlVYkL$sCLEVAOzKOfjihhLh7SVznUjkRkUlDfSI5N8tnzUCbU=	\N	f	d319809f-1cbb-47ca-b7f4-8700f2ac0e73	Дарья		f	t	2021-12-13	d.a.kochetkova@mail.ru	d319809f-1cbb-47ca-b7f4-8700f2ac0e73
173	pbkdf2_sha256$260000$Ivq8yqWYDyLqcIa8Yubha6$Qksm54I8Geh1TwHZPyDqa9jYEeVxrmbeTgaMcT6lJto=	\N	f	c903280b-9484-4f62-9081-0f83f74c8b4a	Денис		f	t	2021-12-13	kazarkin.denis@yandex.ru	c903280b-9484-4f62-9081-0f83f74c8b4a
157	pbkdf2_sha256$260000$gVVNHE4zeT7g7TiKrO5915$tDLrvvDs/jMo767cd0+ro4QdtEV0hoaAhBwZLtaE/rw=	\N	f	2a5ecb11-4933-4099-b18c-b57ec1257ebb	Юрий		f	t	2021-12-13	lym2002@mail.ru	2a5ecb11-4933-4099-b18c-b57ec1257ebb
144	pbkdf2_sha256$260000$8LtPTIEyTORcJIpbEHlkvh$30GJ/JdFz3FMGa5IcTNJ53pZoEgvaLcjK+dmf17v41s=	\N	f	a6786abd-2e0d-4326-b173-ec8fb581b49c	Станислав		f	t	2021-12-13	stas.yashnikov@mail.ru	a6786abd-2e0d-4326-b173-ec8fb581b49c
176	pbkdf2_sha256$260000$AJXNmAoAN1SIwrtzwKuEwH$AHxbN/m/4kCsqNrt0zmWD7yMvgRyrAmOkgVixBdr/34=	\N	f	9014dc44-37e1-44a7-8c4b-b260f6b879f2	Альберт		f	t	2021-12-13	Aalmin4@gmail.com	9014dc44-37e1-44a7-8c4b-b260f6b879f2
177	pbkdf2_sha256$260000$H01460yvtOILyH0yuC2VDW$CiH+gtIgxLLYT8PN69q2eA3e9ACtbJM7reBrYK6p94o=	\N	f	11b0da0e-e85a-430d-9ec4-b04866f5e1fa	Семен		f	t	2021-12-13	uralsvettorg@bk.ru	11b0da0e-e85a-430d-9ec4-b04866f5e1fa
178	pbkdf2_sha256$260000$y6Jr4WXPZlQUn4K8VeMKkh$nrGXsU8oLQWdMlvJQKHSwwvvH/3cGyt7MhJ3F7LR3UA=	\N	f	d17054dc-b252-487d-ac3c-a5610431e211	Максим		f	t	2021-12-13	ilichevml@gmail.com	d17054dc-b252-487d-ac3c-a5610431e211
179	pbkdf2_sha256$260000$iFQVxKBP9LUSbIiZbbu8C0$UlTDYxFWc3lr/y67d547jDHqajVwbDZDaGwL1tFJBzI=	\N	f	88422271-b2c7-4af5-9556-48bdfedaa4dc	Valeriy		f	t	2021-12-13	a.valerii@bk.ru	88422271-b2c7-4af5-9556-48bdfedaa4dc
180	pbkdf2_sha256$260000$Z8RshpsJ9qjw4csFbiJSLG$dVvKKTtVlyPR9blB2ib+OynyG+MZTblf40gRV0sl2H4=	\N	f	c7dc7546-de89-4517-9f50-36ef7a1631ef	Максим		f	t	2021-12-13	m.sorokovikov@gmail.com	c7dc7546-de89-4517-9f50-36ef7a1631ef
181	pbkdf2_sha256$260000$SJbyoHU3I3tKiXYQAHiGzl$tlJJA+q5KAlELH/nKtAENVsuoyMTneTtIDTczoD7l0A=	\N	f	4cdfc6cc-07af-4956-a9e6-f31b3365016c	Сергей		f	t	2021-12-13	svr@mf-group.com	4cdfc6cc-07af-4956-a9e6-f31b3365016c
182	pbkdf2_sha256$260000$jKusU8plHYcVkvWDwM869P$gNdIJ/755oBLsm5Tf4TAmUrw3zLThDKFXbMVmjuXEXo=	\N	f	27b95673-27bb-442d-b9fd-d33d15e72ce6	Даниил		f	t	2021-12-13	drachevd@gmail.com	27b95673-27bb-442d-b9fd-d33d15e72ce6
183	pbkdf2_sha256$260000$4WjrF1bPrp5avfTSlX2yvP$DcsXj6+dCTWhFfm7yjqGhUiRslwMx+OzhKEIfyfNkPQ=	\N	f	db6558b3-e569-4b04-8a4e-fbdd6e72be92	Григорий		f	t	2021-12-13	grunzik@yandex.ru	db6558b3-e569-4b04-8a4e-fbdd6e72be92
184	pbkdf2_sha256$260000$9Rg9h1PbAvQgleR3uGKxE5$6QxFdM5MzMaxlqLrZfYEnH+7HHCzVMQEHErPEtXXbrw=	\N	f	69b83256-2dc0-4548-a3cd-fce0a5d12588	Елена		f	t	2021-12-13	mlena_71@mail.ru	69b83256-2dc0-4548-a3cd-fce0a5d12588
185	pbkdf2_sha256$260000$AY5ezlYelQuMpklxZAQIyq$ebk9NbJ66lqBmf9vW60Pzj/tHqSFZbg3X+dajRV7i+Y=	\N	f	f7e60683-a41f-4335-9496-8ddf85755602	Максим		f	t	2021-12-13	9997178@gmail.com	f7e60683-a41f-4335-9496-8ddf85755602
186	pbkdf2_sha256$260000$4zV7vJTol8YMHV4JG5iy2b$6E+nbc5H40K7DBup5syKlPlwB8qy+A8xmlVLJ9bRpdc=	\N	f	30857701-fb7e-4970-a6d4-de0625a5646b	Илья		f	t	2021-12-13	kaspiec12@gmail.com	30857701-fb7e-4970-a6d4-de0625a5646b
187	pbkdf2_sha256$260000$AvGiDma5d6FqBZTVbrRisy$MjnLR8j54+oE4JPQEg/6KLM4jHtJFWjTrrokBiTizv4=	\N	f	747ce913-303b-4fce-9115-ed9de6274781	Сергей		f	t	2021-12-13	sa.volodin@mail.ru	747ce913-303b-4fce-9115-ed9de6274781
188	pbkdf2_sha256$260000$dm6YCAkUMUDdcoyaC8DmyC$CXdQnJPlx3nLYjo23zoReJOF8xCyi8R0zBU0RoOGDxI=	\N	f	f463e948-f17c-4270-b40f-edc92923152e	Андрей		f	t	2021-12-13	Povar9924@gmail.com	f463e948-f17c-4270-b40f-edc92923152e
189	pbkdf2_sha256$260000$ZkgSM4pEBWzLcktgtsOJw1$9rGnO2lstyrmdxf6bTtpaeWCXsAfx8trlYwbFbzO9Jk=	\N	f	c0cfdd1a-ff2f-4acd-ad4a-5964b03e0b02	Евгений		f	t	2021-12-13	pakhomoves@mail.ru	c0cfdd1a-ff2f-4acd-ad4a-5964b03e0b02
190	pbkdf2_sha256$260000$VRrEJVdefimkX8MwmvqzLo$5F5VnuwIeE++9A0P3/87NaztlOHaTp8r44aJf2SAjVk=	\N	f	af58ef97-67b4-4c5d-a9d1-586d8ca45f19	Игорь Жильнов		f	t	2021-12-13	zhilnov@yandex.ru	af58ef97-67b4-4c5d-a9d1-586d8ca45f19
191	pbkdf2_sha256$260000$yuZ62Y0YzWrwZhSRjRrZjp$kRzRBTu/xQX+w3GWvsW1lDvDlEy6guFfbplJTwRwSGs=	\N	f	2ee453d0-95a5-44cc-85f7-a0f31aa35a1f	Константин		f	t	2021-12-13	sh.kost@yahoo.com	2ee453d0-95a5-44cc-85f7-a0f31aa35a1f
192	pbkdf2_sha256$260000$pxEtYFIKhjVkWA4dOL6Kef$lJ+EY77QWQDv4nNdOLYS6+ng36cP33DVxUknbrLYCjY=	\N	f	6e4ef63c-4a38-434c-b3e5-6787d74d4c45	Андрей		f	t	2021-12-13	mclion12@yahoo.ca	6e4ef63c-4a38-434c-b3e5-6787d74d4c45
193	pbkdf2_sha256$260000$CKzQGbLxMqBkamegdSwg5v$Q9oICjWMN45rGaiXdt0Wz5xKRUFKv4lRxBf/VYTwhNM=	\N	f	c9980ae4-815d-4c0b-aaab-30ade81b31ba	Надежда		f	t	2021-12-13	bna-ip@mail.com	c9980ae4-815d-4c0b-aaab-30ade81b31ba
194	pbkdf2_sha256$260000$dtvPEbFkH9FReErEdiTo15$FYiYZ8m2Fj1JnVu3CENF45zqXBtwzhiUKqgMI09+g1M=	\N	f	91db8aaf-7b87-4272-b94a-1192941fd4b0	Марат		f	t	2021-12-13	krisas75@mail.ru	91db8aaf-7b87-4272-b94a-1192941fd4b0
195	pbkdf2_sha256$260000$4hcT5YtUMQdWRSXP4sgvLR$IEkSJWLdsjAzUzGq+pc21Zg+pSyfdERXyekrK8YJDwY=	\N	f	73e72e4a-3ff5-4b00-b7cd-34fff27ee93d	Дмитрий		f	t	2021-12-13	foxid@mail.ru	73e72e4a-3ff5-4b00-b7cd-34fff27ee93d
196	pbkdf2_sha256$260000$HNSqFU9sNxfvEQF5ZCsRra$pCSWenLt7CLwoWhSB+7lls8iS4ecHY9VdBKgzqJrX1k=	\N	f	52bb7859-6953-44bb-a285-724c9547ea81	Алексей		f	t	2021-12-13	almisi@yandex.ru	52bb7859-6953-44bb-a285-724c9547ea81
197	pbkdf2_sha256$260000$hh0UtHxwSV2WUSJfCLF7Ll$2mq+CvebcXYSpSX7Eznpy6hO8H9wit1RFuAIH8CSXuE=	\N	f	48253a8d-c9d6-42eb-87d9-2f7f9f4ed438	Алексей		f	t	2021-12-13	sk4ylee@gmail.com	48253a8d-c9d6-42eb-87d9-2f7f9f4ed438
198	pbkdf2_sha256$260000$amkhJXnyWD6Fe7SiIzW2ZV$0mSd/I3+jYAHfcTOavPe95JoLHSpz6pJVkZBQEYWmH0=	\N	f	2bdbcb6c-01ee-4624-8ca5-ba057f01bb4e	Александр		f	t	2021-12-13	probalbesina@gmail.com	2bdbcb6c-01ee-4624-8ca5-ba057f01bb4e
199	pbkdf2_sha256$260000$dntu9Q0oFGnOB8gTyMx2y8$YRqnCGgtRTThCK79Wity9anRSbqlAGkXa+o09AAXUVI=	\N	f	547ee12f-1859-4cbb-aa08-b26620a92852	Николай		f	t	2021-12-13	nkedrus@gmail.com	547ee12f-1859-4cbb-aa08-b26620a92852
200	pbkdf2_sha256$260000$u1ZfYUDGjCkiLv9ttVMOPF$UMvUzKALG3wa3ht6t9+u90XUrlCDnCoOumEVeZ5JYN0=	\N	f	800cf6a5-8cd7-4452-9780-d1e8881648d2	Сергей		f	t	2021-12-13	krypton21@yandex.ru	800cf6a5-8cd7-4452-9780-d1e8881648d2
201	pbkdf2_sha256$260000$V62UBx4gryQY42iZKTm6lN$KZ3EJmfQi+d6u0/iTJJACy7smoybiCMcJVWD++GuyQU=	\N	f	a98745ec-6399-412f-bb90-5f36e99c3928	Роман		f	t	2021-12-13	romsimak@gmail.com	a98745ec-6399-412f-bb90-5f36e99c3928
202	pbkdf2_sha256$260000$p1sPHLoFlLKll84aUCoHuv$98GtkpJJn3LEf9/iNWas9s9fgRI6BrEUumRZJYMeTZc=	\N	f	c41a7a28-b613-45ca-a896-06763aed3654	Максим		f	t	2021-12-13	maxrem714@gmail.com	c41a7a28-b613-45ca-a896-06763aed3654
203	pbkdf2_sha256$260000$iR2cz5nUzBRQTJmbep7KLy$qLHGxQq4uwVPoZ/BvzXVVBJTBGSFaof3dFg2yb5B8nA=	\N	f	6302d55d-c89d-4a44-9af7-16fe4db6fc54	Рафаэль		f	t	2021-12-13	rafaelvaliev@bk.ru	6302d55d-c89d-4a44-9af7-16fe4db6fc54
204	pbkdf2_sha256$260000$c10iGvuAiEWUzdAg2Jvbjl$D8CqffOYxBNT7QnW9poa1diBXwbkBp05yHiS+OudGkA=	\N	f	a9aa8e03-1c0f-4198-b2bc-657c253f541e	Сергей		f	t	2021-12-13	lsa9817455152@gmail.com	a9aa8e03-1c0f-4198-b2bc-657c253f541e
175	pbkdf2_sha256$260000$wgM8eVPpxrQ5VDgELZRqWK$JemKHiNnGoxbMjQ2BJvL9Hs4cYKeTYAFCW7guaFCVCE=	\N	f	face5f0d-4695-4338-8010-e465eccd8c6d	Вилена		f	t	2021-12-13	vilenanew@mail.ru	face5f0d-4695-4338-8010-e465eccd8c6d
207	pbkdf2_sha256$260000$hkd25AMsPOFvWkZM7svSVw$nidDFDgkzGzl5b9/WhOgT98IKoXugrEEfUlg4f6CZSc=	\N	f	118fd283-d824-47a2-afab-812c7e9354c5	Елена		f	t	2021-12-13	ele-kuzm@yandex.ru	118fd283-d824-47a2-afab-812c7e9354c5
208	pbkdf2_sha256$260000$dkAsdKyJ6GAY9a7Y6hd5SN$WxGMLgviU0tRKPq1jt+nioeIHPO2ipN445hflTdvLtY=	\N	f	41e88a46-1695-4f08-aae1-9e093705d4db	Наталья В		f	t	2021-12-13	val7@mail.ru	41e88a46-1695-4f08-aae1-9e093705d4db
209	pbkdf2_sha256$260000$hdsEpnMQWRZO6kqnmXeXJj$sF9Hd97oKmt0Ex9Yf9KH8jSVLNjhrBCuBe/3oV+73Mo=	\N	f	ca5a09e6-ce4b-4e6e-80fd-8fa677d5ff25	Александр		f	t	2021-12-13	tert01215@gmail.com	ca5a09e6-ce4b-4e6e-80fd-8fa677d5ff25
210	pbkdf2_sha256$260000$bMKVzChpBcNBPwvufwAOEE$Yb+NAq6r7QDBxXjlQb02B5gMr1lso4KpSG0bqmDiEKs=	\N	f	f83e6858-2be1-41fb-862a-b056f610112f	Павел		f	t	2021-12-13	P_leb01@mail.ru	f83e6858-2be1-41fb-862a-b056f610112f
211	pbkdf2_sha256$260000$lPGyqQCYL54giDVkmn2B9x$j65KtJhY2BQ2yXP+M23wVw9gYMoFX0rUi0/nAEFEFzY=	\N	f	08eb7cda-1e2c-4882-944c-6185c9b7e4de	Владимир		f	t	2021-12-13	malikov.vladimir@yahoo.com	08eb7cda-1e2c-4882-944c-6185c9b7e4de
212	pbkdf2_sha256$260000$D1Zbm85yhHUaVUG6jFknxN$xYLcEaohx2gpNspbDnm74N84aSLWlIhABhecRTdOq3A=	\N	f	df4c0f67-60e1-4522-8d3d-ffb1b347a097	Антон		f	t	2021-12-13	kyll3r@yandex.ru	df4c0f67-60e1-4522-8d3d-ffb1b347a097
213	pbkdf2_sha256$260000$6EWU5lnCvEBLAQZxxOnRXD$ktQUqw/c8n6ndERaffC3YGiGhoCk84qPkdN44T41JfU=	\N	f	71b4d0c6-94b1-4ab0-951b-361a4e734f5f	Максим		f	t	2021-12-13	vojna-mx@yandex.ru	71b4d0c6-94b1-4ab0-951b-361a4e734f5f
214	pbkdf2_sha256$260000$Zl9osibdQpFHY5RMnaKKtG$BQnqw5V3j/I6qdIfZvtvsjLb5CrL9sZzTczfiFlWFus=	\N	f	cb98d72e-f4bf-4e48-8f34-2c5cf250ed92	Роман		f	t	2021-12-13	roman.tsyban@mail.ru	cb98d72e-f4bf-4e48-8f34-2c5cf250ed92
215	pbkdf2_sha256$260000$UEOmdo0jXt9XHhuKD3Hgbm$uI/jKRHeseDGpgqH6Di893nadDErZee96QKzB5VHKlc=	\N	f	6417da21-de90-4131-b1b1-3c2047ffe58e	Алевтина		f	t	2021-12-13	jai76@yandex.ru	6417da21-de90-4131-b1b1-3c2047ffe58e
216	pbkdf2_sha256$260000$5RSOCR1b8hh14nfTLgHVoc$+WRytXN7VDFEOpcNzOdW8PQqLHwCnryczy6KdKOSV08=	\N	f	c7d7e1e3-c1f7-4bf3-9d81-11223f755831	Оксана		f	t	2021-12-13	nargile77@yandex.ru	c7d7e1e3-c1f7-4bf3-9d81-11223f755831
217	pbkdf2_sha256$260000$XD5QRMwGIYs30QTuM733Oj$dpcyqkcocYFF1MPp0rxi/bwZet2nfnu28VKlp+/ejLc=	\N	f	3a2ea6fc-5b94-45ca-85e9-bbe55338903a	Денис		f	t	2021-12-13	work.den1skofar@gmail.ru	3a2ea6fc-5b94-45ca-85e9-bbe55338903a
218	pbkdf2_sha256$260000$gPNzcddKZ7bUncKIrr9SoZ$is4s2Rps1RWouk55jtlDVIl0d4VWD8h0szrJU9HnTNA=	\N	f	4b07174e-58f1-4d9e-8f41-cc7140bccee9	Алексей		f	t	2021-12-13	dsidemello@gmail.com	4b07174e-58f1-4d9e-8f41-cc7140bccee9
219	pbkdf2_sha256$260000$ctKk2hhT8dGPha1ABHJh12$g6xn1zLc8wGNQmQ8o7r8j7GOHucoC5l6nW4X/8G9XwM=	\N	f	66903ba2-254c-4fec-b120-2ca0c4351ccd	Владимир		f	t	2021-12-13	772vladimir@mail.ru	66903ba2-254c-4fec-b120-2ca0c4351ccd
220	pbkdf2_sha256$260000$JuT0FmRexY8A896SXGBykL$jCNAx6Zgv0995n8CLe2gWYI3QIPDG0DZglDWFf6u6y4=	\N	f	05a1e465-d495-44d9-b8b0-822fdc71f87d	Дмитрий		f	t	2021-12-13	demontchik@gmail.com	05a1e465-d495-44d9-b8b0-822fdc71f87d
221	pbkdf2_sha256$260000$kQXVw850nMnMGY5Cgi9PVA$jvki7sbUV0BWGTUreQRi9DzuzvwIErZEqE7pu42Q5DQ=	\N	f	deee3900-c9da-46a9-be85-4b0060219429	Анна		f	t	2021-12-13	amyagkova@gmail.com	deee3900-c9da-46a9-be85-4b0060219429
222	pbkdf2_sha256$260000$ksMofOMiFFvyLMFngbVw6a$YS2Oe1ES8Gs4dgAdE7bXM6/Z8X3M8/SGi6a5wuZnaRU=	\N	f	8eb95af6-f0bd-41c1-ac2c-388d336edee7	Александр		f	t	2021-12-13	alex.2006-80@xn--ndex-43d7i.ru	8eb95af6-f0bd-41c1-ac2c-388d336edee7
223	pbkdf2_sha256$260000$8ysFDPARxtjx3PQAwwgsqK$5iZrsaR8HN10vZIgO0IUoDntIA21WipSTMvu/k7Iv64=	\N	f	147e4654-9f45-4999-b753-e910865a9951	Михаил		f	t	2021-12-13	karelinmi@bk.ru	147e4654-9f45-4999-b753-e910865a9951
224	pbkdf2_sha256$260000$fmEaIZd5LkKPw7LCxL4xxv$NeQwKN6m/EidmmIPPNcpXlc3enc4HtbkTjN3Nfrxx9A=	\N	f	6415bb6f-4844-4079-b00b-3d35a64fb0b2	Денис		f	t	2021-12-13	xfangx@bk.ru	6415bb6f-4844-4079-b00b-3d35a64fb0b2
225	pbkdf2_sha256$260000$eG23eVYS4YBE542U0MWsTR$eUXeFwAKac2c1uyy71zjzzkGJlP1I6vMdBydf7LoUvo=	\N	f	d87a1126-c453-4380-8d19-57c615fcd27b	Вадим		f	t	2021-12-13	vadesin@yandex.ru	d87a1126-c453-4380-8d19-57c615fcd27b
226	pbkdf2_sha256$260000$tKiPr8cBhyd1R9OxFwEmad$DuB4DQOoYSIcddWRj9Zf4oIpsnLYPXCe36Y9QWz38Wg=	\N	f	593df7b9-86f7-4b41-ae06-4c4746e82174	Игорь		f	t	2021-12-13	cheligor@ya.ru	593df7b9-86f7-4b41-ae06-4c4746e82174
227	pbkdf2_sha256$260000$9wdQSW40Z3lGoopHa5sckJ$AEq7I/aiDJn08htaVwCv0Dk0PQHaDa4E2ixBuN07uh0=	\N	f	0949c739-75d0-4e79-9b05-10819fa8ed40	Alex Gera		f	t	2021-12-13	thuglifestyle@mail.ru	0949c739-75d0-4e79-9b05-10819fa8ed40
228	pbkdf2_sha256$260000$Qaewjvo5sAsl3kUkzMIvbO$yVtY1cuwOH1jQohCIKRAzXWlGwSS92PwnZj7PKzwJk0=	\N	f	975d6a2b-3afd-4d94-b7b0-aa4cfe2f431e	Игорь		f	t	2021-12-13	isurkov74@mail.ru	975d6a2b-3afd-4d94-b7b0-aa4cfe2f431e
229	pbkdf2_sha256$260000$EKNjFK0ARO19mXtLctkgYW$9TqPXtMQkQ+5A2LyieuYQbv/+jw7UwD9yjmIXeG1xC4=	\N	f	75e56c95-bd2c-48ca-ae54-05b11bad225c	Александр		f	t	2021-12-13	Kchndr@yandex.ru	75e56c95-bd2c-48ca-ae54-05b11bad225c
230	pbkdf2_sha256$260000$qCul3rk39b264i2ZGJSUmv$qQKTYBsk/0cSqgBYDBy8oMnWReT+gaLc0TMnJrSAg9I=	\N	f	5c7840be-d118-4436-b491-4f45304d1d08	Алексей		f	t	2021-12-13	sedoff44@yandex.ru	5c7840be-d118-4436-b491-4f45304d1d08
231	pbkdf2_sha256$260000$errErZK8Od7MgcwTRJgyx5$YahmRz+UW0w6MeDwefPVMnxU/jIa0YObTqrrwoGLnX0=	\N	f	058f641e-779e-437a-b0c9-cbdd4ce90d5e	Рамиль		f	t	2021-12-13	zalyalov.ramil@mail.ru	058f641e-779e-437a-b0c9-cbdd4ce90d5e
232	pbkdf2_sha256$260000$ihQx05fM2ZtN7De9P8uR6F$igG+xj9OkRVMZ3l3hIRUsOAnGZdnFvlK9Xv3XxX9xuM=	\N	f	d2d3745a-37ab-4433-aad5-fb74ea09b464	Сергей		f	t	2021-12-13	sharonov116@gmail.com	d2d3745a-37ab-4433-aad5-fb74ea09b464
233	pbkdf2_sha256$260000$vWWYE0ewawUellrePjXUIW$6XQUrSgVjcVS49B0rp+pQsHO00T9k4uDyeQNfa3iQsM=	\N	f	e53ed094-f846-4b12-91c3-3e84377fa359	Ирина		f	t	2021-12-13	Lyadova.irina2012@yandex.ru	e53ed094-f846-4b12-91c3-3e84377fa359
234	pbkdf2_sha256$260000$MIdmAJtAJwkf7tHrcTXohP$D75geaMXXKpyrU7jqKx6ps9D34WIsVNEpKmKa1tPxiI=	\N	f	06b2575d-2bc5-4700-8228-1c826d75ece8	Владимир		f	t	2021-12-13	kvv7423@yandex.ru	06b2575d-2bc5-4700-8228-1c826d75ece8
205	pbkdf2_sha256$260000$J8kHe1QgD16mCsDgEnuIDx$YU6GQr7DVXw1Mm3SohOtDrR+4QFXh+p4l3yxN4lW83U=	\N	f	9337edb6-7a4c-48b4-8cc7-3b13bf4cac89	Владимир		f	t	2021-12-13	iterq1@gmail.com	9337edb6-7a4c-48b4-8cc7-3b13bf4cac89
206	pbkdf2_sha256$260000$opDt4eod9al3qFBI2SrUMi$ClkpJFeRoOlJIe/Z1TzYQJ05z3SV+kTI3qfOnY19vpg=	\N	f	1a03f31e-aef6-4357-9f1f-19100978e0d9	Трошин Андрей		f	t	2021-12-13	andrey.troshin@inbox.ru	1a03f31e-aef6-4357-9f1f-19100978e0d9
237	pbkdf2_sha256$260000$yNQpOakdcgfitcqAw5SnGI$JDxNTN+jlqeVNo4FNwj2b8CA/HfZMdFZEwgz1HiCU/s=	\N	f	81fb9d1f-191c-4709-9583-c84b569f05be	Илья		f	t	2021-12-13	air_hamster@bk.ru	81fb9d1f-191c-4709-9583-c84b569f05be
238	pbkdf2_sha256$260000$jxUtnJLRo23IaJ2utcOWJf$dxCXOH0Ja38KtLy7pMjY8CqkNYRxjsxkV+IB7IhSqbw=	\N	f	bbf6ec12-a8f9-4405-b5ae-c380c5051a7d	Александр		f	t	2021-12-13	tman6335@gmail.com	bbf6ec12-a8f9-4405-b5ae-c380c5051a7d
239	pbkdf2_sha256$260000$IaAumbvqXVo7ko16adPVcT$aXQnWgvROnhWo4FY8ORjokNPomA8DhUcEeUK2Zhyq+0=	\N	f	8be379e7-1d1d-4f25-9fc8-8a7a8e6abc35	Александр		f	t	2021-12-13	lelkin.an@yandex.ru	8be379e7-1d1d-4f25-9fc8-8a7a8e6abc35
240	pbkdf2_sha256$260000$BzAd8B2ruU7JHkfK8C378B$6KwIy6vjCBwEoFhC3FwZVulZvYCphYJy6kKyvAqS/f4=	\N	f	243cace6-8980-4cbf-9ee8-3a755b2a89c2	Георгий		f	t	2021-12-13	georgder@mail.ru	243cace6-8980-4cbf-9ee8-3a755b2a89c2
241	pbkdf2_sha256$260000$Auv9mafBv1BxCpDJchpbMg$hYWKkmXoIqC90HvhZUqFey/C9TQ+RoyhD+IP6HXHh2w=	\N	f	54718cad-b94c-4acd-a990-09f8a57cc349	Лидия		f	t	2021-12-13	lbubleynik@rambler.ru	54718cad-b94c-4acd-a990-09f8a57cc349
242	pbkdf2_sha256$260000$KM2vosoGirdk9WA77J0VpA$3atiNcqrRVWwu9v7gEBg6hn6kHAp5riAusPsp3xUy4U=	\N	f	d9670e85-387d-45b0-b64b-1f4b6e34d071	Евгений		f	t	2021-12-13	evgeniy.riv@mail.ru	d9670e85-387d-45b0-b64b-1f4b6e34d071
243	pbkdf2_sha256$260000$YGG5KtfJ3hNDT25lAnjGxJ$kGFVITq7fNAso8yR6ESD71hXOahuE+UAIzUkG6yfuxE=	\N	f	d9e3cc40-af9e-4ba0-8208-a6586a8e0f3f	Николай		f	t	2021-12-13	nikolay_1440@mail.ru	d9e3cc40-af9e-4ba0-8208-a6586a8e0f3f
244	pbkdf2_sha256$260000$10sVtmMOwWLzSIHSbCG0tY$q5CeGHs8HmF6SMoQG82Fa62DV6VMc/iz6QHM/jWgmBg=	\N	f	ce955401-adc4-41ee-a8e5-aa71ba1040fe	Илья		f	t	2021-12-13	ilya.burdin.99@mail.ru	ce955401-adc4-41ee-a8e5-aa71ba1040fe
245	pbkdf2_sha256$260000$qH0ohBM4m4GTJUH18BJaaI$tqGSiYAGcQBey3zsp6pSqYrQluPl6eAaO2PvfSrwhPM=	\N	f	10210bf3-b2be-48c3-94ea-dc919feec2d9	Александр		f	t	2021-12-13	alex.tzikunov@gmail.com	10210bf3-b2be-48c3-94ea-dc919feec2d9
246	pbkdf2_sha256$260000$ORXmoQQF1utX3KmdtQekQa$sUQrDBR1z869/Os+P7v7WCqipf0HzFA49owM56YnMMA=	\N	f	6316c299-d71c-456e-985e-5c2dee46c881	Павел		f	t	2021-12-13	safonov.p@gmail.com	6316c299-d71c-456e-985e-5c2dee46c881
247	pbkdf2_sha256$260000$XpUUKcoHTIJXgzo2mnSwAE$NmnGry6va/ID7oSbvaxS+tRMn1qWCHUV4e2sCOZKWCU=	\N	f	b45f7d13-5ddc-4185-bf11-a3084d4be44a	Елена		f	t	2021-12-13	poklad.e98@gmail.com	b45f7d13-5ddc-4185-bf11-a3084d4be44a
264	pbkdf2_sha256$260000$enOm2Ibbd89kQwLEFHtrbk$N2WxOLu1QW4cl3mresNHvN5jh760qho7m8Jh8CUBvjU=	\N	f	d2ccff22-8418-43ff-9a96-040b50ab9aac	Владимир		f	t	2021-12-13	vlad1546154@yandex.ru	d2ccff22-8418-43ff-9a96-040b50ab9aac
249	pbkdf2_sha256$260000$IgcWrcNCBskM99QajVyPjl$4B8KoCMeG1GVZRstcgsf9M8hRTsufKiuvZuQApDZ6f8=	\N	f	4e9c3eef-6b12-470f-bd5e-4183f2e45cbd	Александр		f	t	2021-12-13	saintt1991hq@gmail.com	4e9c3eef-6b12-470f-bd5e-4183f2e45cbd
250	pbkdf2_sha256$260000$sgAULzxy3RCAtj5HDWX3Xa$qOWMeg0iblPe+gK/Gnyqb4Av584Q6fuMOShAbriawrA=	\N	f	14f11280-a417-4601-bbfe-74431056435f	Иван		f	t	2021-12-13	ivankuzemin@mail.ru	14f11280-a417-4601-bbfe-74431056435f
251	pbkdf2_sha256$260000$8tJp7Kw7Ymgc1a7vzgxXcL$4tBI6MpR0AtYvY2tNEmYZii6a/9eW5fK6XdATJQPFHQ=	\N	f	b20ea8c5-e633-472b-9918-68fb519636ed	Вадим		f	t	2021-12-13	vadim.teplyh@mail.ru	b20ea8c5-e633-472b-9918-68fb519636ed
252	pbkdf2_sha256$260000$PIMjqKIEBaaHesGxRwPwXe$bMoocvtOKu0/tEPJAVUf+r8LRYIMxM16prrt6RcIb+s=	\N	f	d7f3f278-997d-460d-8c89-4aca2d5190cf	Руслан		f	t	2021-12-13	Galiev-investor2005@yandex.ru	d7f3f278-997d-460d-8c89-4aca2d5190cf
253	pbkdf2_sha256$260000$vR2FQsLyPsdyVebNoO8riV$Wwe+ABdkEe1yMf2io8cLbo2vyPu58tthZyfd9NZCwYk=	\N	f	0a6b4dd7-72bb-498e-a313-0926da2ef539	Александр		f	t	2021-12-13	vavakan@yandex.ru	0a6b4dd7-72bb-498e-a313-0926da2ef539
254	pbkdf2_sha256$260000$N7HrsnnyYmPhSBBrJh0ypk$I5ZaT2OkXTMWphGiuYkJ6PYoGQj8cDMYzf49tOZRBfo=	\N	f	09bffe44-8a65-4c7a-98f4-25d6b8c7ce54	Алина		f	t	2021-12-13	alinka.nice89@mail.ru	09bffe44-8a65-4c7a-98f4-25d6b8c7ce54
255	pbkdf2_sha256$260000$RfBbr4yQsYYUjfhZcdfnNX$SROIPmAToEH0BEbO1h7XQu9ZT+aHINM56X7v5/iReng=	\N	f	26f8b044-113e-4353-b61c-692fa1885a01	shamanfree		f	t	2021-12-13	shamanfree@gmail.com	26f8b044-113e-4353-b61c-692fa1885a01
256	pbkdf2_sha256$260000$m9NXDgHIOls4rSj13OsvV7$IjP2tuiZGDjTWhtsqBwPM1Ap8Eq8snUIBvNl8FX8mYQ=	\N	f	b355c293-643d-4938-aa5d-9f50ddfc18b9	Эдуард		f	t	2021-12-13	askue37@mail.ru	b355c293-643d-4938-aa5d-9f50ddfc18b9
257	pbkdf2_sha256$260000$C0zQizqxomBDlY1z0SfIk5$aQjAFUvlYZVnk9QtHEpXWIYK05kptrKmKrwzTbjK1Fg=	\N	f	394784fc-32e4-4da6-9cac-8aa583fc91ae	Даниил Богдановский		f	t	2021-12-13	daniel43skat@gmail.com	394784fc-32e4-4da6-9cac-8aa583fc91ae
258	pbkdf2_sha256$260000$HRhaB4VrRrBDPlpeo2gyGP$2pv4HqKaxd0P7uopsuXU6VuHzTEce+bQ4AYXa0VH1ME=	\N	f	751df7b8-40c6-4634-b6da-fd3569a05a3a	Дмитрий		f	t	2021-12-13	dmitrynpoltavskiy@mail.ru	751df7b8-40c6-4634-b6da-fd3569a05a3a
259	pbkdf2_sha256$260000$m0wDD1OZvTOaZ6VXoSmkSC$8RugUznTx9EW5BAYytxKsu6GfY1g0m83JFe0Jz/9rxc=	\N	f	30645daf-bb8d-4dfe-9608-e54296a09cd5	Рамиз		f	t	2021-12-13	ramiz8254@gmail.com	30645daf-bb8d-4dfe-9608-e54296a09cd5
260	pbkdf2_sha256$260000$2eK5uRMqbbTQuLvP1YwHnE$UNllwIEG/ihBL2Piiha4Ykb28YQCFR+F6j5e1dUaXk4=	\N	f	f466d938-c60b-4e76-9277-4ec420200a35	Дмитрий		f	t	2021-12-13	ifactorplus@gmail.com	f466d938-c60b-4e76-9277-4ec420200a35
261	pbkdf2_sha256$260000$2FCt5uelPmuxzPn0TmYnsh$zIKzKwr/3FOr5awCmDKlC+sBNpB6lRni+6D7lqtu+k0=	\N	f	510f1806-06fc-450a-bd7d-2c459605f31e	Виктор		f	t	2021-12-13	Skif38@mail.ru	510f1806-06fc-450a-bd7d-2c459605f31e
262	pbkdf2_sha256$260000$xL9JStBNlWwjSv47jTjPlx$RrUwz0Yua9EUkaDUnMFDjciLr0wWAw7Uj/dI+Xha6sY=	\N	f	67cc0038-43f5-49be-8089-273d97042f31	Станислав		f	t	2021-12-13	S.K.Homutov@surgut.etagi.com	67cc0038-43f5-49be-8089-273d97042f31
263	pbkdf2_sha256$260000$TuEzGHJ5pq6kAP6ONyfnXO$kWwsHxr3BdxGny9k7UKv0mOQ+ONwwGQ4zSSVbiVnFNI=	\N	f	401ec846-8760-4c5a-ba0c-b2e3b824cae6	Эльдар		f	t	2021-12-13	eldario29@ya.ru	401ec846-8760-4c5a-ba0c-b2e3b824cae6
248	pbkdf2_sha256$260000$AcUX2gbCAekzZNfT99yCdV$besb71xs8iJ5YSBQkI2zgXSOoI7T3Ro+cow2jDC51zw=	\N	f	bfa47dc3-e119-4229-b13c-f8026a543bda	Yana		f	t	2021-12-13	yashka7@mail.ru	bfa47dc3-e119-4229-b13c-f8026a543bda
235	pbkdf2_sha256$260000$pu1WF22djPl1Y9rXd5fiBg$Qiq4StK6iXwdcPopQaaG0cPWizHoe0fEclkpoPi0Vs8=	\N	f	1fb3c7e6-85fd-4be2-bd46-f89645d17f08	Вячеслав		f	t	2021-12-13	ram174.89@gmail.com	1fb3c7e6-85fd-4be2-bd46-f89645d17f08
236	pbkdf2_sha256$260000$NAsIwSUDuPwCepss0JDIQu$LTnTySSuza6AjmEU9UiBomU0vZjTu/huBw/szZV2GqE=	\N	f	955114b0-5412-4a33-b1e7-89d6f5bc075d	Сергей		f	t	2021-12-13	Gamer6093@mail.ru	955114b0-5412-4a33-b1e7-89d6f5bc075d
267	pbkdf2_sha256$260000$obMjLVUAYff4ym2cALeVVX$Z3TZ/2WkmzvyqsCMEDXd6YRcBNZDOkUiCtCZhsUWI2I=	\N	f	1e04f41f-b58f-4d6c-894c-6871e728c9f7	Александр		f	t	2021-12-13	prosvirin1993@bk.ru	1e04f41f-b58f-4d6c-894c-6871e728c9f7
268	pbkdf2_sha256$260000$CMzPK5XcBVrbTWhg8l9ahm$9ToyyNi2ndnZLrRCUDKjBNpFyLumqAuSnuzekcdbv5w=	\N	f	cee0830e-eab5-41ba-aff8-63708827d12e	Евгений		f	t	2021-12-13	e.gridnev@gmail.com	cee0830e-eab5-41ba-aff8-63708827d12e
269	pbkdf2_sha256$260000$0oFdtAEo8W4cRp5thLMxqJ$UmHLVN9urr80qY+7y6n6SRggGg8yXOUvO7rxW2KS1Xc=	\N	f	4c4b11cd-1620-4002-b1a8-a141874e6558	Виталий		f	t	2021-12-13	great812@mail.ru	4c4b11cd-1620-4002-b1a8-a141874e6558
270	pbkdf2_sha256$260000$dfb0gwoAt7VFT7XYxUCqbt$DKfC2eYfnb8h1NWTijwmi5GM+l9zyBzVqgBPbqICmvk=	\N	f	1483234e-e100-4f12-82fa-e48a59e032f2	Sergeeva Larisa		f	t	2021-12-13	sergeeva@contact29.ru	1483234e-e100-4f12-82fa-e48a59e032f2
271	pbkdf2_sha256$260000$I8u4cWm6CZ28NMGAhAfaG9$na5Q68WDMjRlBWv3YAQVSOXCegaUDC/o3rc4A36oDhc=	\N	f	a4a82d63-5deb-40a9-92d7-35ee7a48c23c	Кирилл		f	t	2021-12-13	kuchev00@bk.ru	a4a82d63-5deb-40a9-92d7-35ee7a48c23c
272	pbkdf2_sha256$260000$53gUShk88eBtkift6WEHFd$tayUwn5D9zYnUts1INbruN8ZhRaQpCpE+uctOwj4MQI=	\N	f	90ce2d52-8c09-4af7-93c0-53934f1c45f7	Анатолий Коленов		f	t	2021-12-13	kolenoffcorp@rambler.ru	90ce2d52-8c09-4af7-93c0-53934f1c45f7
273	pbkdf2_sha256$260000$plyh06PNPAgBrprrt9exc7$gkO/ViUUAb7wzdLJGJ17z0bhQfqc/CyIV0JBXOJaduE=	\N	f	6475e13b-a95f-44ae-9129-08fa58c4c347	Владимир		f	t	2021-12-13	vtretyak7@gmail.com	6475e13b-a95f-44ae-9129-08fa58c4c347
274	pbkdf2_sha256$260000$OMx1FMV3kYTYizAcUcp0KS$KtXqc4rjyAWywi/MhvAE7VtIV79dUhLI9AMnfYjUaMY=	\N	f	d5a8c675-3668-4919-83fa-1a6d2b25faa5	Андрей		f	t	2021-12-13	dark@darklab.ru	d5a8c675-3668-4919-83fa-1a6d2b25faa5
275	pbkdf2_sha256$260000$9KQVolfVKMbOnUUO4Ml6L5$EmvKxipV8LIjA++/RXyGpncy+628fiOqPYdwQuPEI30=	\N	f	d57634ba-2842-4266-ab15-d3b64eb9eea3	Владимир		f	t	2021-12-13	limperov@yandex.ru	d57634ba-2842-4266-ab15-d3b64eb9eea3
276	pbkdf2_sha256$260000$W5aRr3sk9ILul12ZRmOYyf$mIvjMZSsc/Ot6QD7n1XhlUt5bFWP9gMxrBSvuLM6xV8=	\N	f	0cab5f3d-b4e7-4432-a3c8-8ebabf2d226b	Руслан		f	t	2021-12-13	garaevr@mail.ru	0cab5f3d-b4e7-4432-a3c8-8ebabf2d226b
277	pbkdf2_sha256$260000$XmsH1dQkQKcvO2jBx84Axc$2idxHjUrjmo1/kdopCmuh1vT7eDHS3jipgp7eaiOaYo=	\N	f	6b707c6e-4050-4a36-9e5f-56c422f4b9c9	Анна		f	t	2021-12-13	venda-usoltseva@yandex.ru	6b707c6e-4050-4a36-9e5f-56c422f4b9c9
278	pbkdf2_sha256$260000$IQEVwXoBeO6cVn6CuTiPMu$lnSoDXs+p695H6WFox2ntWcoRGQ3NKbUDlOcBa6IwR4=	\N	f	f65ad28e-76a0-41a1-8523-232ba1da05d8	Александр		f	t	2021-12-13	sssr-zhiv@mail.ru	f65ad28e-76a0-41a1-8523-232ba1da05d8
280	pbkdf2_sha256$260000$Q2HgOaKoTVSnj63VnjHKDV$BaJuARfh9KdI69VN3xH0ndgapLn43ErPbTnOhz8dy8Y=	\N	f	2d52e64b-2b0e-486b-82c5-952dc71f2e39	Егор		f	t	2021-12-13	esdeev@gmail.com	2d52e64b-2b0e-486b-82c5-952dc71f2e39
281	pbkdf2_sha256$260000$3eLOsNLHZBfM4943DaXB1d$HWS3wBz9BV5UBnJFjqmxmonzmQng9ngy9npg75l3ock=	\N	f	41604728-d48b-412e-8929-280cb21f8d07	Ольга		f	t	2021-12-13	olich.89@mail.ru	41604728-d48b-412e-8929-280cb21f8d07
282	pbkdf2_sha256$260000$sbusVtVWjuV8xdDPsFYQtY$QfYA1WWbTfPcNt2jresntcs51VzecIOft1Ki8WrgmZQ=	\N	f	e91f150c-f495-40f3-96bc-894c0f31ce79	Евгений		f	t	2021-12-13	evgeniy.reznik@dasglobal.ru	e91f150c-f495-40f3-96bc-894c0f31ce79
283	pbkdf2_sha256$260000$oxeEFPIsqPyi8PPIkBArFI$W1x7e+e7H/u/48Iz3zNvWZWcHYwoJ/DGcebq6wXcNHw=	\N	f	d4ed53af-7689-4791-a6f8-3d70df0cae4a	Елена		f	t	2021-12-13	corelline@gmail.com	d4ed53af-7689-4791-a6f8-3d70df0cae4a
284	pbkdf2_sha256$260000$QzkUu3VCWeRauLz80yNIDQ$MjNIOJVh3x/RBEwMRraRIfbqqf//KpzdyIGm9UEgPVk=	\N	f	d9409c1a-92a0-42f7-b02a-538f3717918c	Юрий		f	t	2021-12-13	motorolla@tut.by	d9409c1a-92a0-42f7-b02a-538f3717918c
285	pbkdf2_sha256$260000$OJeszcpoo6psljV5yo7uVw$pFdIcjrVSO1iZbIQiYufyU+fFtzt3vVyRJK6ENUS89E=	\N	f	1bb3b356-4395-49f5-8171-8449c496e19e	Виктор		f	t	2021-12-13	victorbear@mail.ru	1bb3b356-4395-49f5-8171-8449c496e19e
286	pbkdf2_sha256$260000$C7zEli7bEAG2qRCuKmSvvj$MHr22XPa3SlD+d3fEl033nFUZwVOSJZYmS3Lo6C3+z4=	\N	f	902e43ea-f16e-4895-bf2e-728fdb5c0991	Феруза		f	t	2021-12-13	amankulovaferuza@mail.ru	902e43ea-f16e-4895-bf2e-728fdb5c0991
287	pbkdf2_sha256$260000$BrMj2YEyBqeEwLTvUMBNxe$NHUNB8e11Sn+YCyX9QvPr713gPFVbsP8cBXLKMApUG0=	\N	f	4411b740-fad9-44ac-8b3a-519156882c14	Алена		f	t	2021-12-13	ruelena71@gmail.com	4411b740-fad9-44ac-8b3a-519156882c14
288	pbkdf2_sha256$260000$hgSqVdg6P6OZ4B8eAaS9Rg$ZJ31qqC1R6ctkVg/bNVfYOxuv71gNPaOlLHajAy4knU=	\N	f	0275fa57-aba6-4401-bd6c-f69781d1e103	Дмитрий		f	t	2021-12-13	vasilievdy.90@gmail.com	0275fa57-aba6-4401-bd6c-f69781d1e103
289	pbkdf2_sha256$260000$jFzaOHxtbPWONexQmT3qWB$Ddx9VY7Df7T7fNRGn3NWkShq025U8kg0A2/FeavtNv4=	\N	f	4ff6c994-9ace-4986-b2b5-497f18060df2	Елена		f	t	2021-12-13	e.kuragina2011@yandex.ru	4ff6c994-9ace-4986-b2b5-497f18060df2
290	pbkdf2_sha256$260000$MTNf554rJ0jff5LDh6AUHU$EVA8drUv/JiVgLiozassK56SBuuVlO3OQwfQshSuEgQ=	\N	f	45a28e40-1408-4cb5-9965-ea0da8147fc7	Олег		f	t	2021-12-13	lego601@rambler.ru	45a28e40-1408-4cb5-9965-ea0da8147fc7
291	pbkdf2_sha256$260000$bw0m46rVL9Zifsj4R94mZn$0CLprnhgeRBpp2hrCTw1041Gue3c+wJ2WIwPwF1aLSI=	\N	f	8289ba93-1b58-43be-bb23-6e913ed05a12	Евгений		f	t	2021-12-13	jevgenijs.golubovs@gmail.com	8289ba93-1b58-43be-bb23-6e913ed05a12
292	pbkdf2_sha256$260000$6XViSIKooJy8xCVkrkHgZB$5kvWL/GfjY2i1iCl8DxwENo4sEbYgWks+lb/+sNrm/g=	\N	f	857c3e9a-d672-4825-95f8-ea7ea6641c28	Иван		f	t	2021-12-13	bazyaev.ia@mail.ru	857c3e9a-d672-4825-95f8-ea7ea6641c28
293	pbkdf2_sha256$260000$C9WOFQbpgvPVShYBCRH5eS$WjiVcwuIBH3TKgiaHaeO9PzZ6fBikavN18mJDtPacbM=	\N	f	fb080ef2-225f-40a1-98b5-c24c23b33f2a	Александр		f	t	2021-12-13	aleksandr-oskarev@yandex.ru	fb080ef2-225f-40a1-98b5-c24c23b33f2a
294	pbkdf2_sha256$260000$UAnY5jVtvxNBrPKByKtybe$/NcAVPFnHlbWppr53ITL/gNkrnNGid4n9tNhoyJMTpI=	\N	f	742c2084-43dc-49fe-88ba-fcccf4025ec8	Владимир		f	t	2021-12-13	vtalynev013@gmail.com	742c2084-43dc-49fe-88ba-fcccf4025ec8
279	pbkdf2_sha256$260000$xIOpcEggFpHvS2eGaAJToH$oYGTN6c+ooPhzBhvnj+/zrgj/8CWbAuo+BEbxVXSUS8=	\N	f	16dc1dde-2905-4411-b639-d0ab464c3b16	Тимофей		f	t	2021-12-13	tliomm@mail.ru	16dc1dde-2905-4411-b639-d0ab464c3b16
265	pbkdf2_sha256$260000$FjA9Mg3mQWrEyIUBDLWznO$6rHwhsGl/2ZMIXDnWCNJrh2NOXj3qn04oqlAd0JFalQ=	\N	f	4455322e-88c6-4196-b7c3-5ab8bc7cf2e8	Александр		f	t	2021-12-13	agayants@bk.ru	4455322e-88c6-4196-b7c3-5ab8bc7cf2e8
266	pbkdf2_sha256$260000$eCLuGY48LXPOIOIb9AzbiB$z6c1ToXBtrEVZ3jWdxON9CUggYus1rpL4IZhrRvfqds=	\N	f	dcea39cc-8c29-4bfa-a1d4-fda98cb12b77	Кирилл		f	t	2021-12-13	kirill.don@yahoo.com	dcea39cc-8c29-4bfa-a1d4-fda98cb12b77
297	pbkdf2_sha256$260000$YKZchjbBgwyJaTgeOuBFH0$6lkbAXJWK3E2ivcXiXFJ52/NnFTC0k869iLjRp3yJ+g=	\N	f	c079a9ef-f030-4f62-88b7-7305bcb6ef30	Никита		f	t	2021-12-13	kostevoy@ya.ru	c079a9ef-f030-4f62-88b7-7305bcb6ef30
298	pbkdf2_sha256$260000$RJEiguYP74NhpC4WDN0Eer$9PG1pS8HErnK7csQGn4l2rFSVbLgkY/tu+xIg/3ZsuQ=	\N	f	0cb75d7f-6c7a-4b8d-914b-abb2af6bfad8	Виталий		f	t	2021-12-13	vitaliy.bar2201@gmail.com	0cb75d7f-6c7a-4b8d-914b-abb2af6bfad8
299	pbkdf2_sha256$260000$zXET7Z1HZsGM5M7XD05LJl$oEIq9kD3ST8F2QCcMGiQBvMSjHUlvEwg/u+pknU3GVk=	\N	f	8651e491-9355-451c-beec-082e4d57d3b4	Александр		f	t	2021-12-13	fcsm_perovec1@mail.ru	8651e491-9355-451c-beec-082e4d57d3b4
300	pbkdf2_sha256$260000$Ml8ZBOPnVN6XPu9C8ET6wG$9XXny6MxZDN0WgEJqEd+kU0YgicVxkScAaWoUR9F8s0=	\N	f	a5f6b64e-a308-41ef-a593-94742c4b5e8d	Андрей		f	t	2021-12-13	78andrej@rambler.ru	a5f6b64e-a308-41ef-a593-94742c4b5e8d
301	pbkdf2_sha256$260000$Th5hweXjyT8sdRmt4TKgcZ$udFtMQCTmZJoOXOc3yg611TRIz+79L0zpvMCDO5A7EI=	\N	f	7d20f2cd-8ed8-4a24-aa2f-f5d200d87e63	Павел		f	t	2021-12-13	pbakashin@yandex.ru	7d20f2cd-8ed8-4a24-aa2f-f5d200d87e63
302	pbkdf2_sha256$260000$dE1xBG9Hz1BY9XA6zbBMfu$9fVHZLo6oGlW7l4ZKY5FOWwlwlI2uXK6XhBgyuq/WDI=	\N	f	d1f73a22-dd18-4dfa-bade-3429710b745f	Иван		f	t	2021-12-13	aheeles@gmail.com	d1f73a22-dd18-4dfa-bade-3429710b745f
303	pbkdf2_sha256$260000$RpSyvFvF4nYIw5ucAmvdr8$sq5WwYmmaEtA5J4+AEOlmTsb1o21JHQFPDjwO8vfuqI=	\N	f	5e1af69b-df05-4755-af13-4c664e578b09	Руслан		f	t	2021-12-13	haliullin.74@mail.ru	5e1af69b-df05-4755-af13-4c664e578b09
304	pbkdf2_sha256$260000$OsTr4Svkyp4qAgWeHqsjLA$mZp/bY3U9HpEl2MJ13CLKu3dhh2nxp7MvSB3eYEN2+A=	\N	f	2da31aea-6569-4551-990d-40eb9c6e7a91	Максим		f	t	2021-12-13	autocar12@sapo.pt	2da31aea-6569-4551-990d-40eb9c6e7a91
305	pbkdf2_sha256$260000$ByjukclVuNTlzjitLvZXkb$gI3Ll4ae/ZEbDln9hz+6C/6xn5CQV0ohD98wNDY/JXg=	\N	f	268ed053-87e8-42ce-a6ee-6e86be74e46e	Борис		f	t	2021-12-13	varganovb@icloud.com	268ed053-87e8-42ce-a6ee-6e86be74e46e
306	pbkdf2_sha256$260000$O4DScwsjIUfg3P6yTWtP21$83nFruAwKTLBZ5W1YZNGgX//4+Cw5uAU0M2Oap/vj90=	\N	f	16615c0d-a45a-4ab8-9405-71297b651550	Влад		f	t	2021-12-13	disp99@mail.ru	16615c0d-a45a-4ab8-9405-71297b651550
307	pbkdf2_sha256$260000$7QPY9SLnDZVTlqOf0l5Re9$dEAxGZ1/j62p7k6YJsrEJ3j6DYeRIIAWtmPmoI5PulI=	\N	f	bf4ea35f-897e-459c-9890-512ef5f47423	Георгий		f	t	2021-12-13	1974446@gmail.com	bf4ea35f-897e-459c-9890-512ef5f47423
308	pbkdf2_sha256$260000$kJWTdpDycwbS8sWES5iN0u$5HjiJB64GS0Dg7AzuiZPN1YKW/VOEHTAv2FckJAAYT4=	\N	f	68de1b72-d900-4a8f-8ed2-f50d7fc4a867	Дмитрий		f	t	2021-12-13	Egdmitrij@yandex.ru	68de1b72-d900-4a8f-8ed2-f50d7fc4a867
309	pbkdf2_sha256$260000$MqKzKed3s9zlfVpXemRT3n$zwY1cWL2geg/eZ5LoyfM+800vOkJLtIbIizF3uyfHhs=	\N	f	0db20bff-06fb-4861-a631-dd95f9d83da7	Вячеслав		f	t	2021-12-13	tdrubin18@bk.ru	0db20bff-06fb-4861-a631-dd95f9d83da7
310	pbkdf2_sha256$260000$gwOAwRMYgNJ3qUxJCEjgpy$cct+8x7sIsQQAzNRGytGWo0gm5TLqraETqlWdg1Y3rU=	\N	f	d17cc922-81ff-422c-bb25-c3e022d32538	Дарья		f	t	2021-12-13	daria.kravetz@gmail.com	d17cc922-81ff-422c-bb25-c3e022d32538
319	pbkdf2_sha256$260000$InMs2c6hNJKoMeN76yYEyI$z0RV6/RAQYut35YqzzWtyeE+qSlx9Jq7cr4GZ1a5tVY=	\N	f	a167ee72-4a37-4716-99aa-7a1c6f7b910d	Александр		f	t	2021-12-13	alexgruzdev87@gmail.com	a167ee72-4a37-4716-99aa-7a1c6f7b910d
312	pbkdf2_sha256$260000$nGCjTeTPbt1G7MoNx0NDYC$QVEVg7rLrbbe13L6mPi+ITdAZsY/UldXxqENYAdztHk=	\N	f	c9057aea-89c7-41e6-81ce-cf8e8da2046e	Максим		f	t	2021-12-13	max_rom@inbox.ru	c9057aea-89c7-41e6-81ce-cf8e8da2046e
313	pbkdf2_sha256$260000$uD6xwV2VM05UdVloNAqf3C$qKE19bo3xWXSZXNnWlUWASvOTFky5GsOyNRHcxMbXeE=	\N	f	af61e6db-1605-4f74-bd93-35463490db92	Кирилл		f	t	2021-12-13	kirillefremov94@gmail.com	af61e6db-1605-4f74-bd93-35463490db92
314	pbkdf2_sha256$260000$Ajk2qvIDWksb2gAeULzf9e$qLKusH0l07bdnH/eU/2Cu7Pf5B4MfWBwo5cGY8bPRB4=	\N	f	13f23872-68f6-4a76-aa78-da2ad1bbd167	Юлия		f	t	2021-12-13	smolina.julia@inbox.ru	13f23872-68f6-4a76-aa78-da2ad1bbd167
315	pbkdf2_sha256$260000$kdQY3aKhoOAedpXRSte7XP$p3XO9GvIRxIK8fuIBnsrjTakwwnkXS53QKGuz5YLEPo=	\N	f	63c49efc-0067-49de-b680-539595a74599	Andrey		f	t	2021-12-13	info@sibtsc.com	63c49efc-0067-49de-b680-539595a74599
316	pbkdf2_sha256$260000$N6ihUUxA36herX3JSnLkJn$rJVZOH5EiD+MGgIXZndZkrmWAQ8jwHpl64cjg+PJSzM=	\N	f	e3a2b8c3-30d9-43a3-9e87-e4f62696275e	Андрей		f	t	2021-12-13	drewbogor@gmail.com	e3a2b8c3-30d9-43a3-9e87-e4f62696275e
317	pbkdf2_sha256$260000$YZ6mRTOqmLtTPydkVCYBSt$JxY31KQvTn3ZfKEtXPc3i50H0+UcI3rrSxCIxYBineQ=	\N	f	d75978ff-7c73-42d0-a46e-ba6d5234eb85	Алексей Кулик		f	t	2021-12-13	alexeykulik@list.ru	d75978ff-7c73-42d0-a46e-ba6d5234eb85
318	pbkdf2_sha256$260000$J29sWXZNSD2R3UDsUXQXZt$uq5T8qdz9+k1KrDlztTxK7TFl5adAjoStMwxRJVlfTM=	\N	f	51c39066-8150-4a4f-a0ee-810862c4d1ff	Ivan		f	t	2021-12-13	mirnov199@gmail.com	51c39066-8150-4a4f-a0ee-810862c4d1ff
320	pbkdf2_sha256$260000$73CkOOpt8IptCAMHa3yov3$QtseglSSWPZvKmhKUO/pR5GzmSF3knF8MrZGSLFqdDI=	\N	f	02fec24c-4b10-4507-8661-449364d3719d	Анастасия Соломахина		f	t	2021-12-13	anastasya2194@mail.ru	02fec24c-4b10-4507-8661-449364d3719d
321	pbkdf2_sha256$260000$an3W5B22brSuYBlo4YOoLO$IIayaU46v/FjRZM9VC5Ou2x17yM3HnSZkgNBv4mRn6I=	\N	f	e08da94e-0538-402e-88dd-3aff8a772273	Сергей		f	t	2021-12-13	lskazan@gmail.com	e08da94e-0538-402e-88dd-3aff8a772273
322	pbkdf2_sha256$260000$luCnnLWEI5R95QZYMKvpNg$axw+KENp+WwSGu69cILMBI3LLvqnYwbgtMAYF+XieUM=	\N	f	2b7b4331-0b27-4a49-9b5f-548984a0ff2c	Евгений		f	t	2021-12-13	krasnodar031085@mail.ru	2b7b4331-0b27-4a49-9b5f-548984a0ff2c
323	pbkdf2_sha256$260000$zCj5U6J05PEiurVOqljKkg$9D4MWkCjzssE6E9+FS/H0odLl8JXmpEGX62pGgNBURE=	\N	f	563dbe99-68e0-4973-a2a8-76e0548d7a7c	Vladimir Malkovets		f	t	2021-12-13	vladimir.malkovets@gmail.com	563dbe99-68e0-4973-a2a8-76e0548d7a7c
324	pbkdf2_sha256$260000$UErnFCPqQLGUBhMAIU5r6b$ht8U7BhfEFDMpn1D1zBGFHML3mjLKgLxrqsyBahdLD8=	\N	f	1d741612-86c5-4dd0-bb53-7eed3580febe	Игорь		f	t	2021-12-13	girax83@mail.ru	1d741612-86c5-4dd0-bb53-7eed3580febe
311	pbkdf2_sha256$260000$TyVmKGmtvCB82Ty6g1q6oZ$rnyD+oNHXchhzWA0qyETBdf/rEwbZLorHwcQY1F2/b8=	\N	f	76b050e8-f235-4a66-9a4b-8474e56f1e9e	Батырхан		f	t	2021-12-13	batyr1306@mail.ru	76b050e8-f235-4a66-9a4b-8474e56f1e9e
295	pbkdf2_sha256$260000$V60kHkZr045h5LBPxLjibK$UYyfdZYJeiFBCkQZSky4M83Eke0ohhVZ7WZNoPsskII=	\N	f	9686f193-5d20-4711-a4e5-584655f03e87	Анна		f	t	2021-12-13	fannyutka@gmail.com	9686f193-5d20-4711-a4e5-584655f03e87
296	pbkdf2_sha256$260000$TMOPjoEfSNx1Gi6xpPOUpO$GKm+IjWqVVElUO/MoRWtk0n9F5aIvf/dSxmOW8cUyKI=	\N	f	63649c05-9eac-4f4e-b493-df5126af1164	Анатолий		f	t	2021-12-13	soya83@mail.ru	63649c05-9eac-4f4e-b493-df5126af1164
327	pbkdf2_sha256$260000$Qf8hXvfjnHVYm7rBsR2EUK$Ow/F3pAhYHyWxPd2F48NgZrp9jWpug6Lke8Kly/S7Pc=	\N	f	e7dcf317-6d3b-4125-b1a1-b57dbeda0c44	Андрей		f	t	2021-12-13	zelofflab@yandex.ru	e7dcf317-6d3b-4125-b1a1-b57dbeda0c44
328	pbkdf2_sha256$260000$LgDe12sLOXEr12AI2BWQQn$08Z83vd8wFmnpkMQHXQW1BEbAXTBEM33oQ6juPJqEZk=	\N	f	bc8d5af6-c23a-4612-b1ef-c50ddd6c86a9	ЕЛЕНА БУДНИКОВА		f	t	2021-12-13	as345907@mail.ru	bc8d5af6-c23a-4612-b1ef-c50ddd6c86a9
329	pbkdf2_sha256$260000$zqfaTGmV3NksoxpOxrnqsl$gGeyFmfhU1SplhqpKS+eQhJK3WH9XLxmJQq5XaqncIQ=	\N	f	39dba17d-7ca1-4d32-88f6-8a0aa025ec0f	Анзор		f	t	2021-12-13	anzor454@gmail.com	39dba17d-7ca1-4d32-88f6-8a0aa025ec0f
330	pbkdf2_sha256$260000$AgJ9TY7FQFxPoTWEJFslUa$84UWUBCxjNr8wtA03UX7F1F2BYB5ko00osHYIakPg/U=	\N	f	78f71898-6a02-4df5-a122-31ae265eb830	Алексей		f	t	2021-12-13	alex_c05@mail.ru	78f71898-6a02-4df5-a122-31ae265eb830
331	pbkdf2_sha256$260000$qlk3GBW8pBuyVSxdgPPyFQ$IxVexQ5hBSZRtNEi33JIMnn1wLNnqMEfqp6DEAIc+lo=	\N	f	529cbfa8-5a3d-4fc8-8375-70d79a2c40f5	Никита		f	t	2021-12-13	poni030801@gmail.com	529cbfa8-5a3d-4fc8-8375-70d79a2c40f5
332	pbkdf2_sha256$260000$m2wDmGPupBJruy4L0RE2oR$OeEMMxyqlwx3sj1DfmA2j6xPQUyJUHcVcXF/+SRwDYI=	\N	f	23235bc3-ef00-4778-9b70-d5be80cc14d2	Борис		f	t	2021-12-13	fedoseev@micmedia.ru	23235bc3-ef00-4778-9b70-d5be80cc14d2
333	pbkdf2_sha256$260000$zazofCDop5UzrQ1ZSYUyqt$eUWe5nHl26UlEsXZ6Z+PTgSW1J7BvzOULi/H5Je+mUc=	\N	f	8c6fc82c-8ec2-4e7e-b23b-e3aefc10f366	Bakhodir		f	t	2021-12-13	bakrot@gmail.com	8c6fc82c-8ec2-4e7e-b23b-e3aefc10f366
334	pbkdf2_sha256$260000$fBbUJef65r6fBhHj7kWo9N$qruUSEHjSzx6skg9hRcJAYRiLzKFsf7TTDvetsC70GU=	\N	f	ff697584-19e9-4136-a6dd-36c028b405f8	Oleksiy		f	t	2021-12-13	561335@gmail.com	ff697584-19e9-4136-a6dd-36c028b405f8
335	pbkdf2_sha256$260000$vUFGNZCkEXiFcPxDKtEpS9$z+Fcgva08R+3md8jBlwzBprG34EHi6fxH06C8WcnvdM=	\N	f	b393a875-0bbd-4c2f-b060-059be640ef27	Павел		f	t	2021-12-13	romabest2@gmail.com	b393a875-0bbd-4c2f-b060-059be640ef27
336	pbkdf2_sha256$260000$ryg0ZKGKq5T9ClUQn8A7HL$FiErCq23E1O+wTjfzvGUe+K2jnrnfLO6Qw1x2HNRU4I=	\N	f	ab9fa13d-e588-4b8a-bcb0-c469143a15df	Александр		f	t	2021-12-13	alexsandr.sorokin23@mail.ru	ab9fa13d-e588-4b8a-bcb0-c469143a15df
337	pbkdf2_sha256$260000$4lVg1pH2fhCj8JSZDN9B1R$KK5wE4Wc2OX/W7mBXyX285sKpSjjs+bsVGipvD00WxA=	\N	f	a8c9bce2-4ace-46b9-abe8-6ebe0ac34830	Андрей		f	t	2021-12-13	andrey.y.voronin@gmail.com	a8c9bce2-4ace-46b9-abe8-6ebe0ac34830
338	pbkdf2_sha256$260000$XYFHOKaX7hApIn84KOE3XI$io5MGy/C8FVALUKuYM8zXsVUxLpwpgHVC/OcK0CRpOU=	\N	f	5a8c6561-25b4-4fef-acf7-f8e6b6d8a529	Александр		f	t	2021-12-13	rusanchic086@mail.ru	5a8c6561-25b4-4fef-acf7-f8e6b6d8a529
339	pbkdf2_sha256$260000$RNkpkBdDo7WM0XQhqDLESJ$CeE2yhQtmKzuUQMpN41zv0VrN35KU3pBhY5Ntmrc9FI=	\N	f	bd2455fa-8b0f-4173-a3a5-86a1536e9d86	Надежда		f	t	2021-12-13	elanskaya@inbox.ru	bd2455fa-8b0f-4173-a3a5-86a1536e9d86
340	pbkdf2_sha256$260000$PnyyKyai2OETWb6eA9oh6I$0ABsONRThirF0GL7KweGFIb2O7Sza5Jm06QJofMDjgA=	\N	f	130cd5a0-0054-4703-a602-077bff5b6a12	Андрей		f	t	2021-12-13	perekryostov@gmail.com	130cd5a0-0054-4703-a602-077bff5b6a12
341	pbkdf2_sha256$260000$kSGa8bq0fOW0CBRLz5SBvI$Vnxo9EE+h12BpZDZ92KqR2nnVlbKdxu3nQrIPFXBR8w=	\N	f	e86b84ff-d6ac-4ec8-a486-5f1d274921f9	Любовь		f	t	2021-12-13	taela@e1.ru	e86b84ff-d6ac-4ec8-a486-5f1d274921f9
342	pbkdf2_sha256$260000$N4CSj8cBXvlnwvkfXzntKW$T66KRBfkkVoah3JGM6LdqN2UCxfPIUY/EGDvYMA+Kto=	\N	f	e72a71a8-0ef8-4bd3-95f8-fa530e5feaa4	Антон		f	t	2021-12-13	2kaptolllka7@gmail.com	e72a71a8-0ef8-4bd3-95f8-fa530e5feaa4
343	pbkdf2_sha256$260000$ymSEUqEBLikdEHdpw7eHPi$CQFFYllB7HxxRmItX4/YaU8za2mP4ZZgkOqdJp5/G5A=	\N	f	55faeb15-8f26-425d-9b14-2cd538b90495	Нурия		f	t	2021-12-13	ilovenu@mail.ru	55faeb15-8f26-425d-9b14-2cd538b90495
344	pbkdf2_sha256$260000$FivMoGr791Eg2K8cvkit9x$W3CaLnAY6ymlpSPNs5rKwAfdDETpw35uH8xDQgdbfaU=	\N	f	ff96db12-3194-41b8-8b09-6fa8273e0120	Александр		f	t	2021-12-13	Aless6780@mail.ru	ff96db12-3194-41b8-8b09-6fa8273e0120
345	pbkdf2_sha256$260000$ic27D3J9OFRTIZPkUu6Jjy$jC2krLDyHIWtdl/SbL8FkFLBtNVn14rMvLOAGRcTKM0=	\N	f	94117530-d30e-4696-8158-0c0b17122339	Николай		f	t	2021-12-13	budulaysedoy@rambler.ru	94117530-d30e-4696-8158-0c0b17122339
346	pbkdf2_sha256$260000$kKrw4lkS1SU65VPREhBKCA$7ZOLCiPQDWkiFlV8W6TxJBJgP1wAdTezP5WQszlS7PM=	\N	f	1eff60e4-f20c-44a0-9b46-4eff3cd55707	Александр		f	t	2021-12-13	8420764@mail.ru	1eff60e4-f20c-44a0-9b46-4eff3cd55707
347	pbkdf2_sha256$260000$cVAL97kU0ruoiw3XKgZRRN$MmoS3nMj6ci0quiLfT7uis2k/zT5E7iGLqpVoIemCxE=	\N	f	15b72fdc-c20f-40a1-a29f-6be919556813	Николай		f	t	2021-12-13	kolyanjf@mail.ru	15b72fdc-c20f-40a1-a29f-6be919556813
348	pbkdf2_sha256$260000$qLsLfF5c7IzFERLpqtOOQ5$9ZOaKa8qjM62rQbVhtT5dN/3VYrVeljHK4KiDdGTXck=	\N	f	c101fc65-3f2f-45c9-bd69-2758ed9b81a9	Сергей Лобанов		f	t	2021-12-13	100819892008@rambler.ru	c101fc65-3f2f-45c9-bd69-2758ed9b81a9
349	pbkdf2_sha256$260000$mbxCHdUfqOSAUXA2cLVwYO$TLpe4dO7XNfnXenoE3LvzvMwZMXwZ+VPEMIi+XjV6B8=	\N	f	0e6b686c-68cc-4965-a6f4-5f90914a56c0	Сергей		f	t	2021-12-13	sg1053@bk.ru	0e6b686c-68cc-4965-a6f4-5f90914a56c0
350	pbkdf2_sha256$260000$zWWPVg9reQc9q2cfcF5Wie$HR0CIwal2CUQ5s24+Ib8gpVw5ZvskTLJzeNM8VfC2Zk=	\N	f	fe3b14e8-28d1-4c4a-9f40-13faadf4dffd	Александр Казанцев		f	t	2021-12-13	kaa.kras@yandex.ru	fe3b14e8-28d1-4c4a-9f40-13faadf4dffd
351	pbkdf2_sha256$260000$0RuOMDbqrSZSglmBb5oqd7$TN5KX9TyuMJ/LVeOzPlvA56PQzQ1W5HaLsqjTuqrD0g=	\N	f	a8e24e92-fddb-4422-b2fe-04d7a14b999f	Максим		f	t	2021-12-13	kolmm3@gmail.com	a8e24e92-fddb-4422-b2fe-04d7a14b999f
352	pbkdf2_sha256$260000$blt6Vbqp9FHOrsj5CVirdU$v1OCM9Ri4UOfVnFx3VMysG3jvypYUuT19L/nhq6yeh4=	\N	f	5c4437fa-a8e0-401e-99e1-0e1d8e0b825d	Евгений		f	t	2021-12-13	47224am@gmail.com	5c4437fa-a8e0-401e-99e1-0e1d8e0b825d
353	pbkdf2_sha256$260000$3GuVSbOFfFPWyIwJ1boAMg$m+uuVGpgzx+zWvS+Lec+slpPbJ4Gyf23cpPHoGN19QE=	\N	f	50e3dd5b-c93a-4c61-85db-bd860c4e5559	Маннур		f	t	2021-12-13	Runnam84@mail.ru	50e3dd5b-c93a-4c61-85db-bd860c4e5559
354	pbkdf2_sha256$260000$76HmrpvmBR7J6iqVqMjjQt$cmOPdMzIuwzcCa6zXKJ69kQzmd+JQU34HNOJz+eozYw=	\N	f	b9a71985-cb95-42d9-adab-c49bf1f8fa44	Tolia		f	t	2021-12-13	toliahal@yandex.ru	b9a71985-cb95-42d9-adab-c49bf1f8fa44
325	pbkdf2_sha256$260000$4PNe4sAC3HGCmQK3BLacfp$L/V1k1UXECUK9GCi1C9blviYMqQir97DerJQc5yxShs=	\N	f	60e84ef4-14c9-4141-bca2-fc1809b4fe5a	Андрей		f	t	2021-12-13	karganskij@gmail.com	60e84ef4-14c9-4141-bca2-fc1809b4fe5a
326	pbkdf2_sha256$260000$DaWQNmoWaMJuWXgejl0BJd$amUxbYuVqP/Oyl5+aYbpsN5BvOSl1D9dOCD26dWIKIU=	\N	f	d693883e-07e8-41ad-85d6-5f0bce5baaf3	Александр		f	t	2021-12-13	tomashevsky@gmail.com	d693883e-07e8-41ad-85d6-5f0bce5baaf3
357	pbkdf2_sha256$260000$T8mlorVquCH89ab0OFgYIu$QupJ5P+wBzf92KoTEA2mURbQDhzlC/Biozg+7d2UMkw=	\N	f	0105c288-862d-48c3-8269-ee101d7586cd	Дарья		f	t	2021-12-13	daria88888@mail.ru	0105c288-862d-48c3-8269-ee101d7586cd
358	pbkdf2_sha256$260000$OtJUwc13mnmycQr1zEM46Y$KnE9KbpKUzkf2dduybOoeI3eJWl6X5N/6BF+t0MAFlc=	\N	f	b09fce49-69e4-4cd4-bc61-fca94a502072	Артём		f	t	2021-12-13	2660088@gmail.com	b09fce49-69e4-4cd4-bc61-fca94a502072
359	pbkdf2_sha256$260000$lAJCWn5a3ajlwCb6rX6laC$NT7gSaESYyIynkS+5ZE5ECh0/k6N4FexK77jvYNIw/I=	\N	f	e6b17515-41e7-4805-b5a7-db6f898ad184	Александр		f	t	2021-12-13	vishnyakov6846@gmail.com	e6b17515-41e7-4805-b5a7-db6f898ad184
360	pbkdf2_sha256$260000$EdECL59PTcZ0eFQGTSiyzo$nyI1cr4WykGo/XqzZ+zxm9nnTj7MhSJ/Z1zFgE7qhWU=	\N	f	ce14daa1-104f-49b2-85de-a897f3256b3e	Александр		f	t	2021-12-13	gaiduk_alex@mail.ru	ce14daa1-104f-49b2-85de-a897f3256b3e
361	pbkdf2_sha256$260000$1XAktrVtDR1wAWpiFiswsY$TyhMQ8rauyBQRCCQwH9Van9tAp+gV1Y5RudIdVPbqbs=	\N	f	c452ea6f-2504-43f3-b3dc-f4c3b4e44626	Мади		f	t	2021-12-13	besttamplier@gmail.com	c452ea6f-2504-43f3-b3dc-f4c3b4e44626
362	pbkdf2_sha256$260000$qelL4GDxDlngfuG8v3HQZm$GoWw4Vq9N0/PmXE5cP2dgepT8ZBwW5P5u/8oNicwaEM=	\N	f	20fafb5b-ec79-4555-8c91-cc0ade364de4	Александр		f	t	2021-12-13	av_leksin@mail.ru	20fafb5b-ec79-4555-8c91-cc0ade364de4
363	pbkdf2_sha256$260000$qvE4wI9WRMz1YiBZhPOVQF$jhykWOUhGN1r00VS8LENczGDUYfIdWi+KN848UGlqPQ=	\N	f	cbd244dc-417a-48da-93f3-27a3cf830169	Андрей		f	t	2021-12-13	serpantin174@gmail.com	cbd244dc-417a-48da-93f3-27a3cf830169
364	pbkdf2_sha256$260000$AkYLQ6zVPo3aZg4Wii7lYo$Xtn0cu0jKjmynci/R52l23PZy/l4zMEquwQR4LWqBGI=	\N	f	097d3e27-ed02-4f24-ac13-d6493a951d97	Кирилл		f	t	2021-12-13	bogdan.kir@gmail.com	097d3e27-ed02-4f24-ac13-d6493a951d97
365	pbkdf2_sha256$260000$AZiqMv2BxBFufkcJLMzp9j$XfAedclXEhC91dKd5CKDveUFpzDdxAU2uMorp9KsZww=	\N	f	f335017e-53d6-46e5-a4d7-761b2c8972fa	Фарит		f	t	2021-12-13	farit-th@mail.ru	f335017e-53d6-46e5-a4d7-761b2c8972fa
366	pbkdf2_sha256$260000$wZUPZRkYUafEyONrXtoyu2$tT897LG1g2GhU3UADwK8scDUDubPHYDGiOrRcJrf4lI=	\N	f	8c0df91b-edd2-434a-94fe-29135338fa80	Андрей		f	t	2021-12-13	a.perov91@mail.ru	8c0df91b-edd2-434a-94fe-29135338fa80
367	pbkdf2_sha256$260000$F9M680srzYr1m6xrrbvBGf$bq6butOIbbWbBmN+0HIcDgI+uAiFnCUeI9Tczm6XRPo=	\N	f	c743e2ec-fddd-4a79-bc5b-0cb4759dc080	Денис		f	t	2021-12-13	sokruz.sokolov@yandex.ru	c743e2ec-fddd-4a79-bc5b-0cb4759dc080
368	pbkdf2_sha256$260000$SATSYr828aEUjzECGQgtbB$mvo6kQmUwHcv6hihL+X90RmHqwst+pcz07k/xutrvUw=	\N	f	b15ffe64-7baf-428b-888c-5a591425771d	Алексей		f	t	2021-12-13	spudisi@mail.ru	b15ffe64-7baf-428b-888c-5a591425771d
369	pbkdf2_sha256$260000$sd4PR0mRSQwiZAQezQJGI3$40I38u5MkBoG5byvecg9rj/4OLexYNoNUyheFDRW+VA=	\N	f	f4216777-0633-4b7c-b471-75363c31ac41	Геннадий		f	t	2021-12-13	wereschagin3.14@gmail.com	f4216777-0633-4b7c-b471-75363c31ac41
370	pbkdf2_sha256$260000$WaCPzkVD4KwDJEhdUR4PSv$oAd3h/M85ndFczdGFn2flPeY0z0O/9sm4B4sAQwQkdc=	\N	f	24105752-9ac4-4d77-aaec-176fce4b50a9	Ольга Кузьмина		f	t	2021-12-13	ekonomistuk@gmail.com	24105752-9ac4-4d77-aaec-176fce4b50a9
371	pbkdf2_sha256$260000$0TJS0GPyeQUjZOxquwxVHs$oDNEHbE5mo5gJ7F2KfoPNUyf1khhBEDVSilU467EahI=	\N	f	fd1db3b9-c743-4b6d-862c-16dcd38034f0	Виктор		f	t	2021-12-13	alexandrov09@gmail.com	fd1db3b9-c743-4b6d-862c-16dcd38034f0
372	pbkdf2_sha256$260000$A2wh7jUlqtnAWa1oVjYgLx$MKGNRkixmmhOPmghgW1i1bdCD+XKoL+UCtglOokfhDE=	\N	f	16f86fec-682a-4d97-ba47-d846bd13b884	Федор		f	t	2021-12-13	supra000@mail.ru	16f86fec-682a-4d97-ba47-d846bd13b884
373	pbkdf2_sha256$260000$fFM0UXf9KOJonwLEg2hacE$179M74IbSltMJ8XvTHhdizoi/7uZyp8S1lLDBpslsQU=	\N	f	27f9fb76-3741-4afe-b941-8790654c157c	Артем		f	t	2021-12-13	iwan.teem@yandex.ru	27f9fb76-3741-4afe-b941-8790654c157c
374	pbkdf2_sha256$260000$GPN4HYcKORkJwgIVShoWpw$p3fdtI8H5zrH36uL+zmsaBaMp8TrWy3s1hQTREwHGJ8=	\N	f	4827eae5-9c18-430f-9530-3e3982f779e6	Дмитрий		f	t	2021-12-13	arxipov1978@bk.ru	4827eae5-9c18-430f-9530-3e3982f779e6
375	pbkdf2_sha256$260000$wGE5bWjDuKd4FiXZr33VTC$zY5xxOxd9XJtD7By/j3aZGlv3khkOSkLW+fGbZ6Wh7Y=	\N	f	7d96c898-d16d-4b21-a658-363d3d79be02	Никита		f	t	2021-12-13	shtirlicru@mail.ru	7d96c898-d16d-4b21-a658-363d3d79be02
376	pbkdf2_sha256$260000$W55TURPSDGu9vnjUCohSK5$BeHT18dd9Hf3s7FxkJlRx76qGTXqBbQG+AhuVE9slwo=	\N	f	d63b672d-b64d-4d7f-bbfe-bcc047e708b5	Сергей		f	t	2021-12-13	finageev@mail.ru	d63b672d-b64d-4d7f-bbfe-bcc047e708b5
377	pbkdf2_sha256$260000$sKJi39TwiXAalf4LHvWrqv$dqHAcNKBpAct5cPy5gXf6yrxuL9PivGGTRW9q+xI1Hc=	\N	f	2134e1d6-fb38-45bd-b14e-88cc2f3acee1	Слава		f	t	2021-12-13	sultanoffslav@gmail.com	2134e1d6-fb38-45bd-b14e-88cc2f3acee1
378	pbkdf2_sha256$260000$K3i3uKS8ov9MrHxMEBApXz$KGkOY91nYqlDCns/JenEb+iFL8X+sooLksCN1P4aMlw=	\N	f	865ddc10-b6f3-4dba-a004-cc6c8d85ebc8	Konstantin Hunkel		f	t	2021-12-13	hunkelk@gmail.com	865ddc10-b6f3-4dba-a004-cc6c8d85ebc8
379	pbkdf2_sha256$260000$ed6nka0LCWVhzbPc6y2TGU$TTQToK8CvNzENhbvOjoMUs5GxABOEdzaecVaVGxkerw=	\N	f	3b9c5b71-8eab-40c6-8879-c55b5bbb5700	Владислав		f	t	2021-12-13	vladvpan@gmail.com	3b9c5b71-8eab-40c6-8879-c55b5bbb5700
381	pbkdf2_sha256$260000$OG3B1w8BDwUqiVy7BQbcLG$4kzR0cCf8SDieTMqeBZHuFXZy6hzs3qCtFX3T/mA2n0=	\N	f	c616d72a-77c2-47d2-9dce-7bc66138ab11	Алекс		f	t	2021-12-13	nehitr@mail.ru	c616d72a-77c2-47d2-9dce-7bc66138ab11
382	pbkdf2_sha256$260000$mL8YksVI68LUAhXGn5HliZ$3A483VxdaGdf3Mv05pOS6ZG5jkow8by5Q+vRNK/R2lg=	\N	f	946077ac-a165-4fe7-84b1-bf094409e9b7	Сергей		f	t	2021-12-13	berlov-1@mail.ru	946077ac-a165-4fe7-84b1-bf094409e9b7
383	pbkdf2_sha256$260000$2tpuSMoVphVrUQwragGpSk$uZVWzPs7AwuGjzpgXUheLee5/IT/nEPDrdlZfKruGb8=	\N	f	c8935fa8-8160-4413-81b0-3034ddbade92	Жанна		f	t	2021-12-13	zhan-na1981@mail.ru	c8935fa8-8160-4413-81b0-3034ddbade92
384	pbkdf2_sha256$260000$Yt0o61H1I8moPNDgljEtqm$U2Sb94Gb/3jIMk0BcpoJjktbr7X9gZe/nzNm92wKtFk=	\N	f	e84c9852-6856-47c6-800f-8a515f3d3986	Александр		f	t	2021-12-13	aarybalchenko1988@gmail.com	e84c9852-6856-47c6-800f-8a515f3d3986
380	pbkdf2_sha256$260000$izlTFaJ2SjvIqbiIIp0NQr$EuidxuD7jI/Hj+BB5tFd2RL7mjiiYpYKK0wwkApEZPs=	\N	f	af519ab4-9aa9-48b5-8edb-ead716d1c88b	Александр		f	t	2021-12-13	bibarsovsasha@gmail.com	af519ab4-9aa9-48b5-8edb-ead716d1c88b
355	pbkdf2_sha256$260000$EOPI1WNadrecmjJSIE4osg$H3+xPbmyfBwUBLW0fjf7zBXmNZL2cOCfJRLc6ZHbJUM=	\N	f	d1031884-fa31-4f9f-8aa8-2cfcba5cd7dc	Os		f	t	2021-12-13	alistanovosman@yandex.ru	d1031884-fa31-4f9f-8aa8-2cfcba5cd7dc
356	pbkdf2_sha256$260000$hkpfOsJLyqVNJaNwvFsQ5R$22wXwnWBTwU1is/dQzme0R5QoDPI/QIFeSr9xgLSxeM=	\N	f	8806932f-2555-46e7-8d2a-aa13842cf3e6	Родион		f	t	2021-12-13	rodik.1999.99@gmail.com	8806932f-2555-46e7-8d2a-aa13842cf3e6
387	pbkdf2_sha256$260000$v1YwFWhFoCJRviCxO5BIla$j8NLpRRypdLAYDkvjr+islrND1qHUAwVaLDBcW+4EOU=	\N	f	0393eaed-29a1-4d62-9706-f630a6f65a85	Александр		f	t	2021-12-13	counterfeit1@mail.ru	0393eaed-29a1-4d62-9706-f630a6f65a85
388	pbkdf2_sha256$260000$4Nn8uCwnbI9WzrgwL4oHnB$9gTSn4AKmVjxxChOAMHBIKg1MqCQj5Ej7LsknYXoqHk=	\N	f	9ca948ba-f956-4758-9a20-5c6fbc8de8bb	Тимур		f	t	2021-12-13	for_subscribe_tt@mail.ru	9ca948ba-f956-4758-9a20-5c6fbc8de8bb
389	pbkdf2_sha256$260000$jPFrRQbwOqBNYkNfibWJ60$d7HoEkPOCu0qzJk//cEpEDoL8wywQhj/NcOiFeNM0ss=	\N	f	232fa577-8167-4675-9d55-90ae39476f33	Михаил		f	t	2021-12-13	miha-nayk@yandex.ru	232fa577-8167-4675-9d55-90ae39476f33
390	pbkdf2_sha256$260000$lNKdm94F0WAevanThTUCk5$TVsPV+UN7K1RmOPDgqrl0f4bc5x6N+n/wk0IWz3DZuY=	\N	f	31243aef-a9d8-4dea-9b40-89b01d614ec1	Игорь		f	t	2021-12-13	igorussia174@gmail.com	31243aef-a9d8-4dea-9b40-89b01d614ec1
391	pbkdf2_sha256$260000$MJIqqLxfiCL6gOZufzlC5x$X6LVkjYBuefD5Lqa9DcoLLbKpw4hDOU2n5s9pj9Zgpw=	\N	f	f32ea44b-f6fd-4eef-a0af-f35f6247cc32	Иван		f	t	2021-12-13	kelt1004@mail.ru	f32ea44b-f6fd-4eef-a0af-f35f6247cc32
392	pbkdf2_sha256$260000$uR1ZMtL35gEugt4QnaTVw4$Z5CtnEcZPhDjuQgW/SkwbdOeque+9Ug5pKX1qOkDnXA=	\N	f	17fab36e-fdc7-407e-9bdc-332fa097683f	Наталья		f	t	2021-12-13	natali.tardi@yandex.ru	17fab36e-fdc7-407e-9bdc-332fa097683f
393	pbkdf2_sha256$260000$gTxszq2eMZu9kFTBllZqZM$B3JvV9k+7DQHHA44aiSnQ2MqiCf+MlyOg5HGpL9tZ4c=	\N	f	4cc2bcbc-d3e5-42ec-929c-93c437edfef4	Денис		f	t	2021-12-13	skydoc@yandex.ru	4cc2bcbc-d3e5-42ec-929c-93c437edfef4
394	pbkdf2_sha256$260000$irfrUTMQs3L85jxRdAseT1$fEaGtftt80aAPaH8uDRXgXhwY5z1WNsyF4dToPJ44S8=	\N	f	390430d4-b0f2-401b-9caf-bfdd6f6fcb3b	Марина		f	t	2021-12-13	9827069018@bk.ru	390430d4-b0f2-401b-9caf-bfdd6f6fcb3b
395	pbkdf2_sha256$260000$THrYIqoYyC7zCOct4JYpy1$pcxpLfegLSIGWJckIiW1mVmKko2hVQ6Jw/iCh5QhdrU=	\N	f	4c008dd5-5f25-4eeb-b442-2e74697ab3a2	Владимир		f	t	2021-12-13	vmelnikov@euronics.ru	4c008dd5-5f25-4eeb-b442-2e74697ab3a2
396	pbkdf2_sha256$260000$4nZvsQfXG0eCwrU1lIa3DT$s0pu7qFA9XXJAMsHk6ymsRBtVXNfO60dTOGdbldI6vE=	\N	f	d076df66-334d-4975-af3a-79623ef940df	Андрей		f	t	2021-12-13	a19760912@mail.ru	d076df66-334d-4975-af3a-79623ef940df
397	pbkdf2_sha256$260000$vG3NAEwmrbwLfRsnk0PXW2$UZePPRik0iJpSCueNd86DqEp94xz4sLakIU2nivGjj4=	\N	f	e665b789-8822-4aa1-98ab-696b59f0d721	Андрей		f	t	2021-12-13	e-a.m@mail.ru	e665b789-8822-4aa1-98ab-696b59f0d721
398	pbkdf2_sha256$260000$Svo5clQz53Mp9gO4f2Q1SA$XAZws49t1zy8wPHh5KGOTwwob/4m3KXThgMfUeKP/xI=	\N	f	13c1f586-deb3-4385-a1ed-74f8d71d0841	Ксения		f	t	2021-12-13	mystudyworld777@gmail.com	13c1f586-deb3-4385-a1ed-74f8d71d0841
399	pbkdf2_sha256$260000$FtKqPSrZUjS1OPUdQcn46H$bA+Vl1eYUX2EPmq6hXhR514jIB3JoW6zVoQopxDs+P0=	\N	f	ae835e80-cd87-4ef6-a527-7a2a1f54698b	Аделя		f	t	2021-12-13	garipovaam2013@ya.ru	ae835e80-cd87-4ef6-a527-7a2a1f54698b
400	pbkdf2_sha256$260000$VfuXL7U2y6DR5yimnd2KT3$WvsvRk2+K7bQBTfnHeCjX8CxzE3GwUe40pAvajteTmE=	\N	f	a0fe32be-ab5d-45af-a51d-f4c355c66b42	Рустэм		f	t	2021-12-13	rsn-ufa@mail.ru	a0fe32be-ab5d-45af-a51d-f4c355c66b42
401	pbkdf2_sha256$260000$IKUhrVdNaxYolAVEpxgwjT$8E/pNdj2UpYEnSe6VLJqOIGn880UE70wAKYM5OSDMg0=	\N	f	09ec83dd-7a89-4dda-a997-b0f0af0a9d5c	Ravil Kabyldin		f	t	2021-12-13	rav222aika@gmail.com	09ec83dd-7a89-4dda-a997-b0f0af0a9d5c
402	pbkdf2_sha256$260000$rZnUA2jACMCalkTILoSeo9$KCnBCeDWYmbKl0eAvrrgEiGMnbkYc/qy+5E5OU8Eqwc=	\N	f	3fb3b123-44ee-448d-a84d-52eaec9bef02	Иван		f	t	2021-12-13	zhuchyok@icloud.com	3fb3b123-44ee-448d-a84d-52eaec9bef02
403	pbkdf2_sha256$260000$bc2DimN4Lo62wCypAKk0QZ$EhhwCfu8Uk/ni11r90R26KxTbt6EtDpIwMywWdAQCjM=	\N	f	59fc1512-1f6a-4df4-be22-945d4b4ff408	Юрий		f	t	2021-12-13	yura.zu@mail.ru	59fc1512-1f6a-4df4-be22-945d4b4ff408
404	pbkdf2_sha256$260000$O6rV9D3Cbl4cqtOnTJI18t$xbFhEYjvLL9h81t5Xc0wSR7oDM4mdhoewV/MrzGt+9E=	\N	f	c4e83d8c-ce2d-465d-9b99-dbaccac64c66	Александр		f	t	2021-12-13	alexandr.sergeevich1995@mail.ru	c4e83d8c-ce2d-465d-9b99-dbaccac64c66
405	pbkdf2_sha256$260000$TYxih4WXxo71xjzovwOaeC$LcT+7z9vq2usoxH5+clNmBKvaKVYi8EyNzPj+/Q4PNw=	\N	f	d82a2819-b6e7-487b-a734-f4bbdd979be2	Роман		f	t	2021-12-13	romih11@yandex.ru	d82a2819-b6e7-487b-a734-f4bbdd979be2
406	pbkdf2_sha256$260000$lIpusVe9UDY8gVEsvHXM89$p1MfgfuaaRrgvLVpatsmfgP1T3113+hcUfc0S5jD6M4=	\N	f	cd0efad4-b652-47c1-95ad-1f94172fefb8	Олег		f	t	2021-12-13	2883882@mail.ru	cd0efad4-b652-47c1-95ad-1f94172fefb8
407	pbkdf2_sha256$260000$oaKdwFSeu9y8683vMjgl5D$c7O7YEnX2xrX8nb4+Hv0KYz0B4tJqC99p1jbgkb8NiI=	\N	f	42e39077-fe17-4053-b908-2b8b60199fa5	Антон		f	t	2021-12-13	stgolem@yandex.ru	42e39077-fe17-4053-b908-2b8b60199fa5
408	pbkdf2_sha256$260000$8AbQFljxIkAtUt5JVOkopG$Q2IaL19oUvq//jmOoCIb8z/eMQD0EIxj0F/Y3u4zRos=	\N	f	f7ca3239-0820-4323-a688-70f181118e45	Николай		f	t	2021-12-13	bolten@bk.ru	f7ca3239-0820-4323-a688-70f181118e45
409	pbkdf2_sha256$260000$gaTiwrLu4dhiEUCVMqUzKG$MamX9+0jLKIUIhQScbXaj1OMBIAV/+XGotFFwmvIXjQ=	\N	f	fedbb2de-0edd-4024-b3dc-b323d9d22c54	Михаил		f	t	2021-12-13	NuclearYooppi@bk.ru	fedbb2de-0edd-4024-b3dc-b323d9d22c54
410	pbkdf2_sha256$260000$7A5tPOlg1WozaArf9qRmFh$Lw0WaQmHvSDozAYSz99HrK8Yvkh92vEdgYv2v/nAH4A=	\N	f	bdc5c45e-3346-4db5-ab1d-c29c62585697	Сергей		f	t	2021-12-13	msi@mobikomservice.ru	bdc5c45e-3346-4db5-ab1d-c29c62585697
411	pbkdf2_sha256$260000$GlDJc0VuJQQyCxfnaQUGRv$ZHrkhICDL79AVPN8LXzcmjkfv9zyJhCu0ZV7Ad1AEXk=	\N	f	a181f4e7-277d-4240-8e85-b979997fa436	Сергей		f	t	2021-12-13	i0106275@yandex.ru	a181f4e7-277d-4240-8e85-b979997fa436
412	pbkdf2_sha256$260000$Gc2xnYMhAYDIcHfrmUidAd$543BTjgQN1WlQei4XzpOKJ72gZYj+ccdZ43lGDv01go=	\N	f	c6661c52-ee78-49ac-a752-c59ffbdc9ef1	Константин		f	t	2021-12-13	9976275@mail.ru	c6661c52-ee78-49ac-a752-c59ffbdc9ef1
413	pbkdf2_sha256$260000$dGOSY4KwQmFUPH8qgXc5fq$s5Ohib5gAROfRE/fYxhsmlFhLdLj88pTvj7p+8elwT8=	\N	f	2663d1b3-c8f9-4cb5-932f-fa86d97df002	Ольга		f	t	2021-12-13	olga_krigan@mail.ru	2663d1b3-c8f9-4cb5-932f-fa86d97df002
414	pbkdf2_sha256$260000$gI71zWjzsV0erbKxWJ4sCi$ZDBb44/VeRgjzihrHtuhDoJd6TqWPwCndtb/JcFs7yU=	\N	f	c301fe38-47e8-462d-a133-789084b68ffc	Даниил		f	t	2021-12-13	krasnopeev.89@mail.ru	c301fe38-47e8-462d-a133-789084b68ffc
385	pbkdf2_sha256$260000$rioJvsfkjIsodoCW8Mi4SW$qgVSoEFxJbz8ZXYhPcH5sgTWYoBH3i4FKIPEsDvQdS8=	\N	f	c06bc2dc-66cf-4495-bd7c-5d59f9b461af	Валерия		f	t	2021-12-13	lera.chazova2012@yandex.ru	c06bc2dc-66cf-4495-bd7c-5d59f9b461af
386	pbkdf2_sha256$260000$UNuHcsQxRXj6bP3wYkW9cc$FPh3kK7UyGuiYAmZpG/uMBrCMs9M0/mRGcsml2CnULk=	\N	f	d0873cc6-eff7-4405-876e-07265b72565d	Виктор Таскаев		f	t	2021-12-13	viktor-roadkill@mail.ru	d0873cc6-eff7-4405-876e-07265b72565d
417	pbkdf2_sha256$260000$kgSNAk2wIvknOf5jkhNqE3$98rSYmMq3ntiw6frNzKRFd4qZleXSBEYgtgBTXy7hlo=	\N	f	b6df6908-4653-4126-b322-9267c3b248d1	Алексей		f	t	2021-12-13	alesio.y@gmail.com	b6df6908-4653-4126-b322-9267c3b248d1
418	pbkdf2_sha256$260000$3cpMnbVmLzEChFs3Bqu6x2$ho+8Ikav4h+v494y+3/kNXXrShq4YEtZPdZQ6DTb+TI=	\N	f	17cace91-e77c-44f9-bb09-0b53c0265a42	Игорь Севостьянов		f	t	2021-12-13	goshapem@mail.ru	17cace91-e77c-44f9-bb09-0b53c0265a42
419	pbkdf2_sha256$260000$I9OCxr2fAcshWTTUCCqflT$cMTwVMqfjM7LTiYyTzFqLxDXa0/h5hN8qXsngn+ndoU=	\N	f	ff3026b8-05da-4a1a-a3b0-1d3040d8eb7c	Марина		f	t	2021-12-13	89055044457m@gmail.com	ff3026b8-05da-4a1a-a3b0-1d3040d8eb7c
420	pbkdf2_sha256$260000$VYlw3oPjaeNKkYMY0mCK0u$U5kT0IxAsRN6TgV6r2Wu461LnMWHBFuQCWfgDf/2Ook=	\N	f	1ee4d5b5-4721-403f-b6ec-523b66bb35be	Никита		f	t	2021-12-13	nikeign@gmail.com	1ee4d5b5-4721-403f-b6ec-523b66bb35be
421	pbkdf2_sha256$260000$CHK5hpp8A7ymz0PUYn8Y83$RCHY9a6e6MTiIYuWReH1b6ZHx9Gvj+Qp2MiWHrVp/nQ=	\N	f	ed9b1a69-c956-4218-9f7f-40a8e83e0733	Илья		f	t	2021-12-13	kist-dov@yandex.ru	ed9b1a69-c956-4218-9f7f-40a8e83e0733
422	pbkdf2_sha256$260000$0oly1eP24KB5C1dP4S7SpV$WJxMIu1qskw9gjHD9w2KtUPAoDRty8uujgjFZtmgs/0=	\N	f	36ba0d4d-b45b-489f-b119-ca8468fd80f7	Сергей		f	t	2021-12-13	cherkosm@mail.ru	36ba0d4d-b45b-489f-b119-ca8468fd80f7
423	pbkdf2_sha256$260000$bqmxb42l09TFc2HdNVgIjM$rNEe4xAPsMsK2jOznmDAGl41BkKch8B+OKvFgLpM9t0=	\N	f	3c32abe4-806c-4795-975b-d981c1d9ea15	Сергей		f	t	2021-12-13	isb1971@mail.ru	3c32abe4-806c-4795-975b-d981c1d9ea15
424	pbkdf2_sha256$260000$yKlNrAJfQ3DeEDypPbTa4Q$ReePjnRh2StkEQkk6Wjk4aYXyhZbZIJIQO7Y5j4rcCI=	\N	f	5a6eaaf6-5fe4-4f1d-85d4-7f8026afa7ce	Viaceslav Nedeliaj		f	t	2021-12-13	glory47@gmail.com	5a6eaaf6-5fe4-4f1d-85d4-7f8026afa7ce
425	pbkdf2_sha256$260000$PwfB7AQ9pHUY3irzY7LqJW$oOtEGPOjx5U4GLb0lBsfNCwOaCi4XPZXSBZsjhJ7A6g=	\N	f	8ffed16c-e8a4-4184-b6d4-4ec89a5e006a	Денис		f	t	2021-12-13	Denislyalchenko@gmail.com	8ffed16c-e8a4-4184-b6d4-4ec89a5e006a
426	pbkdf2_sha256$260000$Y4eiR8HaBUt1owFi4Msgp5$YU/WYSBRhW5eZ338fmxS7uHx0cFhTw8PmcjS3LCADYA=	\N	f	1e2148a5-d1be-4f5f-8e76-e0961a486717	Вадим		f	t	2021-12-13	aldam@list.ru	1e2148a5-d1be-4f5f-8e76-e0961a486717
427	pbkdf2_sha256$260000$eTImTIUGhmfdATOLjy1QKc$EGn9kMvkFDCy/AiwTaAWH7edry4+xYehitVHTlZME6Y=	\N	f	ed9ff9bb-96d0-47c8-85bc-8b6abb528cad	Алексей		f	t	2021-12-13	mosyagin64@mail.ru	ed9ff9bb-96d0-47c8-85bc-8b6abb528cad
428	pbkdf2_sha256$260000$0S4flm5Q30RfVNA9UNTfYw$2kp8YemTvnZJcETVirslhlrjtYfuhf8d6dFuudi245I=	\N	f	059dac3f-f202-442f-bdb3-2555a7de5058	Григорий		f	t	2021-12-13	play200798@mail.ru	059dac3f-f202-442f-bdb3-2555a7de5058
429	pbkdf2_sha256$260000$WavoWmrYkJ6ySDVuKpprQ1$JANPwd1zxhdpYWgmI2ZICbrN9O6VDgL3Wn09G3Uqb0Q=	\N	f	cb981639-aa93-43a4-9732-6c2a29be8082	Игорь		f	t	2021-12-13	igor_yav@mail.ru	cb981639-aa93-43a4-9732-6c2a29be8082
430	pbkdf2_sha256$260000$9oeFhp6mSpGgTMzadpOL0T$ZFVbqQEj4lnFHw0sM3P0OtXq0utDmh/YhOLIQ/ZWas4=	\N	f	82bdb2cc-35d4-43b3-ac16-758a34400d36	Татьяна		f	t	2021-12-13	pt-v82@mail.ru	82bdb2cc-35d4-43b3-ac16-758a34400d36
431	pbkdf2_sha256$260000$rmtvg4j81Tx2YixGVeJe2D$kgOmwitaaga3Uem3mkT/Hk9x0lKjeOzG4gxh8nR5op0=	\N	f	11dec469-6032-4460-91d3-8a89b661b34f	Артур		f	t	2021-12-13	scaldo@mail.ru	11dec469-6032-4460-91d3-8a89b661b34f
432	pbkdf2_sha256$260000$PeZ4Etc3vNp7B4pWz5zTnX$eSrw9wBu6XW4ndtINCMEq1SVPIzpg+JKq5hu3Jb/v10=	\N	f	abb3c750-da67-4ac1-b11f-61a292acf6d5	Александр		f	t	2021-12-13	7443033@mail.ru	abb3c750-da67-4ac1-b11f-61a292acf6d5
433	pbkdf2_sha256$260000$kqcX1u558FwQ8gpsSrBwn3$UagXCTwUgaPs+MAmcY9d3bMYO1aX61XPKCKkBQMXxvc=	\N	f	019f8a58-9ea9-48d9-a2f2-bbe5cd9380e4	Павел		f	t	2021-12-13	pawel-dok93@yandex.ru	019f8a58-9ea9-48d9-a2f2-bbe5cd9380e4
434	pbkdf2_sha256$260000$zWZXC5Q1eROgQbMMoY0qKv$y+bV2yYBTC/FfgTOxO5Al6Rvc5Edl/R47CXKZzBC2tw=	\N	f	9cfe6e7f-5ea9-4eb0-877a-4948e5daa8e4	Алексей		f	t	2021-12-13	a.g.seleznev@yandex.ru	9cfe6e7f-5ea9-4eb0-877a-4948e5daa8e4
435	pbkdf2_sha256$260000$qN4Do0FtWEo0imENLICaQP$GTh5OQwHaOnak8ynyiiZuMXS/CT1KNN3acCVh/w9bq8=	\N	f	fd4b1b69-bf7d-4f5e-933e-c3a01ae58a2f	Алексей		f	t	2021-12-13	alek.tsvetkov2011@yandex.ru	fd4b1b69-bf7d-4f5e-933e-c3a01ae58a2f
436	pbkdf2_sha256$260000$5AGBybkbefqk5LRhDRPwzp$sOU6xwHUoHbN9HuLkOwiGJqe6T1AVZt6uObjRfOnkFQ=	\N	f	3d17b9d1-5994-479c-aa76-9c2ae5fae69c	Анна		f	t	2021-12-13	filaretbest@mail.ru	3d17b9d1-5994-479c-aa76-9c2ae5fae69c
437	pbkdf2_sha256$260000$hzjHNUw0tfucG5exYLzD6g$Z944XQzpjOpv0yWAbAAQcCGCx78YngRRfstDNwHTBwI=	\N	f	cd2c5988-64c9-44dd-bd3c-9ce5cfe628e0	Юрий		f	t	2021-12-13	yura.merkelov30@gmail.com	cd2c5988-64c9-44dd-bd3c-9ce5cfe628e0
438	pbkdf2_sha256$260000$SU5FJbKjtBbMn1dYK5x4CQ$WtRaRpc51OWb6Uat3UUpe6WqDZiAeivdVc5UPGu6yVs=	\N	f	6bacf6dc-62bc-410f-8ec1-01026920d4b8	Наталия		f	t	2021-12-13	krisonka79@mail.ru	6bacf6dc-62bc-410f-8ec1-01026920d4b8
439	pbkdf2_sha256$260000$P9ToPBsjflJXsoDGl01Gp3$lst1LOA3wvXnKdE7yetFmsTqcpDJ4NcTE9y14gQug2Y=	\N	f	8355ceb4-fa33-464a-a026-ebd1fc175713	Alexander		f	t	2021-12-13	alexdenk.dd@gmail.com	8355ceb4-fa33-464a-a026-ebd1fc175713
440	pbkdf2_sha256$260000$9JfQom4GLJmNNjFRvci9Pt$r21QmV9022AvleFo57ZrVfRqMcqwBMngfHFHQzwkZL0=	\N	f	080022f5-fbdd-48fc-b435-19794b14dc3b	Артем Катунин		f	t	2021-12-13	artyomka@gmail.com	080022f5-fbdd-48fc-b435-19794b14dc3b
441	pbkdf2_sha256$260000$H2BPbPkmLRcoOqdj26IyfJ$ocD5SLgDwFdF2BtHTNIZNDSAgogtRRg9HTHMjsHIILM=	\N	f	57660bef-439a-4a8d-9185-ba8ae7af4972	Елена		f	t	2021-12-13	groma94@mail.ru	57660bef-439a-4a8d-9185-ba8ae7af4972
442	pbkdf2_sha256$260000$DrAMpGlSim2e6BgGlrckkw$qEhu3XHSPJPrA5rDA9FN+trWKSOk4TQT0MVl64E0FjE=	\N	f	794e88f0-81dc-4b7f-a333-16c57d668ba5	Никита		f	t	2021-12-13	n.shmaraev@gmail.com	794e88f0-81dc-4b7f-a333-16c57d668ba5
443	pbkdf2_sha256$260000$bixTXFxF7koNAt9ldxUatT$Oizs2o9PEpiDx4jsyJvttxCePJ1a4tvdNbw2CEaE0Wg=	\N	f	27e2265f-f914-409e-a3e1-508ca9ff5757	Юрий Крылов		f	t	2021-12-13	yuriykrylov@gmail.com	27e2265f-f914-409e-a3e1-508ca9ff5757
444	pbkdf2_sha256$260000$dgVfwu7y4nFvr4VkXxZakB$d70cNMDWFFpPLPpfNC4fAbvuWfy3DOLjBjzXe6wPKWc=	\N	f	040f617f-e99f-4626-a084-00877f9786d0	Андрей		f	t	2021-12-13	silent00storm@gmail.com	040f617f-e99f-4626-a084-00877f9786d0
415	pbkdf2_sha256$260000$Hh41ZQ397Tu0qX6pJbFEIC$zgcIdhRcobOZV6fNFIaQVxItD8bQXyZmE5dLg0740+c=	\N	f	f61b4b22-df63-4282-ba78-66bc7f5898ff	Александр		f	t	2021-12-13	zlatinvest88@mail.ru	f61b4b22-df63-4282-ba78-66bc7f5898ff
416	pbkdf2_sha256$260000$hZ2l0A4tK4lfZWeaDN4F0J$WMLXIj+KPMym3pTT66030k46LD7EhZd5qEjlC6we+U4=	\N	f	de0ba80b-c3cb-468c-af6c-2d8a42151660	Феликс		f	t	2021-12-13	felix.bortnick@gmail.com	de0ba80b-c3cb-468c-af6c-2d8a42151660
447	pbkdf2_sha256$260000$kyQzOO2WfMkY5r1g8wpPEz$hdIQJVZSGyx62kTcruqiqxOVKcApqScaUSxA+Wk9ZZE=	\N	f	25dc4088-122d-4770-b609-523628cafc62	Екатерина		f	t	2021-12-13	kate.slmv@gmail.com	25dc4088-122d-4770-b609-523628cafc62
448	pbkdf2_sha256$260000$LguFUyfGIpSxEpCqwB21iw$MZ3GygIzkZl3YKKjaMa9UNSmuBQXNDn0KStAshgQFHI=	\N	f	8fdb2002-72b5-473a-a1a3-76b6bbe9da38	Виталий		f	t	2021-12-13	Geosolop@mail.ru	8fdb2002-72b5-473a-a1a3-76b6bbe9da38
450	pbkdf2_sha256$260000$ZqaUvQLt4esOIOrpQjGStk$h9/tPvYUYn34RyRSRFxCEQEN4YAHPhfC6vFGNhbYOPE=	\N	f	1b9a5ae8-b19d-47f1-b6ce-1dde9d07b98b	Виталий		f	t	2021-12-13	vsvolkow@gmail.com	1b9a5ae8-b19d-47f1-b6ce-1dde9d07b98b
451	pbkdf2_sha256$260000$R2SgvwuPsVJGQ2wueuuTEg$2lyTuRzYtczb0hfT+0EvRD9+CUgk+2ZGZqr7C9EZSC0=	\N	f	39aa241c-9976-4bcf-8194-5e2e85c1dbe2	Юрий		f	t	2021-12-13	ooobtr_spb@mail.ru	39aa241c-9976-4bcf-8194-5e2e85c1dbe2
452	pbkdf2_sha256$260000$35BoCFqb1Yq0jrQPhuPrjQ$bVI2pnb1V7ulJVBdI2i4t/TsF82LxOCM7twrwrSTt6I=	\N	f	a085b0d4-048b-427f-9779-432cd8db20ef	Stanislav Lobzov		f	t	2021-12-13	staslobzov@mail.ru	a085b0d4-048b-427f-9779-432cd8db20ef
453	pbkdf2_sha256$260000$Scha1f4XDnzK7i6dl9YQy7$i/Sak0zXG7hpZgJk62K+8Y0Nkv9I1JUqsxIwI+U86H4=	\N	f	885aba17-f9b0-4018-b83c-a71698a9bc3c	Юрий		f	t	2021-12-13	Nariyan@yandex.ru	885aba17-f9b0-4018-b83c-a71698a9bc3c
454	pbkdf2_sha256$260000$2Ld4EkPb5qBmpwfuivp7Gn$L2yjXH68sxmrU+goWYO9Rymp0+t+rUyiMAAQUecT/gI=	\N	f	fbccc82d-8ee9-4691-ac68-6d9b6bc581e5	Елена		f	t	2021-12-13	goncharova.elena.82@mail.ru	fbccc82d-8ee9-4691-ac68-6d9b6bc581e5
455	pbkdf2_sha256$260000$2oNP3hHwB5au6ITv1PNfW2$QHBRz/0mcbLKa8xMOwpprZ1wwkXnME1SeJkU4mwll7o=	\N	f	2eb786b5-89a8-4946-a4e0-ecf637b67544	Татьяна		f	t	2021-12-13	tatakezic@gmail.com	2eb786b5-89a8-4946-a4e0-ecf637b67544
456	pbkdf2_sha256$260000$CBIzVeuk5JI8lMZuUrUQGW$qXJq2RxO6DTiV1NRTRpfe7YHCg9dKjj08G7xYNsGbMY=	\N	f	0b3c8341-e065-4847-bfe6-732ac138112c	Петров Андрей		f	t	2021-12-13	9635189@gmail.com	0b3c8341-e065-4847-bfe6-732ac138112c
457	pbkdf2_sha256$260000$1vMp0zvWEPsnAx6FTfzdHN$rzKOfZ1iRKHa3ov29WjtgxPuTPqTXDw3kmlhnmMC2F0=	\N	f	193632ec-781c-4690-8a5f-4b7aa69b7232	Александр		f	t	2021-12-13	petuhow.a@yandex.ru	193632ec-781c-4690-8a5f-4b7aa69b7232
458	pbkdf2_sha256$260000$A048URbtxhLhkogc9vzLFG$u6IvQBZy2pz4xIkLivhSrTpKTispCy+OLmmVgcganZg=	\N	f	427678cf-0983-472c-b484-ff3e200b1825	Евгений		f	t	2021-12-13	k0rdpo@gmail.com	427678cf-0983-472c-b484-ff3e200b1825
459	pbkdf2_sha256$260000$l9RZ4Lb9VJcRYHTmEuxzyr$zA1ssv8+e+DiWkAWNGoZHDigCv2FHJWtOn1WDFxVTdQ=	\N	f	4c07b592-d2e8-4df1-aef5-f5b53ac36b35	Елена		f	t	2021-12-13	selena27@yandex.ru	4c07b592-d2e8-4df1-aef5-f5b53ac36b35
460	pbkdf2_sha256$260000$GD8xEDvd8yM3GbizfiWpwq$wyjnyTVnPe4LkUOrXMr9jWEjYWTUS+rkEFcHdg0T88c=	\N	f	0348aa26-2568-4b8d-bdb4-873e7a254240	Карим		f	t	2021-12-13	Kaarim50@gmail.com	0348aa26-2568-4b8d-bdb4-873e7a254240
461	pbkdf2_sha256$260000$rQPQj8YklnMburCnSGc9kW$bxX/QxVPsYb/oELnPQWqESZfaohqRYogzkoub5bzR3Y=	\N	f	ea1ba1f5-5d0a-43ab-b8e1-2738eb7e6f3a	Александр		f	t	2021-12-13	alex-black@yandex.ru	ea1ba1f5-5d0a-43ab-b8e1-2738eb7e6f3a
462	pbkdf2_sha256$260000$ILfYnXRPRxNR0vDBECxYoF$Y4nMEUo8vwLPSdtag8TUB00cf/r6Y1JTRnQdbb3cZxk=	\N	f	a15e019c-621a-491f-a646-21f80f8b201b	Василий		f	t	2021-12-13	vasily-85@mail.ru	a15e019c-621a-491f-a646-21f80f8b201b
463	pbkdf2_sha256$260000$qZeAUEAJVmTuIPMz7BeXQR$cxI7lWxFzYCIj3X09INbm4ISmQyc/h0NOZhE40UpIAM=	\N	f	792a5fe1-3deb-4450-a6a0-b23f146e62e7	Igor Tsoy		f	t	2021-12-13	igortsoy88@gmail.com	792a5fe1-3deb-4450-a6a0-b23f146e62e7
464	pbkdf2_sha256$260000$PJfyKWAfgpWjwlAEXODDlA$1QQavTtcZ47TXhSuXKK/iJt0JwpzkgcNwqeo/6vGpx8=	\N	f	03785d00-c19c-4410-aaed-65d2ddcc3cec	Илья		f	t	2021-12-13	i9263455553@gmail.com	03785d00-c19c-4410-aaed-65d2ddcc3cec
465	pbkdf2_sha256$260000$toV83VJYRHxgfP16ynlHSu$gjAcYclCV+3QesK6P8Ru3UJAIlGk8TGkHMBPhN4ulb0=	\N	f	9c25c645-a2b7-4b07-a118-8d77b10338e7	Александра		f	t	2021-12-13	sasha.blck99@gmail.com	9c25c645-a2b7-4b07-a118-8d77b10338e7
466	pbkdf2_sha256$260000$nscgGrVVxxr0AyLHBjwtPt$GyKA40ZWtnitYBGLc8VnR9uLZ4R2e6AbEJoZgGbAaCY=	\N	f	8508bf2d-9820-4840-8bdc-55f8286a81c3	Александр		f	t	2021-12-13	priorastar@gmail.com	8508bf2d-9820-4840-8bdc-55f8286a81c3
467	pbkdf2_sha256$260000$l5Aq5du1ugdAXEeWgrFOp1$6zd2daQ3qtvLgb7Ba8v15r10YZ5SPd4W82s+fdoxYi8=	\N	f	f5d963fc-da53-4bdf-9c15-ca2084d05e31	Евгений		f	t	2021-12-13	e-krupenya-89@yandex.ru	f5d963fc-da53-4bdf-9c15-ca2084d05e31
468	pbkdf2_sha256$260000$vh7z5kOwmAOSuQQ7SL9FzT$9ztk4QCXPgv+FW8S1iiqZkVP4E5nZ0Sk3rGxlSEuqGI=	\N	f	364416cf-0ef6-4e9a-81de-be4555e2982f	Александр		f	t	2021-12-13	79069169592@ya.ru	364416cf-0ef6-4e9a-81de-be4555e2982f
469	pbkdf2_sha256$260000$hcUfa4PmvSOWxgSsqUC1Y1$0+SoHMu9NZyqb3AvplAsScbNIop+TiWH7/RsFtgTTrE=	\N	f	82eb6c79-89c9-4128-a733-611be372067b	Олег		f	t	2021-12-13	oyurpalov@yandex.ru	82eb6c79-89c9-4128-a733-611be372067b
470	pbkdf2_sha256$260000$QorH3FOb9GbgFVFffXxy3Z$L2CZnKlATLf4QHx6/zmnGTHT0IiPHgEzNrBp0XbTT4Q=	\N	f	8b3ee88c-6235-4f0d-9f11-311b3c77aeae	Павел		f	t	2021-12-13	pavel_cos14@mail.ru	8b3ee88c-6235-4f0d-9f11-311b3c77aeae
471	pbkdf2_sha256$260000$HBOY0GetC8uxXxknaCMhUk$lAIC6k+tSq2EV5W1Ta2tZUGxCmRoDF4Sh6H6DFRixzk=	\N	f	303eb011-cf28-4792-b060-1251f36cc3be	Альберт		f	t	2021-12-13	ovosnab@mail.ru	303eb011-cf28-4792-b060-1251f36cc3be
472	pbkdf2_sha256$260000$nTZVW9SbXm3KlrZbbYm8E4$qtJaxOs7RCImwAeTK+4bG6qcrONMAUXiVz68aiyxaTU=	\N	f	66d56572-4513-4c8a-bf1f-969f305f97f0	Ильнур		f	t	2021-12-13	vrk.ilnur@icloud.com	66d56572-4513-4c8a-bf1f-969f305f97f0
473	pbkdf2_sha256$260000$1drcGh7RNCSn9TIxnIddV8$V4s2ddrprW4UrsemV7ZtrgiOMjYjsz4ukTpjpuJoZdk=	\N	f	c279f1df-8b76-4225-90e6-85b5d4d9945f	Дмитрий		f	t	2021-12-13	dima2311@yandex.ru	c279f1df-8b76-4225-90e6-85b5d4d9945f
474	pbkdf2_sha256$260000$CKvpS3aBbw5koBP29LBfEr$UCyFrNyFmXVuocp/wmEFjVNu4Z5o5iz+c4qw8RSHN24=	\N	f	a4c2c238-4dae-4fa7-b174-a80600756337	Дмитрий		f	t	2021-12-13	doctorkaraulov@mail.ru	a4c2c238-4dae-4fa7-b174-a80600756337
449	pbkdf2_sha256$260000$bnunmJqfYNocDIGBKRqL0D$qC71lMDFZsTd98ihtRfXTg3vjiDNjfHNmwwOBqQogsY=	\N	f	7fea430e-7aa6-41d3-af34-ad1f8b06e9a7	Дмитрий Петров		f	t	2021-12-13	dmitrypetrov.moscow@gmail.com	7fea430e-7aa6-41d3-af34-ad1f8b06e9a7
445	pbkdf2_sha256$260000$GwsnzXDOEQEWUYP1M8lRax$nG4cHrnPhjI4b+XToiZ2o3plP6UP/KBwGiW9/0iv0hc=	\N	f	be4b6e9c-8b76-449f-9854-dba6a155d3c2	Олег		f	t	2021-12-13	okolobov77@gmail.com	be4b6e9c-8b76-449f-9854-dba6a155d3c2
446	pbkdf2_sha256$260000$v7OPMSwEcfR7PONcZLPUBB$vJD9HajskLy1gQqT5q23+9Eb7hM9iGWIJKQM6Bt402k=	\N	f	9f72da64-b2ac-415a-bf17-86dcc42f5622	Константин		f	t	2021-12-13	konstavinvest68@gmail.com	9f72da64-b2ac-415a-bf17-86dcc42f5622
477	pbkdf2_sha256$260000$McUlYo6x256H1ihoz5H5Hq$SoIxUUzhAAZbQVxpOnaCrwSOiTSRyHyGCgOkdoTxcdQ=	\N	f	3879a1da-c456-4276-afa4-99ed41014054	Максим		f	t	2021-12-13	abdulinmi@yandex.ru	3879a1da-c456-4276-afa4-99ed41014054
478	pbkdf2_sha256$260000$yFglZfdXTRYmWk9nSjNe3i$QLs61CbBlglCFHCx2qHiniCENJlj+D4hzpd7lSjH0DU=	\N	f	e5309355-c674-43ff-80c9-c398fbcc7530	Юриий		f	t	2021-12-13	remontautocar@mail.ru	e5309355-c674-43ff-80c9-c398fbcc7530
479	pbkdf2_sha256$260000$RVM8XMf3vChRuwWUxHZFGQ$6baouVvdwextQoBNJ8H/0C+npE5G+D1pqPZdUZ3ImZQ=	\N	f	63b151f0-4e98-4f80-9677-d24080677db3	Валерий		f	t	2021-12-13	trubinvalerij@gmail.com	63b151f0-4e98-4f80-9677-d24080677db3
480	pbkdf2_sha256$260000$jH7wdnaaZf4jGq8kp8URKQ$SzYb7FsQYugT/d9lMWfTQEOX4cHJ5Qmn4vm2bLiYP9A=	\N	f	194a0b2b-1705-419c-a937-ce3e8e5e3832	Геннадий		f	t	2021-12-13	trust.zgg@mail.ru	194a0b2b-1705-419c-a937-ce3e8e5e3832
481	pbkdf2_sha256$260000$jN8rFu6yjw1pxbMF5xJMZO$UvwRHuiYT2RxoO7sBGc/8qx17JFGg9lixNRonYVugu4=	\N	f	81119c9b-3854-4768-baf2-939944e3d38e	Алексей Кутуев		f	t	2021-12-13	kutuevav@bk.ru	81119c9b-3854-4768-baf2-939944e3d38e
482	pbkdf2_sha256$260000$BRmNWvlZvP4KAGJL94a3uc$VmO8q2P8t0JXMa+SHAOzJwXt0NPcrNTu39moJ/Le3SQ=	\N	f	ab024ecc-4b1e-41ee-b732-663cd8ab2c59	Алла		f	t	2021-12-13	alina58@mail.ru	ab024ecc-4b1e-41ee-b732-663cd8ab2c59
483	pbkdf2_sha256$260000$vajEyrD81LA1n4J7iO0ZsU$hv42kLRboAXMJ6MxO2nsgyyEQ4lWi9A9Ks5NO97BolQ=	\N	f	b7839fe5-7e0f-47f1-930f-ca252a3ab9e7	Анна		f	t	2021-12-13	schlotgauer_a@mail.ru	b7839fe5-7e0f-47f1-930f-ca252a3ab9e7
484	pbkdf2_sha256$260000$vBuYlYwouPmFPfjnP53eWX$HhTnSTStXUjKAcO8JjCXwKzu7JlKFMopzkLpcalSJFw=	\N	f	a9ea0fe5-9b17-4b0e-baff-395475d69572	Александр		f	t	2021-12-13	geodeziiist@gmail.com	a9ea0fe5-9b17-4b0e-baff-395475d69572
485	pbkdf2_sha256$260000$yIIfH84QHZa3HYCsnogQfm$kcm9wah4t7/AIYZesS4fC9P7R/scI4X9WIC0baMkLPo=	\N	f	6094bd69-ad62-4672-b313-b5711e82a54a	Александр		f	t	2021-12-13	alex2.savinov@gmail.com	6094bd69-ad62-4672-b313-b5711e82a54a
486	pbkdf2_sha256$260000$5xqbUuCsF4HWQE5iGFjSei$NRY/m4a9KWz3aqXwh3vXL4GmIaQRKyJkq9IVPrw1E8Y=	\N	f	dc7ff67d-5d88-4838-970c-e85870032006	Сергей		f	t	2021-12-13	pyatkov_sergei@mail.ru	dc7ff67d-5d88-4838-970c-e85870032006
487	pbkdf2_sha256$260000$ncXybVXa54RyE1vSHpSC4V$5+WENENorsICpHuZQYlZZquXBd9pvvKYm5VgJzezky8=	\N	f	b7d242ce-8f0b-4f96-9905-c47abb136bcb	Денис		f	t	2021-12-13	halfasleep@rambler.ru	b7d242ce-8f0b-4f96-9905-c47abb136bcb
488	pbkdf2_sha256$260000$W1OfKiiBnsaBCmjAbP5BPw$xGehYCkAJQQEizhdCgub/yOAAO8K8AHghlP4wda/lEc=	\N	f	b3be79a5-4b55-400e-ac01-032dcb4d1e11	Эдуард		f	t	2021-12-13	firesystem@yandex.ru	b3be79a5-4b55-400e-ac01-032dcb4d1e11
489	pbkdf2_sha256$260000$MZkeIm8sMtorePt2OSs8LA$Ymuh4OtyjQS/lUF8HPUeh23mt7YDS5TM2Cp+z2rA7hA=	\N	f	7e17866f-ead5-4c46-bb98-e552e05fe5ae	Светлана		f	t	2021-12-13	kalambet555@ukr.net	7e17866f-ead5-4c46-bb98-e552e05fe5ae
490	pbkdf2_sha256$260000$Mxws4qjhxP0YVx64I62iMx$a3uDWAoi3R72fkm6oyd6VzavqMAyXQH/ooJBZb1hDhE=	\N	f	e6c5ac7b-c7f6-4eb5-bd86-709bd1842480	Денис		f	t	2021-12-13	bludoden@mail.ru	e6c5ac7b-c7f6-4eb5-bd86-709bd1842480
491	pbkdf2_sha256$260000$BTKfelEvja74jGUFhGE73P$Z5S2170zfgfxP8SkWCqCx4GRN3FEmvgVHx7EAZMaL98=	\N	f	35878f0e-9b8e-4115-9931-510be63bbbb7	Витебская Полина		f	t	2021-12-13	7261101@mail.ru	35878f0e-9b8e-4115-9931-510be63bbbb7
492	pbkdf2_sha256$260000$2FL6cS7G83HTnl9wnwE9l5$A6fs6COHDQ3F7DVAo9kOkRmnQaN2i7LPQbulWhMbuLw=	\N	f	a866e71c-9215-4d93-b2fe-37bc6cdd6280	Александр		f	t	2021-12-13	alexarbagar@yandex.ru	a866e71c-9215-4d93-b2fe-37bc6cdd6280
493	pbkdf2_sha256$260000$1n29eU7z3aPhmKK0O6DPfQ$Icu0qNrLCtPk+QGzPJpRj2qyLj1PG5gVo6I2qMM+mCU=	\N	f	f2ba4807-d87d-45da-8dab-e49b369ed345	Татьяна		f	t	2021-12-13	t.kartushina@mail.ru	f2ba4807-d87d-45da-8dab-e49b369ed345
494	pbkdf2_sha256$260000$Rb6B4ym9YjtJk0UZV5NROa$2d28ICZe7FhMWqta4y0nKU4li9MEXzn33YG9RavoaX4=	\N	f	d204432f-cc56-433d-b870-2423457af43c	Михаил		f	t	2021-12-13	kovalkovmisha@yandex.ru	d204432f-cc56-433d-b870-2423457af43c
495	pbkdf2_sha256$260000$ODof8f9Czx18uV6BTWG4hS$P4jjy/v6XyywuvvREfoCBqfvncuTp4FU9DyAZ/PO/po=	\N	f	53b1740e-0163-484c-a549-f2fe857611b8	Антон		f	t	2021-12-13	toxxer@mail.ru	53b1740e-0163-484c-a549-f2fe857611b8
496	pbkdf2_sha256$260000$m1TOWXLiFJ2MQbZbEZBsbF$smbAfpmrFU2eBSrScbOrC/aSDH9e9SNGSRm5BKyua88=	\N	f	f53c4fd8-dbf0-4f4b-96b8-842e944c9f8b	Олег		f	t	2021-12-13	basist0795@gmail.com	f53c4fd8-dbf0-4f4b-96b8-842e944c9f8b
497	pbkdf2_sha256$260000$Sn4xF5LfrvSIKTghdzZts8$7wiFJMMBQtTTJ+fXTRw5FtY554sbsRAn5fPV3rqs5H8=	\N	f	bdcf4b8c-1195-47a2-b6dd-d4e6c0c978fb	Михаил		f	t	2021-12-13	lix.10001@yandex.ru	bdcf4b8c-1195-47a2-b6dd-d4e6c0c978fb
498	pbkdf2_sha256$260000$GZud7Cl41SPImNbqEW3SML$mFBQSGd95sooqboDisajGrCb4EzL9pvZ+SJzb9kjcqY=	\N	f	f7a5185e-d860-4148-9c42-9baaaaf44a3f	Влад		f	t	2021-12-13	fohtvlad470@gmail.com	f7a5185e-d860-4148-9c42-9baaaaf44a3f
499	pbkdf2_sha256$260000$QSDZU8HOb0iN9tq4NqO8gg$sNgIv81tgiabHbQT/NBMoShzrBwXUCaVwAGQKvBvNsY=	\N	f	b8c1c2f9-8e83-4ebd-94f0-7b956a75428f	Алексей		f	t	2021-12-13	kozmenko.a@gmail.com	b8c1c2f9-8e83-4ebd-94f0-7b956a75428f
500	pbkdf2_sha256$260000$NDeKjr86ntwRKGuIBvaiiL$iA1kXqzFfkR4vRxll/GMx6RIVbFurl515LNCskaXJcY=	\N	f	403bf04d-009e-4cbb-a28a-c688af920a93	Светлана		f	t	2021-12-13	Lana.korneychuk.83@mail.ru	403bf04d-009e-4cbb-a28a-c688af920a93
501	pbkdf2_sha256$260000$k4v0CWeiTsEYfbtRKPltxi$DPqREkzvchQX+ySpIaQqe1ywIS9QjVT1kZOYeBM7+UQ=	\N	f	c0da440d-62cf-4a37-988b-7bff2febe52a	Андрей		f	t	2021-12-13	andervancom@yandex.ru	c0da440d-62cf-4a37-988b-7bff2febe52a
502	pbkdf2_sha256$260000$z3OstM9utRPmVGtbPMctJ0$VN52NEK7Nj1IuQi9a3XbCUOAJcoKZoxUz1a+OGbsadw=	\N	f	465f11ee-3c6a-4632-a54c-b164cf2120da	Дмитрий Бутько		f	t	2021-12-13	dfbutko@gmail.com	465f11ee-3c6a-4632-a54c-b164cf2120da
503	pbkdf2_sha256$260000$NMU39Pm2pA0eWwwWMjiRul$TPO7bWGc1OxqMzoH1Vl/F7ohLQ3CE8s8EjBmkxTHqQg=	\N	f	03021772-416e-4f61-884f-37294ff32c9a	Игорь		f	t	2021-12-13	rekam-sm@mail.ru	03021772-416e-4f61-884f-37294ff32c9a
504	pbkdf2_sha256$260000$KTFbtPPz3qJWtruGaq1Pn9$rLF4A9uJb+INKRgpQzWd7plNljbb8JKdWquEZ5qg194=	\N	f	5be8f5c9-fdf5-401b-8ddc-c58047054065	Timur		f	t	2021-12-13	temaha@mail.ru	5be8f5c9-fdf5-401b-8ddc-c58047054065
475	pbkdf2_sha256$260000$vQJzwnBsIM36qNXCLYkuaW$/A7BoMguJ6XAQUIiZRJMlgl0grUid2dFk/CsA0kREv8=	\N	f	ecb9ac25-c7c8-4730-ae8d-c2359a96cd82	Руслан		f	t	2021-12-13	nurmukhametov.r.m@mail.ru	ecb9ac25-c7c8-4730-ae8d-c2359a96cd82
476	pbkdf2_sha256$260000$fXfZ1LnTXN9C7p8wDtIK1G$kCI0fe0AyLufdsn+x+3xfBN24OGKotAz8g1ZzxE8jUo=	\N	f	fbd7c2bf-b76f-4df8-8e53-d2d709e7e3f5	Игорь		f	t	2021-12-13	iivanov110@gmail.com	fbd7c2bf-b76f-4df8-8e53-d2d709e7e3f5
518	pbkdf2_sha256$260000$GMNBOrf4rlFPg4SVMynZMo$n16dcwsyZVvI1Ps9ae3863HmHqv3oZ9+QdKlrsQAsww=	\N	f	1177be5a-a582-46f2-b2fc-c56b0f3c95fd	Евгений		f	t	2021-12-13	Valerazabivai@mail.ru	1177be5a-a582-46f2-b2fc-c56b0f3c95fd
519	pbkdf2_sha256$260000$XBPzy6tiMInAlpexw6DK5Y$z4FW8UygD6sGSc0lQNGNCsv99Y1CqXZLBwuNt1SnV/U=	\N	f	fe4db0d2-0133-44a0-a400-179cb699736e	Евгений		f	t	2021-12-13	evgenarek@gmail.com	fe4db0d2-0133-44a0-a400-179cb699736e
520	pbkdf2_sha256$260000$1Ss4yVfJAW6NxzWK15xGDw$ivLy3mEZ+i4U1di46meM2zgQNBZ1k/MzYQ0/Xs2hCFY=	\N	f	643b0f89-d2a5-453a-93de-ffb056335574	Игорь		f	t	2021-12-13	napoli7071@mail.ru	643b0f89-d2a5-453a-93de-ffb056335574
143	pbkdf2_sha256$260000$DXbf5D3JXteRXTxuwaUe1x$oTmC7qp9QJFGkVSXYinDNtPgZWXad9KpjPMO4YZK3Xc=	\N	f	02d10f89-36fc-4ee7-8163-2e6bf16507b9	Светлана		f	t	2021-12-13	kolonda@mail.ru	02d10f89-36fc-4ee7-8163-2e6bf16507b9
174	pbkdf2_sha256$260000$RqTiD0BORM6ryFf0JnWv43$CmKk5aNG3udpOgWmNgLZ6NYWZL4EXsEMFxuw03dqsGE=	\N	f	b27f577a-9578-467b-b4f3-a22b6913c659	Алексей		f	t	2021-12-13	alexeymayakin@gmail.com	b27f577a-9578-467b-b4f3-a22b6913c659
513	pbkdf2_sha256$260000$oyvd22HNR07QzFiR7DEnsd$8F/H+Wf3HsCp8MNHQyKbWDmd5bRg8WUe2DJhDN4GIZw=	\N	f	cb14d1c3-0d8b-4563-9879-d8eded520e6a	Тамара		f	t	2021-12-13	79393@bk.ru	cb14d1c3-0d8b-4563-9879-d8eded520e6a
514	pbkdf2_sha256$260000$qUoTMnUoPms5mtP7cCSQG5$O11fITkI6Zu0XVpEiQ6zQaxC5IV0dG1YH2LYDlygFDk=	\N	f	433c71cc-3a8e-4f93-a115-d4764256dc0b	Максим		f	t	2021-12-13	eragerard@gmail.com	433c71cc-3a8e-4f93-a115-d4764256dc0b
515	pbkdf2_sha256$260000$rQJaUngIXnuVEkiW2kZjqO$yCfn8k/FP1eoyD8lQ7edTpFkBKXVfpBm8POJw2mNpoE=	\N	f	d4eb6b4b-96e0-4039-b63d-db8984d3198a	Эдвард		f	t	2021-12-13	rex2new@gmail.com	d4eb6b4b-96e0-4039-b63d-db8984d3198a
516	pbkdf2_sha256$260000$cV1GVn3tNNtF1Du2cdp6cg$gYY8yfyt4o+ar6Gw+cznk82L3/PsQ2aDExVquUjDn1U=	\N	f	e15df2f4-ac39-4eb0-9758-176721b0584b	Константин		f	t	2021-12-13	mr.cverdok@mail.ru	e15df2f4-ac39-4eb0-9758-176721b0584b
505	pbkdf2_sha256$260000$BCJCcfFi88UGNTHugmHK9L$qOeb2bbj2WjO7fF2plR0BfZumdbYRgMxivmWF0sZs4s=	\N	f	9db7a8c4-e53d-416b-a0f3-d2c8c0596ee8	Alex		f	t	2021-12-13	aalex7373@mail.ru	9db7a8c4-e53d-416b-a0f3-d2c8c0596ee8
506	pbkdf2_sha256$260000$ZIKowGV2PkbwblmeXnUTL2$zHO2qaCcj/VP3DjarD631fPHIFdwnBZrxIXDQqZWCLU=	\N	f	057145ba-f401-4c72-802f-d98428ed3c04	Антон		f	t	2021-12-13	antoney95@mail.ru	057145ba-f401-4c72-802f-d98428ed3c04
507	pbkdf2_sha256$260000$0qnGkxr92YSLE1HpmAs1R0$i2h2IkeFf1oy7jQFJn5PpjHKfUOUOmxqrPhi6rFsihY=	\N	f	ead56b1e-461b-4a2f-953d-b39ab6c6d9cf	Maxim		f	t	2021-12-13	maxxtory@gmail.com	ead56b1e-461b-4a2f-953d-b39ab6c6d9cf
508	pbkdf2_sha256$260000$qqk1fIQx3OTt8OrBI3Ai7X$UWWrsrtG0FPEtNECDrlhfMklvN33n8nS3Ex/AdAoMBI=	\N	f	630b6919-ba9c-4a79-9036-ca53bf523112	Салават		f	t	2021-12-13	slvatik@list.ru	630b6919-ba9c-4a79-9036-ca53bf523112
509	pbkdf2_sha256$260000$bBTI0QJaGpEHs1w9B003DP$MUq+Kuenwc1cqpz2nGQJhXB/jZCkxNVoQgFmWekEH7M=	\N	f	386d9c0b-a6c2-4f35-a1f8-219b8b519464	Shah		f	t	2021-12-13	Shah_tsuruev@mail.ru	386d9c0b-a6c2-4f35-a1f8-219b8b519464
510	pbkdf2_sha256$260000$P2d6gFQcxRVJOKzlsixbJN$/zI+0R9iaCNrAaQAFsTFJXfJ8alIqNKOYRD77xiggAI=	\N	f	dcb977dc-3a3d-4523-92a9-166379122297	Дмитрий		f	t	2021-12-13	bazzdamage@outlook.com	dcb977dc-3a3d-4523-92a9-166379122297
511	pbkdf2_sha256$260000$Lz1VuXYjvxnyRFZrpFoirp$Am94xYOTSersLM/SZqJDUSmHjT35HyQYbBR4AMAqAao=	\N	f	f1c14a19-fdf7-42a6-82e9-c9825df40cff	Олег		f	t	2021-12-13	eo2011@yandex.ru	f1c14a19-fdf7-42a6-82e9-c9825df40cff
517	pbkdf2_sha256$260000$MhfR2SrrNZp6clyNSimcB6$P5yxcqO1qQJn5OSya8Ev7yVFlCYDFh4jZHIDOTZ+UEw=	\N	f	f696c072-4266-4f8c-8f46-069d3f6b32e2	Евгений		f	t	2021-12-13	skipper11722@gmail.com	f696c072-4266-4f8c-8f46-069d3f6b32e2
521	pbkdf2_sha256$260000$jWFhyVkJ6Wy6joSov6APmG$vhBXwmW7YFtRKt3Vx8GLRzxSA8tLGvtakXAs+Ap1unw=	\N	f	7ca9c460-10be-4a84-b24f-f462b3f1ec97	Александр Кост		f	t	2021-12-13	2124187@gmail.com	7ca9c460-10be-4a84-b24f-f462b3f1ec97
522	pbkdf2_sha256$260000$vRBiAXQfAUMB7CotzaaRLz$Oudn+inCwt2woRD3WyEnGLmDYe2dWFPpBao7+Q33Jqs=	\N	f	543a4720-62b3-4290-aa2a-346667a903f7	Сергей		f	t	2021-12-13	6087570@mail.ru	543a4720-62b3-4290-aa2a-346667a903f7
523	pbkdf2_sha256$260000$FZVXzdcs6JusnuugzHHkaR$4Kujpv0gv7dht14P016IuKH9zhz/gL08G+H84+FP2gs=	\N	f	41af69e9-1f0f-44be-8cc2-f364b0d62f40	Ким		f	t	2021-12-13	max.kalinin201@yandex.ru	41af69e9-1f0f-44be-8cc2-f364b0d62f40
524	pbkdf2_sha256$260000$9VJbnrHB7TAIgjHiHvycZv$ti97SWM6GeZxWPCthFdo5EkUH3ybYV9kuCTvTx8NqMU=	\N	f	c921832b-6ceb-4ddc-8741-0e4332a4aab6	Егор		f	t	2021-12-13	egogisheh9@gmail.com	c921832b-6ceb-4ddc-8741-0e4332a4aab6
525	pbkdf2_sha256$260000$JyCJ9IlXRcjLTQnhsqLYZP$yfGJmTPyRZoChsfioTb1quTCAMQGJ/GSxZ/d+78cTDE=	\N	f	955e4e77-22a0-4375-b897-751a7000508c	Наталия		f	t	2021-12-13	natarudnev@yandex.ru	955e4e77-22a0-4375-b897-751a7000508c
526	pbkdf2_sha256$260000$zcIujh6QQYoV9QssvixWfv$LX6pWivMXbJJDBS3n5ndFtdc2eQjhrczwtKNhwYR//A=	\N	f	fcaf5cba-8d94-4f04-93f4-239dc37adb47	Александр		f	t	2021-12-13	Lomakin210879@gmail.com	fcaf5cba-8d94-4f04-93f4-239dc37adb47
527	pbkdf2_sha256$260000$LgOlLlnQIrBpctXfnIpt6v$dZ7590s9YNWaox8wZem4ko6d4aafzumKVqT4gQZM3Qg=	\N	f	97e51d5d-d21b-4afc-91b8-caf44a5cc96f	Julianna		f	t	2021-12-13	forallint@mail.ru	97e51d5d-d21b-4afc-91b8-caf44a5cc96f
528	pbkdf2_sha256$260000$fMSK2Lz4DKGnmEI8vbSYdS$XJOh8xH52c897n6T1yVMkO7wF+DX5Fw2gJQ6RJsTIG4=	\N	f	c5d42dda-19c8-47ee-9a17-a2196a21816c	Сергей		f	t	2021-12-13	online93@yandex.ru	c5d42dda-19c8-47ee-9a17-a2196a21816c
529	pbkdf2_sha256$260000$ROD3EKlIGzs69xc25XzDsm$v47iXN/etGf6tFzXfRGDF0RUlM6+TmmYFpcYyd0LTi0=	\N	f	037d2fc2-4feb-4ed4-b13f-e737ef9cb220	Виктор		f	t	2021-12-13	yagupovviktor2202@gmail.com	037d2fc2-4feb-4ed4-b13f-e737ef9cb220
530	pbkdf2_sha256$260000$9Ccu8B84kajv5Srx2vqMaF$ePH8NTIysYJOyWnwGY6aG2km6AC44izxjAQCrv+1YRs=	\N	f	e4e929b4-bb85-48da-9650-c90df98a4e6f	Сергей		f	t	2021-12-13	vsp7496828@gmail.com	e4e929b4-bb85-48da-9650-c90df98a4e6f
531	pbkdf2_sha256$260000$qV9EUPSzMVJ7mlM1XqrpOx$6vhyMB8zFffCNXTZ1dSYtksDkD8QjfshbpQw8MHZUKI=	\N	f	4188deab-7e05-48b2-bfaf-650b54686f0b	Elena Fedotova		f	t	2021-12-13	lenfed2304@mail.ru	4188deab-7e05-48b2-bfaf-650b54686f0b
532	pbkdf2_sha256$260000$YQBp9RVR137xAnoLyIA2IL$q5uf0TzN6t/9Vh6p8z8D+I7W9Sc3NrwM3Tjt7hjftIY=	\N	f	2f3f0ed2-dd0a-4a85-b73f-d66a2973ed96	Игорь		f	t	2021-12-13	trifonov.i.j@gmail.com	2f3f0ed2-dd0a-4a85-b73f-d66a2973ed96
533	pbkdf2_sha256$260000$zKnqj7R8cDOtvMFFbWz03P$O2Eiqr8XPI9KQj0PxkMsSIucmd7IevM2nPwpGr0ud3g=	\N	f	d7a034b9-8a0f-411e-8046-6493fc34907c	Александр		f	t	2021-12-13	aleks.zac@gmail.com	d7a034b9-8a0f-411e-8046-6493fc34907c
534	pbkdf2_sha256$260000$rZVcWLS82xaYujNdTR2HdJ$MOpnf6HrBon2ZQXp54AgG9RxwNEZXsVSezw34XAdf0g=	\N	f	ae651f3e-7b40-4a7d-9c31-a4c00df4760f	Irina Lapirova		f	t	2021-12-13	ilapirova@googlemail.com	ae651f3e-7b40-4a7d-9c31-a4c00df4760f
535	pbkdf2_sha256$260000$giLPNNMfpotSUD3WxqCUfO$+nNgd+DhP0APO4pshxCfCrQMph/S3C2nE3XBvRLP224=	\N	f	1f339783-38dd-4b86-a3f9-f274a26a712f	Erik		f	t	2021-12-13	e.bovarec@gmail.com	1f339783-38dd-4b86-a3f9-f274a26a712f
536	pbkdf2_sha256$260000$C7tVd43dgWdHJDJMqQR2Dx$4+hfsIFhvP/cTpTFxXXA6sUkwB5G3u6p4lFg3T8a1TU=	\N	f	a7dcfbdb-76c9-4f15-beda-3b902296015f	Анна		f	t	2021-12-13	vse_zdes@mail.ru	a7dcfbdb-76c9-4f15-beda-3b902296015f
537	pbkdf2_sha256$260000$5EMfrxxW8jOMdVwqFkHX0F$rY4yqTi4XbwJVGS5j/T7EwMhowiLIe5ehorbmT7s/k8=	\N	f	b0829614-366f-4897-aeef-77a2ec478363	Константин		f	t	2021-12-13	koplachin@gmail.com	b0829614-366f-4897-aeef-77a2ec478363
538	pbkdf2_sha256$260000$mQp7gtu2ZItNcPUFCDrZon$8O3AaygyznZwE58dqWOhfzn/9PE1OtLZ3W+A7BO0KvM=	\N	f	51c9d3c7-5c37-422e-87c6-43507b68e6a1	Владимир		f	t	2021-12-13	pobeg1231@gmail.com	51c9d3c7-5c37-422e-87c6-43507b68e6a1
539	pbkdf2_sha256$260000$ArYdqnSVpfODKxJeynSbpK$u92kFZgAuoSMGwzs6B577KBX8qr9S04X/tlVF9cKWbc=	\N	f	ed86f0f0-7747-411f-8a34-4c834be30506	Ирина		f	t	2021-12-13	irinachvileva@mail.ru	ed86f0f0-7747-411f-8a34-4c834be30506
540	pbkdf2_sha256$260000$iYZLZ9uClAas4oB150HBNg$yCeXw2NfgkHGRszsc+o7B12oD/FvI5HqZ9ycVAm3Fvg=	\N	f	ea73075e-601f-45b6-b1fb-7e4664f0b14c	Виталий		f	t	2021-12-13	89153478530@mail.ru	ea73075e-601f-45b6-b1fb-7e4664f0b14c
541	pbkdf2_sha256$260000$JZ3BlLF3ylJtG19wjKF2dF$n4zDYWUJjnrl6pQHuTm/fm/1AUV3SHJT+CKJmuQe0Do=	\N	f	08f4c289-cebe-4d9d-b460-1c6e6c54ea5c	Кристина		f	t	2021-12-13	kristinakhorikova@mail.ru	08f4c289-cebe-4d9d-b460-1c6e6c54ea5c
542	pbkdf2_sha256$260000$8iyDdIHv16qEhvtKmHX6Np$Sx+IXQdc2Ix67U/3+RA7HLBMzh0LaIynCB6UOrbPlmE=	\N	f	243e9c44-d28e-45c6-88f9-0b61ac724d1e	Роман		f	t	2021-12-13	MailyanRV@gmail.com	243e9c44-d28e-45c6-88f9-0b61ac724d1e
543	pbkdf2_sha256$260000$o7SwIaqmQjaG6y1IKfhYLc$l/BuBfrU0cenHXbMzx+UUU7yNDwfXlTImnsvi3cDt1s=	\N	f	3fe93bdb-b288-4cc8-8a34-29bbc34cde86	Денис		f	t	2021-12-13	mosin_98@bk.ru	3fe93bdb-b288-4cc8-8a34-29bbc34cde86
544	pbkdf2_sha256$260000$PxNiFgzI6gbbyKkbvBdMHd$3JQu+fmTkd/+fMs7Hg8MxAOOuNRnqFVnM2JYNNM7m3Q=	\N	f	4fa67ac6-8536-4c61-9990-ea426815decb	Ильмир		f	t	2021-12-13	ilmir201e@gmail.com	4fa67ac6-8536-4c61-9990-ea426815decb
545	pbkdf2_sha256$260000$Uj4PSWcrrTxXstIORE6xup$aAAOHWQe0/gzRPJVyTaP4ZdyAh/xRJlLkA+RT7YZPNo=	\N	f	994ebe5a-074f-44d7-93f6-8af5262d1e7c	Денис		f	t	2021-12-13	madby31@gmail.com	994ebe5a-074f-44d7-93f6-8af5262d1e7c
546	pbkdf2_sha256$260000$7aSubjP4unj2GRrnqLmqOK$JCyLM2GbJRAUT99YM6yYCyahZowaIpXmA+KSp3Ughdk=	\N	f	67ac4738-1076-4934-8dbd-9a2da2d86b00	Дмитрий		f	t	2021-12-13	atom1fast@yandex.ru	67ac4738-1076-4934-8dbd-9a2da2d86b00
547	pbkdf2_sha256$260000$v5fBwemAqQ6cm6DT8iienV$IkAKX4kDvje4RYU0pqdnI79N8zFrA1yfIt3UCjrjo/o=	\N	f	83630ded-0d84-486c-af9b-0febeecd3712	Denis Shishkov		f	t	2021-12-13	dennisrodman74@mail.ru	83630ded-0d84-486c-af9b-0febeecd3712
548	pbkdf2_sha256$260000$XMXgnabefozSuuX6j0VYVx$pdoJVZRUQqNcIj9mMVDpxevJIeNgZpy1Lwy5OHwy09g=	\N	f	7f9dca87-adbb-4895-81a6-2f1b63ae0443	Александр		f	t	2021-12-13	alexander-rus1@yandex.ru	7f9dca87-adbb-4895-81a6-2f1b63ae0443
549	pbkdf2_sha256$260000$Kcz699JJmADW1ZMcm3aIsT$wdxlYTPOZAfX0eCAldHu5TGqGmqa+QF7rE+jHoL7K+E=	\N	f	d686457e-9ed5-4838-9897-29cd91e2ba58	Алексей		f	t	2021-12-13	beregalex@gmail.com	d686457e-9ed5-4838-9897-29cd91e2ba58
550	pbkdf2_sha256$260000$iCPf2zjvDgPSiJKC9o54UZ$SSvK1nhqbiDpx+8PzQXE7EW0TMQCkUY/M0vxQvGpKVg=	\N	f	8e7bcdba-133c-4daf-bd52-489db4624a44	Владимир		f	t	2021-12-13	uninetysix@gmail.com	8e7bcdba-133c-4daf-bd52-489db4624a44
551	pbkdf2_sha256$260000$kc5qk8FDQMAaugFClzuMcS$86gQAfPyf1PZEdrd4QS2de0u33NrqBIr39YJZOMlQ/s=	\N	f	b28da955-0b80-4561-8214-ef708955dd1d	Иван		f	t	2021-12-13	sann60@mail.ru	b28da955-0b80-4561-8214-ef708955dd1d
552	pbkdf2_sha256$260000$9pnQ7LiVH557uHSzs3T59k$obbk3vJ0+EWkMo8/xv00wwCIiOUkR5iuETGPA1OdM7Y=	\N	f	afe97f3a-039f-4d88-b0f9-f6b253ead823	Наталья		f	t	2021-12-13	kotelnikovanatala616@gmail.com	afe97f3a-039f-4d88-b0f9-f6b253ead823
553	pbkdf2_sha256$260000$uCODkgsZeDLlfqCJ8CBYBd$4mCoDwbOQFL7fHve3IBMQ7gbPEQ5tYE39Juf9ie3CdQ=	\N	f	6f223796-65ea-4d70-bdb9-a249bdf52c36	Елена		f	t	2021-12-13	tf-melon@mail.ru	6f223796-65ea-4d70-bdb9-a249bdf52c36
554	pbkdf2_sha256$260000$LEPJwSqd0VbeNpClWyip1c$eYow427Ry/6TMMEMiz9EqS8zOQA00FygzzDHITAoygs=	\N	f	3b33fe13-203c-4cbb-b125-bca9049169e5	Дмитрий		f	t	2021-12-13	dima-spont@yandex.ru	3b33fe13-203c-4cbb-b125-bca9049169e5
555	pbkdf2_sha256$260000$xPzMKYxh3E3lx7NsnHhGfz$rKE1FEdOh4re/PmSk5P6hJJ/4Tx1qCJG3DL8HwBtxSc=	\N	f	2fed579e-4f28-4ff0-8f32-e5ead3468881	Татьяна		f	t	2021-12-13	tantjema@yandex.ru	2fed579e-4f28-4ff0-8f32-e5ead3468881
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
566	pbkdf2_sha256$260000$KBeNa83pGDsUlx8bMqWHJh$6UPKIHeHuuOL1wBO3qFU9wO3jCXP6YsTUDHI+Khw30A=	\N	f	f99b0158-4359-4530-931e-571097f1479b	Ольга		f	t	2021-12-13	Mailbox150@mail.ru	f99b0158-4359-4530-931e-571097f1479b
567	pbkdf2_sha256$260000$xRJPB0ubWzQW8HipcApp0W$A+NOv64UjLB6kmzUVJubGbBKP03teeYfCnEmqapowAY=	\N	f	5fde27c1-a0d2-480b-bd10-828b635cc885	Илья		f	t	2021-12-13	2525903@mail.ru	5fde27c1-a0d2-480b-bd10-828b635cc885
568	pbkdf2_sha256$260000$zBzfS7ZM80GQnpQsAt1eVv$jDnmgurlTYNyspDpiUhdZcjhFc83iPObu4/pDTyABQw=	\N	f	b1862f75-1779-473b-b6f0-5b592b2e77f5	Сергей		f	t	2021-12-13	trkssp@ro.ru	b1862f75-1779-473b-b6f0-5b592b2e77f5
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
585	pbkdf2_sha256$260000$Q1nlEweZs7hVgGU3AEgrTt$+JqrIAlfHMvZVrdK1z4tIpPtNcIp9WRsnu2CS6qbjmg=	\N	f	25e93da0-1c79-49f3-b902-4e15a4c38423	Андрей		f	t	2021-12-13	driver-a1@yandex.ru	25e93da0-1c79-49f3-b902-4e15a4c38423
586	pbkdf2_sha256$260000$YmPKXQ3sIqImwivXsaOtVz$zz5cYZ6DGvJHEpi+mBUEjNCZad0rR1oXogVY03l2yPk=	\N	f	1f970c76-1fa4-49de-8c07-f4a6f8953a02	Никита		f	t	2021-12-14	lingvalf@gmail.com	1f970c76-1fa4-49de-8c07-f4a6f8953a02
587	pbkdf2_sha256$260000$8Yq8r955fCmTYs4DJhItK4$oo1OveoGUdoNdHFfSFRrlTkXJIdxlwzMZyJSD+t7qZE=	\N	f	58c5fbc0-138c-4ea9-97bb-b9603f90d74e	Василий Александрович		f	t	2021-12-14	vasilmel@mail.ru	58c5fbc0-138c-4ea9-97bb-b9603f90d74e
588	pbkdf2_sha256$260000$DH0VKFBNrvCHJfcTKogUnB$KyOmf/8TXp2RmKn/L0x51i88fy4NEOvhcFllIIyHfvU=	\N	f	6fba8924-369b-408b-9d2e-ac61d5db3fa2	Юрий		f	t	2021-12-14	yura-andriyanov@yandex.ru	6fba8924-369b-408b-9d2e-ac61d5db3fa2
589	pbkdf2_sha256$260000$bfFobvEwyEbh8ihagn3CKi$LA9tWQhM61MA3yV/Z7hYN2lN74cd+sKvzoPHStOr9+o=	\N	f	7972f706-97e2-4652-a8e1-1004b05bc258	Сергей		f	t	2021-12-14	seriyyyyy19@gmail.com	7972f706-97e2-4652-a8e1-1004b05bc258
590	pbkdf2_sha256$260000$9wQvRUU2gwiKo1bAqYnGVI$S2tXpGl7Ae6yDjjbYcbWgsAg9CTYho9r6UunzjNV35k=	\N	f	9d98b796-ea6d-4ba6-8786-aed4e6651905	Евгений		f	t	2021-12-14	exsinord@yandex.ru	9d98b796-ea6d-4ba6-8786-aed4e6651905
572	pbkdf2_sha256$260000$vvKPxk4IQA6WczbSOAlC68$7HK1+S2BzR9cdXcDPvtHCQoChnH8KxpzApxifngFGeI=	\N	f	d5486147-9cd7-473d-a47b-74aaf8b6be5c	Руслан Чайка		f	t	2021-12-13	ruchayka@gmail.com	d5486147-9cd7-473d-a47b-74aaf8b6be5c
592	pbkdf2_sha256$260000$uB47NE2rMUiIf4z5rqSRYG$k84dF6l2RdPhDhszNU9T22N+POrLCgK6aT1EzPtAU6s=	\N	f	9504b95e-72ec-4fe5-b422-b9bee440d0b0	ALEXANDR		f	t	2021-12-14	alex040483@gmail.com	9504b95e-72ec-4fe5-b422-b9bee440d0b0
593	pbkdf2_sha256$260000$TzNk34UrDI4EoBwjxwRAgE$yU4L0SRc4Nrmo7bCSZ7sFN42OF580x4RFUHcTaSH5iA=	\N	f	270d88ac-fdb9-4d37-b9a2-97c42a3450c9	Volodymyr		f	t	2021-12-14	kadilak97@gmail.com	270d88ac-fdb9-4d37-b9a2-97c42a3450c9
594	pbkdf2_sha256$260000$eknFblDdeXA0YSqI4GEw5m$Z7NZkMLMhL5+04q4DfwnJA3Xzuf74wg2WQ4QpPt85xQ=	\N	f	c0966b2c-475c-4edc-adc7-c72423b39b03	Андрей		f	t	2021-12-14	andreyzh63@mail.ru	c0966b2c-475c-4edc-adc7-c72423b39b03
595	pbkdf2_sha256$260000$a2caT5HuSg868bx6wg1tJN$Ee866HWnBaFINdT4bqXgfq5m8LreW8bxzLkg9is/BFo=	\N	f	3fc57738-29f0-4b9c-90a1-4573687ed675	Павел		f	t	2021-12-14	Snegg-ok@yandex.ru	3fc57738-29f0-4b9c-90a1-4573687ed675
596	pbkdf2_sha256$260000$ckuaNCGR1JtZ6aJSaFb4N5$iRH9LE9v4w578Alx83eJ7XjkNORMTHv1lNtMth0DayY=	\N	f	bd722905-cddb-4538-afcf-755aa434b815	Юрий		f	t	2021-12-14	symmetra@mail.ru	bd722905-cddb-4538-afcf-755aa434b815
597	pbkdf2_sha256$260000$TwpG15xYPZH0fNlwkmhrlv$wHFNkGCTNE8wjvqA0x0ycmNovI0KvlIKXptNdmT3vEo=	\N	f	2e31676b-9186-45b4-bfaf-f5f4328140c4	Алексей		f	t	2021-12-14	laeran89@gmail.com	2e31676b-9186-45b4-bfaf-f5f4328140c4
598	pbkdf2_sha256$260000$xSM3yaCB2aEaMQlhT1zeAk$Q5cwDBQV/lXCXjqBWmepuBA6jkkOoyNe4AxmgeOclnU=	\N	f	bf4bade4-9c8b-4d03-b789-9168388ee315	Имяреков Андрей Александрович		f	t	2021-12-14	Andreich121@yandex.ru	bf4bade4-9c8b-4d03-b789-9168388ee315
599	pbkdf2_sha256$260000$lg0muDMXHg1JsFPfAMrgzj$q/LgNWE2gDL3mF+wcVQlsfh0bWWGp+A6rU8yyflQwAE=	\N	f	213b5b90-3239-4e2b-ada1-4aa4a27b34b9	Оксана		f	t	2021-12-14	ksush_on@list.ru	213b5b90-3239-4e2b-ada1-4aa4a27b34b9
600	pbkdf2_sha256$260000$BYGcRuTltV52HKeFOxOzUx$ssgxOupOT79PKITxnfURl04gzfg1k0pt2StQ78hsH1Q=	\N	f	9500ddb6-f8a3-4b4f-a26b-76dffcd339e8	Saginov Serik		f	t	2021-12-14	saginov13@gmail.com	9500ddb6-f8a3-4b4f-a26b-76dffcd339e8
601	pbkdf2_sha256$260000$oQDnop32JL07gfoGkgNNWZ$c/qplmCwphDXkLXrBue6LAkqLGL7KfXXdpsV+fstuUQ=	\N	f	cdb16172-201d-4855-aab5-0491eff04ade	Ян Ицкевич		f	t	2021-12-14	it.yan@yandex.ru	cdb16172-201d-4855-aab5-0491eff04ade
602	pbkdf2_sha256$260000$l89heNGQKAHVapk302cl2N$Sdz+74hthVqa+cjP4kGuPFLEMry+7Vr+Kr4IC3d/MWo=	\N	f	da5fdf17-1647-48f2-8053-4286e176ef6d	Наталья		f	t	2021-12-14	natakras@me.com	da5fdf17-1647-48f2-8053-4286e176ef6d
603	pbkdf2_sha256$260000$xYfAKeII6xa7VwodEJE5yk$LuhxRlkTUopeTda3YXjPjX1X16B9e0JLD6a0Cr/dCAc=	\N	f	e2024d13-159c-424b-a9d7-6f9c861390d8	Максим		f	t	2021-12-14	rezkimaks@mail.ru	e2024d13-159c-424b-a9d7-6f9c861390d8
604	pbkdf2_sha256$260000$T3M4uTIBBpo5nrhW2JVtFL$BusLBprajw3Bkhb1CXrIeAAUNkSD6TXtAuQEZaUvLW4=	\N	f	110f5ea2-0fc9-4e8d-8713-35206a4dd36b	Игорь		f	t	2021-12-14	tokarevis@list.ru	110f5ea2-0fc9-4e8d-8713-35206a4dd36b
605	pbkdf2_sha256$260000$rxX22Z9QU1THKDfyyhj1zO$tTN13zUl6HDIFROFfMJrpjep0Rv6sKAhkUcfea8gRmQ=	\N	f	d745969e-a853-4e75-8f0c-21e5d1ef9d80	Алексей		f	t	2021-12-14	420821@gmail.com	d745969e-a853-4e75-8f0c-21e5d1ef9d80
606	pbkdf2_sha256$260000$9Ur1bzCix5I2CqUYrdvvpQ$k7sWxZTTquxBhh9K1Kv6VCDwtyXl1M7KOrQuI9agHQk=	\N	f	bee17cb9-e0b9-4c96-bba3-b42ed8b0596c	Давид		f	t	2021-12-14	avetyan_david@bk.ru	bee17cb9-e0b9-4c96-bba3-b42ed8b0596c
607	pbkdf2_sha256$260000$ulrTEgNKCqXoiLsHtlToxv$cuU/uzil4w6nB3PhT6VHLGtI26LDB0GO1+iyXbXevxs=	\N	f	7d177af6-388e-4588-afd7-5eca7bf5d393	Владимир		f	t	2021-12-14	Erna72@mail.ru	7d177af6-388e-4588-afd7-5eca7bf5d393
608	pbkdf2_sha256$260000$diAtHyK4GgiHZugWU4wHu2$em45fivuH6Tdx9MbTqDW6srK6jJAW7CzlY+UXkmryn0=	\N	f	c7418fb3-1b9e-47da-be26-b61f82076b91	ILDAR SALIKHOV		f	t	2021-12-14	C.ildar@mail.ru	c7418fb3-1b9e-47da-be26-b61f82076b91
609	pbkdf2_sha256$260000$hIoEEssYw9fYG4WXDlpN4y$q8aSKsC1/maSFRzHuEheWOEsuCYyhimhj9TjFj4o/Nw=	\N	f	d99772de-b3fb-4907-bbb6-729620b74844	Денис		f	t	2021-12-14	saenk_denis@mail.ru	d99772de-b3fb-4907-bbb6-729620b74844
610	pbkdf2_sha256$260000$iKR2rRF3XmmYd4f5ZeWDNQ$hBNP2MmJR+U2uA27Jmtkhj9fu6LHjpP7/DeYhjeNzeg=	\N	f	1b23f326-b91f-46b9-954f-1fe19dc5c28e	Александр		f	t	2021-12-14	Dir@gnk18.ru	1b23f326-b91f-46b9-954f-1fe19dc5c28e
611	pbkdf2_sha256$260000$WwCcU394l2mcQlXSs2iTnO$jZf+mmhgLxSC7qmUAozhWuRIyf8zWy6QoaMzK9I8mpg=	\N	f	4c883fe4-4637-4a86-8f77-f71a07e37731	Дмитрий		f	t	2021-12-14	dumoh.kmv@mail.ru	4c883fe4-4637-4a86-8f77-f71a07e37731
612	pbkdf2_sha256$260000$xdEXubUkqwAzUpNijnvEuh$Be0ZYfnBsEb6rHUJ0EHoVNEDRfSij5kHNGGH40bgzco=	\N	f	1586b8b9-11e4-49e9-9286-7f56862761f7	Надежда		f	t	2021-12-14	nadezhda-roshhupkina@yandex.ru	1586b8b9-11e4-49e9-9286-7f56862761f7
613	pbkdf2_sha256$260000$R1IBQw0ikYdyLsNVsmeEUy$ItAA0nIJTGOHRqfWYKiqESf6UPNZH3FQgiFUhBz0Bqw=	\N	f	5f14f662-0c7e-42e6-9863-23bc4ef80cfd	Анна		f	t	2021-12-14	anna_trg@mail.ru	5f14f662-0c7e-42e6-9863-23bc4ef80cfd
614	pbkdf2_sha256$260000$o8ZJJowcE8LvzQd0BCeT0B$B3FT/Uc61pCCpcx2zQWtKHoZLvzn92lqYJr/lLjLggE=	\N	f	751ca67b-872c-4eed-802d-43dd14da9799	Оксана		f	t	2021-12-14	o.khomutovskaya@yandex.ru	751ca67b-872c-4eed-802d-43dd14da9799
615	pbkdf2_sha256$260000$Wid10r21hRnmLNIzDWelWo$ufg1/Pub+zMvA6Q9bCSS9pm6yq0ezsntNEwm/r/yrls=	\N	f	0b8ecaf2-04a9-4936-8c9a-51d5259d6848	Анжелика		f	t	2021-12-14	a_leikam@mail.ru	0b8ecaf2-04a9-4936-8c9a-51d5259d6848
616	pbkdf2_sha256$260000$y4xMSKAJQzZ0L1HInzbKus$A5a3g/SK2kHiASV7bGnJWfFBX+kVuAbVerDDv6Ye1sE=	\N	f	1af505d6-0566-4a21-a75b-84ad7058fbab	Александр		f	t	2021-12-14	alexnika143@gmail.com	1af505d6-0566-4a21-a75b-84ad7058fbab
617	pbkdf2_sha256$260000$c2belTlLILnMFvrzr1ColQ$vR8Fqzf7nJFTjV3Cj5XEPEvahX7cQQe06d5anv11vpw=	\N	f	795b57cf-8f91-4253-a19f-d8844e841170	Сергей		f	t	2021-12-14	mon.ser2011@yandex.ru	795b57cf-8f91-4253-a19f-d8844e841170
618	pbkdf2_sha256$260000$EAh0oTAfMDADjVOkMC1nwI$6HlcjCDOnRKqCyGB1TBKyjZZNhtZuwhsuAGLILccC5c=	\N	f	f7407dfc-647a-4dc5-8b5a-15d8dbfee187	Дмитрий		f	t	2021-12-14	Namidx@gmail.com	f7407dfc-647a-4dc5-8b5a-15d8dbfee187
619	pbkdf2_sha256$260000$b14LaJvEfMgt0UThiXfGVC$jxHqE1ejtBszZr/rYYIutPSTLjBQuhuIk3p8TZrUa+U=	\N	f	36a37c5a-baea-414b-89bb-e2dcb04157f4	Александр		f	t	2021-12-14	savalexbeast@mail.ru	36a37c5a-baea-414b-89bb-e2dcb04157f4
621	pbkdf2_sha256$260000$R8uTk7NKhQhqLxBTfR30iQ$TQFe0BaIYBZDz/p7fCzAZMfv6WoKbNR/KfF7LNIoQI0=	\N	f	a536b0fd-cf33-47c8-9ede-851218d4e98f	Александр Владимирович Слободюк		f	t	2021-12-14	Alex-s-poison@mail.ru	a536b0fd-cf33-47c8-9ede-851218d4e98f
622	pbkdf2_sha256$260000$ghqiX9DdXqyNALCVSE6Cbv$8AFf+huWnnvh9gyUQsyELvLHj3pBrR2S48EuBz85jps=	\N	f	979e7400-b2bd-4e49-8069-fbf74a140ce1	Евгений		f	t	2021-12-14	atipaev-1111@yandex.ru	979e7400-b2bd-4e49-8069-fbf74a140ce1
623	pbkdf2_sha256$260000$Ntdj3h8SuOmZFxwdBhkpxY$fm4qTqBt9xy+7itZvVwjIQlqCCKbzsubcPVn0XFQz0Y=	\N	f	63f91b43-ac39-4766-a3b4-fd322f7a5f6f	Сергей		f	t	2021-12-14	sergey.astashkin@gmail.com	63f91b43-ac39-4766-a3b4-fd322f7a5f6f
624	pbkdf2_sha256$260000$HD0dHXunfIAmwdwJ08Wu27$SrJce3HBKxukEDgSUZeFUctazZPauQC+WP9yRjMd9eY=	\N	f	3e6cc3f3-87f2-43df-959c-fea7b2cdce9f	Павел		f	t	2021-12-14	p4velmix@yandex.ru	3e6cc3f3-87f2-43df-959c-fea7b2cdce9f
625	pbkdf2_sha256$260000$39SZq5rIO4GGd3kfENxcTd$/O1P37l+8ezNVuYv/btuuL/LKI9C8susDeAhH4wow84=	\N	f	b8c404ec-e075-4e4e-9def-9c7e8f4b829f	Раушания		f	t	2021-12-14	raushaniya_76@mail.ru	b8c404ec-e075-4e4e-9def-9c7e8f4b829f
620	pbkdf2_sha256$260000$ZAcEc98IIR0gHhM5oAwEhc$pmW3GUFdAFOAL+/UMpDI+hhm53JO7omw/Mt8EnM25kE=	\N	f	dbdc3bca-f82d-4dc0-bd7d-f2eb09b3df58	Назар		f	t	2021-12-14	money600@bk.ru	dbdc3bca-f82d-4dc0-bd7d-f2eb09b3df58
626	pbkdf2_sha256$260000$kyJPHLJFs4IemaZScMuX0w$xpaX82/v3FGJT2dQ8ZQg7er4VkxnE0GQzTrjT058Wqo=	\N	f	457775e4-bb83-47ef-bfe5-05f1932f1b86	Константин		f	t	2021-12-14	kos_tet666@mail.ru	457775e4-bb83-47ef-bfe5-05f1932f1b86
627	pbkdf2_sha256$260000$RoqwQTaJTyfEejboV5OGfb$OcTxZZIu8cc776GvGmFvBZoGfZ7cNrMrm20Gjo0oJXM=	\N	f	08a87cbd-6dae-4c02-b562-fbef168b2998	alexander		f	t	2021-12-14	2001513@bk.ru	08a87cbd-6dae-4c02-b562-fbef168b2998
628	pbkdf2_sha256$260000$QnigDbuUzkCsstT1Qp6eMa$N259RbRPWAMz7D0/jrUEnq7tUi7ZBPxNT7y77Cnvkxk=	\N	f	f70ec519-0030-4dd0-9514-e15978a38e00	Сергей		f	t	2021-12-14	armanax@yandex.ru	f70ec519-0030-4dd0-9514-e15978a38e00
629	pbkdf2_sha256$260000$ECkKx6u5DYldbUiTk7Cy4p$jitt+c520lbf09t+V96hV2OKMLcHYXrUsn02a4MRXvs=	\N	f	6590e6dc-d894-4a51-afc2-eba7ee5b2b3e	Седельникова Ольга		f	t	2021-12-14	sedelnikovaoy@mail.ru	6590e6dc-d894-4a51-afc2-eba7ee5b2b3e
630	pbkdf2_sha256$260000$pe7sjSwzLyG2oGM7t2H7Q2$vv7yRDKRGTZtD6SdC7Zgeqt8mT7bpjtpqN0ySRiUj4A=	\N	f	9dc9ed67-f845-4a71-bc45-27f4f36423d2	Nikolai		f	t	2021-12-14	prost_79@mail.ru	9dc9ed67-f845-4a71-bc45-27f4f36423d2
631	pbkdf2_sha256$260000$MH6o44Nk6KwSjnhksUCTgb$ED/zPckSjPb4dP47XBNy4DryyAcOdBCZG0orSr8Ix5k=	\N	f	cf6d6c7a-b1d1-4b6f-b25e-ad90fae05749	Александр		f	t	2021-12-14	kirillov7@rambler.ru	cf6d6c7a-b1d1-4b6f-b25e-ad90fae05749
632	pbkdf2_sha256$260000$YwLqTCbBRUr4ZHDYtQ34T0$LRWakxBcMjhIZDg3aUWKKhuOUux6PIzETEyW4V2AaUI=	\N	f	ddbd1b90-56bc-4951-913b-1347a1c5b886	Александр		f	t	2021-12-14	almataev.av@gmail.com	ddbd1b90-56bc-4951-913b-1347a1c5b886
633	pbkdf2_sha256$260000$IMu1loP4S0e97qNZE4AGpu$ilZbhQPtpEtfbz4gZXqe7Rwr7ELBLLmhm0lY4FZNh78=	\N	f	1f10bc16-7761-4124-bdbd-27469577bd51	Андрей		f	t	2021-12-14	kreditko2@gmail.com	1f10bc16-7761-4124-bdbd-27469577bd51
634	pbkdf2_sha256$260000$P18hIwlWt8DKz6L5d2xVKO$9DkSHTLQTU7Lp8FbJ8QCyYgRjJN1f41sYGEUIMIgFu8=	\N	f	294aada6-0fa4-49ae-bfef-d670f11fc496	Lena		f	t	2021-12-14	propertiesforju@gmail.com	294aada6-0fa4-49ae-bfef-d670f11fc496
635	pbkdf2_sha256$260000$D5qbyucndNtbiAjHpO5fps$d1iIIbF6jcrHvGH798oVwecy2C5FLEjUAHX+MTlULnw=	\N	f	52aba205-f31d-4399-9e64-8ef859bcb3f5	Максим		f	t	2021-12-14	maksim.sologub@list.ru	52aba205-f31d-4399-9e64-8ef859bcb3f5
636	pbkdf2_sha256$260000$o1Kikf1vOiLHh1asfWv4b0$23HEBqMAmEIqW49QBuDkeKaAN+Ftt1hSpjBWdyNA0WU=	\N	f	1cb9f7ca-36a2-446e-9c13-ef10e879c419	Сергей		f	t	2021-12-14	der_schlangen@mail.ru	1cb9f7ca-36a2-446e-9c13-ef10e879c419
637	pbkdf2_sha256$260000$IJJfJquWGt3eBFMh110umC$+kA+WHwMdGN977UCXLoSAAE5OWcsI0Z52DM9lSTTBTc=	\N	f	eb1dbcfd-d9c5-49d0-ac0c-9afbc4eb6197	Владислав		f	t	2021-12-14	328411@mail.ru	eb1dbcfd-d9c5-49d0-ac0c-9afbc4eb6197
638	pbkdf2_sha256$260000$MIeY39199CddIdaoYYrQgw$C1VH4B+OrWL7qWQ8IlQCOpOuuXrqjWEdHrUDlwKZIQ8=	\N	f	9a025231-cf66-4120-adca-b6355bf44e62	Михаил		f	t	2021-12-14	komkim@mail.ru	9a025231-cf66-4120-adca-b6355bf44e62
639	pbkdf2_sha256$260000$znYZzcNGDezs0yXNwZzUlF$CFbEvyEDR3LnAu0WkSSMY4+xC2wIPl6B7pb5iF4U6wQ=	\N	f	c0e2c74a-a88b-4c31-933b-75a04001abd8	Дмитрий		f	t	2021-12-14	uryupin.d.i@gmail.com	c0e2c74a-a88b-4c31-933b-75a04001abd8
641	pbkdf2_sha256$260000$ejmZIZpsyf0FQ28UaT74uT$CPDmyBHs+7SRaF+IOzN2FW7cz9OrJvVqPVaxF6oaIVA=	\N	f	2187d2f0-0068-4927-ac62-3b8ca61b216c	Vyacheslav		f	t	2021-12-14	dvo86@bk.ru	2187d2f0-0068-4927-ac62-3b8ca61b216c
642	pbkdf2_sha256$260000$TnYBKVhG1yYSLiosJXQLOY$+QV7Vlt+ap2V+04qhPATW3LQKEFDBDVPeP+xPBp4QXk=	\N	f	ff241309-1d46-40a4-9971-a3999049457f	Сергей		f	t	2021-12-14	serg.fight@mail.ru	ff241309-1d46-40a4-9971-a3999049457f
643	pbkdf2_sha256$260000$6f1ysmnnwPUivK2uqrDo5z$zuuvH1Sc8ZfRWIMMukX1gzYKNN/Q0OueTvdJoGmZnC8=	\N	f	5e742a47-e7ef-4dad-bb19-c379e0f3ba62	Евгений		f	t	2021-12-14	gps_nav@mail.ru	5e742a47-e7ef-4dad-bb19-c379e0f3ba62
644	pbkdf2_sha256$260000$YIxUyP21LeubNCrzgNqOk7$0oHwfU2mJHn4BvEASS0ReSvs5NVcHNK3QZkvXIZD50c=	\N	f	bfb3294c-ab78-4e13-a80f-35fb50fe3293	Владимир		f	t	2021-12-14	va0707@yandex.ru	bfb3294c-ab78-4e13-a80f-35fb50fe3293
645	pbkdf2_sha256$260000$SNoiE3FUhzJyeOmeS0cqwz$lN8RBYnDOwQKi+ttMAdz//0hT3dI6Vb0FrehmRzYCus=	\N	f	74aa1055-43dd-453f-b589-014de76de3e8	Анастасия		f	t	2021-12-14	k.anast.evg@gmail.com	74aa1055-43dd-453f-b589-014de76de3e8
646	pbkdf2_sha256$260000$JLA7wtk9SeOZ8yTeNR8Wa0$sGY8P8l9sOanb39/t2pXJdarVgbhhjZ3zKWtZewglbc=	\N	f	aa9f0555-495a-4a3a-8b5e-31754559b24b	Тимофей		f	t	2021-12-14	tnuyanzin@bk.ru	aa9f0555-495a-4a3a-8b5e-31754559b24b
647	pbkdf2_sha256$260000$kQMbFzXpS3KcjHIDXzZ7ED$RdwlT2OmfXp6rUTL1zZ17f7gruKQgLeP6JhuYA86bpc=	\N	f	6c0cc34b-514b-49c2-a452-d0e31335684e	Глеб		f	t	2021-12-14	gleb.prianishnikov@bk.ru	6c0cc34b-514b-49c2-a452-d0e31335684e
648	pbkdf2_sha256$260000$lq14dPm8vQORtaH8sWaQk4$8giNjyfpuiwvIIn8PqAP7uRKC40Wx2r6SzuJWC+FhrI=	\N	f	61e7dd10-97c7-49bc-9efc-954e20d50406	Олег		f	t	2021-12-14	leksherovos@gmail.com	61e7dd10-97c7-49bc-9efc-954e20d50406
649	pbkdf2_sha256$260000$L2YBDqa0aPCLg68tS1ivN4$vPoV8jR+RP3eVU9D6chJHH7BDHvXCTEYcHlr8nide9c=	\N	f	e3d7c245-a2ef-45d5-8fb6-17d1effff728	Сергей		f	t	2021-12-14	bernis@inbox.ru	e3d7c245-a2ef-45d5-8fb6-17d1effff728
650	pbkdf2_sha256$260000$srowAt4gyZFgvdlIscGPnQ$SjRPzycSTu42Oz0Q0cztc385UKikLSj6n/fPiEgcWe0=	\N	f	d6f1a7c1-0d23-4579-9fad-23ff83a559bf	Евгений		f	t	2021-12-14	porollo88@gmail.com	d6f1a7c1-0d23-4579-9fad-23ff83a559bf
651	pbkdf2_sha256$260000$h5XptqEV1moVWSc4GfBPfM$sIhpswzjucr0458hnO8NEgzJ6RiJnkVEGKtWZtFQDt0=	\N	f	3def4ba6-4b60-4fe2-aeb1-d078eac8c645	Даниил		f	t	2021-12-14	veroniyz@mail.ru	3def4ba6-4b60-4fe2-aeb1-d078eac8c645
652	pbkdf2_sha256$260000$cd3nIMuLnPlS8JIaGfP8z0$u5IyJqieFr638t/0uyMEn1NZCPU/M32Qa2gq9gAaohA=	\N	f	2c398659-0899-4d43-9008-6e7fd2445134	Алексей		f	t	2021-12-14	popov25av@mail.ru	2c398659-0899-4d43-9008-6e7fd2445134
653	pbkdf2_sha256$260000$Jy4gBCzfrzBbE4poBsrQS6$V7iunoaf++86uHBDDqUngqB0mvpnpwvssxMBCbi31D0=	\N	f	da7ee902-b853-45f5-98c6-24f0ef12f7be	Валерия		f	t	2021-12-14	val5217@yandex.ru	da7ee902-b853-45f5-98c6-24f0ef12f7be
654	pbkdf2_sha256$260000$3cx0e886Gbnz7djsKIXJDk$9lBCESjL0cy1rPgsCotRHr2//0YGwA4N0pbgYciXEkY=	\N	f	7101a3a0-47c0-4c7c-8d0c-9636450928c7	Никита		f	t	2021-12-14	ntoss92@gmail.com	7101a3a0-47c0-4c7c-8d0c-9636450928c7
655	pbkdf2_sha256$260000$2FjfbxEHK23VHryurXZRKC$rzhm0u5ZVA5fyR1DhAh+BalmlaqKWAv1u+uWw5H2QN0=	\N	f	a581ae68-b02f-4490-8f7b-a533aa5ca269	Сергей		f	t	2021-12-14	msddv@mail.ru	a581ae68-b02f-4490-8f7b-a533aa5ca269
656	pbkdf2_sha256$260000$OCxvG1TofmIDiF9iAWZ2mI$EJb6/cTeyaxnUWEBrR489rdOTXgpy4qaErRP3/ym8Zk=	\N	f	60b113dc-7bb5-40ed-b500-8cd5506977a0	Сергей		f	t	2021-12-14	tapkin@gmail.com	60b113dc-7bb5-40ed-b500-8cd5506977a0
657	pbkdf2_sha256$260000$iZiYVJdosB1n9tzSIMom8T$K2s2530GiuW7RtMUHAhASBiInC3psZ7cDQDHUggJMqY=	\N	f	9b716b72-8973-4498-9164-18ae87eb15a1	Иван		f	t	2021-12-14	trofimov1843@gmail.com	9b716b72-8973-4498-9164-18ae87eb15a1
658	pbkdf2_sha256$260000$wY1VQL8sWhtwwkk0TFFkzu$CKKZCMZOilE6jcwCYYyNqLZCgaZfQE+hVu+Fq0Do+qM=	\N	f	4193e211-ed6d-45c6-a844-c3a8168cdb7f	Федор		f	t	2021-12-14	fborzov@mail.ru	4193e211-ed6d-45c6-a844-c3a8168cdb7f
659	pbkdf2_sha256$260000$1JshHk4z4f54DAyHuOhY4M$oQcEe67E+jVprjmrHCov3RJ1IhDnEW94cpInXlz/W80=	\N	f	6877f696-ba64-4472-b556-59b019cdd442	Алексей		f	t	2021-12-14	aldon@rambler.ru	6877f696-ba64-4472-b556-59b019cdd442
660	pbkdf2_sha256$260000$dOo8Vg4pNVKWyrJ4ex56xZ$yLItEbx6NLk6Z2rdJRvSq3biw/Cpp9J8Bs4VBYFdgsk=	\N	f	22c133be-cbfe-4aed-a638-1fefee2c9845	Осмаева Элеонора Витальевна		f	t	2021-12-14	eleonoraosmaeva@gmail.com	22c133be-cbfe-4aed-a638-1fefee2c9845
661	pbkdf2_sha256$260000$lXBeqFHpxft5tSuHK467dI$H44kp49Pnk7JqZn4QIhOp4sBZDogHOkdQH6Cxe++ckc=	\N	f	d5d692c3-0940-45d1-847d-a33343967bc6	Алексей Зинкевич		f	t	2021-12-14	alex-zinkevich@yandex.ru	d5d692c3-0940-45d1-847d-a33343967bc6
662	pbkdf2_sha256$260000$d6FZeOyWKF3eTTySbPbTYq$+rI58q6G8JazsGkDIP+I8w0vFvSr9Z38Q9EWcPKMEno=	\N	f	91dd81ac-0df2-4009-b04d-8fa7e56961e7	Максим		f	t	2021-12-14	maxim.schelkanov@gmail.com	91dd81ac-0df2-4009-b04d-8fa7e56961e7
663	pbkdf2_sha256$260000$gjveItalfDJBoFj35zVmSj$3vBZCxr5BTsbJXSIue5jvZeuolZL9tGLUw5Ek0WL4eA=	\N	f	aecc561e-a89b-44e0-9ac1-8257e59eb80e	Виктор		f	t	2021-12-14	2811414570@qq.com	aecc561e-a89b-44e0-9ac1-8257e59eb80e
664	pbkdf2_sha256$260000$kbTLWUpFR6n8vMDHL3knP1$KcEeoUky5lkCaESK2+OG7fQY/wRYVfvIzgmFsLmPy+8=	\N	f	bcdb77f8-70de-4446-bba1-5d6e2b197261	Максим		f	t	2021-12-14	gl.borkus@gmail.com	bcdb77f8-70de-4446-bba1-5d6e2b197261
665	pbkdf2_sha256$260000$F4noQTXBT4pFwT0b5lKMLH$I3sdQKv4A6EAEYQWMzfIgt7PYdyj5o8Z1EM1pwS1aqM=	\N	f	14cdaa9c-c795-4876-8dd2-10820cdae1d7	Александр		f	t	2021-12-14	alext-800@yandex.ru	14cdaa9c-c795-4876-8dd2-10820cdae1d7
666	pbkdf2_sha256$260000$v3OI4mbAlaHk4WtAp8DlEk$EMZz46wmuhOw61AbUu2zwbP8xuet9Vrq0DQfEVPVStQ=	\N	f	59cb46d0-cb5e-4de8-bcae-0fff758af417	Александр		f	t	2021-12-14	753rfv@mail.ru	59cb46d0-cb5e-4de8-bcae-0fff758af417
667	pbkdf2_sha256$260000$TxvfaGwHInYwgjeitOxE4y$QlfYgpbW2Dsg9wBjxZg3LekSXCaHwtJsne4TqK5r9PY=	\N	f	c71a05af-fca8-443e-81a7-daeb5c0420bd	Роман		f	t	2021-12-14	zumeron@gmail.com	c71a05af-fca8-443e-81a7-daeb5c0420bd
668	pbkdf2_sha256$260000$6qx4sgFBDUazEOHUO4wj5P$bR6whKdKj+Olish2qeMR9V/pliWBbAMkpC3cMn6vFYQ=	\N	f	49cbfbce-93ff-4b5d-9548-e8c773b0a8d5	Елена		f	t	2021-12-14	e.pontrjagina@mail.ru	49cbfbce-93ff-4b5d-9548-e8c773b0a8d5
669	pbkdf2_sha256$260000$WdFQXWTyLSdK4XkJtmA8Rl$PW6/W/ATeSqg/7T9fWnh5gjSt/c4OJp6+h6lWrP9vVU=	\N	f	8540e703-85c4-4a44-9f40-81e69bf38eb5	Кристина Цветкова		f	t	2021-12-14	kristi0296@mail.ru	8540e703-85c4-4a44-9f40-81e69bf38eb5
670	pbkdf2_sha256$260000$q1yxWACPQFIqolGMbEG6tz$l6YIOZ7/Gpi5qDV4oPzaWUyDNIuU5RxK4EpbUTABUhY=	\N	f	b666f303-5945-4516-baa8-12704289ed3d	Василий		f	t	2021-12-14	pvssrzn62@gmail.com	b666f303-5945-4516-baa8-12704289ed3d
671	pbkdf2_sha256$260000$OhZD4Vnk0QexX6z0bkn8cJ$lPQftYxWj+9H1zDT29rfaJcDZ4Qnir0XqMciL3K0F40=	\N	f	86d6a4a3-7994-40a8-8d97-ae10dac0eec7	Александр		f	t	2021-12-14	nan.1986@icloud.com	86d6a4a3-7994-40a8-8d97-ae10dac0eec7
672	pbkdf2_sha256$260000$zwXKCdaYifXEmYzbkgz4jp$tMAEeliMyHnLtW4/Rk3+rdqI4bxvOafBgilFPUX9Yds=	\N	f	d19d7e61-4e4c-4c32-b5c5-51a09651b732	Станислав		f	t	2021-12-14	mr.isaev.stanislav@gmail.com	d19d7e61-4e4c-4c32-b5c5-51a09651b732
673	pbkdf2_sha256$260000$JXyiyEh7ZDYmXNHkfiQxfL$k1U5y6ZhoFwdCSNxSsFiIPRGzD/hkFXEDaNkfzC8NkE=	\N	f	082eefc5-2960-4bc6-acc6-1d7f1d2a31f7	Никита		f	t	2021-12-14	ten.nikita2012@yandex.ru	082eefc5-2960-4bc6-acc6-1d7f1d2a31f7
674	pbkdf2_sha256$260000$jWXKLERlhgjIHjZ2iYPFLO$RYm+lcWbfZMQ2igs45iJekkr3XeF6OzsqKnhMNYZn1s=	\N	f	89e074fb-6f3b-4634-a1db-f93edfd20a07	Николай		f	t	2021-12-14	maxankovv@yandex.ru	89e074fb-6f3b-4634-a1db-f93edfd20a07
675	pbkdf2_sha256$260000$40AmoW8GnSEwYtVX3zLc27$Lav4C+Zg//8eMRaNrnLbjrhSWs7Hankad92DIgUk4vQ=	\N	f	a0f66146-251e-48f4-8d2e-ac3b9fcab698	Никита		f	t	2021-12-14	nikita.veselko@gmail.com	a0f66146-251e-48f4-8d2e-ac3b9fcab698
676	pbkdf2_sha256$260000$sTr3rc5Vkb9S8xMXuxrw5O$TyyQv6CBMb6PeqpbMK3m58EVo3lGSz48e5wLGPVx1ms=	\N	f	f1e1dc11-b9d4-4dca-a973-d3fc164dafaa	Дмитрий		f	t	2021-12-14	dkustikov@mail.ru	f1e1dc11-b9d4-4dca-a973-d3fc164dafaa
677	pbkdf2_sha256$260000$sYNHKKC2FmZxrgvn92J8fN$E9b/2tKflheEOuQBRlN9bwc5viq9urm0Wt6cgJ+7PrM=	\N	f	6af17fce-726c-4e2a-ac50-79fb64c576d5	Андрей		f	t	2021-12-14	slayer003@mail.ru	6af17fce-726c-4e2a-ac50-79fb64c576d5
678	pbkdf2_sha256$260000$jEUZM5F1tnHU3h8BNuKOLF$3rshk29a3g/v00B5cQo+w+gSEvxaSOpGhqEwFYEXCTI=	\N	f	41cbc214-7e12-4edf-ae8b-f08e32415a88	Иван		f	t	2021-12-14	mag87@mail.ru	41cbc214-7e12-4edf-ae8b-f08e32415a88
679	pbkdf2_sha256$260000$UA0tYoojyYYbw1EUg2d4zv$RUDk4pfk6nBmF1IldQ/4uek+DyQ0LTHWMMZoi41PjX0=	\N	f	e8678dd8-be67-448b-b9db-fe915af1760b	Матвей		f	t	2021-12-14	matptushko@gmail.com	e8678dd8-be67-448b-b9db-fe915af1760b
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
691	pbkdf2_sha256$260000$SQAdOvIuYqAliwECqgsVoQ$XqClg7JzxDWyrdmZU4lAxp4HRcrfd5ZFK4oH6qRhWXY=	\N	f	2efebe10-d9be-46df-ab96-7d47712069ca	Антон		f	t	2021-12-14	evlanov.anton@gmail.com	2efebe10-d9be-46df-ab96-7d47712069ca
692	pbkdf2_sha256$260000$slUV2UtqQAbG6VPBLgG2fj$n7qJ/Q3YQHcpUmmMXeuSV1GZzQatmIyLtKcDxmZf/rs=	\N	f	ca8ba6b2-ec15-4eec-85fe-cb4e8ccf110b	Евгений		f	t	2021-12-14	zheka19ya@mail.ru	ca8ba6b2-ec15-4eec-85fe-cb4e8ccf110b
693	pbkdf2_sha256$260000$gOGmcrv08y6XQ3via7TLxx$JU8JrjvwVoQKnRvDJis4IDG1mFKbcSTPA7lwJamCYyA=	\N	f	57dd18bd-737f-41dc-9c52-8eab98ece369	Евгений		f	t	2021-12-14	8030068@gmail.com	57dd18bd-737f-41dc-9c52-8eab98ece369
694	pbkdf2_sha256$260000$X693b94n8kb0E4KNsQJgGx$nLyRJUg5g26WTGRsFwPY4ty09om9hpFlItZQOqc9xTw=	\N	f	8f286133-e054-4bbf-a66d-1878d3b80098	Евгений		f	t	2021-12-14	danilkin.ev@gmail.com	8f286133-e054-4bbf-a66d-1878d3b80098
695	pbkdf2_sha256$260000$VQP6U6Yz4p2jZfja7tKBp0$TuRhpdRgjZ1FtzGoe3BNQKr/0Pn5QnceUFF8ujA7LYU=	\N	f	864f1ce8-86ee-42c4-a216-aa142ce4fd7b	Ярослав		f	t	2021-12-14	newtrogik@gmail.com	864f1ce8-86ee-42c4-a216-aa142ce4fd7b
696	pbkdf2_sha256$260000$Eaw0UFRVuYtbgUqdJiHBUn$16D3G2I0urBkwfo32VC6Pwtm3ZGlgtjmiGhHAGzXS5U=	\N	f	aa5e16b4-42f4-4a09-8e7e-967e506d549d	Василий		f	t	2021-12-14	katkov.vasily@gmail.com	aa5e16b4-42f4-4a09-8e7e-967e506d549d
697	pbkdf2_sha256$260000$8SVu6jBSnuMEwAQCojBq2I$AKuacXLQtxabYoYIwTRNKRcz7gC6C7VR+BAThOAUn2g=	\N	f	574e32a9-8fc8-4ff2-ab1c-4054936b961f	Игорь		f	t	2021-12-14	pechkurovir@gmail.com	574e32a9-8fc8-4ff2-ab1c-4054936b961f
698	pbkdf2_sha256$260000$fIynWRJvH0gZ9E0ywaXcxU$aAQlP6iSWDds2g6SBop0q+dkPSrFTed9kPwNyZ8fHHs=	\N	f	5dd43703-3015-4b1c-bb28-6ea5dd76c02b	Евгений		f	t	2021-12-14	hodchenkove@mail.ru	5dd43703-3015-4b1c-bb28-6ea5dd76c02b
699	pbkdf2_sha256$260000$DiO9sc3ep5FOdE8IZCymzm$F4i9+MraQSoag0nlAE6zRPfUW47mb/6mcefFmE542G0=	\N	f	b7c77cd6-ca1f-4168-824d-8ac3d377fbaf	Виталий		f	t	2021-12-14	Vitsheff@list.ru	b7c77cd6-ca1f-4168-824d-8ac3d377fbaf
700	pbkdf2_sha256$260000$bmUb5KzbDZDzBjvBTzLbhi$zplwvZ4tlS7PkwPWElrchvIGCsXxaV1w34VzlGWwwv8=	\N	f	c59a5584-2920-4f8f-b1b6-37d494828c5f	Павел		f	t	2021-12-14	9312544@gmail.com	c59a5584-2920-4f8f-b1b6-37d494828c5f
701	pbkdf2_sha256$260000$ySHmtWtNSVkeAh0UvPtgPh$OJFgEcAdUxgc6MDZG/XYnRESlkN2u+6VQcYOIkqyRE4=	\N	f	bde5f44e-3bb9-4d36-b1cf-5b77eb64c85c	Инна		f	t	2021-12-14	inna-exy@yandex.ru	bde5f44e-3bb9-4d36-b1cf-5b77eb64c85c
702	pbkdf2_sha256$260000$kNRjdaKRypIr3TwHwCTwa8$wK35Yip2b9HYQnXwGezQkMZQEDQEUcCg9SMcwlbSU6A=	\N	f	5ea3d1c4-569e-4f11-815b-3bf3379a0e8e	Сергей		f	t	2021-12-14	s050970@yandex.ru	5ea3d1c4-569e-4f11-815b-3bf3379a0e8e
703	pbkdf2_sha256$260000$jb7QM9fFrfLHzAJDCvfVWw$OJzlCDOS8oQOCS5d+QuuLMJ/XtvBSdcFyROu9hm52sM=	\N	f	72815712-cf9d-4290-9c91-96ee8d73be22	Игорь		f	t	2021-12-14	tish.igor2018@yandex.ru	72815712-cf9d-4290-9c91-96ee8d73be22
704	pbkdf2_sha256$260000$MnyRwegUOnv5j8PZQZo4S8$GAyw1OA9mWnl52RwV9lv3moxq1Bx6gA/zofjQ3Sdhi8=	\N	f	8d6f4d3a-abca-45b2-b5dd-297140b2b35c	Андрей		f	t	2021-12-14	gans666@gmail.com	8d6f4d3a-abca-45b2-b5dd-297140b2b35c
705	pbkdf2_sha256$260000$ccCNqoGWPl5NnArKoNYFq1$W/GuC1qRjgXEV+EtRtq305ckyZdyGxoDY6IvJ2m0Ouc=	\N	f	a41f7ba2-0ab6-4fbc-8ae2-abc4fc9144cc	Илья		f	t	2021-12-14	klg_2022@mail.ru	a41f7ba2-0ab6-4fbc-8ae2-abc4fc9144cc
706	pbkdf2_sha256$260000$vymffem0jbeGEO6aKTRtfq$NC+9xzsMZmMYJVWTM/RR6D6pcjGLN7crlOuqbGw4WtE=	\N	f	d824cdc1-48f8-4b94-9349-eb8dc10a3ea1	Сергей		f	t	2021-12-14	sergeerofeeff@gmail.com	d824cdc1-48f8-4b94-9349-eb8dc10a3ea1
707	pbkdf2_sha256$260000$tefOGadblMwNp3U4mYj9xB$F7I96ugSpyIY0LW+Z+US0um/xdSQEJgofPc62I1aWAA=	\N	f	ccde52e1-ca91-4bad-bffb-6fce76b21d8c	Юрий		f	t	2021-12-14	kredavto@mail.ru	ccde52e1-ca91-4bad-bffb-6fce76b21d8c
708	pbkdf2_sha256$260000$5vIFDYdjwlpe2goclUEBnS$WkE5nLMP5r2bfsgLv/DbZAAHsm144vOKjrPtTdf28Pg=	\N	f	636f77d2-f491-4cba-81d4-0b16fb3f9caa	Алексей		f	t	2021-12-14	Lexx7979@mail.ru	636f77d2-f491-4cba-81d4-0b16fb3f9caa
709	pbkdf2_sha256$260000$LkDoUhWpDndM0UwTUjQMlT$/62ZsXAHoAM26IXzu38xKkjUz1nCfZ9IiIGZODIF5KQ=	\N	f	138f2fdd-79ff-4397-a1f2-546151ba603d	Святослав		f	t	2021-12-14	svet_nikylin@mail.ru	138f2fdd-79ff-4397-a1f2-546151ba603d
710	pbkdf2_sha256$260000$bI5miLtXfC1x5b9hDBcJKu$lRT2niKZQsk9qWjcCXjMFn9s96Avn4yxqKkZm28DI3U=	\N	f	89f59e4f-101b-4262-be59-6e5ce2bbe693	Анатолий		f	t	2021-12-14	evgazhukov.a@mail.ru	89f59e4f-101b-4262-be59-6e5ce2bbe693
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
723	pbkdf2_sha256$260000$payNl9Q8e0NCZNoQerSbR7$Ep+90jY5EE141lim4EeiBS6fq6x3xlqJe1L2xT1dZZ0=	\N	f	4deadda1-270a-4b22-97a1-d41be5bddbbf	Никита Владимиров		f	t	2021-12-14	Nekit-98-region-96@yandex.ru	4deadda1-270a-4b22-97a1-d41be5bddbbf
724	pbkdf2_sha256$260000$a9r2PnY5Ox85HKTjj3foA7$6CclIzv6WdUpWhZi6Yx3KawhWGlFrN/xSjAwsh6ELLw=	\N	f	86ce8ce9-0105-4f39-94a7-dfa4fa3747d4	Александр		f	t	2021-12-14	aleshnicov@gmail.com	86ce8ce9-0105-4f39-94a7-dfa4fa3747d4
725	pbkdf2_sha256$260000$aXgDFM6yksfnn1VPfvuOHl$nKCagm9l0moBUoR75w5V4m6FMSODAz7oXCNkzZUXbSc=	\N	f	ac84c843-9c63-4196-b3e2-8b2b96fbb72e	Дмитрий		f	t	2021-12-14	dmi-lovygin@yandex.ru	ac84c843-9c63-4196-b3e2-8b2b96fbb72e
727	pbkdf2_sha256$260000$zdKEEHQyJrbnSpOe9kGAk6$koW2rKNulzn36FZ7B6PkjZO6/sn8+/7XLTi3waftYlM=	\N	f	a89a07fa-ae2c-4c84-88bd-cbe0f8835173	Артем		f	t	2021-12-14	gerasimovt@gmail.com	a89a07fa-ae2c-4c84-88bd-cbe0f8835173
728	pbkdf2_sha256$260000$wfFr2T4fWNVjhbOngdKtni$bOpGIdJUU//y5g4m6MnnABDvc4MOiIlit5xkMZgXwiQ=	\N	f	d611aa9e-32d2-4505-9022-51ffee70df64	Александр		f	t	2021-12-14	aglarionov@gmail.com	d611aa9e-32d2-4505-9022-51ffee70df64
729	pbkdf2_sha256$260000$sNZnWPcTjW5pqqaXxcWr5L$wGqILY0mjJfzdk16kYT4n7dqRMaZvOCB3B+gosIMeP4=	\N	f	618347e6-e4ed-458b-919c-9375f01943f8	Александр		f	t	2021-12-14	abrosimenkov@mail.ru	618347e6-e4ed-458b-919c-9375f01943f8
730	pbkdf2_sha256$260000$ydVVVkF1d19fL9tSiwJ3Dh$whBDRP8ewVavr2asvMakep13Mm+iZdICjK25uI9zlgk=	\N	f	8ca30e66-0d24-4c9e-b5d7-9b131359f638	Денис		f	t	2021-12-14	denis@modific.ru	8ca30e66-0d24-4c9e-b5d7-9b131359f638
731	pbkdf2_sha256$260000$QTNV7VDFiMFjjsHV36abo6$9dbzOMKcuOopVLpCm9TnIX2ujBQw9WJ0iQCQqZxFc+4=	\N	f	c174eaa8-3b76-4785-9efc-aa845b1cbd8a	Юрий Лукашевский		f	t	2021-12-14	yura_palace@inbox.ru	c174eaa8-3b76-4785-9efc-aa845b1cbd8a
732	pbkdf2_sha256$260000$1VUgKxe9wtuj3m25yRMF10$Qpfbb8xc/4YW/32UJHjUzgzpcvoaJ5SEYgsDuIj07nM=	\N	f	e93760a1-ecfa-4b9b-99bf-835d6200d775	Антон		f	t	2021-12-14	now.anton2012@gmail.com	e93760a1-ecfa-4b9b-99bf-835d6200d775
733	pbkdf2_sha256$260000$zqRuE7k643zSo5jI36OLuK$tOiaN9vGongAk7rfiUPgnqdkbC9O+cS9EBgUYrfqxGQ=	\N	f	27bfd36b-998b-4325-9025-3c4eaa4cf419	Садовников Кирилл Александрович		f	t	2021-12-14	d4rkm3z@gmail.com	27bfd36b-998b-4325-9025-3c4eaa4cf419
734	pbkdf2_sha256$260000$uvu9awRwLDnWLtPrUOrd2b$H03+mufArhnn3LtOjyz9q2EAaFKFwYhVVO65DQ5utHw=	\N	f	0acfa808-efe3-401a-9690-5eb57e2442f4	Костя		f	t	2021-12-14	ambrikos@gmail.com	0acfa808-efe3-401a-9690-5eb57e2442f4
735	pbkdf2_sha256$260000$ibMUPoBEgPguGE1pvbYpyW$3iG/c7yI7upcq2Y7YWbrJE1m5xiiX6peiGoIZyIHQYY=	\N	f	06b2f5f2-9523-4e43-91e7-5cf5804fde51	Мария		f	t	2021-12-14	fmari1@yandex.ru	06b2f5f2-9523-4e43-91e7-5cf5804fde51
736	pbkdf2_sha256$260000$eXUaAsulpThv1Dc5zGtrOX$2XiHjLI/Yw9J1U4fO+EmIzgiaQyAKSpwaIRPxn7DD1M=	\N	f	dbb892f8-d5aa-470d-b83d-29711941e8fa	Дмитрий		f	t	2021-12-14	kuzovov230796@gmail.com	dbb892f8-d5aa-470d-b83d-29711941e8fa
737	pbkdf2_sha256$260000$bdx3tH4vsYxobBCOMzCxLr$UX0+nim5tskfStbSptnVmP3PCdUuLUN7rxoLtRNyEIA=	\N	f	d18b5def-ee66-4f3c-9292-44767b788185	Андрей		f	t	2021-12-14	hhonnorr@mail.ru	d18b5def-ee66-4f3c-9292-44767b788185
738	pbkdf2_sha256$260000$3kqONkiLwzDuTSwOnSHMrY$GFw4+iyTqepjeCOterCkwBJWF9ubRecDBTHE91lvP2A=	\N	f	173ed173-f23a-4ce3-b862-b95c5f8a7dd1	Сурен		f	t	2021-12-14	osepyan@mail.ru	173ed173-f23a-4ce3-b862-b95c5f8a7dd1
739	pbkdf2_sha256$260000$iUN4hy1iLIwIXv8uhVLpza$dJzHiqhCdeCor+yZv2lZif7XgiadLZlsHHGsTLSlWS8=	\N	f	855195bb-fdb7-4035-9a84-6118af8542e7	Николай		f	t	2021-12-14	n.krotov@me.com	855195bb-fdb7-4035-9a84-6118af8542e7
740	pbkdf2_sha256$260000$RuWpWhbR3T0oMzDPBtQS2x$CJD7nwGj0Al4oFtHP22txmiTi2nm6L/mYCgUIPB1QUc=	\N	f	6e1a7120-c25e-4c09-acc7-5b64a3e70924	Юлия		f	t	2021-12-14	shat35@mail.ru	6e1a7120-c25e-4c09-acc7-5b64a3e70924
741	pbkdf2_sha256$260000$PB18ipnanzxbFtzbImuTtB$DDFZs9cKX9YDh0IP9BLqeNXJw6nVkkA72gYbc3O6DLE=	\N	f	ffe98ca9-ce05-4ff6-a89c-ba18bc0a68b7	Дарья		f	t	2021-12-14	d.kaverzina@yandex.ru	ffe98ca9-ce05-4ff6-a89c-ba18bc0a68b7
742	pbkdf2_sha256$260000$sVoJmRBT9KLNkHWVi0VTxi$umY4XnUX9NMBSW898cQ737c5G+XOeSDILI1IFTrMxNg=	\N	f	575e9366-94ad-4b35-97be-c30852d589a5	Скарси		f	t	2021-12-14	ckapcu@yandex.ru	575e9366-94ad-4b35-97be-c30852d589a5
743	pbkdf2_sha256$260000$tvlqyGXSL0I1qtwrC1wTH3$KFlboKognGOM45UPAMmK/YktzCbLtF0BGnBXuu0xTOE=	\N	f	4a5cff00-46bb-4ef2-bc36-79c21202e6bd	Никита Бочкарев		f	t	2021-12-14	kit-686@mail.ru	4a5cff00-46bb-4ef2-bc36-79c21202e6bd
744	pbkdf2_sha256$260000$COtmaVgwMO4qpDRMGT8TP8$IZR96+fYBtqFBQ26U2jpYH+KCaHkEyI1GCwf1k/kXPs=	\N	f	1cb06cc9-1201-400b-94f0-98e1871b75cc	Юлия Видонкина		f	t	2021-12-14	Julli-83@mail.ru	1cb06cc9-1201-400b-94f0-98e1871b75cc
745	pbkdf2_sha256$260000$GeLB8a15Kbb4ZzqlrBysxG$ngnSpLJGo1fzT/VVq4Qz4xSTOBcXQXaNm85qlsF3DqE=	\N	f	6f60c8bf-ef1f-4c59-80c3-f4ded0c1d2a2	Алексей		f	t	2021-12-14	kponoff@gmail.com	6f60c8bf-ef1f-4c59-80c3-f4ded0c1d2a2
746	pbkdf2_sha256$260000$IZTImOvu0OplKYi0lzRJ2R$+euX7+H6jxLMhSwB+pKUDvGr6H+Lo2sJm6J3I4046QI=	\N	f	66f94889-7335-4626-b187-a90f92e62fa2	Лилия		f	t	2021-12-14	ismyatovalsh@gmail.com	66f94889-7335-4626-b187-a90f92e62fa2
726	pbkdf2_sha256$260000$R6Nx9zXY5ygldPY0uHRXzP$IbCn4a3thQXBAKlpv4mtteXPKRuideIZJcagtgFkkjU=	\N	f	611f29eb-8773-4423-9439-180e0af81bea	Михаил		f	t	2021-12-14	z9992141382@yandex.ru	611f29eb-8773-4423-9439-180e0af81bea
747	pbkdf2_sha256$260000$JRVu80DBYFl3FnTYVL6WcC$f01i3/1DKEPA9RrvrELcd2nawXH6sBpLvJAlCCxSMSk=	\N	f	7a87f937-9e95-4fe7-9655-536d56fa4df9	Владимир		f	t	2021-12-14	zab01@mail.ru	7a87f937-9e95-4fe7-9655-536d56fa4df9
749	pbkdf2_sha256$260000$suChgUDrHuqix0KvblXQTq$GKYnXWq0rsOpZFGft1fxZyEms41HD+U+G9YGM+aick0=	\N	f	92926c53-1fa6-427c-84b6-8e9a9942f211	Алексей		f	t	2021-12-14	aledrugov@yandex.ru	92926c53-1fa6-427c-84b6-8e9a9942f211
750	pbkdf2_sha256$260000$kZxGJufef7OM1zxclPM5Ac$vCagYvedQajXkXgdnz62I34IylywC0geEKt3q7UAytU=	\N	f	aab8a8b9-dd90-479f-b921-79949c714b86	Артём		f	t	2021-12-14	artem_fdfd97@mail.ru	aab8a8b9-dd90-479f-b921-79949c714b86
751	pbkdf2_sha256$260000$zdZQNyHsJeVGD40UyseuLC$i+A2RsBn2XpB3JOrQ4auLsyem6nESuseVvZmfRGKB58=	\N	f	216d01db-b3dd-4ac5-8d20-a7172ce97253	Сергей		f	t	2021-12-14	sergeykhn@mail.ru	216d01db-b3dd-4ac5-8d20-a7172ce97253
752	pbkdf2_sha256$260000$1vWGSnpczzwCEA9jMhE1dD$kMukcKD90DopGxZO/qg7XqI3JlW1h9SEdebb/PbUujk=	\N	f	415db0a4-aadd-49b6-b7ea-8b23da74646c	Данил		f	t	2021-12-14	sokolov.dn@list.ru	415db0a4-aadd-49b6-b7ea-8b23da74646c
753	pbkdf2_sha256$260000$DDAU9g07EDTbFWOpSZFjNP$HiqojUeFzqMFiwYlWyZbjvqLaYmMXPy3VIVlyK5vSBk=	\N	f	8f561668-637b-481f-978d-e9cf3d060ad6	Александр		f	t	2021-12-14	srsnet.ru@gmail.com	8f561668-637b-481f-978d-e9cf3d060ad6
754	pbkdf2_sha256$260000$ifJKK03TMesPKatdrt3Laq$0lZ9SjlhJf4F2YhzvcT9srsjGlIE6NpvjO9xBKfkhcM=	\N	f	3a1d11d6-087f-47c5-98b7-d8e52d2625ee	Сергей		f	t	2021-12-14	trubachev_s@mail.ru	3a1d11d6-087f-47c5-98b7-d8e52d2625ee
755	pbkdf2_sha256$260000$3GUBsm9aijQrNpmlmw4B34$6r/MmkHeOLR4v52070nMIETHTevTNIpwrZlGgDjID7w=	\N	f	6703638d-628c-49d5-8f3a-0028cef3142e	Дмитрий		f	t	2021-12-14	dima-dolgov25@mail.ru	6703638d-628c-49d5-8f3a-0028cef3142e
756	pbkdf2_sha256$260000$GY13usvTH6vTMH9hvIDFKN$wme2lVp3GkxlxjGL/Sd0ZVAc2ZEC/oI1eW3gFnt+blw=	\N	f	466de708-a37c-488f-b2e0-e5f2ae68e119	Николай		f	t	2021-12-14	nobesperstov@gmail.com	466de708-a37c-488f-b2e0-e5f2ae68e119
757	pbkdf2_sha256$260000$a60TfWqsbmErTICZjZpKYH$N4tq47ljQEGhH4tuqTL7gpwz1fcfQWGPszSmwLEF5Hg=	\N	f	787690ad-4584-456c-a8a1-b812caa948f1	Евгений		f	t	2021-12-14	4erep86@gmail.com	787690ad-4584-456c-a8a1-b812caa948f1
758	pbkdf2_sha256$260000$ChAUEhKMv5Ic4AqFcPPHqH$NfCTwzFkPDOIgzs58sTENzr1j2OD2Muz3BqD2SD3KcA=	\N	f	3e0f5900-791b-46f8-902c-3207109d3400	Сергей		f	t	2021-12-14	SidorovRus124@mail.ru	3e0f5900-791b-46f8-902c-3207109d3400
759	pbkdf2_sha256$260000$cXRjsZ3e4ppbIHjKl95SzI$nSfMKZ4F3r/ZNrFe0O+POZ7sFSWMSXPi/jBzxJtJ8gA=	\N	f	c947b2ce-f73a-4416-91e3-55951db477d9	Irina Bukhartseva		f	t	2021-12-14	bira117@yandex.ru	c947b2ce-f73a-4416-91e3-55951db477d9
760	pbkdf2_sha256$260000$7pHo5b4GgUNi6CpC3P6OkO$F8sGrSkQlMuHi4UJFgXTdZdH3bEtjKcZakq/LqUQrXk=	\N	f	725af60c-209b-4d8d-ac9e-411aa01a2a07	Vitalii		f	t	2021-12-14	job_vitaly@mail.ru	725af60c-209b-4d8d-ac9e-411aa01a2a07
761	pbkdf2_sha256$260000$wPZbgeJrjFYEfBkyqdi8CB$aZee9KJzseH29sWWlsaepIOF76VzKdJhqf8IANPbsa0=	\N	f	8f54c928-4ee1-4843-bd03-f47b64e395e7	Игорь		f	t	2021-12-14	belkin.iv@mail.ru	8f54c928-4ee1-4843-bd03-f47b64e395e7
762	pbkdf2_sha256$260000$SmMOQBpoyLZT6lxIFME1bP$AJWWPoKzIz7qZEWSe9+JVfmaXtf1pLQAM3b9xI9hqTI=	\N	f	27a736f5-9297-4e17-8182-1e329bd1e44e	Александр		f	t	2021-12-14	torblockchain@gmail.com	27a736f5-9297-4e17-8182-1e329bd1e44e
763	pbkdf2_sha256$260000$gasn1vTbcrhR6vpOMBrKP6$hSOWmGV+PKyM8AkfGBVAK8TTb/SW7Z7UnNR5u+Nm2pc=	\N	f	8ec4709c-eff2-4695-8bcd-b8891fad801b	Сергей		f	t	2021-12-14	safinyaga@gmail.com	8ec4709c-eff2-4695-8bcd-b8891fad801b
764	pbkdf2_sha256$260000$gNsScxvEohJYqnZzYZjbi6$CIusG6QRN1cS2wKLphxZWQW93kbz4bB5+NGgyunqYQE=	\N	f	ece57b40-ddae-4963-928c-63289b9d0fa4	Константин		f	t	2021-12-14	rks17@mail.ru	ece57b40-ddae-4963-928c-63289b9d0fa4
765	pbkdf2_sha256$260000$TzmTEPTdGhWfF9hyMhdJu7$c94lnzTE4W4dHFoVJGZPQGFeE0jHNpk6xO2ezbd1wV0=	\N	f	fb56da83-f5b1-4599-bb1e-a8fd9dfbb372	Николай		f	t	2021-12-14	nik-ugolnikov@mail.ru	fb56da83-f5b1-4599-bb1e-a8fd9dfbb372
766	pbkdf2_sha256$260000$7WDqDHsBIgTWBltj4RUl7d$yWL6AxT21iWZ8PDBiqd3C2o0JZI3lZLMkZJZn7mhihM=	\N	f	234cd7a6-6c7e-4407-b709-09dbe8f6884b	Egor		f	t	2021-12-14	6541517@mail.ru	234cd7a6-6c7e-4407-b709-09dbe8f6884b
767	pbkdf2_sha256$260000$OZFRY5y9kvaWn05zTFZl9n$idaHqQJhrbxod3z47QNR74qfxaqKO92U2pVwhiChnBU=	\N	f	308c652a-2a1c-41c3-a316-bcf9e66c26bb	Андрей		f	t	2021-12-14	gomboevandrey@gmail.com	308c652a-2a1c-41c3-a316-bcf9e66c26bb
768	pbkdf2_sha256$260000$rRh9rDLwKEXgbcGOIip2th$6Kflxyec7TaUTe3BJB+nzZsQCLaRIgBz6jqnWN7ON+c=	\N	f	0bffc137-4d6c-4d85-a82e-a29ef53172d7	Павел		f	t	2021-12-14	pashasub@mail.ru	0bffc137-4d6c-4d85-a82e-a29ef53172d7
769	pbkdf2_sha256$260000$v0u0ntbxSmEQ1fnPNhliV1$3kzXMckw2m+blJeqwe0i/LTTOfLUkJlUWYNhU6E/5hY=	\N	f	b224ab85-9d5c-47e3-b7ab-b511f2aa983a	Александр		f	t	2021-12-14	alexzol83@yandex.ru	b224ab85-9d5c-47e3-b7ab-b511f2aa983a
770	pbkdf2_sha256$260000$k9Sni1SAesy33aaUMBcSiv$OzgpWHjfrfce7EgayFPY3t8PAEnbrRjOSzzVCdv6WDE=	\N	f	a4a0581f-49f7-4489-8762-d51c0d4a1db6	Николай		f	t	2021-12-14	lanicke@gmail.com	a4a0581f-49f7-4489-8762-d51c0d4a1db6
771	pbkdf2_sha256$260000$6ce8pia79OVOUEoacP3W8v$6+WwAO8DADpovG5mO8AUiRWU3pEkwNQZhZi7XHJpOQM=	\N	f	09e79ffa-7daa-4c8b-86f3-bcab83d5ed7a	Илья		f	t	2021-12-14	e-topgun@mail.ru	09e79ffa-7daa-4c8b-86f3-bcab83d5ed7a
772	pbkdf2_sha256$260000$9mEHfjslpgfEI7GgtZk06A$VmGOdMbcW9HvvKsw6U9QUuBCK/Gh22Usm7exs0lgzzY=	\N	f	ee72ddad-17b5-4a0f-95d4-6781ca4e2f7d	Олег		f	t	2021-12-14	olbog76@gmail.com	ee72ddad-17b5-4a0f-95d4-6781ca4e2f7d
773	pbkdf2_sha256$260000$YSSbteXaOtWPo9VFMMe6Jb$bRdTVAGfY8KIqvUvF79Uf27nImlJJww9SEfdVXxN9Js=	\N	f	ffd50b50-463a-4dcc-9993-4b5dd2664ef9	Антон		f	t	2021-12-14	tonach2@mail.ru	ffd50b50-463a-4dcc-9993-4b5dd2664ef9
774	pbkdf2_sha256$260000$03Jc6aItwF8zbGDMgeKzKs$B7lV5QyfgFZ+bEO748nC7Q+OInHwkTeLXMl7PMx+mZk=	\N	f	4b61cfa0-16ed-414c-b364-3d74c6f8e53a	Родион		f	t	2021-12-14	gil.rodion@mail.ru	4b61cfa0-16ed-414c-b364-3d74c6f8e53a
775	pbkdf2_sha256$260000$A8OwzVuPFRVmP8fd1QKicL$KP+7N86pBDAqP+iCc49TjDI2VWX0REscTPfk0a+LyRk=	\N	f	d89d0b82-ed8e-4be8-af8c-6369bca5b0ee	Юлия		f	t	2021-12-14	julia.mashinistova@gmail.com	d89d0b82-ed8e-4be8-af8c-6369bca5b0ee
776	pbkdf2_sha256$260000$NpGYagq3sJg6nLVufVxCmx$zKtCf0YQVPYrSSlGmPOK9eovR43+HSvt8hP7FsvGyqM=	\N	f	bcaaedb2-a824-4204-a7d4-99cc5d5c963b	СЕРГЕЙ		f	t	2021-12-14	s_bi@mail.ru	bcaaedb2-a824-4204-a7d4-99cc5d5c963b
777	pbkdf2_sha256$260000$RH3323aE1frhgAYB92sZUB$+2Opb1N3P+VoOk1bcCoB+OdToO5ObLSKEx+fG9I2cHQ=	\N	f	5d104f2f-45f7-43f3-ae6e-203b151cd4a3	Юрий		f	t	2021-12-14	klop191987@gmail.com	5d104f2f-45f7-43f3-ae6e-203b151cd4a3
778	pbkdf2_sha256$260000$HoBurz3sKwv1wB1wAycz3O$y3+J+sgP5yTukJlapJnIolltVMUIckCNh9VmdIVoMfM=	\N	f	92b20916-da35-48e8-99af-d74afef48ed6	Алексей		f	t	2021-12-14	pole555@list.ru	92b20916-da35-48e8-99af-d74afef48ed6
779	pbkdf2_sha256$260000$3kkXq8OsAc0w8baatKP8eB$3uEJH926ESN30AX8ItDG+HUCaDRdPh4QWF5J7uDbwSQ=	\N	f	1c9a9c19-7386-4f9e-8f28-1ae716d9d91e	Алексей		f	t	2021-12-14	chudolad@gmail.com	1c9a9c19-7386-4f9e-8f28-1ae716d9d91e
780	pbkdf2_sha256$260000$PesTgdqHaBlAvVh7UvKD7v$S13My0MvofpsA1xO8aza1aBFHGL6HsR3wquBorbga6Q=	\N	f	a75231a0-8238-432b-a8a2-d2dc4af059c0	Виталий		f	t	2021-12-14	vitalboriskin.ru@mail.ru	a75231a0-8238-432b-a8a2-d2dc4af059c0
781	pbkdf2_sha256$260000$axPCJ96PdRxZ0guzdYkbPw$AYwUWMJyQP31b2SRHjB05EP8aIurujs3tvxjiLILtkM=	\N	f	d2d3c17d-2bac-497e-8770-b2c2bcca3e76	Андрей		f	t	2021-12-14	jmors55@mail.ru	d2d3c17d-2bac-497e-8770-b2c2bcca3e76
782	pbkdf2_sha256$260000$3OOJkwkCFwa1VInHudwLTM$itCVo+dOvYwjEnl0BhkCOa2vPyQdL+gSBAntDiCBi7E=	\N	f	585380de-a45c-4584-92aa-f43e1b866710	Иван		f	t	2021-12-14	hilko82@mail.ru	585380de-a45c-4584-92aa-f43e1b866710
783	pbkdf2_sha256$260000$DxG8SMgY8W9OIC3F1MyeKt$bIL4DY5gqxXuhkB7WwyHmXvLIGQh+wTvmDTsV4Gfo2U=	\N	f	887e5d79-21ff-4c40-85c3-e247222dd3b6	Юрий Соколкин		f	t	2021-12-14	sokolkinyuri@icloud.com	887e5d79-21ff-4c40-85c3-e247222dd3b6
784	pbkdf2_sha256$260000$9D9sIh0V5bABtffpDsl4D8$IqieqB1EZ693w7ALlRQsB2v4/PLBrjb2WlvPis+lxoc=	\N	f	b7c365c8-3244-43f3-9397-48d3d01256b9	Михаил		f	t	2021-12-14	rooostislav@mail.ru	b7c365c8-3244-43f3-9397-48d3d01256b9
785	pbkdf2_sha256$260000$eEeND4ddCV8upiExSZ7eLl$WbUP+6afvxnM3z7WhpDxyx/oTlyq7uF63+Xux6NUNf4=	\N	f	0ab7ff91-21ef-4874-b9fe-43eee23ae380	Игорь		f	t	2021-12-14	texmarket.igor@gmail.com	0ab7ff91-21ef-4874-b9fe-43eee23ae380
786	pbkdf2_sha256$260000$gydLmGSrIzijbleW6ZQ7jo$cOqtXkGvOzpnlr0z+YUluJa/1mbtt4jYIZGkqI51VcY=	\N	f	30cd10f3-8c3f-4bba-acd6-8db0037aeb80	Никита		f	t	2021-12-14	nikitosyafed@gmail.com	30cd10f3-8c3f-4bba-acd6-8db0037aeb80
787	pbkdf2_sha256$260000$dYMuYzI5bDj8uyGHM07cIh$ffNd82o1jq9djEYKYytMi2lmF0fZQNfU+Hf2ETpmg4Q=	\N	f	b74cf12b-aff8-42f4-936c-cfede621c6d2	Владимир		f	t	2021-12-14	cybeer2001@mail.ru	b74cf12b-aff8-42f4-936c-cfede621c6d2
788	pbkdf2_sha256$260000$pGFwZRagKPXt7TzJQKRlTn$D2io6ZBs05JNC8A2Aju96/5FwEPDhXpzEgAvtD3VT/Y=	\N	f	be6bd8d0-dd49-49db-91d6-5d9d16ee5ac8	Илья		f	t	2021-12-14	lodevarik82@gmail.com	be6bd8d0-dd49-49db-91d6-5d9d16ee5ac8
789	pbkdf2_sha256$260000$9p8R6H3xKAeqMgnqqjlq8U$N8/BWPdQck1GFuQqBc4kStBT8AGVlB3hCHegIsWpQhQ=	\N	f	eedaf68f-12bf-420e-b519-5fe76c8d2bff	Инна Гринёва		f	t	2021-12-14	grineva_iv@mail.ru	eedaf68f-12bf-420e-b519-5fe76c8d2bff
790	pbkdf2_sha256$260000$OIBAUIq085Nb1M7eVaUzR5$ow9+6qq74gXZopNX/4IYDDmOCGOc1NPPyrTZEH1Mngw=	\N	f	18ac1adb-7fbd-466e-aa44-12b6db94a721	Георгий		f	t	2021-12-14	georgijkovalenko675@gmail.com	18ac1adb-7fbd-466e-aa44-12b6db94a721
791	pbkdf2_sha256$260000$OU9nM2omYzX1WXUyV6Nybz$LVvyx7LmmJAC+uTD2KOVaUrPtbOecuG0Zqb+z7/niuU=	\N	f	4d19a2c8-d41d-425f-89c3-c84d0f6ddcbc	Никита		f	t	2021-12-14	nikita.yelshin@gmail.com	4d19a2c8-d41d-425f-89c3-c84d0f6ddcbc
792	pbkdf2_sha256$260000$k5xhkJowRvtD19vVHm0LVO$9J13/CbCJBMiJMQDM9cAvbjvxS5A9a21wS25xjwFE+k=	\N	f	fb73115c-07a3-4876-b923-6615882db6bb	Валерий		f	t	2021-12-14	valerka8@mail.ru	fb73115c-07a3-4876-b923-6615882db6bb
793	pbkdf2_sha256$260000$G1UMA0usGNtvXImlJ0GLIV$I5gNefT+b+fKleEK9FqvryitIC3t9awdlRpRQVst27w=	\N	f	1f3fee62-f57c-4b91-8f4a-418efeb60b1f	Тимур		f	t	2021-12-14	jontim@mail.ru	1f3fee62-f57c-4b91-8f4a-418efeb60b1f
794	pbkdf2_sha256$260000$AmaZNQ7HiCRXfj2ytAAxYe$mzo2B2SovDKsrqb4MJOgGJyPQAAY21eoyvndShoMdHw=	\N	f	571a93bc-bb0f-4288-82d5-741b73902ea3	Павел		f	t	2021-12-14	888sps@mail.ru	571a93bc-bb0f-4288-82d5-741b73902ea3
795	pbkdf2_sha256$260000$sg6jEbCHfaNea8RIn9kfsU$3Ssoc3wDXkzPQCKHhohiQg+PC4yu+zIvJ01siwN7bJ8=	\N	f	e887d605-6d4f-4738-834d-9daea8185250	Алексей		f	t	2021-12-14	davlyatshin@list.ru	e887d605-6d4f-4738-834d-9daea8185250
796	pbkdf2_sha256$260000$gB2p0p8MhVm7OLBPWVPaCM$7isFzxO493ihoimQ+kJqeiYGJNgG8u2P5X1JL07FfoA=	\N	f	f4457917-4f88-4028-a688-1c0b4d936b53	Анастасия		f	t	2021-12-14	precious221987@mail.ru	f4457917-4f88-4028-a688-1c0b4d936b53
797	pbkdf2_sha256$260000$OvKxaQ9xDyxBjr8m7biXOI$AyWE7/ODwIxIKNM63yJwa3mtzbEd98vc7w0lR/LlS8M=	\N	f	7147d935-5718-49fa-a8c0-4df81e2e9d8d	Андрей		f	t	2021-12-14	andronik65@mail.ru	7147d935-5718-49fa-a8c0-4df81e2e9d8d
798	pbkdf2_sha256$260000$mhxt0k1gP6QyHQI2rH7TjP$8MmGnzySTKXYDHpaj8U0gCMnaNdIDg30E47DskdaBso=	\N	f	5e5d39ea-4866-4ab2-a8f6-6b7cc4cccd1a	Татьяна		f	t	2021-12-14	tavlarle@gmail.com	5e5d39ea-4866-4ab2-a8f6-6b7cc4cccd1a
799	pbkdf2_sha256$260000$jUaMKxZU2LyBWLBTbTfGix$e9k/EG51js2UhvtY7jNOxhpKpcmVRCrMN1sMCsR0TP0=	\N	f	6056666a-d653-462f-b5de-5568bc75e025	Максим		f	t	2021-12-14	info@poleda.ru	6056666a-d653-462f-b5de-5568bc75e025
800	pbkdf2_sha256$260000$QR5GHcPaicD3C162EhtBss$YMMhJflHEfG5ewmDezGI0fcBftvD44E3JqqvUR7/zMo=	\N	f	05d95dc6-88fd-417b-83a5-f4d1224d280f	Владимир		f	t	2021-12-14	vahten@gmail.com	05d95dc6-88fd-417b-83a5-f4d1224d280f
801	pbkdf2_sha256$260000$nC9ymCnmgeInEON26Lfn3y$7CfNaF/OG0hu2hd6dTVvE3AixywVOVWmdU4c5E09Qnw=	\N	f	68d2e62d-b484-4bbe-9e4c-341783cf95af	Роман		f	t	2021-12-14	ZRV888WWW@mail.ru	68d2e62d-b484-4bbe-9e4c-341783cf95af
802	pbkdf2_sha256$260000$ZRIo241i2ZtAmWYbGCboDY$ReoX8dGTsJfRBTkN/K0PqdcDzLgaHJWc9FdPar1tMMA=	\N	f	85772827-5945-4ce2-9b09-a793f85ce0e3	Андрей		f	t	2021-12-14	ron113999@gmail.com	85772827-5945-4ce2-9b09-a793f85ce0e3
803	pbkdf2_sha256$260000$rbXeXtXTyqKU0joCCfEsny$Kn7I5TUZu8JFxi8pIxrl15YwqNXP5PkVPJkMyqSVuWU=	\N	f	afee7e2a-2f89-4e00-95c4-1a724d691dd5	Иван		f	t	2021-12-14	freestockcharts@mail.ru	afee7e2a-2f89-4e00-95c4-1a724d691dd5
804	pbkdf2_sha256$260000$IePj97ZcJfTLpRglp4J0Ay$p9dTK/s6UTELCwCbvEYYajy8Xin0diUO6P8//G9IvVc=	\N	f	98a7db02-fd5e-477e-ba7c-828489fb4789	Александр		f	t	2021-12-14	bigsubscriber@gmail.com	98a7db02-fd5e-477e-ba7c-828489fb4789
805	pbkdf2_sha256$260000$FaWA5SmYMI623MhWmGvhWQ$B1ECLPRDJJf/nHAwuRA3/TZQJ81yf0xpdAqAy75hs3c=	\N	f	7a4ebf7e-6cbc-4ca2-81ce-63e91fafd567	Иван		f	t	2021-12-14	ivmelyohin@mail.ru	7a4ebf7e-6cbc-4ca2-81ce-63e91fafd567
806	pbkdf2_sha256$260000$Nbl4zxglcwqOMUbeFjbs0N$JHFLLQGQlE2gfdEMkWzSZI+xok6bmb28R5CA/lww7ag=	\N	f	58c7b1d4-da45-48cb-9fc6-6cb0358fe31f	Вячеслав		f	t	2021-12-14	slawag8@gmail.com	58c7b1d4-da45-48cb-9fc6-6cb0358fe31f
807	pbkdf2_sha256$260000$1zKulm6pWquX1i65SmWHQW$Q90FPi81Ggs3a+Mls69De+X4lia/7r5pNUR/zBLMklM=	\N	f	19fd1545-b55f-485e-a033-076856f7cd24	Ivan Kalinin		f	t	2021-12-14	IvanKalinin3@gmail.com	19fd1545-b55f-485e-a033-076856f7cd24
808	pbkdf2_sha256$260000$pErFATKYGwbI1KHqGTrKVt$UkE1rEs9M/NmraomDohvLC6YX7Hk/zDloF8pNrr5tDE=	\N	f	defb952f-f6ad-494f-9463-a543563ecb34	Геннадий		f	t	2021-12-14	gpet@mail.ru	defb952f-f6ad-494f-9463-a543563ecb34
809	pbkdf2_sha256$260000$gou0OHpsXWt0eF6fsmaBw8$DveCHSJ7CYnETX+hNI3MqWdyZdXjlGE76BzdYhq1s6o=	\N	f	b1250fe2-e196-4248-aacb-15c76388614b	Александр		f	t	2021-12-14	adanilovsky@gmail.com	b1250fe2-e196-4248-aacb-15c76388614b
810	pbkdf2_sha256$260000$vKtP6xSDVgqNPwzKC1oovi$lYBY38zBwA395RVYkrGY2W/TfCOVQ7fV5feiw3aMB4o=	\N	f	f92b3575-f6c1-4b40-b178-d5e11a709c4f	Михаил		f	t	2021-12-14	oms85v@gmail.com	f92b3575-f6c1-4b40-b178-d5e11a709c4f
811	pbkdf2_sha256$260000$567sSAdD15GGxkM9Gs3U0r$NmK7KVtrejrHw29AsuqU4fIF/qT+pbR47iD/7ZzqODg=	\N	f	fe09562c-a2e4-4e9b-be21-82d704f2758c	Илья		f	t	2021-12-14	iasmirnov@inbox.ru	fe09562c-a2e4-4e9b-be21-82d704f2758c
812	pbkdf2_sha256$260000$fRxMmboa7v57ilb3heANer$TPQyqdldBzTk828pCoK7XAMC3/x8LAVH8PZLgruMPfk=	\N	f	029540d1-cc5e-481a-8527-7ab88a53c9b5	Алексей		f	t	2021-12-14	Volynchic15@mail.ru	029540d1-cc5e-481a-8527-7ab88a53c9b5
813	pbkdf2_sha256$260000$xL9q4VVEohM3l7r8cJnhBd$BEN+vyS1IZln+MO0sa63ecfsNYgmHEcdjAXrn5AXGrQ=	\N	f	4d50bc29-89e1-41fb-8682-6dd2d52c6a27	Кирилл		f	t	2021-12-14	lagano@bk.ru	4d50bc29-89e1-41fb-8682-6dd2d52c6a27
814	pbkdf2_sha256$260000$BXxQSUiTYMl1IV5l5n3OnR$9Ck4sf+VA6uEQKflgdFqBeYj5MqssveekmQPnne08zM=	\N	f	f54357b0-dc80-4ad1-b65e-370b47e9925e	Роман		f	t	2021-12-14	scprom@rambler.ru	f54357b0-dc80-4ad1-b65e-370b47e9925e
815	pbkdf2_sha256$260000$8ShvO52W3HvqHfPrnZHwtU$9/lGINgYd5wuyzWP2lQ39mS2dc97Cb8SYODIOgQfGlI=	\N	f	b809b447-6521-4674-8a31-3efd8f26dd05	Александр		f	t	2021-12-14	koledenkov.alkesandr@mail.ru	b809b447-6521-4674-8a31-3efd8f26dd05
816	pbkdf2_sha256$260000$PVXXZwaFLmlds9MjnntbLT$T9qmnvH/5ksO8ZSHcnFyfBp70ZtVPhIKx9s/jK7tSEA=	\N	f	6f9bab02-e73a-417a-975b-17019866f814	Ян		f	t	2021-12-14	iantretiakov@gmail.com	6f9bab02-e73a-417a-975b-17019866f814
817	pbkdf2_sha256$260000$H91H5Byw3VQjxXfhw4VpkN$RP8yCVoRJiH3spZ2KB8jryPd63MD10sA+Z/GMep7uko=	\N	f	d7574638-d9ef-4daa-b0a6-0d05f9b44f10	Евгений		f	t	2021-12-14	evgmonk@ya.ru	d7574638-d9ef-4daa-b0a6-0d05f9b44f10
818	pbkdf2_sha256$260000$Qt3Gl8EbIjNjnUu75OKd9C$0h/HBddJ0cDyxkP2Ccos+IPL2GKRJisTs6QQ2mfGZuo=	\N	f	926024f8-116d-4664-aa90-a727c7829a9d	Василий		f	t	2021-12-14	fokusmira@mail.ru	926024f8-116d-4664-aa90-a727c7829a9d
819	pbkdf2_sha256$260000$djX411v8y2CjjpkRAzdeX1$IYdf87R+l4/j2rSkmOEIx7pHcgyDAgVC2BDADeKo2V8=	\N	f	76510cc1-1d30-4a6b-9c82-d774d9bd2b1d	Руслан		f	t	2021-12-14	crazyruslan@icloud.com	76510cc1-1d30-4a6b-9c82-d774d9bd2b1d
831	pbkdf2_sha256$260000$92oshiofvrLJSNTNs4sc61$vbHVuytnjJrwnYEb0BDNCoHSjHEx5GgaYdzSxVwDvSI=	\N	f	52418772-4b8c-455d-ac37-70ad796012e6	Алина		f	t	2021-12-14	alinatimirova01@gmail.com	52418772-4b8c-455d-ac37-70ad796012e6
821	pbkdf2_sha256$260000$GHfvSCcRA73BAzkWbqvHI4$OQtsX2DEGOG4LWw0B8cW1IjOeN/1YORScf67WVkgg8A=	\N	f	fd340922-8982-49b8-a952-ee6c07c42fc5	Максим		f	t	2021-12-14	biomax1980@mail.ru	fd340922-8982-49b8-a952-ee6c07c42fc5
822	pbkdf2_sha256$260000$LChqnNPg69ac2EbOMqr5Lp$CY0p/Lodt6fMNAFcDU5g7IHuU0NZsJvaapHeabolmEk=	\N	f	5df244e7-c5d0-4db3-8b04-7c0b19ec3e13	Илья		f	t	2021-12-14	ivanov.ilya02@yandex.ru	5df244e7-c5d0-4db3-8b04-7c0b19ec3e13
823	pbkdf2_sha256$260000$nYtyyaRDhUVDAMvJZXphhW$VvzYYWSyCnr3Oj0MhTcPnK4IiWqfmqCZ+L0mhwz57cs=	\N	f	2a337be5-30a9-4a5c-872d-dd0a060b4e8d	Игорь		f	t	2021-12-14	gvozdevigor@yandex.ru	2a337be5-30a9-4a5c-872d-dd0a060b4e8d
824	pbkdf2_sha256$260000$EfXF9GPR6L6LHXCr694i4M$n5Rn0laCBB72IvnO41mkC7lpx+IUWTF4NMLBijId4d8=	\N	f	a4a1f8aa-d5e3-4ac9-8c74-a6630e9ba842	Владимир		f	t	2021-12-14	vldubinskiy@gmail.com	a4a1f8aa-d5e3-4ac9-8c74-a6630e9ba842
825	pbkdf2_sha256$260000$TqZOpGOA3bD8taJU8Vgp8g$XQ/i3VKY+4hVb5Z5UrAxJ2vfwyYN1pYXHM2PkCbx874=	\N	f	532f7fc7-5bb1-465e-89d4-b460bf750c40	Сергей		f	t	2021-12-14	sergey.korvin@gmail.com	532f7fc7-5bb1-465e-89d4-b460bf750c40
826	pbkdf2_sha256$260000$6r7PmnCyfBbQIPIYZPKXMZ$WBCqsoRGBLLhq1fL2s7PNe6sjOd11wr3ZoDIfczqsco=	\N	f	4d29acd1-18e3-4645-aadb-1210b769af3f	Ринат		f	t	2021-12-14	r_valiullin@bk.ru	4d29acd1-18e3-4645-aadb-1210b769af3f
827	pbkdf2_sha256$260000$74L6fOu6NisRYTEvIjWAjJ$wphm/qkeSoXBQczGuxYLALWkCkkYJbYi8dM9qwmxhlE=	\N	f	b7899aa1-0f00-4f5c-a05d-882fc68f7073	Иван		f	t	2021-12-14	fr00z@mail.ru	b7899aa1-0f00-4f5c-a05d-882fc68f7073
828	pbkdf2_sha256$260000$MTmHtSCJkt8ce3bCt2tNFd$Hpp3Hj49soqgBCDo2qdMi27OBCtRhbQ6NzUV1s+BshM=	\N	f	ca4fc05f-6d50-4226-a2c4-69beec267bec	Максим		f	t	2021-12-14	arthas_1996@mail.ru	ca4fc05f-6d50-4226-a2c4-69beec267bec
829	pbkdf2_sha256$260000$h5VB56y3qUE49O2KDQ3Qxx$GTZUR8obL8wBHwmCxjOHbloaCcifmK/szLfRQ4eyblQ=	\N	f	9666ebca-3fb0-4bf4-8f72-313bb22935f1	Дмитрий		f	t	2021-12-14	Sniper53@gmail.com	9666ebca-3fb0-4bf4-8f72-313bb22935f1
830	pbkdf2_sha256$260000$HQfadPIY4UIk32qytvPt8E$uMsjQ1b3Uz2uipzFqlxybBzesSN6aKEvTuLyRbkEARY=	\N	f	ea657ee9-9cf0-47ff-a81e-1ef13d0d5c09	Станислав		f	t	2021-12-14	stanislav.inc@yandex.ru	ea657ee9-9cf0-47ff-a81e-1ef13d0d5c09
834	pbkdf2_sha256$260000$gRNM2cDqA8FK4ElG6U9d5Z$zxYr7y7cxoyvNV1Q0APiDnjRVEd9lcgZiNMVsZpYns4=	\N	f	3ec95f77-267b-47f0-a129-087ccfbeebdb	Павел		f	t	2021-12-14	saratovtsev@mail.ru	3ec95f77-267b-47f0-a129-087ccfbeebdb
832	pbkdf2_sha256$260000$OIDfeBV3g2n2xDQ8mKI6TH$OAucAjuHIG9GV42k1gIT85qdwcxKA/chxOTSooCiYkk=	\N	f	877b24a2-7f62-42c2-8779-071bdaed000f	Андрей		f	t	2021-12-14	jr.lukyanov@gmail.com	877b24a2-7f62-42c2-8779-071bdaed000f
833	pbkdf2_sha256$260000$oySDSFGsRBpFa9Xotk3kdY$LuUW2y/nQtphrBCqcicnV+eXfI425OG0bsKKJKDWXww=	\N	f	71a1cf49-ff60-46d6-97eb-bc05128e1499	Андрей		f	t	2021-12-14	thesamoylenko@gmail.com	71a1cf49-ff60-46d6-97eb-bc05128e1499
835	pbkdf2_sha256$260000$MWpiGODjquMlhJIl4FjzqH$WArTczCfy7CuWf7Jo+WazCYLeQGhlC3RlxMsTGhYfBc=	\N	f	89fe8c51-0e16-4f72-9632-e29898b4a746	Андрей		f	t	2021-12-14	saidred@mail.ru	89fe8c51-0e16-4f72-9632-e29898b4a746
836	pbkdf2_sha256$260000$HNJTklxUR1THzuGY7htzXE$e/MRPrKfLLjn4b67sHuT/xT7qhgm4w1bQSxESKTqyZY=	\N	f	3ce16a85-161b-424f-904e-b69800c78455	Артемий		f	t	2021-12-14	ffelian@gmail.com	3ce16a85-161b-424f-904e-b69800c78455
837	pbkdf2_sha256$260000$qBaxLJBEX9tkrKOdrqeL6i$nGi1EptEX3UolJrdjpQwK63dCgdgAKkI/A55256lEHw=	\N	f	bd9271bf-536f-4cbd-a059-95c4620a846f	Никита		f	t	2021-12-14	nikitakoshlkov@ya.ru	bd9271bf-536f-4cbd-a059-95c4620a846f
838	pbkdf2_sha256$260000$FznqNOcuXNc290D4HbmjIU$WqeaGt+JCpo8vn4XW+/dU5pyVoUd6i8MuHIElOup+f0=	\N	f	7df4d7ac-29dd-4447-9743-7a5838c5ac4a	Борис		f	t	2021-12-14	borisd1@yandex.ru	7df4d7ac-29dd-4447-9743-7a5838c5ac4a
839	pbkdf2_sha256$260000$u8fIyWgidULmhbIOR4Cijj$atM1LrB9dcuUfMO2d2jQ9fcPQIEadpc7cBgYlfXOVMM=	\N	f	7291cd59-8359-4140-a381-699d44fd3bbe	Сергей		f	t	2021-12-14	medesergei.78@mail.ru	7291cd59-8359-4140-a381-699d44fd3bbe
840	pbkdf2_sha256$260000$4vjg3JlaLF3rVQFZm5axyI$UJPdYiZEd7cniXRdzpt4WXNoO5tlmGMkw/gZ5NIZGE0=	\N	f	550f1944-5f19-4f98-9462-5ca028f7a43f	Сергей		f	t	2021-12-14	hamelion1711@gmail.com	550f1944-5f19-4f98-9462-5ca028f7a43f
841	pbkdf2_sha256$260000$7hMISdo4fUzkJFAxQXgiUH$dDxNaS5WeA3EdF5C3q8X7M5AdPqDcCJ1my0++MtQ14E=	\N	f	8f20ec32-b151-4241-9834-0d42557025d2	Дмитрий		f	t	2021-12-14	radchenko2209@gmail.com	8f20ec32-b151-4241-9834-0d42557025d2
842	pbkdf2_sha256$260000$P7jpTXV0W3BblVt2cJ6FBT$13BuPUMzECQbOKoNqnFm1/td63lDeSyFdXlM2wVSfL4=	\N	f	9cbb9356-8881-49c1-954f-c83814b3a8d7	Алексей		f	t	2021-12-14	alemcd@mail.ru	9cbb9356-8881-49c1-954f-c83814b3a8d7
843	pbkdf2_sha256$260000$ypyXhPjgFdcBWZCOSOKEPq$LLhqpgHI+bQ67DKM/fbTWT01aAIXhN+29g4djZs9oxo=	\N	f	d0f844bc-ac6a-4f99-934c-121007edebc0	Кирилл		f	t	2021-12-14	kirysha.kovalev@gmail.com	d0f844bc-ac6a-4f99-934c-121007edebc0
844	pbkdf2_sha256$260000$LiRVWCLyAcYfBtl1niA07K$NOoNUHTR3b5YVzJBNT5ccgKgoP7nJIYWA//boqXNCbg=	\N	f	c2a284ab-5f2f-46e0-bce5-fad226d4b258	Роман		f	t	2021-12-14	workmailsm@gmail.com	c2a284ab-5f2f-46e0-bce5-fad226d4b258
845	pbkdf2_sha256$260000$DeyHb8yN2Ua0aw9HBZY9Zb$De18IRruASFHDBB/Mx/Ue8BZN3cr6C3nFLZzYR1FWzI=	\N	f	526717af-0a4b-42ea-846f-ecc07c1dd24a	Александр		f	t	2021-12-14	itartass63@gmail.com	526717af-0a4b-42ea-846f-ecc07c1dd24a
846	pbkdf2_sha256$260000$RVHuesrPMg5fIQfSNGsUIl$85aVV+cOGDhRascfOJ5mZhz8G2gHn+Xcudo2Yhz/WlQ=	\N	f	8d15693d-4eee-4277-9c92-9633ec791b45	Ирина		f	t	2021-12-14	irina-jan13@mail.ru	8d15693d-4eee-4277-9c92-9633ec791b45
847	pbkdf2_sha256$260000$ExiKuv5aHphvXIha9wKn4T$U9oGtjYJ0gahyRhX5500PBRMzfwODHxLMOKKiNyjBjg=	\N	f	d9bad084-810f-42db-acf6-edd68b1bd04e	Виталий		f	t	2021-12-14	avitaliye@yandex.ru	d9bad084-810f-42db-acf6-edd68b1bd04e
848	pbkdf2_sha256$260000$09xEue0ml3jJ5kBPtSu4Ay$yGlMj1zV+P7Y1469+XRiUsFjLEBmoNXiAy95M8JmBSU=	\N	f	bca25ff3-14a7-4ddf-b248-ba122ff9429f	Михаил		f	t	2021-12-14	vfymrj1971@yandex.ru	bca25ff3-14a7-4ddf-b248-ba122ff9429f
849	pbkdf2_sha256$260000$OYcMbs4rAOHqhbysCw2h48$Y0RLcoK3vfjPGgXtGKr++CaItFu2Ism1FdCz0HewLr8=	\N	f	0a0b6b29-c7d2-4b52-90b7-f8613cd7b233	Иван		f	t	2021-12-14	arctez@gmail.com	0a0b6b29-c7d2-4b52-90b7-f8613cd7b233
850	pbkdf2_sha256$260000$0835mKNsbio86dEnHoxIjK$FMKEkDU/Ul1vvWGC3IX7DmsWLfAkOrb1mbd+dKpo7d4=	\N	f	97ec09df-81f4-4cef-9bdd-264bb1e5b4da	Сахиб		f	t	2021-12-14	sakh.asckerov2015@yandex.ru	97ec09df-81f4-4cef-9bdd-264bb1e5b4da
851	pbkdf2_sha256$260000$ZGpB6CGjv6DZDmKC3VZ85I$BiB5nuRi0n8wFdlNjH8Wf15c0a7q4spZgTub8AhHRSs=	\N	f	d17d9091-c14e-4e10-843b-b8af253fa98c	Константин		f	t	2021-12-14	5000lux@gmail.com	d17d9091-c14e-4e10-843b-b8af253fa98c
852	pbkdf2_sha256$260000$HYJZbdI5CBXDHvQ7hpBZ0w$6UtUZrEjYEqU/d/ycfevobbvtisZTW/YtU29pamj2FI=	\N	f	1bdf60de-e30f-48eb-8ba1-3889af430189	Андрей		f	t	2021-12-14	andreimzr@mail.ru	1bdf60de-e30f-48eb-8ba1-3889af430189
853	pbkdf2_sha256$260000$SlJLbK669pFnnZkshjs1Jk$8lJAm5ACpVg+IGefVShueUj5v4XZM7DMzpEOIVR2Vig=	\N	f	ed1cfe30-b799-4a6a-ad78-6e961d7e4adf	Михаил		f	t	2021-12-14	misha486@yandex.ru	ed1cfe30-b799-4a6a-ad78-6e961d7e4adf
854	pbkdf2_sha256$260000$ofkzzsKJ4kcIp7YCpkQRki$oEkn07yRxtXfoiOUWq84cTW+Y03dLaXBiAo3sfONlMc=	\N	f	da9ab82c-20fe-46ca-bd26-414e6bcedaeb	Владислав		f	t	2021-12-14	medvedevvlad@yandex.ru	da9ab82c-20fe-46ca-bd26-414e6bcedaeb
855	pbkdf2_sha256$260000$jxZJu72PRR1J2twaMzfrKV$2MAuFdg42U6HDnoj0jeYF2oYS7H0OfEufb5B1PLFM9E=	\N	f	ce834d77-1ad7-4b4d-97ca-19235e42f2ed	Денис		f	t	2021-12-14	surjavskii@gmail.com	ce834d77-1ad7-4b4d-97ca-19235e42f2ed
856	pbkdf2_sha256$260000$KWt42TlfWRv1j6yE4mcy4z$rbBAbxDeyTCLBwjS3oVB6smw9TSJGlP77amFbsixHbI=	\N	f	1420b84c-1063-4b91-b245-bcbe02cdd23e	Александр Урусовский		f	t	2021-12-14	uru-aleksandr@mail.ru	1420b84c-1063-4b91-b245-bcbe02cdd23e
857	pbkdf2_sha256$260000$ZZwkBkUCGJAhi3355rws2g$eyuzBMLN9bPnCs4PFOtbRnY11UoV/VB237Ncv3eJTYg=	\N	f	8d2425ae-dde8-4536-b412-5b43927b4129	Константин		f	t	2021-12-14	ShilnikovKA@mail.ru	8d2425ae-dde8-4536-b412-5b43927b4129
858	pbkdf2_sha256$260000$fZg6LLvmR87RasSrTPPatf$mpBQHoe7YNlQoR2LMskZL9sKtF31MTzAtTvqZSTCWZU=	\N	f	f26fa643-d274-45b5-a579-ccf3fa018571	Андрей		f	t	2021-12-14	andrpavl32585@yandex.ru	f26fa643-d274-45b5-a579-ccf3fa018571
859	pbkdf2_sha256$260000$zKtMOpOpZjT8LXwDglbTEY$oHi8ZxsT/Bpm2pcmP9u+skgnFvKzauL1W/2MITrUYuk=	\N	f	5afe892b-9644-46a2-a4fd-95da51be1ede	Максим		f	t	2021-12-14	khilmaximed@gmail.com	5afe892b-9644-46a2-a4fd-95da51be1ede
860	pbkdf2_sha256$260000$AqIzKoYYxClkBvFJWGhz5X$XD2zhXk8ns1ybaTr1stUoCDEO2bLvV5dUeDZ4lztss8=	\N	f	87da55d9-944c-467a-bce2-968062e8e6bd	Данил		f	t	2021-12-14	Klinichkin@bk.ru	87da55d9-944c-467a-bce2-968062e8e6bd
861	pbkdf2_sha256$260000$RvJ20Kg5L1ueHToCXxkzoZ$c2/4PgrDScXu1WbdynspELLzoYu/yTFeXHWA/iYvKlY=	\N	f	9c075651-97fb-4a1b-80da-4e16ef626910	Рустам		f	t	2021-12-14	capaev98@mail.ru	9c075651-97fb-4a1b-80da-4e16ef626910
862	pbkdf2_sha256$260000$1WT3TUx26Alrz3AbxeV5uD$/wXbovsFp6LgbnoLACwQInETA2q20iAE4yibXDInO+E=	\N	f	955c1055-20de-45f9-9c18-f596ff002e85	Юрий		f	t	2021-12-14	ghost_078@mail.ru	955c1055-20de-45f9-9c18-f596ff002e85
863	pbkdf2_sha256$260000$OcBPxPqMuaTdUug5cDizT9$tlLHUTRNpDEtcr91FOhtVl3lmON5AcHcfMQRAOM4Wlw=	\N	f	78d54604-be83-468f-9660-2b8da3f24880	Константин		f	t	2021-12-14	karlovkostya@gmail.com	78d54604-be83-468f-9660-2b8da3f24880
864	pbkdf2_sha256$260000$GBhrymIJPIZbfiVbNRlDF4$1W/1lygoWIqzmagQ7i1ALvLiRYtEvq9n9/ycFUFgtS8=	\N	f	0aacedf3-d162-46b7-99bd-3eeab4bd0bc5	Ярослав		f	t	2021-12-14	klimanovrus@mail.ru	0aacedf3-d162-46b7-99bd-3eeab4bd0bc5
865	pbkdf2_sha256$260000$hqUOCyRsy5pVEqUw7orLvb$tsKmjs11h1+z1uwxaRHsVIXcZkgMDA1S+PXNjecz+OU=	\N	f	133fafbf-677b-4969-a0e7-540619fd9e2e	Ансель		f	t	2021-12-14	56_ctiv_68@mail.ru	133fafbf-677b-4969-a0e7-540619fd9e2e
866	pbkdf2_sha256$260000$vxe3ZwsAZGxYcEvADyBUwv$qtPS5YvThj9EMsPPXotP42O3+o4lG/y8j9p4MGCK5Ac=	\N	f	4ff2aeb5-6823-44f8-8dca-5ed7cf35ca12	Максим		f	t	2021-12-14	maxs911@bk.ru	4ff2aeb5-6823-44f8-8dca-5ed7cf35ca12
867	pbkdf2_sha256$260000$ZUJlALBwBo8N4NiUFsUiL4$2afbmsvWYos9HwAaWMy7puzPbg7VGSo7CzkOhV/Pj/o=	\N	f	1001c64e-90a4-40aa-ad11-72b49bee2632	Андрей Борисов		f	t	2021-12-14	and.borisoff@gmail.com	1001c64e-90a4-40aa-ad11-72b49bee2632
868	pbkdf2_sha256$260000$5QqSRCEfrb7xrRItJwUaZT$px5DdDYFZxwB5Rzp4YjH1nybapjRyL0eTOrEg3HjI1I=	\N	f	2e7f0c3b-bed7-476b-9b4b-67ee229fa7cc	Алексей Гаврев		f	t	2021-12-14	aleksei@gavrev.ru	2e7f0c3b-bed7-476b-9b4b-67ee229fa7cc
869	pbkdf2_sha256$260000$v4XPMF2jYV9zDDq3hyIS6r$S1OQ6vYU7SvOnedSo9G98cCnOrSR9VB5LlYIpyjNPWE=	\N	f	b2ee3598-6411-4c9c-850f-dbf595a8638d	Сергей		f	t	2021-12-14	7724348@gmail.com	b2ee3598-6411-4c9c-850f-dbf595a8638d
870	pbkdf2_sha256$260000$o9mwrFwb5ZndTdrz4cVJul$9qhaQg9fVNnq4d3e0XRoYzpxVynxfZEHrCW8zNghPT8=	\N	f	afb38501-7752-4852-abc4-1a244fa84377	Вера		f	t	2021-12-14	v.gaydukova@mail.ru	afb38501-7752-4852-abc4-1a244fa84377
871	pbkdf2_sha256$260000$n4RBACNXNGddCidQRv3kvg$VTnslcp4MAa7d1bd3bycvMY/oMWd9nQFYm02hllzHZU=	\N	f	2fce810c-1d96-4a96-8ca3-017a9a31c3a8	Михаил		f	t	2021-12-14	mojoclub@mail.ru	2fce810c-1d96-4a96-8ca3-017a9a31c3a8
896	pbkdf2_sha256$260000$6pWGeE6SDyR4AmcMKS7m1h$wqhPiFbgixfJc3sBfFUGWNp9lzxbYO8ThCRJilRbR+g=	\N	f	a177131c-a05f-4afc-8546-015b91aa9e12	Владимир		f	t	2021-12-14	kirin_vladimir@bk.ru	a177131c-a05f-4afc-8546-015b91aa9e12
873	pbkdf2_sha256$260000$8dyXz4EmQhgNRe48RxmRTm$zRLEUsH7lu2Vabv1u6tAneqi6mfddSULu2ONf4nhrUA=	\N	f	de98f11e-3949-45c5-8861-eebf56e90b38	Роман		f	t	2021-12-14	rrv03@ya.ru	de98f11e-3949-45c5-8861-eebf56e90b38
874	pbkdf2_sha256$260000$8QdQ2UNMrAUxuMcfTwCUCf$svgvfJGyyYKSqj9hlurYNd4nh5624eM9uiiHYZglXGI=	\N	f	2d277e12-7f4a-43d2-8ad1-0ef04993c1d0	Максим		f	t	2021-12-14	sobchenkomaksim@mail.ru	2d277e12-7f4a-43d2-8ad1-0ef04993c1d0
875	pbkdf2_sha256$260000$Tllxg6vl14RQWBmnrKdaAD$XDgjMLeT6Dw1Et5h5vzNLT3v0VGJ47h72z7qmo9aSyc=	\N	f	44177b60-3d6c-4fa4-9d88-0ae25e12287f	Павел		f	t	2021-12-14	malanin_97@mail.ru	44177b60-3d6c-4fa4-9d88-0ae25e12287f
876	pbkdf2_sha256$260000$RF0g439xY8LQsBSmOsm8lD$LIDrG5xr7pQ0uM36OtAU4/e0xtQf3wLV5Pgftx2MSDA=	\N	f	61c0fb9a-4d82-4e31-9afd-3532cc9c0f27	Данила		f	t	2021-12-14	danil.komarov.809@gmail.comn	61c0fb9a-4d82-4e31-9afd-3532cc9c0f27
877	pbkdf2_sha256$260000$syp69Qx4WzW37ZQdAO3QQU$Cr+wXzCNgHBcdW/061sd8w3uHPugDEDIyxt0U4PSepY=	\N	f	7d711e4b-5791-4a21-867f-4a9a0ba9b1e0	Дмитрий		f	t	2021-12-14	d-pihtelev@mail.ru	7d711e4b-5791-4a21-867f-4a9a0ba9b1e0
878	pbkdf2_sha256$260000$FGde9KISemYa3MRlfGgYC9$Jm6tA3BAwPJg9PBqV0BX2WEKUqEGGgVdmlebIx9TFwU=	\N	f	8ba68ed3-c554-4cc9-9c15-db7f66ba0aea	Aleksandr		f	t	2021-12-14	job-alex@yandex.ru	8ba68ed3-c554-4cc9-9c15-db7f66ba0aea
879	pbkdf2_sha256$260000$eacb2GkRCjm1VqHFsKlEeD$B0gvz4EpEkG76YqseZfpeT+wuE+cB0Tc6tnQ/s7PFlM=	\N	f	78d261b5-3ada-4fc6-909b-eef8bb4782ae	Екатерина Ильина		f	t	2021-12-14	iekaterina@mail.ru	78d261b5-3ada-4fc6-909b-eef8bb4782ae
872	pbkdf2_sha256$260000$k2BfGsRlD4g0ooBdTryCVv$HboMC0nqnQUhPAdN+UQzhht2Hc5kMbccMCxcmzC+e2s=	\N	f	6a5ce344-a680-4f0d-9fb0-af3a81124a92	Ильяс		f	t	2021-12-14	iab3@bk.ru	6a5ce344-a680-4f0d-9fb0-af3a81124a92
881	pbkdf2_sha256$260000$YLhWznGGDFwQ8APwIv46gt$eafCNXu5ERVHKWbbGeAeWQMZJDTCL5j1zT4xOKmDjqg=	\N	f	c7bdce17-ebda-484b-9f80-7212c90b4e54	Нариман		f	t	2021-12-14	tanar0112@gmail.com	c7bdce17-ebda-484b-9f80-7212c90b4e54
882	pbkdf2_sha256$260000$q1mjaK0N181fhH4V2ZkTGL$PAbDnGzrXvolStuVa/CuKVdQDXe8WKsVIZFzKvc+Olc=	\N	f	2e3b9048-5547-4c31-96e9-1d99953ca17c	Серж		f	t	2021-12-14	list99@list.ru	2e3b9048-5547-4c31-96e9-1d99953ca17c
883	pbkdf2_sha256$260000$R0fkWRLNbLcC7anJI8hwGa$SpBjqb1RGyc6SV58ucGX/GcchOPlYaaz8Dd//xeeV54=	\N	f	5ea13105-4910-4b71-bc92-92663154413f	Мария		f	t	2021-12-14	7216670@mail.ru	5ea13105-4910-4b71-bc92-92663154413f
884	pbkdf2_sha256$260000$7MHwapHq8PM6QJhlzC3Qea$RimFKUymO509Rv7RmICpwia8VuUowrfDEGHnD8K5hco=	\N	f	16f4beac-531e-4986-a8e6-92cb17454460	Юрий		f	t	2021-12-14	yurii.sandul@gmail.com	16f4beac-531e-4986-a8e6-92cb17454460
885	pbkdf2_sha256$260000$20zOFnbzaCVIjqTcTgm1aO$y08973+rffF0q4NQsxEOopFHentAGoduRR2s8I4FcqQ=	\N	f	8f37fd11-23bb-42b4-900b-3abc682a5c27	Иван		f	t	2021-12-14	kulaginrondoivan@gmail.com	8f37fd11-23bb-42b4-900b-3abc682a5c27
886	pbkdf2_sha256$260000$26H8Y8VQlXvkPvQZwUOvtf$LOOrtesH/UaVHnC8SJGQZQVmkzfUdehOG7jfERZWyng=	\N	f	60c76f7c-4a56-4e6c-8ed1-7dc2b861bd89	Искандер		f	t	2021-12-14	derekzazoo@gmail.com	60c76f7c-4a56-4e6c-8ed1-7dc2b861bd89
887	pbkdf2_sha256$260000$x8PBrstBuFRjvId9SDoibr$WrOWTdKyTYgCVJ8M52fTmvMyvflpgL7SaolGb5ZXrHk=	\N	f	3b1adc46-3edd-4947-a9e1-ddc7d670356e	Евгений		f	t	2021-12-14	jenyam@yandex.ru	3b1adc46-3edd-4947-a9e1-ddc7d670356e
888	pbkdf2_sha256$260000$CLssLYyg67mGBoiipxpXof$wLmElarPaDtwLM4r5AGjFyHoP9K1bOH6Y8dGahsFma0=	\N	f	52c8cbb4-5f08-4759-b927-5eb2af7a7667	Максим		f	t	2021-12-14	borisovskiy1986@mail.ru	52c8cbb4-5f08-4759-b927-5eb2af7a7667
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
900	pbkdf2_sha256$260000$G5PooTDGz1SOagYWbFnXtP$n/+tuR0nSqTvBe4IsZHZBpyi+BgbW0+HtgCnUBFbyKI=	\N	f	d30fb9ee-a963-4fae-a3f6-d3bb69b87c4f	Игорь		f	t	2021-12-14	igorekdan@mail.ru	d30fb9ee-a963-4fae-a3f6-d3bb69b87c4f
901	pbkdf2_sha256$260000$c9prjHj36M0tzwm8nWsRWo$4ANSJj/ZSOrkVZwneqpX5ivwLvvnOZRrv6SJyd7fNT0=	\N	f	3c9d984d-60cf-4556-9ce9-07d11a6c338e	Алексей		f	t	2021-12-14	horsik85@bk.ru	3c9d984d-60cf-4556-9ce9-07d11a6c338e
902	pbkdf2_sha256$260000$7fDNod09RnkPhgNQdh86Dw$C7Sl63oBvhHTp//5MlyMOurwk/H8yaTHP8zsuKC0O7Q=	\N	f	0855af11-51a9-4d85-bb9a-5f44e84327f4	Алена		f	t	2021-12-14	filimonchig@gmail.com	0855af11-51a9-4d85-bb9a-5f44e84327f4
903	pbkdf2_sha256$260000$pHT0pTdzyKAgV2GwF6RX2a$dpd6Lu5LP0T99bszgP0G/1GoEu9IVJJG98oi4ef/oHA=	\N	f	02d8acee-73a4-4048-a25d-d594775a8f88	Елена		f	t	2021-12-14	lenka-shatenka@mail.ru	02d8acee-73a4-4048-a25d-d594775a8f88
904	pbkdf2_sha256$260000$vF1BztsiryK3OkPJaQ5egb$FAA7ED3nhmfDm0peMWqqrJAASodAqx4AC9GjulqEOuY=	\N	f	ce344b39-14d3-4fd2-9dbb-f6837fef0ce0	Liana Kachakhmadze		f	t	2021-12-14	liana.kachakhmadze@gmail.com	ce344b39-14d3-4fd2-9dbb-f6837fef0ce0
905	pbkdf2_sha256$260000$DQMrwZsBlKKuWm9kifWchT$jyiwy1G/+I4PqoL+S04bGNrtPodXIcZWVCs6tMUALsQ=	\N	f	4cb8d588-ab51-443f-8c95-ea828c060de0	Денис		f	t	2021-12-14	zlobin.d.a@yandex.ru	4cb8d588-ab51-443f-8c95-ea828c060de0
906	pbkdf2_sha256$260000$klxcWkHuryVY2PgnLLpqti$lVoCSQ08G6GZw8QGHffesyKDN4CRzFzDn5to0B0Q+RI=	\N	f	7ddb82cc-0a8c-4a18-9b58-4d00d9c03ee9	Дмитрий		f	t	2021-12-14	mutafrukt@gmail.com	7ddb82cc-0a8c-4a18-9b58-4d00d9c03ee9
907	pbkdf2_sha256$260000$ktkpKKj0lzaSxeMgpV5HIF$H+gDPXQalWtPiZPTP8MKCajNT3BkHppniLic/OdjwXI=	\N	f	88ac7a28-317d-4d49-ba9e-d4c5d81548c9	Илья		f	t	2021-12-14	2152691@gmail.com	88ac7a28-317d-4d49-ba9e-d4c5d81548c9
908	pbkdf2_sha256$260000$Bhk5VE663WJLP2DjnjX5Gw$C+twA2bjIDcgpcxvDIl4vSj/RoyvXvdTpj2x4u5JY48=	\N	f	e05b1fe9-9ba5-454c-b35e-b02dceeae1b9	Егор		f	t	2021-12-14	vinipux170@gmail.com	e05b1fe9-9ba5-454c-b35e-b02dceeae1b9
910	pbkdf2_sha256$260000$OfuoANk2lctJKHt6nf1zrI$9VNRlmv4iVDa1uZXhY8Q8xKVCglCU+9jabjolQ4NgX0=	\N	f	8d994a2f-c01f-488f-9440-fb9bedb94dff	Ксения		f	t	2021-12-14	demetra23.88@mail.ru	8d994a2f-c01f-488f-9440-fb9bedb94dff
911	pbkdf2_sha256$260000$p5uarz8hWGTmKIdCMh2Pmr$YnZy+n62DVtsLNfvVND/Dn06uxvnwyNIQZIK0TOVCf0=	\N	f	c572b70e-3240-434f-abea-1a2b897503d1	Михаил		f	t	2021-12-14	mihcigan@mail.ru	c572b70e-3240-434f-abea-1a2b897503d1
912	pbkdf2_sha256$260000$aTo6BnyAafNMN6KVKK3ZTz$2P61hhQ4UBcpKb7IbvQox/Yeqxi83wkGPzcs0LA2W84=	\N	f	f91f4c36-f2d1-4fc2-80cb-53497cc7b200	Михаил		f	t	2021-12-14	mak256@mail.ru	f91f4c36-f2d1-4fc2-80cb-53497cc7b200
913	pbkdf2_sha256$260000$kkeOiy1rbRD2n3Dd9m8rnY$qUpjuTOW/7BSoI3XBi2jjL8cl0lDevvdTbjORxhLuSE=	\N	f	81e19f97-4317-4962-a225-63fa24c6572a	Евгений		f	t	2021-12-14	snake649@yandex.ru	81e19f97-4317-4962-a225-63fa24c6572a
914	pbkdf2_sha256$260000$nJBwHMWnBPsJotsVPJ4Olx$gQTVIb4WRzzjgkpdXjXECZLHS06cIwJlwlE78sohN4M=	\N	f	2e1968d6-f2f7-4669-83b0-c9d822975287	Давид		f	t	2021-12-14	drstein@list.ru	2e1968d6-f2f7-4669-83b0-c9d822975287
915	pbkdf2_sha256$260000$ZqMteB7SWQDFW07pfHvVcN$9iA66tPnUI1GJclDuk4clOnQtF7/RCajZBnYxNbRww4=	\N	f	fc216b61-b580-4b77-918b-89c5b7bd832d	Рустам		f	t	2021-12-14	dagarustam@mail.ru	fc216b61-b580-4b77-918b-89c5b7bd832d
916	pbkdf2_sha256$260000$KZTgah6lTH2ZJFgHULHubD$t6jWzMGmyBL9P1kIUSjVbC34BEC5YMe8MyHH7wNs2nA=	\N	f	bee4316e-f639-4f47-a772-c8c1884de497	Александр		f	t	2021-12-14	nadejda_vek@mail.ru	bee4316e-f639-4f47-a772-c8c1884de497
917	pbkdf2_sha256$260000$tLjIUEvW14CCz39jXxPMxf$jCwxzze3mw2S545NIl4WPGZcryHy2DZ45W2maXlfcI8=	\N	f	3aec369d-70d5-4b52-9d0d-dc2d48827ed9	Валерия		f	t	2021-12-14	dimler1@rambler.ru	3aec369d-70d5-4b52-9d0d-dc2d48827ed9
909	pbkdf2_sha256$260000$vDhY4pya1FReaWBvUoV4Gd$S2vgAJe7K8va2TZUGwfHgF71EyXjCnDhTmykQWKg/Bo=	\N	f	adaaa15d-3bbe-4bc9-9267-7dd387ec8337	хуй		f	t	2021-12-14	really.bitch@mail.ru	adaaa15d-3bbe-4bc9-9267-7dd387ec8337
919	pbkdf2_sha256$260000$IrebaWdkvztCiPjYVTpyRC$HqRrwHQoZn3K77GhxKMyJHIjEZl2SVyS8wOXwJq5fOk=	\N	f	0df1f078-cafb-4a05-bd16-e86b39690383	Светлана		f	t	2021-12-14	svsay@yandex.ru	0df1f078-cafb-4a05-bd16-e86b39690383
920	pbkdf2_sha256$260000$iur67PxoEcdfgADQFU78Dn$H73sP01VRD/nfNMN8ldokYl6XSUTxwte/acMoi6Bvcc=	\N	f	d3f01b79-937f-4453-b503-984e0ffb8be3	Yulia		f	t	2021-12-14	kowalewayulia@yandex.ru	d3f01b79-937f-4453-b503-984e0ffb8be3
921	pbkdf2_sha256$260000$PA1yyvSFaCBnrthzEFtxu7$gtwoNa/nhqTUJ+dxop8P0gIJrto8zagLpmwCmlkTELI=	\N	f	2b9e8a85-5576-41e2-8afa-046e884b1ee5	Никита		f	t	2021-12-14	gamenik13@gmail.com	2b9e8a85-5576-41e2-8afa-046e884b1ee5
922	pbkdf2_sha256$260000$aLmcI82cI46Cp0ZexJuOce$iaD5fFxFg29o6nhs/41L1IvUnFBXXaBTsHTS1pqqUug=	\N	f	76ba41a9-c42b-4efe-a309-a22a9bffb93c	Алексей		f	t	2021-12-14	lesha.schelokov@yandex.ru	76ba41a9-c42b-4efe-a309-a22a9bffb93c
923	pbkdf2_sha256$260000$HRHRW0rp59IWNkaVWAc2RU$S3JVqjaaJxrd+tQLLR/I0PUpSC79YaU8TpIVpw2obnY=	\N	f	a8036cd7-a050-4760-9a87-4e90d954a2eb	Александр		f	t	2021-12-14	migashkinaa@mail.ru	a8036cd7-a050-4760-9a87-4e90d954a2eb
924	pbkdf2_sha256$260000$sa3FsJTN4PLBGlfMwuZknS$p8cNGlWFgwKmJMeFoeqPCM6CiviPdJjrsOOGOM5hgxk=	\N	f	94128095-cec2-46c5-b707-69c649d0123d	Иван		f	t	2021-12-14	pavlov.i.s.2502@gmail.com	94128095-cec2-46c5-b707-69c649d0123d
925	pbkdf2_sha256$260000$7hi21EnRqgWjXGIJeTvtEc$FNZeVavGWBp+VZC+9DN9Uraq21r2SdStkYR9mC/5nnI=	\N	f	d80f5199-97cc-466a-a1ba-0d3470846ca0	Елена		f	t	2021-12-14	ajalisa@yandex.ru	d80f5199-97cc-466a-a1ba-0d3470846ca0
926	pbkdf2_sha256$260000$vbRa1o22bajOuGarHLj6UL$g9I+Dc/atmJs6dZIOwvdVUEyvUju05PRQJ9OgNQW9Ig=	\N	f	3fab323a-a7f1-4cae-8c22-493247b48d79	Сергей		f	t	2021-12-14	sinexsis@yandex.ru	3fab323a-a7f1-4cae-8c22-493247b48d79
927	pbkdf2_sha256$260000$paUY1PZ59d0Im7Ue0MoH4K$uPizk95DfvMu0rIIQ8xfHQx5YEY2z+IHsvMhDB3btEg=	\N	f	df607a19-2aa7-4faa-8d4e-c3a5f498915d	Иван		f	t	2021-12-14	polovinkin.ie@gmail.com	df607a19-2aa7-4faa-8d4e-c3a5f498915d
928	pbkdf2_sha256$260000$21YhNypN3EPuEYEghkbiEa$uPJq45bdTs/UiD4a63ktjZ995gbAprWrXB+9wi6sqiA=	\N	f	ce432098-3f56-4e22-b1f6-b6b53a6f9360	Николай		f	t	2021-12-14	glukker@mail.ru	ce432098-3f56-4e22-b1f6-b6b53a6f9360
929	pbkdf2_sha256$260000$Z6zKbNatGLPoBSr5KZPyjS$ux9ERjk1sr+qkK0NFPhe+7NxRDjn63PStFkSiWCcqjI=	\N	f	842d2a12-370c-49ef-bdea-bfce969e1790	Гаскевич Алексей		f	t	2021-12-14	332913@mail.ru	842d2a12-370c-49ef-bdea-bfce969e1790
930	pbkdf2_sha256$260000$zU5GsPFqf7Ef6xgvsE5f15$YHaeDBf7XHEkQH1P6WiZ9A0InpgJN1Sgk/abLHIujaA=	\N	f	751ab8a7-e5a5-40dc-ad77-1b30413750e0	Александр		f	t	2021-12-14	a.leontyev88@gmail.com	751ab8a7-e5a5-40dc-ad77-1b30413750e0
931	pbkdf2_sha256$260000$xHfiPlLtXhvig5qkvokJxj$yXYYNQ7plA9D6gDbl6F/ZQTnML3qU9nlVCoSCFctUew=	\N	f	fc30a26e-6b9b-48e8-9958-c74dce9c83c8	Леонид		f	t	2021-12-14	reklamator07@gmail.com	fc30a26e-6b9b-48e8-9958-c74dce9c83c8
932	pbkdf2_sha256$260000$4zj5d2NOrelvycd9B50qv9$VKq2U4FrZvQCAcx8mL68K9OVoP3CHwO9l9Fm4QWq/5I=	\N	f	2b4a0ab2-e7ea-4e45-9d3b-f9ed6443fc01	Давид		f	t	2021-12-14	arutynyan.david@ya.ru	2b4a0ab2-e7ea-4e45-9d3b-f9ed6443fc01
933	pbkdf2_sha256$260000$LPKTslnr2iJkHojFjGeqrd$dkN8R3j1HbRE317KAQ/9Jmo0/eunryZfTR4vLiq4sCY=	\N	f	efa5ff3d-cc3c-43e7-8954-97c358b25f47	Александр		f	t	2021-12-14	litvinenko21sv@mail.ru	efa5ff3d-cc3c-43e7-8954-97c358b25f47
934	pbkdf2_sha256$260000$xn5iJoJkRSEzdLmvXTBIvl$wpYQrvSnXwA4xMvkHCJHirpsFY5FFVYkwhoMbQcgK9I=	\N	f	cce8a978-fcad-4178-bf3a-4563f3ce85d6	Николай		f	t	2021-12-14	mic_07@inbox.ru	cce8a978-fcad-4178-bf3a-4563f3ce85d6
935	pbkdf2_sha256$260000$9V8Xx6ANIaqHM6WBwemC8z$yWkU46q0sTmRQsZ1BIQ7fhfJrMad2bTr5qNeQH8Awmw=	\N	f	075ce83c-58a2-48d9-a1c7-ec0fbe50a7b7	Вячеслав		f	t	2021-12-14	mr.kindwolf@mail.ru	075ce83c-58a2-48d9-a1c7-ec0fbe50a7b7
936	pbkdf2_sha256$260000$FzkoTEMN6GTIt9mRrWXNyC$9bHToBldGZiegOLUEQFdVUZfT6QEVpj/p0Qzr5t11f4=	\N	f	0c0cadeb-1d96-4b1e-83f9-839fd3568446	Александр		f	t	2021-12-14	riber11@yandex.ru	0c0cadeb-1d96-4b1e-83f9-839fd3568446
937	pbkdf2_sha256$260000$IOdYHdRl32KKJ3l4Sivqq9$oww2MOkwyjaIe9zYlO+wU8eNyrsq9Syd7J3o5xYIexE=	\N	f	ab60d3ca-1baf-4d2c-bb44-1f5c29de1ed6	Анастасия		f	t	2021-12-14	05.03@mail.ru	ab60d3ca-1baf-4d2c-bb44-1f5c29de1ed6
938	pbkdf2_sha256$260000$GAlPK22bJScCY10Sg4sm6h$np6SrtR6k0gQmMO+ofbCtiRdKoBJIqA7cizeQaC+Zq0=	\N	f	000ae4ff-abf7-4a9d-9224-a45ef8effb13	Дмитрий		f	t	2021-12-14	goryn6517@gmail.com	000ae4ff-abf7-4a9d-9224-a45ef8effb13
939	pbkdf2_sha256$260000$jbTOXqLWBqgzTT8uiiMRVE$i397IJmhEuFZkG+XReQOyRQrGf9TlhctmW5jmMNcp9g=	\N	f	b93e8dd1-e2d7-4301-8e97-4dcf3e6f7db3	Константин		f	t	2021-12-14	world1984@mail.ru	b93e8dd1-e2d7-4301-8e97-4dcf3e6f7db3
940	pbkdf2_sha256$260000$ZENyaFiU4RbPR54eBifLxZ$0W+eDrlFtM4Pu1Mn6dxYlxUd7zoJaYqaFK+KeB9sFz8=	\N	f	62589f44-9f99-4226-8793-42e0bc6c674c	MK		f	t	2021-12-14	marat-kopylov@bk.ru	62589f44-9f99-4226-8793-42e0bc6c674c
941	pbkdf2_sha256$260000$bKEQKYeD2GFhSy1Msg0B0F$xrqZrhXd6XuQD/V8w8kW7gJJqfZcL6bOVKmsZqxEt6Q=	\N	f	bac597d9-7db3-4e54-a8b3-287459ccf96d	Евгений		f	t	2021-12-14	evgutorov@yandex.ru	bac597d9-7db3-4e54-a8b3-287459ccf96d
942	pbkdf2_sha256$260000$9PDPn3BIjU93jvN1jyk5wc$Jg/TiWzEUrx0ozEnMOeyqCZHgLjl+r1F5FXdA3QpU2s=	\N	f	9b1f9b96-87ee-4696-b9d2-eca18535773d	Роман		f	t	2021-12-14	www.sheyankin@mail.ru	9b1f9b96-87ee-4696-b9d2-eca18535773d
943	pbkdf2_sha256$260000$vI9UoxCpGmwyfSaN8lkPDG$CzllVPim8t0MeeH7MKUl+bb7d7U2432V/DjwFR4DqfM=	\N	f	1e2bcb5d-0347-4831-93bd-7c1e0e359a67	Егор Андреевич		f	t	2021-12-14	gta3434@yandex.ru	1e2bcb5d-0347-4831-93bd-7c1e0e359a67
944	pbkdf2_sha256$260000$1JMjriVhL4EJJKGXplk8ZL$0wa8mJmvVjkHpdg1i83ihDsuqKJhnPOpV8msauFMXK0=	\N	f	49b72004-d0fb-4bb2-8f79-01259ba53822	Евгений		f	t	2021-12-14	jackoffice@mail.ru	49b72004-d0fb-4bb2-8f79-01259ba53822
945	pbkdf2_sha256$260000$UpJ719uHwJORPCcuAc2bUm$D23qN4EIfRoQjA5PUddxpvJzEaxUHvNuWgFA94jrQes=	\N	f	48f4df75-d206-4e75-a0a1-a1a39c4b4879	Александр Петриков		f	t	2021-12-14	petrikov.mail@gmail.com	48f4df75-d206-4e75-a0a1-a1a39c4b4879
946	pbkdf2_sha256$260000$9PQqIOEyJlmXVLPO1EURVb$ekCJQqtFo6E5qkbDtPRo2+gKIXFhXG9b0mhEgaN1w9k=	\N	f	6033b87d-3a65-46a6-bb92-77f448f4eef9	Михаил Мартынов		f	t	2021-12-14	martun.92@mail.ru	6033b87d-3a65-46a6-bb92-77f448f4eef9
947	pbkdf2_sha256$260000$7pnXffbLzVZHKUwGRg562m$/Pywchtuhr48+wzOEnIS2qbTELPanla1UY9WJXcuwf8=	\N	f	fdc4d6b1-fccf-4e6e-b4c0-16704780b314	Евгений		f	t	2021-12-14	dolzhkovyi@gmail.com	fdc4d6b1-fccf-4e6e-b4c0-16704780b314
948	pbkdf2_sha256$260000$AO5XehRw10QxtOl7OCT49y$i+ip1TNr+CGWuKbBmC6+xutUZkDGr3IEkYnW/EeWtIw=	\N	f	0f2ff099-eaa4-47a8-b41d-276fdfc4c8ae	Дмитрий		f	t	2021-12-14	d.net93@mail.ru	0f2ff099-eaa4-47a8-b41d-276fdfc4c8ae
949	pbkdf2_sha256$260000$9XogHxSRRoyoiQeO9Vh9iF$H5OvPnuh11saAGNDlcBFeFbEqRkso9BZvmitRRYFWfo=	\N	f	b4d0a26c-6258-487e-8ff6-d631d11d4140	Екатерина		f	t	2021-12-14	kate.skipina@gmail.com	b4d0a26c-6258-487e-8ff6-d631d11d4140
950	pbkdf2_sha256$260000$1j1SIlv8BO0mvfVpg13sHq$4NznWL4hJxnOh/aprGGcokBz6tNCYocbRM3ZEKvWbxk=	\N	f	be6f4a13-4730-4e60-966e-43d62dafbf9b	Александр		f	t	2021-12-14	kanin-av@mail.ru	be6f4a13-4730-4e60-966e-43d62dafbf9b
951	pbkdf2_sha256$260000$Goqc3QHU5FeKHVJvxDlerk$m9er8PqFgRYfGJILQvMqDbwSNRd5Vpuptu2FVZkwF3E=	\N	f	b92c0ae1-5b8f-4d49-a69a-baf860074ff3	Алексей		f	t	2021-12-14	lynchbassyuk@mail.ru	b92c0ae1-5b8f-4d49-a69a-baf860074ff3
952	pbkdf2_sha256$260000$jymcnAVair5Gz40TLB9lOO$mDb6Exd8+yfRWErUqwwlFlw6D9vpEV1wX1MLmTrZ+wk=	\N	f	3428aecf-148e-4229-ac8d-99ebc041a61b	Gennady		f	t	2021-12-14	ygv30@mail.ru	3428aecf-148e-4229-ac8d-99ebc041a61b
953	pbkdf2_sha256$260000$m1nYVVci45OF4slXC12B0i$QqogN+6QBRL1G3zxC7+CD71IP4BV1bPq+PG71kjma+g=	\N	f	62c9e2d1-12cc-4e0b-b3e0-129f631c99e5	Дмитрий		f	t	2021-12-14	Mityayev23@list.ru	62c9e2d1-12cc-4e0b-b3e0-129f631c99e5
954	pbkdf2_sha256$260000$CN7NFGGjcL4699Um3uekx5$Ufs1aMA8NlMF29eq1jmy8h+HMIy9LinxTIqVZOAc2NI=	\N	f	4b524dd2-ca70-4cf8-828a-a744f5490693	Ирина		f	t	2021-12-14	irisha-chel@mail.ru	4b524dd2-ca70-4cf8-828a-a744f5490693
955	pbkdf2_sha256$260000$OR3OVRlbItxh2CMJoif8yD$CserEf5sOuNQEwZUEK1LMBlKAAmjgaXppY+9K8hm/gI=	\N	f	5cd7c91a-a594-428c-9738-f214a921824b	Ivan		f	t	2021-12-14	vasilchukivan@gmail.com	5cd7c91a-a594-428c-9738-f214a921824b
956	pbkdf2_sha256$260000$7QVLOLv2rbb5V23yu3bwB4$fmGaRsiNx/V7UsGV/dr0mPgEEFAArjhVbMJd67CAouY=	\N	f	e6d9ca92-bd3e-4043-8607-10babf4bbc64	Абдулджабар		f	t	2021-12-14	abduldzhabar.shirinbegov@mail.ru	e6d9ca92-bd3e-4043-8607-10babf4bbc64
957	pbkdf2_sha256$260000$6s3dRY0kaWfZbDhk2U9AGL$rJAsJVrsqoxGQ++zXQEi3J1QBIHJdJDqIgDB4Ef7NZY=	\N	f	a7b0eef8-360a-4e45-adbf-0b15613ef7b5	Максим		f	t	2021-12-14	kuzmin_mv@hotmail.com	a7b0eef8-360a-4e45-adbf-0b15613ef7b5
958	pbkdf2_sha256$260000$GugF989X84Gc5693Wh3Z6U$B37Y9/iMaeJaUWIWiHB/LVBaBjql7jMw4UafOk/Ra20=	\N	f	9dd5064d-c821-4e12-9cbc-ccd4936e34ff	Людмила		f	t	2021-12-14	muroval@mail.ru	9dd5064d-c821-4e12-9cbc-ccd4936e34ff
959	pbkdf2_sha256$260000$BiIqpJmTsqFdf8FUjnNNip$oS5AtV+JcgcVGxYqInObsY9ntGQPSWbARHVpU6flTlQ=	\N	f	ddd6ba07-ae4a-4685-85b0-ee69b9713acc	Галина		f	t	2021-12-14	chalikovagalina@gmail.com	ddd6ba07-ae4a-4685-85b0-ee69b9713acc
960	pbkdf2_sha256$260000$UxMmvPruAGlMd7p8dclWCh$ErQ5GvKZBPAuWs/8bG0kE2jbYfePD17ljve91/fW2So=	\N	f	5716f60a-66a8-402b-bf85-588a35f1f127	Максим		f	t	2021-12-14	safetin@mail.ru	5716f60a-66a8-402b-bf85-588a35f1f127
961	pbkdf2_sha256$260000$fizccxkG4VV9CEcfwZN7Jo$H1iBbW2zs1HAckZyU6DuOYi7yBRn47MiO/CVSyLWZhk=	\N	f	ac6885a9-3d2e-4a31-b2ba-5360ff89c046	Ридван		f	t	2021-12-14	donari2021@list.ru	ac6885a9-3d2e-4a31-b2ba-5360ff89c046
962	pbkdf2_sha256$260000$XCM7CX5LV3e54bG89kfmOv$XYaCK73jQrs24Dc5EqqCfAT1kqZC6ei3Ftw1qNwvly4=	\N	f	a251b0c3-b080-442f-bac9-93da668bcac6	Роман		f	t	2021-12-14	rtopilin@yandex.ru	a251b0c3-b080-442f-bac9-93da668bcac6
963	pbkdf2_sha256$260000$IcP2olLiVC86AINY7FCg4n$szmDbwMo7avAHXuTZNBUiNSS+5A3uml/DVin4cAxqyQ=	\N	f	1391de89-5ae4-48b9-b68a-fab3a1868304	Татьяна Васильева		f	t	2021-12-14	v_tanita@mail.ru	1391de89-5ae4-48b9-b68a-fab3a1868304
964	pbkdf2_sha256$260000$qwJT9SDCppEQyUTSsqLj0g$zdLBs8JZOxpkakmN34Zwd6u5uZb9duspBrCDumeyLJM=	\N	f	ac0c8158-c0bf-4e0d-a289-91750c4f50be	Ермек		f	t	2021-12-14	yermek_zhar@mail.ru	ac0c8158-c0bf-4e0d-a289-91750c4f50be
965	pbkdf2_sha256$260000$Y91YquXnk8yNdOwI0DjmXV$MRW04rj2RXgT7LzA2ARtNcGv62BtTMcGcVu/bpqaHRc=	\N	f	f40ec5fa-6299-411b-b54c-731a864a2aa2	Кирилл		f	t	2021-12-14	fox90546@gmail.com	f40ec5fa-6299-411b-b54c-731a864a2aa2
966	pbkdf2_sha256$260000$NbjnLFVARKindPo9CamJ4L$7V71rh3WDguGl4GROgKkeiGUpsZ8A8JP1xcox7AxSkw=	\N	f	7587d994-c585-4c13-8dac-e66a17d9dec1	Вячеслав		f	t	2021-12-14	Kirpich25@mail.ru	7587d994-c585-4c13-8dac-e66a17d9dec1
967	pbkdf2_sha256$260000$Sshz6iufceTYgKZn6YNqxg$o6CFA+vh6qH0tDS8/ikx30kQjtqHWfeljzxrKtkdBHs=	\N	f	b8005e73-45ba-41d2-849b-0febdcd9d8ac	Юрий		f	t	2021-12-14	yurazakh28@mail.ru	b8005e73-45ba-41d2-849b-0febdcd9d8ac
968	pbkdf2_sha256$260000$MxC34LiSuNCGPMSAtamJ3m$xFfFKHSBMaIA9BTZa/tPSX4DphXhK2G9FWxXNterm68=	\N	f	3970c392-5f06-4f31-9d6d-5ad870ad9555	Семён		f	t	2021-12-14	poletaev@baikalexpress.ru	3970c392-5f06-4f31-9d6d-5ad870ad9555
969	pbkdf2_sha256$260000$Ed48wwnX2mLXRENRtKKpE3$dm7mM8aGPuEVvx9dHZE8+8AHPJAykZ8Ygo3GMmnumvQ=	\N	f	f31d1535-977c-4f4d-8528-f30cb900d644	Владислав		f	t	2021-12-14	SorrowRealInvest@yandex.ru	f31d1535-977c-4f4d-8528-f30cb900d644
970	pbkdf2_sha256$260000$bK12NWujXsr48lCO8iN9Rm$3H4Cg6o2WTTsGDAyDF+SqmZ8uPwOOxiJELKL1WfuxS0=	\N	f	32d10cb1-42cc-4a6c-a13f-204d25775c78	Ирина		f	t	2021-12-14	iragoldan@inbox.ru	32d10cb1-42cc-4a6c-a13f-204d25775c78
971	pbkdf2_sha256$260000$kgAPhQUujK0a7FCQtwLaIZ$KOHIj4XpnG0FvSjOC2x5UQsRmpcoFixY3hlA5wNltHU=	\N	f	b4900ad8-43a8-48a2-a0c7-74327942e33a	Игорь		f	t	2021-12-14	tds-igor@mail.ru	b4900ad8-43a8-48a2-a0c7-74327942e33a
972	pbkdf2_sha256$260000$07WfH4gZerdVVF98vf5ukn$Ac6TCatq5SPc0TP4JV6QwPigEc8SIEmU92iKOvrs814=	\N	f	65ba300f-d94d-4d41-a552-528deff77b4a	Юлия		f	t	2021-12-14	julyapozdnyakova2015@yandex.ru	65ba300f-d94d-4d41-a552-528deff77b4a
973	pbkdf2_sha256$260000$Mh4ouJZMObMMrZI5tSqLBW$WnZg9n8M6azDp46wic7GOwAAG/8AqiyVkqE3D5ha9AI=	\N	f	92f73618-9eb5-4f41-84fa-3aa5850523b6	Константин		f	t	2021-12-14	k_tim69@mail.ru	92f73618-9eb5-4f41-84fa-3aa5850523b6
974	pbkdf2_sha256$260000$jNelKcCmbX0YEdgJX2v9np$JsZ/2Vgm8ICFlpEgHZStvTyPLxXKu90jLdFgwT3TPz4=	\N	f	0556a89a-fbce-43a6-913f-69696f079593	Дмитрий		f	t	2021-12-14	efrodim@yandex.ru	0556a89a-fbce-43a6-913f-69696f079593
975	pbkdf2_sha256$260000$BzjHvAzh6QWQcPScpbdOeK$qmHh2rGQzVD5Bbjhr+zqd5FZ4H09v1zzcAT0ooJ7zBE=	\N	f	b71399f3-c763-41cf-a66f-d795505b5364	Лусине		f	t	2021-12-14	klucine@mail.ru	b71399f3-c763-41cf-a66f-d795505b5364
976	pbkdf2_sha256$260000$89jQ7mwJuHI38Z1ESHxQkc$FdmP9HW/NklSY6QFyckYJTKIOfXWgxw9cccTP/a4aJA=	\N	f	7b333fb2-2a58-49b1-b30b-6e5f03f1116a	Артур		f	t	2021-12-14	artyr.200114@mail.ru	7b333fb2-2a58-49b1-b30b-6e5f03f1116a
977	pbkdf2_sha256$260000$YeDOAOPJ2GZUWLOPjurv2E$w5r/ncc7XGU8b1+kwQvxM5las9qxDO+qrFvYFy8r2eg=	\N	f	8877cfe3-d66c-426b-8949-78417475c383	Валентина		f	t	2021-12-14	vgeverts@icloud.com	8877cfe3-d66c-426b-8949-78417475c383
978	pbkdf2_sha256$260000$bhXgBGOVRorz2ERGA1THhM$3Vf7G1boxMHEpavtHgnQu50VXaMN5vk3Hrrgo/iP8Ow=	\N	f	33c86920-b20d-4a41-b14f-71147566a80f	Виталий		f	t	2021-12-14	vitoagad@mail.ru	33c86920-b20d-4a41-b14f-71147566a80f
979	pbkdf2_sha256$260000$rJl8nit8MTpjmyqzKbqDC5$ilji3W/+YShppHjPudpDwJ4Fka7q4NAbM0mPJrFsdtg=	\N	f	ad6e2028-648c-4d08-938e-4c37f6f4080f	Анастасия		f	t	2021-12-14	a9119182580@yandex.ru	ad6e2028-648c-4d08-938e-4c37f6f4080f
980	pbkdf2_sha256$260000$4KkRIeUVSy7fRtdbTS3hb2$Y5a80bXP7Vf9d4323B4UYT/qLJSEYoHTxL6+GeTB0Gs=	\N	f	455fc728-aa53-4409-b31e-1add9e30eceb	Елена		f	t	2021-12-14	catwomen2007@rambler.ru	455fc728-aa53-4409-b31e-1add9e30eceb
981	pbkdf2_sha256$260000$29zXjoDlalc4RW7dT9ba16$V0zloTAIdqRw64HKRXlqNzrQNAdkscg67z+DeHef0mE=	\N	f	4c71bae0-3ed4-4f05-9026-e6b4def9a701	Вадим		f	t	2021-12-14	vadim.tsay@yandex.ru	4c71bae0-3ed4-4f05-9026-e6b4def9a701
982	pbkdf2_sha256$260000$xSLAqyZvG2J8tA63ARdTMT$CbbTol2sJ1kSaCFEqeMcCh25s3Cc92D5VtQ8FUTNetM=	\N	f	6438a3d9-037a-48ce-8c2a-23bdd7fd9173	Елена		f	t	2021-12-14	elena.bugaec69@gmail.com	6438a3d9-037a-48ce-8c2a-23bdd7fd9173
983	pbkdf2_sha256$260000$CfcePvehWbtTrOQeJgzHJy$yMws4eEu0y4All8WUKnnyWJyVAa40BdV/HFyOxdyetk=	\N	f	56492e69-a99a-405b-b19b-0e30a82abbea	Алексей		f	t	2021-12-14	mr.kosch@mail.ru	56492e69-a99a-405b-b19b-0e30a82abbea
984	pbkdf2_sha256$260000$NnhHPh7xKBQg876nICHin5$CX8CNIIf+wUiB5g1SNwqd8aGFD9N6low8F9mnIKbi6M=	\N	f	41d8c918-1d86-443c-a371-40a55f490bec	Амо		f	t	2021-12-14	badamoboy@mail.ru	41d8c918-1d86-443c-a371-40a55f490bec
985	pbkdf2_sha256$260000$TE3LqGX3R6X3stSqzT5aMd$w2soSDCtkJG+9VUcyihGuQI9H+sNhux/1K5HHC+MeKU=	\N	f	9a6136de-e319-40cf-b7c6-906bc75e2246	Владимир		f	t	2021-12-14	investments159@gmail.com	9a6136de-e319-40cf-b7c6-906bc75e2246
986	pbkdf2_sha256$260000$xPGh5Gr5QNvCqayGdl8R5z$LdcISzcYq0x6P3zjXhs4IffdKzXgPlgrCXI+/ECjdkA=	\N	f	5723e728-f8f0-4369-984e-6e0d1eadc521	Николай		f	t	2021-12-14	Niko2027@yandex.ru	5723e728-f8f0-4369-984e-6e0d1eadc521
987	pbkdf2_sha256$260000$zRKSO2ttW0NcYqzGYXje3w$IrYGXfxr7FsCVhPpX97x8QvbVLZNxr2ckxd9CyLYjqY=	\N	f	0bd4e3ae-4a07-4d23-a834-9cb394e9b74f	Evgeny		f	t	2021-12-14	junq@ya.ru	0bd4e3ae-4a07-4d23-a834-9cb394e9b74f
988	pbkdf2_sha256$260000$hCkY1vvqqo8oMmxbYMLFRL$gToqU4CM0K/2zokJ3cvVL7aAJYKWi95mS5VNni2ANf4=	\N	f	4c1e75cc-22d5-4492-ab8d-a721336bbdcb	Михаил		f	t	2021-12-14	mikhailbrandine@gmail.com	4c1e75cc-22d5-4492-ab8d-a721336bbdcb
989	pbkdf2_sha256$260000$kvbEvW130gIfmGHsizmfm6$UI8srLE2H/mqkzdVM9BY9fCaukPtIsQkaKMnm8ZUu1g=	\N	f	69b18614-b4ed-48c5-a3c3-0d8a77ba0741	Александр		f	t	2021-12-14	reg@brigo.ru	69b18614-b4ed-48c5-a3c3-0d8a77ba0741
990	pbkdf2_sha256$260000$oHPE4boaiU6MuZiY9112op$uUwAmm0jjROvq6Iz4fch1LFnvV1TI3MnomGi5wTc7eM=	\N	f	6af100a9-454b-438e-a962-c4454c61ebee	Pavel		f	t	2021-12-14	larinvest33@gmail.com	6af100a9-454b-438e-a962-c4454c61ebee
991	pbkdf2_sha256$260000$KwAyjkULe1uRIz05tu6SQh$xKMa6zaiO1U8y2zQ2glCAYUOY58dRNqiW17OlHhMa0Q=	\N	f	90eaf052-e94a-40bc-b0d8-b44a04621d94	Сергей		f	t	2021-12-14	vodjnoy34@yandex.ru	90eaf052-e94a-40bc-b0d8-b44a04621d94
992	pbkdf2_sha256$260000$Lps51M67qx0GFKKu7PXrMU$chOPVub7q6/exkCUKSnPLTpRpku2cbrSL0s9AxBQZRY=	\N	f	fc89175e-300d-45d1-a19d-d60b3bb5270d	Павел		f	t	2021-12-14	astafpavel@gmail.com	fc89175e-300d-45d1-a19d-d60b3bb5270d
993	pbkdf2_sha256$260000$Lr65zM4mwnWDvoMrjndnrE$sjRzRXZV+V/knxbe7W/lXqegCJdriGGFkJYGRef2I4U=	\N	f	bb05fee9-5cc1-4c78-8c57-5d2acbeade58	Юрий		f	t	2021-12-14	yys63@yandex.ru	bb05fee9-5cc1-4c78-8c57-5d2acbeade58
994	pbkdf2_sha256$260000$nVxK5XrXSaM7JLnj6y5kmj$vcFlYeisYAWLc9GQekD+aGqa2Mn4FBkgz0s8c4GUDaQ=	\N	f	aed19ae5-4b4c-4156-823a-9760cb57f105	Инна		f	t	2021-12-14	ip0301@yandex.ru	aed19ae5-4b4c-4156-823a-9760cb57f105
995	pbkdf2_sha256$260000$lCJeSB1ZaJVmhVw18u5mLG$3xe4wQcpjOHFI3zSpwtj5M4yigu03KnfHZn2pLrRC6c=	\N	f	61106305-7845-4f53-a90c-fc8eee9f32da	Дина		f	t	2021-12-14	aysina_dina@mail.ru	61106305-7845-4f53-a90c-fc8eee9f32da
996	pbkdf2_sha256$260000$7tqHJEmwOkUvZIBgtTZHED$+Olm1fgSObuL+/35JllxvJgqsGcwCUJFB6BEvx5i8AE=	\N	f	4fc9484d-b3f7-4b19-b52d-1d9f72de9fe4	Владимир		f	t	2021-12-14	kalyan92@list.ru	4fc9484d-b3f7-4b19-b52d-1d9f72de9fe4
997	pbkdf2_sha256$260000$P7MCfcQrhkv30Pk808RFiz$wHU2N6b4NSdeQKut38Knjj8Y5fCOVu6s/+GgRzPSQIM=	\N	f	3bd7e765-135d-4366-81d7-c81a445facd8	Мария Максименко		f	t	2021-12-14	main_ya@list.ru	3bd7e765-135d-4366-81d7-c81a445facd8
998	pbkdf2_sha256$260000$WcXgqwsDDYcDYJaJL25ccP$lTvVOdIU5RsjL8mzal1QBMuQBXbzQcCCC55dnfuerFQ=	\N	f	1cfefee2-d42a-4f7d-a9a4-13aadf3243fe	Виктор		f	t	2021-12-14	vcampese@mail.ru	1cfefee2-d42a-4f7d-a9a4-13aadf3243fe
999	pbkdf2_sha256$260000$M2nRDtZVC1CWor4aw4Qsjl$IQL3oWYqydine//tLhyXih+wX8TIu1faQnCtGbRpajw=	\N	f	8a548cd2-e89e-4d58-a87f-141698d7bd1a	Кирилл		f	t	2021-12-14	tarasovk87@gmail.com	8a548cd2-e89e-4d58-a87f-141698d7bd1a
1000	pbkdf2_sha256$260000$mFgagZAg52StmQ9WbcUanv$/6PCb5dCYA03Aq0/6fQrB/Y0mP//Zff6bKGnMSdNSkk=	\N	f	57e52089-9cc9-4436-a563-5b3b07f87978	Viktor		f	t	2021-12-14	luckybroker85@gmail.com	57e52089-9cc9-4436-a563-5b3b07f87978
1001	pbkdf2_sha256$260000$5wGvJT5wW8h7CGG6WFSRkt$j0wbnlkFhEG+j4C87EVHBFWM+lH5KxmYasDrqJ7RdB0=	\N	f	f7a0ab45-5dd3-4b77-ac75-47c48decaddf	Андрей Прокофьев		f	t	2021-12-14	anprokof@gmail.com	f7a0ab45-5dd3-4b77-ac75-47c48decaddf
1002	pbkdf2_sha256$260000$9HSXYKabsWA4EzHMnMsI7y$ezqjapG8H76NfD+ijgppzb1v8FIHcuWba7XwFWkUBDE=	\N	f	1a6568b0-6e61-429c-9faf-9fb6af0f7c35	Сергей		f	t	2021-12-14	krukk1985@mail.ru	1a6568b0-6e61-429c-9faf-9fb6af0f7c35
1003	pbkdf2_sha256$260000$sQnRdnVJaU2wlb9mukogwj$we/LnPkx7tkSljVsEMqGFwBU5yVdAAhivYUs0TMjNMM=	\N	f	35a2658c-eabb-40b1-8a55-096adcf0c75f	Александр		f	t	2021-12-14	Ckb44.ru@yandex.ru	35a2658c-eabb-40b1-8a55-096adcf0c75f
1004	pbkdf2_sha256$260000$QJ8kIqANmwPPja4XIGPtR5$s1pQqHF0FmCR0gsZatIwV5b4VGJ5RGu4iQZ8PrsJSSQ=	\N	f	b39ea54a-26a3-4395-a7fc-7bb7d774eedf	Виталий		f	t	2021-12-14	ctroikaveka@yandex.ru	b39ea54a-26a3-4395-a7fc-7bb7d774eedf
1005	pbkdf2_sha256$260000$A2HguQOLrBiLQIUvZHY7hX$vC1eAuDufJrI77QVhl1gZrnjuxig9+gJ7IZJsonc7JM=	\N	f	9b907ae7-3a85-49a5-91c5-358d407e50ae	Евгения		f	t	2021-12-14	only.taora@gmail.com	9b907ae7-3a85-49a5-91c5-358d407e50ae
1006	pbkdf2_sha256$260000$FBrydYsGesAaPOCdSMb8yv$ky2cLRzG3QUggxYPhUFyKJ6+qBicW6K9U5QPqoNndaY=	\N	f	7a822591-350d-4461-9170-df2f04951fc3	Гелани		f	t	2021-12-14	gelanikr@mail.ru	7a822591-350d-4461-9170-df2f04951fc3
1007	pbkdf2_sha256$260000$PZvGFuqlCnGH3MSZK3iEdt$CpWCgukWw2vYLq4GsyATAXPmaWpUKWvIDFEOG0w5CsI=	\N	f	9207487b-aafb-42d3-b440-680511382b5f	Андрей		f	t	2021-12-14	base1874@mail.ru	9207487b-aafb-42d3-b440-680511382b5f
1009	pbkdf2_sha256$260000$5T770UVQx7M9PoKvLmToQy$hifEumZWFSnucyqdG/R/hacBxBwB+lZTBVyXR5Pgqao=	\N	f	6e705409-7839-4c5e-a034-9a97e03c04d6	Родион		f	t	2021-12-14	nesterov6969@mail.ru	6e705409-7839-4c5e-a034-9a97e03c04d6
1010	pbkdf2_sha256$260000$g5DsEBsOdBuQSRZ68mwLWS$VxK0CDCnL1dqwC63fTrNzfsGxjnVggm6N9SxbBX7+OM=	\N	f	25dc80ca-d351-440a-8a15-0c80556aa6c4	Борис		f	t	2021-12-14	borism1122@gmail.com	25dc80ca-d351-440a-8a15-0c80556aa6c4
1011	pbkdf2_sha256$260000$1Qbe8gqS5Tb8B2upQ744Vf$mV4eunSZdb8m9eP7ozw7mgnPDXHjjVc+0VJeFmy9Sd0=	\N	f	30e619b4-a0af-4aa9-9173-f38ab5f14360	Андрей		f	t	2021-12-14	fandrei80@yandex.ru	30e619b4-a0af-4aa9-9173-f38ab5f14360
1012	pbkdf2_sha256$260000$tcc0jYR1CaDC4tlmo7kXN8$vZXWhwk6gaglzfNalS0qvrzqsF7ISDO+lNp/0iwxL/A=	\N	f	2c457eac-7d37-4a5b-a220-52d7e6a0e307	Нина		f	t	2021-12-14	ya1998876@yandex.ru	2c457eac-7d37-4a5b-a220-52d7e6a0e307
1013	pbkdf2_sha256$260000$Fi0agq7tP84jLwzDRnpbPH$UDxKkBFbyrf92BjRMTk12lAi+BWvy7Vvkm83WNytxSs=	\N	f	e34fd9fa-5fb0-4786-be75-075541b2bd37	Сергей		f	t	2021-12-14	mr_master_22@mail.ru	e34fd9fa-5fb0-4786-be75-075541b2bd37
1014	pbkdf2_sha256$260000$DSutrdrVwo4kZJGWHsHAle$5+ai30nsXu4HapxRk/yCVRdSvkboK+sb2+ErM2zUQYY=	\N	f	897b67ec-a0de-4691-b466-a7d8ae495eab	Максим		f	t	2021-12-14	maxymtsehelnyk@ukr.net	897b67ec-a0de-4691-b466-a7d8ae495eab
1015	pbkdf2_sha256$260000$dCa4Ja33ZU1WHo5fWyNFCo$GwbkzG998f2XA1i74N9cLXrrQmBdsIUtwZmDkm/953k=	\N	f	85c06642-4757-4c40-9d52-0c5665e2ebc9	Никита		f	t	2021-12-14	nikitakizerov@yandex.ru	85c06642-4757-4c40-9d52-0c5665e2ebc9
1016	pbkdf2_sha256$260000$BrTlQeut1jRRFQbNbGJL3J$ykorA0wMKJ6neQCdFbDv2BBjNTinIMme3f72z+ZiUn8=	\N	f	a2881ecd-1345-4b94-a009-6a0cad4acc62	Ленар		f	t	2021-12-14	lenar_g87@mail.ru	a2881ecd-1345-4b94-a009-6a0cad4acc62
1017	pbkdf2_sha256$260000$weo3XIZJ4iz7mDiqGjC3Qh$4NFZw/r/PBD7TzbKza/tOytfFAHx9Q1aUtepNK9LhZM=	\N	f	f2cc9f8c-18cb-4379-9d7d-e1670fecbe1a	Алессандро Гаетано Населли		f	t	2021-12-14	alessandronaselli29@gmail.com	f2cc9f8c-18cb-4379-9d7d-e1670fecbe1a
1018	pbkdf2_sha256$260000$Ge6wY7QNSnW3pp2EDRmTqA$Sg6iZXEmiLyYqEP5V/AY46ZKA0gtjpF8lNq8VI8pjZA=	\N	f	90ffcc5f-6b74-41e5-bb85-debb7ef821b6	Александр		f	t	2021-12-14	gelios-nk@mail.ru	90ffcc5f-6b74-41e5-bb85-debb7ef821b6
1019	pbkdf2_sha256$260000$U1g1K8TXDx6dyxeBN5Yrba$gTj9+ZAzAKdpt0VQ5FDlY8mbKvEvSJ094FV1jxq7SZE=	\N	f	5d7ed6df-8f1f-4f80-8dd7-e2abd390397e	Марат		f	t	2021-12-14	Marat180192@mail.ru	5d7ed6df-8f1f-4f80-8dd7-e2abd390397e
1020	pbkdf2_sha256$260000$bOnFQJq1xshxnKjZt6fsMp$BTLAqIo6hy2UOI8vgy7AuRxmDPEH75GR40r7Va4X+Qw=	\N	f	621c328d-8a89-4415-9dc3-e7b38102816d	Рита		f	t	2021-12-14	margoshavasileva@mail.ru	621c328d-8a89-4415-9dc3-e7b38102816d
1021	pbkdf2_sha256$260000$vFMixdUQlPad1H5ybwow4p$F76VT50ziHkm4Xjw9TqjQS2U0UUVTdQQdzHaqTIcDh4=	\N	f	267ebc24-3b45-474e-af21-e28c23fb7d44	Станислав		f	t	2021-12-14	kimstass@gmail.com	267ebc24-3b45-474e-af21-e28c23fb7d44
1022	pbkdf2_sha256$260000$bWylYmQd66iyTonksuVox2$PyimemTNm1WDOEgrQL35kWGptIXpprTeDOpGG9CmBvs=	\N	f	5cc85d81-133c-4895-8ae4-2493e3ea491a	Анна		f	t	2021-12-14	sovagav@yandex.ru	5cc85d81-133c-4895-8ae4-2493e3ea491a
1023	pbkdf2_sha256$260000$0Eou0SJw9K2EuvlGYztFjR$oM9VvaJ8FLxNZ8IpuJ5CLSIPo3kJXDN6CI6w+VZW7mQ=	\N	f	3e677955-35ed-426b-b441-9b5d7e9bbc8e	Павел		f	t	2021-12-14	p.tsigankov@mail.ru	3e677955-35ed-426b-b441-9b5d7e9bbc8e
1008	pbkdf2_sha256$260000$YhzkeumEMIB9sD4a9fdOkR$iKE5jQgbYpjSFWKVyTXsOA3hCfK9LElVCMjHdTYY61I=	\N	f	97a590d9-c55a-4507-8bd3-88d04fb0688f	Мария		f	t	2021-12-14	art.maria@bk.ru	97a590d9-c55a-4507-8bd3-88d04fb0688f
1024	pbkdf2_sha256$260000$Sr38z1bgqtnkcDr4ZA6aRi$dRvYzDJrA/6xKBISV7VZbUq79lgSU4Fv6y5Qf12IGPQ=	\N	f	d12d9401-648c-4ef2-a650-08327a4bb8da	Семён		f	t	2021-12-14	gorenburgse@gmail.com	d12d9401-648c-4ef2-a650-08327a4bb8da
1025	pbkdf2_sha256$260000$rqjzNlXJxJsxFxVFVqgPsa$3PgsuHIrmgEm3SM+HFYc7tT0Q3R+ELgJvfIMWHHZuwc=	\N	f	c3208780-b7eb-40c0-9432-27cec79b73c5	Андрей		f	t	2021-12-14	slemgem666@gmail.com	c3208780-b7eb-40c0-9432-27cec79b73c5
1026	pbkdf2_sha256$260000$4Uwh0gFkZvjojs8GsUnn3k$Wxy5SebGb9Vjbya9/0Nz6bgiRrbiSp9m8Jwh3adMjVU=	\N	f	8e0fdb42-05d8-4c2f-bd86-2d78631c78e2	Орхан		f	t	2021-12-14	oa.abdullaev90@mail.ru	8e0fdb42-05d8-4c2f-bd86-2d78631c78e2
1027	pbkdf2_sha256$260000$lrRkNqsvJD3nlEuBrlKw4f$o3FxACrtcKsl2l+9LCOLXlf7v5PYppfXfX3M+YaulHM=	\N	f	69e42d33-f76f-4d80-929a-1a043230e5cf	Юра		f	t	2021-12-14	lyuran777@mail.ru	69e42d33-f76f-4d80-929a-1a043230e5cf
1028	pbkdf2_sha256$260000$olLCnp3FUIrBwo7Fv0qlsO$mR/8e9G3Zb+mQhe3+Yzkw/gBiDga3ZWNlF2XUU7m60k=	\N	f	982cdcb9-f0cb-49c3-b76d-8740db66c9ec	A.999.G		f	t	2021-12-14	aurum.999.group@gmail.com	982cdcb9-f0cb-49c3-b76d-8740db66c9ec
1029	pbkdf2_sha256$260000$x0mgNUhUS2Vc89JaFd0gRd$BOAzu7BMF4BmsaRTtvpOwBKo89g24cmrYSEaf7sOtrY=	\N	f	a300464a-8767-4f84-914e-b578a0bdc9a2	Симонов Александр		f	t	2021-12-14	alsim2@live.com	a300464a-8767-4f84-914e-b578a0bdc9a2
1030	pbkdf2_sha256$260000$f9lpQLGhEXPSqBCWnaxnRU$ZQH69dHPyOEpLthmIravW5o/RDAuYYHbXTznA//TVm8=	\N	f	68cb05d9-2bc4-4134-a368-042ccb2c5d01	Максим		f	t	2021-12-14	maxim2070@yandex.ru	68cb05d9-2bc4-4134-a368-042ccb2c5d01
1031	pbkdf2_sha256$260000$ZGaeE0EfUmF7WbRNKApIov$8tHs3e31kzALylw9tFr6M6yU2vQM2M/sy7Mo+yjv9R4=	\N	f	f51052bd-933f-4938-b2d3-bc0a062731fe	Сергей		f	t	2021-12-14	sergrussia@mail.ru	f51052bd-933f-4938-b2d3-bc0a062731fe
1032	pbkdf2_sha256$260000$Y7EJo8pZvd9pBhSP17M0br$aJcNNPLm6d20ol1k1BQuhuhJx//EaELfjjggzZdgtXI=	\N	f	ff04d9fe-8bb5-43d3-a30f-a377e71bf439	Егор		f	t	2021-12-14	ferrar@yandex.ru	ff04d9fe-8bb5-43d3-a30f-a377e71bf439
1033	pbkdf2_sha256$260000$lZHbkksaATjwISXnrnKq3A$ACVIICzKPkER4hfgmFBSUw5ya0T3B6sVu7PCOsyU1Vg=	\N	f	f5a3ad03-890d-4fa6-8220-6497f8c3493b	Алёна		f	t	2021-12-14	laav70@mail.ru	f5a3ad03-890d-4fa6-8220-6497f8c3493b
1034	pbkdf2_sha256$260000$Hwgieo2JcXkVDewsRhWxvi$dJhkz+7SjX8QTcDDSaL1EvC4NnFtqB5HCgR8WgviMX8=	\N	f	e4c5d082-e3a2-4318-bc9e-781c8a1919aa	Иван		f	t	2021-12-14	ivaiash@yahoo.com	e4c5d082-e3a2-4318-bc9e-781c8a1919aa
1035	pbkdf2_sha256$260000$FhMlz3uctJmZooV6GWzguI$XlhaZu4VFeS+Pob/tiyinfd8I3R8DX+KlaLkLjEYpZ8=	\N	f	681b5854-469b-482d-9138-d9b186e3d6ce	Богдан		f	t	2021-12-14	bohdansidorenko@gmail.com	681b5854-469b-482d-9138-d9b186e3d6ce
1036	pbkdf2_sha256$260000$tJAHp027H8a9DlbQ2GXT9X$pC5w79koBKd6CfN2VQU7Of5W3FZwlprE0kPPyjXcjaM=	\N	f	3fdfc771-c5a3-4fed-ba81-0b96034d1ef4	Костя Лебедев		f	t	2021-12-14	lebedevkostja@gmail.com	3fdfc771-c5a3-4fed-ba81-0b96034d1ef4
1037	pbkdf2_sha256$260000$Lxft53Of08dc4KWmMIl1Rj$QQu+btNoO79RK8oVD8JzxtcX4bcJlxjIsLlFwe3Gy0o=	\N	f	df881568-4e05-4aab-8d28-a7bc9f2800e7	Иван		f	t	2021-12-14	79021629015@mail.ru	df881568-4e05-4aab-8d28-a7bc9f2800e7
1038	pbkdf2_sha256$260000$0jjIgYBj2DFumnKPoM0Vql$MaEDOghW2EUUukqYvLnGFr5mJp28REhtr4cRnJ5T2mQ=	\N	f	6cfc456a-f85c-4b2d-a852-5e18884541e6	Станислав		f	t	2021-12-14	smagera@inbox.ru	6cfc456a-f85c-4b2d-a852-5e18884541e6
1039	pbkdf2_sha256$260000$utm9mqI4PW6qXwyQHUEE83$DNB6t+i98HZPzUAu/SlbRcDPB3a95aIMNVkK9s26mJU=	\N	f	d7e355de-c543-4ede-9ea1-a4749b0b0273	Никита		f	t	2021-12-14	zuzinnikita@mail.ru	d7e355de-c543-4ede-9ea1-a4749b0b0273
1040	pbkdf2_sha256$260000$RFZbAtAQuVf2CAWk9uB1hG$JtOO5YSXVikpoh6OoZ3cke88hLKyYUYekDdROE6VgMU=	\N	f	38575d18-8110-4dcd-986b-7184e0455af4	Анатолий		f	t	2021-12-14	anatolii_iv@bk.ru	38575d18-8110-4dcd-986b-7184e0455af4
1041	pbkdf2_sha256$260000$n1Zw0GlahyLXQz1HlSAGK5$68HnkA44e7FFVA2cli1kh2+OYFgQokmggtS0u/J+tgQ=	\N	f	26b3fb18-67e0-42b6-bdfc-8f24eb79d000	Владимир		f	t	2021-12-14	dolgikh_2080@mail.ru	26b3fb18-67e0-42b6-bdfc-8f24eb79d000
1042	pbkdf2_sha256$260000$l5zdTM1S4b4ekovR6EPl40$X92Al4sNPNFgov/p91zEy/ilBY8VeG2IS55/01qwku4=	\N	f	0c08827d-11fa-40e7-9b2b-4e2edc893986	Петр		f	t	2021-12-14	Rutep@mail.ru	0c08827d-11fa-40e7-9b2b-4e2edc893986
1043	pbkdf2_sha256$260000$prVkoXi7fUJJ3nlZPq2nGx$WRrj2IeCQEFiy003HPQE8OsktvMvZXmoKTJyCfBPb9k=	\N	f	9b1527f4-fd03-469e-951a-3c3cc44b464e	Максим Евсевьев		f	t	2021-12-14	mark.filatov08@yandex.ru	9b1527f4-fd03-469e-951a-3c3cc44b464e
1044	pbkdf2_sha256$260000$wnZg8ikZhDYKyZJ4Fa6sWY$FC9PN8rt7R46nngAKhnMHwOfR4I7VnQ5KWtL/oJrpgo=	\N	f	a0a3e4f0-7052-43b4-9f97-70a6dc0aa67e	Мухамеджан		f	t	2021-12-14	dossayevmn@gmail.com	a0a3e4f0-7052-43b4-9f97-70a6dc0aa67e
1045	pbkdf2_sha256$260000$gtP9n9wX5eNqFfTq7pKNLU$PRNwRV5DrZew4YCXzsWesoWxjlt4Sc/c6xrKgAuhuA0=	\N	f	a62662bc-0bf2-4994-bf8b-84b2b62f0d5f	Руслан		f	t	2021-12-14	ruslan_lma@mail.ru	a62662bc-0bf2-4994-bf8b-84b2b62f0d5f
1046	pbkdf2_sha256$260000$D6Cw3uUgv6ftHSx0lyh1ko$gzmbzj/1Z74jE2d1iGJQvfaiWbAmsOoHUthkoThZb9M=	\N	f	a7b7f080-d03e-4c87-8060-a7c8764e1f54	Александр		f	t	2021-12-14	yeliz33@gmail.com	a7b7f080-d03e-4c87-8060-a7c8764e1f54
1047	pbkdf2_sha256$260000$gtx9Mfv4imVusyP3zsPYvm$GgHL9ItG6fwgvt9qy14iuRI0f6AUCIMqXmVY4AU5oSg=	\N	f	24844645-0af5-459d-ae03-4dc8ac81e1ef	Александр		f	t	2021-12-14	santei1383@mail.ru	24844645-0af5-459d-ae03-4dc8ac81e1ef
1048	pbkdf2_sha256$260000$4AlO8ggR3ZXKR6jotsyKPZ$51sscSjr2gQr63336qPDR3N7hBYt6ngu9XeSTLkt9Lg=	\N	f	93315e1a-8ccb-431b-875a-ce73c883ad59	Сергей		f	t	2021-12-14	senia077@yandex.ru	93315e1a-8ccb-431b-875a-ce73c883ad59
1049	pbkdf2_sha256$260000$IvCkfyHyuYAW6kNzcuUJJ6$5eaLP7zh+N1T38Vokohj6nAdOKt6BasUm9qHDXez7so=	\N	f	164c82df-79f1-42db-be41-8b4bebffe7bd	Алексей		f	t	2021-12-14	samarakovskij1996@yandex.ru	164c82df-79f1-42db-be41-8b4bebffe7bd
1050	pbkdf2_sha256$260000$82UKU2ju1Ta3OQsUnuoOhV$ksz0XP0lBZlgRqblFLcKqV40lpNlfMKrsUeEtXnEykQ=	\N	f	b7a787da-4814-4f01-9162-0f2ef96ff85c	Олег		f	t	2021-12-14	oleg.kochakov@mail.ru	b7a787da-4814-4f01-9162-0f2ef96ff85c
1051	pbkdf2_sha256$260000$2YF2Y5Dsgceytzp9WisXCC$jypGZwTgMMtN7JCECFjIrr9ICIV+38hXNlazZCPZgNU=	\N	f	a0bc2046-48c6-4770-b104-d69dc5b3e4bb	Максим		f	t	2021-12-14	fedchenkomax93@gmail.com	a0bc2046-48c6-4770-b104-d69dc5b3e4bb
1052	pbkdf2_sha256$260000$J8darXIxoDtKnPdLyYW792$Z6/X/nlOqmmyO8gUSMD5LqkpY3Sd8qWqtT18YMN7EUY=	\N	f	05bd3074-eae7-4874-9b54-8eb51fb57af8	Артём		f	t	2021-12-14	shadl_96@mail.ru	05bd3074-eae7-4874-9b54-8eb51fb57af8
1053	pbkdf2_sha256$260000$jx1maoIuHBhpJ9LtGSFMQ7$LaL6n9DINrdvfyMJ+6VK+x2/ioQhJpl8hQv4YSL+i1s=	\N	f	b5fe1d62-f72a-4aa4-ba60-d57cfd9057b3	Ильшат		f	t	2021-12-14	mir1984_13@mail.ru	b5fe1d62-f72a-4aa4-ba60-d57cfd9057b3
1054	pbkdf2_sha256$260000$OGhs6ApuC7sQ9j5ZvEvKsr$pjR3Kt/cI9ok8cuank8ilcZ1uygcFcsGTBUaoGMYlbs=	\N	f	6ed6d75d-9ff0-47d3-88e9-9e26420954e1	Владимир		f	t	2021-12-14	bekoev83@gmail.com	6ed6d75d-9ff0-47d3-88e9-9e26420954e1
1055	pbkdf2_sha256$260000$wmXZgezL1NCQjaSFAhSYuv$VByoI3dLdHA1aX8tPt+KGTU2ASR8FVIYMGECSJiKtLc=	\N	f	0d26c79d-e93c-4886-a6d6-1eebf1f38bd8	Тимур		f	t	2021-12-14	timyr.sharipov@gmail.com	0d26c79d-e93c-4886-a6d6-1eebf1f38bd8
1056	pbkdf2_sha256$260000$ArqzrCB3gwp8HHmfm3rp62$z5pY4OGqylEcRyY5U0D3c73uCuiAonoPw0oTZOvzoWg=	\N	f	def1e1bd-2da6-48fd-acf4-a1d738b906a0	Сергей		f	t	2021-12-14	morozov7778777@gmail.com	def1e1bd-2da6-48fd-acf4-a1d738b906a0
1057	pbkdf2_sha256$260000$x0FdCduD7fA7LEwL9UPxb9$hTjVX1o1+kVdAKNmhWCLbUApqZuS+vi/Uh8c6QtGdEA=	\N	f	3f1e3e52-710d-447d-847c-7b79867b401b	Лариса		f	t	2021-12-14	larisa-u@mail.ru	3f1e3e52-710d-447d-847c-7b79867b401b
1058	pbkdf2_sha256$260000$wFU8RVh8h5T5JL2xl786ww$edVKSNt8JzwcCGWS79kslQMsBIeRpGd49p6+KJv9cXM=	\N	f	f9d9b548-c2ee-4db1-839e-2a30e64d96e1	Николай		f	t	2021-12-14	tisovnikolaj@gmail.com	f9d9b548-c2ee-4db1-839e-2a30e64d96e1
1059	pbkdf2_sha256$260000$kJChrKncnkPq7TaqnuKOSf$fq6RJPVhTy/z9QnIQW3qQzPVjxzKbzHeZCYj2obgkGE=	\N	f	c335bea5-a5c4-4065-807b-b35e03e11579	Андрей		f	t	2021-12-14	and.bars@gmail.com	c335bea5-a5c4-4065-807b-b35e03e11579
1060	pbkdf2_sha256$260000$vQenkyJAbRU6KVu8Tdvb8x$6NZLiHnL+69ZZMp8aKKoB5wgDp1ZEUY50EQdaHCsfXo=	\N	f	29fbf702-127a-42ac-9981-9fb460f8495d	Александр		f	t	2021-12-14	www.alex-sheglov@yandex.ru	29fbf702-127a-42ac-9981-9fb460f8495d
1061	pbkdf2_sha256$260000$4Uct3MEYDg93WW2IGvol8d$uXgs6iPiVHxVwYV+hi0ChDvBhn3o8yCHBtmj49C1CbI=	\N	f	b31421f8-23bf-4d43-b1af-3a2da8192d06	Евгений		f	t	2021-12-14	uekbrtdutybqdkflbvbhjdbx@yandex.ru	b31421f8-23bf-4d43-b1af-3a2da8192d06
1062	pbkdf2_sha256$260000$cOG1YIsitiHh79jDdGK3k5$W67Kjbzhyyd3UBdWyxK9ybQaKVDFnxvLST5/AXzJMKw=	\N	f	047b3f00-831f-4651-9117-a12423f73087	Андрей		f	t	2021-12-14	Cvetok5@mail.ru	047b3f00-831f-4651-9117-a12423f73087
1064	pbkdf2_sha256$260000$USKl4h4vXIUQsiHk1VJhBH$1WBbIdNC5po1VNm+28FWW+jIQ+/yx8ORu2A67DfuQZw=	\N	f	8e439d12-2c5b-4c65-9567-d70408a8d9f5	Денис		f	t	2021-12-14	dmmakarevich@mail.ru	8e439d12-2c5b-4c65-9567-d70408a8d9f5
1065	pbkdf2_sha256$260000$54uuYZorBYegeVg7TJbtuh$F+5ECicnQZDU5u0QL/xXdTPgQvZ4jOcOjubHkrVX1ao=	\N	f	79dd126e-7955-4b2e-8d66-cc2667cb805b	Никита		f	t	2021-12-14	chonjenkins@gmail.com	79dd126e-7955-4b2e-8d66-cc2667cb805b
1066	pbkdf2_sha256$260000$0Vy0nQZ1vlCFFXUKTKirH6$bTSbPJuF/xZPA/WdgDIoKhiXcvt2HXB5dAu04z+tR+U=	\N	f	0f8cb9d5-040f-4e79-abba-aa015284b414	Алексей		f	t	2021-12-14	tim_a_g@mail.ru	0f8cb9d5-040f-4e79-abba-aa015284b414
1067	pbkdf2_sha256$260000$C8M53dY6z4sVeMIxntG9sC$/8/yLKY1TKbt2meBB/u9SFdJPVOz5iWbHCNC8IhMXeE=	\N	f	8843296a-58b7-4f22-9d31-b7d216dab07e	Михаил		f	t	2021-12-14	mih.net@ya.ru	8843296a-58b7-4f22-9d31-b7d216dab07e
1068	pbkdf2_sha256$260000$z7ZSA7gdmlOjbMZ9hTrWCt$YUqbBy/JHUcP/jf4LLW2MQghcI92y8/4S4sMxY5EkRk=	\N	f	d52dde84-7c85-49ad-b741-dacba81aa7e6	Дмитрий		f	t	2021-12-14	vozorom1977@yandex.ru	d52dde84-7c85-49ad-b741-dacba81aa7e6
1069	pbkdf2_sha256$260000$4UU29mZx72b7KkCGbBhfj3$iichW7FVHjGfgtBQhhDyFUg815Bmaw6YnJvgzJHUWs0=	\N	f	e03803d0-6cd2-4cdb-96bb-4ee757a357f2	Николай		f	t	2021-12-14	urov.nv@gmail.com	e03803d0-6cd2-4cdb-96bb-4ee757a357f2
1070	pbkdf2_sha256$260000$Gzf6Nxtky0N6f9mcEWA6sk$7IGn6BLVzQ3RrlbspTGWM5ZQ9a4f6EpPDuiwwIbfeKU=	\N	f	a5eb4cc0-3ee0-49dc-a8b2-2411af0add7a	Сергей		f	t	2021-12-14	vsv262@gmail.com	a5eb4cc0-3ee0-49dc-a8b2-2411af0add7a
1071	pbkdf2_sha256$260000$KEM0EHyx1zKBVaLIza6cb0$VWyimISMitEsuMRicV7TGPwUW/9MQV/dHEZpN5YGsos=	\N	f	6ef7f59c-2d4e-4cec-a098-87486e05d57f	Павел		f	t	2021-12-14	pavlov_pa@bk.ru	6ef7f59c-2d4e-4cec-a098-87486e05d57f
1072	pbkdf2_sha256$260000$efYra8aSr9LypnkmIwlrK2$byVCIde7fVP/yfBI1kOhX9kaCXg79datna1bjpgRMwE=	\N	f	3166e84e-403d-4d83-b472-69226df1529f	Матвей		f	t	2021-12-14	matwey228@gmail.com	3166e84e-403d-4d83-b472-69226df1529f
1073	pbkdf2_sha256$260000$secPxWA4YQtzLlaiMAqhvm$a8VaWvi1sZxS2p5tV8JDHJt2i7kN7bXpQfXF5rdk6Zw=	\N	f	ff6404e1-3528-43dd-8dda-984f265856bc	Сергей		f	t	2021-12-14	semenov-s@list.ru	ff6404e1-3528-43dd-8dda-984f265856bc
1074	pbkdf2_sha256$260000$xCJNnFa9IhPYb04HCroqhT$B87BZp3f47FOGgKZD+od9Jx5HWpdu8s3QLrqc2xVmW0=	\N	f	58f54bd7-f40f-4dd6-bf03-97ece1bea596	Роман		f	t	2021-12-14	bush041001@gmail.com	58f54bd7-f40f-4dd6-bf03-97ece1bea596
1075	pbkdf2_sha256$260000$pFtz3mp9NWBz8Cs3BlpZta$0rCK0MGnpi92DWbatGtGcfe7FUqRogHoqspev8S3PpY=	\N	f	390fa6ff-2a98-450c-8773-a77ea624b692	Глеб		f	t	2021-12-14	lomov000@yandex.ru	390fa6ff-2a98-450c-8773-a77ea624b692
1076	pbkdf2_sha256$260000$pfGL4j4bw2aGcLcGopdTuB$cvxR0GuueQQzu801pxeFhkBxdQnF0zlJH3KbK4w5hLk=	\N	f	b8ce01c0-daf3-4a8a-bee6-2df38ae20d5d	Андрей		f	t	2021-12-14	kfh-shiryaeva@yandex.ru	b8ce01c0-daf3-4a8a-bee6-2df38ae20d5d
1077	pbkdf2_sha256$260000$WqR0LkVAAzS7uo0AIp9zfo$Z0riX9ekN74L/MqJULZwvRbXGojT/07KHFNGYc7fikk=	\N	f	08c72594-377a-4642-8d4b-34224fa2ecdf	Данис		f	t	2021-12-14	reason2205@yandex.ru	08c72594-377a-4642-8d4b-34224fa2ecdf
1078	pbkdf2_sha256$260000$slXTfcZxUXVTJ4DBeAv0HE$qbMjliOaaXuOJBcFFBUM42U6nZjz8vGPNiNeNbTv4H0=	\N	f	d2ebaa0d-141f-4fad-b900-457a12c7419c	Джамбулат		f	t	2021-12-14	aleroev511@gmail.com	d2ebaa0d-141f-4fad-b900-457a12c7419c
1079	pbkdf2_sha256$260000$91qz007jJ94RGUAQYFx2lz$Nwpl+VPnQUQp9/zeFqlS0NCqRqPIP2KZUenmEx6G+/M=	\N	f	03b8f9b6-4b79-44e8-899f-92da462007ee	Олег		f	t	2021-12-14	oleg74294@gmail.com	03b8f9b6-4b79-44e8-899f-92da462007ee
1080	pbkdf2_sha256$260000$I4yjCto6jENFad0kj1H0XW$zhZapJtDqoh0ABxWTry3kFUt7nBW20kPYcsxeeRLDn0=	\N	f	79344d69-b153-49c6-8894-f149768205a9	Динара		f	t	2021-12-14	mannanova87@inbox.ru	79344d69-b153-49c6-8894-f149768205a9
1081	pbkdf2_sha256$260000$Nt4pGhvJ9v1igIrRhCSLGr$DWmwqMAOrZjMZWyXPgAlBUxZ7ylhzO7I4oFGH3WNue4=	\N	f	d6926d58-a42f-4bea-a56d-f6b75200bbcb	Залина		f	t	2021-12-14	izis2006@rambler.ru	d6926d58-a42f-4bea-a56d-f6b75200bbcb
1082	pbkdf2_sha256$260000$azi5KEvQMiDM0cp8MGTf3K$zkxGi42HRRr+gMcOsLBjzsAbZ54Ge488/kOUA+DzrdQ=	\N	f	c3c41ff4-3153-49df-9c5c-70870e8d0589	Дмитрий		f	t	2021-12-14	dmitrii80_06@mail.ru	c3c41ff4-3153-49df-9c5c-70870e8d0589
1083	pbkdf2_sha256$260000$LuDkp6S1DSiySIrRR8VgH4$xutNWfgcB+Sm36uQJ7vWxCFKmNnBqTTzQ/EkKdHIZK8=	\N	f	a032d678-d39a-47d3-900d-d2e274fdb649	Степан		f	t	2021-12-14	kychmiy-stepan@rambler.ru	a032d678-d39a-47d3-900d-d2e274fdb649
1063	pbkdf2_sha256$260000$9CKzbpM2KR6Opk8fNqCptT$WuLjK/CSQyol8IzCa1KQg1NT/vesGTTta5cFJr7zqa8=	\N	f	2a13f664-7518-47e4-bdf4-acaf42025138	Андрей		f	t	2021-12-14	ankl-borovoe76@inbox.ru	2a13f664-7518-47e4-bdf4-acaf42025138
1084	pbkdf2_sha256$260000$4bO8rL5W7WLXQ14FpKqed2$KKItywIjZTN73guQQHlH5s3lkS4jvnmJBUZXAYCY+bI=	\N	f	fae6993d-3cb2-46fd-bb05-db726c463df5	Аркадий		f	t	2021-12-14	arkada101@yandex.ru	fae6993d-3cb2-46fd-bb05-db726c463df5
1085	pbkdf2_sha256$260000$YSa2KBk7mkZz4sq2aJoCLY$jkJDCnFjXGfonj47Jm50H2niKrpYQ0/j1FFs6Vey+6Y=	\N	f	19a41841-3fb5-434b-93a4-489cabadd26a	Дмитрий		f	t	2021-12-14	zinageking@gmail.com	19a41841-3fb5-434b-93a4-489cabadd26a
1086	pbkdf2_sha256$260000$wPmokp5KnsBJINfUYLRaGA$GzIX9AABh9MaGsVkmBfRK6h6ipCVAABoapuXGF9wLz8=	\N	f	ceac9c3f-9b85-411f-b156-ac34bbbee825	Алексей		f	t	2021-12-14	a.naymoff@gmail.com	ceac9c3f-9b85-411f-b156-ac34bbbee825
1087	pbkdf2_sha256$260000$aavMZo1LPANrPiyTd3o7lA$c76V3I2BzzZdz0PwWr/dI0cicIAf99nzfbrgUfM9Jgc=	\N	f	6c07c6a2-0353-4cf3-b81a-9b67f649a79d	Юлия		f	t	2021-12-14	vlasovayu7790@gmail.com	6c07c6a2-0353-4cf3-b81a-9b67f649a79d
1088	pbkdf2_sha256$260000$CU3QVASKRIwQ6irCDwDuxs$lGoul3Xt4FuEzivDF2j0iFM3ViRamTmH5RkOlIJixhQ=	\N	f	2ec7c5dd-16c7-42bb-9af1-95034b09bab7	Олег		f	t	2021-12-14	9727732@mail.ru	2ec7c5dd-16c7-42bb-9af1-95034b09bab7
1089	pbkdf2_sha256$260000$muX6Pvrng6KOzb4MisCUlv$hkxjjHlXy9X2BHZ87zX0ZRP1KmPRSUf45lFxNODJ+Ug=	\N	f	59245cb5-86b0-48f3-841c-5bb6aa8ec6fa	Михаил		f	t	2021-12-14	lokomotiv93@inbox.ru	59245cb5-86b0-48f3-841c-5bb6aa8ec6fa
1090	pbkdf2_sha256$260000$oZVFOUjSnQe70f7TGbriCm$Q2AivIZJvcLEwS3n2FJ9akkYJ2jOI1mS1NycB3qjCpI=	\N	f	416a0a03-bffe-4742-9abb-1d94dd7dc6e0	Юля		f	t	2021-12-14	julialeegore@ukr.net	416a0a03-bffe-4742-9abb-1d94dd7dc6e0
1091	pbkdf2_sha256$260000$mWouz0qCkERqOBSApT7QUt$Wst5qpmkkkXXeq+9qfFeuYuF7W65f4+YASX25rwBak8=	\N	f	89cd72c1-0a1e-4029-8c07-cd8ad3d0ffa9	Анна		f	t	2021-12-14	sponch_bob@inbox.ru	89cd72c1-0a1e-4029-8c07-cd8ad3d0ffa9
1092	pbkdf2_sha256$260000$wfQEHE2spE2ioe3LExWciG$qHM3fRB1v3pJinf9fBHC0R207W6VcFdO611riXiMGcM=	\N	f	d717047f-719b-4fee-b366-010e07a9601e	Серик		f	t	2021-12-14	serik.alekulov@gmail.com	d717047f-719b-4fee-b366-010e07a9601e
1093	pbkdf2_sha256$260000$aAIQNJyQk39eOwhwvZTbfW$smTTTlMVDHJaWQ1ZxmmvM/zcCPFBkgjtVqth6YK7ApQ=	\N	f	0e00a549-d0b7-4303-a590-5d9b6ef40ff6	Александр		f	t	2021-12-14	Shura.bychkov.95.95@mail.ru	0e00a549-d0b7-4303-a590-5d9b6ef40ff6
1094	pbkdf2_sha256$260000$nTeKA6EHqt0tUg3AOcA2ny$SzHyCMH4dCEA/mUmu7Ne+Z8clDjPAAMBnpxC/0PjQDk=	\N	f	8cb75bd7-10ea-4b30-bea7-b5186f6e8c97	Мурат		f	t	2021-12-14	Dugur1@mail.ru	8cb75bd7-10ea-4b30-bea7-b5186f6e8c97
1095	pbkdf2_sha256$260000$p4ZdPLLwAMhb6oUg1Xu71Y$mLbwTmeTKbx/G/5Wc8q9fUAWj6qrK/NPFpj61R8lDS8=	\N	f	c4ce1445-2123-4765-9640-25858b35205f	Антон		f	t	2021-12-14	aylarionov@yandex.ru	c4ce1445-2123-4765-9640-25858b35205f
1096	pbkdf2_sha256$260000$F67CFyLdvr0J4emlyvK1Fp$QhMtHwYhieVobYCJvuCRJr8uhOBTNfM8VaxmcllhAbE=	\N	f	09802e7e-6552-4db5-8c6e-a6f2e954b708	Шамиль		f	t	2021-12-14	shamilk5305@gmail.com	09802e7e-6552-4db5-8c6e-a6f2e954b708
1097	pbkdf2_sha256$260000$IehnMtUL3roup01JpJ8MPA$ESjvj28q9TgvAmIq+vORkaFLuikAd+y/zFWpHJeCrp8=	\N	f	2253b6a0-792b-489a-acbf-b9f28fb93f30	Сергей		f	t	2021-12-14	saynex@mail.ru	2253b6a0-792b-489a-acbf-b9f28fb93f30
1098	pbkdf2_sha256$260000$Ok7mzCnd3MnbyskBgMVdic$RquJz7Cd/GOva2ZJa8iYhYZkzDHleQdhl7J9nAyWSUQ=	\N	f	1f7bce03-d020-4665-bf0c-c7205b6cfcf1	Олеся		f	t	2021-12-14	olessya-olessya@mail.ru	1f7bce03-d020-4665-bf0c-c7205b6cfcf1
1099	pbkdf2_sha256$260000$eMZf4UiYBtxI1F8HEnID6c$ApoMKJR6bmv5SAZFEsP4yDlpKDtTSuhneRZIjJFJXNA=	\N	f	02176813-f27a-4aa9-ab1c-0f27f24af497	Константин		f	t	2021-12-14	kostyadanilov2@gmail.com	02176813-f27a-4aa9-ab1c-0f27f24af497
1100	pbkdf2_sha256$260000$OwIb470JYqMs2sA27oRyag$rQ47Eotlr/CeJg3W1yC+5LVXvI9OF5teT5K24AVRp8U=	\N	f	f0aed360-63fc-4d67-bcca-12f43efa9b89	Дмитрий		f	t	2021-12-14	dcupa@yandex.ru	f0aed360-63fc-4d67-bcca-12f43efa9b89
1101	pbkdf2_sha256$260000$hhaGacvLZzaLaio14Cyvmk$fbb8RnnJ3FzHzqdjR3mukdwwTlhUEsSJL8UYYIcbElA=	\N	f	65dfc5e1-610c-4a84-806d-de868fdb4018	Адель Муллагалиева		f	t	2021-12-14	mullagaliev@mail.ru	65dfc5e1-610c-4a84-806d-de868fdb4018
1102	pbkdf2_sha256$260000$lmJ7gbuTwHLqdSttKbPKVl$j5/zuzey5pLGcMrLfpHEkIIv7jm/Rp9kx/ywP0Hj67w=	\N	f	3b1d7e23-6c86-4b47-b737-9ce20568b31b	Илья		f	t	2021-12-14	ilia.plast@ya.ru	3b1d7e23-6c86-4b47-b737-9ce20568b31b
1103	pbkdf2_sha256$260000$VzpnyBYQy4W0293yC55Nrl$cxudtcji4sMUIRvt86ikoSBUNDsyEn7KxUkDd2h0x2U=	\N	f	0039743a-3562-4240-80e8-9ea16ea5ad46	Evgenii		f	t	2021-12-14	elitegroupp@yandex.ru	0039743a-3562-4240-80e8-9ea16ea5ad46
1104	pbkdf2_sha256$260000$bcWJd7qiCDGRmvJjvA5DTD$cXjmig42TdHLkwpRRZUlg3yLG6B7eYLjahMrdicPUEc=	\N	f	0934212d-0d47-4b32-85ea-8481d6a93062	Андрей		f	t	2021-12-14	conjore@gmail.com	0934212d-0d47-4b32-85ea-8481d6a93062
1105	pbkdf2_sha256$260000$RBN0rTOudWqvUO88uSHzwY$xdGDDFgoJfSgkg7B3fNtjHXXyse9LlcLwWuk4kT2KbU=	\N	f	c09d1914-e0d7-4ace-baad-b5c55e545c29	Юлия		f	t	2021-12-14	bashtanova@gmail.com	c09d1914-e0d7-4ace-baad-b5c55e545c29
1106	pbkdf2_sha256$260000$R6STPqV9WUYolg4IQMM6lT$5PFq/4KV3sRP71Zpm5aLnn8TNhAPjvgYmtmBc2jABio=	\N	f	70d0da0a-8a81-4e5b-8c2e-5606362667f5	Константин		f	t	2021-12-14	Konstantinov.k-87@yandex.ru	70d0da0a-8a81-4e5b-8c2e-5606362667f5
1107	pbkdf2_sha256$260000$owEfedAWzSny52kAeBKFll$4TiFpA6m9wP0BzB4uSAMSJZM5FvPHLqjkPEyUpE6S8o=	\N	f	3cd3a579-078c-4813-8797-f9e6c6aa36b7	Людмила		f	t	2021-12-14	lyudmila.slepche@mail.ru	3cd3a579-078c-4813-8797-f9e6c6aa36b7
1108	pbkdf2_sha256$260000$clBR1L2e9FA2QT0miPlAYX$PY+TIevmJjA9Xzsu/23tmIMbFglWnYrb3SrybCsFtJU=	\N	f	0e86c2ca-850b-4636-a10b-46a81f6b593e	Тенгиз		f	t	2021-12-14	amoevtengiz68@gmail.com	0e86c2ca-850b-4636-a10b-46a81f6b593e
1109	pbkdf2_sha256$260000$YvGoIhJyzeJTyKYuPzUHYl$dgJmombrpaj6wAP43T2EBOvE/7MtZzIZ6Zcn9QJp5/k=	\N	f	db75f354-c299-43f5-9d47-a713f67ac9ce	Константин		f	t	2021-12-14	stan.spb@mail.ru	db75f354-c299-43f5-9d47-a713f67ac9ce
1110	pbkdf2_sha256$260000$P8lnlB9Nx2WsgXckIAW3MW$A7t+D7HUJvvKCRu2I/UwEVCaFCarot8nlj88VmOFzFM=	\N	f	96b4c7f5-788b-4158-86d4-5a927d3b38f2	Андрей		f	t	2021-12-14	anechaevsar@gmail.com	96b4c7f5-788b-4158-86d4-5a927d3b38f2
1111	pbkdf2_sha256$260000$aKjArOcZuX4DAuLeKQWxDZ$U3TWB4i6D+D5EyemmrkYmBW3JqnZEAxwJIIbfhlV/BI=	\N	f	9f8e1360-4be5-43a1-aba5-2563de138d13	Светлана		f	t	2021-12-14	svetlana.kaminskaya@gmail.com	9f8e1360-4be5-43a1-aba5-2563de138d13
1112	pbkdf2_sha256$260000$pzG8bNJxOVWoppN5nEAUO7$SZzIi2eSvn0Pu4xQ9JFrjBD2EbfcV54hYXGi0W4dBr4=	\N	f	aa3e8aa7-753e-43cf-b553-6ebcf4ad5b43	Рустам		f	t	2021-12-14	rustam.galimov.91@mail.ru	aa3e8aa7-753e-43cf-b553-6ebcf4ad5b43
1113	pbkdf2_sha256$260000$fRCxTdLgmLSwSYP03lfcl4$TE5wpd92upIHx8/rbAbIjS7UvwSvSpwOHQANGB5FIRU=	\N	f	c0619639-0337-42f5-8fcf-62dbc028c5e3	Роман		f	t	2021-12-14	roman.zhabin.86@mail.ru	c0619639-0337-42f5-8fcf-62dbc028c5e3
1114	pbkdf2_sha256$260000$0l6KW9ZWdxfnEFNNHVTlWK$lh6jR6PhKzfz0ttkJngNW44/xj6Gf6/K56HcPt63ANk=	\N	f	c245f98f-ae43-4c68-9004-663f06e04f50	Дмитрий		f	t	2021-12-14	svdr71@mail.ru	c245f98f-ae43-4c68-9004-663f06e04f50
1115	pbkdf2_sha256$260000$fyouPPvtXR7z3BuHgFpyVz$3tzGVDN6e/SAw40seRIfNJyMdhWRZGbPvd8oC3STWj0=	\N	f	019ffe89-0b67-409c-ab7d-825ffb44516f	Михаил		f	t	2021-12-14	mik-glazov@mail.ru	019ffe89-0b67-409c-ab7d-825ffb44516f
1116	pbkdf2_sha256$260000$yy3ZzKFcR0X2ZC4MTEmm1P$7oAVf/gMQmBwhAM0EL2oDL0adLG03PDYR53fVOJkPSQ=	\N	f	3c82c830-ebc2-480d-a450-01f8db39409e	Иван		f	t	2021-12-14	szfpk_vch8@mail.ru	3c82c830-ebc2-480d-a450-01f8db39409e
1117	pbkdf2_sha256$260000$KH9HMkYGNDqTDXfXCtyQbg$3nTYqb05YaSgQryd0W9tX7y4QJ16+acIWNDQ3WZmWRo=	\N	f	aafac39d-0d26-4889-af57-328485cedefe	Вадим		f	t	2021-12-14	vadim.v.p@bk.ru	aafac39d-0d26-4889-af57-328485cedefe
1118	pbkdf2_sha256$260000$sxYSrercqOYR0YhWi4YEkZ$NvVgSiRSWePJbiSLyt/g6ybMwZt62QdqwqyAibbzmlA=	\N	f	86f8464a-d009-40b0-b91c-d2aafeb12259	Сергей		f	t	2021-12-14	9833371@gmail.com	86f8464a-d009-40b0-b91c-d2aafeb12259
1119	pbkdf2_sha256$260000$z2C1qBXz92VZgRrg4Pfply$JXDsnaYPl2R6BlIioshJplOdDADLj0nFdIzW3aqzxrs=	\N	f	3fbd8593-bea0-4700-8a4b-f00a59574d87	Даниил		f	t	2021-12-14	833780@mail.ru	3fbd8593-bea0-4700-8a4b-f00a59574d87
1120	pbkdf2_sha256$260000$kzzmDNElgbrA62YtaNCwfe$lvPsqGZUf70sIcvY8Ckz1AzCybdM7P7WQzp+Tm5huog=	\N	f	e2b5b92c-d685-4016-a388-5ed2e880f2af	Сергей		f	t	2021-12-14	serz71@yahoo.com	e2b5b92c-d685-4016-a388-5ed2e880f2af
1121	pbkdf2_sha256$260000$rOOxODUamQKSpt1zmJRZSG$99OlYrxd5gaJKDTwFdUa7W/LmYOB6VlGONFPtUTn19k=	\N	f	1eb24d76-0278-414e-a8f6-b91e74312bfe	Алексей		f	t	2021-12-14	alexhao@ya.ru	1eb24d76-0278-414e-a8f6-b91e74312bfe
1122	pbkdf2_sha256$260000$Mm3hAL5fPVRSEbqLYHmnCi$PyFIJZ2ZMW4dRa2FYDsJUkZMuSGZ9SjawmG4GucICLg=	\N	f	d1dca742-5b79-4eba-be6e-30cd0df256f3	Марина		f	t	2021-12-14	marika73@bk.ru	d1dca742-5b79-4eba-be6e-30cd0df256f3
1123	pbkdf2_sha256$260000$PfBVb45ibkgINdcCyLhZkc$sRU+oVTpRytChqWFPkh1Gk+7vSHnvz5aAaSWpxnSv1w=	\N	f	1e8ef45c-0700-4580-976c-d76348b29082	Сергей Ш.		f	t	2021-12-14	ssa2000@mail.ru	1e8ef45c-0700-4580-976c-d76348b29082
1124	pbkdf2_sha256$260000$hQkul8An8TiGDb3hBuMAot$Y8kOQQqfwSvwkwQs1PgeT0aR77KibLBZtRtKvFBU0cE=	\N	f	20d2ac6c-957b-4e31-a61d-b1ee3d981da8	Роман		f	t	2021-12-14	r.tolstunoff@gmail.com	20d2ac6c-957b-4e31-a61d-b1ee3d981da8
1125	pbkdf2_sha256$260000$D4DllZzS71bs3SDNv4CXLT$idH4fBBhzOcaG/w54IcVj1TSKzG402JCewnAGfrzAyY=	\N	f	866daa79-cf55-4f35-9772-9d5428e2d91b	Sergey		f	t	2021-12-14	meller.007@mail.ru	866daa79-cf55-4f35-9772-9d5428e2d91b
1126	pbkdf2_sha256$260000$juhCLMpYDOyYblLeY44IIW$XCOVq1uzSTwjsA8CjaterViurXaYsi4RfMyjSYZwdUg=	\N	f	6392daa7-da77-4fab-a9ae-92df73a7c04a	Денис		f	t	2021-12-14	denny.senkevich@gmail.com	6392daa7-da77-4fab-a9ae-92df73a7c04a
1127	pbkdf2_sha256$260000$bDfO4WZ85pxzSFgCT1PGdV$qKYWp2AWH5h2BZo3HwMRfu4hRxTU/KotqAEwgoULGEM=	\N	f	5603fdc4-3832-4969-a8d8-958bc56c27ab	Флюз		f	t	2021-12-14	ffkhasanov@mail.ru	5603fdc4-3832-4969-a8d8-958bc56c27ab
1128	pbkdf2_sha256$260000$WyfSedhz2sA1uij1BrNNor$lRxdpERrWPtbTSlJOrfrpUckVb0n4HYgSJAf7syglFc=	\N	f	da453d3c-0123-4343-a9f0-862183654972	Андрей		f	t	2021-12-14	bacterial.fox@gmail.com	da453d3c-0123-4343-a9f0-862183654972
1129	pbkdf2_sha256$260000$DnVSXhLEakXqE2NNq1ZAVk$i+bmE229jOJNoBGWMIRWmpk1mUH99W2+vjxDBL2oxgE=	\N	f	f89dd8cd-030c-4010-826e-e8aa078bc2ff	Максим		f	t	2021-12-14	2277mk@gmail.com	f89dd8cd-030c-4010-826e-e8aa078bc2ff
1130	pbkdf2_sha256$260000$UnHc7g3opBXpTLJF1K03s9$90NO3LcNXfp6qEOFXgunwhIQWxk/tn8nkMBjn/UuQwM=	\N	f	45c2dd7f-7e48-48b8-b3e8-9dca3cca69f0	Виталий		f	t	2021-12-14	vewtal@gmail.com	45c2dd7f-7e48-48b8-b3e8-9dca3cca69f0
1131	pbkdf2_sha256$260000$Dn6E2AxOUNvLLfmpJQvSNq$6BWfFWal5uIpWYyAXWxtY7rrfrxeUydnY7GRfVk/31E=	\N	f	27a67c8d-76de-4f52-ae0d-b49238cd9185	Индира		f	t	2021-12-14	ibadatt82@gmail.com	27a67c8d-76de-4f52-ae0d-b49238cd9185
1132	pbkdf2_sha256$260000$zmmTW7kI5yFm2bbicRZqRY$dARF2XJWSUh0ll/Pl6bMyJ6St3/xEaf7Bq7UdoNEqUY=	\N	f	41498bb2-7915-4e84-ba7d-7d319e31f5f4	Виталий		f	t	2021-12-14	afanasyev.08.10@gmail.com	41498bb2-7915-4e84-ba7d-7d319e31f5f4
1133	pbkdf2_sha256$260000$s5ZcoHUJivqJP84OuWgz5z$dY3j6I8qXUzAnN3SCY7WPZ73utDGoV39zymT/5pmNV8=	\N	f	edbc2ab7-d9ca-43a4-9425-983be817046d	Максим		f	t	2021-12-14	Makarov2717@gmail.com	edbc2ab7-d9ca-43a4-9425-983be817046d
1134	pbkdf2_sha256$260000$9jDgrGDONVMm7MDVU3Wjzp$umQRgLtr8d5EZxC1BbxTw1tQnEcylHSVR02k+C3890s=	\N	f	3bd60bd4-3c8b-4b45-b5af-3a9ba692a3a8	Александр		f	t	2021-12-14	lukyanov.alexandr@gmail.com	3bd60bd4-3c8b-4b45-b5af-3a9ba692a3a8
1135	pbkdf2_sha256$260000$2N6epaVGKHRzIntKHcWLiP$QPeiYP8G5xdx33ScVGFi/jen90E8b3iRpIQxLGv9zxA=	\N	f	662de6e0-7774-4d09-8c64-64c103b72109	Елена		f	t	2021-12-14	alobnosova@gmail.com	662de6e0-7774-4d09-8c64-64c103b72109
1136	pbkdf2_sha256$260000$tVYrIo4dq7iirR6FX0uVMN$C0mtTfBbSjVbIhgEHW5Co7r7dKt4Ja8fXOva7P7Psjc=	\N	f	390109b7-bf66-46de-b313-c582a977f47d	Михаил		f	t	2021-12-14	7651229@gmail.com	390109b7-bf66-46de-b313-c582a977f47d
1137	pbkdf2_sha256$260000$bhetLz0iDUEPEO4GuJAtPV$G30K7HlBTsFfPG5xRpUeWwABqBCZWn+EylYbkoGlUo8=	\N	f	e4652ecf-8f57-45a3-9fad-701970832c0e	Даниил		f	t	2021-12-14	Danilshuz3112@gmail.com	e4652ecf-8f57-45a3-9fad-701970832c0e
1138	pbkdf2_sha256$260000$GQH1AUVeg2A1HLsiR1toTJ$29NuiJ2OHM6TxtCp31qIPn5z6/4WIJ++Po8hwgx5CJM=	\N	f	43d99344-e023-4145-a392-21863b8e45dc	Dmitri Metsatalu		f	t	2021-12-14	dmitri.metsatalu@gmail.com	43d99344-e023-4145-a392-21863b8e45dc
1139	pbkdf2_sha256$260000$DefyENoKdZ4Hlu9XyqdFwq$BAM4rWLNSgY2B9bUASpyuMaLXDkMpMdrXyEND8Si2qI=	\N	f	454bbab2-b161-4752-97b5-d95e7c198c4c	Дмитрий		f	t	2021-12-14	volkov.agroline@gmail.com	454bbab2-b161-4752-97b5-d95e7c198c4c
1140	pbkdf2_sha256$260000$8xLXtCkItSGaaF89GKPTk7$5yO69bqBlwk/IOkpGkHZt6muZ+C2fkxfYNnoXGm7afI=	\N	f	7881562f-6fcb-493d-8396-7e194696478b	Сергей		f	t	2021-12-14	shsf1978@gmail.com	7881562f-6fcb-493d-8396-7e194696478b
1141	pbkdf2_sha256$260000$TqZvVOtVp7J3f7VUTzknCU$2y70ZzxZOK4nCQTzjzHUt9xTzWpbadATDLgCjFtBcxQ=	\N	f	262dd201-7234-415e-929f-d21e9dc8333d	Александр		f	t	2021-12-14	generalov.tender@mail.ru	262dd201-7234-415e-929f-d21e9dc8333d
1142	pbkdf2_sha256$260000$Uhyy2akgoJyFVdgHictZ1S$ATcFDZUrOAvvw0gvkjUvRQwfmKoe9Ef3oVlPUImpeO0=	\N	f	18772fbf-6e40-49e5-9d8b-9ac5eeadc715	Иван		f	t	2021-12-14	tyghnyh@mail.ru	18772fbf-6e40-49e5-9d8b-9ac5eeadc715
1143	pbkdf2_sha256$260000$j0u1Dt5Nzs7G3ceJOng6kY$Twsr/mBYxaVpUoPL1ZSaP9pXjZ6pSxwyLTkW+531tnM=	\N	f	0a787b4d-5e16-4927-9f90-6353170ee39d	Alexander Solntsev		f	t	2021-12-14	9119490@mail.ru	0a787b4d-5e16-4927-9f90-6353170ee39d
1144	pbkdf2_sha256$260000$mCrSuqKwe6n9iNHJNVAj7R$pPp7oX6nTmTd4x1WWYd782dpuyKJgGgEidFvDxEs8cg=	\N	f	a285c567-0010-4c9d-96f0-0a4a5b14904e	Алексей		f	t	2021-12-14	i_mister@mail.ru	a285c567-0010-4c9d-96f0-0a4a5b14904e
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
1156	pbkdf2_sha256$260000$dtzEYEgyRXkPwOXLCXTZur$KtrltWcdEFLV9aJTOXZeOqEzrgh6v52x4qigozubSxw=	\N	f	9318773b-b4e0-4d55-83ab-99c48478db83	Сергей		f	t	2021-12-14	sergeygyuriev@gmail.com	9318773b-b4e0-4d55-83ab-99c48478db83
1157	pbkdf2_sha256$260000$dW8wB24JdhZOSIyIXSKtAY$hW5VwBPGuA2k/81R/GJHTcDYKY6kqpqTgVLNuFaRC1Q=	\N	f	641c11f3-62b3-4102-a7ce-3043d2c1ba94	Алексей		f	t	2021-12-14	brov@list.ru	641c11f3-62b3-4102-a7ce-3043d2c1ba94
1158	pbkdf2_sha256$260000$57q4nbMLShmGG4fWJutzrr$f5EaUtmOAWit42aGD34UeEGyAwavqIbLNeUafA4OsGo=	\N	f	0b4a3c46-6630-4625-a63b-0b9fd733893e	Михаил		f	t	2021-12-14	rozovoshekiy@gmail.com	0b4a3c46-6630-4625-a63b-0b9fd733893e
1159	pbkdf2_sha256$260000$J4QgsDr8tdmgwVcAOwpZe5$5adDYWzx65Ob/ry0qLf0h3dqJPFIcdJUonki4qh2Bo8=	\N	f	ee0bd39d-fa54-4899-9c14-be1d483e704e	Михаил		f	t	2021-12-14	taktak56@mail.ru	ee0bd39d-fa54-4899-9c14-be1d483e704e
1160	pbkdf2_sha256$260000$GYBPtL4q8HgE69kpNN2MiO$tiv8nnvd/4Rp6UCrIUfEK4KNorBcx1a4hy3aa8CR6Rc=	\N	f	1116ccfc-9564-4d73-9c5a-354ad7bd00fb	Егор Безенков		f	t	2021-12-14	Egor720@mail.ru	1116ccfc-9564-4d73-9c5a-354ad7bd00fb
1161	pbkdf2_sha256$260000$19hd62pEgLFO32Oy0JZce3$woI9zS4K0KUT7aHepVA8XG8DUiXpUIOGsh/Dn67LhAU=	\N	f	a9698ff5-49ff-4102-8cad-63b8624a1dc7	Николай		f	t	2021-12-14	0407199o777@mail.ru	a9698ff5-49ff-4102-8cad-63b8624a1dc7
1162	pbkdf2_sha256$260000$YTHukWwrDoddyG7k5910zO$En76wwsEEZb2baKVnIZZmJuy7AYCGmH2ik0BLpivlAY=	\N	f	e017a735-c175-493b-a4d6-025b3c4c2789	Сергей		f	t	2021-12-14	arnold28@yandex.ru	e017a735-c175-493b-a4d6-025b3c4c2789
1163	pbkdf2_sha256$260000$SfnbnD3iby0pm8182eNtGX$tRlbjPJu3qrLhqD4t2IOveTM5qcDib4TqjH31EpCTXE=	\N	f	1a40ff14-0727-4546-a655-4efc84a9846d	Кирилл		f	t	2021-12-14	goldin.kirill@gmail.com	1a40ff14-0727-4546-a655-4efc84a9846d
1164	pbkdf2_sha256$260000$KIoCbArfr6ElAv7ZT7Cwig$6cm5lOqbxrVWhudgpdjticbG3zEJVT2XZ6MrfO9dzVY=	\N	f	6a1b1299-ab7a-4579-8af8-6015690ca793	Иван		f	t	2021-12-14	iv.rodionow2018@yandex.ru	6a1b1299-ab7a-4579-8af8-6015690ca793
1165	pbkdf2_sha256$260000$cESh3Rubx3cI30R23hCyhx$CrTYXG01xYIBu0om2JlEiCr1v1y9tXS2wRJ5K2NLcLo=	\N	f	99ab308d-6d52-4c99-b444-34c79ec8d155	Андрей		f	t	2021-12-14	Niko.ae@yandex.ru	99ab308d-6d52-4c99-b444-34c79ec8d155
1166	pbkdf2_sha256$260000$DS7G4TZxQOMKwE1qkW6W7V$NYlaMxA5Fcb7DiZR2n22dxoy4M1A80MNr0JcQOIMxbQ=	\N	f	afbb9009-1d12-4237-9116-bd07228ea1a5	Анастасия		f	t	2021-12-14	astrokan@mail.ru	afbb9009-1d12-4237-9116-bd07228ea1a5
1167	pbkdf2_sha256$260000$cGEq7W9f2q4Kofgc6S666F$j14IOgXRtgald2cATqZrQWJU2SeoBTetr/jHqQ5rZIQ=	\N	f	7b11a241-b1c6-4e46-8f31-923722e52633	Алексей		f	t	2021-12-14	lexamatviyuk@gmail.com	7b11a241-b1c6-4e46-8f31-923722e52633
1168	pbkdf2_sha256$260000$OkKELCOZ3mTNtvG0VRrwwj$MxTIn3m27y+hl5GNBHr4Up11l6EgaEdJxejavWl7rPs=	\N	f	d6f30a26-abdb-479f-9629-fa351440adad	Артем		f	t	2021-12-14	sakson-aw@mail.ru	d6f30a26-abdb-479f-9629-fa351440adad
1169	pbkdf2_sha256$260000$fZ9DxjPeurpuAk3anOrO48$5NgmRVUPTLmKMf54l7RXgGs5RidAbBmkULCJcybMgYc=	\N	f	a69cbbf6-cd0a-407f-b091-574c36f2882f	Сергей		f	t	2021-12-14	maksimich007.88@mail.ru	a69cbbf6-cd0a-407f-b091-574c36f2882f
1170	pbkdf2_sha256$260000$Qq2tEhhv8z4EC7hvGNm1F1$x547ftrnNi+DuuWH/9+5LltchQt3ZtjR5uoXTiWyWkA=	\N	f	75e349e7-6d28-495b-9ed9-124865885b65	Михаил		f	t	2021-12-14	mihulich@mail.ru	75e349e7-6d28-495b-9ed9-124865885b65
1171	pbkdf2_sha256$260000$3b5zpnkvC41lG4OR3fh1eO$pdVEHHmFGs8IyaaPBscfhj8le/uOQ+tG534VbOjKUlQ=	\N	f	54f9372b-0969-4e41-95f8-d718b0591366	Алексей		f	t	2021-12-14	sosedovs@rambler.ru	54f9372b-0969-4e41-95f8-d718b0591366
1172	pbkdf2_sha256$260000$npKba2upr8tKjLvl40amKd$YrWiNPUeoes8opiwO3blGs5bPedDjWzjviNrSAcfTWU=	\N	f	b00b3509-6e61-43a5-8ca3-8c0deba3d07d	Егор		f	t	2021-12-14	mekhonoshin.e@gmail.com	b00b3509-6e61-43a5-8ca3-8c0deba3d07d
1173	pbkdf2_sha256$260000$VDjv2taeWykQzls1vvVbZp$580ziriooRV4xPrxpq/g0UaKbcER9srICSXLKjqkV0w=	\N	f	bd8dfd77-8e05-49a7-a698-657e9dd049f1	Владимир		f	t	2021-12-14	lukinov@gmail.com	bd8dfd77-8e05-49a7-a698-657e9dd049f1
1174	pbkdf2_sha256$260000$QD1u3dUKpADItVrC7w4bCv$Kg7MesK+c4tbG7K/RVAy82f2M0IZ9p24kA8YEuj2YHE=	\N	f	5c2a9be2-104e-401b-98cf-08da3b005c9f	Алексей		f	t	2021-12-14	shipilov_ae@mail.ru	5c2a9be2-104e-401b-98cf-08da3b005c9f
1175	pbkdf2_sha256$260000$XxEtDXS0Zso91QvY09Hnz6$kj1fUyXmlACgMdr0oBi03KIQ/0Y8tP5IWDJPiD87uGc=	\N	f	fab2a29b-77d4-495b-90c1-eab808307b0a	Алексей		f	t	2021-12-14	pulnikov.1974@mail.ru	fab2a29b-77d4-495b-90c1-eab808307b0a
1176	pbkdf2_sha256$260000$hWzneF9rdXDMRaHFqpgC5q$T4G3QcZUXNCPXRV1aHymkePOaRCIzOrKMhbCIQe1pME=	\N	f	521123b8-f9da-420f-ae94-d5f332e942b5	Юлия		f	t	2021-12-14	crocodile@email.ua	521123b8-f9da-420f-ae94-d5f332e942b5
1184	pbkdf2_sha256$260000$Yl7ZIn7MM8vEsMJDyNKkPM$pff3+un/8XMCatD255vgBJrVOJcTjEO+HCNVFSMOslw=	\N	f	a0b89f61-4b17-49d2-8e7c-fa169e40c99d	Евгений		f	t	2021-12-14	bashkir1505@icloud.com	a0b89f61-4b17-49d2-8e7c-fa169e40c99d
1178	pbkdf2_sha256$260000$jXljNlMLCEFkh3QiHNxPsG$otTUlWlnMvFlrBb3VnYyL7b7TA6SJ/5nMqyE67dXzDs=	\N	f	5ef68ce4-9082-4492-9db8-0f9a9e81c5d9	Виталий Мельник		f	t	2021-12-14	vit-melnik@yandex.ru	5ef68ce4-9082-4492-9db8-0f9a9e81c5d9
1179	pbkdf2_sha256$260000$Efmc4ic621KXVb95GOyT1P$IksiQj4RpfRHzXlJ6wBJTDfQ6BtUpoRaASKlzB5mlPU=	\N	f	82e682c9-6226-41c5-8fcc-1cc66f3efc48	Александр		f	t	2021-12-14	s.semenovs@mail.ru	82e682c9-6226-41c5-8fcc-1cc66f3efc48
1180	pbkdf2_sha256$260000$BmZn3AKdoOvJ80HYVMIWL5$IC/dEkveViSKMq6PNL1TOSt1lcPdHzi9lSigX2C6zkI=	\N	f	9e972aa5-d066-494b-950b-e58f5b0e422a	Сергей Москалев		f	t	2021-12-14	sergejmoskalev1996@mail.ru	9e972aa5-d066-494b-950b-e58f5b0e422a
1181	pbkdf2_sha256$260000$xYfsPN7UBFSWphn2BWecan$LjlILYcpDMbKPG8Zf0oXzIJRLPgR4m0WvP9khLXno0w=	\N	f	b387ee68-6e5e-4b86-b51b-011fca776c75	Евгения		f	t	2021-12-14	evgeniya.pugacheva2014@mail.ru	b387ee68-6e5e-4b86-b51b-011fca776c75
1182	pbkdf2_sha256$260000$zrOzTSIjhlts5EjLibMVze$IIRIOtlO5Lx8TBW5FpdA32Dg5gOPXm3k67p0mAHOs80=	\N	f	47caecce-9e9a-4b8d-b0f9-d016a9c4c40d	Глеб		f	t	2021-12-14	ponamarev-offender@mail.ru	47caecce-9e9a-4b8d-b0f9-d016a9c4c40d
1183	pbkdf2_sha256$260000$fRRAq3VH995jHDbjsvBKUg$30FgwQRoLRxjZCyBN4yVdelYRP55vnAMmTIirTHDYpE=	\N	f	5c017d40-a254-4ca2-b81e-db028daa27ca	Алексей		f	t	2021-12-14	aleksei4450@gmail.com	5c017d40-a254-4ca2-b81e-db028daa27ca
1192	pbkdf2_sha256$260000$fOJtoKRyPhWOMOPoFkFXt4$UN76Fr8+LJY6F1X7+ncN0PVNdYz0WFWEm8fTc43xtWE=	\N	f	6887ac22-3007-4694-bbd7-f80e5e47ecaa	Сергей		f	t	2021-12-14	kiselev_2008@mail.ru	6887ac22-3007-4694-bbd7-f80e5e47ecaa
1185	pbkdf2_sha256$260000$HMTDaRFHzx8MB7uXvRwsWh$B1+5sJfA80FTJrMSVRu3VmAvLPHOBZMe+9ZlziGTtrU=	\N	f	7ef99575-1ece-485f-b361-77278a1d51d5	Андрей		f	t	2021-12-14	spuskoff@yandex.ru	7ef99575-1ece-485f-b361-77278a1d51d5
1186	pbkdf2_sha256$260000$eX18U6JmE8baXqsYaINp1B$Fb1TgoMjFYGirY3cLL2Z/2W8W/ChbFJHENcEthq769c=	\N	f	869ee8f1-18e8-4c8a-aeb3-168f17c4f4e8	Ирина		f	t	2021-12-14	kimik1984@mail.ru	869ee8f1-18e8-4c8a-aeb3-168f17c4f4e8
1187	pbkdf2_sha256$260000$vzp6RGHSB4VHxSaL4CtD3L$dCLvif/PnJ0W7fh8WAlKE2MJgfUKNudnJPhxY75MoY4=	\N	f	9a3f83fc-4ba1-482e-a755-06b6622cbe0c	Дмитрий		f	t	2021-12-14	dmitriy171273@mail.ru	9a3f83fc-4ba1-482e-a755-06b6622cbe0c
1188	pbkdf2_sha256$260000$7ShvYcr9NrYDsKBsd2G5fS$xU3hSqlTnCMqN9FgqM7sSdZ7rJBBme9JMf4lCN+Czwk=	\N	f	5d1c36e4-c72e-40d2-afdb-cb8d91a58956	Александр		f	t	2021-12-14	lekar2689@gmail.com	5d1c36e4-c72e-40d2-afdb-cb8d91a58956
1189	pbkdf2_sha256$260000$Ul9WKGWZ3HD85bRzYomVhf$L2VIGZ1NRmCQ0XrhY5Sz/yJ6e0JSuwgvqcRck35Pmi8=	\N	f	5314c87a-84de-4470-994f-ea6ca47c76da	Максим		f	t	2021-12-14	m@mandarin.io	5314c87a-84de-4470-994f-ea6ca47c76da
1190	pbkdf2_sha256$260000$eKBtUuNcdYCGPYxuQtJI3C$jVuNzDfbJl89fnPNpwt7pjfdM7YQ6iNEujb246vFWrs=	\N	f	790150e3-2a93-418e-8bb6-5b9ea51f3082	Максим		f	t	2021-12-14	dashsogaz@gmail.com	790150e3-2a93-418e-8bb6-5b9ea51f3082
1191	pbkdf2_sha256$260000$OeflTS4xUtqzN0w9aViClr$DBLo/Uw6HB4x8NfWi3FxR1+SdOJr4MkBBBwRfQAv4ps=	\N	f	000fb59a-512b-41f4-91a9-3157e35464cf	Иван		f	t	2021-12-14	dr.evdokimov@gmail.com	000fb59a-512b-41f4-91a9-3157e35464cf
1193	pbkdf2_sha256$260000$ZTZf99bdZRVOtZmMfoKk6X$fGbqgBJ+fmo5U0AAIFDmO+UvuAtT5u23O/MW3b6DQpY=	\N	f	485aabec-1202-461c-9135-f609e1ce41b7	Алексей		f	t	2021-12-14	klimovap@mail.ru	485aabec-1202-461c-9135-f609e1ce41b7
1194	pbkdf2_sha256$260000$qsJOfFV3ofIQsJBTKW9Azg$ST82UxzTLQPFXvHILuOqQqMnby3DHBkReGe9InS9YzU=	\N	f	f3f6f82c-f490-4879-8651-6cd46da5d78c	Максим		f	t	2021-12-14	maven@list.ru	f3f6f82c-f490-4879-8651-6cd46da5d78c
1195	pbkdf2_sha256$260000$XHIX5XPC2Xou6FjNYiO94i$uq11wjinDFhLE7tx5ES7EYDD9/7Tf5X8mKCOPKHhuBo=	\N	f	047b2f29-b193-47a7-bd59-50542c797c2c	Егор		f	t	2021-12-14	bolshak2929@gmail.com	047b2f29-b193-47a7-bd59-50542c797c2c
1196	pbkdf2_sha256$260000$GgmyadjTny9VAFU92O1Wrw$CiBjPOphqxF8yDxeLHGcTXAJ+cr5WLdCfkH6CqMdr44=	\N	f	974cf4e3-13f4-4940-991f-1537da62d092	Ирина		f	t	2021-12-14	irina.gluhareva@rambler.ru	974cf4e3-13f4-4940-991f-1537da62d092
1197	pbkdf2_sha256$260000$SHGOZ7mogBXQZXWq1qPF3S$K29kIcmp+MHExrvO2anteGavzH73HCcyQsCVXJZYTgw=	\N	f	60c67bc3-8e4c-4df9-95d1-b5eec6318695	Денис		f	t	2021-12-14	dde5791@yandex.ru	60c67bc3-8e4c-4df9-95d1-b5eec6318695
1198	pbkdf2_sha256$260000$GF0CpE7qBHyapVP4bbKxxN$dcEPmN4RvhsEvqdMgYTKPlhAwNr2BmTCuAS9j/Vh1Cg=	\N	f	b7d9cbf4-4728-49a2-8c7a-4b560d624855	Larisa		f	t	2021-12-14	pelar51@icloud.com	b7d9cbf4-4728-49a2-8c7a-4b560d624855
1199	pbkdf2_sha256$260000$BjJmDDvj2yiaAQ1hwuvbXo$NZIfYfAoOxB25LrWQ/LK91AkYxDeKxFAoYpHHKLtWGY=	\N	f	fffe9889-4111-4de2-8851-d6fee862fd7d	Иван		f	t	2021-12-14	polkunoff@gmail.com	fffe9889-4111-4de2-8851-d6fee862fd7d
1200	pbkdf2_sha256$260000$hBVfoNj6bgfBGAN7uJ0vGC$9luJZWNXBV+JiCNaMC3NbdsM2bk6/WUwLo+yUA7s6pA=	\N	f	ed96f120-fb49-40e6-a3d5-fbb3c0423045	Андрей		f	t	2021-12-14	andrey.voprak@gmail.com	ed96f120-fb49-40e6-a3d5-fbb3c0423045
1201	pbkdf2_sha256$260000$FSEJocpk58mkluXaerirq4$mztrq8kbFq1R6MDavw4zFaSlr1sa4djUFU2kT/HT2jU=	\N	f	908b6681-33a2-47cd-957a-a85967ff771b	Ярослав		f	t	2021-12-14	ridosaroslav@gmail.com	908b6681-33a2-47cd-957a-a85967ff771b
1202	pbkdf2_sha256$260000$AZmdDofv9SHEANAMLbRoaB$MrFcy0AigSLsVoKQgCqyISOMYrYkY0AjFLfxxDeSq/0=	\N	f	5a717b46-3a28-4f3f-beeb-f1d2baf7a7d6	Юрий		f	t	2021-12-14	levin.yura@hotmail.com	5a717b46-3a28-4f3f-beeb-f1d2baf7a7d6
1203	pbkdf2_sha256$260000$FRMlY7wF7LCpkmByGeH02G$3t2gH18VUJ7QFV/QGeIruBSWRlFD6mdPrYjzkpP3e5E=	\N	f	2da6e9d0-0f0b-4016-bda4-588d368dacd6	Андрей		f	t	2021-12-14	andreykicum@yandex.ru	2da6e9d0-0f0b-4016-bda4-588d368dacd6
1204	pbkdf2_sha256$260000$nIAqf9O1UbkhK8COOZO957$DPDzyG6p0sKAfhvex2mo5YqukFI4Mi5OMFj6fEguGRo=	\N	f	90a6be59-8948-4651-bac2-bb86a7b0f11b	Владислав		f	t	2021-12-14	slavacondrat@yandex.ru	90a6be59-8948-4651-bac2-bb86a7b0f11b
1177	pbkdf2_sha256$260000$o9dlMH3rjNp5aIskpBrqMH$lr6mhIBlHuC1L2E63ckzESkXCj8HekTdPNn8XoGrNE8=	\N	f	54f6e6da-3b49-4169-b1f6-896007318d30	Данил		f	t	2021-12-14	daba-888@mail.ru	54f6e6da-3b49-4169-b1f6-896007318d30
1206	pbkdf2_sha256$260000$kOfOp8fSPiy09GbRGnumD8$AyTwZB6ExSsYgNDWDLpxWIbBhz3RU5cylujZPBS+wG8=	\N	f	c6ef3264-6fb8-43d9-ab35-3cd946e4053b	Сергей		f	t	2021-12-14	omram108sm@gmail.com	c6ef3264-6fb8-43d9-ab35-3cd946e4053b
1207	pbkdf2_sha256$260000$jRzPLr3UAKP8oJqfKJNsTP$dWrNavvydwuUwalCejlLk/Z9nEVKAXhM+b8qmdHNsOY=	\N	f	4fb7bba2-87ec-4c74-a194-672a057e9342	Александр		f	t	2021-12-14	belyj840@gmail.com	4fb7bba2-87ec-4c74-a194-672a057e9342
1208	pbkdf2_sha256$260000$6AphGRMgww35EH1RVF40R3$GMdHneOezyg9cYWdIsB2/FNME7CrEu8u0jg5l6LsB1I=	\N	f	7f9bedc7-65c3-47fb-8dd3-f48add56995f	Арсен		f	t	2021-12-14	ari100krat.900@yandex.ru	7f9bedc7-65c3-47fb-8dd3-f48add56995f
1209	pbkdf2_sha256$260000$BBaEkMt3kPOmtt9Rt0wTYX$c2+Owr73WnB+2yczbcotE+hFsrtbFRJtAIAmIn6cuOc=	\N	f	e22034e9-98a9-48bd-9193-6950b59feb88	Denis		f	t	2021-12-14	denis59r@yandex.ru	e22034e9-98a9-48bd-9193-6950b59feb88
1210	pbkdf2_sha256$260000$3D0zkenl6RZxLviWzLfIK8$Httj9FGP0g+W4fClXMVA1PWMc+AN2XXIS4QNHDimiSA=	\N	f	1dedf1fd-689c-451e-9564-46b00e02ebe2	Оксана		f	t	2021-12-14	zhilinaom@gmail.com	1dedf1fd-689c-451e-9564-46b00e02ebe2
1211	pbkdf2_sha256$260000$lf4lIyjhZwm8JlHFlVQwZM$ejzbEd5mcLN5yS40LZmgJdJZZxGo4+GJ6qtDRGz+r10=	\N	f	7ac828d2-413a-4f3a-9594-3247fb6f5433	Иван		f	t	2021-12-14	shikkumon@mail.ru	7ac828d2-413a-4f3a-9594-3247fb6f5433
1212	pbkdf2_sha256$260000$TGrpXmw54LEldymWXjwWfi$IBP3LyVwHsdzCTmgDJ7FDOesLfk40re387QLq1n2uw8=	\N	f	e56ca9d4-3c73-4dd0-980e-c5cb9af2e549	Михаил		f	t	2021-12-14	gma_80@mail.ru	e56ca9d4-3c73-4dd0-980e-c5cb9af2e549
1213	pbkdf2_sha256$260000$uLkLeUtDs6yp9g5LWz29GB$HzRHvDSV/8ZbotDZd+4WMP7KycWiBcYiwzqivvC6ipc=	\N	f	7aeebe33-f980-4fa2-b8d0-050c0d36a57c	Сергей Тахтаров		f	t	2021-12-14	sergiitakhtarov@gmail.com	7aeebe33-f980-4fa2-b8d0-050c0d36a57c
1214	pbkdf2_sha256$260000$QOJTFMRYePhe4gT0Wbl9km$RDtCk0qOBN1YoZ6oM1xKlbRu78iYBoW9EpVTssiuUb4=	\N	f	74c952dc-b76f-4dcb-b9cf-ca074e51e342	Лэйла		f	t	2021-12-14	lejla.velieva@bk.ru	74c952dc-b76f-4dcb-b9cf-ca074e51e342
1215	pbkdf2_sha256$260000$AID1E2OincTd9bCVz3wmmX$IIPW1iK5RyrEq8Lfw1nxWhE/RopsieNkKVRTcRHjHUE=	\N	f	b09977f2-0335-4f73-b22a-0638acb2f3b2	Aliaksei Chumakou		f	t	2021-12-14	madeserv@mail.ru	b09977f2-0335-4f73-b22a-0638acb2f3b2
1216	pbkdf2_sha256$260000$4FUHDxKPiwdpQjchh3CGEI$znScsH6Ds+sPrEtJbGLJ29pU173szvL87O4xSsCCAEw=	\N	f	1909fe50-2424-43ba-a5c0-c5dae7545671	Вадим		f	t	2021-12-14	Frostzasx10@gmail.com	1909fe50-2424-43ba-a5c0-c5dae7545671
1217	pbkdf2_sha256$260000$McQMdUKm2jS6W68mCGbupd$5JrHSngT/r3gVrB/g2QLYVczpPpkvbFbWaaTQK9/gJY=	\N	f	67e104e9-aa9b-4acb-9fc8-fc1abb1a20a0	Алексей		f	t	2021-12-14	l_m1980@mail.ru	67e104e9-aa9b-4acb-9fc8-fc1abb1a20a0
1218	pbkdf2_sha256$260000$weLgSl66hwzAO5Uwsoa6Iq$lwxmJuTZCJRvrpLaf736I9y+03KyEFYHV4fOw8jXMGU=	\N	f	e0dd5ca0-c804-4e98-8a06-5c5cfc049f1a	Мария		f	t	2021-12-14	mariya.ermakova.1987@mail.ru	e0dd5ca0-c804-4e98-8a06-5c5cfc049f1a
1219	pbkdf2_sha256$260000$RIxyePSzX1MmA2Buvdv8OP$SyoVZbw85GjpPmhKvrsdwPUXPL/R7LDRg5ANIf74/R0=	\N	f	95b0a4fe-8ead-40f2-809a-6c6a95bb6eb4	Никита		f	t	2021-12-14	nyangendalf@gmail.com	95b0a4fe-8ead-40f2-809a-6c6a95bb6eb4
1220	pbkdf2_sha256$260000$tzjFAHOtLcsgJueHAd1gvj$POlr8Sibgx9L0lrqqNECoCAqeKOcaHE//T2UzY6pSpQ=	\N	f	838411a2-dc2a-44f3-8e96-bd081bb0f0ca	Евгений		f	t	2021-12-14	clyucherman@gmail.com	838411a2-dc2a-44f3-8e96-bd081bb0f0ca
1221	pbkdf2_sha256$260000$TPBRK53jT4SOk64qAloUCU$D8iZPQKdVHHgLsfia2A8pnDtBLxgXbb714e48aCynDw=	\N	f	8b8ef259-2215-42a8-9a81-bfad98d4818c	Михаил  К		f	t	2021-12-14	mkumashkov@gmail.com	8b8ef259-2215-42a8-9a81-bfad98d4818c
1222	pbkdf2_sha256$260000$YcE9W6McJdrHDEJkJhGWUL$+r+auDoslKoXDXSIusS355+IPQZTRQ2uR4zhCKKGvN4=	\N	f	3dbf0154-e213-44d2-9ded-4ac9f3b4bfe1	Геннадий		f	t	2021-12-14	Cr0ck@rambler.ru	3dbf0154-e213-44d2-9ded-4ac9f3b4bfe1
1223	pbkdf2_sha256$260000$acswlDPbcxJCvAvIg67Ozw$5WUmyyyfGd/83+xncq9Vjwen4TC3WI4Xe2KlKsCIJ28=	\N	f	fcc77f4c-f947-460d-87a6-dc3a979aed0e	Дмитрий		f	t	2021-12-14	meetandok@gmail.com	fcc77f4c-f947-460d-87a6-dc3a979aed0e
1224	pbkdf2_sha256$260000$EIkoBzOcJaILgYZxXewdE6$2CK8v9+1rT7uUxB4J8UcIVyj8Hjc2axynssZa2A2wFk=	\N	f	9d73cb29-87a9-488d-95f7-077e02ba9778	Иван		f	t	2021-12-14	optimist75@mail.ru	9d73cb29-87a9-488d-95f7-077e02ba9778
1225	pbkdf2_sha256$260000$9s0iWH3puRUJ67zMmM5UxY$ByNuzmCBZZAFSukK3KTp/REThn9jt0JR8ZY+HhrRK9k=	\N	f	765ef8e2-420f-4775-821c-3c8f27524d58	Юрий		f	t	2021-12-14	scorp-93@mail.ru	765ef8e2-420f-4775-821c-3c8f27524d58
1226	pbkdf2_sha256$260000$9j2jlWcXH2MTy2fRpUzYE9$n69twId2rPpRu2GbaDqZhkrPdDYPHkvDR2lvYPQXNbg=	\N	f	68593bcb-0162-4228-a017-214a09992caf	Сергей		f	t	2021-12-14	izmailovlz@yandex.ru	68593bcb-0162-4228-a017-214a09992caf
1227	pbkdf2_sha256$260000$qiIiaO74hNB6iiKDOHoVI1$cc2sdn6142zww98SWI2NuvV29jSYKHQpgii5P6pC0vU=	\N	f	f0709cbc-df2a-4a16-9883-4848d255759e	Антон		f	t	2021-12-14	tkm_design@inbox.ru	f0709cbc-df2a-4a16-9883-4848d255759e
1228	pbkdf2_sha256$260000$647FpuFCkXddz4G5td3tbF$Pv2e5MgAVU7CSR6+428KLYlEHSl0o8YQf6QY6zfYhA0=	\N	f	bdbeab51-6d2c-46d8-98c9-df52a76f5a39	Александр		f	t	2021-12-14	vokrugdoma33@yandex.ru	bdbeab51-6d2c-46d8-98c9-df52a76f5a39
1229	pbkdf2_sha256$260000$9jUoksPHq3XLjJ5KXC30fs$dXaUgS1i3HxbCYLGZxaHpH9su4FGOqzi7QjqOqGDREU=	\N	f	a188783f-099e-4b43-b4f9-97ce6b85e94f	Леонид		f	t	2021-12-14	kostin.py@gmail.com	a188783f-099e-4b43-b4f9-97ce6b85e94f
1230	pbkdf2_sha256$260000$qhCZc6NXJ0Yy9RbxsgF4Ln$JW+27fNN+nSlp+af+55OSH9dADeHgjid/Mfs29Q8VC4=	\N	f	f70b1aba-1376-4922-a13f-c7505b2c09ac	Gena		f	t	2021-12-14	fanatt1977@gmail.com	f70b1aba-1376-4922-a13f-c7505b2c09ac
1231	pbkdf2_sha256$260000$zLtFwOBdHB0TbwgMPGWNm0$eTLOBGv4s80rtnWtCzcv5DiX4gy+oP526k+MYxerGlc=	\N	f	97cb8f9e-cc8e-40e5-a46c-41563ddc4806	Alexander		f	t	2021-12-14	alexalor@gmail.com	97cb8f9e-cc8e-40e5-a46c-41563ddc4806
640	pbkdf2_sha256$260000$Vnzzbhy5EOTj2OnSMBytwW$8pTZ9S1xZI6EJkp2ccb+AzCEREbjHiNM9Iqmv+P9CNA=	\N	f	c8a83ae2-2a01-4fb6-9f71-81cea9651464	Никита		f	t	2021-12-14	mahov.nikit@yandex.ru	c8a83ae2-2a01-4fb6-9f71-81cea9651464
1232	pbkdf2_sha256$260000$vvNUAw2U8ZyqCDlO1C4Phz$6rPRUki4ILqtZ0NFztQvJg1K0nkec7/Ibw99vVcUXsM=	\N	f	8e638384-f01d-48a6-8cb2-7344f61b10d4	Kastantin Ascaso		f	t	2021-12-14	klm414168@gmail.com	8e638384-f01d-48a6-8cb2-7344f61b10d4
512	pbkdf2_sha256$260000$IbhLICCpowlOReBLeRwnjI$QPg+Kua02Tt89x6mXbrr2xfvz54MoYiHB7r5pq4VGAs=	\N	f	c8c58dc8-d269-4fa1-897d-9c493e5a30fd	Дмитрий		f	t	2021-12-13	dimka18belarus@gmail.com	c8c58dc8-d269-4fa1-897d-9c493e5a30fd
1205	pbkdf2_sha256$260000$6hbVOUS2RX6gshqxAGU3qP$cCgOLTBFzo9+HlwFbpuunA4uuXV6BAMVrPTUjlPvuTE=	\N	f	374a0319-4200-415b-b675-444e80173c21	Семён		f	t	2021-12-14	vizitagent@mail.ru	374a0319-4200-415b-b675-444e80173c21
880	pbkdf2_sha256$260000$Y26I4UffadY6cvkwu77TeJ$1zk9zEpoOVApywBEO2oHCL7RgzDGqPL9GtFr8JQMj+0=	\N	f	5ac1c6ca-a88c-4b46-85df-722334d64394	Наталья		f	t	2021-12-14	nata_shaurina@mail.ru	5ac1c6ca-a88c-4b46-85df-722334d64394
1233	pbkdf2_sha256$260000$pEPXncvv6X6rcz3pisTHeC$ZAuiMFbP5i4+fv8BNWxguhH8zuYHpEJJ7ILrA+vdodY=	\N	f	95cdec66-51ae-4bc7-aac8-dd7c4644c55f	Тимофей		f	t	2021-12-14	t1i0m0o6x8a9@gmail.com	95cdec66-51ae-4bc7-aac8-dd7c4644c55f
1234	pbkdf2_sha256$260000$djt9uYZCtSr0LN9itCkd4m$vsTCEUXnVTw+HlUvC67NzCfPFpycr1HIOlmnO13tVyY=	\N	f	117b041b-404e-4773-96ec-61ca480adf7c	Максим		f	t	2021-12-14	miskryabin@gmail.com	117b041b-404e-4773-96ec-61ca480adf7c
1235	pbkdf2_sha256$260000$Lp4yIINW8VSNYADkEq6A8r$pmr9yq0bXkVXyUQ7NEh99ES3O00SEXghqWu1P+A9kmc=	\N	f	855c82c8-e377-4516-addd-16a0febea7ec	Алексей		f	t	2021-12-14	yantwit2@yandex.ru	855c82c8-e377-4516-addd-16a0febea7ec
1236	pbkdf2_sha256$260000$oxXnffX0bYXOPMaKk2Szeo$IA6qwgln1nlhoNpU07HB8YKZfokZWZrPkdjtfG8OQUE=	\N	f	2a811303-f999-4d94-a69d-3369d2585570	Виктор		f	t	2021-12-14	vicvlab@gmail.com	2a811303-f999-4d94-a69d-3369d2585570
1237	pbkdf2_sha256$260000$BysuCGjY9AZ1Z429uzsGzO$Z92PkwefkAMmD0uXWMp6Iaxr+A/2GDiNamAU650ga/Q=	\N	f	8481fc48-5486-43f6-b3fc-4f21640dcbf7	Виталий		f	t	2021-12-14	vital555_2011@mail.ru	8481fc48-5486-43f6-b3fc-4f21640dcbf7
918	pbkdf2_sha256$260000$vEKPSECbxGgy2MBXpvMmpo$iH2+Lnu5QaHOCHEXXYdsWm9oFfCsyGWnhWB+stAvcMo=	\N	f	7a6b96bb-02e7-4328-8467-bc9d859cb27e	Эльвира		f	t	2021-12-14	e.kino@mail.ru	7a6b96bb-02e7-4328-8467-bc9d859cb27e
1238	pbkdf2_sha256$260000$zKDawmFw6Vp3L4VqHCOhUg$GbyAdUcsXsr3I8zBEav1IFH5elaH22+YQyET2YUivgY=	\N	f	1e3758f5-928a-45ef-9ce4-eec4e5d14b81	Николай		f	t	2021-12-14	9202111@gmail.com	1e3758f5-928a-45ef-9ce4-eec4e5d14b81
1239	pbkdf2_sha256$260000$9SgEQ1ztlTLqpPyRtz82Sq$UzH01P2gNqQaoFD0ImWEPM6iwW75lVqZFDRvhuPgCYk=	\N	f	6621ec25-93df-4104-b0c3-4b62ccb4ed2c	Павел		f	t	2021-12-14	Pavel_samokhin@hotmail.com	6621ec25-93df-4104-b0c3-4b62ccb4ed2c
1240	pbkdf2_sha256$260000$XzbIrMdGCk7k0UkRFEl2L6$9Bhdk+4HqLPr0X8iHl6ddrPiDmOEVd0widFbG1sDKKQ=	\N	f	9c8a15f1-69cd-4dcd-bd80-da252c13b53f	Наталья		f	t	2021-12-14	natalimal75@mail.ru	9c8a15f1-69cd-4dcd-bd80-da252c13b53f
1241	pbkdf2_sha256$260000$z9zctZwOsfuSQbJ4kqs9Vc$s34/UOdeTJLsLKg74LoB+ldxXP5IWRP2HcaGtSzHoY0=	\N	f	517e8ba3-6881-4e3c-a06c-6ef823d79e57	Дмитрий		f	t	2021-12-14	tchkd@mail.ru	517e8ba3-6881-4e3c-a06c-6ef823d79e57
1242	pbkdf2_sha256$260000$tPuGM46FOv1LkD9FN0p1yO$idgQ6gYHHpNZOEQnmu+K/zYs2tPxT0Bkd1EziugUYAA=	\N	f	b3316307-ba91-4353-b706-4cda961b00d9	Александр		f	t	2021-12-14	kuzinatrabk.ru@gmail.com	b3316307-ba91-4353-b706-4cda961b00d9
1243	pbkdf2_sha256$260000$qtUOQn1TRMFKsM4oUIdU6E$eJsxsrWQAVk0PsS6gV38uViUbf1MkQsyrDi46VxM2zc=	\N	f	dbe1847c-68f0-4be2-bcc6-55c737870b99	Вадим		f	t	2021-12-14	1188930h@gmail.com	dbe1847c-68f0-4be2-bcc6-55c737870b99
1244	pbkdf2_sha256$260000$KtUUJLh8btLZAIPb41106d$zU8G+rLX54AAkQ5MtKZJKglZjF7NRtMe8sLXVntFiQ8=	\N	f	75b57971-82a9-45cb-b28b-fa455806dbfa	Андрей		f	t	2021-12-15	opopmop1984@gmail.com	75b57971-82a9-45cb-b28b-fa455806dbfa
1245	pbkdf2_sha256$260000$HDDE42eLfaqR3MbGVXEkYS$O/0PBRrUck7kEUJ2z0MDLpwiVIR7gHM7HMlA3Lomuy4=	\N	f	99c1fd05-f69e-4537-b885-c857878419b6	Антон		f	t	2021-12-15	anton.19851101@gmail.com	99c1fd05-f69e-4537-b885-c857878419b6
1246	pbkdf2_sha256$260000$TQPYGXjXNahZ6jP6jGGSOi$6Csfh76Gdvtb9LgjboJa9IPLetBZIQyQQVGyJJ+B/pI=	\N	f	ea6485e5-937d-4300-aac9-eee666bf1035	Denis Piniagin		f	t	2021-12-15	dns.piniagin@gmail.com	ea6485e5-937d-4300-aac9-eee666bf1035
1247	pbkdf2_sha256$260000$PfjCsSuPs6R8aMtQhhaCV5$zcMqNyG1PZw8ZiBGmARoln7qUKSQtA9bkc3w7jUfAA8=	\N	f	2e31357d-0cb4-4f5f-8d36-a688a8827ea9	Антон		f	t	2021-12-15	antgor@mail.ru	2e31357d-0cb4-4f5f-8d36-a688a8827ea9
1248	pbkdf2_sha256$260000$GqzCGCXWBBrmPVuhAkwmzl$+CKo1/3QTJ6Od3rzIZkdbGOsPV+71v6R0nEl+hpI6sk=	\N	f	226c5dfd-d770-436a-b81e-cd51b1e2714c	Роман		f	t	2021-12-15	vrv_astana@mail.ru	226c5dfd-d770-436a-b81e-cd51b1e2714c
1249	pbkdf2_sha256$260000$Igx03CuW8QX6PPFINuX2u9$OLwoCTMm1eEOb3gBetH2oQuPq80qZ7KyUu0DNXB0ln0=	\N	f	043fbe67-b697-4495-b36e-b51dec38bae3	Виктор		f	t	2021-12-15	v_neustroev@mail.ru	043fbe67-b697-4495-b36e-b51dec38bae3
1250	pbkdf2_sha256$260000$toqPHUfdNIEh1Rrn0Z86hF$gAGe2J2mkUFIrIhYpw6C3KXVZE3Bk/pnYod4I+DeS5A=	\N	f	77bb0607-5648-4a8a-8622-4e5f4a22c424	Алексей		f	t	2021-12-15	homlis@mail.ru	77bb0607-5648-4a8a-8622-4e5f4a22c424
1251	pbkdf2_sha256$260000$5DVDWH1ZppUhSRHR1nbCjn$ILHKV7i2xLocy/oWeZewBuNDIhfyT7xDbKo3MfUHgG4=	\N	f	3e799184-ace0-420f-8ca7-c3a967b91012	Леонид		f	t	2021-12-15	Alshevskiyleonid@mail.ru	3e799184-ace0-420f-8ca7-c3a967b91012
1252	pbkdf2_sha256$260000$CNkWuMeeHpPOPbVQN01aPV$EHbjK+7RmgGr77ilCY5nSggWbRjhaZRQb9gHkbLXa8A=	\N	f	bf1321d4-498a-4bf4-a62e-86868367acc8	Ахметжан		f	t	2021-12-15	akhmetzhan.k22@gmail.com	bf1321d4-498a-4bf4-a62e-86868367acc8
1253	pbkdf2_sha256$260000$ichzT1iswdyW2nF67qZzTq$XFWOEd7NgVF5jxiWEL09sWV/SikbLGBZWd2j1AJ+UtE=	\N	f	824f4b6b-8c2d-4451-af1e-0d15b4a4a808	Сергей		f	t	2021-12-15	serega131@bk.ru	824f4b6b-8c2d-4451-af1e-0d15b4a4a808
1254	pbkdf2_sha256$260000$PMxQGN0XZ7pPFTscPlvny4$RPm96wOQhpZn0e4b1bQ5b1ga9Wts3+j/6lE0QF4+j0I=	\N	f	ceee3988-9ffc-4704-9651-ba86241ec072	Сергей		f	t	2021-12-15	s_a555@inbox.ru	ceee3988-9ffc-4704-9651-ba86241ec072
1255	pbkdf2_sha256$260000$zCnjnrOVChoxs5XSJd0ybe$YJpnoIHWVPGoWcl9kZtlK4Vzzw9OygvD/PIXOsCKFno=	\N	f	c4ee8a0d-0884-4d54-af45-76a6e93e18d6	Александр		f	t	2021-12-15	maddoc83@list.ru	c4ee8a0d-0884-4d54-af45-76a6e93e18d6
1256	pbkdf2_sha256$260000$TEJ5HLaLiiIRW0Tz40hgMC$KyjVpy1xz9XesouIUJwykBjY2mrq79GaQW6RpoSSebY=	\N	f	6672fe75-74e4-492b-86ce-c5c08b37a364	Данил		f	t	2021-12-15	d.hmurchik@gmail.com	6672fe75-74e4-492b-86ce-c5c08b37a364
1257	pbkdf2_sha256$260000$1mSUmbMhiCTHwWTyGeKHaV$oUMNc2RG7mL9PFOseVNpN1f0tW3cQHmN/Xogitwz8VI=	\N	f	9c66ce9f-2563-4f32-a7b4-2dd31f25ef94	Наталия		f	t	2021-12-15	nataliy-belyanina@yandex.ru	9c66ce9f-2563-4f32-a7b4-2dd31f25ef94
1258	pbkdf2_sha256$260000$yb8oaJet3ISQPlBDeiLzz5$dXU6trXfRsXIVeTxNA5dAp/12hVH6M13fz27R628GCs=	\N	f	830ba71c-27f2-4063-bb42-19ae53c3b79c	Хаял		f	t	2021-12-15	kerimovhalik@mail.ru	830ba71c-27f2-4063-bb42-19ae53c3b79c
1259	pbkdf2_sha256$260000$fmhnN8NwqsBVdZBZeZ8hYJ$b5+lLhvj5lSbmBRUaDBs34WSesDoSHUJsIdcSiPFUcE=	\N	f	c85d8f89-e62e-448c-b6cc-d9aad37b52a4	Анастасия		f	t	2021-12-15	tekutyeva_ai@mail.ru	c85d8f89-e62e-448c-b6cc-d9aad37b52a4
1260	pbkdf2_sha256$260000$OosJtNECXHO6wdmQMYSEyL$SIb05R5x+mxByOB/09v4Ox8jwxSkkTv460hPLAUrfG4=	\N	f	c178e582-a4b3-4da5-97ff-2498c91f4b43	Андрей		f	t	2021-12-15	Andelrewan@gmail.com	c178e582-a4b3-4da5-97ff-2498c91f4b43
1261	pbkdf2_sha256$260000$EYKJ4H1RFwYl5iFYR3xWSR$JiVv9302be7JQGaleUGPrUdzohLJZOP+qSsC1/BboW0=	\N	f	2e4f34b9-877f-4e35-b7a8-2bc4d3f5ce0b	Данил		f	t	2021-12-15	didunkan@gmail.com	2e4f34b9-877f-4e35-b7a8-2bc4d3f5ce0b
1262	pbkdf2_sha256$260000$DI74ioVR9zzKAZ0EjnehYJ$oSEhbDxlCMemetfIs2WTnOPVmimzTVNIFKqghq5iBcc=	\N	f	e2a161d7-d60b-4770-bf4e-f9e5816715bd	Nursultan		f	t	2021-12-15	nr.turganbayev@gmail.com	e2a161d7-d60b-4770-bf4e-f9e5816715bd
1263	pbkdf2_sha256$260000$nHEgsLEGRJqSnbNyanpeUC$DuRsOthDEYSzJqIDm8dLhvBQHUN5HottX2av1/BxBB4=	\N	f	fc0e4523-a9cb-487a-8fba-dfa7b44d2260	Дмитрий		f	t	2021-12-15	dsb69@rambler.ru	fc0e4523-a9cb-487a-8fba-dfa7b44d2260
1264	pbkdf2_sha256$260000$TOjgWW0MHyKIbw7yDPTKmg$jdBWe9QSTm0CHPZqaZq5blt9OIux1Rz2DBdlW2XhIUU=	\N	f	cf5f65bc-9bc7-4735-adda-b9fbaf219b86	Евгений		f	t	2021-12-15	mikes_1990@mail.ru	cf5f65bc-9bc7-4735-adda-b9fbaf219b86
1265	pbkdf2_sha256$260000$AprbtOsyC0R8v8jeWKeO7A$LhohAmjgJco8h9mCiZ9jV9wiEHpi8z3UPQQRRrfrlN8=	\N	f	013fd117-91d8-4d95-8566-11073d89ff6f	Андрей		f	t	2021-12-15	a.yanchenko@mail.ru	013fd117-91d8-4d95-8566-11073d89ff6f
1266	pbkdf2_sha256$260000$kbDdVXCaSuvue9lM5eEAtH$Fhd8LJ1lqxvKShJ5mSumyRkZXqgItNuIQXwK+Y5BDpg=	\N	f	73cea22c-967a-4748-8240-e346af985dad	Михаил		f	t	2021-12-15	askon1991@mail.ru	73cea22c-967a-4748-8240-e346af985dad
1267	pbkdf2_sha256$260000$lpyGY92wPZNGOAnoBlLNN7$awq+lfXwcHXy5/a/kSQDHi9ePS3cVKabvWmAEoE0YC4=	\N	f	233f15fb-8dd1-47c4-ac4b-5e0b90b51c02	Екатерина		f	t	2021-12-15	Savkinakaty@mail.ru	233f15fb-8dd1-47c4-ac4b-5e0b90b51c02
1268	pbkdf2_sha256$260000$YoqKvav6ZuLBAW7m7SRi4U$RUMrwmIoLdFaBnQsKdqpq1g65gW4GffcNmTw4HIQRbU=	\N	f	204dec94-8b3f-4253-877f-c683c825b28e	Денис		f	t	2021-12-15	denis.vniiem@gmail.com	204dec94-8b3f-4253-877f-c683c825b28e
1269	pbkdf2_sha256$260000$qPbc4bWY5ABl8SzfUC5THo$Ke0Ead4cpQydZID9NbSzc97ZKTLTNTZp/ixgYsI/GfE=	\N	f	d77e040d-148f-413b-9c5a-7deb3f57f685	Владислав		f	t	2021-12-15	aviation@rambler.ru	d77e040d-148f-413b-9c5a-7deb3f57f685
1271	pbkdf2_sha256$260000$tisMBOwhEPouA48OI2HVVK$x4CJwp2K3+ei5YOIQJKkf9KVPNrPvihsfzR9xFMCEco=	\N	f	34c4bc25-17b3-4d05-8c0f-f7cac16d9774	Сеня		f	t	2021-12-15	panda39gg@gmail.com	34c4bc25-17b3-4d05-8c0f-f7cac16d9774
1272	pbkdf2_sha256$260000$ZDvBThWDEwz5izyMUG0HMq$PjkwHOaN14fYtnfegAVqIlekTD5pVPkyp2zhuU+1MR0=	\N	f	d7aa0264-e1c4-4517-8434-3f110910bb96	Оксана		f	t	2021-12-15	oksana1685@mail.ru	d7aa0264-e1c4-4517-8434-3f110910bb96
1273	pbkdf2_sha256$260000$tP0pHu7KiozGh8azZL50D3$nk8ceRb8Sj/RDwxH9ov1Ai2aYBztdHTscZnHtxM3cw4=	\N	f	d765ca93-e23b-40e6-98fa-39bcfbc4fe68	Ольга		f	t	2021-12-15	zinchenko_94@mail.ru	d765ca93-e23b-40e6-98fa-39bcfbc4fe68
1274	pbkdf2_sha256$260000$o9UTteOu7TkBKiMuo29MOJ$JyxBVOeEXhIqo52HMcBeEDluoOVWttR4ClNUPBh7UMc=	\N	f	ef7a56d9-5250-4f41-8202-17ff3c44cb18	Роман		f	t	2021-12-15	mail.vinokurov@yandex.ru	ef7a56d9-5250-4f41-8202-17ff3c44cb18
1275	pbkdf2_sha256$260000$dOeByg2Vz2IvTaxENi92r0$1MGM3EfrdS+SluR0TFBCI+VgJC1BARk+zn3upA2SDvA=	\N	f	814d3226-4a5e-4ec4-bde6-121d89db42db	Тимур		f	t	2021-12-15	creator_777@mail.ru	814d3226-4a5e-4ec4-bde6-121d89db42db
1276	pbkdf2_sha256$260000$QKO2r0DJwKXVzzozoCwv1G$LorkDlSW4veeCZKp1DyyrvAwYjc4dtXtlDS/PL4WtZU=	\N	f	d79982c9-1b67-453c-9841-6a5248671990	Булат		f	t	2021-12-15	nagaev_bulat@mail.ru	d79982c9-1b67-453c-9841-6a5248671990
1277	pbkdf2_sha256$260000$YxxRk6SpXyaOly8g615DAx$YS54asEvekM0bl7hQvprfv/zPAYZxHcgG1zgTIDN9XU=	\N	f	cba49421-d475-40c0-912e-69f6d9e6c069	Роман		f	t	2021-12-15	kostenco21@mail.ru	cba49421-d475-40c0-912e-69f6d9e6c069
1278	pbkdf2_sha256$260000$5hwODrhk8s5WwdqzcJ6kWW$O/JMb+ZO0ORrzQTsXYQb1JQBb9G3UcxquO4AYvuQKPE=	\N	f	5f80387e-bdc2-42fc-b5c7-d8875504e3c0	Alexey Khursin		f	t	2021-12-15	khursin@mail.ru	5f80387e-bdc2-42fc-b5c7-d8875504e3c0
1279	pbkdf2_sha256$260000$YBZTPlR2XUdI5oivxWx58M$W3vOOqSAnC+PdADAeTo7ZKi2qoyzJGxpja0yFWoV+Ao=	\N	f	9fc940d0-7067-43da-a25f-f0be022662d3	Сергей		f	t	2021-12-15	sabanovsg@mail.ru	9fc940d0-7067-43da-a25f-f0be022662d3
1280	pbkdf2_sha256$260000$yRDvrVSqXSRxzezKr64BzB$lpKXLK1Sgnfu7DkbBVT4zEHSpjWC1BWeprJTS+awwBI=	\N	f	985e2e51-d488-4420-bf7a-b463e73e69b4	Олег		f	t	2021-12-15	cwmc@mail.ru	985e2e51-d488-4420-bf7a-b463e73e69b4
1281	pbkdf2_sha256$260000$eEUqt4zNGPrcAvEow6U0E2$kFZ8rmd5OufdJE//ILFaxSYWENtbOBGCTWBU7p1il1w=	\N	f	9b08bab8-1d6a-4445-8e1e-73553534b098	Артем		f	t	2021-12-15	afarutin@gmail.com	9b08bab8-1d6a-4445-8e1e-73553534b098
1282	pbkdf2_sha256$260000$u98mxFQdY5SEJC9WCQ3YuN$3keKsgcqhLsr5brJzS4s3lzNmWvBA3zt3K1RGffxakE=	\N	f	4f2a99c6-9066-4807-a6d6-a166c2995c67	Роман		f	t	2021-12-15	0859421@gmail.com	4f2a99c6-9066-4807-a6d6-a166c2995c67
1283	pbkdf2_sha256$260000$KhuaenxrHm411EeixmGBV5$zoAbK35K3AYuoooYhjpcVJKzWodDdXtbt+/D9MwptUM=	\N	f	6b2fe162-aee0-4006-8d92-dc6a41dfe010	Александр		f	t	2021-12-15	patcan89@mail.ru	6b2fe162-aee0-4006-8d92-dc6a41dfe010
1284	pbkdf2_sha256$260000$U2my7MjFL0iMAmiKP1NIwQ$FFOBLjiit/q7luMbTHcdQc0wwTO4xHb7ZJOROn3kz80=	\N	f	e3bc5c9c-100c-442b-a655-2acb3abcaccf	Евгений		f	t	2021-12-15	i@kavretskiy.ru	e3bc5c9c-100c-442b-a655-2acb3abcaccf
1285	pbkdf2_sha256$260000$UG22DS3aizt0BUz2FptVHX$1Ib44dqTskZNyqcGtvYlEi9SLPpxyDrR0tKRrliHeJ4=	\N	f	8327ad87-5cf2-4ecc-8234-7488c38e0a3f	Аркадий		f	t	2021-12-15	gameitpc@gmail.com	8327ad87-5cf2-4ecc-8234-7488c38e0a3f
1286	pbkdf2_sha256$260000$ZT8ZrUxPRUJufAHbY5Cqcy$1MLjLS9kL0dyVqF+ZL3YldELRrvNb0Oowc07+OeQ+zU=	\N	f	81d5ee90-d19a-41a2-8f70-c751bf952e9b	Константин		f	t	2021-12-15	koroboov@yandex.ru	81d5ee90-d19a-41a2-8f70-c751bf952e9b
1287	pbkdf2_sha256$260000$CmdtnuRoo30LBtsyQkJB9u$+JghM2a0g6n+m1ho+iZGhtKG1x8EjFjtPwy7AApkM6Q=	\N	f	25999978-884f-4779-b7b7-00c3cb5d2fb5	Дарья		f	t	2021-12-15	prokina.darya.00@mail.ru	25999978-884f-4779-b7b7-00c3cb5d2fb5
1288	pbkdf2_sha256$260000$x9yUgrnV4QikrEZ74mZgqA$/q07n+yem5I5+IZRpvwGIkIXXUcnrD9AINsu2lb+R7w=	\N	f	46f13706-d7f8-4dd7-b4b8-33b24932d2ab	Павел		f	t	2021-12-15	ovsienko_pn@mail.ru	46f13706-d7f8-4dd7-b4b8-33b24932d2ab
1289	pbkdf2_sha256$260000$jxial1X4EKhqg38M5LUYKw$UiCZI9//e7ZYQM8GfspiWNQEjh+p0lj343l6kR+rQWo=	\N	f	61aaab17-7d84-43a3-822f-7053e8488b67	Михаил		f	t	2021-12-15	Izumrudmg@mail.ru	61aaab17-7d84-43a3-822f-7053e8488b67
1290	pbkdf2_sha256$260000$1CotX8GUf1AFDMJr3CGoLF$NM6ILAYkLlGocjmIEinf6v74/V1qtkkzngU8cqR/chc=	\N	f	c2973cce-7b25-4f6f-92b3-d0b9f4ed9544	Васильев Александр Германович		f	t	2021-12-15	vasilich67@mail.ru	c2973cce-7b25-4f6f-92b3-d0b9f4ed9544
1270	pbkdf2_sha256$260000$150qr3QdXFRU9BqGWOArzf$XI4p0ssw3WxYtt38zFgsGJQvF7RnsS+Pe+4PumtEfIg=	\N	f	e20e6236-a23c-4203-a891-8df5ba04ab6c	Соболева Вероника Викторовна		f	t	2021-12-15	veronica20@mail.ru	e20e6236-a23c-4203-a891-8df5ba04ab6c
1291	pbkdf2_sha256$260000$zwxjobYoiTpQRZlnxi8z49$YTio9B2kYitLwP1GX9AhExTALcjCu0WTMvkWhA6jTGM=	\N	f	617aeb8a-f8fc-4596-99bf-d57e11634397	Олег		f	t	2021-12-15	oleg_moskvin71@mail.ru	617aeb8a-f8fc-4596-99bf-d57e11634397
1292	pbkdf2_sha256$260000$o84uH3C3SLBxIK3MNk6QMI$PvxpA845r86kfDR34Ihamdf7ovBPYC/oZs55MWU/W1M=	\N	f	74a016dc-9c58-4eef-aa05-dcc1ffa203e0	Федор Николаевич Елкин		f	t	2021-12-15	elkinfedor@gmail.com	74a016dc-9c58-4eef-aa05-dcc1ffa203e0
1293	pbkdf2_sha256$260000$M7vZ9qbrDS6F9isDuw1U6Q$xglF50M4cnmfkUi7zw3dVR1vvkIVJfyZ5Uw3dUC5ndY=	\N	f	35b90505-74ae-4fef-88b4-120444616971	Ирина		f	t	2021-12-15	irinayakimenko22@gmail.com	35b90505-74ae-4fef-88b4-120444616971
1294	pbkdf2_sha256$260000$O7vq9OZwWgzzUWuAMlMj6G$sgX0VcGKGjklnsdCkF2G+tqicmRezQcrLTz4hqrhKaA=	\N	f	51af114a-0281-4367-8358-db0e20f24c63	Александр		f	t	2021-12-15	alexsokolov0205@mail.ru	51af114a-0281-4367-8358-db0e20f24c63
1295	pbkdf2_sha256$260000$WVI9VQFyUuRXR05yR02a7j$KbYgwH+auAz1y+M2F1kOw6u1A+sWuiQargmlMbY5whk=	\N	f	d3edab09-0b48-420e-baa9-cfba6f3ce95c	Амир		f	t	2021-12-15	amir.vafin04@gmail.com	d3edab09-0b48-420e-baa9-cfba6f3ce95c
591	pbkdf2_sha256$260000$Ha2bQk2LTPxd2Mhm9Dm2sy$8F06dggo/ImuJIqv93kfa6qE6BSqu/HvHR8g3yG3LII=	\N	f	f9c73716-4dfd-4d4e-9572-6edf6df3acae	Оксана		f	t	2021-12-14	2174813@mail.ru	f9c73716-4dfd-4d4e-9572-6edf6df3acae
820	pbkdf2_sha256$260000$k3CEyQTWJQdckStRZlD4N4$Tti8TVOUt9aK+hwUFo7TvG+titH1rwNgNzSzTEbP+aM=	\N	f	25d01463-e58a-4602-8106-99cba0ba9da9	Дмитрий		f	t	2021-12-14	dima_pepo@mail.ru	25d01463-e58a-4602-8106-99cba0ba9da9
1296	pbkdf2_sha256$260000$JW3MhCdkjjKYh7tQNPHRrs$mbgf4rkDtDdYN9WKnVIJj2Cm5NYzWPviyy8icGP+OnI=	\N	f	498c26ac-cfc6-42fe-8ec0-6af69d34fe58	Медведева Алла		f	t	2021-12-15	alla180868@mail.ru	498c26ac-cfc6-42fe-8ec0-6af69d34fe58
748	pbkdf2_sha256$260000$NmOUbhyiWvoPNgHem8Cf4i$HEgLr+XBxvezdTzI09z/0gvM9ScchbJQ78QaasEVHBw=	\N	f	7d18935a-8798-437f-a711-2b9d22402319	Никита		f	t	2021-12-14	roninwoc@yandex.ru	7d18935a-8798-437f-a711-2b9d22402319
1297	pbkdf2_sha256$260000$GiUyyv4k4mpzu08UcH8zss$NI93S4dZ94LmOQMTR6MY/AAEMTsO/7pVOzKLX/XfLRs=	\N	f	2f510ff2-ea29-46d3-9c05-e04859c7731e	ОтецДмитрий		f	t	2021-12-15	9166818569@mail.ru	2f510ff2-ea29-46d3-9c05-e04859c7731e
1298	pbkdf2_sha256$260000$pmlhe1PdHZbSAH3eIdv9HZ$q+7gYwyrEPkvSIxGVysmpe1edUcX9sqfgGUwdJJfwJU=	\N	f	31e49151-8df6-46e0-b715-9d2881817e50	Oksana		f	t	2021-12-15	oksana31051@yandex.ru	31e49151-8df6-46e0-b715-9d2881817e50
1299	pbkdf2_sha256$260000$F99Kg2vCMeE7JBNLRCaG1w$9DYnf21Vxbuwu9Q5B6qs1qeUoIR/rtGM37vCTpjwz0k=	\N	f	ea27ec18-5be2-4c3d-ab0c-28059d1b50fb	Илья		f	t	2021-12-15	iskaurov@gmail.com	ea27ec18-5be2-4c3d-ab0c-28059d1b50fb
1300	pbkdf2_sha256$260000$zQbYkybaSNmruNZuGOAug8$Eq6N2zfuvSHj+N1Jvjget4KzLPpJxsQJJJhBAkPqSzU=	\N	f	0cc931b7-d60d-4814-895e-cd3d3526c65a	Viktor Kirol		f	t	2021-12-15	viktorkirol@gmx.de	0cc931b7-d60d-4814-895e-cd3d3526c65a
1301	pbkdf2_sha256$260000$rr9FiA3mre2EQA4Yoq3RyT$kdhGaEBOwmnAGPe7j0/9Q1PouMOVHDpWY9RaB2vs5zI=	\N	f	5dcb5c7f-5ef8-43ed-85b1-fe5d1bce9292	Денис		f	t	2021-12-15	quickmai1@yandex.ru	5dcb5c7f-5ef8-43ed-85b1-fe5d1bce9292
1302	pbkdf2_sha256$260000$XjKTHP4xjurErxyR0smAwZ$WJFL7mDJLqqWtDkq99OqLlH4q4+RJQipSNEOZb3RBBU=	\N	f	41c331c4-dca9-4d9f-9a5d-0525211455d8	Дмитрий		f	t	2021-12-15	dmitriy.litvintsev@gmail.com	41c331c4-dca9-4d9f-9a5d-0525211455d8
1303	pbkdf2_sha256$260000$d17CbDL2qV9v33VsWZiZPL$+0LcTXYpbjYgBQh4vVbtSjt7i3hhb5wu3xF3xmhOVdw=	\N	f	383df6e0-bd0a-4717-8df8-2ef842582e18	Алексей		f	t	2021-12-15	alexmalf@mail.ru	383df6e0-bd0a-4717-8df8-2ef842582e18
1304	pbkdf2_sha256$260000$emVBIlaYFo4KabugODTowQ$9iOj43B71Q2VQ4VaPykCjIZwJO0kXcPnxBu9vWX4s74=	\N	f	ee8acc9b-978b-4a19-9631-90207d391962	Евгений		f	t	2021-12-15	kravc_ed_92@mail.ru	ee8acc9b-978b-4a19-9631-90207d391962
1305	pbkdf2_sha256$260000$9FGGxCbdF5pfUHwIyeW8Jb$ib2ERYViva74Vsl909B5qe7buEkpnes6Tt6v+JjRmYY=	\N	f	dc9cf050-2b6e-484b-8b17-548bb9b3e1b1	Филипп		f	t	2021-12-15	germ.filipp@gmail.com	dc9cf050-2b6e-484b-8b17-548bb9b3e1b1
1306	pbkdf2_sha256$260000$Bn6SOhsyKjPYqa0aPnsPSd$XvNJ3X6XUG/HZdwUr1DrsyTnvS8ziro/69wPhX7cXqE=	\N	f	23ce7c4c-78f7-4146-9909-d457e23cd527	Алексей		f	t	2021-12-15	lexaermolaev5@gmail.com	23ce7c4c-78f7-4146-9909-d457e23cd527
1307	pbkdf2_sha256$260000$dxATJzSmJ6R2cBQp7EzZpY$9tTzFyK/6BC1mB7G2zVZlo5gFmfR2ylEb18LyLQqBsY=	\N	f	2e23a5bc-4a1a-4549-a1a1-299c135514dd	Марина		f	t	2021-12-15	bazinamarina69@gmail.com	2e23a5bc-4a1a-4549-a1a1-299c135514dd
1308	pbkdf2_sha256$260000$uOl8huPCOmHTRO3p3sIIIu$9+v6ZFKusVqpq7zbe+eNlq61Roml2kzvGgJRrLpMyCU=	\N	f	ea144561-965d-4217-9500-219c7346f485	Николай		f	t	2021-12-15	mn.8.2015@gmail.com	ea144561-965d-4217-9500-219c7346f485
1309	pbkdf2_sha256$260000$4hO6SjVPIrUdYz6mngJxLv$8Cy0d8CTjCZgPN5wxx8lImM6XhTsA8elkD5uc0GyRmM=	\N	f	2b564238-76f4-40c4-b8b3-8f4f4c373ead	Дмитрий		f	t	2021-12-15	snipe@inbox.ru	2b564238-76f4-40c4-b8b3-8f4f4c373ead
1310	pbkdf2_sha256$260000$pvf5sb7GZgzTYD3KHpkBcu$jMWpYps13sF9hIC5JefraLE6WFv3GwCpCpWCXDbkD2k=	\N	f	2e0d2e24-f834-4a7e-9cce-2dda6440c313	Дмитрий		f	t	2021-12-15	greenembrace@gmail.com	2e0d2e24-f834-4a7e-9cce-2dda6440c313
1311	pbkdf2_sha256$260000$82wrzHJZigswcTxYSlTGrS$5nFxjfIgdZqNKnBEbjtPH5L77Bc/e6vmWzF7smUwbH8=	\N	f	e5686311-ad55-40ba-ae16-ce79d59df17f	Екатерина		f	t	2021-12-15	katik02@yandex.ru	e5686311-ad55-40ba-ae16-ce79d59df17f
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

SELECT pg_catalog.setval('public.django_migrations_id_seq', 70, true);


--
-- Name: files_document_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_document_file_id_seq', 2, true);


--
-- Name: files_image_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_image_file_id_seq', 417, true);


--
-- Name: files_video_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_video_file_id_seq', 22, true);


--
-- Name: learning_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lesson_id_seq', 30, true);


--
-- Name: learning_lessonrating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lessonrating_id_seq', 2, true);


--
-- Name: learning_questionanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_questionanswer_id_seq', 11970, true);


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

SELECT pg_catalog.setval('public.learning_testassignment_id_seq', 520, true);


--
-- Name: learning_testassignmentquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testassignmentquestion_id_seq', 5324, true);


--
-- Name: learning_testquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testquestion_id_seq', 1, true);


--
-- Name: users_completedtest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_completedtest_id_seq', 9, true);


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

SELECT pg_catalog.setval('public.users_user_id_seq', 1311, true);


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

