--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-05 23:41:46

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

DROP DATABASE soundgood;
--
-- TOC entry 3584 (class 1262 OID 25116)
-- Name: soundgood; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE soundgood WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Swedish_Sweden.1252';


ALTER DATABASE soundgood OWNER TO postgres;

\connect soundgood

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 231 (class 1259 OID 25192)
-- Name: booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking (
    id integer NOT NULL,
    lesson_price_id integer NOT NULL,
    discount_id integer,
    person_id integer
);


ALTER TABLE public.booking OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 25344)
-- Name: booking_ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_ensemble (
    booking_id integer NOT NULL,
    ensemble_id integer NOT NULL
);


ALTER TABLE public.booking_ensemble OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 25359)
-- Name: booking_group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_group_lesson (
    booking_id integer NOT NULL,
    group_lesson_id integer NOT NULL
);


ALTER TABLE public.booking_group_lesson OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 25191)
-- Name: booking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.booking_id_seq OWNER TO postgres;

--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 230
-- Name: booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.booking_id_seq OWNED BY public.booking.id;


--
-- TOC entry 232 (class 1259 OID 25213)
-- Name: contact_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person (
    person_id integer NOT NULL,
    name character varying(100) NOT NULL,
    phone_number character varying(20),
    email_address character varying(100) NOT NULL
);


ALTER TABLE public.contact_person OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25118)
-- Name: discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discount (
    id bigint NOT NULL,
    percentage numeric(10,2) NOT NULL
);


ALTER TABLE public.discount OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 25117)
-- Name: discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discount_id_seq OWNER TO postgres;

--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 214
-- Name: discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discount_id_seq OWNED BY public.discount.id;


--
-- TOC entry 217 (class 1259 OID 25125)
-- Name: email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email (
    id integer NOT NULL,
    email_address character varying(100) NOT NULL
);


ALTER TABLE public.email OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25124)
-- Name: email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_id_seq OWNER TO postgres;

--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 216
-- Name: email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_id_seq OWNED BY public.email.id;


--
-- TOC entry 240 (class 1259 OID 25304)
-- Name: ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ensemble (
    id integer NOT NULL,
    min_students integer NOT NULL,
    max_students integer NOT NULL,
    genre character varying(100) NOT NULL,
    time_slot_id integer
);


ALTER TABLE public.ensemble OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25303)
-- Name: ensemble_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_id_seq OWNER TO postgres;

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 239
-- Name: ensemble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_id_seq OWNED BY public.ensemble.id;


--
-- TOC entry 221 (class 1259 OID 25139)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    person_number character varying(13) NOT NULL,
    street character varying(100) NOT NULL,
    zip character varying(10) NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25138)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 220
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- TOC entry 238 (class 1259 OID 25293)
-- Name: time_slot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_slot (
    id integer DEFAULT nextval('public.person_id_seq'::regclass) NOT NULL,
    datetime timestamp(6) without time zone NOT NULL,
    duration time(6) without time zone NOT NULL,
    instructor_id integer
);


ALTER TABLE public.time_slot OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 25448)
-- Name: ensembles_per_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.ensembles_per_month AS
 SELECT EXTRACT(year FROM time_slot.datetime) AS year,
    EXTRACT(month FROM time_slot.datetime) AS month,
    count(EXTRACT(month FROM time_slot.datetime)) AS count
   FROM time_slot
     JOIN ensemble ON time_slot.id = ensemble.time_slot_id
  WHERE EXTRACT(year FROM time_slot.datetime) = 2022::numeric
  GROUP BY (EXTRACT(year FROM time_slot.datetime)), (EXTRACT(month FROM time_slot.datetime))
  ORDER BY (EXTRACT(month FROM time_slot.datetime));


ALTER TABLE public.ensembles_per_month OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 25316)
-- Name: group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lesson (
    id integer NOT NULL,
    min_students integer NOT NULL,
    max_students integer NOT NULL,
    instrument character varying(100) NOT NULL,
    level character varying(100) NOT NULL,
    time_slot_id integer
);


ALTER TABLE public.group_lesson OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 25315)
-- Name: group_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_id_seq OWNER TO postgres;

--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 241
-- Name: group_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_id_seq OWNED BY public.group_lesson.id;


--
-- TOC entry 253 (class 1259 OID 25452)
-- Name: group_lessons_per_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.group_lessons_per_month AS
 SELECT EXTRACT(year FROM time_slot.datetime) AS year,
    EXTRACT(month FROM time_slot.datetime) AS month,
    count(EXTRACT(month FROM time_slot.datetime)) AS count
   FROM time_slot
     JOIN group_lesson ON time_slot.id = group_lesson.time_slot_id
  WHERE EXTRACT(year FROM time_slot.datetime) = 2022::numeric
  GROUP BY (EXTRACT(year FROM time_slot.datetime)), (EXTRACT(month FROM time_slot.datetime))
  ORDER BY (EXTRACT(month FROM time_slot.datetime));


ALTER TABLE public.group_lessons_per_month OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 25328)
-- Name: individual_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson (
    id integer NOT NULL,
    instrument character varying(100) NOT NULL,
    level character varying(20) NOT NULL,
    time_slot_id integer,
    booking_id integer
);


ALTER TABLE public.individual_lesson OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 25327)
-- Name: individual_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_id_seq OWNER TO postgres;

--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 243
-- Name: individual_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_id_seq OWNED BY public.individual_lesson.id;


--
-- TOC entry 254 (class 1259 OID 25456)
-- Name: individual_lessons_per_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.individual_lessons_per_month AS
 SELECT EXTRACT(year FROM time_slot.datetime) AS year,
    EXTRACT(month FROM time_slot.datetime) AS month,
    count(EXTRACT(month FROM time_slot.datetime)) AS count
   FROM time_slot
     JOIN individual_lesson ON time_slot.id = individual_lesson.time_slot_id
  WHERE EXTRACT(year FROM time_slot.datetime) = 2022::numeric
  GROUP BY (EXTRACT(year FROM time_slot.datetime)), (EXTRACT(month FROM time_slot.datetime))
  ORDER BY (EXTRACT(month FROM time_slot.datetime));


ALTER TABLE public.individual_lessons_per_month OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 25223)
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    person_id integer NOT NULL,
    teaches_ensembles boolean NOT NULL
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 25479)
-- Name: instructor_monthly_lessons; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.instructor_monthly_lessons AS
 SELECT person.name,
    count(time_slot.datetime) AS count
   FROM (public.time_slot
     JOIN public.person ON ((time_slot.instructor_id = person.id)))
  WHERE ((time_slot.datetime >= make_date((EXTRACT(year FROM CURRENT_DATE))::integer, (EXTRACT(month FROM CURRENT_DATE))::integer, 1)) AND (time_slot.datetime <= now()))
  GROUP BY person.name;


ALTER TABLE public.instructor_monthly_lessons OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 25233)
-- Name: instructor_teach_instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_teach_instrument (
    person_id integer NOT NULL,
    teach_instrument_id integer NOT NULL
);


ALTER TABLE public.instructor_teach_instrument OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25132)
-- Name: lesson_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_price (
    id integer NOT NULL,
    lesson_type character varying(20) NOT NULL,
    level character varying(20) NOT NULL,
    price numeric(20,0) NOT NULL
);


ALTER TABLE public.lesson_price OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25131)
-- Name: lesson_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_price_id_seq OWNER TO postgres;

--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 218
-- Name: lesson_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_price_id_seq OWNED BY public.lesson_price.id;


--
-- TOC entry 251 (class 1259 OID 25444)
-- Name: lessons_per_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.lessons_per_month AS
 SELECT EXTRACT(year FROM time_slot.datetime) AS year,
    EXTRACT(month FROM time_slot.datetime) AS month,
    count(EXTRACT(month FROM time_slot.datetime)) AS count
   FROM time_slot
  WHERE EXTRACT(year FROM time_slot.datetime) = 2022::numeric
  GROUP BY (EXTRACT(year FROM time_slot.datetime)), (EXTRACT(month FROM time_slot.datetime))
  ORDER BY (EXTRACT(month FROM time_slot.datetime));


ALTER TABLE public.lessons_per_month OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 25464)
-- Name: months; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.months (
    month character varying(20),
    nr integer NOT NULL
);


ALTER TABLE public.months OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25278)
-- Name: sibling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sibling (
    person_id integer NOT NULL,
    sibling_id integer NOT NULL
);


ALTER TABLE public.sibling OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25174)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    person_id integer NOT NULL,
    level character varying(20) NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 25412)
-- Name: no_siblings; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.no_siblings AS
 SELECT count(person.name) AS count
   FROM (public.student
     JOIN public.person ON ((student.person_id = person.id)))
  WHERE (NOT (person.id IN ( SELECT sibling.person_id
           FROM public.sibling)));


ALTER TABLE public.no_siblings OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 25416)
-- Name: number_of_siblings; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.number_of_siblings AS
 SELECT count(sibling.sibling_id) AS siblings
   FROM (public.sibling
     LEFT JOIN public.person ON ((sibling.person_id = person.id)))
  GROUP BY person.name;


ALTER TABLE public.number_of_siblings OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 25420)
-- Name: one_sibling; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.one_sibling AS
 SELECT count(number_of_siblings.siblings) AS count
   FROM public.number_of_siblings
  WHERE (number_of_siblings.siblings = 1);


ALTER TABLE public.one_sibling OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 25460)
-- Name: ordered_months; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.ordered_months AS
 SELECT to_char(time_slot.datetime, 'Month'::text) AS to_char
   FROM public.time_slot
  ORDER BY time_slot.datetime;


ALTER TABLE public.ordered_months OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25145)
-- Name: person_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_email (
    email_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.person_email OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 25248)
-- Name: person_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_phone (
    phone_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.person_phone OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25161)
-- Name: phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone (
    id integer NOT NULL,
    phone_number character varying(20)
);


ALTER TABLE public.phone OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25160)
-- Name: phone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_id_seq OWNER TO postgres;

--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 223
-- Name: phone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_id_seq OWNED BY public.phone.id;


--
-- TOC entry 236 (class 1259 OID 25263)
-- Name: rent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rent (
    person_id integer NOT NULL,
    start_month character varying(20) NOT NULL,
    rent_duration integer NOT NULL,
    to_be_delivered boolean NOT NULL,
    rent_instrument_id integer NOT NULL
);


ALTER TABLE public.rent OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25168)
-- Name: rent_instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rent_instrument (
    id integer NOT NULL,
    type character varying(100) NOT NULL,
    brand character varying(100),
    rental_price numeric(20,0) NOT NULL,
    inventory_id integer NOT NULL
);


ALTER TABLE public.rent_instrument OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25167)
-- Name: rent_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rent_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rent_instrument_id_seq OWNER TO postgres;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 225
-- Name: rent_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rent_instrument_id_seq OWNED BY public.rent_instrument.id;


--
-- TOC entry 229 (class 1259 OID 25185)
-- Name: teach_instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teach_instrument (
    id integer NOT NULL,
    instrument character varying(100) NOT NULL
);


ALTER TABLE public.teach_instrument OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 25184)
-- Name: teach_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teach_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teach_instrument_id_seq OWNER TO postgres;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 228
-- Name: teach_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teach_instrument_id_seq OWNED BY public.teach_instrument.id;


--
-- TOC entry 250 (class 1259 OID 25424)
-- Name: two_siblings; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.two_siblings AS
 SELECT count(number_of_siblings.siblings) AS count
   FROM public.number_of_siblings
  WHERE (number_of_siblings.siblings = 2);


ALTER TABLE public.two_siblings OWNER TO postgres;

--
-- TOC entry 3317 (class 2604 OID 25195)
-- Name: booking id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking ALTER COLUMN id SET DEFAULT nextval('public.booking_id_seq'::regclass);


--
-- TOC entry 3311 (class 2604 OID 25128)
-- Name: email id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email ALTER COLUMN id SET DEFAULT nextval('public.email_id_seq'::regclass);


--
-- TOC entry 3319 (class 2604 OID 25307)
-- Name: ensemble id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN id SET DEFAULT nextval('public.ensemble_id_seq'::regclass);


--
-- TOC entry 3320 (class 2604 OID 25319)
-- Name: group_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN id SET DEFAULT nextval('public.group_lesson_id_seq'::regclass);


--
-- TOC entry 3321 (class 2604 OID 25331)
-- Name: individual_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN id SET DEFAULT nextval('public.individual_lesson_id_seq'::regclass);


--
-- TOC entry 3312 (class 2604 OID 25135)
-- Name: lesson_price id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_price ALTER COLUMN id SET DEFAULT nextval('public.lesson_price_id_seq'::regclass);


--
-- TOC entry 3313 (class 2604 OID 25142)
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- TOC entry 3314 (class 2604 OID 25164)
-- Name: phone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone ALTER COLUMN id SET DEFAULT nextval('public.phone_id_seq'::regclass);


--
-- TOC entry 3315 (class 2604 OID 25171)
-- Name: rent_instrument id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument ALTER COLUMN id SET DEFAULT nextval('public.rent_instrument_id_seq'::regclass);


--
-- TOC entry 3316 (class 2604 OID 25188)
-- Name: teach_instrument id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teach_instrument ALTER COLUMN id SET DEFAULT nextval('public.teach_instrument_id_seq'::regclass);


--
-- TOC entry 3562 (class 0 OID 25192)
-- Dependencies: 231
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.booking VALUES (271, 18, 2, 21);
INSERT INTO public.booking VALUES (272, 16, 2, 22);
INSERT INTO public.booking VALUES (273, 16, 2, 23);
INSERT INTO public.booking VALUES (274, 16, 0, 24);
INSERT INTO public.booking VALUES (275, 17, 1, 25);
INSERT INTO public.booking VALUES (276, 17, 1, 26);
INSERT INTO public.booking VALUES (277, 18, 0, 27);
INSERT INTO public.booking VALUES (278, 17, 0, 28);
INSERT INTO public.booking VALUES (279, 16, 0, 29);
INSERT INTO public.booking VALUES (280, 17, 0, 30);
INSERT INTO public.booking VALUES (281, 15, 2, 21);
INSERT INTO public.booking VALUES (282, 13, 2, 22);
INSERT INTO public.booking VALUES (283, 13, 2, 23);
INSERT INTO public.booking VALUES (284, 13, 0, 24);
INSERT INTO public.booking VALUES (285, 14, 1, 25);
INSERT INTO public.booking VALUES (286, 14, 1, 26);
INSERT INTO public.booking VALUES (287, 15, 0, 27);
INSERT INTO public.booking VALUES (288, 14, 0, 28);
INSERT INTO public.booking VALUES (289, 13, 0, 29);
INSERT INTO public.booking VALUES (290, 14, 0, 30);
INSERT INTO public.booking VALUES (291, 12, 2, 21);
INSERT INTO public.booking VALUES (292, 10, 2, 22);
INSERT INTO public.booking VALUES (293, 10, 2, 23);
INSERT INTO public.booking VALUES (294, 10, 0, 24);
INSERT INTO public.booking VALUES (295, 11, 1, 25);
INSERT INTO public.booking VALUES (296, 11, 1, 26);
INSERT INTO public.booking VALUES (297, 12, 0, 27);
INSERT INTO public.booking VALUES (298, 11, 0, 28);
INSERT INTO public.booking VALUES (299, 10, 0, 29);
INSERT INTO public.booking VALUES (300, 11, 0, 30);


--
-- TOC entry 3576 (class 0 OID 25344)
-- Dependencies: 245
-- Data for Name: booking_ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.booking_ensemble VALUES (282, 78);
INSERT INTO public.booking_ensemble VALUES (282, 127);
INSERT INTO public.booking_ensemble VALUES (282, 31);
INSERT INTO public.booking_ensemble VALUES (282, 46);
INSERT INTO public.booking_ensemble VALUES (282, 138);
INSERT INTO public.booking_ensemble VALUES (282, 133);
INSERT INTO public.booking_ensemble VALUES (282, 77);
INSERT INTO public.booking_ensemble VALUES (282, 142);
INSERT INTO public.booking_ensemble VALUES (282, 70);
INSERT INTO public.booking_ensemble VALUES (282, 161);
INSERT INTO public.booking_ensemble VALUES (282, 53);
INSERT INTO public.booking_ensemble VALUES (282, 131);
INSERT INTO public.booking_ensemble VALUES (282, 114);
INSERT INTO public.booking_ensemble VALUES (282, 60);
INSERT INTO public.booking_ensemble VALUES (282, 52);
INSERT INTO public.booking_ensemble VALUES (282, 95);
INSERT INTO public.booking_ensemble VALUES (282, 210);
INSERT INTO public.booking_ensemble VALUES (282, 186);
INSERT INTO public.booking_ensemble VALUES (282, 136);
INSERT INTO public.booking_ensemble VALUES (282, 73);
INSERT INTO public.booking_ensemble VALUES (282, 207);
INSERT INTO public.booking_ensemble VALUES (282, 24);
INSERT INTO public.booking_ensemble VALUES (282, 49);
INSERT INTO public.booking_ensemble VALUES (282, 121);
INSERT INTO public.booking_ensemble VALUES (282, 81);
INSERT INTO public.booking_ensemble VALUES (282, 99);
INSERT INTO public.booking_ensemble VALUES (282, 69);
INSERT INTO public.booking_ensemble VALUES (282, 147);
INSERT INTO public.booking_ensemble VALUES (282, 173);
INSERT INTO public.booking_ensemble VALUES (282, 98);
INSERT INTO public.booking_ensemble VALUES (282, 189);
INSERT INTO public.booking_ensemble VALUES (282, 125);
INSERT INTO public.booking_ensemble VALUES (282, 144);
INSERT INTO public.booking_ensemble VALUES (282, 106);
INSERT INTO public.booking_ensemble VALUES (282, 67);
INSERT INTO public.booking_ensemble VALUES (282, 156);
INSERT INTO public.booking_ensemble VALUES (282, 203);
INSERT INTO public.booking_ensemble VALUES (282, 192);
INSERT INTO public.booking_ensemble VALUES (282, 190);
INSERT INTO public.booking_ensemble VALUES (282, 184);
INSERT INTO public.booking_ensemble VALUES (282, 150);
INSERT INTO public.booking_ensemble VALUES (282, 215);
INSERT INTO public.booking_ensemble VALUES (282, 180);
INSERT INTO public.booking_ensemble VALUES (282, 119);
INSERT INTO public.booking_ensemble VALUES (282, 109);
INSERT INTO public.booking_ensemble VALUES (282, 171);
INSERT INTO public.booking_ensemble VALUES (282, 155);
INSERT INTO public.booking_ensemble VALUES (282, 40);
INSERT INTO public.booking_ensemble VALUES (282, 30);
INSERT INTO public.booking_ensemble VALUES (282, 130);
INSERT INTO public.booking_ensemble VALUES (282, 80);
INSERT INTO public.booking_ensemble VALUES (282, 27);
INSERT INTO public.booking_ensemble VALUES (282, 75);
INSERT INTO public.booking_ensemble VALUES (282, 187);
INSERT INTO public.booking_ensemble VALUES (282, 151);
INSERT INTO public.booking_ensemble VALUES (282, 124);
INSERT INTO public.booking_ensemble VALUES (282, 101);
INSERT INTO public.booking_ensemble VALUES (282, 132);
INSERT INTO public.booking_ensemble VALUES (282, 41);
INSERT INTO public.booking_ensemble VALUES (282, 168);
INSERT INTO public.booking_ensemble VALUES (282, 179);
INSERT INTO public.booking_ensemble VALUES (282, 43);
INSERT INTO public.booking_ensemble VALUES (282, 191);
INSERT INTO public.booking_ensemble VALUES (282, 139);
INSERT INTO public.booking_ensemble VALUES (282, 167);
INSERT INTO public.booking_ensemble VALUES (282, 196);
INSERT INTO public.booking_ensemble VALUES (282, 152);
INSERT INTO public.booking_ensemble VALUES (282, 198);
INSERT INTO public.booking_ensemble VALUES (282, 103);
INSERT INTO public.booking_ensemble VALUES (282, 26);
INSERT INTO public.booking_ensemble VALUES (282, 97);
INSERT INTO public.booking_ensemble VALUES (282, 65);
INSERT INTO public.booking_ensemble VALUES (282, 212);
INSERT INTO public.booking_ensemble VALUES (282, 188);
INSERT INTO public.booking_ensemble VALUES (282, 112);
INSERT INTO public.booking_ensemble VALUES (282, 126);
INSERT INTO public.booking_ensemble VALUES (282, 197);
INSERT INTO public.booking_ensemble VALUES (282, 71);
INSERT INTO public.booking_ensemble VALUES (282, 219);
INSERT INTO public.booking_ensemble VALUES (282, 22);
INSERT INTO public.booking_ensemble VALUES (282, 199);
INSERT INTO public.booking_ensemble VALUES (282, 211);
INSERT INTO public.booking_ensemble VALUES (282, 83);
INSERT INTO public.booking_ensemble VALUES (282, 94);
INSERT INTO public.booking_ensemble VALUES (282, 48);
INSERT INTO public.booking_ensemble VALUES (282, 153);
INSERT INTO public.booking_ensemble VALUES (282, 90);
INSERT INTO public.booking_ensemble VALUES (282, 35);
INSERT INTO public.booking_ensemble VALUES (282, 47);
INSERT INTO public.booking_ensemble VALUES (282, 129);
INSERT INTO public.booking_ensemble VALUES (282, 146);
INSERT INTO public.booking_ensemble VALUES (282, 59);
INSERT INTO public.booking_ensemble VALUES (282, 88);
INSERT INTO public.booking_ensemble VALUES (282, 62);
INSERT INTO public.booking_ensemble VALUES (282, 25);
INSERT INTO public.booking_ensemble VALUES (282, 87);
INSERT INTO public.booking_ensemble VALUES (282, 92);
INSERT INTO public.booking_ensemble VALUES (282, 163);
INSERT INTO public.booking_ensemble VALUES (282, 194);
INSERT INTO public.booking_ensemble VALUES (282, 107);
INSERT INTO public.booking_ensemble VALUES (282, 209);
INSERT INTO public.booking_ensemble VALUES (282, 54);
INSERT INTO public.booking_ensemble VALUES (282, 164);
INSERT INTO public.booking_ensemble VALUES (282, 120);
INSERT INTO public.booking_ensemble VALUES (282, 160);
INSERT INTO public.booking_ensemble VALUES (282, 177);
INSERT INTO public.booking_ensemble VALUES (282, 137);
INSERT INTO public.booking_ensemble VALUES (282, 100);
INSERT INTO public.booking_ensemble VALUES (282, 208);
INSERT INTO public.booking_ensemble VALUES (282, 141);
INSERT INTO public.booking_ensemble VALUES (282, 51);
INSERT INTO public.booking_ensemble VALUES (282, 135);
INSERT INTO public.booking_ensemble VALUES (282, 110);
INSERT INTO public.booking_ensemble VALUES (282, 214);
INSERT INTO public.booking_ensemble VALUES (282, 166);
INSERT INTO public.booking_ensemble VALUES (282, 162);
INSERT INTO public.booking_ensemble VALUES (282, 204);
INSERT INTO public.booking_ensemble VALUES (282, 20);
INSERT INTO public.booking_ensemble VALUES (283, 116);
INSERT INTO public.booking_ensemble VALUES (283, 37);
INSERT INTO public.booking_ensemble VALUES (283, 202);
INSERT INTO public.booking_ensemble VALUES (283, 46);
INSERT INTO public.booking_ensemble VALUES (283, 34);
INSERT INTO public.booking_ensemble VALUES (283, 138);
INSERT INTO public.booking_ensemble VALUES (283, 185);
INSERT INTO public.booking_ensemble VALUES (283, 133);
INSERT INTO public.booking_ensemble VALUES (283, 77);
INSERT INTO public.booking_ensemble VALUES (283, 142);
INSERT INTO public.booking_ensemble VALUES (283, 70);
INSERT INTO public.booking_ensemble VALUES (283, 143);
INSERT INTO public.booking_ensemble VALUES (283, 161);
INSERT INTO public.booking_ensemble VALUES (283, 170);
INSERT INTO public.booking_ensemble VALUES (283, 114);
INSERT INTO public.booking_ensemble VALUES (283, 74);
INSERT INTO public.booking_ensemble VALUES (283, 52);
INSERT INTO public.booking_ensemble VALUES (283, 95);
INSERT INTO public.booking_ensemble VALUES (283, 123);
INSERT INTO public.booking_ensemble VALUES (283, 186);
INSERT INTO public.booking_ensemble VALUES (283, 32);
INSERT INTO public.booking_ensemble VALUES (283, 136);
INSERT INTO public.booking_ensemble VALUES (283, 145);
INSERT INTO public.booking_ensemble VALUES (283, 82);
INSERT INTO public.booking_ensemble VALUES (283, 128);
INSERT INTO public.booking_ensemble VALUES (283, 207);
INSERT INTO public.booking_ensemble VALUES (283, 24);
INSERT INTO public.booking_ensemble VALUES (283, 44);
INSERT INTO public.booking_ensemble VALUES (283, 216);
INSERT INTO public.booking_ensemble VALUES (283, 21);
INSERT INTO public.booking_ensemble VALUES (283, 68);
INSERT INTO public.booking_ensemble VALUES (283, 49);
INSERT INTO public.booking_ensemble VALUES (283, 140);
INSERT INTO public.booking_ensemble VALUES (283, 99);
INSERT INTO public.booking_ensemble VALUES (283, 69);
INSERT INTO public.booking_ensemble VALUES (283, 118);
INSERT INTO public.booking_ensemble VALUES (283, 213);
INSERT INTO public.booking_ensemble VALUES (283, 147);
INSERT INTO public.booking_ensemble VALUES (283, 98);
INSERT INTO public.booking_ensemble VALUES (283, 158);
INSERT INTO public.booking_ensemble VALUES (283, 144);
INSERT INTO public.booking_ensemble VALUES (283, 106);
INSERT INTO public.booking_ensemble VALUES (283, 156);
INSERT INTO public.booking_ensemble VALUES (283, 203);
INSERT INTO public.booking_ensemble VALUES (283, 190);
INSERT INTO public.booking_ensemble VALUES (283, 181);
INSERT INTO public.booking_ensemble VALUES (283, 56);
INSERT INTO public.booking_ensemble VALUES (283, 184);
INSERT INTO public.booking_ensemble VALUES (283, 215);
INSERT INTO public.booking_ensemble VALUES (283, 180);
INSERT INTO public.booking_ensemble VALUES (283, 119);
INSERT INTO public.booking_ensemble VALUES (283, 109);
INSERT INTO public.booking_ensemble VALUES (283, 171);
INSERT INTO public.booking_ensemble VALUES (283, 29);
INSERT INTO public.booking_ensemble VALUES (283, 178);
INSERT INTO public.booking_ensemble VALUES (283, 159);
INSERT INTO public.booking_ensemble VALUES (283, 66);
INSERT INTO public.booking_ensemble VALUES (283, 40);
INSERT INTO public.booking_ensemble VALUES (283, 45);
INSERT INTO public.booking_ensemble VALUES (283, 30);
INSERT INTO public.booking_ensemble VALUES (283, 130);
INSERT INTO public.booking_ensemble VALUES (283, 27);
INSERT INTO public.booking_ensemble VALUES (283, 64);
INSERT INTO public.booking_ensemble VALUES (283, 151);
INSERT INTO public.booking_ensemble VALUES (283, 124);
INSERT INTO public.booking_ensemble VALUES (283, 101);
INSERT INTO public.booking_ensemble VALUES (283, 132);
INSERT INTO public.booking_ensemble VALUES (283, 63);
INSERT INTO public.booking_ensemble VALUES (283, 41);
INSERT INTO public.booking_ensemble VALUES (283, 174);
INSERT INTO public.booking_ensemble VALUES (283, 206);
INSERT INTO public.booking_ensemble VALUES (283, 179);
INSERT INTO public.booking_ensemble VALUES (283, 43);
INSERT INTO public.booking_ensemble VALUES (283, 139);
INSERT INTO public.booking_ensemble VALUES (283, 84);
INSERT INTO public.booking_ensemble VALUES (283, 167);
INSERT INTO public.booking_ensemble VALUES (283, 157);
INSERT INTO public.booking_ensemble VALUES (283, 196);
INSERT INTO public.booking_ensemble VALUES (283, 152);
INSERT INTO public.booking_ensemble VALUES (283, 198);
INSERT INTO public.booking_ensemble VALUES (283, 58);
INSERT INTO public.booking_ensemble VALUES (283, 103);
INSERT INTO public.booking_ensemble VALUES (283, 26);
INSERT INTO public.booking_ensemble VALUES (283, 111);
INSERT INTO public.booking_ensemble VALUES (283, 72);
INSERT INTO public.booking_ensemble VALUES (283, 65);
INSERT INTO public.booking_ensemble VALUES (283, 122);
INSERT INTO public.booking_ensemble VALUES (283, 212);
INSERT INTO public.booking_ensemble VALUES (283, 126);
INSERT INTO public.booking_ensemble VALUES (283, 219);
INSERT INTO public.booking_ensemble VALUES (283, 22);
INSERT INTO public.booking_ensemble VALUES (283, 217);
INSERT INTO public.booking_ensemble VALUES (283, 211);
INSERT INTO public.booking_ensemble VALUES (283, 83);
INSERT INTO public.booking_ensemble VALUES (283, 48);
INSERT INTO public.booking_ensemble VALUES (283, 195);
INSERT INTO public.booking_ensemble VALUES (283, 200);
INSERT INTO public.booking_ensemble VALUES (283, 90);
INSERT INTO public.booking_ensemble VALUES (283, 183);
INSERT INTO public.booking_ensemble VALUES (283, 35);
INSERT INTO public.booking_ensemble VALUES (283, 59);
INSERT INTO public.booking_ensemble VALUES (283, 218);
INSERT INTO public.booking_ensemble VALUES (283, 25);
INSERT INTO public.booking_ensemble VALUES (283, 113);
INSERT INTO public.booking_ensemble VALUES (283, 163);
INSERT INTO public.booking_ensemble VALUES (283, 194);
INSERT INTO public.booking_ensemble VALUES (283, 209);
INSERT INTO public.booking_ensemble VALUES (283, 164);
INSERT INTO public.booking_ensemble VALUES (283, 120);
INSERT INTO public.booking_ensemble VALUES (283, 160);
INSERT INTO public.booking_ensemble VALUES (283, 208);
INSERT INTO public.booking_ensemble VALUES (283, 141);
INSERT INTO public.booking_ensemble VALUES (283, 23);
INSERT INTO public.booking_ensemble VALUES (283, 42);
INSERT INTO public.booking_ensemble VALUES (283, 51);
INSERT INTO public.booking_ensemble VALUES (283, 57);
INSERT INTO public.booking_ensemble VALUES (283, 79);
INSERT INTO public.booking_ensemble VALUES (283, 182);
INSERT INTO public.booking_ensemble VALUES (283, 105);
INSERT INTO public.booking_ensemble VALUES (283, 214);
INSERT INTO public.booking_ensemble VALUES (283, 162);
INSERT INTO public.booking_ensemble VALUES (286, 116);
INSERT INTO public.booking_ensemble VALUES (286, 169);
INSERT INTO public.booking_ensemble VALUES (286, 127);
INSERT INTO public.booking_ensemble VALUES (286, 76);
INSERT INTO public.booking_ensemble VALUES (286, 31);
INSERT INTO public.booking_ensemble VALUES (286, 202);
INSERT INTO public.booking_ensemble VALUES (286, 134);
INSERT INTO public.booking_ensemble VALUES (286, 46);
INSERT INTO public.booking_ensemble VALUES (286, 138);
INSERT INTO public.booking_ensemble VALUES (286, 154);
INSERT INTO public.booking_ensemble VALUES (286, 77);
INSERT INTO public.booking_ensemble VALUES (286, 142);
INSERT INTO public.booking_ensemble VALUES (286, 70);
INSERT INTO public.booking_ensemble VALUES (286, 143);
INSERT INTO public.booking_ensemble VALUES (286, 161);
INSERT INTO public.booking_ensemble VALUES (286, 74);
INSERT INTO public.booking_ensemble VALUES (286, 95);
INSERT INTO public.booking_ensemble VALUES (286, 186);
INSERT INTO public.booking_ensemble VALUES (286, 32);
INSERT INTO public.booking_ensemble VALUES (286, 108);
INSERT INTO public.booking_ensemble VALUES (286, 136);
INSERT INTO public.booking_ensemble VALUES (286, 82);
INSERT INTO public.booking_ensemble VALUES (286, 24);
INSERT INTO public.booking_ensemble VALUES (286, 44);
INSERT INTO public.booking_ensemble VALUES (286, 216);
INSERT INTO public.booking_ensemble VALUES (286, 68);
INSERT INTO public.booking_ensemble VALUES (286, 121);
INSERT INTO public.booking_ensemble VALUES (286, 81);
INSERT INTO public.booking_ensemble VALUES (286, 99);
INSERT INTO public.booking_ensemble VALUES (286, 69);
INSERT INTO public.booking_ensemble VALUES (286, 104);
INSERT INTO public.booking_ensemble VALUES (286, 147);
INSERT INTO public.booking_ensemble VALUES (286, 144);
INSERT INTO public.booking_ensemble VALUES (286, 106);
INSERT INTO public.booking_ensemble VALUES (286, 67);
INSERT INTO public.booking_ensemble VALUES (286, 156);
INSERT INTO public.booking_ensemble VALUES (286, 190);
INSERT INTO public.booking_ensemble VALUES (286, 56);
INSERT INTO public.booking_ensemble VALUES (286, 215);
INSERT INTO public.booking_ensemble VALUES (286, 180);
INSERT INTO public.booking_ensemble VALUES (286, 119);
INSERT INTO public.booking_ensemble VALUES (286, 109);
INSERT INTO public.booking_ensemble VALUES (286, 171);
INSERT INTO public.booking_ensemble VALUES (286, 29);
INSERT INTO public.booking_ensemble VALUES (286, 159);
INSERT INTO public.booking_ensemble VALUES (286, 55);
INSERT INTO public.booking_ensemble VALUES (286, 155);
INSERT INTO public.booking_ensemble VALUES (286, 45);
INSERT INTO public.booking_ensemble VALUES (286, 30);
INSERT INTO public.booking_ensemble VALUES (286, 80);
INSERT INTO public.booking_ensemble VALUES (286, 27);
INSERT INTO public.booking_ensemble VALUES (286, 33);
INSERT INTO public.booking_ensemble VALUES (286, 64);
INSERT INTO public.booking_ensemble VALUES (286, 75);
INSERT INTO public.booking_ensemble VALUES (286, 187);
INSERT INTO public.booking_ensemble VALUES (286, 101);
INSERT INTO public.booking_ensemble VALUES (286, 132);
INSERT INTO public.booking_ensemble VALUES (286, 63);
INSERT INTO public.booking_ensemble VALUES (286, 191);
INSERT INTO public.booking_ensemble VALUES (286, 28);
INSERT INTO public.booking_ensemble VALUES (286, 172);
INSERT INTO public.booking_ensemble VALUES (286, 84);
INSERT INTO public.booking_ensemble VALUES (286, 176);
INSERT INTO public.booking_ensemble VALUES (286, 152);
INSERT INTO public.booking_ensemble VALUES (286, 198);
INSERT INTO public.booking_ensemble VALUES (286, 86);
INSERT INTO public.booking_ensemble VALUES (286, 26);
INSERT INTO public.booking_ensemble VALUES (286, 111);
INSERT INTO public.booking_ensemble VALUES (286, 65);
INSERT INTO public.booking_ensemble VALUES (286, 122);
INSERT INTO public.booking_ensemble VALUES (286, 188);
INSERT INTO public.booking_ensemble VALUES (286, 112);
INSERT INTO public.booking_ensemble VALUES (286, 197);
INSERT INTO public.booking_ensemble VALUES (286, 71);
INSERT INTO public.booking_ensemble VALUES (286, 219);
INSERT INTO public.booking_ensemble VALUES (286, 217);
INSERT INTO public.booking_ensemble VALUES (286, 199);
INSERT INTO public.booking_ensemble VALUES (286, 211);
INSERT INTO public.booking_ensemble VALUES (286, 83);
INSERT INTO public.booking_ensemble VALUES (286, 50);
INSERT INTO public.booking_ensemble VALUES (286, 94);
INSERT INTO public.booking_ensemble VALUES (286, 149);
INSERT INTO public.booking_ensemble VALUES (286, 48);
INSERT INTO public.booking_ensemble VALUES (286, 153);
INSERT INTO public.booking_ensemble VALUES (286, 200);
INSERT INTO public.booking_ensemble VALUES (286, 90);
INSERT INTO public.booking_ensemble VALUES (286, 183);
INSERT INTO public.booking_ensemble VALUES (286, 89);
INSERT INTO public.booking_ensemble VALUES (286, 35);
INSERT INTO public.booking_ensemble VALUES (286, 129);
INSERT INTO public.booking_ensemble VALUES (286, 146);
INSERT INTO public.booking_ensemble VALUES (286, 88);
INSERT INTO public.booking_ensemble VALUES (286, 218);
INSERT INTO public.booking_ensemble VALUES (286, 62);
INSERT INTO public.booking_ensemble VALUES (286, 87);
INSERT INTO public.booking_ensemble VALUES (286, 113);
INSERT INTO public.booking_ensemble VALUES (286, 107);
INSERT INTO public.booking_ensemble VALUES (286, 209);
INSERT INTO public.booking_ensemble VALUES (286, 117);
INSERT INTO public.booking_ensemble VALUES (286, 54);
INSERT INTO public.booking_ensemble VALUES (286, 164);
INSERT INTO public.booking_ensemble VALUES (286, 120);
INSERT INTO public.booking_ensemble VALUES (286, 137);
INSERT INTO public.booking_ensemble VALUES (286, 38);
INSERT INTO public.booking_ensemble VALUES (286, 208);
INSERT INTO public.booking_ensemble VALUES (286, 115);
INSERT INTO public.booking_ensemble VALUES (286, 51);
INSERT INTO public.booking_ensemble VALUES (286, 57);
INSERT INTO public.booking_ensemble VALUES (286, 79);
INSERT INTO public.booking_ensemble VALUES (286, 182);
INSERT INTO public.booking_ensemble VALUES (286, 96);
INSERT INTO public.booking_ensemble VALUES (286, 110);
INSERT INTO public.booking_ensemble VALUES (286, 166);
INSERT INTO public.booking_ensemble VALUES (286, 93);
INSERT INTO public.booking_ensemble VALUES (289, 116);
INSERT INTO public.booking_ensemble VALUES (289, 169);
INSERT INTO public.booking_ensemble VALUES (289, 78);
INSERT INTO public.booking_ensemble VALUES (289, 127);
INSERT INTO public.booking_ensemble VALUES (289, 37);
INSERT INTO public.booking_ensemble VALUES (289, 76);
INSERT INTO public.booking_ensemble VALUES (289, 31);
INSERT INTO public.booking_ensemble VALUES (289, 202);
INSERT INTO public.booking_ensemble VALUES (289, 134);
INSERT INTO public.booking_ensemble VALUES (289, 46);
INSERT INTO public.booking_ensemble VALUES (289, 36);
INSERT INTO public.booking_ensemble VALUES (289, 185);
INSERT INTO public.booking_ensemble VALUES (289, 133);
INSERT INTO public.booking_ensemble VALUES (289, 77);
INSERT INTO public.booking_ensemble VALUES (289, 142);
INSERT INTO public.booking_ensemble VALUES (289, 70);
INSERT INTO public.booking_ensemble VALUES (289, 161);
INSERT INTO public.booking_ensemble VALUES (289, 131);
INSERT INTO public.booking_ensemble VALUES (289, 52);
INSERT INTO public.booking_ensemble VALUES (289, 95);
INSERT INTO public.booking_ensemble VALUES (289, 210);
INSERT INTO public.booking_ensemble VALUES (289, 123);
INSERT INTO public.booking_ensemble VALUES (289, 165);
INSERT INTO public.booking_ensemble VALUES (289, 32);
INSERT INTO public.booking_ensemble VALUES (289, 136);
INSERT INTO public.booking_ensemble VALUES (289, 91);
INSERT INTO public.booking_ensemble VALUES (289, 145);
INSERT INTO public.booking_ensemble VALUES (289, 82);
INSERT INTO public.booking_ensemble VALUES (289, 207);
INSERT INTO public.booking_ensemble VALUES (289, 24);
INSERT INTO public.booking_ensemble VALUES (289, 44);
INSERT INTO public.booking_ensemble VALUES (289, 216);
INSERT INTO public.booking_ensemble VALUES (289, 68);
INSERT INTO public.booking_ensemble VALUES (289, 81);
INSERT INTO public.booking_ensemble VALUES (289, 99);
INSERT INTO public.booking_ensemble VALUES (289, 69);
INSERT INTO public.booking_ensemble VALUES (289, 118);
INSERT INTO public.booking_ensemble VALUES (289, 104);
INSERT INTO public.booking_ensemble VALUES (289, 85);
INSERT INTO public.booking_ensemble VALUES (289, 173);
INSERT INTO public.booking_ensemble VALUES (289, 98);
INSERT INTO public.booking_ensemble VALUES (289, 189);
INSERT INTO public.booking_ensemble VALUES (289, 158);
INSERT INTO public.booking_ensemble VALUES (289, 144);
INSERT INTO public.booking_ensemble VALUES (289, 67);
INSERT INTO public.booking_ensemble VALUES (289, 156);
INSERT INTO public.booking_ensemble VALUES (289, 192);
INSERT INTO public.booking_ensemble VALUES (289, 190);
INSERT INTO public.booking_ensemble VALUES (289, 56);
INSERT INTO public.booking_ensemble VALUES (289, 184);
INSERT INTO public.booking_ensemble VALUES (289, 150);
INSERT INTO public.booking_ensemble VALUES (289, 175);
INSERT INTO public.booking_ensemble VALUES (289, 119);
INSERT INTO public.booking_ensemble VALUES (289, 109);
INSERT INTO public.booking_ensemble VALUES (289, 29);
INSERT INTO public.booking_ensemble VALUES (289, 178);
INSERT INTO public.booking_ensemble VALUES (289, 55);
INSERT INTO public.booking_ensemble VALUES (289, 66);
INSERT INTO public.booking_ensemble VALUES (289, 155);
INSERT INTO public.booking_ensemble VALUES (289, 193);
INSERT INTO public.booking_ensemble VALUES (289, 130);
INSERT INTO public.booking_ensemble VALUES (289, 80);
INSERT INTO public.booking_ensemble VALUES (289, 33);
INSERT INTO public.booking_ensemble VALUES (289, 64);
INSERT INTO public.booking_ensemble VALUES (289, 124);
INSERT INTO public.booking_ensemble VALUES (289, 174);
INSERT INTO public.booking_ensemble VALUES (289, 206);
INSERT INTO public.booking_ensemble VALUES (289, 201);
INSERT INTO public.booking_ensemble VALUES (289, 168);
INSERT INTO public.booking_ensemble VALUES (289, 179);
INSERT INTO public.booking_ensemble VALUES (289, 43);
INSERT INTO public.booking_ensemble VALUES (289, 191);
INSERT INTO public.booking_ensemble VALUES (289, 139);
INSERT INTO public.booking_ensemble VALUES (289, 28);
INSERT INTO public.booking_ensemble VALUES (289, 172);
INSERT INTO public.booking_ensemble VALUES (289, 84);
INSERT INTO public.booking_ensemble VALUES (289, 167);
INSERT INTO public.booking_ensemble VALUES (289, 157);
INSERT INTO public.booking_ensemble VALUES (289, 152);
INSERT INTO public.booking_ensemble VALUES (289, 198);
INSERT INTO public.booking_ensemble VALUES (289, 103);
INSERT INTO public.booking_ensemble VALUES (289, 111);
INSERT INTO public.booking_ensemble VALUES (289, 72);
INSERT INTO public.booking_ensemble VALUES (289, 65);
INSERT INTO public.booking_ensemble VALUES (289, 122);
INSERT INTO public.booking_ensemble VALUES (289, 212);
INSERT INTO public.booking_ensemble VALUES (289, 126);
INSERT INTO public.booking_ensemble VALUES (289, 197);
INSERT INTO public.booking_ensemble VALUES (289, 71);
INSERT INTO public.booking_ensemble VALUES (289, 22);
INSERT INTO public.booking_ensemble VALUES (289, 217);
INSERT INTO public.booking_ensemble VALUES (289, 199);
INSERT INTO public.booking_ensemble VALUES (289, 61);
INSERT INTO public.booking_ensemble VALUES (289, 83);
INSERT INTO public.booking_ensemble VALUES (289, 50);
INSERT INTO public.booking_ensemble VALUES (289, 149);
INSERT INTO public.booking_ensemble VALUES (289, 153);
INSERT INTO public.booking_ensemble VALUES (289, 195);
INSERT INTO public.booking_ensemble VALUES (289, 200);
INSERT INTO public.booking_ensemble VALUES (289, 90);
INSERT INTO public.booking_ensemble VALUES (289, 183);
INSERT INTO public.booking_ensemble VALUES (289, 89);
INSERT INTO public.booking_ensemble VALUES (289, 35);
INSERT INTO public.booking_ensemble VALUES (289, 47);
INSERT INTO public.booking_ensemble VALUES (289, 129);
INSERT INTO public.booking_ensemble VALUES (289, 146);
INSERT INTO public.booking_ensemble VALUES (289, 59);
INSERT INTO public.booking_ensemble VALUES (289, 218);
INSERT INTO public.booking_ensemble VALUES (289, 62);
INSERT INTO public.booking_ensemble VALUES (289, 87);
INSERT INTO public.booking_ensemble VALUES (289, 194);
INSERT INTO public.booking_ensemble VALUES (289, 209);
INSERT INTO public.booking_ensemble VALUES (289, 117);
INSERT INTO public.booking_ensemble VALUES (289, 164);
INSERT INTO public.booking_ensemble VALUES (289, 120);
INSERT INTO public.booking_ensemble VALUES (289, 160);
INSERT INTO public.booking_ensemble VALUES (289, 137);
INSERT INTO public.booking_ensemble VALUES (289, 100);
INSERT INTO public.booking_ensemble VALUES (289, 208);
INSERT INTO public.booking_ensemble VALUES (289, 39);
INSERT INTO public.booking_ensemble VALUES (289, 141);
INSERT INTO public.booking_ensemble VALUES (289, 115);
INSERT INTO public.booking_ensemble VALUES (289, 51);
INSERT INTO public.booking_ensemble VALUES (289, 57);
INSERT INTO public.booking_ensemble VALUES (289, 79);
INSERT INTO public.booking_ensemble VALUES (289, 182);
INSERT INTO public.booking_ensemble VALUES (289, 96);
INSERT INTO public.booking_ensemble VALUES (289, 135);
INSERT INTO public.booking_ensemble VALUES (289, 110);
INSERT INTO public.booking_ensemble VALUES (289, 105);
INSERT INTO public.booking_ensemble VALUES (289, 214);
INSERT INTO public.booking_ensemble VALUES (289, 166);
INSERT INTO public.booking_ensemble VALUES (289, 93);
INSERT INTO public.booking_ensemble VALUES (289, 162);
INSERT INTO public.booking_ensemble VALUES (289, 20);
INSERT INTO public.booking_ensemble VALUES (288, 169);
INSERT INTO public.booking_ensemble VALUES (288, 37);
INSERT INTO public.booking_ensemble VALUES (288, 76);
INSERT INTO public.booking_ensemble VALUES (288, 31);
INSERT INTO public.booking_ensemble VALUES (288, 202);
INSERT INTO public.booking_ensemble VALUES (288, 46);
INSERT INTO public.booking_ensemble VALUES (288, 34);
INSERT INTO public.booking_ensemble VALUES (288, 138);
INSERT INTO public.booking_ensemble VALUES (288, 154);
INSERT INTO public.booking_ensemble VALUES (288, 77);
INSERT INTO public.booking_ensemble VALUES (288, 70);
INSERT INTO public.booking_ensemble VALUES (288, 143);
INSERT INTO public.booking_ensemble VALUES (288, 161);
INSERT INTO public.booking_ensemble VALUES (288, 114);
INSERT INTO public.booking_ensemble VALUES (288, 60);
INSERT INTO public.booking_ensemble VALUES (288, 74);
INSERT INTO public.booking_ensemble VALUES (288, 52);
INSERT INTO public.booking_ensemble VALUES (288, 123);
INSERT INTO public.booking_ensemble VALUES (288, 32);
INSERT INTO public.booking_ensemble VALUES (288, 108);
INSERT INTO public.booking_ensemble VALUES (288, 136);
INSERT INTO public.booking_ensemble VALUES (288, 145);
INSERT INTO public.booking_ensemble VALUES (288, 82);
INSERT INTO public.booking_ensemble VALUES (288, 73);
INSERT INTO public.booking_ensemble VALUES (288, 128);
INSERT INTO public.booking_ensemble VALUES (288, 207);
INSERT INTO public.booking_ensemble VALUES (288, 216);
INSERT INTO public.booking_ensemble VALUES (288, 21);
INSERT INTO public.booking_ensemble VALUES (288, 68);
INSERT INTO public.booking_ensemble VALUES (288, 140);
INSERT INTO public.booking_ensemble VALUES (288, 99);
INSERT INTO public.booking_ensemble VALUES (288, 104);
INSERT INTO public.booking_ensemble VALUES (288, 147);
INSERT INTO public.booking_ensemble VALUES (288, 85);
INSERT INTO public.booking_ensemble VALUES (288, 189);
INSERT INTO public.booking_ensemble VALUES (288, 158);
INSERT INTO public.booking_ensemble VALUES (288, 192);
INSERT INTO public.booking_ensemble VALUES (288, 190);
INSERT INTO public.booking_ensemble VALUES (288, 56);
INSERT INTO public.booking_ensemble VALUES (288, 184);
INSERT INTO public.booking_ensemble VALUES (288, 180);
INSERT INTO public.booking_ensemble VALUES (288, 175);
INSERT INTO public.booking_ensemble VALUES (288, 109);
INSERT INTO public.booking_ensemble VALUES (288, 29);
INSERT INTO public.booking_ensemble VALUES (288, 178);
INSERT INTO public.booking_ensemble VALUES (288, 159);
INSERT INTO public.booking_ensemble VALUES (288, 66);
INSERT INTO public.booking_ensemble VALUES (288, 45);
INSERT INTO public.booking_ensemble VALUES (288, 130);
INSERT INTO public.booking_ensemble VALUES (288, 80);
INSERT INTO public.booking_ensemble VALUES (288, 27);
INSERT INTO public.booking_ensemble VALUES (288, 33);
INSERT INTO public.booking_ensemble VALUES (288, 64);
INSERT INTO public.booking_ensemble VALUES (288, 75);
INSERT INTO public.booking_ensemble VALUES (288, 187);
INSERT INTO public.booking_ensemble VALUES (288, 151);
INSERT INTO public.booking_ensemble VALUES (288, 63);
INSERT INTO public.booking_ensemble VALUES (288, 41);
INSERT INTO public.booking_ensemble VALUES (288, 206);
INSERT INTO public.booking_ensemble VALUES (288, 201);
INSERT INTO public.booking_ensemble VALUES (288, 168);
INSERT INTO public.booking_ensemble VALUES (288, 179);
INSERT INTO public.booking_ensemble VALUES (288, 43);
INSERT INTO public.booking_ensemble VALUES (288, 139);
INSERT INTO public.booking_ensemble VALUES (288, 28);
INSERT INTO public.booking_ensemble VALUES (288, 167);
INSERT INTO public.booking_ensemble VALUES (288, 157);
INSERT INTO public.booking_ensemble VALUES (288, 196);
INSERT INTO public.booking_ensemble VALUES (288, 152);
INSERT INTO public.booking_ensemble VALUES (288, 198);
INSERT INTO public.booking_ensemble VALUES (288, 58);
INSERT INTO public.booking_ensemble VALUES (288, 205);
INSERT INTO public.booking_ensemble VALUES (288, 26);
INSERT INTO public.booking_ensemble VALUES (288, 97);
INSERT INTO public.booking_ensemble VALUES (288, 111);
INSERT INTO public.booking_ensemble VALUES (288, 72);
INSERT INTO public.booking_ensemble VALUES (288, 65);
INSERT INTO public.booking_ensemble VALUES (288, 212);
INSERT INTO public.booking_ensemble VALUES (288, 188);
INSERT INTO public.booking_ensemble VALUES (288, 112);
INSERT INTO public.booking_ensemble VALUES (288, 197);
INSERT INTO public.booking_ensemble VALUES (288, 71);
INSERT INTO public.booking_ensemble VALUES (288, 219);
INSERT INTO public.booking_ensemble VALUES (288, 22);
INSERT INTO public.booking_ensemble VALUES (288, 217);
INSERT INTO public.booking_ensemble VALUES (288, 199);
INSERT INTO public.booking_ensemble VALUES (288, 61);
INSERT INTO public.booking_ensemble VALUES (288, 83);
INSERT INTO public.booking_ensemble VALUES (288, 50);
INSERT INTO public.booking_ensemble VALUES (288, 94);
INSERT INTO public.booking_ensemble VALUES (288, 149);
INSERT INTO public.booking_ensemble VALUES (288, 102);
INSERT INTO public.booking_ensemble VALUES (288, 153);
INSERT INTO public.booking_ensemble VALUES (288, 195);
INSERT INTO public.booking_ensemble VALUES (288, 90);
INSERT INTO public.booking_ensemble VALUES (288, 183);
INSERT INTO public.booking_ensemble VALUES (288, 89);
INSERT INTO public.booking_ensemble VALUES (288, 35);
INSERT INTO public.booking_ensemble VALUES (288, 146);
INSERT INTO public.booking_ensemble VALUES (288, 148);
INSERT INTO public.booking_ensemble VALUES (288, 59);
INSERT INTO public.booking_ensemble VALUES (288, 218);
INSERT INTO public.booking_ensemble VALUES (288, 25);
INSERT INTO public.booking_ensemble VALUES (288, 113);
INSERT INTO public.booking_ensemble VALUES (288, 163);
INSERT INTO public.booking_ensemble VALUES (288, 194);
INSERT INTO public.booking_ensemble VALUES (288, 54);
INSERT INTO public.booking_ensemble VALUES (288, 120);
INSERT INTO public.booking_ensemble VALUES (288, 160);
INSERT INTO public.booking_ensemble VALUES (288, 137);
INSERT INTO public.booking_ensemble VALUES (288, 38);
INSERT INTO public.booking_ensemble VALUES (288, 23);
INSERT INTO public.booking_ensemble VALUES (288, 42);
INSERT INTO public.booking_ensemble VALUES (288, 115);
INSERT INTO public.booking_ensemble VALUES (288, 57);
INSERT INTO public.booking_ensemble VALUES (288, 182);
INSERT INTO public.booking_ensemble VALUES (288, 105);
INSERT INTO public.booking_ensemble VALUES (288, 214);
INSERT INTO public.booking_ensemble VALUES (288, 93);
INSERT INTO public.booking_ensemble VALUES (288, 204);
INSERT INTO public.booking_ensemble VALUES (285, 169);
INSERT INTO public.booking_ensemble VALUES (285, 37);
INSERT INTO public.booking_ensemble VALUES (285, 76);
INSERT INTO public.booking_ensemble VALUES (285, 31);
INSERT INTO public.booking_ensemble VALUES (285, 134);
INSERT INTO public.booking_ensemble VALUES (285, 46);
INSERT INTO public.booking_ensemble VALUES (285, 34);
INSERT INTO public.booking_ensemble VALUES (285, 154);
INSERT INTO public.booking_ensemble VALUES (285, 185);
INSERT INTO public.booking_ensemble VALUES (285, 133);
INSERT INTO public.booking_ensemble VALUES (285, 77);
INSERT INTO public.booking_ensemble VALUES (285, 143);
INSERT INTO public.booking_ensemble VALUES (285, 161);
INSERT INTO public.booking_ensemble VALUES (285, 53);
INSERT INTO public.booking_ensemble VALUES (285, 131);
INSERT INTO public.booking_ensemble VALUES (285, 114);
INSERT INTO public.booking_ensemble VALUES (285, 52);
INSERT INTO public.booking_ensemble VALUES (285, 95);
INSERT INTO public.booking_ensemble VALUES (285, 210);
INSERT INTO public.booking_ensemble VALUES (285, 186);
INSERT INTO public.booking_ensemble VALUES (285, 136);
INSERT INTO public.booking_ensemble VALUES (285, 91);
INSERT INTO public.booking_ensemble VALUES (285, 82);
INSERT INTO public.booking_ensemble VALUES (285, 128);
INSERT INTO public.booking_ensemble VALUES (285, 21);
INSERT INTO public.booking_ensemble VALUES (285, 68);
INSERT INTO public.booking_ensemble VALUES (285, 121);
INSERT INTO public.booking_ensemble VALUES (285, 81);
INSERT INTO public.booking_ensemble VALUES (285, 140);
INSERT INTO public.booking_ensemble VALUES (285, 99);
INSERT INTO public.booking_ensemble VALUES (285, 69);
INSERT INTO public.booking_ensemble VALUES (285, 118);
INSERT INTO public.booking_ensemble VALUES (285, 104);
INSERT INTO public.booking_ensemble VALUES (285, 106);
INSERT INTO public.booking_ensemble VALUES (285, 67);
INSERT INTO public.booking_ensemble VALUES (285, 156);
INSERT INTO public.booking_ensemble VALUES (285, 203);
INSERT INTO public.booking_ensemble VALUES (285, 192);
INSERT INTO public.booking_ensemble VALUES (285, 190);
INSERT INTO public.booking_ensemble VALUES (285, 181);
INSERT INTO public.booking_ensemble VALUES (285, 56);
INSERT INTO public.booking_ensemble VALUES (285, 150);
INSERT INTO public.booking_ensemble VALUES (285, 180);
INSERT INTO public.booking_ensemble VALUES (285, 175);
INSERT INTO public.booking_ensemble VALUES (285, 119);
INSERT INTO public.booking_ensemble VALUES (285, 171);
INSERT INTO public.booking_ensemble VALUES (285, 29);
INSERT INTO public.booking_ensemble VALUES (285, 178);
INSERT INTO public.booking_ensemble VALUES (285, 159);
INSERT INTO public.booking_ensemble VALUES (285, 66);
INSERT INTO public.booking_ensemble VALUES (285, 155);
INSERT INTO public.booking_ensemble VALUES (285, 40);
INSERT INTO public.booking_ensemble VALUES (285, 193);
INSERT INTO public.booking_ensemble VALUES (285, 130);
INSERT INTO public.booking_ensemble VALUES (285, 80);
INSERT INTO public.booking_ensemble VALUES (285, 64);
INSERT INTO public.booking_ensemble VALUES (285, 75);
INSERT INTO public.booking_ensemble VALUES (285, 187);
INSERT INTO public.booking_ensemble VALUES (285, 151);
INSERT INTO public.booking_ensemble VALUES (285, 124);
INSERT INTO public.booking_ensemble VALUES (285, 101);
INSERT INTO public.booking_ensemble VALUES (285, 132);
INSERT INTO public.booking_ensemble VALUES (285, 174);
INSERT INTO public.booking_ensemble VALUES (285, 206);
INSERT INTO public.booking_ensemble VALUES (285, 201);
INSERT INTO public.booking_ensemble VALUES (285, 168);
INSERT INTO public.booking_ensemble VALUES (285, 179);
INSERT INTO public.booking_ensemble VALUES (285, 43);
INSERT INTO public.booking_ensemble VALUES (285, 28);
INSERT INTO public.booking_ensemble VALUES (285, 172);
INSERT INTO public.booking_ensemble VALUES (285, 84);
INSERT INTO public.booking_ensemble VALUES (285, 167);
INSERT INTO public.booking_ensemble VALUES (285, 196);
INSERT INTO public.booking_ensemble VALUES (285, 152);
INSERT INTO public.booking_ensemble VALUES (285, 58);
INSERT INTO public.booking_ensemble VALUES (285, 103);
INSERT INTO public.booking_ensemble VALUES (285, 205);
INSERT INTO public.booking_ensemble VALUES (285, 111);
INSERT INTO public.booking_ensemble VALUES (285, 65);
INSERT INTO public.booking_ensemble VALUES (285, 122);
INSERT INTO public.booking_ensemble VALUES (285, 212);
INSERT INTO public.booking_ensemble VALUES (285, 188);
INSERT INTO public.booking_ensemble VALUES (285, 112);
INSERT INTO public.booking_ensemble VALUES (285, 126);
INSERT INTO public.booking_ensemble VALUES (285, 197);
INSERT INTO public.booking_ensemble VALUES (285, 217);
INSERT INTO public.booking_ensemble VALUES (285, 199);
INSERT INTO public.booking_ensemble VALUES (285, 61);
INSERT INTO public.booking_ensemble VALUES (285, 50);
INSERT INTO public.booking_ensemble VALUES (285, 94);
INSERT INTO public.booking_ensemble VALUES (285, 149);
INSERT INTO public.booking_ensemble VALUES (285, 102);
INSERT INTO public.booking_ensemble VALUES (285, 48);
INSERT INTO public.booking_ensemble VALUES (285, 153);
INSERT INTO public.booking_ensemble VALUES (285, 195);
INSERT INTO public.booking_ensemble VALUES (285, 200);
INSERT INTO public.booking_ensemble VALUES (285, 90);
INSERT INTO public.booking_ensemble VALUES (285, 183);
INSERT INTO public.booking_ensemble VALUES (285, 35);
INSERT INTO public.booking_ensemble VALUES (285, 47);
INSERT INTO public.booking_ensemble VALUES (285, 129);
INSERT INTO public.booking_ensemble VALUES (285, 59);
INSERT INTO public.booking_ensemble VALUES (285, 88);
INSERT INTO public.booking_ensemble VALUES (285, 25);
INSERT INTO public.booking_ensemble VALUES (285, 92);
INSERT INTO public.booking_ensemble VALUES (285, 113);
INSERT INTO public.booking_ensemble VALUES (285, 163);
INSERT INTO public.booking_ensemble VALUES (285, 107);
INSERT INTO public.booking_ensemble VALUES (285, 209);
INSERT INTO public.booking_ensemble VALUES (285, 117);
INSERT INTO public.booking_ensemble VALUES (285, 164);
INSERT INTO public.booking_ensemble VALUES (285, 120);
INSERT INTO public.booking_ensemble VALUES (285, 160);
INSERT INTO public.booking_ensemble VALUES (285, 38);
INSERT INTO public.booking_ensemble VALUES (285, 208);
INSERT INTO public.booking_ensemble VALUES (285, 23);
INSERT INTO public.booking_ensemble VALUES (285, 42);
INSERT INTO public.booking_ensemble VALUES (285, 115);
INSERT INTO public.booking_ensemble VALUES (285, 51);
INSERT INTO public.booking_ensemble VALUES (285, 57);
INSERT INTO public.booking_ensemble VALUES (285, 79);
INSERT INTO public.booking_ensemble VALUES (285, 182);
INSERT INTO public.booking_ensemble VALUES (285, 135);
INSERT INTO public.booking_ensemble VALUES (285, 214);
INSERT INTO public.booking_ensemble VALUES (285, 166);
INSERT INTO public.booking_ensemble VALUES (285, 162);
INSERT INTO public.booking_ensemble VALUES (285, 204);
INSERT INTO public.booking_ensemble VALUES (285, 20);
INSERT INTO public.booking_ensemble VALUES (290, 169);
INSERT INTO public.booking_ensemble VALUES (290, 127);
INSERT INTO public.booking_ensemble VALUES (290, 37);
INSERT INTO public.booking_ensemble VALUES (290, 76);
INSERT INTO public.booking_ensemble VALUES (290, 31);
INSERT INTO public.booking_ensemble VALUES (290, 46);
INSERT INTO public.booking_ensemble VALUES (290, 36);
INSERT INTO public.booking_ensemble VALUES (290, 154);
INSERT INTO public.booking_ensemble VALUES (290, 185);
INSERT INTO public.booking_ensemble VALUES (290, 133);
INSERT INTO public.booking_ensemble VALUES (290, 77);
INSERT INTO public.booking_ensemble VALUES (290, 142);
INSERT INTO public.booking_ensemble VALUES (290, 70);
INSERT INTO public.booking_ensemble VALUES (290, 161);
INSERT INTO public.booking_ensemble VALUES (290, 53);
INSERT INTO public.booking_ensemble VALUES (290, 131);
INSERT INTO public.booking_ensemble VALUES (290, 114);
INSERT INTO public.booking_ensemble VALUES (290, 60);
INSERT INTO public.booking_ensemble VALUES (290, 74);
INSERT INTO public.booking_ensemble VALUES (290, 123);
INSERT INTO public.booking_ensemble VALUES (290, 165);
INSERT INTO public.booking_ensemble VALUES (290, 186);
INSERT INTO public.booking_ensemble VALUES (290, 32);
INSERT INTO public.booking_ensemble VALUES (290, 91);
INSERT INTO public.booking_ensemble VALUES (290, 82);
INSERT INTO public.booking_ensemble VALUES (290, 207);
INSERT INTO public.booking_ensemble VALUES (290, 44);
INSERT INTO public.booking_ensemble VALUES (290, 216);
INSERT INTO public.booking_ensemble VALUES (290, 21);
INSERT INTO public.booking_ensemble VALUES (290, 68);
INSERT INTO public.booking_ensemble VALUES (290, 49);
INSERT INTO public.booking_ensemble VALUES (290, 81);
INSERT INTO public.booking_ensemble VALUES (290, 140);
INSERT INTO public.booking_ensemble VALUES (290, 99);
INSERT INTO public.booking_ensemble VALUES (290, 69);
INSERT INTO public.booking_ensemble VALUES (290, 104);
INSERT INTO public.booking_ensemble VALUES (290, 147);
INSERT INTO public.booking_ensemble VALUES (290, 173);
INSERT INTO public.booking_ensemble VALUES (290, 98);
INSERT INTO public.booking_ensemble VALUES (290, 158);
INSERT INTO public.booking_ensemble VALUES (290, 125);
INSERT INTO public.booking_ensemble VALUES (290, 106);
INSERT INTO public.booking_ensemble VALUES (290, 156);
INSERT INTO public.booking_ensemble VALUES (290, 192);
INSERT INTO public.booking_ensemble VALUES (290, 190);
INSERT INTO public.booking_ensemble VALUES (290, 56);
INSERT INTO public.booking_ensemble VALUES (290, 184);
INSERT INTO public.booking_ensemble VALUES (290, 150);
INSERT INTO public.booking_ensemble VALUES (290, 175);
INSERT INTO public.booking_ensemble VALUES (290, 119);
INSERT INTO public.booking_ensemble VALUES (290, 109);
INSERT INTO public.booking_ensemble VALUES (290, 178);
INSERT INTO public.booking_ensemble VALUES (290, 55);
INSERT INTO public.booking_ensemble VALUES (290, 155);
INSERT INTO public.booking_ensemble VALUES (290, 40);
INSERT INTO public.booking_ensemble VALUES (290, 45);
INSERT INTO public.booking_ensemble VALUES (290, 193);
INSERT INTO public.booking_ensemble VALUES (290, 30);
INSERT INTO public.booking_ensemble VALUES (290, 130);
INSERT INTO public.booking_ensemble VALUES (290, 80);
INSERT INTO public.booking_ensemble VALUES (290, 75);
INSERT INTO public.booking_ensemble VALUES (290, 187);
INSERT INTO public.booking_ensemble VALUES (290, 151);
INSERT INTO public.booking_ensemble VALUES (290, 124);
INSERT INTO public.booking_ensemble VALUES (290, 63);
INSERT INTO public.booking_ensemble VALUES (290, 41);
INSERT INTO public.booking_ensemble VALUES (290, 174);
INSERT INTO public.booking_ensemble VALUES (290, 206);
INSERT INTO public.booking_ensemble VALUES (290, 201);
INSERT INTO public.booking_ensemble VALUES (290, 191);
INSERT INTO public.booking_ensemble VALUES (290, 28);
INSERT INTO public.booking_ensemble VALUES (290, 172);
INSERT INTO public.booking_ensemble VALUES (290, 167);
INSERT INTO public.booking_ensemble VALUES (290, 157);
INSERT INTO public.booking_ensemble VALUES (290, 176);
INSERT INTO public.booking_ensemble VALUES (290, 152);
INSERT INTO public.booking_ensemble VALUES (290, 198);
INSERT INTO public.booking_ensemble VALUES (290, 205);
INSERT INTO public.booking_ensemble VALUES (290, 26);
INSERT INTO public.booking_ensemble VALUES (290, 97);
INSERT INTO public.booking_ensemble VALUES (290, 111);
INSERT INTO public.booking_ensemble VALUES (290, 72);
INSERT INTO public.booking_ensemble VALUES (290, 212);
INSERT INTO public.booking_ensemble VALUES (290, 112);
INSERT INTO public.booking_ensemble VALUES (290, 197);
INSERT INTO public.booking_ensemble VALUES (290, 217);
INSERT INTO public.booking_ensemble VALUES (290, 199);
INSERT INTO public.booking_ensemble VALUES (290, 61);
INSERT INTO public.booking_ensemble VALUES (290, 211);
INSERT INTO public.booking_ensemble VALUES (290, 83);
INSERT INTO public.booking_ensemble VALUES (290, 50);
INSERT INTO public.booking_ensemble VALUES (290, 102);
INSERT INTO public.booking_ensemble VALUES (290, 48);
INSERT INTO public.booking_ensemble VALUES (290, 195);
INSERT INTO public.booking_ensemble VALUES (290, 90);
INSERT INTO public.booking_ensemble VALUES (290, 183);
INSERT INTO public.booking_ensemble VALUES (290, 35);
INSERT INTO public.booking_ensemble VALUES (290, 129);
INSERT INTO public.booking_ensemble VALUES (290, 146);
INSERT INTO public.booking_ensemble VALUES (290, 59);
INSERT INTO public.booking_ensemble VALUES (290, 88);
INSERT INTO public.booking_ensemble VALUES (290, 62);
INSERT INTO public.booking_ensemble VALUES (290, 25);
INSERT INTO public.booking_ensemble VALUES (290, 92);
INSERT INTO public.booking_ensemble VALUES (290, 113);
INSERT INTO public.booking_ensemble VALUES (290, 194);
INSERT INTO public.booking_ensemble VALUES (290, 107);
INSERT INTO public.booking_ensemble VALUES (290, 209);
INSERT INTO public.booking_ensemble VALUES (290, 117);
INSERT INTO public.booking_ensemble VALUES (290, 54);
INSERT INTO public.booking_ensemble VALUES (290, 164);
INSERT INTO public.booking_ensemble VALUES (290, 120);
INSERT INTO public.booking_ensemble VALUES (290, 160);
INSERT INTO public.booking_ensemble VALUES (290, 177);
INSERT INTO public.booking_ensemble VALUES (290, 137);
INSERT INTO public.booking_ensemble VALUES (290, 100);
INSERT INTO public.booking_ensemble VALUES (290, 208);
INSERT INTO public.booking_ensemble VALUES (290, 39);
INSERT INTO public.booking_ensemble VALUES (290, 141);
INSERT INTO public.booking_ensemble VALUES (290, 23);
INSERT INTO public.booking_ensemble VALUES (290, 42);
INSERT INTO public.booking_ensemble VALUES (290, 96);
INSERT INTO public.booking_ensemble VALUES (290, 110);
INSERT INTO public.booking_ensemble VALUES (290, 214);
INSERT INTO public.booking_ensemble VALUES (290, 166);
INSERT INTO public.booking_ensemble VALUES (290, 93);
INSERT INTO public.booking_ensemble VALUES (290, 162);
INSERT INTO public.booking_ensemble VALUES (290, 204);
INSERT INTO public.booking_ensemble VALUES (284, 116);
INSERT INTO public.booking_ensemble VALUES (284, 169);
INSERT INTO public.booking_ensemble VALUES (284, 127);
INSERT INTO public.booking_ensemble VALUES (284, 76);
INSERT INTO public.booking_ensemble VALUES (284, 202);
INSERT INTO public.booking_ensemble VALUES (284, 34);
INSERT INTO public.booking_ensemble VALUES (284, 138);
INSERT INTO public.booking_ensemble VALUES (284, 36);
INSERT INTO public.booking_ensemble VALUES (284, 154);
INSERT INTO public.booking_ensemble VALUES (284, 185);
INSERT INTO public.booking_ensemble VALUES (284, 133);
INSERT INTO public.booking_ensemble VALUES (284, 77);
INSERT INTO public.booking_ensemble VALUES (284, 143);
INSERT INTO public.booking_ensemble VALUES (284, 161);
INSERT INTO public.booking_ensemble VALUES (284, 53);
INSERT INTO public.booking_ensemble VALUES (284, 114);
INSERT INTO public.booking_ensemble VALUES (284, 60);
INSERT INTO public.booking_ensemble VALUES (284, 74);
INSERT INTO public.booking_ensemble VALUES (284, 52);
INSERT INTO public.booking_ensemble VALUES (284, 210);
INSERT INTO public.booking_ensemble VALUES (284, 123);
INSERT INTO public.booking_ensemble VALUES (284, 165);
INSERT INTO public.booking_ensemble VALUES (284, 186);
INSERT INTO public.booking_ensemble VALUES (284, 108);
INSERT INTO public.booking_ensemble VALUES (284, 136);
INSERT INTO public.booking_ensemble VALUES (284, 145);
INSERT INTO public.booking_ensemble VALUES (284, 82);
INSERT INTO public.booking_ensemble VALUES (284, 73);
INSERT INTO public.booking_ensemble VALUES (284, 207);
INSERT INTO public.booking_ensemble VALUES (284, 44);
INSERT INTO public.booking_ensemble VALUES (284, 216);
INSERT INTO public.booking_ensemble VALUES (284, 21);
INSERT INTO public.booking_ensemble VALUES (284, 49);
INSERT INTO public.booking_ensemble VALUES (284, 81);
INSERT INTO public.booking_ensemble VALUES (284, 140);
INSERT INTO public.booking_ensemble VALUES (284, 99);
INSERT INTO public.booking_ensemble VALUES (284, 69);
INSERT INTO public.booking_ensemble VALUES (284, 118);
INSERT INTO public.booking_ensemble VALUES (284, 213);
INSERT INTO public.booking_ensemble VALUES (284, 104);
INSERT INTO public.booking_ensemble VALUES (284, 147);
INSERT INTO public.booking_ensemble VALUES (284, 85);
INSERT INTO public.booking_ensemble VALUES (284, 173);
INSERT INTO public.booking_ensemble VALUES (284, 98);
INSERT INTO public.booking_ensemble VALUES (284, 189);
INSERT INTO public.booking_ensemble VALUES (284, 125);
INSERT INTO public.booking_ensemble VALUES (284, 67);
INSERT INTO public.booking_ensemble VALUES (284, 156);
INSERT INTO public.booking_ensemble VALUES (284, 192);
INSERT INTO public.booking_ensemble VALUES (284, 190);
INSERT INTO public.booking_ensemble VALUES (284, 181);
INSERT INTO public.booking_ensemble VALUES (284, 56);
INSERT INTO public.booking_ensemble VALUES (284, 184);
INSERT INTO public.booking_ensemble VALUES (284, 150);
INSERT INTO public.booking_ensemble VALUES (284, 180);
INSERT INTO public.booking_ensemble VALUES (284, 109);
INSERT INTO public.booking_ensemble VALUES (284, 171);
INSERT INTO public.booking_ensemble VALUES (284, 178);
INSERT INTO public.booking_ensemble VALUES (284, 159);
INSERT INTO public.booking_ensemble VALUES (284, 55);
INSERT INTO public.booking_ensemble VALUES (284, 66);
INSERT INTO public.booking_ensemble VALUES (284, 193);
INSERT INTO public.booking_ensemble VALUES (284, 64);
INSERT INTO public.booking_ensemble VALUES (284, 75);
INSERT INTO public.booking_ensemble VALUES (284, 187);
INSERT INTO public.booking_ensemble VALUES (284, 124);
INSERT INTO public.booking_ensemble VALUES (284, 132);
INSERT INTO public.booking_ensemble VALUES (284, 41);
INSERT INTO public.booking_ensemble VALUES (284, 174);
INSERT INTO public.booking_ensemble VALUES (284, 201);
INSERT INTO public.booking_ensemble VALUES (284, 168);
INSERT INTO public.booking_ensemble VALUES (284, 179);
INSERT INTO public.booking_ensemble VALUES (284, 191);
INSERT INTO public.booking_ensemble VALUES (284, 28);
INSERT INTO public.booking_ensemble VALUES (284, 172);
INSERT INTO public.booking_ensemble VALUES (284, 84);
INSERT INTO public.booking_ensemble VALUES (284, 157);
INSERT INTO public.booking_ensemble VALUES (284, 196);
INSERT INTO public.booking_ensemble VALUES (284, 198);
INSERT INTO public.booking_ensemble VALUES (284, 58);
INSERT INTO public.booking_ensemble VALUES (284, 86);
INSERT INTO public.booking_ensemble VALUES (284, 103);
INSERT INTO public.booking_ensemble VALUES (284, 26);
INSERT INTO public.booking_ensemble VALUES (284, 122);
INSERT INTO public.booking_ensemble VALUES (284, 212);
INSERT INTO public.booking_ensemble VALUES (284, 126);
INSERT INTO public.booking_ensemble VALUES (284, 197);
INSERT INTO public.booking_ensemble VALUES (284, 219);
INSERT INTO public.booking_ensemble VALUES (284, 199);
INSERT INTO public.booking_ensemble VALUES (284, 94);
INSERT INTO public.booking_ensemble VALUES (284, 149);
INSERT INTO public.booking_ensemble VALUES (284, 48);
INSERT INTO public.booking_ensemble VALUES (284, 153);
INSERT INTO public.booking_ensemble VALUES (284, 195);
INSERT INTO public.booking_ensemble VALUES (284, 200);
INSERT INTO public.booking_ensemble VALUES (284, 183);
INSERT INTO public.booking_ensemble VALUES (284, 35);
INSERT INTO public.booking_ensemble VALUES (284, 47);
INSERT INTO public.booking_ensemble VALUES (284, 129);
INSERT INTO public.booking_ensemble VALUES (284, 146);
INSERT INTO public.booking_ensemble VALUES (284, 59);
INSERT INTO public.booking_ensemble VALUES (284, 88);
INSERT INTO public.booking_ensemble VALUES (284, 218);
INSERT INTO public.booking_ensemble VALUES (284, 62);
INSERT INTO public.booking_ensemble VALUES (284, 87);
INSERT INTO public.booking_ensemble VALUES (284, 113);
INSERT INTO public.booking_ensemble VALUES (284, 194);
INSERT INTO public.booking_ensemble VALUES (284, 107);
INSERT INTO public.booking_ensemble VALUES (284, 209);
INSERT INTO public.booking_ensemble VALUES (284, 164);
INSERT INTO public.booking_ensemble VALUES (284, 120);
INSERT INTO public.booking_ensemble VALUES (284, 160);
INSERT INTO public.booking_ensemble VALUES (284, 100);
INSERT INTO public.booking_ensemble VALUES (284, 208);
INSERT INTO public.booking_ensemble VALUES (284, 39);
INSERT INTO public.booking_ensemble VALUES (284, 141);
INSERT INTO public.booking_ensemble VALUES (284, 23);
INSERT INTO public.booking_ensemble VALUES (284, 42);
INSERT INTO public.booking_ensemble VALUES (284, 115);
INSERT INTO public.booking_ensemble VALUES (284, 51);
INSERT INTO public.booking_ensemble VALUES (284, 79);
INSERT INTO public.booking_ensemble VALUES (284, 182);
INSERT INTO public.booking_ensemble VALUES (284, 96);
INSERT INTO public.booking_ensemble VALUES (284, 135);
INSERT INTO public.booking_ensemble VALUES (284, 110);
INSERT INTO public.booking_ensemble VALUES (284, 162);
INSERT INTO public.booking_ensemble VALUES (281, 116);
INSERT INTO public.booking_ensemble VALUES (281, 169);
INSERT INTO public.booking_ensemble VALUES (281, 78);
INSERT INTO public.booking_ensemble VALUES (281, 127);
INSERT INTO public.booking_ensemble VALUES (281, 37);
INSERT INTO public.booking_ensemble VALUES (281, 34);
INSERT INTO public.booking_ensemble VALUES (281, 138);
INSERT INTO public.booking_ensemble VALUES (281, 154);
INSERT INTO public.booking_ensemble VALUES (281, 185);
INSERT INTO public.booking_ensemble VALUES (281, 77);
INSERT INTO public.booking_ensemble VALUES (281, 142);
INSERT INTO public.booking_ensemble VALUES (281, 70);
INSERT INTO public.booking_ensemble VALUES (281, 161);
INSERT INTO public.booking_ensemble VALUES (281, 53);
INSERT INTO public.booking_ensemble VALUES (281, 60);
INSERT INTO public.booking_ensemble VALUES (281, 210);
INSERT INTO public.booking_ensemble VALUES (281, 186);
INSERT INTO public.booking_ensemble VALUES (281, 128);
INSERT INTO public.booking_ensemble VALUES (281, 21);
INSERT INTO public.booking_ensemble VALUES (281, 68);
INSERT INTO public.booking_ensemble VALUES (281, 49);
INSERT INTO public.booking_ensemble VALUES (281, 81);
INSERT INTO public.booking_ensemble VALUES (281, 140);
INSERT INTO public.booking_ensemble VALUES (281, 99);
INSERT INTO public.booking_ensemble VALUES (281, 118);
INSERT INTO public.booking_ensemble VALUES (281, 104);
INSERT INTO public.booking_ensemble VALUES (281, 147);
INSERT INTO public.booking_ensemble VALUES (281, 98);
INSERT INTO public.booking_ensemble VALUES (281, 158);
INSERT INTO public.booking_ensemble VALUES (281, 144);
INSERT INTO public.booking_ensemble VALUES (281, 67);
INSERT INTO public.booking_ensemble VALUES (281, 156);
INSERT INTO public.booking_ensemble VALUES (281, 203);
INSERT INTO public.booking_ensemble VALUES (281, 192);
INSERT INTO public.booking_ensemble VALUES (281, 181);
INSERT INTO public.booking_ensemble VALUES (281, 184);
INSERT INTO public.booking_ensemble VALUES (281, 150);
INSERT INTO public.booking_ensemble VALUES (281, 180);
INSERT INTO public.booking_ensemble VALUES (281, 119);
INSERT INTO public.booking_ensemble VALUES (281, 109);
INSERT INTO public.booking_ensemble VALUES (281, 29);
INSERT INTO public.booking_ensemble VALUES (281, 178);
INSERT INTO public.booking_ensemble VALUES (281, 159);
INSERT INTO public.booking_ensemble VALUES (281, 55);
INSERT INTO public.booking_ensemble VALUES (281, 66);
INSERT INTO public.booking_ensemble VALUES (281, 40);
INSERT INTO public.booking_ensemble VALUES (281, 45);
INSERT INTO public.booking_ensemble VALUES (281, 193);
INSERT INTO public.booking_ensemble VALUES (281, 30);
INSERT INTO public.booking_ensemble VALUES (281, 80);
INSERT INTO public.booking_ensemble VALUES (281, 64);
INSERT INTO public.booking_ensemble VALUES (281, 75);
INSERT INTO public.booking_ensemble VALUES (281, 124);
INSERT INTO public.booking_ensemble VALUES (281, 132);
INSERT INTO public.booking_ensemble VALUES (281, 63);
INSERT INTO public.booking_ensemble VALUES (281, 174);
INSERT INTO public.booking_ensemble VALUES (281, 201);
INSERT INTO public.booking_ensemble VALUES (281, 168);
INSERT INTO public.booking_ensemble VALUES (281, 179);
INSERT INTO public.booking_ensemble VALUES (281, 43);
INSERT INTO public.booking_ensemble VALUES (281, 191);
INSERT INTO public.booking_ensemble VALUES (281, 139);
INSERT INTO public.booking_ensemble VALUES (281, 28);
INSERT INTO public.booking_ensemble VALUES (281, 172);
INSERT INTO public.booking_ensemble VALUES (281, 84);
INSERT INTO public.booking_ensemble VALUES (281, 167);
INSERT INTO public.booking_ensemble VALUES (281, 157);
INSERT INTO public.booking_ensemble VALUES (281, 196);
INSERT INTO public.booking_ensemble VALUES (281, 176);
INSERT INTO public.booking_ensemble VALUES (281, 152);
INSERT INTO public.booking_ensemble VALUES (281, 198);
INSERT INTO public.booking_ensemble VALUES (281, 58);
INSERT INTO public.booking_ensemble VALUES (281, 86);
INSERT INTO public.booking_ensemble VALUES (281, 205);
INSERT INTO public.booking_ensemble VALUES (281, 97);
INSERT INTO public.booking_ensemble VALUES (281, 111);
INSERT INTO public.booking_ensemble VALUES (281, 65);
INSERT INTO public.booking_ensemble VALUES (281, 122);
INSERT INTO public.booking_ensemble VALUES (281, 212);
INSERT INTO public.booking_ensemble VALUES (281, 197);
INSERT INTO public.booking_ensemble VALUES (281, 71);
INSERT INTO public.booking_ensemble VALUES (281, 219);
INSERT INTO public.booking_ensemble VALUES (281, 22);
INSERT INTO public.booking_ensemble VALUES (281, 217);
INSERT INTO public.booking_ensemble VALUES (281, 61);
INSERT INTO public.booking_ensemble VALUES (281, 50);
INSERT INTO public.booking_ensemble VALUES (281, 94);
INSERT INTO public.booking_ensemble VALUES (281, 149);
INSERT INTO public.booking_ensemble VALUES (281, 102);
INSERT INTO public.booking_ensemble VALUES (281, 48);
INSERT INTO public.booking_ensemble VALUES (281, 153);
INSERT INTO public.booking_ensemble VALUES (281, 200);
INSERT INTO public.booking_ensemble VALUES (281, 90);
INSERT INTO public.booking_ensemble VALUES (281, 183);
INSERT INTO public.booking_ensemble VALUES (281, 89);
INSERT INTO public.booking_ensemble VALUES (281, 35);
INSERT INTO public.booking_ensemble VALUES (281, 47);
INSERT INTO public.booking_ensemble VALUES (281, 129);
INSERT INTO public.booking_ensemble VALUES (281, 146);
INSERT INTO public.booking_ensemble VALUES (281, 59);
INSERT INTO public.booking_ensemble VALUES (281, 88);
INSERT INTO public.booking_ensemble VALUES (281, 218);
INSERT INTO public.booking_ensemble VALUES (281, 62);
INSERT INTO public.booking_ensemble VALUES (281, 25);
INSERT INTO public.booking_ensemble VALUES (281, 92);
INSERT INTO public.booking_ensemble VALUES (281, 163);
INSERT INTO public.booking_ensemble VALUES (281, 194);
INSERT INTO public.booking_ensemble VALUES (281, 107);
INSERT INTO public.booking_ensemble VALUES (281, 209);
INSERT INTO public.booking_ensemble VALUES (281, 117);
INSERT INTO public.booking_ensemble VALUES (281, 164);
INSERT INTO public.booking_ensemble VALUES (281, 120);
INSERT INTO public.booking_ensemble VALUES (281, 177);
INSERT INTO public.booking_ensemble VALUES (281, 100);
INSERT INTO public.booking_ensemble VALUES (281, 208);
INSERT INTO public.booking_ensemble VALUES (281, 141);
INSERT INTO public.booking_ensemble VALUES (281, 42);
INSERT INTO public.booking_ensemble VALUES (281, 115);
INSERT INTO public.booking_ensemble VALUES (281, 51);
INSERT INTO public.booking_ensemble VALUES (281, 57);
INSERT INTO public.booking_ensemble VALUES (281, 79);
INSERT INTO public.booking_ensemble VALUES (281, 182);
INSERT INTO public.booking_ensemble VALUES (281, 135);
INSERT INTO public.booking_ensemble VALUES (281, 110);
INSERT INTO public.booking_ensemble VALUES (281, 105);
INSERT INTO public.booking_ensemble VALUES (281, 93);
INSERT INTO public.booking_ensemble VALUES (281, 162);
INSERT INTO public.booking_ensemble VALUES (287, 116);
INSERT INTO public.booking_ensemble VALUES (287, 169);
INSERT INTO public.booking_ensemble VALUES (287, 78);
INSERT INTO public.booking_ensemble VALUES (287, 76);
INSERT INTO public.booking_ensemble VALUES (287, 31);
INSERT INTO public.booking_ensemble VALUES (287, 202);
INSERT INTO public.booking_ensemble VALUES (287, 134);
INSERT INTO public.booking_ensemble VALUES (287, 138);
INSERT INTO public.booking_ensemble VALUES (287, 36);
INSERT INTO public.booking_ensemble VALUES (287, 77);
INSERT INTO public.booking_ensemble VALUES (287, 142);
INSERT INTO public.booking_ensemble VALUES (287, 143);
INSERT INTO public.booking_ensemble VALUES (287, 161);
INSERT INTO public.booking_ensemble VALUES (287, 53);
INSERT INTO public.booking_ensemble VALUES (287, 170);
INSERT INTO public.booking_ensemble VALUES (287, 60);
INSERT INTO public.booking_ensemble VALUES (287, 52);
INSERT INTO public.booking_ensemble VALUES (287, 95);
INSERT INTO public.booking_ensemble VALUES (287, 123);
INSERT INTO public.booking_ensemble VALUES (287, 165);
INSERT INTO public.booking_ensemble VALUES (287, 186);
INSERT INTO public.booking_ensemble VALUES (287, 32);
INSERT INTO public.booking_ensemble VALUES (287, 145);
INSERT INTO public.booking_ensemble VALUES (287, 82);
INSERT INTO public.booking_ensemble VALUES (287, 128);
INSERT INTO public.booking_ensemble VALUES (287, 24);
INSERT INTO public.booking_ensemble VALUES (287, 44);
INSERT INTO public.booking_ensemble VALUES (287, 216);
INSERT INTO public.booking_ensemble VALUES (287, 21);
INSERT INTO public.booking_ensemble VALUES (287, 49);
INSERT INTO public.booking_ensemble VALUES (287, 81);
INSERT INTO public.booking_ensemble VALUES (287, 140);
INSERT INTO public.booking_ensemble VALUES (287, 69);
INSERT INTO public.booking_ensemble VALUES (287, 118);
INSERT INTO public.booking_ensemble VALUES (287, 213);
INSERT INTO public.booking_ensemble VALUES (287, 147);
INSERT INTO public.booking_ensemble VALUES (287, 85);
INSERT INTO public.booking_ensemble VALUES (287, 173);
INSERT INTO public.booking_ensemble VALUES (287, 98);
INSERT INTO public.booking_ensemble VALUES (287, 189);
INSERT INTO public.booking_ensemble VALUES (287, 125);
INSERT INTO public.booking_ensemble VALUES (287, 144);
INSERT INTO public.booking_ensemble VALUES (287, 67);
INSERT INTO public.booking_ensemble VALUES (287, 156);
INSERT INTO public.booking_ensemble VALUES (287, 203);
INSERT INTO public.booking_ensemble VALUES (287, 192);
INSERT INTO public.booking_ensemble VALUES (287, 190);
INSERT INTO public.booking_ensemble VALUES (287, 56);
INSERT INTO public.booking_ensemble VALUES (287, 150);
INSERT INTO public.booking_ensemble VALUES (287, 215);
INSERT INTO public.booking_ensemble VALUES (287, 119);
INSERT INTO public.booking_ensemble VALUES (287, 109);
INSERT INTO public.booking_ensemble VALUES (287, 171);
INSERT INTO public.booking_ensemble VALUES (287, 29);
INSERT INTO public.booking_ensemble VALUES (287, 178);
INSERT INTO public.booking_ensemble VALUES (287, 159);
INSERT INTO public.booking_ensemble VALUES (287, 55);
INSERT INTO public.booking_ensemble VALUES (287, 66);
INSERT INTO public.booking_ensemble VALUES (287, 45);
INSERT INTO public.booking_ensemble VALUES (287, 193);
INSERT INTO public.booking_ensemble VALUES (287, 30);
INSERT INTO public.booking_ensemble VALUES (287, 130);
INSERT INTO public.booking_ensemble VALUES (287, 27);
INSERT INTO public.booking_ensemble VALUES (287, 151);
INSERT INTO public.booking_ensemble VALUES (287, 124);
INSERT INTO public.booking_ensemble VALUES (287, 101);
INSERT INTO public.booking_ensemble VALUES (287, 132);
INSERT INTO public.booking_ensemble VALUES (287, 63);
INSERT INTO public.booking_ensemble VALUES (287, 41);
INSERT INTO public.booking_ensemble VALUES (287, 206);
INSERT INTO public.booking_ensemble VALUES (287, 201);
INSERT INTO public.booking_ensemble VALUES (287, 168);
INSERT INTO public.booking_ensemble VALUES (287, 179);
INSERT INTO public.booking_ensemble VALUES (287, 43);
INSERT INTO public.booking_ensemble VALUES (287, 191);
INSERT INTO public.booking_ensemble VALUES (287, 139);
INSERT INTO public.booking_ensemble VALUES (287, 28);
INSERT INTO public.booking_ensemble VALUES (287, 172);
INSERT INTO public.booking_ensemble VALUES (287, 84);
INSERT INTO public.booking_ensemble VALUES (287, 167);
INSERT INTO public.booking_ensemble VALUES (287, 196);
INSERT INTO public.booking_ensemble VALUES (287, 176);
INSERT INTO public.booking_ensemble VALUES (287, 198);
INSERT INTO public.booking_ensemble VALUES (287, 86);
INSERT INTO public.booking_ensemble VALUES (287, 103);
INSERT INTO public.booking_ensemble VALUES (287, 205);
INSERT INTO public.booking_ensemble VALUES (287, 72);
INSERT INTO public.booking_ensemble VALUES (287, 65);
INSERT INTO public.booking_ensemble VALUES (287, 122);
INSERT INTO public.booking_ensemble VALUES (287, 212);
INSERT INTO public.booking_ensemble VALUES (287, 197);
INSERT INTO public.booking_ensemble VALUES (287, 71);
INSERT INTO public.booking_ensemble VALUES (287, 219);
INSERT INTO public.booking_ensemble VALUES (287, 22);
INSERT INTO public.booking_ensemble VALUES (287, 199);
INSERT INTO public.booking_ensemble VALUES (287, 61);
INSERT INTO public.booking_ensemble VALUES (287, 94);
INSERT INTO public.booking_ensemble VALUES (287, 149);
INSERT INTO public.booking_ensemble VALUES (287, 102);
INSERT INTO public.booking_ensemble VALUES (287, 48);
INSERT INTO public.booking_ensemble VALUES (287, 153);
INSERT INTO public.booking_ensemble VALUES (287, 200);
INSERT INTO public.booking_ensemble VALUES (287, 90);
INSERT INTO public.booking_ensemble VALUES (287, 89);
INSERT INTO public.booking_ensemble VALUES (287, 35);
INSERT INTO public.booking_ensemble VALUES (287, 129);
INSERT INTO public.booking_ensemble VALUES (287, 59);
INSERT INTO public.booking_ensemble VALUES (287, 88);
INSERT INTO public.booking_ensemble VALUES (287, 218);
INSERT INTO public.booking_ensemble VALUES (287, 92);
INSERT INTO public.booking_ensemble VALUES (287, 194);
INSERT INTO public.booking_ensemble VALUES (287, 107);
INSERT INTO public.booking_ensemble VALUES (287, 117);
INSERT INTO public.booking_ensemble VALUES (287, 54);
INSERT INTO public.booking_ensemble VALUES (287, 120);
INSERT INTO public.booking_ensemble VALUES (287, 160);
INSERT INTO public.booking_ensemble VALUES (287, 177);
INSERT INTO public.booking_ensemble VALUES (287, 137);
INSERT INTO public.booking_ensemble VALUES (287, 38);
INSERT INTO public.booking_ensemble VALUES (287, 100);
INSERT INTO public.booking_ensemble VALUES (287, 39);
INSERT INTO public.booking_ensemble VALUES (287, 42);
INSERT INTO public.booking_ensemble VALUES (287, 115);
INSERT INTO public.booking_ensemble VALUES (287, 51);
INSERT INTO public.booking_ensemble VALUES (287, 57);
INSERT INTO public.booking_ensemble VALUES (287, 79);
INSERT INTO public.booking_ensemble VALUES (287, 96);
INSERT INTO public.booking_ensemble VALUES (287, 135);
INSERT INTO public.booking_ensemble VALUES (287, 110);
INSERT INTO public.booking_ensemble VALUES (287, 105);
INSERT INTO public.booking_ensemble VALUES (287, 214);
INSERT INTO public.booking_ensemble VALUES (287, 166);
INSERT INTO public.booking_ensemble VALUES (287, 93);
INSERT INTO public.booking_ensemble VALUES (287, 162);
INSERT INTO public.booking_ensemble VALUES (287, 204);
INSERT INTO public.booking_ensemble VALUES (287, 20);


--
-- TOC entry 3577 (class 0 OID 25359)
-- Dependencies: 246
-- Data for Name: booking_group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.booking_group_lesson VALUES (292, 31);
INSERT INTO public.booking_group_lesson VALUES (292, 75);
INSERT INTO public.booking_group_lesson VALUES (292, 145);
INSERT INTO public.booking_group_lesson VALUES (292, 197);
INSERT INTO public.booking_group_lesson VALUES (292, 13);
INSERT INTO public.booking_group_lesson VALUES (292, 82);
INSERT INTO public.booking_group_lesson VALUES (292, 92);
INSERT INTO public.booking_group_lesson VALUES (292, 129);
INSERT INTO public.booking_group_lesson VALUES (292, 101);
INSERT INTO public.booking_group_lesson VALUES (292, 166);
INSERT INTO public.booking_group_lesson VALUES (292, 151);
INSERT INTO public.booking_group_lesson VALUES (292, 38);
INSERT INTO public.booking_group_lesson VALUES (292, 185);
INSERT INTO public.booking_group_lesson VALUES (292, 60);
INSERT INTO public.booking_group_lesson VALUES (292, 125);
INSERT INTO public.booking_group_lesson VALUES (292, 7);
INSERT INTO public.booking_group_lesson VALUES (292, 40);
INSERT INTO public.booking_group_lesson VALUES (292, 48);
INSERT INTO public.booking_group_lesson VALUES (292, 137);
INSERT INTO public.booking_group_lesson VALUES (292, 184);
INSERT INTO public.booking_group_lesson VALUES (292, 120);
INSERT INTO public.booking_group_lesson VALUES (292, 193);
INSERT INTO public.booking_group_lesson VALUES (292, 172);
INSERT INTO public.booking_group_lesson VALUES (292, 64);
INSERT INTO public.booking_group_lesson VALUES (292, 16);
INSERT INTO public.booking_group_lesson VALUES (292, 87);
INSERT INTO public.booking_group_lesson VALUES (292, 49);
INSERT INTO public.booking_group_lesson VALUES (292, 158);
INSERT INTO public.booking_group_lesson VALUES (292, 28);
INSERT INTO public.booking_group_lesson VALUES (292, 122);
INSERT INTO public.booking_group_lesson VALUES (292, 130);
INSERT INTO public.booking_group_lesson VALUES (292, 89);
INSERT INTO public.booking_group_lesson VALUES (292, 96);
INSERT INTO public.booking_group_lesson VALUES (292, 132);
INSERT INTO public.booking_group_lesson VALUES (292, 39);
INSERT INTO public.booking_group_lesson VALUES (292, 61);
INSERT INTO public.booking_group_lesson VALUES (292, 177);
INSERT INTO public.booking_group_lesson VALUES (292, 143);
INSERT INTO public.booking_group_lesson VALUES (292, 66);
INSERT INTO public.booking_group_lesson VALUES (292, 160);
INSERT INTO public.booking_group_lesson VALUES (292, 45);
INSERT INTO public.booking_group_lesson VALUES (292, 70);
INSERT INTO public.booking_group_lesson VALUES (292, 115);
INSERT INTO public.booking_group_lesson VALUES (292, 147);
INSERT INTO public.booking_group_lesson VALUES (292, 144);
INSERT INTO public.booking_group_lesson VALUES (292, 124);
INSERT INTO public.booking_group_lesson VALUES (292, 37);
INSERT INTO public.booking_group_lesson VALUES (292, 56);
INSERT INTO public.booking_group_lesson VALUES (292, 85);
INSERT INTO public.booking_group_lesson VALUES (292, 195);
INSERT INTO public.booking_group_lesson VALUES (292, 155);
INSERT INTO public.booking_group_lesson VALUES (292, 159);
INSERT INTO public.booking_group_lesson VALUES (292, 135);
INSERT INTO public.booking_group_lesson VALUES (292, 20);
INSERT INTO public.booking_group_lesson VALUES (292, 62);
INSERT INTO public.booking_group_lesson VALUES (292, 43);
INSERT INTO public.booking_group_lesson VALUES (292, 46);
INSERT INTO public.booking_group_lesson VALUES (292, 100);
INSERT INTO public.booking_group_lesson VALUES (292, 44);
INSERT INTO public.booking_group_lesson VALUES (292, 71);
INSERT INTO public.booking_group_lesson VALUES (292, 59);
INSERT INTO public.booking_group_lesson VALUES (292, 181);
INSERT INTO public.booking_group_lesson VALUES (292, 174);
INSERT INTO public.booking_group_lesson VALUES (292, 94);
INSERT INTO public.booking_group_lesson VALUES (292, 53);
INSERT INTO public.booking_group_lesson VALUES (292, 148);
INSERT INTO public.booking_group_lesson VALUES (292, 179);
INSERT INTO public.booking_group_lesson VALUES (292, 169);
INSERT INTO public.booking_group_lesson VALUES (292, 157);
INSERT INTO public.booking_group_lesson VALUES (292, 188);
INSERT INTO public.booking_group_lesson VALUES (292, 11);
INSERT INTO public.booking_group_lesson VALUES (292, 156);
INSERT INTO public.booking_group_lesson VALUES (292, 88);
INSERT INTO public.booking_group_lesson VALUES (292, 26);
INSERT INTO public.booking_group_lesson VALUES (292, 69);
INSERT INTO public.booking_group_lesson VALUES (292, 117);
INSERT INTO public.booking_group_lesson VALUES (292, 138);
INSERT INTO public.booking_group_lesson VALUES (292, 164);
INSERT INTO public.booking_group_lesson VALUES (293, 31);
INSERT INTO public.booking_group_lesson VALUES (293, 75);
INSERT INTO public.booking_group_lesson VALUES (293, 145);
INSERT INTO public.booking_group_lesson VALUES (293, 197);
INSERT INTO public.booking_group_lesson VALUES (293, 13);
INSERT INTO public.booking_group_lesson VALUES (293, 82);
INSERT INTO public.booking_group_lesson VALUES (293, 92);
INSERT INTO public.booking_group_lesson VALUES (293, 129);
INSERT INTO public.booking_group_lesson VALUES (293, 101);
INSERT INTO public.booking_group_lesson VALUES (293, 151);
INSERT INTO public.booking_group_lesson VALUES (293, 38);
INSERT INTO public.booking_group_lesson VALUES (293, 185);
INSERT INTO public.booking_group_lesson VALUES (293, 60);
INSERT INTO public.booking_group_lesson VALUES (293, 125);
INSERT INTO public.booking_group_lesson VALUES (293, 7);
INSERT INTO public.booking_group_lesson VALUES (293, 40);
INSERT INTO public.booking_group_lesson VALUES (293, 48);
INSERT INTO public.booking_group_lesson VALUES (293, 137);
INSERT INTO public.booking_group_lesson VALUES (293, 184);
INSERT INTO public.booking_group_lesson VALUES (293, 120);
INSERT INTO public.booking_group_lesson VALUES (293, 193);
INSERT INTO public.booking_group_lesson VALUES (293, 172);
INSERT INTO public.booking_group_lesson VALUES (293, 64);
INSERT INTO public.booking_group_lesson VALUES (293, 16);
INSERT INTO public.booking_group_lesson VALUES (293, 87);
INSERT INTO public.booking_group_lesson VALUES (293, 158);
INSERT INTO public.booking_group_lesson VALUES (293, 28);
INSERT INTO public.booking_group_lesson VALUES (293, 122);
INSERT INTO public.booking_group_lesson VALUES (293, 130);
INSERT INTO public.booking_group_lesson VALUES (293, 89);
INSERT INTO public.booking_group_lesson VALUES (293, 96);
INSERT INTO public.booking_group_lesson VALUES (293, 132);
INSERT INTO public.booking_group_lesson VALUES (293, 39);
INSERT INTO public.booking_group_lesson VALUES (293, 61);
INSERT INTO public.booking_group_lesson VALUES (293, 177);
INSERT INTO public.booking_group_lesson VALUES (293, 176);
INSERT INTO public.booking_group_lesson VALUES (293, 143);
INSERT INTO public.booking_group_lesson VALUES (293, 66);
INSERT INTO public.booking_group_lesson VALUES (293, 160);
INSERT INTO public.booking_group_lesson VALUES (293, 45);
INSERT INTO public.booking_group_lesson VALUES (293, 70);
INSERT INTO public.booking_group_lesson VALUES (293, 115);
INSERT INTO public.booking_group_lesson VALUES (293, 147);
INSERT INTO public.booking_group_lesson VALUES (293, 144);
INSERT INTO public.booking_group_lesson VALUES (293, 124);
INSERT INTO public.booking_group_lesson VALUES (293, 37);
INSERT INTO public.booking_group_lesson VALUES (293, 56);
INSERT INTO public.booking_group_lesson VALUES (293, 85);
INSERT INTO public.booking_group_lesson VALUES (293, 180);
INSERT INTO public.booking_group_lesson VALUES (293, 195);
INSERT INTO public.booking_group_lesson VALUES (293, 155);
INSERT INTO public.booking_group_lesson VALUES (293, 159);
INSERT INTO public.booking_group_lesson VALUES (293, 135);
INSERT INTO public.booking_group_lesson VALUES (293, 20);
INSERT INTO public.booking_group_lesson VALUES (293, 62);
INSERT INTO public.booking_group_lesson VALUES (293, 43);
INSERT INTO public.booking_group_lesson VALUES (293, 46);
INSERT INTO public.booking_group_lesson VALUES (293, 78);
INSERT INTO public.booking_group_lesson VALUES (293, 67);
INSERT INTO public.booking_group_lesson VALUES (293, 44);
INSERT INTO public.booking_group_lesson VALUES (293, 71);
INSERT INTO public.booking_group_lesson VALUES (293, 59);
INSERT INTO public.booking_group_lesson VALUES (293, 181);
INSERT INTO public.booking_group_lesson VALUES (293, 174);
INSERT INTO public.booking_group_lesson VALUES (293, 94);
INSERT INTO public.booking_group_lesson VALUES (293, 53);
INSERT INTO public.booking_group_lesson VALUES (293, 25);
INSERT INTO public.booking_group_lesson VALUES (293, 148);
INSERT INTO public.booking_group_lesson VALUES (293, 179);
INSERT INTO public.booking_group_lesson VALUES (293, 169);
INSERT INTO public.booking_group_lesson VALUES (293, 157);
INSERT INTO public.booking_group_lesson VALUES (293, 188);
INSERT INTO public.booking_group_lesson VALUES (293, 11);
INSERT INTO public.booking_group_lesson VALUES (293, 156);
INSERT INTO public.booking_group_lesson VALUES (293, 108);
INSERT INTO public.booking_group_lesson VALUES (293, 88);
INSERT INTO public.booking_group_lesson VALUES (293, 26);
INSERT INTO public.booking_group_lesson VALUES (293, 69);
INSERT INTO public.booking_group_lesson VALUES (293, 117);
INSERT INTO public.booking_group_lesson VALUES (293, 138);
INSERT INTO public.booking_group_lesson VALUES (293, 164);
INSERT INTO public.booking_group_lesson VALUES (299, 31);
INSERT INTO public.booking_group_lesson VALUES (299, 75);
INSERT INTO public.booking_group_lesson VALUES (299, 145);
INSERT INTO public.booking_group_lesson VALUES (299, 197);
INSERT INTO public.booking_group_lesson VALUES (299, 13);
INSERT INTO public.booking_group_lesson VALUES (299, 82);
INSERT INTO public.booking_group_lesson VALUES (299, 92);
INSERT INTO public.booking_group_lesson VALUES (299, 129);
INSERT INTO public.booking_group_lesson VALUES (299, 101);
INSERT INTO public.booking_group_lesson VALUES (299, 166);
INSERT INTO public.booking_group_lesson VALUES (299, 151);
INSERT INTO public.booking_group_lesson VALUES (299, 38);
INSERT INTO public.booking_group_lesson VALUES (299, 185);
INSERT INTO public.booking_group_lesson VALUES (299, 60);
INSERT INTO public.booking_group_lesson VALUES (299, 125);
INSERT INTO public.booking_group_lesson VALUES (299, 7);
INSERT INTO public.booking_group_lesson VALUES (299, 40);
INSERT INTO public.booking_group_lesson VALUES (299, 48);
INSERT INTO public.booking_group_lesson VALUES (299, 137);
INSERT INTO public.booking_group_lesson VALUES (299, 120);
INSERT INTO public.booking_group_lesson VALUES (299, 193);
INSERT INTO public.booking_group_lesson VALUES (299, 172);
INSERT INTO public.booking_group_lesson VALUES (299, 64);
INSERT INTO public.booking_group_lesson VALUES (299, 16);
INSERT INTO public.booking_group_lesson VALUES (299, 87);
INSERT INTO public.booking_group_lesson VALUES (299, 49);
INSERT INTO public.booking_group_lesson VALUES (299, 158);
INSERT INTO public.booking_group_lesson VALUES (299, 28);
INSERT INTO public.booking_group_lesson VALUES (299, 122);
INSERT INTO public.booking_group_lesson VALUES (299, 130);
INSERT INTO public.booking_group_lesson VALUES (299, 89);
INSERT INTO public.booking_group_lesson VALUES (299, 96);
INSERT INTO public.booking_group_lesson VALUES (299, 132);
INSERT INTO public.booking_group_lesson VALUES (299, 39);
INSERT INTO public.booking_group_lesson VALUES (299, 61);
INSERT INTO public.booking_group_lesson VALUES (299, 177);
INSERT INTO public.booking_group_lesson VALUES (299, 176);
INSERT INTO public.booking_group_lesson VALUES (299, 143);
INSERT INTO public.booking_group_lesson VALUES (299, 66);
INSERT INTO public.booking_group_lesson VALUES (299, 45);
INSERT INTO public.booking_group_lesson VALUES (299, 70);
INSERT INTO public.booking_group_lesson VALUES (299, 115);
INSERT INTO public.booking_group_lesson VALUES (299, 147);
INSERT INTO public.booking_group_lesson VALUES (299, 144);
INSERT INTO public.booking_group_lesson VALUES (299, 124);
INSERT INTO public.booking_group_lesson VALUES (299, 37);
INSERT INTO public.booking_group_lesson VALUES (299, 56);
INSERT INTO public.booking_group_lesson VALUES (299, 85);
INSERT INTO public.booking_group_lesson VALUES (299, 180);
INSERT INTO public.booking_group_lesson VALUES (299, 195);
INSERT INTO public.booking_group_lesson VALUES (299, 155);
INSERT INTO public.booking_group_lesson VALUES (299, 159);
INSERT INTO public.booking_group_lesson VALUES (299, 135);
INSERT INTO public.booking_group_lesson VALUES (299, 20);
INSERT INTO public.booking_group_lesson VALUES (299, 62);
INSERT INTO public.booking_group_lesson VALUES (299, 43);
INSERT INTO public.booking_group_lesson VALUES (299, 46);
INSERT INTO public.booking_group_lesson VALUES (299, 100);
INSERT INTO public.booking_group_lesson VALUES (299, 78);
INSERT INTO public.booking_group_lesson VALUES (299, 67);
INSERT INTO public.booking_group_lesson VALUES (299, 44);
INSERT INTO public.booking_group_lesson VALUES (299, 71);
INSERT INTO public.booking_group_lesson VALUES (299, 59);
INSERT INTO public.booking_group_lesson VALUES (299, 181);
INSERT INTO public.booking_group_lesson VALUES (299, 174);
INSERT INTO public.booking_group_lesson VALUES (299, 94);
INSERT INTO public.booking_group_lesson VALUES (299, 53);
INSERT INTO public.booking_group_lesson VALUES (299, 25);
INSERT INTO public.booking_group_lesson VALUES (299, 148);
INSERT INTO public.booking_group_lesson VALUES (299, 179);
INSERT INTO public.booking_group_lesson VALUES (299, 169);
INSERT INTO public.booking_group_lesson VALUES (299, 157);
INSERT INTO public.booking_group_lesson VALUES (299, 188);
INSERT INTO public.booking_group_lesson VALUES (299, 11);
INSERT INTO public.booking_group_lesson VALUES (299, 156);
INSERT INTO public.booking_group_lesson VALUES (299, 108);
INSERT INTO public.booking_group_lesson VALUES (299, 88);
INSERT INTO public.booking_group_lesson VALUES (299, 26);
INSERT INTO public.booking_group_lesson VALUES (299, 69);
INSERT INTO public.booking_group_lesson VALUES (299, 117);
INSERT INTO public.booking_group_lesson VALUES (299, 138);
INSERT INTO public.booking_group_lesson VALUES (299, 164);
INSERT INTO public.booking_group_lesson VALUES (294, 31);
INSERT INTO public.booking_group_lesson VALUES (294, 75);
INSERT INTO public.booking_group_lesson VALUES (294, 145);
INSERT INTO public.booking_group_lesson VALUES (294, 197);
INSERT INTO public.booking_group_lesson VALUES (294, 13);
INSERT INTO public.booking_group_lesson VALUES (294, 82);
INSERT INTO public.booking_group_lesson VALUES (294, 92);
INSERT INTO public.booking_group_lesson VALUES (294, 129);
INSERT INTO public.booking_group_lesson VALUES (294, 101);
INSERT INTO public.booking_group_lesson VALUES (294, 166);
INSERT INTO public.booking_group_lesson VALUES (294, 38);
INSERT INTO public.booking_group_lesson VALUES (294, 185);
INSERT INTO public.booking_group_lesson VALUES (294, 60);
INSERT INTO public.booking_group_lesson VALUES (294, 125);
INSERT INTO public.booking_group_lesson VALUES (294, 40);
INSERT INTO public.booking_group_lesson VALUES (294, 48);
INSERT INTO public.booking_group_lesson VALUES (294, 137);
INSERT INTO public.booking_group_lesson VALUES (294, 184);
INSERT INTO public.booking_group_lesson VALUES (294, 120);
INSERT INTO public.booking_group_lesson VALUES (294, 193);
INSERT INTO public.booking_group_lesson VALUES (294, 172);
INSERT INTO public.booking_group_lesson VALUES (294, 64);
INSERT INTO public.booking_group_lesson VALUES (294, 16);
INSERT INTO public.booking_group_lesson VALUES (294, 87);
INSERT INTO public.booking_group_lesson VALUES (294, 49);
INSERT INTO public.booking_group_lesson VALUES (294, 158);
INSERT INTO public.booking_group_lesson VALUES (294, 122);
INSERT INTO public.booking_group_lesson VALUES (294, 130);
INSERT INTO public.booking_group_lesson VALUES (294, 89);
INSERT INTO public.booking_group_lesson VALUES (294, 96);
INSERT INTO public.booking_group_lesson VALUES (294, 132);
INSERT INTO public.booking_group_lesson VALUES (294, 39);
INSERT INTO public.booking_group_lesson VALUES (294, 61);
INSERT INTO public.booking_group_lesson VALUES (294, 177);
INSERT INTO public.booking_group_lesson VALUES (294, 176);
INSERT INTO public.booking_group_lesson VALUES (294, 143);
INSERT INTO public.booking_group_lesson VALUES (294, 66);
INSERT INTO public.booking_group_lesson VALUES (294, 160);
INSERT INTO public.booking_group_lesson VALUES (294, 45);
INSERT INTO public.booking_group_lesson VALUES (294, 70);
INSERT INTO public.booking_group_lesson VALUES (294, 115);
INSERT INTO public.booking_group_lesson VALUES (294, 147);
INSERT INTO public.booking_group_lesson VALUES (294, 144);
INSERT INTO public.booking_group_lesson VALUES (294, 37);
INSERT INTO public.booking_group_lesson VALUES (294, 56);
INSERT INTO public.booking_group_lesson VALUES (294, 85);
INSERT INTO public.booking_group_lesson VALUES (294, 180);
INSERT INTO public.booking_group_lesson VALUES (294, 195);
INSERT INTO public.booking_group_lesson VALUES (294, 155);
INSERT INTO public.booking_group_lesson VALUES (294, 159);
INSERT INTO public.booking_group_lesson VALUES (294, 135);
INSERT INTO public.booking_group_lesson VALUES (294, 20);
INSERT INTO public.booking_group_lesson VALUES (294, 62);
INSERT INTO public.booking_group_lesson VALUES (294, 43);
INSERT INTO public.booking_group_lesson VALUES (294, 46);
INSERT INTO public.booking_group_lesson VALUES (294, 100);
INSERT INTO public.booking_group_lesson VALUES (294, 78);
INSERT INTO public.booking_group_lesson VALUES (294, 67);
INSERT INTO public.booking_group_lesson VALUES (294, 44);
INSERT INTO public.booking_group_lesson VALUES (294, 71);
INSERT INTO public.booking_group_lesson VALUES (294, 59);
INSERT INTO public.booking_group_lesson VALUES (294, 181);
INSERT INTO public.booking_group_lesson VALUES (294, 174);
INSERT INTO public.booking_group_lesson VALUES (294, 94);
INSERT INTO public.booking_group_lesson VALUES (294, 53);
INSERT INTO public.booking_group_lesson VALUES (294, 25);
INSERT INTO public.booking_group_lesson VALUES (294, 148);
INSERT INTO public.booking_group_lesson VALUES (294, 179);
INSERT INTO public.booking_group_lesson VALUES (294, 169);
INSERT INTO public.booking_group_lesson VALUES (294, 157);
INSERT INTO public.booking_group_lesson VALUES (294, 188);
INSERT INTO public.booking_group_lesson VALUES (294, 11);
INSERT INTO public.booking_group_lesson VALUES (294, 156);
INSERT INTO public.booking_group_lesson VALUES (294, 108);
INSERT INTO public.booking_group_lesson VALUES (294, 88);
INSERT INTO public.booking_group_lesson VALUES (294, 26);
INSERT INTO public.booking_group_lesson VALUES (294, 69);
INSERT INTO public.booking_group_lesson VALUES (294, 117);
INSERT INTO public.booking_group_lesson VALUES (294, 138);
INSERT INTO public.booking_group_lesson VALUES (294, 164);
INSERT INTO public.booking_group_lesson VALUES (296, 93);
INSERT INTO public.booking_group_lesson VALUES (296, 36);
INSERT INTO public.booking_group_lesson VALUES (296, 12);
INSERT INTO public.booking_group_lesson VALUES (296, 80);
INSERT INTO public.booking_group_lesson VALUES (296, 118);
INSERT INTO public.booking_group_lesson VALUES (296, 142);
INSERT INTO public.booking_group_lesson VALUES (296, 98);
INSERT INTO public.booking_group_lesson VALUES (296, 196);
INSERT INTO public.booking_group_lesson VALUES (296, 33);
INSERT INTO public.booking_group_lesson VALUES (296, 84);
INSERT INTO public.booking_group_lesson VALUES (296, 27);
INSERT INTO public.booking_group_lesson VALUES (296, 18);
INSERT INTO public.booking_group_lesson VALUES (296, 32);
INSERT INTO public.booking_group_lesson VALUES (296, 146);
INSERT INTO public.booking_group_lesson VALUES (296, 187);
INSERT INTO public.booking_group_lesson VALUES (296, 72);
INSERT INTO public.booking_group_lesson VALUES (296, 15);
INSERT INTO public.booking_group_lesson VALUES (296, 152);
INSERT INTO public.booking_group_lesson VALUES (296, 192);
INSERT INTO public.booking_group_lesson VALUES (296, 191);
INSERT INTO public.booking_group_lesson VALUES (296, 103);
INSERT INTO public.booking_group_lesson VALUES (296, 141);
INSERT INTO public.booking_group_lesson VALUES (296, 153);
INSERT INTO public.booking_group_lesson VALUES (296, 6);
INSERT INTO public.booking_group_lesson VALUES (296, 23);
INSERT INTO public.booking_group_lesson VALUES (296, 24);
INSERT INTO public.booking_group_lesson VALUES (296, 119);
INSERT INTO public.booking_group_lesson VALUES (296, 35);
INSERT INTO public.booking_group_lesson VALUES (296, 114);
INSERT INTO public.booking_group_lesson VALUES (296, 131);
INSERT INTO public.booking_group_lesson VALUES (296, 170);
INSERT INTO public.booking_group_lesson VALUES (296, 163);
INSERT INTO public.booking_group_lesson VALUES (296, 110);
INSERT INTO public.booking_group_lesson VALUES (296, 90);
INSERT INTO public.booking_group_lesson VALUES (296, 106);
INSERT INTO public.booking_group_lesson VALUES (296, 173);
INSERT INTO public.booking_group_lesson VALUES (296, 168);
INSERT INTO public.booking_group_lesson VALUES (296, 57);
INSERT INTO public.booking_group_lesson VALUES (296, 183);
INSERT INTO public.booking_group_lesson VALUES (296, 198);
INSERT INTO public.booking_group_lesson VALUES (296, 79);
INSERT INTO public.booking_group_lesson VALUES (296, 182);
INSERT INTO public.booking_group_lesson VALUES (296, 30);
INSERT INTO public.booking_group_lesson VALUES (296, 123);
INSERT INTO public.booking_group_lesson VALUES (296, 178);
INSERT INTO public.booking_group_lesson VALUES (296, 140);
INSERT INTO public.booking_group_lesson VALUES (296, 3);
INSERT INTO public.booking_group_lesson VALUES (296, 149);
INSERT INTO public.booking_group_lesson VALUES (296, 126);
INSERT INTO public.booking_group_lesson VALUES (296, 186);
INSERT INTO public.booking_group_lesson VALUES (296, 116);
INSERT INTO public.booking_group_lesson VALUES (296, 14);
INSERT INTO public.booking_group_lesson VALUES (296, 51);
INSERT INTO public.booking_group_lesson VALUES (296, 102);
INSERT INTO public.booking_group_lesson VALUES (296, 74);
INSERT INTO public.booking_group_lesson VALUES (296, 175);
INSERT INTO public.booking_group_lesson VALUES (296, 128);
INSERT INTO public.booking_group_lesson VALUES (296, 95);
INSERT INTO public.booking_group_lesson VALUES (296, 83);
INSERT INTO public.booking_group_lesson VALUES (296, 81);
INSERT INTO public.booking_group_lesson VALUES (296, 41);
INSERT INTO public.booking_group_lesson VALUES (296, 167);
INSERT INTO public.booking_group_lesson VALUES (296, 133);
INSERT INTO public.booking_group_lesson VALUES (296, 52);
INSERT INTO public.booking_group_lesson VALUES (296, 29);
INSERT INTO public.booking_group_lesson VALUES (296, 165);
INSERT INTO public.booking_group_lesson VALUES (296, 104);
INSERT INTO public.booking_group_lesson VALUES (296, 47);
INSERT INTO public.booking_group_lesson VALUES (296, 162);
INSERT INTO public.booking_group_lesson VALUES (296, 127);
INSERT INTO public.booking_group_lesson VALUES (296, 134);
INSERT INTO public.booking_group_lesson VALUES (296, 17);
INSERT INTO public.booking_group_lesson VALUES (296, 9);
INSERT INTO public.booking_group_lesson VALUES (296, 91);
INSERT INTO public.booking_group_lesson VALUES (296, 2);
INSERT INTO public.booking_group_lesson VALUES (296, 42);
INSERT INTO public.booking_group_lesson VALUES (296, 55);
INSERT INTO public.booking_group_lesson VALUES (296, 8);
INSERT INTO public.booking_group_lesson VALUES (296, 21);
INSERT INTO public.booking_group_lesson VALUES (296, 194);
INSERT INTO public.booking_group_lesson VALUES (296, 200);
INSERT INTO public.booking_group_lesson VALUES (298, 93);
INSERT INTO public.booking_group_lesson VALUES (298, 36);
INSERT INTO public.booking_group_lesson VALUES (298, 12);
INSERT INTO public.booking_group_lesson VALUES (298, 80);
INSERT INTO public.booking_group_lesson VALUES (298, 118);
INSERT INTO public.booking_group_lesson VALUES (298, 142);
INSERT INTO public.booking_group_lesson VALUES (298, 98);
INSERT INTO public.booking_group_lesson VALUES (298, 196);
INSERT INTO public.booking_group_lesson VALUES (298, 33);
INSERT INTO public.booking_group_lesson VALUES (298, 84);
INSERT INTO public.booking_group_lesson VALUES (298, 27);
INSERT INTO public.booking_group_lesson VALUES (298, 18);
INSERT INTO public.booking_group_lesson VALUES (298, 32);
INSERT INTO public.booking_group_lesson VALUES (298, 68);
INSERT INTO public.booking_group_lesson VALUES (298, 146);
INSERT INTO public.booking_group_lesson VALUES (298, 187);
INSERT INTO public.booking_group_lesson VALUES (298, 152);
INSERT INTO public.booking_group_lesson VALUES (298, 192);
INSERT INTO public.booking_group_lesson VALUES (298, 191);
INSERT INTO public.booking_group_lesson VALUES (298, 103);
INSERT INTO public.booking_group_lesson VALUES (298, 141);
INSERT INTO public.booking_group_lesson VALUES (298, 153);
INSERT INTO public.booking_group_lesson VALUES (298, 6);
INSERT INTO public.booking_group_lesson VALUES (298, 23);
INSERT INTO public.booking_group_lesson VALUES (298, 24);
INSERT INTO public.booking_group_lesson VALUES (298, 119);
INSERT INTO public.booking_group_lesson VALUES (298, 114);
INSERT INTO public.booking_group_lesson VALUES (298, 170);
INSERT INTO public.booking_group_lesson VALUES (298, 163);
INSERT INTO public.booking_group_lesson VALUES (298, 110);
INSERT INTO public.booking_group_lesson VALUES (298, 90);
INSERT INTO public.booking_group_lesson VALUES (298, 106);
INSERT INTO public.booking_group_lesson VALUES (298, 173);
INSERT INTO public.booking_group_lesson VALUES (298, 168);
INSERT INTO public.booking_group_lesson VALUES (298, 57);
INSERT INTO public.booking_group_lesson VALUES (298, 198);
INSERT INTO public.booking_group_lesson VALUES (298, 79);
INSERT INTO public.booking_group_lesson VALUES (298, 182);
INSERT INTO public.booking_group_lesson VALUES (298, 30);
INSERT INTO public.booking_group_lesson VALUES (298, 123);
INSERT INTO public.booking_group_lesson VALUES (298, 178);
INSERT INTO public.booking_group_lesson VALUES (298, 140);
INSERT INTO public.booking_group_lesson VALUES (298, 3);
INSERT INTO public.booking_group_lesson VALUES (298, 149);
INSERT INTO public.booking_group_lesson VALUES (298, 126);
INSERT INTO public.booking_group_lesson VALUES (298, 186);
INSERT INTO public.booking_group_lesson VALUES (298, 116);
INSERT INTO public.booking_group_lesson VALUES (298, 14);
INSERT INTO public.booking_group_lesson VALUES (298, 51);
INSERT INTO public.booking_group_lesson VALUES (298, 102);
INSERT INTO public.booking_group_lesson VALUES (298, 74);
INSERT INTO public.booking_group_lesson VALUES (298, 175);
INSERT INTO public.booking_group_lesson VALUES (298, 128);
INSERT INTO public.booking_group_lesson VALUES (298, 95);
INSERT INTO public.booking_group_lesson VALUES (298, 83);
INSERT INTO public.booking_group_lesson VALUES (298, 81);
INSERT INTO public.booking_group_lesson VALUES (298, 41);
INSERT INTO public.booking_group_lesson VALUES (298, 167);
INSERT INTO public.booking_group_lesson VALUES (298, 133);
INSERT INTO public.booking_group_lesson VALUES (298, 52);
INSERT INTO public.booking_group_lesson VALUES (298, 22);
INSERT INTO public.booking_group_lesson VALUES (298, 111);
INSERT INTO public.booking_group_lesson VALUES (298, 29);
INSERT INTO public.booking_group_lesson VALUES (298, 165);
INSERT INTO public.booking_group_lesson VALUES (298, 104);
INSERT INTO public.booking_group_lesson VALUES (298, 162);
INSERT INTO public.booking_group_lesson VALUES (298, 127);
INSERT INTO public.booking_group_lesson VALUES (298, 134);
INSERT INTO public.booking_group_lesson VALUES (298, 9);
INSERT INTO public.booking_group_lesson VALUES (298, 91);
INSERT INTO public.booking_group_lesson VALUES (298, 2);
INSERT INTO public.booking_group_lesson VALUES (298, 42);
INSERT INTO public.booking_group_lesson VALUES (298, 55);
INSERT INTO public.booking_group_lesson VALUES (298, 8);
INSERT INTO public.booking_group_lesson VALUES (298, 21);
INSERT INTO public.booking_group_lesson VALUES (298, 65);
INSERT INTO public.booking_group_lesson VALUES (298, 194);
INSERT INTO public.booking_group_lesson VALUES (298, 200);
INSERT INTO public.booking_group_lesson VALUES (295, 93);
INSERT INTO public.booking_group_lesson VALUES (295, 36);
INSERT INTO public.booking_group_lesson VALUES (295, 12);
INSERT INTO public.booking_group_lesson VALUES (295, 80);
INSERT INTO public.booking_group_lesson VALUES (295, 118);
INSERT INTO public.booking_group_lesson VALUES (295, 142);
INSERT INTO public.booking_group_lesson VALUES (295, 98);
INSERT INTO public.booking_group_lesson VALUES (295, 196);
INSERT INTO public.booking_group_lesson VALUES (295, 33);
INSERT INTO public.booking_group_lesson VALUES (295, 84);
INSERT INTO public.booking_group_lesson VALUES (295, 27);
INSERT INTO public.booking_group_lesson VALUES (295, 18);
INSERT INTO public.booking_group_lesson VALUES (295, 32);
INSERT INTO public.booking_group_lesson VALUES (295, 68);
INSERT INTO public.booking_group_lesson VALUES (295, 146);
INSERT INTO public.booking_group_lesson VALUES (295, 187);
INSERT INTO public.booking_group_lesson VALUES (295, 15);
INSERT INTO public.booking_group_lesson VALUES (295, 152);
INSERT INTO public.booking_group_lesson VALUES (295, 192);
INSERT INTO public.booking_group_lesson VALUES (295, 191);
INSERT INTO public.booking_group_lesson VALUES (295, 103);
INSERT INTO public.booking_group_lesson VALUES (295, 141);
INSERT INTO public.booking_group_lesson VALUES (295, 153);
INSERT INTO public.booking_group_lesson VALUES (295, 23);
INSERT INTO public.booking_group_lesson VALUES (295, 24);
INSERT INTO public.booking_group_lesson VALUES (295, 119);
INSERT INTO public.booking_group_lesson VALUES (295, 35);
INSERT INTO public.booking_group_lesson VALUES (295, 114);
INSERT INTO public.booking_group_lesson VALUES (295, 131);
INSERT INTO public.booking_group_lesson VALUES (295, 170);
INSERT INTO public.booking_group_lesson VALUES (295, 163);
INSERT INTO public.booking_group_lesson VALUES (295, 110);
INSERT INTO public.booking_group_lesson VALUES (295, 90);
INSERT INTO public.booking_group_lesson VALUES (295, 106);
INSERT INTO public.booking_group_lesson VALUES (295, 173);
INSERT INTO public.booking_group_lesson VALUES (295, 168);
INSERT INTO public.booking_group_lesson VALUES (295, 57);
INSERT INTO public.booking_group_lesson VALUES (295, 183);
INSERT INTO public.booking_group_lesson VALUES (295, 198);
INSERT INTO public.booking_group_lesson VALUES (295, 79);
INSERT INTO public.booking_group_lesson VALUES (295, 182);
INSERT INTO public.booking_group_lesson VALUES (295, 30);
INSERT INTO public.booking_group_lesson VALUES (295, 178);
INSERT INTO public.booking_group_lesson VALUES (295, 140);
INSERT INTO public.booking_group_lesson VALUES (295, 3);
INSERT INTO public.booking_group_lesson VALUES (295, 149);
INSERT INTO public.booking_group_lesson VALUES (295, 126);
INSERT INTO public.booking_group_lesson VALUES (295, 186);
INSERT INTO public.booking_group_lesson VALUES (295, 116);
INSERT INTO public.booking_group_lesson VALUES (295, 14);
INSERT INTO public.booking_group_lesson VALUES (295, 51);
INSERT INTO public.booking_group_lesson VALUES (295, 102);
INSERT INTO public.booking_group_lesson VALUES (295, 74);
INSERT INTO public.booking_group_lesson VALUES (295, 175);
INSERT INTO public.booking_group_lesson VALUES (295, 128);
INSERT INTO public.booking_group_lesson VALUES (295, 95);
INSERT INTO public.booking_group_lesson VALUES (295, 83);
INSERT INTO public.booking_group_lesson VALUES (295, 81);
INSERT INTO public.booking_group_lesson VALUES (295, 41);
INSERT INTO public.booking_group_lesson VALUES (295, 167);
INSERT INTO public.booking_group_lesson VALUES (295, 133);
INSERT INTO public.booking_group_lesson VALUES (295, 52);
INSERT INTO public.booking_group_lesson VALUES (295, 22);
INSERT INTO public.booking_group_lesson VALUES (295, 111);
INSERT INTO public.booking_group_lesson VALUES (295, 29);
INSERT INTO public.booking_group_lesson VALUES (295, 165);
INSERT INTO public.booking_group_lesson VALUES (295, 104);
INSERT INTO public.booking_group_lesson VALUES (295, 47);
INSERT INTO public.booking_group_lesson VALUES (295, 162);
INSERT INTO public.booking_group_lesson VALUES (295, 127);
INSERT INTO public.booking_group_lesson VALUES (295, 134);
INSERT INTO public.booking_group_lesson VALUES (295, 17);
INSERT INTO public.booking_group_lesson VALUES (295, 9);
INSERT INTO public.booking_group_lesson VALUES (295, 91);
INSERT INTO public.booking_group_lesson VALUES (295, 2);
INSERT INTO public.booking_group_lesson VALUES (295, 42);
INSERT INTO public.booking_group_lesson VALUES (295, 55);
INSERT INTO public.booking_group_lesson VALUES (295, 8);
INSERT INTO public.booking_group_lesson VALUES (295, 21);
INSERT INTO public.booking_group_lesson VALUES (295, 194);
INSERT INTO public.booking_group_lesson VALUES (295, 200);
INSERT INTO public.booking_group_lesson VALUES (300, 93);
INSERT INTO public.booking_group_lesson VALUES (300, 36);
INSERT INTO public.booking_group_lesson VALUES (300, 12);
INSERT INTO public.booking_group_lesson VALUES (300, 80);
INSERT INTO public.booking_group_lesson VALUES (300, 118);
INSERT INTO public.booking_group_lesson VALUES (300, 142);
INSERT INTO public.booking_group_lesson VALUES (300, 98);
INSERT INTO public.booking_group_lesson VALUES (300, 196);
INSERT INTO public.booking_group_lesson VALUES (300, 33);
INSERT INTO public.booking_group_lesson VALUES (300, 27);
INSERT INTO public.booking_group_lesson VALUES (300, 18);
INSERT INTO public.booking_group_lesson VALUES (300, 32);
INSERT INTO public.booking_group_lesson VALUES (300, 68);
INSERT INTO public.booking_group_lesson VALUES (300, 146);
INSERT INTO public.booking_group_lesson VALUES (300, 187);
INSERT INTO public.booking_group_lesson VALUES (300, 72);
INSERT INTO public.booking_group_lesson VALUES (300, 15);
INSERT INTO public.booking_group_lesson VALUES (300, 152);
INSERT INTO public.booking_group_lesson VALUES (300, 192);
INSERT INTO public.booking_group_lesson VALUES (300, 191);
INSERT INTO public.booking_group_lesson VALUES (300, 103);
INSERT INTO public.booking_group_lesson VALUES (300, 153);
INSERT INTO public.booking_group_lesson VALUES (300, 6);
INSERT INTO public.booking_group_lesson VALUES (300, 23);
INSERT INTO public.booking_group_lesson VALUES (300, 24);
INSERT INTO public.booking_group_lesson VALUES (300, 119);
INSERT INTO public.booking_group_lesson VALUES (300, 35);
INSERT INTO public.booking_group_lesson VALUES (300, 114);
INSERT INTO public.booking_group_lesson VALUES (300, 131);
INSERT INTO public.booking_group_lesson VALUES (300, 170);
INSERT INTO public.booking_group_lesson VALUES (300, 163);
INSERT INTO public.booking_group_lesson VALUES (300, 110);
INSERT INTO public.booking_group_lesson VALUES (300, 90);
INSERT INTO public.booking_group_lesson VALUES (300, 106);
INSERT INTO public.booking_group_lesson VALUES (300, 173);
INSERT INTO public.booking_group_lesson VALUES (300, 168);
INSERT INTO public.booking_group_lesson VALUES (300, 57);
INSERT INTO public.booking_group_lesson VALUES (300, 198);
INSERT INTO public.booking_group_lesson VALUES (300, 79);
INSERT INTO public.booking_group_lesson VALUES (300, 182);
INSERT INTO public.booking_group_lesson VALUES (300, 30);
INSERT INTO public.booking_group_lesson VALUES (300, 123);
INSERT INTO public.booking_group_lesson VALUES (300, 178);
INSERT INTO public.booking_group_lesson VALUES (300, 140);
INSERT INTO public.booking_group_lesson VALUES (300, 3);
INSERT INTO public.booking_group_lesson VALUES (300, 149);
INSERT INTO public.booking_group_lesson VALUES (300, 126);
INSERT INTO public.booking_group_lesson VALUES (300, 186);
INSERT INTO public.booking_group_lesson VALUES (300, 116);
INSERT INTO public.booking_group_lesson VALUES (300, 14);
INSERT INTO public.booking_group_lesson VALUES (300, 51);
INSERT INTO public.booking_group_lesson VALUES (300, 102);
INSERT INTO public.booking_group_lesson VALUES (300, 74);
INSERT INTO public.booking_group_lesson VALUES (300, 175);
INSERT INTO public.booking_group_lesson VALUES (300, 128);
INSERT INTO public.booking_group_lesson VALUES (300, 95);
INSERT INTO public.booking_group_lesson VALUES (300, 83);
INSERT INTO public.booking_group_lesson VALUES (300, 81);
INSERT INTO public.booking_group_lesson VALUES (300, 41);
INSERT INTO public.booking_group_lesson VALUES (300, 167);
INSERT INTO public.booking_group_lesson VALUES (300, 133);
INSERT INTO public.booking_group_lesson VALUES (300, 52);
INSERT INTO public.booking_group_lesson VALUES (300, 22);
INSERT INTO public.booking_group_lesson VALUES (300, 111);
INSERT INTO public.booking_group_lesson VALUES (300, 29);
INSERT INTO public.booking_group_lesson VALUES (300, 165);
INSERT INTO public.booking_group_lesson VALUES (300, 104);
INSERT INTO public.booking_group_lesson VALUES (300, 47);
INSERT INTO public.booking_group_lesson VALUES (300, 162);
INSERT INTO public.booking_group_lesson VALUES (300, 127);
INSERT INTO public.booking_group_lesson VALUES (300, 134);
INSERT INTO public.booking_group_lesson VALUES (300, 17);
INSERT INTO public.booking_group_lesson VALUES (300, 9);
INSERT INTO public.booking_group_lesson VALUES (300, 91);
INSERT INTO public.booking_group_lesson VALUES (300, 2);
INSERT INTO public.booking_group_lesson VALUES (300, 42);
INSERT INTO public.booking_group_lesson VALUES (300, 55);
INSERT INTO public.booking_group_lesson VALUES (300, 8);
INSERT INTO public.booking_group_lesson VALUES (300, 21);
INSERT INTO public.booking_group_lesson VALUES (300, 65);
INSERT INTO public.booking_group_lesson VALUES (300, 194);
INSERT INTO public.booking_group_lesson VALUES (300, 200);
INSERT INTO public.booking_group_lesson VALUES (291, 10);
INSERT INTO public.booking_group_lesson VALUES (291, 112);
INSERT INTO public.booking_group_lesson VALUES (291, 4);
INSERT INTO public.booking_group_lesson VALUES (291, 34);
INSERT INTO public.booking_group_lesson VALUES (291, 113);
INSERT INTO public.booking_group_lesson VALUES (291, 150);
INSERT INTO public.booking_group_lesson VALUES (291, 107);
INSERT INTO public.booking_group_lesson VALUES (291, 50);
INSERT INTO public.booking_group_lesson VALUES (291, 139);
INSERT INTO public.booking_group_lesson VALUES (291, 199);
INSERT INTO public.booking_group_lesson VALUES (291, 190);
INSERT INTO public.booking_group_lesson VALUES (291, 136);
INSERT INTO public.booking_group_lesson VALUES (291, 161);
INSERT INTO public.booking_group_lesson VALUES (291, 99);
INSERT INTO public.booking_group_lesson VALUES (291, 1);
INSERT INTO public.booking_group_lesson VALUES (291, 97);
INSERT INTO public.booking_group_lesson VALUES (291, 19);
INSERT INTO public.booking_group_lesson VALUES (291, 105);
INSERT INTO public.booking_group_lesson VALUES (291, 5);
INSERT INTO public.booking_group_lesson VALUES (291, 58);
INSERT INTO public.booking_group_lesson VALUES (291, 63);
INSERT INTO public.booking_group_lesson VALUES (291, 77);
INSERT INTO public.booking_group_lesson VALUES (291, 121);
INSERT INTO public.booking_group_lesson VALUES (291, 86);
INSERT INTO public.booking_group_lesson VALUES (291, 154);
INSERT INTO public.booking_group_lesson VALUES (291, 171);
INSERT INTO public.booking_group_lesson VALUES (291, 189);
INSERT INTO public.booking_group_lesson VALUES (291, 109);
INSERT INTO public.booking_group_lesson VALUES (291, 76);
INSERT INTO public.booking_group_lesson VALUES (291, 54);
INSERT INTO public.booking_group_lesson VALUES (291, 73);
INSERT INTO public.booking_group_lesson VALUES (297, 10);
INSERT INTO public.booking_group_lesson VALUES (297, 112);
INSERT INTO public.booking_group_lesson VALUES (297, 4);
INSERT INTO public.booking_group_lesson VALUES (297, 34);
INSERT INTO public.booking_group_lesson VALUES (297, 113);
INSERT INTO public.booking_group_lesson VALUES (297, 150);
INSERT INTO public.booking_group_lesson VALUES (297, 107);
INSERT INTO public.booking_group_lesson VALUES (297, 50);
INSERT INTO public.booking_group_lesson VALUES (297, 139);
INSERT INTO public.booking_group_lesson VALUES (297, 199);
INSERT INTO public.booking_group_lesson VALUES (297, 190);
INSERT INTO public.booking_group_lesson VALUES (297, 136);
INSERT INTO public.booking_group_lesson VALUES (297, 161);
INSERT INTO public.booking_group_lesson VALUES (297, 99);
INSERT INTO public.booking_group_lesson VALUES (297, 1);
INSERT INTO public.booking_group_lesson VALUES (297, 97);
INSERT INTO public.booking_group_lesson VALUES (297, 19);
INSERT INTO public.booking_group_lesson VALUES (297, 105);
INSERT INTO public.booking_group_lesson VALUES (297, 5);
INSERT INTO public.booking_group_lesson VALUES (297, 58);
INSERT INTO public.booking_group_lesson VALUES (297, 63);
INSERT INTO public.booking_group_lesson VALUES (297, 77);
INSERT INTO public.booking_group_lesson VALUES (297, 121);
INSERT INTO public.booking_group_lesson VALUES (297, 86);
INSERT INTO public.booking_group_lesson VALUES (297, 154);
INSERT INTO public.booking_group_lesson VALUES (297, 171);
INSERT INTO public.booking_group_lesson VALUES (297, 189);
INSERT INTO public.booking_group_lesson VALUES (297, 109);
INSERT INTO public.booking_group_lesson VALUES (297, 76);
INSERT INTO public.booking_group_lesson VALUES (297, 54);
INSERT INTO public.booking_group_lesson VALUES (297, 73);


--
-- TOC entry 3563 (class 0 OID 25213)
-- Dependencies: 232
-- Data for Name: contact_person; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3546 (class 0 OID 25118)
-- Dependencies: 215
-- Data for Name: discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.discount VALUES (0, 1.00);
INSERT INTO public.discount VALUES (1, 0.85);
INSERT INTO public.discount VALUES (2, 0.50);


--
-- TOC entry 3548 (class 0 OID 25125)
-- Dependencies: 217
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.email VALUES (16, 'eu.eleifend@yahoo.couk');
INSERT INTO public.email VALUES (17, 'iaculis@icloud.org');
INSERT INTO public.email VALUES (18, 'eget.lacus.mauris@protonmail.ca');
INSERT INTO public.email VALUES (19, 'tempus.risus.donec@hotmail.com');
INSERT INTO public.email VALUES (20, 'mattis.cras.eget@outlook.edu');
INSERT INTO public.email VALUES (21, 'elit.dictum.eu@hotmail.net');
INSERT INTO public.email VALUES (22, 'placerat.velit.quisque@outlook.couk');
INSERT INTO public.email VALUES (23, 'vel.quam.dignissim@icloud.couk');
INSERT INTO public.email VALUES (24, 'eleifend.nec.malesuada@protonmail.ca');
INSERT INTO public.email VALUES (25, 'lobortis.tellus@outlook.org');
INSERT INTO public.email VALUES (26, 'ipsum.cursus@aol.couk');
INSERT INTO public.email VALUES (27, 'mi.duis@icloud.net');
INSERT INTO public.email VALUES (28, 'et.magnis.dis@hotmail.org');
INSERT INTO public.email VALUES (29, 'faucibus.orci@hotmail.com');
INSERT INTO public.email VALUES (30, 'urna.convallis@outlook.couk');


--
-- TOC entry 3571 (class 0 OID 25304)
-- Dependencies: 240
-- Data for Name: ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ensemble VALUES (20, 5, 10, 'classical', 1751);
INSERT INTO public.ensemble VALUES (21, 5, 10, 'classical', 1752);
INSERT INTO public.ensemble VALUES (22, 5, 10, 'blues', 1753);
INSERT INTO public.ensemble VALUES (23, 5, 10, 'classical', 1754);
INSERT INTO public.ensemble VALUES (24, 5, 10, 'classical', 1755);
INSERT INTO public.ensemble VALUES (25, 5, 10, 'jazz', 1756);
INSERT INTO public.ensemble VALUES (26, 5, 10, 'jazz', 1757);
INSERT INTO public.ensemble VALUES (27, 5, 10, 'rock', 1758);
INSERT INTO public.ensemble VALUES (28, 5, 10, 'pop', 1759);
INSERT INTO public.ensemble VALUES (29, 5, 10, 'jazz', 1760);
INSERT INTO public.ensemble VALUES (30, 5, 10, 'jazz', 1761);
INSERT INTO public.ensemble VALUES (31, 5, 10, 'jazz', 1762);
INSERT INTO public.ensemble VALUES (32, 5, 10, 'rock', 1763);
INSERT INTO public.ensemble VALUES (33, 5, 10, 'jazz', 1764);
INSERT INTO public.ensemble VALUES (34, 5, 10, 'classical', 1765);
INSERT INTO public.ensemble VALUES (35, 5, 10, 'jazz', 1766);
INSERT INTO public.ensemble VALUES (36, 5, 10, 'jazz', 1767);
INSERT INTO public.ensemble VALUES (218, 5, 10, 'rock', 1949);
INSERT INTO public.ensemble VALUES (219, 5, 10, 'classical', 1950);
INSERT INTO public.ensemble VALUES (162, 5, 10, 'jazz', 1893);
INSERT INTO public.ensemble VALUES (148, 5, 10, 'jazz', 1879);
INSERT INTO public.ensemble VALUES (149, 5, 10, 'classical', 1880);
INSERT INTO public.ensemble VALUES (150, 5, 10, 'classical', 1881);
INSERT INTO public.ensemble VALUES (37, 5, 10, 'jazz', 1768);
INSERT INTO public.ensemble VALUES (38, 5, 10, 'blues', 1769);
INSERT INTO public.ensemble VALUES (39, 5, 10, 'pop', 1770);
INSERT INTO public.ensemble VALUES (40, 5, 10, 'jazz', 1771);
INSERT INTO public.ensemble VALUES (41, 5, 10, 'jazz', 1772);
INSERT INTO public.ensemble VALUES (42, 5, 10, 'rock', 1773);
INSERT INTO public.ensemble VALUES (43, 5, 10, 'classical', 1774);
INSERT INTO public.ensemble VALUES (44, 5, 10, 'classical', 1775);
INSERT INTO public.ensemble VALUES (45, 5, 10, 'jazz', 1776);
INSERT INTO public.ensemble VALUES (46, 5, 10, 'pop', 1777);
INSERT INTO public.ensemble VALUES (47, 5, 10, 'jazz', 1778);
INSERT INTO public.ensemble VALUES (48, 5, 10, 'classical', 1779);
INSERT INTO public.ensemble VALUES (49, 5, 10, 'classical', 1780);
INSERT INTO public.ensemble VALUES (50, 5, 10, 'classical', 1781);
INSERT INTO public.ensemble VALUES (51, 5, 10, 'jazz', 1782);
INSERT INTO public.ensemble VALUES (52, 5, 10, 'classical', 1783);
INSERT INTO public.ensemble VALUES (53, 5, 10, 'blues', 1784);
INSERT INTO public.ensemble VALUES (54, 5, 10, 'jazz', 1785);
INSERT INTO public.ensemble VALUES (55, 5, 10, 'classical', 1786);
INSERT INTO public.ensemble VALUES (56, 5, 10, 'classical', 1787);
INSERT INTO public.ensemble VALUES (57, 5, 10, 'pop', 1788);
INSERT INTO public.ensemble VALUES (58, 5, 10, 'blues', 1789);
INSERT INTO public.ensemble VALUES (59, 5, 10, 'classical', 1790);
INSERT INTO public.ensemble VALUES (60, 5, 10, 'blues', 1791);
INSERT INTO public.ensemble VALUES (61, 5, 10, 'jazz', 1792);
INSERT INTO public.ensemble VALUES (62, 5, 10, 'classical', 1793);
INSERT INTO public.ensemble VALUES (63, 5, 10, 'classical', 1794);
INSERT INTO public.ensemble VALUES (64, 5, 10, 'blues', 1795);
INSERT INTO public.ensemble VALUES (65, 5, 10, 'classical', 1796);
INSERT INTO public.ensemble VALUES (66, 5, 10, 'jazz', 1797);
INSERT INTO public.ensemble VALUES (67, 5, 10, 'blues', 1798);
INSERT INTO public.ensemble VALUES (68, 5, 10, 'rock', 1799);
INSERT INTO public.ensemble VALUES (69, 5, 10, 'classical', 1800);
INSERT INTO public.ensemble VALUES (70, 5, 10, 'classical', 1801);
INSERT INTO public.ensemble VALUES (71, 5, 10, 'jazz', 1802);
INSERT INTO public.ensemble VALUES (72, 5, 10, 'jazz', 1803);
INSERT INTO public.ensemble VALUES (73, 5, 10, 'classical', 1804);
INSERT INTO public.ensemble VALUES (74, 5, 10, 'rock', 1805);
INSERT INTO public.ensemble VALUES (75, 5, 10, 'rock', 1806);
INSERT INTO public.ensemble VALUES (76, 5, 10, 'jazz', 1807);
INSERT INTO public.ensemble VALUES (77, 5, 10, 'classical', 1808);
INSERT INTO public.ensemble VALUES (78, 5, 10, 'blues', 1809);
INSERT INTO public.ensemble VALUES (79, 5, 10, 'classical', 1810);
INSERT INTO public.ensemble VALUES (80, 5, 10, 'classical', 1811);
INSERT INTO public.ensemble VALUES (81, 5, 10, 'jazz', 1812);
INSERT INTO public.ensemble VALUES (82, 5, 10, 'jazz', 1813);
INSERT INTO public.ensemble VALUES (83, 5, 10, 'rock', 1814);
INSERT INTO public.ensemble VALUES (84, 5, 10, 'jazz', 1815);
INSERT INTO public.ensemble VALUES (85, 5, 10, 'jazz', 1816);
INSERT INTO public.ensemble VALUES (86, 5, 10, 'rock', 1817);
INSERT INTO public.ensemble VALUES (87, 5, 10, 'classical', 1818);
INSERT INTO public.ensemble VALUES (88, 5, 10, 'pop', 1819);
INSERT INTO public.ensemble VALUES (89, 5, 10, 'blues', 1820);
INSERT INTO public.ensemble VALUES (90, 5, 10, 'pop', 1821);
INSERT INTO public.ensemble VALUES (91, 5, 10, 'classical', 1822);
INSERT INTO public.ensemble VALUES (92, 5, 10, 'blues', 1823);
INSERT INTO public.ensemble VALUES (94, 5, 10, 'blues', 1825);
INSERT INTO public.ensemble VALUES (95, 5, 10, 'rock', 1826);
INSERT INTO public.ensemble VALUES (96, 5, 10, 'blues', 1827);
INSERT INTO public.ensemble VALUES (97, 5, 10, 'jazz', 1828);
INSERT INTO public.ensemble VALUES (98, 5, 10, 'classical', 1829);
INSERT INTO public.ensemble VALUES (99, 5, 10, 'jazz', 1830);
INSERT INTO public.ensemble VALUES (100, 5, 10, 'classical', 1831);
INSERT INTO public.ensemble VALUES (101, 5, 10, 'classical', 1832);
INSERT INTO public.ensemble VALUES (102, 5, 10, 'classical', 1833);
INSERT INTO public.ensemble VALUES (103, 5, 10, 'classical', 1834);
INSERT INTO public.ensemble VALUES (104, 5, 10, 'classical', 1835);
INSERT INTO public.ensemble VALUES (105, 5, 10, 'jazz', 1836);
INSERT INTO public.ensemble VALUES (106, 5, 10, 'rock', 1837);
INSERT INTO public.ensemble VALUES (107, 5, 10, 'rock', 1838);
INSERT INTO public.ensemble VALUES (108, 5, 10, 'classical', 1839);
INSERT INTO public.ensemble VALUES (109, 5, 10, 'jazz', 1840);
INSERT INTO public.ensemble VALUES (151, 5, 10, 'classical', 1882);
INSERT INTO public.ensemble VALUES (110, 5, 10, 'classical', 1841);
INSERT INTO public.ensemble VALUES (111, 5, 10, 'classical', 1842);
INSERT INTO public.ensemble VALUES (112, 5, 10, 'jazz', 1843);
INSERT INTO public.ensemble VALUES (113, 5, 10, 'classical', 1844);
INSERT INTO public.ensemble VALUES (114, 5, 10, 'classical', 1845);
INSERT INTO public.ensemble VALUES (115, 5, 10, 'blues', 1846);
INSERT INTO public.ensemble VALUES (116, 5, 10, 'classical', 1847);
INSERT INTO public.ensemble VALUES (117, 5, 10, 'classical', 1848);
INSERT INTO public.ensemble VALUES (118, 5, 10, 'classical', 1849);
INSERT INTO public.ensemble VALUES (119, 5, 10, 'blues', 1850);
INSERT INTO public.ensemble VALUES (120, 5, 10, 'classical', 1851);
INSERT INTO public.ensemble VALUES (121, 5, 10, 'classical', 1852);
INSERT INTO public.ensemble VALUES (122, 5, 10, 'classical', 1853);
INSERT INTO public.ensemble VALUES (123, 5, 10, 'jazz', 1854);
INSERT INTO public.ensemble VALUES (124, 5, 10, 'jazz', 1855);
INSERT INTO public.ensemble VALUES (125, 5, 10, 'blues', 1856);
INSERT INTO public.ensemble VALUES (126, 5, 10, 'classical', 1857);
INSERT INTO public.ensemble VALUES (127, 5, 10, 'jazz', 1858);
INSERT INTO public.ensemble VALUES (128, 5, 10, 'rock', 1859);
INSERT INTO public.ensemble VALUES (129, 5, 10, 'classical', 1860);
INSERT INTO public.ensemble VALUES (130, 5, 10, 'blues', 1861);
INSERT INTO public.ensemble VALUES (131, 5, 10, 'classical', 1862);
INSERT INTO public.ensemble VALUES (132, 5, 10, 'jazz', 1863);
INSERT INTO public.ensemble VALUES (133, 5, 10, 'classical', 1864);
INSERT INTO public.ensemble VALUES (134, 5, 10, 'classical', 1865);
INSERT INTO public.ensemble VALUES (135, 5, 10, 'jazz', 1866);
INSERT INTO public.ensemble VALUES (136, 5, 10, 'classical', 1867);
INSERT INTO public.ensemble VALUES (137, 5, 10, 'pop', 1868);
INSERT INTO public.ensemble VALUES (138, 5, 10, 'classical', 1869);
INSERT INTO public.ensemble VALUES (139, 5, 10, 'jazz', 1870);
INSERT INTO public.ensemble VALUES (140, 5, 10, 'rock', 1871);
INSERT INTO public.ensemble VALUES (141, 5, 10, 'jazz', 1872);
INSERT INTO public.ensemble VALUES (142, 5, 10, 'rock', 1873);
INSERT INTO public.ensemble VALUES (143, 5, 10, 'jazz', 1874);
INSERT INTO public.ensemble VALUES (144, 5, 10, 'classical', 1875);
INSERT INTO public.ensemble VALUES (145, 5, 10, 'classical', 1876);
INSERT INTO public.ensemble VALUES (146, 5, 10, 'classical', 1877);
INSERT INTO public.ensemble VALUES (147, 5, 10, 'classical', 1878);
INSERT INTO public.ensemble VALUES (93, 5, 10, 'rock', 1824);
INSERT INTO public.ensemble VALUES (152, 5, 10, 'jazz', 1883);
INSERT INTO public.ensemble VALUES (153, 5, 10, 'classical', 1884);
INSERT INTO public.ensemble VALUES (154, 5, 10, 'blues', 1885);
INSERT INTO public.ensemble VALUES (155, 5, 10, 'jazz', 1886);
INSERT INTO public.ensemble VALUES (156, 5, 10, 'jazz', 1887);
INSERT INTO public.ensemble VALUES (157, 5, 10, 'jazz', 1888);
INSERT INTO public.ensemble VALUES (158, 5, 10, 'blues', 1889);
INSERT INTO public.ensemble VALUES (159, 5, 10, 'rock', 1890);
INSERT INTO public.ensemble VALUES (160, 5, 10, 'rock', 1891);
INSERT INTO public.ensemble VALUES (161, 5, 10, 'classical', 1892);
INSERT INTO public.ensemble VALUES (163, 5, 10, 'classical', 1894);
INSERT INTO public.ensemble VALUES (164, 5, 10, 'pop', 1895);
INSERT INTO public.ensemble VALUES (165, 5, 10, 'rock', 1896);
INSERT INTO public.ensemble VALUES (166, 5, 10, 'jazz', 1897);
INSERT INTO public.ensemble VALUES (167, 5, 10, 'rock', 1898);
INSERT INTO public.ensemble VALUES (168, 5, 10, 'jazz', 1899);
INSERT INTO public.ensemble VALUES (169, 5, 10, 'classical', 1900);
INSERT INTO public.ensemble VALUES (170, 5, 10, 'blues', 1901);
INSERT INTO public.ensemble VALUES (171, 5, 10, 'jazz', 1902);
INSERT INTO public.ensemble VALUES (172, 5, 10, 'jazz', 1903);
INSERT INTO public.ensemble VALUES (173, 5, 10, 'classical', 1904);
INSERT INTO public.ensemble VALUES (174, 5, 10, 'classical', 1905);
INSERT INTO public.ensemble VALUES (175, 5, 10, 'jazz', 1906);
INSERT INTO public.ensemble VALUES (176, 5, 10, 'jazz', 1907);
INSERT INTO public.ensemble VALUES (177, 5, 10, 'classical', 1908);
INSERT INTO public.ensemble VALUES (178, 5, 10, 'classical', 1909);
INSERT INTO public.ensemble VALUES (179, 5, 10, 'jazz', 1910);
INSERT INTO public.ensemble VALUES (180, 5, 10, 'rock', 1911);
INSERT INTO public.ensemble VALUES (181, 5, 10, 'classical', 1912);
INSERT INTO public.ensemble VALUES (182, 5, 10, 'classical', 1913);
INSERT INTO public.ensemble VALUES (183, 5, 10, 'classical', 1914);
INSERT INTO public.ensemble VALUES (184, 5, 10, 'rock', 1915);
INSERT INTO public.ensemble VALUES (185, 5, 10, 'blues', 1916);
INSERT INTO public.ensemble VALUES (186, 5, 10, 'classical', 1917);
INSERT INTO public.ensemble VALUES (187, 5, 10, 'jazz', 1918);
INSERT INTO public.ensemble VALUES (188, 5, 10, 'classical', 1919);
INSERT INTO public.ensemble VALUES (189, 5, 10, 'classical', 1920);
INSERT INTO public.ensemble VALUES (190, 5, 10, 'jazz', 1921);
INSERT INTO public.ensemble VALUES (191, 5, 10, 'classical', 1922);
INSERT INTO public.ensemble VALUES (192, 5, 10, 'jazz', 1923);
INSERT INTO public.ensemble VALUES (193, 5, 10, 'pop', 1924);
INSERT INTO public.ensemble VALUES (194, 5, 10, 'classical', 1925);
INSERT INTO public.ensemble VALUES (195, 5, 10, 'blues', 1926);
INSERT INTO public.ensemble VALUES (196, 5, 10, 'jazz', 1927);
INSERT INTO public.ensemble VALUES (197, 5, 10, 'jazz', 1928);
INSERT INTO public.ensemble VALUES (198, 5, 10, 'rock', 1929);
INSERT INTO public.ensemble VALUES (199, 5, 10, 'rock', 1930);
INSERT INTO public.ensemble VALUES (200, 5, 10, 'jazz', 1931);
INSERT INTO public.ensemble VALUES (201, 5, 10, 'blues', 1932);
INSERT INTO public.ensemble VALUES (202, 5, 10, 'rock', 1933);
INSERT INTO public.ensemble VALUES (203, 5, 10, 'jazz', 1934);
INSERT INTO public.ensemble VALUES (204, 5, 10, 'pop', 1935);
INSERT INTO public.ensemble VALUES (205, 5, 10, 'classical', 1936);
INSERT INTO public.ensemble VALUES (206, 5, 10, 'classical', 1937);
INSERT INTO public.ensemble VALUES (207, 5, 10, 'classical', 1938);
INSERT INTO public.ensemble VALUES (208, 5, 10, 'jazz', 1939);
INSERT INTO public.ensemble VALUES (209, 5, 10, 'classical', 1940);
INSERT INTO public.ensemble VALUES (210, 5, 10, 'jazz', 1941);
INSERT INTO public.ensemble VALUES (211, 5, 10, 'rock', 1942);
INSERT INTO public.ensemble VALUES (212, 5, 10, 'classical', 1943);
INSERT INTO public.ensemble VALUES (213, 5, 10, 'jazz', 1944);
INSERT INTO public.ensemble VALUES (214, 5, 10, 'rock', 1945);
INSERT INTO public.ensemble VALUES (215, 5, 10, 'blues', 1946);
INSERT INTO public.ensemble VALUES (216, 5, 10, 'jazz', 1947);
INSERT INTO public.ensemble VALUES (217, 5, 10, 'rock', 1948);


--
-- TOC entry 3573 (class 0 OID 25316)
-- Dependencies: 242
-- Data for Name: group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.group_lesson VALUES (1, 5, 20, 'kazoo', 'advanced', 1951);
INSERT INTO public.group_lesson VALUES (2, 5, 20, 'guitar', 'intermediate', 1952);
INSERT INTO public.group_lesson VALUES (3, 5, 20, 'drums', 'intermediate', 1953);
INSERT INTO public.group_lesson VALUES (4, 5, 20, 'guitar', 'advanced', 1954);
INSERT INTO public.group_lesson VALUES (5, 5, 20, 'kazoo', 'advanced', 1955);
INSERT INTO public.group_lesson VALUES (6, 5, 20, 'drums', 'intermediate', 1956);
INSERT INTO public.group_lesson VALUES (7, 5, 20, 'guitar', 'beginner', 1957);
INSERT INTO public.group_lesson VALUES (8, 5, 20, 'violin', 'intermediate', 1958);
INSERT INTO public.group_lesson VALUES (9, 5, 20, 'guitar', 'intermediate', 1959);
INSERT INTO public.group_lesson VALUES (10, 5, 20, 'violin', 'advanced', 1960);
INSERT INTO public.group_lesson VALUES (11, 5, 20, 'saxophone', 'beginner', 1961);
INSERT INTO public.group_lesson VALUES (12, 5, 20, 'saxophone', 'intermediate', 1962);
INSERT INTO public.group_lesson VALUES (13, 5, 20, 'saxophone', 'beginner', 1963);
INSERT INTO public.group_lesson VALUES (14, 5, 20, 'drums', 'intermediate', 1964);
INSERT INTO public.group_lesson VALUES (15, 5, 20, 'kazoo', 'intermediate', 1965);
INSERT INTO public.group_lesson VALUES (16, 5, 20, 'kazoo', 'beginner', 1966);
INSERT INTO public.group_lesson VALUES (17, 5, 20, 'drums', 'intermediate', 1967);
INSERT INTO public.group_lesson VALUES (18, 5, 20, 'drums', 'intermediate', 1968);
INSERT INTO public.group_lesson VALUES (19, 5, 20, 'guitar', 'advanced', 1969);
INSERT INTO public.group_lesson VALUES (20, 5, 20, 'kazoo', 'beginner', 1970);
INSERT INTO public.group_lesson VALUES (21, 5, 20, 'kazoo', 'intermediate', 1971);
INSERT INTO public.group_lesson VALUES (22, 5, 20, 'saxophone', 'intermediate', 1972);
INSERT INTO public.group_lesson VALUES (23, 5, 20, 'violin', 'intermediate', 1973);
INSERT INTO public.group_lesson VALUES (24, 5, 20, 'drums', 'intermediate', 1974);
INSERT INTO public.group_lesson VALUES (25, 5, 20, 'violin', 'beginner', 1975);
INSERT INTO public.group_lesson VALUES (26, 5, 20, 'guitar', 'beginner', 1976);
INSERT INTO public.group_lesson VALUES (27, 5, 20, 'violin', 'intermediate', 1977);
INSERT INTO public.group_lesson VALUES (28, 5, 20, 'saxophone', 'beginner', 1978);
INSERT INTO public.group_lesson VALUES (29, 5, 20, 'drums', 'intermediate', 1979);
INSERT INTO public.group_lesson VALUES (30, 5, 20, 'saxophone', 'intermediate', 1980);
INSERT INTO public.group_lesson VALUES (31, 5, 20, 'drums', 'beginner', 1981);
INSERT INTO public.group_lesson VALUES (32, 5, 20, 'saxophone', 'intermediate', 1982);
INSERT INTO public.group_lesson VALUES (33, 5, 20, 'guitar', 'intermediate', 1983);
INSERT INTO public.group_lesson VALUES (34, 5, 20, 'violin', 'advanced', 1984);
INSERT INTO public.group_lesson VALUES (35, 5, 20, 'kazoo', 'intermediate', 1985);
INSERT INTO public.group_lesson VALUES (36, 5, 20, 'violin', 'intermediate', 1986);
INSERT INTO public.group_lesson VALUES (37, 5, 20, 'kazoo', 'beginner', 1987);
INSERT INTO public.group_lesson VALUES (38, 5, 20, 'kazoo', 'beginner', 1988);
INSERT INTO public.group_lesson VALUES (39, 5, 20, 'guitar', 'beginner', 1989);
INSERT INTO public.group_lesson VALUES (40, 5, 20, 'guitar', 'beginner', 1990);
INSERT INTO public.group_lesson VALUES (41, 5, 20, 'violin', 'intermediate', 1991);
INSERT INTO public.group_lesson VALUES (42, 5, 20, 'violin', 'intermediate', 1992);
INSERT INTO public.group_lesson VALUES (43, 5, 20, 'violin', 'beginner', 1993);
INSERT INTO public.group_lesson VALUES (44, 5, 20, 'saxophone', 'beginner', 1994);
INSERT INTO public.group_lesson VALUES (45, 5, 20, 'drums', 'beginner', 1995);
INSERT INTO public.group_lesson VALUES (46, 5, 20, 'violin', 'beginner', 1996);
INSERT INTO public.group_lesson VALUES (47, 5, 20, 'kazoo', 'intermediate', 1997);
INSERT INTO public.group_lesson VALUES (48, 5, 20, 'kazoo', 'beginner', 1998);
INSERT INTO public.group_lesson VALUES (49, 5, 20, 'violin', 'beginner', 1999);
INSERT INTO public.group_lesson VALUES (50, 5, 20, 'kazoo', 'advanced', 2000);
INSERT INTO public.group_lesson VALUES (51, 5, 20, 'kazoo', 'intermediate', 2001);
INSERT INTO public.group_lesson VALUES (52, 5, 20, 'guitar', 'intermediate', 2002);
INSERT INTO public.group_lesson VALUES (53, 5, 20, 'saxophone', 'beginner', 2003);
INSERT INTO public.group_lesson VALUES (54, 5, 20, 'saxophone', 'advanced', 2004);
INSERT INTO public.group_lesson VALUES (55, 5, 20, 'saxophone', 'intermediate', 2005);
INSERT INTO public.group_lesson VALUES (56, 5, 20, 'drums', 'beginner', 2006);
INSERT INTO public.group_lesson VALUES (57, 5, 20, 'drums', 'intermediate', 2007);
INSERT INTO public.group_lesson VALUES (58, 5, 20, 'drums', 'advanced', 2008);
INSERT INTO public.group_lesson VALUES (59, 5, 20, 'kazoo', 'beginner', 2009);
INSERT INTO public.group_lesson VALUES (60, 5, 20, 'kazoo', 'beginner', 2010);
INSERT INTO public.group_lesson VALUES (61, 5, 20, 'kazoo', 'beginner', 2011);
INSERT INTO public.group_lesson VALUES (62, 5, 20, 'guitar', 'beginner', 2012);
INSERT INTO public.group_lesson VALUES (63, 5, 20, 'saxophone', 'advanced', 2013);
INSERT INTO public.group_lesson VALUES (64, 5, 20, 'saxophone', 'beginner', 2014);
INSERT INTO public.group_lesson VALUES (65, 5, 20, 'kazoo', 'intermediate', 2015);
INSERT INTO public.group_lesson VALUES (66, 5, 20, 'kazoo', 'beginner', 2016);
INSERT INTO public.group_lesson VALUES (67, 5, 20, 'kazoo', 'beginner', 2017);
INSERT INTO public.group_lesson VALUES (68, 5, 20, 'guitar', 'intermediate', 2018);
INSERT INTO public.group_lesson VALUES (69, 5, 20, 'kazoo', 'beginner', 2019);
INSERT INTO public.group_lesson VALUES (70, 5, 20, 'drums', 'beginner', 2020);
INSERT INTO public.group_lesson VALUES (71, 5, 20, 'saxophone', 'beginner', 2021);
INSERT INTO public.group_lesson VALUES (72, 5, 20, 'saxophone', 'intermediate', 2022);
INSERT INTO public.group_lesson VALUES (73, 5, 20, 'saxophone', 'advanced', 2023);
INSERT INTO public.group_lesson VALUES (74, 5, 20, 'guitar', 'intermediate', 2024);
INSERT INTO public.group_lesson VALUES (75, 5, 20, 'guitar', 'beginner', 2025);
INSERT INTO public.group_lesson VALUES (76, 5, 20, 'drums', 'advanced', 2026);
INSERT INTO public.group_lesson VALUES (77, 5, 20, 'kazoo', 'advanced', 2027);
INSERT INTO public.group_lesson VALUES (78, 5, 20, 'guitar', 'beginner', 2028);
INSERT INTO public.group_lesson VALUES (79, 5, 20, 'saxophone', 'intermediate', 2029);
INSERT INTO public.group_lesson VALUES (80, 5, 20, 'guitar', 'intermediate', 2030);
INSERT INTO public.group_lesson VALUES (81, 5, 20, 'violin', 'intermediate', 2031);
INSERT INTO public.group_lesson VALUES (82, 5, 20, 'drums', 'beginner', 2032);
INSERT INTO public.group_lesson VALUES (83, 5, 20, 'kazoo', 'intermediate', 2033);
INSERT INTO public.group_lesson VALUES (84, 5, 20, 'saxophone', 'intermediate', 2034);
INSERT INTO public.group_lesson VALUES (85, 5, 20, 'kazoo', 'beginner', 2035);
INSERT INTO public.group_lesson VALUES (86, 5, 20, 'saxophone', 'advanced', 2036);
INSERT INTO public.group_lesson VALUES (87, 5, 20, 'guitar', 'beginner', 2037);
INSERT INTO public.group_lesson VALUES (88, 5, 20, 'guitar', 'beginner', 2038);
INSERT INTO public.group_lesson VALUES (89, 5, 20, 'drums', 'beginner', 2039);
INSERT INTO public.group_lesson VALUES (90, 5, 20, 'violin', 'intermediate', 2040);
INSERT INTO public.group_lesson VALUES (91, 5, 20, 'saxophone', 'intermediate', 2041);
INSERT INTO public.group_lesson VALUES (92, 5, 20, 'saxophone', 'beginner', 2042);
INSERT INTO public.group_lesson VALUES (93, 5, 20, 'saxophone', 'intermediate', 2043);
INSERT INTO public.group_lesson VALUES (94, 5, 20, 'kazoo', 'beginner', 2044);
INSERT INTO public.group_lesson VALUES (95, 5, 20, 'drums', 'intermediate', 2045);
INSERT INTO public.group_lesson VALUES (96, 5, 20, 'drums', 'beginner', 2046);
INSERT INTO public.group_lesson VALUES (97, 5, 20, 'kazoo', 'advanced', 2047);
INSERT INTO public.group_lesson VALUES (98, 5, 20, 'kazoo', 'intermediate', 2048);
INSERT INTO public.group_lesson VALUES (99, 5, 20, 'violin', 'advanced', 2049);
INSERT INTO public.group_lesson VALUES (100, 5, 20, 'kazoo', 'beginner', 2050);
INSERT INTO public.group_lesson VALUES (101, 5, 20, 'kazoo', 'beginner', 2051);
INSERT INTO public.group_lesson VALUES (102, 5, 20, 'kazoo', 'intermediate', 2052);
INSERT INTO public.group_lesson VALUES (103, 5, 20, 'drums', 'intermediate', 2053);
INSERT INTO public.group_lesson VALUES (104, 5, 20, 'guitar', 'intermediate', 2054);
INSERT INTO public.group_lesson VALUES (105, 5, 20, 'saxophone', 'advanced', 2055);
INSERT INTO public.group_lesson VALUES (106, 5, 20, 'kazoo', 'intermediate', 2056);
INSERT INTO public.group_lesson VALUES (107, 5, 20, 'violin', 'advanced', 2057);
INSERT INTO public.group_lesson VALUES (108, 5, 20, 'drums', 'beginner', 2058);
INSERT INTO public.group_lesson VALUES (109, 5, 20, 'violin', 'advanced', 2059);
INSERT INTO public.group_lesson VALUES (110, 5, 20, 'drums', 'intermediate', 2060);
INSERT INTO public.group_lesson VALUES (111, 5, 20, 'violin', 'intermediate', 2061);
INSERT INTO public.group_lesson VALUES (112, 5, 20, 'guitar', 'advanced', 2062);
INSERT INTO public.group_lesson VALUES (113, 5, 20, 'violin', 'advanced', 2063);
INSERT INTO public.group_lesson VALUES (114, 5, 20, 'kazoo', 'intermediate', 2064);
INSERT INTO public.group_lesson VALUES (115, 5, 20, 'guitar', 'beginner', 2065);
INSERT INTO public.group_lesson VALUES (116, 5, 20, 'saxophone', 'intermediate', 2066);
INSERT INTO public.group_lesson VALUES (117, 5, 20, 'violin', 'beginner', 2067);
INSERT INTO public.group_lesson VALUES (118, 5, 20, 'violin', 'intermediate', 2068);
INSERT INTO public.group_lesson VALUES (119, 5, 20, 'guitar', 'intermediate', 2069);
INSERT INTO public.group_lesson VALUES (120, 5, 20, 'saxophone', 'beginner', 2070);
INSERT INTO public.group_lesson VALUES (121, 5, 20, 'kazoo', 'advanced', 2071);
INSERT INTO public.group_lesson VALUES (122, 5, 20, 'saxophone', 'beginner', 2072);
INSERT INTO public.group_lesson VALUES (123, 5, 20, 'drums', 'intermediate', 2073);
INSERT INTO public.group_lesson VALUES (124, 5, 20, 'drums', 'beginner', 2074);
INSERT INTO public.group_lesson VALUES (125, 5, 20, 'violin', 'beginner', 2075);
INSERT INTO public.group_lesson VALUES (126, 5, 20, 'kazoo', 'intermediate', 2076);
INSERT INTO public.group_lesson VALUES (127, 5, 20, 'saxophone', 'intermediate', 2077);
INSERT INTO public.group_lesson VALUES (128, 5, 20, 'kazoo', 'intermediate', 2078);
INSERT INTO public.group_lesson VALUES (129, 5, 20, 'drums', 'beginner', 2079);
INSERT INTO public.group_lesson VALUES (130, 5, 20, 'kazoo', 'beginner', 2080);
INSERT INTO public.group_lesson VALUES (131, 5, 20, 'guitar', 'intermediate', 2081);
INSERT INTO public.group_lesson VALUES (132, 5, 20, 'drums', 'beginner', 2082);
INSERT INTO public.group_lesson VALUES (133, 5, 20, 'violin', 'intermediate', 2083);
INSERT INTO public.group_lesson VALUES (134, 5, 20, 'saxophone', 'intermediate', 2084);
INSERT INTO public.group_lesson VALUES (135, 5, 20, 'kazoo', 'beginner', 2085);
INSERT INTO public.group_lesson VALUES (136, 5, 20, 'kazoo', 'advanced', 2086);
INSERT INTO public.group_lesson VALUES (137, 5, 20, 'drums', 'beginner', 2087);
INSERT INTO public.group_lesson VALUES (138, 5, 20, 'kazoo', 'beginner', 2088);
INSERT INTO public.group_lesson VALUES (139, 5, 20, 'kazoo', 'advanced', 2089);
INSERT INTO public.group_lesson VALUES (140, 5, 20, 'kazoo', 'intermediate', 2090);
INSERT INTO public.group_lesson VALUES (141, 5, 20, 'guitar', 'intermediate', 2091);
INSERT INTO public.group_lesson VALUES (142, 5, 20, 'saxophone', 'intermediate', 2092);
INSERT INTO public.group_lesson VALUES (143, 5, 20, 'drums', 'beginner', 2093);
INSERT INTO public.group_lesson VALUES (144, 5, 20, 'violin', 'beginner', 2094);
INSERT INTO public.group_lesson VALUES (145, 5, 20, 'drums', 'beginner', 2095);
INSERT INTO public.group_lesson VALUES (146, 5, 20, 'violin', 'intermediate', 2096);
INSERT INTO public.group_lesson VALUES (147, 5, 20, 'drums', 'beginner', 2097);
INSERT INTO public.group_lesson VALUES (148, 5, 20, 'saxophone', 'beginner', 2098);
INSERT INTO public.group_lesson VALUES (149, 5, 20, 'saxophone', 'intermediate', 2099);
INSERT INTO public.group_lesson VALUES (150, 5, 20, 'violin', 'advanced', 2100);
INSERT INTO public.group_lesson VALUES (151, 5, 20, 'drums', 'beginner', 2101);
INSERT INTO public.group_lesson VALUES (152, 5, 20, 'saxophone', 'intermediate', 2102);
INSERT INTO public.group_lesson VALUES (153, 5, 20, 'kazoo', 'intermediate', 2103);
INSERT INTO public.group_lesson VALUES (154, 5, 20, 'guitar', 'advanced', 2104);
INSERT INTO public.group_lesson VALUES (155, 5, 20, 'kazoo', 'beginner', 2105);
INSERT INTO public.group_lesson VALUES (156, 5, 20, 'saxophone', 'beginner', 2106);
INSERT INTO public.group_lesson VALUES (157, 5, 20, 'violin', 'beginner', 2107);
INSERT INTO public.group_lesson VALUES (158, 5, 20, 'violin', 'beginner', 2108);
INSERT INTO public.group_lesson VALUES (159, 5, 20, 'violin', 'beginner', 2109);
INSERT INTO public.group_lesson VALUES (160, 5, 20, 'violin', 'beginner', 2110);
INSERT INTO public.group_lesson VALUES (161, 5, 20, 'drums', 'advanced', 2111);
INSERT INTO public.group_lesson VALUES (162, 5, 20, 'kazoo', 'intermediate', 2112);
INSERT INTO public.group_lesson VALUES (163, 5, 20, 'saxophone', 'intermediate', 2113);
INSERT INTO public.group_lesson VALUES (164, 5, 20, 'kazoo', 'beginner', 2114);
INSERT INTO public.group_lesson VALUES (165, 5, 20, 'violin', 'intermediate', 2115);
INSERT INTO public.group_lesson VALUES (166, 5, 20, 'drums', 'beginner', 2116);
INSERT INTO public.group_lesson VALUES (167, 5, 20, 'saxophone', 'intermediate', 2117);
INSERT INTO public.group_lesson VALUES (168, 5, 20, 'kazoo', 'intermediate', 2118);
INSERT INTO public.group_lesson VALUES (169, 5, 20, 'violin', 'beginner', 2119);
INSERT INTO public.group_lesson VALUES (170, 5, 20, 'saxophone', 'intermediate', 2120);
INSERT INTO public.group_lesson VALUES (171, 5, 20, 'kazoo', 'advanced', 2121);
INSERT INTO public.group_lesson VALUES (172, 5, 20, 'violin', 'beginner', 2122);
INSERT INTO public.group_lesson VALUES (173, 5, 20, 'guitar', 'intermediate', 2123);
INSERT INTO public.group_lesson VALUES (174, 5, 20, 'drums', 'beginner', 2124);
INSERT INTO public.group_lesson VALUES (175, 5, 20, 'saxophone', 'intermediate', 2125);
INSERT INTO public.group_lesson VALUES (176, 5, 20, 'drums', 'beginner', 2126);
INSERT INTO public.group_lesson VALUES (177, 5, 20, 'guitar', 'beginner', 2127);
INSERT INTO public.group_lesson VALUES (178, 5, 20, 'saxophone', 'intermediate', 2128);
INSERT INTO public.group_lesson VALUES (179, 5, 20, 'drums', 'beginner', 2129);
INSERT INTO public.group_lesson VALUES (180, 5, 20, 'saxophone', 'beginner', 2130);
INSERT INTO public.group_lesson VALUES (181, 5, 20, 'guitar', 'beginner', 2131);
INSERT INTO public.group_lesson VALUES (182, 5, 20, 'guitar', 'intermediate', 2132);
INSERT INTO public.group_lesson VALUES (183, 5, 20, 'violin', 'intermediate', 2133);
INSERT INTO public.group_lesson VALUES (184, 5, 20, 'kazoo', 'beginner', 2134);
INSERT INTO public.group_lesson VALUES (185, 5, 20, 'guitar', 'beginner', 2135);
INSERT INTO public.group_lesson VALUES (186, 5, 20, 'kazoo', 'intermediate', 2136);
INSERT INTO public.group_lesson VALUES (187, 5, 20, 'guitar', 'intermediate', 2137);
INSERT INTO public.group_lesson VALUES (188, 5, 20, 'guitar', 'beginner', 2138);
INSERT INTO public.group_lesson VALUES (189, 5, 20, 'guitar', 'advanced', 2139);
INSERT INTO public.group_lesson VALUES (190, 5, 20, 'guitar', 'advanced', 2140);
INSERT INTO public.group_lesson VALUES (191, 5, 20, 'violin', 'intermediate', 2141);
INSERT INTO public.group_lesson VALUES (192, 5, 20, 'guitar', 'intermediate', 2142);
INSERT INTO public.group_lesson VALUES (193, 5, 20, 'violin', 'beginner', 2143);
INSERT INTO public.group_lesson VALUES (194, 5, 20, 'violin', 'intermediate', 2144);
INSERT INTO public.group_lesson VALUES (195, 5, 20, 'violin', 'beginner', 2145);
INSERT INTO public.group_lesson VALUES (196, 5, 20, 'violin', 'intermediate', 2146);
INSERT INTO public.group_lesson VALUES (197, 5, 20, 'guitar', 'beginner', 2147);
INSERT INTO public.group_lesson VALUES (198, 5, 20, 'kazoo', 'intermediate', 2148);
INSERT INTO public.group_lesson VALUES (199, 5, 20, 'drums', 'advanced', 2149);
INSERT INTO public.group_lesson VALUES (200, 5, 20, 'drums', 'intermediate', 2150);


--
-- TOC entry 3575 (class 0 OID 25328)
-- Dependencies: 244
-- Data for Name: individual_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.individual_lesson VALUES (201, 'guitar', 'beginner', 2151, 274);
INSERT INTO public.individual_lesson VALUES (202, 'saxophone', 'intermediate', 2152, 276);
INSERT INTO public.individual_lesson VALUES (203, 'drums', 'beginner', 2153, 272);
INSERT INTO public.individual_lesson VALUES (204, 'guitar', 'intermediate', 2154, 275);
INSERT INTO public.individual_lesson VALUES (205, 'drums', 'advanced', 2155, 277);
INSERT INTO public.individual_lesson VALUES (206, 'violin', 'advanced', 2156, 277);
INSERT INTO public.individual_lesson VALUES (207, 'violin', 'beginner', 2157, 274);
INSERT INTO public.individual_lesson VALUES (208, 'kazoo', 'beginner', 2158, 272);
INSERT INTO public.individual_lesson VALUES (209, 'saxophone', 'beginner', 2159, 274);
INSERT INTO public.individual_lesson VALUES (210, 'guitar', 'beginner', 2160, 273);
INSERT INTO public.individual_lesson VALUES (211, 'drums', 'intermediate', 2161, 278);
INSERT INTO public.individual_lesson VALUES (212, 'violin', 'advanced', 2162, 277);
INSERT INTO public.individual_lesson VALUES (213, 'kazoo', 'intermediate', 2163, 276);
INSERT INTO public.individual_lesson VALUES (214, 'kazoo', 'intermediate', 2164, 275);
INSERT INTO public.individual_lesson VALUES (215, 'guitar', 'beginner', 2165, 273);
INSERT INTO public.individual_lesson VALUES (216, 'drums', 'beginner', 2166, 272);
INSERT INTO public.individual_lesson VALUES (217, 'guitar', 'intermediate', 2167, 276);
INSERT INTO public.individual_lesson VALUES (218, 'kazoo', 'beginner', 2168, 272);
INSERT INTO public.individual_lesson VALUES (219, 'guitar', 'beginner', 2169, 274);
INSERT INTO public.individual_lesson VALUES (220, 'guitar', 'beginner', 2170, 273);
INSERT INTO public.individual_lesson VALUES (221, 'drums', 'advanced', 2171, 271);
INSERT INTO public.individual_lesson VALUES (222, 'violin', 'intermediate', 2172, 278);
INSERT INTO public.individual_lesson VALUES (223, 'violin', 'intermediate', 2173, 276);
INSERT INTO public.individual_lesson VALUES (224, 'saxophone', 'beginner', 2174, 273);
INSERT INTO public.individual_lesson VALUES (225, 'saxophone', 'intermediate', 2175, 275);
INSERT INTO public.individual_lesson VALUES (226, 'drums', 'intermediate', 2176, 275);
INSERT INTO public.individual_lesson VALUES (227, 'saxophone', 'intermediate', 2177, 278);
INSERT INTO public.individual_lesson VALUES (228, 'drums', 'beginner', 2178, 273);
INSERT INTO public.individual_lesson VALUES (229, 'violin', 'intermediate', 2179, 276);
INSERT INTO public.individual_lesson VALUES (230, 'saxophone', 'advanced', 2180, 277);
INSERT INTO public.individual_lesson VALUES (231, 'violin', 'beginner', 2181, 279);
INSERT INTO public.individual_lesson VALUES (232, 'guitar', 'advanced', 2182, 271);
INSERT INTO public.individual_lesson VALUES (233, 'kazoo', 'beginner', 2183, 274);
INSERT INTO public.individual_lesson VALUES (234, 'guitar', 'advanced', 2184, 271);
INSERT INTO public.individual_lesson VALUES (235, 'guitar', 'beginner', 2185, 272);
INSERT INTO public.individual_lesson VALUES (236, 'violin', 'beginner', 2186, 274);
INSERT INTO public.individual_lesson VALUES (237, 'kazoo', 'intermediate', 2187, 276);
INSERT INTO public.individual_lesson VALUES (238, 'drums', 'advanced', 2188, 277);
INSERT INTO public.individual_lesson VALUES (239, 'guitar', 'beginner', 2189, 273);
INSERT INTO public.individual_lesson VALUES (240, 'saxophone', 'beginner', 2190, 272);
INSERT INTO public.individual_lesson VALUES (241, 'saxophone', 'intermediate', 2191, 278);
INSERT INTO public.individual_lesson VALUES (242, 'violin', 'intermediate', 2192, 276);
INSERT INTO public.individual_lesson VALUES (243, 'violin', 'advanced', 2193, 277);
INSERT INTO public.individual_lesson VALUES (244, 'saxophone', 'intermediate', 2194, 278);
INSERT INTO public.individual_lesson VALUES (245, 'violin', 'intermediate', 2195, 278);
INSERT INTO public.individual_lesson VALUES (246, 'kazoo', 'advanced', 2196, 277);
INSERT INTO public.individual_lesson VALUES (247, 'saxophone', 'beginner', 2197, 279);
INSERT INTO public.individual_lesson VALUES (248, 'kazoo', 'beginner', 2198, 273);
INSERT INTO public.individual_lesson VALUES (249, 'saxophone', 'beginner', 2199, 273);
INSERT INTO public.individual_lesson VALUES (250, 'kazoo', 'advanced', 2200, 277);
INSERT INTO public.individual_lesson VALUES (251, 'guitar', 'intermediate', 2201, 275);
INSERT INTO public.individual_lesson VALUES (252, 'guitar', 'intermediate', 2202, 276);
INSERT INTO public.individual_lesson VALUES (253, 'violin', 'intermediate', 2203, 275);
INSERT INTO public.individual_lesson VALUES (254, 'violin', 'beginner', 2204, 274);
INSERT INTO public.individual_lesson VALUES (255, 'violin', 'advanced', 2205, 277);
INSERT INTO public.individual_lesson VALUES (256, 'violin', 'beginner', 2206, 279);
INSERT INTO public.individual_lesson VALUES (257, 'kazoo', 'beginner', 2207, 272);
INSERT INTO public.individual_lesson VALUES (258, 'kazoo', 'advanced', 2208, 271);
INSERT INTO public.individual_lesson VALUES (259, 'guitar', 'beginner', 2209, 274);
INSERT INTO public.individual_lesson VALUES (260, 'violin', 'beginner', 2210, 274);
INSERT INTO public.individual_lesson VALUES (261, 'saxophone', 'intermediate', 2211, 276);
INSERT INTO public.individual_lesson VALUES (262, 'guitar', 'intermediate', 2212, 275);
INSERT INTO public.individual_lesson VALUES (263, 'violin', 'intermediate', 2213, 278);
INSERT INTO public.individual_lesson VALUES (264, 'violin', 'intermediate', 2214, 278);
INSERT INTO public.individual_lesson VALUES (265, 'violin', 'advanced', 2215, 277);
INSERT INTO public.individual_lesson VALUES (266, 'violin', 'intermediate', 2216, 278);
INSERT INTO public.individual_lesson VALUES (267, 'guitar', 'intermediate', 2217, 276);
INSERT INTO public.individual_lesson VALUES (268, 'kazoo', 'advanced', 2218, 271);
INSERT INTO public.individual_lesson VALUES (269, 'drums', 'beginner', 2219, 274);
INSERT INTO public.individual_lesson VALUES (270, 'kazoo', 'beginner', 2220, 273);
INSERT INTO public.individual_lesson VALUES (271, 'violin', 'beginner', 2221, 274);
INSERT INTO public.individual_lesson VALUES (272, 'drums', 'beginner', 2222, 272);
INSERT INTO public.individual_lesson VALUES (273, 'kazoo', 'beginner', 2223, 279);
INSERT INTO public.individual_lesson VALUES (274, 'kazoo', 'advanced', 2224, 277);
INSERT INTO public.individual_lesson VALUES (275, 'saxophone', 'beginner', 2225, 274);
INSERT INTO public.individual_lesson VALUES (276, 'saxophone', 'beginner', 2226, 279);
INSERT INTO public.individual_lesson VALUES (277, 'guitar', 'beginner', 2227, 279);
INSERT INTO public.individual_lesson VALUES (278, 'drums', 'beginner', 2228, 272);
INSERT INTO public.individual_lesson VALUES (279, 'drums', 'intermediate', 2229, 276);
INSERT INTO public.individual_lesson VALUES (280, 'saxophone', 'intermediate', 2230, 275);
INSERT INTO public.individual_lesson VALUES (281, 'guitar', 'beginner', 2231, 272);
INSERT INTO public.individual_lesson VALUES (282, 'drums', 'beginner', 2232, 274);
INSERT INTO public.individual_lesson VALUES (283, 'violin', 'intermediate', 2233, 275);
INSERT INTO public.individual_lesson VALUES (284, 'drums', 'intermediate', 2234, 276);
INSERT INTO public.individual_lesson VALUES (285, 'violin', 'intermediate', 2235, 275);
INSERT INTO public.individual_lesson VALUES (286, 'saxophone', 'beginner', 2236, 272);
INSERT INTO public.individual_lesson VALUES (287, 'violin', 'advanced', 2237, 271);
INSERT INTO public.individual_lesson VALUES (288, 'saxophone', 'intermediate', 2238, 275);
INSERT INTO public.individual_lesson VALUES (289, 'violin', 'intermediate', 2239, 275);
INSERT INTO public.individual_lesson VALUES (290, 'guitar', 'intermediate', 2240, 276);
INSERT INTO public.individual_lesson VALUES (291, 'saxophone', 'intermediate', 2241, 275);
INSERT INTO public.individual_lesson VALUES (292, 'saxophone', 'beginner', 2242, 279);
INSERT INTO public.individual_lesson VALUES (293, 'kazoo', 'intermediate', 2243, 275);
INSERT INTO public.individual_lesson VALUES (294, 'drums', 'intermediate', 2244, 275);
INSERT INTO public.individual_lesson VALUES (295, 'guitar', 'intermediate', 2245, 275);
INSERT INTO public.individual_lesson VALUES (296, 'drums', 'beginner', 2246, 279);
INSERT INTO public.individual_lesson VALUES (297, 'drums', 'beginner', 2247, 273);
INSERT INTO public.individual_lesson VALUES (298, 'drums', 'advanced', 2248, 271);
INSERT INTO public.individual_lesson VALUES (299, 'saxophone', 'intermediate', 2249, 275);
INSERT INTO public.individual_lesson VALUES (300, 'drums', 'beginner', 2250, 272);


--
-- TOC entry 3564 (class 0 OID 25223)
-- Dependencies: 233
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor VALUES (16, true);
INSERT INTO public.instructor VALUES (17, false);
INSERT INTO public.instructor VALUES (18, false);
INSERT INTO public.instructor VALUES (19, true);
INSERT INTO public.instructor VALUES (20, true);


--
-- TOC entry 3565 (class 0 OID 25233)
-- Dependencies: 234
-- Data for Name: instructor_teach_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor_teach_instrument VALUES (16, 10);
INSERT INTO public.instructor_teach_instrument VALUES (16, 9);
INSERT INTO public.instructor_teach_instrument VALUES (16, 7);
INSERT INTO public.instructor_teach_instrument VALUES (16, 8);
INSERT INTO public.instructor_teach_instrument VALUES (16, 6);
INSERT INTO public.instructor_teach_instrument VALUES (17, 9);
INSERT INTO public.instructor_teach_instrument VALUES (18, 8);
INSERT INTO public.instructor_teach_instrument VALUES (18, 7);
INSERT INTO public.instructor_teach_instrument VALUES (19, 6);
INSERT INTO public.instructor_teach_instrument VALUES (19, 8);
INSERT INTO public.instructor_teach_instrument VALUES (19, 7);
INSERT INTO public.instructor_teach_instrument VALUES (20, 7);
INSERT INTO public.instructor_teach_instrument VALUES (20, 10);
INSERT INTO public.instructor_teach_instrument VALUES (20, 8);


--
-- TOC entry 3550 (class 0 OID 25132)
-- Dependencies: 219
-- Data for Name: lesson_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lesson_price VALUES (10, 'group', 'beginner', 150);
INSERT INTO public.lesson_price VALUES (11, 'group', 'intermediate', 150);
INSERT INTO public.lesson_price VALUES (12, 'group', 'advanced', 250);
INSERT INTO public.lesson_price VALUES (13, 'ensemble', 'beginner', 200);
INSERT INTO public.lesson_price VALUES (14, 'ensemble', 'intermediate', 200);
INSERT INTO public.lesson_price VALUES (15, 'ensemble', 'advanced', 300);
INSERT INTO public.lesson_price VALUES (16, 'individual', 'beginner', 110);
INSERT INTO public.lesson_price VALUES (17, 'individual', 'intermediate', 110);
INSERT INTO public.lesson_price VALUES (18, 'individual', 'advanced', 210);


--
-- TOC entry 3578 (class 0 OID 25464)
-- Dependencies: 256
-- Data for Name: months; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.months VALUES ('Jan', 1);
INSERT INTO public.months VALUES ('Feb', 2);
INSERT INTO public.months VALUES ('Mar', 3);
INSERT INTO public.months VALUES ('Apr', 4);
INSERT INTO public.months VALUES ('May', 5);
INSERT INTO public.months VALUES ('Jun', 6);
INSERT INTO public.months VALUES ('Jul', 7);
INSERT INTO public.months VALUES ('Aug', 8);
INSERT INTO public.months VALUES ('Sep', 9);
INSERT INTO public.months VALUES ('Oct', 10);
INSERT INTO public.months VALUES ('Nov', 11);
INSERT INTO public.months VALUES ('Dec', 12);


--
-- TOC entry 3552 (class 0 OID 25139)
-- Dependencies: 221
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person VALUES (16, 'Lesley Wiley', '82211727-4893', '5618 Ornare Av.', '53964', 'Hudiksvall');
INSERT INTO public.person VALUES (17, 'Tarik Cummings', '43921881-9024', '7294 Donec Rd.', '65643', 'Nässjö');
INSERT INTO public.person VALUES (18, 'Tate Vazquez', '21205852-7576', '522-2274 Dictum Road', '35400', 'Linköping');
INSERT INTO public.person VALUES (19, 'Paul Patrick', '15896888-3414', '202-7664 Lectus Ave', '96676', 'Stockholm');
INSERT INTO public.person VALUES (20, 'Mohammad Lindsey', '55745097-6465', 'Ap #488-5427 In Ave', '69675', 'Uddevalla');
INSERT INTO public.person VALUES (21, 'Tyrone King', '64737906-2157', '2613 Gravida Avenue', '61661', 'Värnamo');
INSERT INTO public.person VALUES (24, 'Quinn Matthews', '58308702-1272', '1162 Varius Street', '21173', 'Borlänge');
INSERT INTO public.person VALUES (25, 'Gary Washington', '56841291-7632', 'Ap #906-1693 Proin St.', '12753', 'Mjölby');
INSERT INTO public.person VALUES (27, 'Dane Levine', '99816829-6432', '222-8399 Aliquet St.', '86897', 'Linköping');
INSERT INTO public.person VALUES (28, 'Wang Cherry', '47685757-1747', 'Ap #487-1556 Curabitur Av.', '80455', 'Borås');
INSERT INTO public.person VALUES (29, 'Elvis Valencia', '36564441-6328', '505-162 Ac Rd.', '91789', 'Skövde');
INSERT INTO public.person VALUES (30, 'Genevieve Grant', '57213262-2754', '635-101 Mattis St.', '32253', 'Nässjö');
INSERT INTO public.person VALUES (22, 'Keefe King', '04902856-7378', '171-2664 Sed Street', '68883', 'Jönköping');
INSERT INTO public.person VALUES (23, 'Vielka King', '25832275-2224', '5779 Litora Street', '73339', 'Märsta');
INSERT INTO public.person VALUES (26, 'Lisandra Washington', '32174513-1338', '1501 Dolor. Rd.', '75547', 'Norrköping');


--
-- TOC entry 3553 (class 0 OID 25145)
-- Dependencies: 222
-- Data for Name: person_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person_email VALUES (16, 16);
INSERT INTO public.person_email VALUES (17, 17);
INSERT INTO public.person_email VALUES (18, 18);
INSERT INTO public.person_email VALUES (19, 19);
INSERT INTO public.person_email VALUES (20, 20);
INSERT INTO public.person_email VALUES (21, 21);
INSERT INTO public.person_email VALUES (22, 22);
INSERT INTO public.person_email VALUES (23, 23);
INSERT INTO public.person_email VALUES (24, 24);
INSERT INTO public.person_email VALUES (25, 25);
INSERT INTO public.person_email VALUES (26, 26);
INSERT INTO public.person_email VALUES (27, 27);
INSERT INTO public.person_email VALUES (28, 28);
INSERT INTO public.person_email VALUES (29, 29);
INSERT INTO public.person_email VALUES (30, 30);


--
-- TOC entry 3566 (class 0 OID 25248)
-- Dependencies: 235
-- Data for Name: person_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person_phone VALUES (16, 16);
INSERT INTO public.person_phone VALUES (17, 17);
INSERT INTO public.person_phone VALUES (18, 18);
INSERT INTO public.person_phone VALUES (19, 19);
INSERT INTO public.person_phone VALUES (20, 20);
INSERT INTO public.person_phone VALUES (21, 21);
INSERT INTO public.person_phone VALUES (22, 22);
INSERT INTO public.person_phone VALUES (23, 23);
INSERT INTO public.person_phone VALUES (24, 24);
INSERT INTO public.person_phone VALUES (25, 25);
INSERT INTO public.person_phone VALUES (26, 26);
INSERT INTO public.person_phone VALUES (27, 27);
INSERT INTO public.person_phone VALUES (28, 28);
INSERT INTO public.person_phone VALUES (29, 29);
INSERT INTO public.person_phone VALUES (30, 30);


--
-- TOC entry 3555 (class 0 OID 25161)
-- Dependencies: 224
-- Data for Name: phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.phone VALUES (16, '0704558837');
INSERT INTO public.phone VALUES (17, '0709691352');
INSERT INTO public.phone VALUES (18, '0700486837');
INSERT INTO public.phone VALUES (19, '0701088879');
INSERT INTO public.phone VALUES (20, '0702944618');
INSERT INTO public.phone VALUES (21, '0706252896');
INSERT INTO public.phone VALUES (22, '0705498337');
INSERT INTO public.phone VALUES (23, '0708432312');
INSERT INTO public.phone VALUES (24, '0700353638');
INSERT INTO public.phone VALUES (25, '0708190653');
INSERT INTO public.phone VALUES (26, '0708285127');
INSERT INTO public.phone VALUES (27, '0704088594');
INSERT INTO public.phone VALUES (28, '0705623842');
INSERT INTO public.phone VALUES (29, '0707967812');
INSERT INTO public.phone VALUES (30, '0702922911');


--
-- TOC entry 3567 (class 0 OID 25263)
-- Dependencies: 236
-- Data for Name: rent; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rent VALUES (24, 'January', 4, true, 21);
INSERT INTO public.rent VALUES (24, 'March', 2, true, 30);
INSERT INTO public.rent VALUES (29, 'April', 7, true, 26);
INSERT INTO public.rent VALUES (29, 'November', 10, true, 37);
INSERT INTO public.rent VALUES (27, 'November', 12, true, 31);
INSERT INTO public.rent VALUES (27, 'June', 9, false, 33);
INSERT INTO public.rent VALUES (26, 'August', 3, false, 34);
INSERT INTO public.rent VALUES (21, 'March', 10, false, 22);
INSERT INTO public.rent VALUES (21, 'November', 2, false, 40);
INSERT INTO public.rent VALUES (23, 'September', 10, true, 32);


--
-- TOC entry 3557 (class 0 OID 25168)
-- Dependencies: 226
-- Data for Name: rent_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rent_instrument VALUES (21, 'violin', 'Stentor', 160, 1);
INSERT INTO public.rent_instrument VALUES (22, 'violin', 'Mendini', 120, 2);
INSERT INTO public.rent_instrument VALUES (23, 'violin', 'Cecilio', 150, 3);
INSERT INTO public.rent_instrument VALUES (24, 'violin', 'Cecilio', 110, 4);
INSERT INTO public.rent_instrument VALUES (25, 'violin', 'Mendini', 120, 5);
INSERT INTO public.rent_instrument VALUES (26, 'saxophone', 'P.Mauriat', 160, 6);
INSERT INTO public.rent_instrument VALUES (27, 'saxophone', 'Yamaha', 120, 7);
INSERT INTO public.rent_instrument VALUES (28, 'saxophone', 'Selmer', 110, 8);
INSERT INTO public.rent_instrument VALUES (29, 'kazoo', 'Hohnet', 70, 9);
INSERT INTO public.rent_instrument VALUES (30, 'kazoo', 'Grover', 10, 10);
INSERT INTO public.rent_instrument VALUES (31, 'kazoo', 'Hohnet', 50, 11);
INSERT INTO public.rent_instrument VALUES (32, 'kazoo', 'Monoprice', 30, 12);
INSERT INTO public.rent_instrument VALUES (33, 'drums', 'Yamaha', 520, 13);
INSERT INTO public.rent_instrument VALUES (34, 'drums', 'Sonor', 540, 14);
INSERT INTO public.rent_instrument VALUES (35, 'guitar', 'Fender', 140, 15);
INSERT INTO public.rent_instrument VALUES (36, 'guitar', 'Rickenbacker', 150, 16);
INSERT INTO public.rent_instrument VALUES (37, 'guitar', 'Ibanez', 160, 17);
INSERT INTO public.rent_instrument VALUES (38, 'guitar', 'Fender', 150, 18);
INSERT INTO public.rent_instrument VALUES (39, 'guitar', 'Gibson', 140, 19);
INSERT INTO public.rent_instrument VALUES (40, 'guitar', 'Gibson', 150, 20);


--
-- TOC entry 3568 (class 0 OID 25278)
-- Dependencies: 237
-- Data for Name: sibling; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sibling VALUES (21, 22);
INSERT INTO public.sibling VALUES (21, 23);
INSERT INTO public.sibling VALUES (22, 21);
INSERT INTO public.sibling VALUES (22, 23);
INSERT INTO public.sibling VALUES (23, 21);
INSERT INTO public.sibling VALUES (23, 22);
INSERT INTO public.sibling VALUES (25, 26);
INSERT INTO public.sibling VALUES (26, 25);


--
-- TOC entry 3558 (class 0 OID 25174)
-- Dependencies: 227
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.student VALUES (21, 'advanced');
INSERT INTO public.student VALUES (22, 'beginner');
INSERT INTO public.student VALUES (23, 'beginner');
INSERT INTO public.student VALUES (24, 'beginner');
INSERT INTO public.student VALUES (25, 'intermediate');
INSERT INTO public.student VALUES (26, 'intermediate');
INSERT INTO public.student VALUES (27, 'advanced');
INSERT INTO public.student VALUES (28, 'intermediate');
INSERT INTO public.student VALUES (29, 'beginner');
INSERT INTO public.student VALUES (30, 'intermediate');


--
-- TOC entry 3560 (class 0 OID 25185)
-- Dependencies: 229
-- Data for Name: teach_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teach_instrument VALUES (6, 'violin');
INSERT INTO public.teach_instrument VALUES (7, 'saxophone');
INSERT INTO public.teach_instrument VALUES (8, 'kazoo');
INSERT INTO public.teach_instrument VALUES (9, 'drums');
INSERT INTO public.teach_instrument VALUES (10, 'guitar');


--
-- TOC entry 3569 (class 0 OID 25293)
-- Dependencies: 238
-- Data for Name: time_slot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.time_slot VALUES (1751, '2022-10-04 03:31:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1752, '2022-07-12 09:55:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1753, '2022-01-22 12:55:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1754, '2022-09-20 01:09:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1755, '2022-06-25 12:25:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1756, '2022-05-25 03:12:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1757, '2022-09-17 11:56:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1758, '2022-03-30 03:01:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1759, '2022-07-31 02:38:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1760, '2022-12-24 09:31:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1761, '2022-03-14 09:12:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1762, '2022-01-21 09:23:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1763, '2022-05-15 12:25:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1764, '2022-03-30 08:10:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1765, '2022-02-19 02:26:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1766, '2022-04-04 10:08:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1767, '2022-02-23 11:44:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1768, '2022-01-15 12:04:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1769, '2022-09-05 01:25:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1770, '2022-09-08 04:06:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1771, '2022-02-27 04:53:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1772, '2022-05-25 02:02:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1773, '2022-09-20 09:09:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1774, '2022-07-15 02:22:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1775, '2022-06-26 01:27:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1776, '2022-03-01 10:50:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1777, '2022-02-17 01:35:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1778, '2022-04-07 02:45:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1779, '2022-03-07 01:28:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1780, '2022-07-15 04:28:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1781, '2022-02-22 08:28:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1782, '2022-09-27 03:46:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1783, '2022-04-21 10:24:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1784, '2022-03-27 11:33:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1785, '2022-07-02 12:28:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1786, '2022-02-06 08:34:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1787, '2022-11-09 08:19:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1788, '2022-09-28 03:58:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1789, '2022-08-24 09:46:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1790, '2022-04-21 10:43:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1791, '2022-04-10 02:54:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1792, '2022-02-06 10:39:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1793, '2022-05-09 10:05:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1794, '2022-05-23 09:20:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1795, '2022-03-31 01:00:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1796, '2022-10-22 04:09:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1797, '2022-02-07 12:06:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1798, '2022-10-12 10:02:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1799, '2022-07-13 04:46:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1800, '2022-08-19 02:44:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1801, '2022-03-12 10:02:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1802, '2022-01-06 04:38:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1803, '2022-10-11 11:17:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1804, '2022-06-18 10:54:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1805, '2022-04-10 04:06:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1806, '2022-03-31 04:41:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1807, '2022-01-20 08:24:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1808, '2022-03-04 12:12:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1809, '2022-01-10 09:59:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1810, '2022-10-05 02:19:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1811, '2022-03-18 11:39:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1812, '2022-08-03 04:10:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1813, '2022-06-11 12:24:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1814, '2022-02-16 02:37:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1815, '2022-08-09 09:23:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1816, '2022-09-12 02:59:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1817, '2022-08-30 11:44:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1818, '2022-05-26 01:28:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1819, '2022-04-26 02:33:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1820, '2022-04-02 08:13:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1821, '2022-03-30 01:12:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1822, '2022-05-31 10:23:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1823, '2022-05-30 10:53:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1824, '2022-12-12 09:27:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1825, '2022-02-23 01:54:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1826, '2022-04-25 10:04:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1827, '2022-10-16 03:03:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1828, '2022-09-20 08:00:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1829, '2022-09-17 03:59:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1830, '2022-08-17 08:38:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1831, '2022-09-05 01:54:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1832, '2022-05-13 04:53:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1833, '2022-03-06 08:26:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1834, '2022-09-01 09:34:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1835, '2022-09-01 04:25:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1836, '2022-11-08 09:12:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1837, '2022-10-03 10:14:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1838, '2022-06-18 03:08:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1839, '2022-05-16 04:04:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1840, '2022-12-19 01:51:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1841, '2022-10-31 03:07:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1842, '2022-09-30 09:43:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1843, '2022-12-19 02:31:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1844, '2022-06-06 11:14:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1845, '2022-04-06 08:59:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1846, '2022-09-25 11:50:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1847, '2022-01-04 01:24:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1848, '2022-06-25 02:28:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1849, '2022-08-23 12:57:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1850, '2022-12-04 02:50:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1851, '2022-07-12 01:20:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1852, '2022-07-25 08:40:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1853, '2022-11-10 11:24:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1854, '2022-04-30 08:27:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1855, '2022-05-02 01:15:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1856, '2022-09-30 02:14:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1857, '2022-12-29 01:40:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1858, '2022-01-12 12:08:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1859, '2022-06-19 08:50:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1860, '2022-04-12 10:25:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1861, '2022-03-17 12:10:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1862, '2022-04-06 04:09:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1863, '2022-05-19 01:54:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1864, '2022-03-03 11:22:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1865, '2022-02-11 11:13:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1866, '2022-10-26 11:31:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1867, '2022-05-22 10:13:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1868, '2022-08-25 01:12:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1869, '2022-02-20 08:59:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1870, '2022-07-31 01:45:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1871, '2022-08-15 02:58:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1872, '2022-09-11 11:27:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1873, '2022-03-12 08:04:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1874, '2022-03-18 10:38:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1875, '2022-09-30 04:20:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1876, '2022-06-01 10:48:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1877, '2022-04-19 08:22:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1878, '2022-09-02 03:47:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1879, '2022-04-20 03:24:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1880, '2022-02-26 02:35:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1881, '2022-11-14 08:34:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1882, '2022-04-14 04:55:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1883, '2022-08-23 01:32:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1884, '2022-03-17 11:40:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1885, '2022-02-24 10:22:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1886, '2022-02-14 08:51:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1887, '2022-10-15 01:20:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1888, '2022-08-14 03:18:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1889, '2022-09-26 08:14:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1890, '2022-01-02 08:45:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1891, '2022-07-22 09:57:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1892, '2022-03-21 04:20:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1893, '2022-12-15 03:38:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1894, '2022-06-10 09:39:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1895, '2022-07-07 01:21:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1896, '2022-05-03 02:29:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1897, '2022-12-04 02:56:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1898, '2022-08-13 01:47:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1899, '2022-06-27 12:30:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1900, '2022-01-07 11:20:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1901, '2022-04-01 09:41:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1902, '2022-12-22 01:18:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1903, '2022-08-01 10:32:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1904, '2022-09-12 12:46:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1905, '2022-05-25 10:19:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1906, '2022-11-29 03:46:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1907, '2022-08-16 10:18:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1908, '2022-07-26 03:24:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1909, '2022-12-26 10:17:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1910, '2022-07-14 08:53:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1911, '2022-11-21 11:38:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1912, '2022-11-06 03:41:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1913, '2022-10-08 08:04:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1914, '2022-03-31 11:13:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1915, '2022-11-11 08:10:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1916, '2022-03-01 10:07:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1917, '2022-05-09 02:00:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1918, '2022-04-01 08:26:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1919, '2022-12-10 02:59:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1920, '2022-09-18 01:59:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1921, '2022-11-05 11:38:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1922, '2022-07-19 04:41:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1923, '2022-11-05 10:01:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1924, '2022-03-12 01:37:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1925, '2022-06-17 03:14:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1926, '2022-03-20 04:09:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1927, '2022-08-15 04:48:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1928, '2022-01-06 01:10:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1929, '2022-08-24 04:52:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1930, '2022-01-31 03:11:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1931, '2022-03-21 11:15:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1932, '2022-06-06 09:21:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1933, '2022-02-01 08:33:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1934, '2022-11-04 04:19:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1935, '2022-12-25 12:16:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1936, '2022-09-08 04:13:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1937, '2022-06-06 09:11:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1938, '2022-06-25 04:58:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1939, '2022-09-05 12:54:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1940, '2022-06-19 02:22:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1941, '2022-04-26 10:06:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1942, '2022-02-11 01:39:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1943, '2022-11-15 12:02:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1944, '2022-08-25 12:14:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1945, '2022-11-10 04:38:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1946, '2022-11-17 09:30:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1947, '2022-07-11 12:42:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1948, '2022-01-24 08:48:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1949, '2022-04-26 12:48:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1950, '2022-01-20 10:22:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1951, '2022-12-05 11:05:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (1952, '2022-06-27 09:58:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1953, '2022-08-15 01:30:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (1954, '2022-04-23 11:59:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1955, '2022-06-08 10:35:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (1956, '2022-07-25 04:59:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (1957, '2022-11-02 12:48:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1958, '2022-07-27 08:39:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1959, '2022-04-02 03:26:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1960, '2022-01-14 09:22:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1961, '2022-04-28 11:43:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (1962, '2022-02-21 03:12:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1963, '2022-02-11 12:01:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1964, '2022-10-18 03:57:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (1965, '2022-03-31 11:54:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (1966, '2022-08-04 03:24:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (1967, '2022-02-09 03:10:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1968, '2022-11-01 12:27:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1969, '2022-05-06 02:42:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (1970, '2022-01-22 02:22:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1971, '2022-08-06 03:00:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (1972, '2022-08-17 01:25:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1973, '2022-08-20 04:12:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (1974, '2022-09-22 02:06:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (1975, '2022-11-11 01:56:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1976, '2022-10-07 12:55:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1977, '2022-09-19 04:39:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1978, '2022-02-03 01:54:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (1979, '2022-09-25 12:14:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1980, '2022-05-04 02:15:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (1981, '2022-01-01 02:59:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1982, '2022-11-13 04:26:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1983, '2022-09-10 12:49:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1984, '2022-06-26 11:48:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (1985, '2022-11-13 04:40:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (1986, '2022-01-29 11:23:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1987, '2022-10-31 11:33:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (1988, '2022-08-27 10:55:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (1989, '2022-04-09 08:51:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (1990, '2022-11-23 12:47:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (1991, '2022-04-21 03:05:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1992, '2022-06-30 08:13:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (1993, '2022-03-16 08:46:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1994, '2022-07-30 01:54:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (1995, '2022-06-09 02:59:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (1996, '2022-04-19 11:09:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (1997, '2022-12-05 09:09:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (1998, '2022-01-07 08:59:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (1999, '2022-01-02 03:35:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2000, '2022-03-18 12:34:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2001, '2022-10-23 08:49:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2002, '2022-07-06 12:27:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2003, '2022-10-23 12:53:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2004, '2022-05-08 09:42:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2005, '2022-07-15 10:44:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2006, '2022-11-01 08:42:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2007, '2022-03-20 11:20:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2008, '2022-07-16 10:41:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2009, '2022-09-11 08:51:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2010, '2022-09-15 01:34:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2011, '2022-04-13 08:26:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2012, '2022-01-30 12:36:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2013, '2022-08-20 03:59:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2014, '2022-07-13 03:52:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2015, '2022-08-20 10:40:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2016, '2022-06-04 02:24:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2017, '2022-07-18 01:35:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2018, '2022-12-11 11:16:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2019, '2022-10-16 04:08:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2020, '2022-06-28 02:13:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2021, '2022-08-30 04:04:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2022, '2022-03-30 04:22:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2023, '2022-12-24 11:29:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2024, '2022-11-14 09:50:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2025, '2022-01-06 03:42:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2026, '2022-04-23 03:35:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2027, '2022-12-23 01:26:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2028, '2022-07-08 04:03:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2029, '2022-04-25 12:49:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2030, '2022-02-23 03:18:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2031, '2022-04-02 12:07:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2032, '2022-02-24 01:19:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2033, '2022-03-01 09:32:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2034, '2022-09-14 02:45:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2035, '2022-11-16 10:12:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2036, '2022-03-06 10:51:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2037, '2022-09-19 09:17:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2038, '2022-07-24 10:12:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2039, '2022-03-06 03:02:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2040, '2022-02-05 10:41:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2041, '2022-04-03 03:33:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2042, '2022-03-13 10:56:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2043, '2022-01-05 12:44:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2044, '2022-10-22 11:27:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2045, '2022-01-22 03:44:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2046, '2022-03-12 01:00:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2047, '2022-03-14 10:01:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2048, '2022-08-10 11:57:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2049, '2022-10-02 08:28:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2050, '2022-06-22 10:07:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2051, '2022-05-11 04:16:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2052, '2022-10-26 11:25:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2053, '2022-06-27 08:15:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2054, '2022-11-20 10:58:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2055, '2022-05-13 12:57:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2056, '2022-02-07 02:15:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2057, '2022-10-02 08:17:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2058, '2022-06-25 10:29:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2059, '2022-02-15 03:23:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2060, '2022-01-23 10:44:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2061, '2022-08-20 04:37:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2062, '2022-04-09 12:35:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2063, '2022-09-26 12:55:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2064, '2022-11-15 02:11:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2065, '2022-08-02 08:37:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2066, '2022-10-06 11:35:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2067, '2022-10-18 04:31:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2068, '2022-05-04 12:10:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2069, '2022-10-09 09:26:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2070, '2022-05-07 11:56:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2071, '2022-12-29 09:52:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2072, '2022-02-04 11:13:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2073, '2022-05-06 10:55:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2074, '2022-10-29 03:58:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2075, '2022-10-15 02:43:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2076, '2022-09-22 11:52:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2077, '2022-01-09 08:56:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2078, '2022-01-11 08:39:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2079, '2022-04-19 01:42:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2080, '2022-02-12 04:32:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2081, '2022-11-17 02:26:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2082, '2022-03-18 11:36:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2083, '2022-07-03 01:48:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2084, '2022-02-05 04:50:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2085, '2022-01-12 04:33:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2086, '2022-08-09 03:40:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2087, '2022-01-17 04:40:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2088, '2022-12-14 11:22:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2089, '2022-04-22 08:55:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2090, '2022-06-28 11:56:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2091, '2022-07-06 02:28:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2092, '2022-06-07 03:48:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2093, '2022-05-26 11:10:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2094, '2022-09-25 10:22:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2095, '2022-01-19 09:00:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2096, '2022-02-17 11:54:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2097, '2022-09-10 03:12:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2098, '2022-12-16 01:25:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2099, '2022-08-22 12:13:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2100, '2022-09-29 02:45:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2101, '2022-08-23 02:58:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2102, '2022-04-05 09:19:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2103, '2022-07-11 12:55:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2104, '2022-05-14 03:49:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2105, '2022-12-21 03:43:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2106, '2022-06-18 10:25:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2107, '2022-03-09 09:27:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2108, '2022-01-14 03:05:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2109, '2022-01-03 01:54:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2110, '2022-06-06 08:21:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2111, '2022-08-23 04:14:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2112, '2022-01-02 04:17:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2113, '2022-12-16 01:18:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2114, '2022-12-25 03:58:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2115, '2022-10-27 04:01:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2116, '2022-06-17 09:44:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2117, '2022-07-02 08:03:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2118, '2022-02-25 04:55:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2119, '2022-02-25 10:16:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2120, '2022-12-07 08:01:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2121, '2022-08-28 09:08:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2122, '2022-06-14 10:28:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2123, '2022-02-11 04:48:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2124, '2022-09-21 09:53:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2125, '2022-12-17 12:32:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2126, '2022-05-06 11:20:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2127, '2022-04-23 04:16:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2128, '2022-06-14 01:08:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2129, '2022-02-02 11:19:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2130, '2022-12-07 08:24:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2131, '2022-09-19 11:55:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2132, '2022-05-01 08:57:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2133, '2022-04-11 10:30:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2134, '2022-03-15 10:18:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2135, '2022-08-30 11:54:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2136, '2022-10-04 02:41:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2137, '2022-03-09 01:07:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2138, '2022-03-23 09:34:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2139, '2022-02-08 03:49:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2140, '2022-06-06 02:08:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2141, '2022-06-25 04:13:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2142, '2022-06-17 10:30:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2143, '2022-06-09 09:52:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2144, '2022-10-09 09:13:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2145, '2022-12-17 04:12:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2146, '2022-09-09 12:20:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2147, '2022-01-20 03:09:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2148, '2022-04-14 03:22:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2149, '2022-05-20 04:14:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2150, '2022-10-22 11:34:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2151, '2022-08-21 09:44:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2152, '2022-06-02 10:47:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2153, '2022-03-29 03:44:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2154, '2022-05-26 12:44:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2155, '2022-06-23 08:18:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2156, '2022-02-02 12:32:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2157, '2022-03-08 12:25:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2158, '2022-10-30 10:10:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2159, '2022-01-15 11:38:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2160, '2022-08-17 03:38:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2161, '2022-07-17 09:38:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2162, '2022-01-30 04:19:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2163, '2022-08-11 11:33:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2164, '2022-02-19 01:33:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2165, '2022-07-01 04:54:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2166, '2022-05-23 02:29:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2167, '2022-07-22 08:17:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2168, '2022-11-06 01:36:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2169, '2022-12-07 02:11:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2170, '2022-04-20 03:40:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2171, '2022-01-24 03:18:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2172, '2022-02-04 12:39:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2173, '2022-04-22 02:12:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2174, '2022-03-07 08:51:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2175, '2022-07-27 02:37:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2176, '2022-04-14 03:45:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2177, '2022-11-17 09:01:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2178, '2022-12-13 10:34:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2179, '2022-07-28 12:12:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2180, '2022-01-26 04:18:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2181, '2022-10-23 08:39:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2182, '2022-08-11 11:41:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2183, '2022-01-27 04:22:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2184, '2022-04-06 04:56:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2185, '2022-06-12 02:20:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2186, '2022-11-12 01:03:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2187, '2022-10-13 04:15:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2188, '2022-08-03 11:33:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2189, '2022-02-25 01:22:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2190, '2022-12-02 02:42:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2191, '2022-11-20 12:55:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2192, '2022-03-07 01:45:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2193, '2022-07-29 12:32:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2194, '2022-09-09 12:56:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2195, '2022-04-09 11:49:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2196, '2022-10-19 04:13:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2197, '2022-04-11 12:29:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2198, '2022-11-22 10:45:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2199, '2022-07-08 11:28:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2200, '2022-07-06 11:05:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2201, '2022-07-07 08:34:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2202, '2022-04-05 03:26:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2203, '2022-06-18 09:19:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2204, '2022-02-16 11:08:00', '01:45:00', 18);
INSERT INTO public.time_slot VALUES (2205, '2022-05-17 04:37:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2206, '2022-02-25 09:17:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2207, '2022-11-19 08:51:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2208, '2022-03-28 04:36:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2209, '2022-01-06 10:07:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2210, '2022-02-08 02:15:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2211, '2022-11-18 12:37:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2212, '2022-09-13 04:37:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2213, '2022-02-05 03:51:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2214, '2022-11-10 11:06:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2215, '2022-11-04 03:27:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2216, '2022-12-19 04:22:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2217, '2022-08-23 03:21:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2218, '2022-11-06 12:09:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2219, '2022-09-27 10:02:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2220, '2022-08-06 01:20:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2221, '2022-03-01 02:55:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2222, '2022-05-24 12:39:00', '00:45:00', 16);
INSERT INTO public.time_slot VALUES (2223, '2022-07-14 01:48:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2224, '2022-01-03 09:55:00', '02:45:00', 20);
INSERT INTO public.time_slot VALUES (2225, '2022-06-26 03:22:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2226, '2022-01-17 10:17:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2227, '2022-06-01 02:19:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2228, '2022-04-28 01:01:00', '01:45:00', 20);
INSERT INTO public.time_slot VALUES (2229, '2022-08-10 10:11:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2230, '2022-06-15 09:18:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2231, '2022-02-13 01:05:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2232, '2022-09-11 03:15:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2233, '2022-10-25 09:50:00', '01:45:00', 16);
INSERT INTO public.time_slot VALUES (2234, '2022-09-25 12:08:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2235, '2022-06-22 12:22:00', '00:45:00', 19);
INSERT INTO public.time_slot VALUES (2236, '2022-02-04 03:05:00', '02:45:00', 17);
INSERT INTO public.time_slot VALUES (2237, '2022-02-27 12:04:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2238, '2022-01-19 10:43:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2239, '2022-05-20 11:37:00', '01:45:00', 19);
INSERT INTO public.time_slot VALUES (2240, '2022-01-30 12:44:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2241, '2022-03-30 12:20:00', '00:45:00', 17);
INSERT INTO public.time_slot VALUES (2242, '2022-06-16 04:12:00', '02:45:00', 18);
INSERT INTO public.time_slot VALUES (2243, '2022-10-03 03:54:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2244, '2022-08-31 01:18:00', '02:45:00', 16);
INSERT INTO public.time_slot VALUES (2245, '2022-12-10 04:57:00', '00:45:00', 20);
INSERT INTO public.time_slot VALUES (2246, '2022-06-30 09:18:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2247, '2022-03-27 04:38:00', '01:45:00', 17);
INSERT INTO public.time_slot VALUES (2248, '2022-05-10 09:27:00', '00:45:00', 18);
INSERT INTO public.time_slot VALUES (2249, '2022-09-07 11:26:00', '02:45:00', 19);
INSERT INTO public.time_slot VALUES (2250, '2022-11-21 08:25:00', '02:45:00', 17);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 230
-- Name: booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.booking_id_seq', 300, true);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 214
-- Name: discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discount_id_seq', 6, true);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 216
-- Name: email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_id_seq', 30, true);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 239
-- Name: ensemble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_id_seq', 219, true);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 241
-- Name: group_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_id_seq', 200, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 243
-- Name: individual_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_id_seq', 300, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 218
-- Name: lesson_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_price_id_seq', 18, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 220
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 2250, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 223
-- Name: phone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_id_seq', 30, true);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 225
-- Name: rent_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rent_instrument_id_seq', 40, true);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 228
-- Name: teach_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teach_instrument_id_seq', 10, true);


--
-- TOC entry 3363 (class 2606 OID 25348)
-- Name: booking_ensemble booking_ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_ensemble
    ADD CONSTRAINT booking_ensemble_pkey PRIMARY KEY (booking_id, ensemble_id);


--
-- TOC entry 3365 (class 2606 OID 25363)
-- Name: booking_group_lesson booking_group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_group_lesson
    ADD CONSTRAINT booking_group_lesson_pkey PRIMARY KEY (booking_id, group_lesson_id);


--
-- TOC entry 3341 (class 2606 OID 25197)
-- Name: booking booking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 25217)
-- Name: contact_person contact_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person
    ADD CONSTRAINT contact_person_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3323 (class 2606 OID 25386)
-- Name: discount discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (id);


--
-- TOC entry 3325 (class 2606 OID 25130)
-- Name: email email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 25309)
-- Name: ensemble ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 25321)
-- Name: group_lesson group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 25333)
-- Name: individual_lesson individual_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 25227)
-- Name: instructor instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3347 (class 2606 OID 25237)
-- Name: instructor_teach_instrument instructor_teach_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_teach_instrument
    ADD CONSTRAINT instructor_teach_instrument_pkey PRIMARY KEY (person_id, teach_instrument_id);


--
-- TOC entry 3327 (class 2606 OID 25137)
-- Name: lesson_price lesson_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_price
    ADD CONSTRAINT lesson_price_pkey PRIMARY KEY (id);


--
-- TOC entry 3367 (class 2606 OID 25468)
-- Name: months months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.months
    ADD CONSTRAINT months_pkey PRIMARY KEY (nr);


--
-- TOC entry 3331 (class 2606 OID 25149)
-- Name: person_email person_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT person_email_pkey PRIMARY KEY (email_id, person_id);


--
-- TOC entry 3349 (class 2606 OID 25252)
-- Name: person_phone person_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_phone
    ADD CONSTRAINT person_phone_pkey PRIMARY KEY (phone_id, person_id);


--
-- TOC entry 3329 (class 2606 OID 25144)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 3333 (class 2606 OID 25166)
-- Name: phone phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (id);


--
-- TOC entry 3335 (class 2606 OID 25173)
-- Name: rent_instrument rent_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument
    ADD CONSTRAINT rent_instrument_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 25267)
-- Name: rent rent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_pkey PRIMARY KEY (person_id, rent_instrument_id);


--
-- TOC entry 3353 (class 2606 OID 25282)
-- Name: sibling sibling_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_pkey PRIMARY KEY (person_id, sibling_id);


--
-- TOC entry 3337 (class 2606 OID 25178)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3339 (class 2606 OID 25190)
-- Name: teach_instrument teach_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teach_instrument
    ADD CONSTRAINT teach_instrument_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 25297)
-- Name: time_slot time_slot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_slot
    ADD CONSTRAINT time_slot_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 25387)
-- Name: booking booking_discount_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_discount_id_fkey FOREIGN KEY (discount_id) REFERENCES public.discount(id);


--
-- TOC entry 3389 (class 2606 OID 25349)
-- Name: booking_ensemble booking_ensemble_booking_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_ensemble
    ADD CONSTRAINT booking_ensemble_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(id) ON DELETE CASCADE;


--
-- TOC entry 3390 (class 2606 OID 25354)
-- Name: booking_ensemble booking_ensemble_ensemble_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_ensemble
    ADD CONSTRAINT booking_ensemble_ensemble_id_fkey FOREIGN KEY (ensemble_id) REFERENCES public.ensemble(id) ON DELETE CASCADE;


--
-- TOC entry 3391 (class 2606 OID 25364)
-- Name: booking_group_lesson booking_group_lesson_booking_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_group_lesson
    ADD CONSTRAINT booking_group_lesson_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(id) ON DELETE CASCADE;


--
-- TOC entry 3392 (class 2606 OID 25369)
-- Name: booking_group_lesson booking_group_lesson_group_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_group_lesson
    ADD CONSTRAINT booking_group_lesson_group_lesson_id_fkey FOREIGN KEY (group_lesson_id) REFERENCES public.group_lesson(id) ON DELETE CASCADE;


--
-- TOC entry 3372 (class 2606 OID 25198)
-- Name: booking booking_lesson_price_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_lesson_price_id_fkey FOREIGN KEY (lesson_price_id) REFERENCES public.lesson_price(id);


--
-- TOC entry 3373 (class 2606 OID 25208)
-- Name: booking booking_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.student(person_id) ON DELETE CASCADE;


--
-- TOC entry 3374 (class 2606 OID 25218)
-- Name: contact_person contact_person_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person
    ADD CONSTRAINT contact_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.student(person_id) ON DELETE CASCADE;


--
-- TOC entry 3385 (class 2606 OID 25310)
-- Name: ensemble ensemble_time_slot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_time_slot_id_fkey FOREIGN KEY (time_slot_id) REFERENCES public.time_slot(id);


--
-- TOC entry 3386 (class 2606 OID 25322)
-- Name: group_lesson group_lesson_time_slot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_time_slot_id_fkey FOREIGN KEY (time_slot_id) REFERENCES public.time_slot(id);


--
-- TOC entry 3387 (class 2606 OID 25339)
-- Name: individual_lesson individual_lesson_booking_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(id);


--
-- TOC entry 3388 (class 2606 OID 25334)
-- Name: individual_lesson individual_lesson_time_slot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_time_slot_id_fkey FOREIGN KEY (time_slot_id) REFERENCES public.time_slot(id);


--
-- TOC entry 3375 (class 2606 OID 25228)
-- Name: instructor instructor_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- TOC entry 3376 (class 2606 OID 25238)
-- Name: instructor_teach_instrument instructor_teach_instrument_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_teach_instrument
    ADD CONSTRAINT instructor_teach_instrument_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.instructor(person_id) ON DELETE CASCADE;


--
-- TOC entry 3377 (class 2606 OID 25243)
-- Name: instructor_teach_instrument instructor_teach_instrument_teach_instrument_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_teach_instrument
    ADD CONSTRAINT instructor_teach_instrument_teach_instrument_id_fkey FOREIGN KEY (teach_instrument_id) REFERENCES public.teach_instrument(id) ON DELETE CASCADE;


--
-- TOC entry 3368 (class 2606 OID 25150)
-- Name: person_email person_email_email_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT person_email_email_id_fkey FOREIGN KEY (email_id) REFERENCES public.email(id) ON DELETE CASCADE;


--
-- TOC entry 3369 (class 2606 OID 25155)
-- Name: person_email person_email_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT person_email_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- TOC entry 3378 (class 2606 OID 25258)
-- Name: person_phone person_phone_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_phone
    ADD CONSTRAINT person_phone_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- TOC entry 3379 (class 2606 OID 25253)
-- Name: person_phone person_phone_phone_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_phone
    ADD CONSTRAINT person_phone_phone_id_fkey FOREIGN KEY (phone_id) REFERENCES public.phone(id) ON DELETE CASCADE;


--
-- TOC entry 3380 (class 2606 OID 25268)
-- Name: rent rent_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.student(person_id) ON DELETE CASCADE;


--
-- TOC entry 3381 (class 2606 OID 25273)
-- Name: rent rent_rent_intrument_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_rent_intrument_id_fkey FOREIGN KEY (rent_instrument_id) REFERENCES public.rent_instrument(id) ON DELETE CASCADE;


--
-- TOC entry 3382 (class 2606 OID 25283)
-- Name: sibling sibling_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.student(person_id) ON DELETE CASCADE;


--
-- TOC entry 3383 (class 2606 OID 25288)
-- Name: sibling sibling_sibling_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_sibling_id_fkey FOREIGN KEY (sibling_id) REFERENCES public.student(person_id) ON DELETE CASCADE;


--
-- TOC entry 3370 (class 2606 OID 25179)
-- Name: student student_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- TOC entry 3384 (class 2606 OID 25298)
-- Name: time_slot time_slot_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_slot
    ADD CONSTRAINT time_slot_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(person_id);


-- Completed on 2022-12-05 23:41:47

--
-- PostgreSQL database dump complete
--

