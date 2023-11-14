--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13 (Debian 10.13-1.pgdg90+1)
-- Dumped by pg_dump version 13.4

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: django
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO django;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: django
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

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



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO public.auth_permission VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO public.auth_permission VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO public.auth_permission VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO public.auth_permission VALUES (21, 'Can add user progress', 6, 'add_userprogress');
INSERT INTO public.auth_permission VALUES (22, 'Can change user progress', 6, 'change_userprogress');
INSERT INTO public.auth_permission VALUES (23, 'Can delete user progress', 6, 'delete_userprogress');
INSERT INTO public.auth_permission VALUES (24, 'Can view user progress', 6, 'view_userprogress');
INSERT INTO public.auth_permission VALUES (25, 'Can add user', 7, 'add_user');
INSERT INTO public.auth_permission VALUES (26, 'Can change user', 7, 'change_user');
INSERT INTO public.auth_permission VALUES (27, 'Can delete user', 7, 'delete_user');
INSERT INTO public.auth_permission VALUES (28, 'Can view user', 7, 'view_user');
INSERT INTO public.auth_permission VALUES (29, 'Can add subject', 8, 'add_subject');
INSERT INTO public.auth_permission VALUES (30, 'Can change subject', 8, 'change_subject');
INSERT INTO public.auth_permission VALUES (31, 'Can delete subject', 8, 'delete_subject');
INSERT INTO public.auth_permission VALUES (32, 'Can view subject', 8, 'view_subject');
INSERT INTO public.auth_permission VALUES (33, 'Can add lesson', 9, 'add_lesson');
INSERT INTO public.auth_permission VALUES (34, 'Can change lesson', 9, 'change_lesson');
INSERT INTO public.auth_permission VALUES (35, 'Can delete lesson', 9, 'delete_lesson');
INSERT INTO public.auth_permission VALUES (36, 'Can view lesson', 9, 'view_lesson');
INSERT INTO public.auth_permission VALUES (37, 'Can add Token', 10, 'add_token');
INSERT INTO public.auth_permission VALUES (38, 'Can change Token', 10, 'change_token');
INSERT INTO public.auth_permission VALUES (39, 'Can delete Token', 10, 'delete_token');
INSERT INTO public.auth_permission VALUES (40, 'Can view Token', 10, 'view_token');
INSERT INTO public.auth_permission VALUES (41, 'Can add token', 11, 'add_tokenproxy');
INSERT INTO public.auth_permission VALUES (42, 'Can change token', 11, 'change_tokenproxy');
INSERT INTO public.auth_permission VALUES (43, 'Can delete token', 11, 'delete_tokenproxy');
INSERT INTO public.auth_permission VALUES (44, 'Can view token', 11, 'view_tokenproxy');
INSERT INTO public.auth_permission VALUES (67, 'Can add test question', 34, 'add_testquestion');
INSERT INTO public.auth_permission VALUES (68, 'Can change test question', 34, 'change_testquestion');
INSERT INTO public.auth_permission VALUES (69, 'Can delete test question', 34, 'delete_testquestion');
INSERT INTO public.auth_permission VALUES (70, 'Can view test question', 34, 'view_testquestion');
INSERT INTO public.auth_permission VALUES (71, 'Can add question answer', 35, 'add_questionanswer');
INSERT INTO public.auth_permission VALUES (72, 'Can change question answer', 35, 'change_questionanswer');
INSERT INTO public.auth_permission VALUES (73, 'Can delete question answer', 35, 'delete_questionanswer');
INSERT INTO public.auth_permission VALUES (74, 'Can view question answer', 35, 'view_questionanswer');
INSERT INTO public.auth_permission VALUES (75, 'Can add test', 36, 'add_test');
INSERT INTO public.auth_permission VALUES (76, 'Can change test', 36, 'change_test');
INSERT INTO public.auth_permission VALUES (77, 'Can delete test', 36, 'delete_test');
INSERT INTO public.auth_permission VALUES (78, 'Can view test', 36, 'view_test');
INSERT INTO public.auth_permission VALUES (79, 'Can add lesson progress', 37, 'add_lessonprogress');
INSERT INTO public.auth_permission VALUES (80, 'Can change lesson progress', 37, 'change_lessonprogress');
INSERT INTO public.auth_permission VALUES (81, 'Can delete lesson progress', 37, 'delete_lessonprogress');
INSERT INTO public.auth_permission VALUES (82, 'Can view lesson progress', 37, 'view_lessonprogress');
INSERT INTO public.auth_permission VALUES (83, 'Can add subject progress', 38, 'add_subjectprogress');
INSERT INTO public.auth_permission VALUES (84, 'Can change subject progress', 38, 'change_subjectprogress');
INSERT INTO public.auth_permission VALUES (85, 'Can delete subject progress', 38, 'delete_subjectprogress');
INSERT INTO public.auth_permission VALUES (86, 'Can view subject progress', 38, 'view_subjectprogress');
INSERT INTO public.auth_permission VALUES (87, 'Can add password key', 39, 'add_passwordkey');
INSERT INTO public.auth_permission VALUES (88, 'Can change password key', 39, 'change_passwordkey');
INSERT INTO public.auth_permission VALUES (89, 'Can delete password key', 39, 'delete_passwordkey');
INSERT INTO public.auth_permission VALUES (90, 'Can view password key', 39, 'view_passwordkey');
INSERT INTO public.auth_permission VALUES (91, 'Can add completed lesson', 40, 'add_completedlesson');
INSERT INTO public.auth_permission VALUES (92, 'Can change completed lesson', 40, 'change_completedlesson');
INSERT INTO public.auth_permission VALUES (93, 'Can delete completed lesson', 40, 'delete_completedlesson');
INSERT INTO public.auth_permission VALUES (94, 'Can view completed lesson', 40, 'view_completedlesson');
INSERT INTO public.auth_permission VALUES (95, 'Can add test assignment', 41, 'add_testassignment');
INSERT INTO public.auth_permission VALUES (96, 'Can change test assignment', 41, 'change_testassignment');
INSERT INTO public.auth_permission VALUES (97, 'Can delete test assignment', 41, 'delete_testassignment');
INSERT INTO public.auth_permission VALUES (98, 'Can view test assignment', 41, 'view_testassignment');
INSERT INTO public.auth_permission VALUES (99, 'Can add test assignment question', 42, 'add_testassignmentquestion');
INSERT INTO public.auth_permission VALUES (100, 'Can change test assignment question', 42, 'change_testassignmentquestion');
INSERT INTO public.auth_permission VALUES (101, 'Can delete test assignment question', 42, 'delete_testassignmentquestion');
INSERT INTO public.auth_permission VALUES (102, 'Can view test assignment question', 42, 'view_testassignmentquestion');
INSERT INTO public.auth_permission VALUES (103, 'Can add lesson rating', 43, 'add_lessonrating');
INSERT INTO public.auth_permission VALUES (104, 'Can change lesson rating', 43, 'change_lessonrating');
INSERT INTO public.auth_permission VALUES (105, 'Can delete lesson rating', 43, 'delete_lessonrating');
INSERT INTO public.auth_permission VALUES (106, 'Can view lesson rating', 43, 'view_lessonrating');
INSERT INTO public.auth_permission VALUES (107, 'Can add completed test', 44, 'add_completedtest');
INSERT INTO public.auth_permission VALUES (108, 'Can change completed test', 44, 'change_completedtest');
INSERT INTO public.auth_permission VALUES (109, 'Can delete completed test', 44, 'delete_completedtest');
INSERT INTO public.auth_permission VALUES (110, 'Can view completed test', 44, 'view_completedtest');
INSERT INTO public.auth_permission VALUES (111, 'Can add document file', 45, 'add_documentfile');
INSERT INTO public.auth_permission VALUES (112, 'Can change document file', 45, 'change_documentfile');
INSERT INTO public.auth_permission VALUES (113, 'Can delete document file', 45, 'delete_documentfile');
INSERT INTO public.auth_permission VALUES (114, 'Can view document file', 45, 'view_documentfile');
INSERT INTO public.auth_permission VALUES (115, 'Can add image file', 46, 'add_imagefile');
INSERT INTO public.auth_permission VALUES (116, 'Can change image file', 46, 'change_imagefile');
INSERT INTO public.auth_permission VALUES (117, 'Can delete image file', 46, 'delete_imagefile');
INSERT INTO public.auth_permission VALUES (118, 'Can view image file', 46, 'view_imagefile');
INSERT INTO public.auth_permission VALUES (119, 'Can add video file', 47, 'add_videofile');
INSERT INTO public.auth_permission VALUES (120, 'Can change video file', 47, 'change_videofile');
INSERT INTO public.auth_permission VALUES (121, 'Can delete video file', 47, 'delete_videofile');
INSERT INTO public.auth_permission VALUES (122, 'Can view video file', 47, 'view_videofile');


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.authtoken_token VALUES ('51bf747f4d7f817afd73ebe40d50836532d369de', '2021-10-16 23:42:41.666159+00', 78);
INSERT INTO public.authtoken_token VALUES ('3b5e97346883040c1fcd64bb7f2f811b6cf7d377', '2021-10-17 00:13:11.547128+00', 36);
INSERT INTO public.authtoken_token VALUES ('c04a3470b12fcd9d2314209f846974601b614e13', '2021-11-17 16:43:59.267474+00', 81);
INSERT INTO public.authtoken_token VALUES ('8eba0cc469c600a700a6032674b7ce5bfcc17456', '2021-12-09 18:05:18.9743+00', 80);
INSERT INTO public.authtoken_token VALUES ('28069510e59149e32ae26121501fedf1500b748d', '2021-12-09 18:35:16.24307+00', 82);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.django_admin_log VALUES (1, '2021-10-10 23:31:26.687764+00', '1', 'Subject Финансы >> Lesson Purchase of Investments (5/2) >> Test', 1, '[{"added": {}}, {"added": {"name": "test question", "object": "Subject \u0424\u0438\u043d\u0430\u043d\u0441\u044b >> Lesson Purchase of Investments (5/2) >> Test >> Question (1/1)"}}]', 36, 36);
INSERT INTO public.django_admin_log VALUES (2, '2021-10-30 16:00:19.031503+00', '1', 'Subject indikatory >> Lesson None (1/3)', 2, '[]', 9, 36);
INSERT INTO public.django_admin_log VALUES (3, '2021-10-30 16:04:02.249759+00', '1', 'Subject indikatory >> Lesson None (1/3)', 2, '[]', 9, 36);
INSERT INTO public.django_admin_log VALUES (4, '2021-10-30 16:05:43.041631+00', '1', 'Subject indikatory >> Lesson williams-alligator (1/3)', 2, '[]', 9, 36);
INSERT INTO public.django_admin_log VALUES (5, '2021-11-01 16:56:57.273197+00', '1', 'SubjectProgress of admin@mail.ru', 1, '[{"added": {}}, {"added": {"name": "lesson progress", "object": "LessonProgress of SubjectProgress of admin@mail.ru"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (6, '2021-11-02 14:20:48.912201+00', '2', 'SubjectProgress of admin@mail.ru', 1, '[{"added": {}}, {"added": {"name": "lesson progress", "object": "LessonProgress of SubjectProgress of admin@mail.ru"}}, {"added": {"name": "lesson progress", "object": "LessonProgress of SubjectProgress of admin@mail.ru"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (7, '2021-11-02 14:24:32.37391+00', '2', 'SubjectProgress (finansy) of admin@mail.ru', 2, '[{"added": {"name": "completed lesson", "object": "CompletedLesson of SubjectProgress (finansy) of admin@mail.ru"}}, {"added": {"name": "completed lesson", "object": "CompletedLesson of SubjectProgress (finansy) of admin@mail.ru"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (8, '2021-11-02 14:24:42.476481+00', '1', 'SubjectProgress (indikatory) of admin@mail.ru', 2, '[{"added": {"name": "completed lesson", "object": "CompletedLesson of SubjectProgress (indikatory) of admin@mail.ru"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (9, '2021-11-02 17:22:49.522164+00', '4', 'SubjectProgress (finansy) of user11@example.com', 1, '[{"added": {}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (free-cash-flow) of Subject (finansy)"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (10, '2021-11-02 19:59:40.348734+00', '5', 'SubjectProgress (finansy) of admin@mail.ru', 1, '[{"added": {}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (free-cash-flow) of Subject (finansy)"}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (purchase-of-investments) of Subject (finansy)"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (11, '2021-11-02 20:00:18.827546+00', '6', 'SubjectProgress (indikatory) of admin@mail.ru', 1, '[{"added": {}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (williams-alligator) of Subject (indikatory)"}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (macd-moving-average-convergencedivergence) of Subject (indikatory)"}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (connors-rsi-crsi) of Subject (indikatory)"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (12, '2021-11-02 20:08:44.135623+00', '5', 'SubjectProgress (finansy) of admin@mail.ru', 2, '[{"deleted": {"name": "completed lesson", "object": "CompletedLesson (purchase-of-investments) of Subject (finansy)"}}]', 38, 36);
INSERT INTO public.django_admin_log VALUES (13, '2021-11-03 19:49:20.150638+00', '36', 'User admin@mail.ru', 2, '[{"added": {"name": "completed lesson", "object": "CompletedLesson (williams-alligator) of Subject (indikatory)"}}]', 7, 36);
INSERT INTO public.django_admin_log VALUES (14, '2021-11-03 20:04:31.767528+00', '36', 'User admin@mail.ru', 2, '[{"added": {"name": "completed lesson", "object": "CompletedLesson (free-cash-flow) of Subject (finansy)"}}, {"added": {"name": "completed lesson", "object": "CompletedLesson (macd-moving-average-convergencedivergence) of Subject (indikatory)"}}]', 7, 36);
INSERT INTO public.django_admin_log VALUES (15, '2021-11-03 20:04:48.066471+00', '78', 'User user11@example.com', 2, '[{"added": {"name": "completed lesson", "object": "CompletedLesson (free-cash-flow) of Subject (finansy)"}}]', 7, 36);
INSERT INTO public.django_admin_log VALUES (16, '2021-11-05 08:13:31.478028+00', '1', 'purchase-of-investments (2/2) (finansy) >> Test', 2, '[{"added": {"name": "test question", "object": "purchase-of-investments (2/2) (finansy) >> Test >> Question (2/2)"}}]', 36, 36);
INSERT INTO public.django_admin_log VALUES (17, '2021-11-05 08:35:30.610242+00', '1', 'finansy >> Test', 1, '[{"added": {}}, {"added": {"name": "test assignment question", "object": "finansy >> Test >> Question (1/2)"}}, {"added": {"name": "test assignment question", "object": "finansy >> Test >> Question (2/2)"}}]', 41, 36);
INSERT INTO public.django_admin_log VALUES (18, '2021-11-07 14:08:43.084276+00', '2', 'Subject indikatory', 2, '[{"changed": {"fields": ["Test"]}}]', 8, 36);
INSERT INTO public.django_admin_log VALUES (19, '2021-11-08 00:55:18.538373+00', '5', 'Test of 3f679809-d631-4470-8e2f-6146a48fcbe3', 1, '[{"added": {}}, {"added": {"name": "test assignment question", "object": "Test of 3f679809-d631-4470-8e2f-6146a48fcbe3 >> Question (3/2)"}}, {"added": {"name": "test assignment question", "object": "Test of 3f679809-d631-4470-8e2f-6146a48fcbe3 >> Question (4/2)"}}]', 41, 36);
INSERT INTO public.django_admin_log VALUES (20, '2021-11-08 00:57:14.977877+00', '4', 'free-cash-flow (1/2) (finansy)', 2, '[{"changed": {"fields": ["Test"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (21, '2021-11-08 00:58:42.344914+00', '6', 'Test of c8304f5c-a2b6-4c5f-b22e-5fc060d44c68', 1, '[{"added": {}}, {"added": {"name": "test assignment question", "object": "Test of c8304f5c-a2b6-4c5f-b22e-5fc060d44c68 >> Question (5/2)"}}, {"added": {"name": "test assignment question", "object": "Test of c8304f5c-a2b6-4c5f-b22e-5fc060d44c68 >> Question (6/2)"}}]', 41, 36);
INSERT INTO public.django_admin_log VALUES (22, '2021-11-08 01:00:12.014486+00', '5', 'purchase-of-investments (2/2) (finansy)', 2, '[{"changed": {"fields": ["Test"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (23, '2021-11-08 01:43:17.044535+00', '1', 'williams-alligator (1/3) (indikatory)', 2, '[{"changed": {"fields": ["Is visible"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (24, '2021-11-08 01:43:28.219344+00', '2', 'macd-moving-average-convergencedivergence (2/3) (indikatory)', 2, '[{"changed": {"fields": ["Is visible"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (25, '2021-11-08 01:43:34.605957+00', '3', 'connors-rsi-crsi (3/3) (indikatory)', 2, '[{"changed": {"fields": ["Is visible"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (26, '2021-11-08 01:44:16.084321+00', '3', 'Subject finansy', 2, '[{"changed": {"fields": ["Is visible"]}}]', 8, 36);
INSERT INTO public.django_admin_log VALUES (27, '2021-11-10 14:31:08.317183+00', '1', 'images/shiba-inu-helmet.png', 1, '[{"added": {}}]', 46, 36);
INSERT INTO public.django_admin_log VALUES (28, '2021-11-10 14:31:31.387546+00', '1', 'documents/Новыи_документ-6.pdf', 1, '[{"added": {}}]', 45, 36);
INSERT INTO public.django_admin_log VALUES (29, '2021-11-10 14:33:51.493444+00', '7', 'Test of 8a5858f1-c896-4f34-a20e-bab105aa0eca', 1, '[{"added": {}}, {"added": {"name": "test assignment question", "object": "Test of 8a5858f1-c896-4f34-a20e-bab105aa0eca >> Question (7/2)"}}, {"added": {"name": "test assignment question", "object": "Test of 8a5858f1-c896-4f34-a20e-bab105aa0eca >> Question (8/2)"}}]', 41, 36);
INSERT INTO public.django_admin_log VALUES (30, '2021-11-10 14:34:09.488272+00', '3', 'Subject finansy', 2, '[{"changed": {"fields": ["Test"]}}]', 8, 36);
INSERT INTO public.django_admin_log VALUES (31, '2021-11-10 14:35:38.589043+00', '3', 'Subject finansy', 2, '[{"changed": {"fields": ["Summary", "Is visible"]}}]', 8, 36);
INSERT INTO public.django_admin_log VALUES (32, '2021-11-10 14:36:04.138998+00', '4', 'free-cash-flow (1/2) (finansy)', 2, '[{"changed": {"fields": ["Image", "Document"]}}]', 9, 36);
INSERT INTO public.django_admin_log VALUES (33, '2021-11-12 00:39:46.323782+00', '2', 'images/shiba-inu-helmet_wDxl6vA.png', 1, '[{"added": {}}]', 46, 36);
INSERT INTO public.django_admin_log VALUES (34, '2021-11-12 00:53:42.914858+00', '3', 'images/shiba-samurai.jpg', 1, '[{"added": {}}]', 46, 36);
INSERT INTO public.django_admin_log VALUES (35, '2021-11-12 01:02:49.604625+00', '4', 'images/shiba-inu-helmet.png', 1, '[{"added": {}}]', 46, 36);
INSERT INTO public.django_admin_log VALUES (36, '2021-11-12 02:18:21.777989+00', '2', 'documents/3.docx', 1, '[{"added": {}}]', 45, 36);
INSERT INTO public.django_admin_log VALUES (37, '2021-11-12 03:02:02.69552+00', '5', 'images/shiba-inu-helmet.png', 1, '[{"added": {}}]', 46, 36);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (5, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (6, 'users', 'userprogress');
INSERT INTO public.django_content_type VALUES (7, 'users', 'user');
INSERT INTO public.django_content_type VALUES (8, 'learning', 'subject');
INSERT INTO public.django_content_type VALUES (9, 'learning', 'lesson');
INSERT INTO public.django_content_type VALUES (10, 'authtoken', 'token');
INSERT INTO public.django_content_type VALUES (11, 'authtoken', 'tokenproxy');
INSERT INTO public.django_content_type VALUES (34, 'learning', 'testquestion');
INSERT INTO public.django_content_type VALUES (35, 'learning', 'questionanswer');
INSERT INTO public.django_content_type VALUES (36, 'learning', 'test');
INSERT INTO public.django_content_type VALUES (37, 'users', 'lessonprogress');
INSERT INTO public.django_content_type VALUES (38, 'users', 'subjectprogress');
INSERT INTO public.django_content_type VALUES (39, 'users', 'passwordkey');
INSERT INTO public.django_content_type VALUES (40, 'users', 'completedlesson');
INSERT INTO public.django_content_type VALUES (41, 'learning', 'testassignment');
INSERT INTO public.django_content_type VALUES (42, 'learning', 'testassignmentquestion');
INSERT INTO public.django_content_type VALUES (43, 'learning', 'lessonrating');
INSERT INTO public.django_content_type VALUES (44, 'users', 'completedtest');
INSERT INTO public.django_content_type VALUES (45, 'files', 'documentfile');
INSERT INTO public.django_content_type VALUES (46, 'files', 'imagefile');
INSERT INTO public.django_content_type VALUES (47, 'files', 'videofile');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.django_migrations VALUES (1, 'learning', '0001_initial', '2021-10-09 22:14:40.587125+00');
INSERT INTO public.django_migrations VALUES (2, 'contenttypes', '0001_initial', '2021-10-09 22:14:40.598704+00');
INSERT INTO public.django_migrations VALUES (3, 'contenttypes', '0002_remove_content_type_name', '2021-10-09 22:14:40.609302+00');
INSERT INTO public.django_migrations VALUES (4, 'auth', '0001_initial', '2021-10-09 22:14:40.64393+00');
INSERT INTO public.django_migrations VALUES (5, 'auth', '0002_alter_permission_name_max_length', '2021-10-09 22:14:40.649624+00');
INSERT INTO public.django_migrations VALUES (6, 'auth', '0003_alter_user_email_max_length', '2021-10-09 22:14:40.654445+00');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0004_alter_user_username_opts', '2021-10-09 22:14:40.659795+00');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0005_alter_user_last_login_null', '2021-10-09 22:14:40.66585+00');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0006_require_contenttypes_0002', '2021-10-09 22:14:40.668859+00');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0007_alter_validators_add_error_messages', '2021-10-09 22:14:40.673838+00');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0008_alter_user_username_max_length', '2021-10-09 22:14:40.67861+00');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0009_alter_user_last_name_max_length', '2021-10-09 22:14:40.684313+00');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0010_alter_group_name_max_length', '2021-10-09 22:14:40.689847+00');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0011_update_proxy_permissions', '2021-10-09 22:14:40.695004+00');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0012_alter_user_first_name_max_length', '2021-10-09 22:14:40.699862+00');
INSERT INTO public.django_migrations VALUES (16, 'users', '0001_initial', '2021-10-09 22:14:40.775977+00');
INSERT INTO public.django_migrations VALUES (17, 'admin', '0001_initial', '2021-10-09 22:14:40.795701+00');
INSERT INTO public.django_migrations VALUES (18, 'admin', '0002_logentry_remove_auto_add', '2021-10-09 22:14:40.801848+00');
INSERT INTO public.django_migrations VALUES (19, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-09 22:14:40.809357+00');
INSERT INTO public.django_migrations VALUES (20, 'authtoken', '0001_initial', '2021-10-09 22:14:40.822977+00');
INSERT INTO public.django_migrations VALUES (21, 'authtoken', '0002_auto_20160226_1747', '2021-10-09 22:14:40.841151+00');
INSERT INTO public.django_migrations VALUES (22, 'authtoken', '0003_tokenproxy', '2021-10-09 22:14:40.845525+00');
INSERT INTO public.django_migrations VALUES (23, 'sessions', '0001_initial', '2021-10-09 22:14:40.858827+00');
INSERT INTO public.django_migrations VALUES (34, 'users', '0002_auto_20211010_0956', '2021-10-10 09:56:14.547865+00');
INSERT INTO public.django_migrations VALUES (35, 'users', '0003_alter_userprogress_unfinished_lessons', '2021-10-10 11:04:16.071343+00');
INSERT INTO public.django_migrations VALUES (36, 'learning', '0002_questionanswer_test_testquestion', '2021-10-10 19:27:08.205189+00');
INSERT INTO public.django_migrations VALUES (37, 'learning', '0003_auto_20211010_2219', '2021-10-10 22:20:02.600147+00');
INSERT INTO public.django_migrations VALUES (38, 'learning', '0004_auto_20211016_1956', '2021-10-16 19:57:01.067154+00');
INSERT INTO public.django_migrations VALUES (39, 'users', '0004_auto_20211016_1956', '2021-10-16 19:57:01.151207+00');
INSERT INTO public.django_migrations VALUES (42, 'users', '0005_passwordkey', '2021-10-16 23:04:13.983478+00');
INSERT INTO public.django_migrations VALUES (43, 'users', '0006_alter_user_date_joined', '2021-10-17 11:22:54.59495+00');
INSERT INTO public.django_migrations VALUES (44, 'learning', '0005_auto_20211017_2029', '2021-10-30 12:31:16.160551+00');
INSERT INTO public.django_migrations VALUES (45, 'users', '0007_auto_20211017_2029', '2021-10-30 12:31:16.185545+00');
INSERT INTO public.django_migrations VALUES (46, 'learning', '0006_auto_20211030_1646', '2021-10-30 16:46:28.408174+00');
INSERT INTO public.django_migrations VALUES (47, 'learning', '0007_auto_20211101_1612', '2021-11-01 16:12:33.739794+00');
INSERT INTO public.django_migrations VALUES (48, 'users', '0008_lessonprogress_lesson', '2021-11-01 16:12:33.759758+00');
INSERT INTO public.django_migrations VALUES (53, 'users', '0009_auto_20211103_1944', '2021-11-03 19:44:32.287717+00');
INSERT INTO public.django_migrations VALUES (55, 'users', '0010_alter_completedlesson_user', '2021-11-03 20:03:30.499973+00');
INSERT INTO public.django_migrations VALUES (56, 'users', '0011_auto_20211104_1358', '2021-11-04 13:58:29.634768+00');
INSERT INTO public.django_migrations VALUES (57, 'learning', '0008_auto_20211105_0830', '2021-11-05 08:31:59.912192+00');
INSERT INTO public.django_migrations VALUES (58, 'learning', '0009_auto_20211106_1311', '2021-11-06 13:11:42.484009+00');
INSERT INTO public.django_migrations VALUES (59, 'learning', '0010_auto_20211106_1533', '2021-11-06 15:33:40.971795+00');
INSERT INTO public.django_migrations VALUES (60, 'users', '0012_remove_completedlesson_user_review', '2021-11-06 15:33:40.982473+00');
INSERT INTO public.django_migrations VALUES (61, 'users', '0013_auto_20211107_1608', '2021-11-07 16:08:48.552024+00');
INSERT INTO public.django_migrations VALUES (62, 'learning', '0011_alter_questionanswer_explanation', '2021-11-08 01:17:57.342807+00');
INSERT INTO public.django_migrations VALUES (63, 'files', '0001_initial', '2021-11-08 09:35:37.619525+00');
INSERT INTO public.django_migrations VALUES (64, 'learning', '0012_auto_20211110_1428', '2021-11-10 14:28:53.66813+00');
INSERT INTO public.django_migrations VALUES (65, 'users', '0014_alter_user_uuid', '2021-11-10 14:28:53.680836+00');
INSERT INTO public.django_migrations VALUES (66, 'learning', '0002_initial', '2021-11-12 03:45:19.943747+00');
INSERT INTO public.django_migrations VALUES (49, 'learning', '0002_lessonrating_testassignment', '2021-12-12 09:31:43.114179+00');
INSERT INTO public.django_migrations VALUES (50, 'learning', '0003_auto_20211207_1645', '2021-12-12 09:31:43.118679+00');
INSERT INTO public.django_migrations VALUES (52, 'users', '0002_completedtest', '2021-12-12 09:31:43.127088+00');
INSERT INTO public.django_migrations VALUES (54, 'learning', '0004_subject_image', '2021-12-12 09:57:08.660197+00');
INSERT INTO public.django_migrations VALUES (68, 'learning', '0005_auto_20211212_1322', '2021-12-12 13:22:36.830453+00');
INSERT INTO public.django_migrations VALUES (69, 'learning', '0006_remove_testassignmentquestion_image', '2021-12-12 13:34:40.438764+00');
INSERT INTO public.django_migrations VALUES (70, 'learning', '0007_testassignmentquestion_image', '2021-12-12 13:34:51.500646+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.django_session VALUES ('20e19simmh220p2ofgkiezreg8f1pbix', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mZhcD:WMxQr2hxL3WNFdxYMMeNREUzDMZIxUPEuhelKScznHI', '2021-10-24 22:48:21.150038+00');
INSERT INTO public.django_session VALUES ('fjmgl64czp7xu3iz9fxvb78dgwv02xpr', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mc2EF:0oG7rYrrTSRKdGlMgk9KsBhU3w6WnmLgMKrqeaZUEcE', '2021-10-31 09:13:15.2393+00');
INSERT INTO public.django_session VALUES ('43u0lqmj2vuciluhwycga5g4mlljohrw', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mgqm8:P0uJMMH8egzcwQ-7gqp2hNf_CTfTDfrj3zh4oE3hsro', '2021-11-13 16:00:08.472153+00');
INSERT INTO public.django_session VALUES ('eokp4u74qu9yhi6k4t4e11icpvb40l3b', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhZsj:u1bOB3nelRWaCRDmVtGFNCVNrpofPNb_hvQEwfPnkDo', '2021-11-15 16:09:57.781111+00');
INSERT INTO public.django_session VALUES ('i8cv8je75chb6s057ul00fsstuuzrrff', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhaQw:I-uaFkCb-R_xfnrXbrKYbCXJoJaAs3Xpi88Xpup22fM', '2021-11-15 16:45:18.244072+00');
INSERT INTO public.django_session VALUES ('71vwr3cndsclmwqnypxr0r71qrv5w5sh', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mhuda:8etgnkVIAPyUMCY9tnzC7JUieu7ePYpi4E3OC4K-Qgg', '2021-11-16 14:19:42.01833+00');
INSERT INTO public.django_session VALUES ('rwgwjgpzeswupnqts0kz2hp8op88jbdk', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1miKsV:R7-aQGg_L82V5YqufNiW-Por5S_WvoC-qtSeaZNaiMg', '2021-11-17 18:20:51.42612+00');
INSERT INTO public.django_session VALUES ('fjry6al05gqjpbli9ufbpuiz7ttusrf8', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mkobi:kyO90tDvqx7HQQYWjZ8agH6zLbDVU2Lrnolix8PNniE', '2021-11-24 14:29:46.328802+00');
INSERT INTO public.django_session VALUES ('6p0d1jefsovanv9p5qp76oonyaw0l2rs', '.eJxVjEEOwiAQRe_C2pABpqW6dO8ZyAwMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IX5Xp1-h2Z4lPqTtKD6n3ScarLPLLeFX3Qpm9Tktf1cP8OCrWy1RmMjTm6s_OZPBhPMrAncFGcQIfJIkpHQ4_omcCQYcRNtBaEOVn1-QIM0jgL:1mlKbE:0sJ3Q91yUH1JJoTIiGAOODqlBKCX9wWhcM5gBCN9OHs', '2021-11-26 00:39:24.713469+00');
INSERT INTO public.django_session VALUES ('zlbokxwcwjnq75suf5x717lorzxcbty7', '.eJxVjDsOwjAQBe_iGlle_5eSPmew1j8cQIkUJxXi7iRSCmjfzLw3C7StLWy9LGHM7MqUZZffMVJ6lukg-UHTfeZpntZljPxQ-Ek7H-ZcXrfT_Tto1NteE1KtVnlCBUjCIYCgElFbnWysoDzEnTopoApts5HSFAcpojcVQbDPF_uFN0Y:1mwYkO:HVqICB7VU_8oMrCsULtVcSZsfcPwEelE_lhvSNamjlk', '2021-12-26 23:59:16.007895+00');


--
-- Data for Name: files_document_file; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.files_document_file VALUES (2, 'documents/3.docx', 'caa0976e-f1f9-463d-946e-4f4cee0de85f');


--
-- Data for Name: files_image_file; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.files_image_file VALUES (5, 'images/shiba-inu-helmet.png', '48db2be6-3590-4467-8c99-3f1f43099a33');
INSERT INTO public.files_image_file VALUES (20, 'images/robot_emoji_WPs4HE4.png', 'b25f68b4-bb66-46da-a39a-11868b0cbf2e');
INSERT INTO public.files_image_file VALUES (21, 'images/robot_emoji_jawL63C.png', '87d24dcb-9284-4e3b-ba72-2a4d98790eb7');


--
-- Data for Name: files_video_file; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: learning_lesson; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: learning_lessonrating; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: learning_questionanswer; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.learning_questionanswer VALUES (23, 0, '4455bf99-a595-4a5a-8fd2-80b6d863149b', 'string', true, 'string', 13);


--
-- Data for Name: learning_subject; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: learning_test; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: learning_testassignment; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.learning_testassignment VALUES (24, 'b2cd57ab-002c-4c09-896c-46547a404a49');


--
-- Data for Name: learning_testassignmentquestion; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.learning_testassignmentquestion VALUES (13, 0, '16be0328-6df6-4c2b-a664-430023484329', 'string', 24, NULL);


--
-- Data for Name: learning_testquestion; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: users_completedtest; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: users_lessonprogress; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: users_passwordkey; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.users_passwordkey VALUES (1, 'e668926a-f42e-412d-97fc-99a2c6ba35a8', '2021-10-17 21:05:18.839414+00', 78);


--
-- Data for Name: users_subjectprogress; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.users_user VALUES (81, 'pbkdf2_sha256$260000$emmrdbljPPIeE728lgf1Gv$6yACylllvwePlJNdoZ9tyXREVU4mFElTD6JFCj8no1w=', NULL, false, 'b92eaf02-e31b-43e3-acd9-14da2e1abf63', '', '', false, true, '2021-11-17', 'itrushin99@gmail.com', 'b92eaf02-e31b-43e3-acd9-14da2e1abf63');
INSERT INTO public.users_user VALUES (80, 'pbkdf2_sha256$260000$4RvonJVr50rI7tl9lzW6c5$BwVQEmHS1SDInBYs1EVn3aHQi1c8/iCEVJLfcinmE5A=', NULL, false, 'acae488d-2c89-4149-9f8d-4d4823f738ba', '', '', false, true, '2021-12-09', 'user123@example.com', 'acae488d-2c89-4149-9f8d-4d4823f738ba');
INSERT INTO public.users_user VALUES (82, 'pbkdf2_sha256$260000$bzAaDE6jz2sMZW5vXbZ14P$y7HCF4uvPbnbiqxpIpnHxRTdDh08JMwKs5/khEXyW7k=', NULL, false, 'efec84f4-e975-4ea9-b1a6-926847244b75', '', '', false, true, '2021-12-09', 'user7@example.com', 'efec84f4-e975-4ea9-b1a6-926847244b75');
INSERT INTO public.users_user VALUES (78, 'pbkdf2_sha256$260000$nUgb0MEowMInIoF2IHPYW9$5/Frvt3MG1wsDQZOg7NDzws9RqtDI9lryrZKAipczn4=', NULL, false, 'c33c4da8-26b5-40d3-8b25-251e4110f9ed', '', '', false, true, '2021-10-16', 'user11@example.com', 'c33c4da8-26b5-40d3-8b25-251e4110f9ed');
INSERT INTO public.users_user VALUES (36, 'pbkdf2_sha256$260000$70mJ7NtBdQ4m5tdOLHXzAL$Xuicbs9U8Jyo9rnYaXpbrI7c6sqOMRLDNw98qIcBU3w=', '2021-12-12 23:59:16.001251+00', true, 'ed422ad9-f5e0-4abe-87a6-14b3fb65b59b', '', '', true, true, '2021-10-10', 'admin@mail.ru', 'fb416278-7dcb-4fe6-bd6e-5db27c3593d3');


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--



--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--



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

SELECT pg_catalog.setval('public.files_image_file_id_seq', 21, true);


--
-- Name: files_video_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.files_video_file_id_seq', 1, false);


--
-- Name: learning_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lesson_id_seq', 4, true);


--
-- Name: learning_lessonrating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_lessonrating_id_seq', 1, false);


--
-- Name: learning_questionanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_questionanswer_id_seq', 55, true);


--
-- Name: learning_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_subject_id_seq', 2, true);


--
-- Name: learning_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_test_id_seq', 1, true);


--
-- Name: learning_testassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testassignment_id_seq', 56, true);


--
-- Name: learning_testassignmentquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testassignmentquestion_id_seq', 45, true);


--
-- Name: learning_testquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.learning_testquestion_id_seq', 1, true);


--
-- Name: users_completedtest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.users_completedtest_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.users_user_id_seq', 83, true);


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

