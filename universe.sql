--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    unique_column integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_unique_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_unique_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_unique_column_seq OWNER TO freecodecamp;

--
-- Name: galaxy_unique_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_unique_column_seq OWNED BY public.galaxy.unique_column;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    planet_id integer,
    unique_column integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_unique_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_unique_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_unique_column_seq OWNER TO freecodecamp;

--
-- Name: moon_unique_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_unique_column_seq OWNED BY public.moon.unique_column;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    star_id integer,
    unique_column integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_unique_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_unique_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_unique_column_seq OWNER TO freecodecamp;

--
-- Name: planet_unique_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_unique_column_seq OWNED BY public.planet.unique_column;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    galaxy_id integer,
    unique_column integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_unique_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_unique_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_unique_column_seq OWNER TO freecodecamp;

--
-- Name: star_unique_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_unique_column_seq OWNED BY public.star.unique_column;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    unique_column integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: sun_unique_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_unique_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_unique_column_seq OWNER TO freecodecamp;

--
-- Name: sun_unique_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_unique_column_seq OWNED BY public.sun.unique_column;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy unique_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN unique_column SET DEFAULT nextval('public.galaxy_unique_column_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon unique_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN unique_column SET DEFAULT nextval('public.moon_unique_column_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet unique_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN unique_column SET DEFAULT nextval('public.planet_unique_column_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star unique_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN unique_column SET DEFAULT nextval('public.star_unique_column_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Name: sun unique_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN unique_column SET DEFAULT nextval('public.sun_unique_column_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Generic galaxy 1', 100000, 200.20, 'Very big galaxy', true, 1);
INSERT INTO public.galaxy VALUES (2, 'Generic galaxy 2', 100000, 203.10, 'Another big galaxy', true, 2);
INSERT INTO public.galaxy VALUES (3, 'Generic Galaxy 3', 120000, 405.34, 'Another one', true, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 400, 400.00, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 500, 500.00, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 600, 600.00, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'moon 1', 100, 100.00, NULL, 4, 1);
INSERT INTO public.moon VALUES (5, 'moon 2', 200, 200.00, NULL, 5, 2);
INSERT INTO public.moon VALUES (6, 'moon 3', 300, 300.00, NULL, 6, 3);
INSERT INTO public.moon VALUES (7, 'moon 7', 700, 700.00, NULL, 4, 4);
INSERT INTO public.moon VALUES (8, 'moon 7', 700, 700.00, NULL, 4, 5);
INSERT INTO public.moon VALUES (9, 'moon 7', 700, 700.00, NULL, 4, 6);
INSERT INTO public.moon VALUES (10, 'moon 7', 700, 700.00, NULL, 4, 7);
INSERT INTO public.moon VALUES (11, 'moon 7', 700, 700.00, NULL, 4, 8);
INSERT INTO public.moon VALUES (12, 'moon 7', 700, 700.00, NULL, 4, 9);
INSERT INTO public.moon VALUES (13, 'moon 7', 700, 700.00, NULL, 4, 10);
INSERT INTO public.moon VALUES (14, 'moon 7', 700, 700.00, NULL, 4, 11);
INSERT INTO public.moon VALUES (15, 'moon 7', 700, 700.00, NULL, 4, 12);
INSERT INTO public.moon VALUES (16, 'moon 7', 700, 700.00, NULL, 4, 13);
INSERT INTO public.moon VALUES (17, 'moon 7', 700, 700.00, NULL, 4, 14);
INSERT INTO public.moon VALUES (18, 'moon 7', 700, 700.00, NULL, 4, 15);
INSERT INTO public.moon VALUES (19, 'moon 7', 700, 700.00, NULL, 4, 16);
INSERT INTO public.moon VALUES (20, 'moon 7', 700, 700.00, NULL, 4, 17);
INSERT INTO public.moon VALUES (21, 'moon 7', 700, 700.00, NULL, 4, 18);
INSERT INTO public.moon VALUES (22, 'moon 7', 700, 700.00, NULL, 4, 19);
INSERT INTO public.moon VALUES (23, 'moon 7', 700, 700.00, NULL, 4, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'planet 1', 400, 400.00, NULL, true, 4, 1);
INSERT INTO public.planet VALUES (5, 'planet 2', 300, 300.00, NULL, false, 5, 2);
INSERT INTO public.planet VALUES (6, 'planet 3', 200, 200.00, NULL, true, 6, 3);
INSERT INTO public.planet VALUES (9, 'planet 4', 40, 400.00, NULL, true, 4, 4);
INSERT INTO public.planet VALUES (10, 'planet 4', 500, 500.00, NULL, true, 5, 5);
INSERT INTO public.planet VALUES (11, 'planet 4', 40, 400.00, NULL, true, 4, 6);
INSERT INTO public.planet VALUES (12, 'planet 4', 500, 500.00, NULL, true, 5, 7);
INSERT INTO public.planet VALUES (13, 'planet 4', 40, 400.00, NULL, true, 4, 8);
INSERT INTO public.planet VALUES (14, 'planet 4', 500, 500.00, NULL, true, 5, 9);
INSERT INTO public.planet VALUES (15, 'planet 4', 40, 400.00, NULL, true, 4, 10);
INSERT INTO public.planet VALUES (16, 'planet 4', 500, 500.00, NULL, true, 5, 11);
INSERT INTO public.planet VALUES (17, 'planet 4', 40, 400.00, NULL, true, 4, 12);
INSERT INTO public.planet VALUES (18, 'planet 4', 500, 500.00, NULL, true, 5, 13);
INSERT INTO public.planet VALUES (19, 'planet 4', 40, 400.00, NULL, true, 4, 14);
INSERT INTO public.planet VALUES (20, 'planet 4', 500, 500.00, NULL, true, 5, 15);
INSERT INTO public.planet VALUES (21, 'planet 4', 40, 400.00, NULL, true, 4, 16);
INSERT INTO public.planet VALUES (22, 'planet 4', 500, 500.00, NULL, true, 5, 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'star 1', 200, 45.34, NULL, 1, 1);
INSERT INTO public.star VALUES (5, 'star 2', 400, 454.33, NULL, 1, 2);
INSERT INTO public.star VALUES (6, 'star 3', 333, 443.00, NULL, 2, 3);
INSERT INTO public.star VALUES (7, 'star 4', 3332, 343.33, NULL, 3, 4);
INSERT INTO public.star VALUES (8, 'star 4', 400, 400.00, NULL, 4, 5);
INSERT INTO public.star VALUES (9, 'star 5', 500, 500.00, NULL, 5, 6);
INSERT INTO public.star VALUES (10, 'star 6', 600, 600.00, NULL, 6, 7);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun 1', 100, 100.00, NULL, 1);
INSERT INTO public.sun VALUES (2, 'sun 2', 200, 200.00, NULL, 2);
INSERT INTO public.sun VALUES (3, 'sun 3', 300, 300.00, NULL, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_unique_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_unique_column_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: moon_unique_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_unique_column_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 22, true);


--
-- Name: planet_unique_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_unique_column_seq', 17, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: star_unique_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_unique_column_seq', 7, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


--
-- Name: sun_unique_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_unique_column_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_column_key UNIQUE (unique_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_column_key UNIQUE (unique_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_column_key UNIQUE (unique_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_column_key UNIQUE (unique_column);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_unique_column_key UNIQUE (unique_column);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

