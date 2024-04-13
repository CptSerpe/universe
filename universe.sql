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
    star_numnber integer,
    star_dimension numeric,
    state boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_planet boolean,
    dimension numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_sun numeric,
    moon_number integer,
    planet_description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: popolation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.popolation (
    popolation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    popolation_number integer
);


ALTER TABLE public.popolation OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_sun numeric,
    dimension numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'uno', 50, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'due', 45, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'tre', 55, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'quattro', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'cinque', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sei', 80, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'uno', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'due', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'tre', NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'quattro', NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'cinque', NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'sei', NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'sette', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'otto', NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'nove', NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'dieci', NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'undici', NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'dodici', NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, 'tredici', NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'quattordici', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'quindici', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'sedici', NULL, NULL, 8);
INSERT INTO public.moon VALUES (17, 'diciassette', NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'diciotto', NULL, NULL, 10);
INSERT INTO public.moon VALUES (19, 'diciannove', NULL, NULL, 11);
INSERT INTO public.moon VALUES (20, 'venti', NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'uno', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'due', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'tre', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'quattro', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'cinque', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'sei', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'sette', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'otto', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'nove', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'dieci', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'undici', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'dodici', NULL, NULL, NULL, 6);


--
-- Data for Name: popolation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.popolation VALUES (1, 'uno', NULL);
INSERT INTO public.popolation VALUES (2, 'due', NULL);
INSERT INTO public.popolation VALUES (3, 'tre', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'uno', NULL, NULL, 6);
INSERT INTO public.star VALUES (2, 'due', NULL, NULL, 5);
INSERT INTO public.star VALUES (3, 'tre', NULL, NULL, 4);
INSERT INTO public.star VALUES (4, 'quattro', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'cinque', NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'sei', NULL, NULL, 1);


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
-- Name: popolation popolation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.popolation
    ADD CONSTRAINT popolation_name_key UNIQUE (name);


--
-- Name: popolation popolation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.popolation
    ADD CONSTRAINT popolation_pkey PRIMARY KEY (popolation_id);


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
