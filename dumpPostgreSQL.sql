--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: artista_musica; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artista_musica (
    id_artista integer NOT NULL,
    id_musica integer NOT NULL
);


--
-- Name: artistas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artistas (
    id_artista integer NOT NULL,
    nome_artista character varying(50) NOT NULL
);


--
-- Name: artistas_id_artista_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.artistas_id_artista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: artistas_id_artista_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.artistas_id_artista_seq OWNED BY public.artistas.id_artista;


--
-- Name: musicas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.musicas (
    id_musica integer NOT NULL,
    nome_musica character varying(50) NOT NULL
);


--
-- Name: musicas_id_musica_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.musicas_id_musica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: musicas_id_musica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.musicas_id_musica_seq OWNED BY public.musicas.id_musica;


--
-- Name: artistas id_artista; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artistas ALTER COLUMN id_artista SET DEFAULT nextval('public.artistas_id_artista_seq'::regclass);


--
-- Name: musicas id_musica; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.musicas ALTER COLUMN id_musica SET DEFAULT nextval('public.musicas_id_musica_seq'::regclass);


--
-- Name: artista_musica artista_musica_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artista_musica
    ADD CONSTRAINT artista_musica_pkey PRIMARY KEY (id_artista, id_musica);


--
-- Name: artistas artistas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artistas
    ADD CONSTRAINT artistas_pkey PRIMARY KEY (id_artista);


--
-- Name: musicas musicas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.musicas
    ADD CONSTRAINT musicas_pkey PRIMARY KEY (id_musica);


--
-- Name: artista_musica artista_musica_id_artista_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artista_musica
    ADD CONSTRAINT artista_musica_id_artista_fkey FOREIGN KEY (id_artista) REFERENCES public.artistas(id_artista) ON DELETE CASCADE;


--
-- Name: artista_musica artista_musica_id_musica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artista_musica
    ADD CONSTRAINT artista_musica_id_musica_fkey FOREIGN KEY (id_musica) REFERENCES public.musicas(id_musica) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

