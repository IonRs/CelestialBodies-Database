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
    name character varying(50),
    type integer NOT NULL,
    alias text NOT NULL,
    is_poulated boolean NOT NULL
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
    name character varying(50),
    distance_from_capital_planet numeric NOT NULL,
    age_mln_years integer NOT NULL,
    is_polluted boolean NOT NULL,
    planet_id integer NOT NULL,
    rate integer
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
    name character varying(50),
    planet_type boolean NOT NULL,
    has_life boolean NOT NULL,
    shape text NOT NULL,
    star_id integer NOT NULL,
    rate integer
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
-- Name: shooting_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shooting_stars (
    time_happened date NOT NULL,
    name character varying(50) NOT NULL,
    shooting_stars_id integer NOT NULL
);


ALTER TABLE public.shooting_stars OWNER TO freecodecamp;

--
-- Name: shooting_stars_shooting_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.shooting_stars_shooting_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shooting_stars_shooting_stars_id_seq OWNER TO freecodecamp;

--
-- Name: shooting_stars_shooting_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.shooting_stars_shooting_stars_id_seq OWNED BY public.shooting_stars.shooting_stars_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer,
    power_nits integer NOT NULL,
    tourists integer NOT NULL,
    rate integer
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
-- Name: shooting_stars shooting_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shooting_stars ALTER COLUMN shooting_stars_id SET DEFAULT nextval('public.shooting_stars_shooting_stars_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Masda', 21, 'MSD', true);
INSERT INTO public.galaxy VALUES (4, 'Keshka', 212, 'KSK', true);
INSERT INTO public.galaxy VALUES (6, 'Paska', 222, 'PSK', false);
INSERT INTO public.galaxy VALUES (7, 'Tolkae', 123, 'TLK', true);
INSERT INTO public.galaxy VALUES (8, 'Venvic', 124, 'VNV', true);
INSERT INTO public.galaxy VALUES (9, 'Byter', 224, 'BYT', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (5, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (6, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (7, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (8, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (9, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (10, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (11, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (12, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (13, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (14, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (15, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (16, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (17, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (18, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (19, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (20, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (21, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (22, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (23, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (24, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (25, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (26, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (27, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (28, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (29, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (30, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (31, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (32, 'Original', 444, 9, false, 2, NULL);
INSERT INTO public.moon VALUES (33, 'Original', 444, 9, false, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Njsad', true, false, 'round', 3, NULL);
INSERT INTO public.planet VALUES (4, 'Mjsdsa', true, false, 'flat', 3, NULL);
INSERT INTO public.planet VALUES (6, 'Mjsdsa-23', true, false, 'flat', 4, NULL);
INSERT INTO public.planet VALUES (7, 'Njsad-32', true, false, 'round', 3, NULL);
INSERT INTO public.planet VALUES (8, 'Liure', true, false, 'round', 3, NULL);
INSERT INTO public.planet VALUES (9, 'Liure-34', true, false, 'squere', 3, NULL);
INSERT INTO public.planet VALUES (10, 'Liure-45', true, false, 'squere', 3, NULL);
INSERT INTO public.planet VALUES (11, 'Liure-45', true, false, 'squere', 3, NULL);
INSERT INTO public.planet VALUES (12, 'Gandsrr', true, false, 'squere', 3, NULL);
INSERT INTO public.planet VALUES (13, 'Gandsrr', true, false, 'rectangle', 3, NULL);
INSERT INTO public.planet VALUES (14, 'Gandsrr', true, false, 'sphere', 3, NULL);
INSERT INTO public.planet VALUES (15, 'Gandsrr-43', true, false, 'sphere', 3, NULL);
INSERT INTO public.planet VALUES (16, 'Gandsrr-93', true, false, 'sphere', 3, NULL);
INSERT INTO public.planet VALUES (17, 'Gandsrr-93', true, false, 'sphere', 3, NULL);


--
-- Data for Name: shooting_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shooting_stars VALUES ('2023-01-05', 'Tera', 1);
INSERT INTO public.shooting_stars VALUES ('2023-01-04', 'Terrea', 4);
INSERT INTO public.shooting_stars VALUES ('2023-01-03', 'Terreae', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Byter', 3, 332, 4, NULL);
INSERT INTO public.star VALUES (4, 'Niter', 3, 32, 34, NULL);
INSERT INTO public.star VALUES (6, 'Citer', 4, 44, 343, NULL);
INSERT INTO public.star VALUES (7, 'Sliper', 4, 4444, 4343, NULL);
INSERT INTO public.star VALUES (8, 'Xier', 4, 45, 433, NULL);
INSERT INTO public.star VALUES (9, 'Zier', 3, 345, 6433, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: shooting_stars_shooting_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.shooting_stars_shooting_stars_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_alias_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_alias_key UNIQUE (alias);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_key UNIQUE (type);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_rate_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_rate_key UNIQUE (rate);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_rate_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_rate_key UNIQUE (rate);


--
-- Name: shooting_stars shooting_stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shooting_stars
    ADD CONSTRAINT shooting_stars_name_key UNIQUE (name);


--
-- Name: shooting_stars shooting_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shooting_stars
    ADD CONSTRAINT shooting_stars_pkey PRIMARY KEY (shooting_stars_id);


--
-- Name: shooting_stars shooting_stars_time_happened_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shooting_stars
    ADD CONSTRAINT shooting_stars_time_happened_key UNIQUE (time_happened);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_power_nits_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_power_nits_key UNIQUE (power_nits);


--
-- Name: star star_rate_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_rate_key UNIQUE (rate);


--
-- Name: star star_tourists_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_tourists_key UNIQUE (tourists);


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

