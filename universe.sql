--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    distance numeric,
    founder text,
    age integer,
    sector character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    has_life boolean,
    homeplanet character varying(30),
    sector character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    has_life boolean,
    homestar character varying(30),
    sector character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance numeric,
    age integer,
    has_life boolean,
    galaxy_home character varying(30),
    sector character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    has_life boolean,
    homeplanet character varying(30)
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 200, 'johann', 2000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 0, 'Adam', 200, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy three', 20, 'Neptune', 100, NULL);
INSERT INTO public.galaxy VALUES (4, 'blorp', 20, 'picard', 63, NULL);
INSERT INTO public.galaxy VALUES (5, 'Heavens', 100, 'Moses', 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'NCC1701', 1000, 'kirk', 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4, true, 'Earth', 'Milky Way', 1);
INSERT INTO public.moon VALUES (2, 'Titan', 20, true, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 6, false, 'Mars', 'Milky Way', 3);
INSERT INTO public.moon VALUES (4, 'Europa', 5, true, 'Jupiter', 'Milky Way', 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 8, false, 'Jupiter', 'Milky Way', 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 10, false, 'Jupiter', 'Milky Way', 4);
INSERT INTO public.moon VALUES (7, 'Enceladus', 7, true, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (8, 'Triton', 15, true, 'Neptune', 'Milky Way', 5);
INSERT INTO public.moon VALUES (9, 'Io', 4, false, 'Jupiter', 'Milky Way', 4);
INSERT INTO public.moon VALUES (10, 'Oberon', 18, false, 'Uranus', 'Milky Way', 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 3, true, 'Uranus', 'Milky Way', 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 12, true, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (13, 'Mimas', 9, false, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (14, 'Tethys', 11, true, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (15, 'Titania', 13, true, 'Uranus', 'Milky Way', 6);
INSERT INTO public.moon VALUES (16, 'Hyperion', 14, false, 'Saturn', 'Andromeda', 2);
INSERT INTO public.moon VALUES (17, 'Ariel', 16, false, 'Uranus', 'Milky Way', 6);
INSERT INTO public.moon VALUES (18, 'Charon', 17, false, 'Pluto', 'Milky Way', 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 19, true, 'Uranus', 'Milky Way', 6);
INSERT INTO public.moon VALUES (20, 'Cressida', 5, true, 'Uranus', 'Milky Way', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Pluto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Hoth', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Endor', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Tattooine', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Naboo', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Klingon', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'X', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'red', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Blue', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'green', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'violet', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'pedal', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'johann', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 'one', NULL, NULL, NULL);
INSERT INTO public.table5 VALUES (2, 'two', NULL, NULL, NULL);
INSERT INTO public.table5 VALUES (3, 'three', NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table5 table5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


--
-- Name: moon fkcm; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkcm FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkcp; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkcp FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fkcs; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkcs FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

