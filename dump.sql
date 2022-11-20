--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: responsible; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.responsible (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


--
-- Name: responsible_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.responsible_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: responsible_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.responsible_id_seq OWNED BY public.responsible.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    "responsibleId" integer,
    title character varying(50) NOT NULL,
    description character varying(300) NOT NULL,
    realized boolean DEFAULT false,
    date date NOT NULL
);


--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: responsible id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.responsible ALTER COLUMN id SET DEFAULT nextval('public.responsible_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: responsible; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.responsible VALUES (1, '{}');
INSERT INTO public.responsible VALUES (6, 'Salamaleicon');
INSERT INTO public.responsible VALUES (7, 'Salamaleicon');
INSERT INTO public.responsible VALUES (8, 'Salamaleicon');
INSERT INTO public.responsible VALUES (9, '{"name":"Salamaleicon"}');


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tasks VALUES (10, 6, 'secar o qatar', 'assistir a copa', false, '2022-11-20');
INSERT INTO public.tasks VALUES (8, 6, 'secar o qatar', 'assistir a copa', true, '2022-11-20');
INSERT INTO public.tasks VALUES (9, 6, 'secar o qatar', 'assistir a copa', true, '2022-11-20');


--
-- Name: responsible_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.responsible_id_seq', 9, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tasks_id_seq', 10, true);


--
-- Name: responsible responsible_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.responsible
    ADD CONSTRAINT responsible_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_responsibleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_responsibleId_fkey" FOREIGN KEY ("responsibleId") REFERENCES public.responsible(id);


--
-- PostgreSQL database dump complete
--

