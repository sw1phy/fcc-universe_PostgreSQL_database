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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    x_ray_emission boolean NOT NULL,
    radio_emission boolean NOT NULL,
    name character varying(255) NOT NULL,
    name_code character varying(255)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    speed_in_km_per_sec integer,
    name character varying(255) NOT NULL,
    galaxy_type character varying(255)
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
    name character varying(255) NOT NULL,
    description text,
    name_code character varying(255),
    geological_activity boolean NOT NULL,
    is_tidally_locked boolean NOT NULL,
    surface_composition character varying(255) NOT NULL,
    atmosphere_composition character varying(255),
    mass_in_kg numeric NOT NULL,
    number_of_craters integer,
    planet_id integer NOT NULL,
    discovery_era character varying(255)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mood_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mood_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    mass_mult_by_mass_earth numeric NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    diameter_in_km numeric NOT NULL,
    density_in_gm_per_cubic_cm numeric NOT NULL,
    eccentricity numeric NOT NULL,
    axis_tilt_in_deg numeric NOT NULL,
    revolution character varying(255) NOT NULL,
    star_id integer NOT NULL
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
    radious_in_solar_radii integer NOT NULL,
    temperature_in_k integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mood_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 2, 1, true, true, 'Sagittarius A', 'SGR_A');
INSERT INTO public.black_hole VALUES (2, 2, 3, true, true, 'M87', 'M87');
INSERT INTO public.black_hole VALUES (3, 4, 2, true, false, 'Andromeda A', 'AND_A');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A barrel spiral galaxy that contains our
Solar System  and billions of other stars.', 552, 'Milky Way', 'Barred Spiral');
INSERT INTO public.galaxy VALUES (2, 'The closest galaxy to the Milky Way, on 
a collision course with our galaxy in about 4.5 billion years.', 301, 'Andromeda', 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'The third-largest galaxy 
in the Local Group, smaller than the Milky Way and Andromeda but still contains a vast number of stars.', 102, 'Triangulum', 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'A spiral galaxy with
 a bright nucleus, large central bulge, and a distinct dust lane, giving it the appearance of a sombrero.', 1024, 'Sombrero Galaxy', 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'A giant elliptical galaxy
 in the Virgo Cluster, known for its supermassive black hole at the center.', 1230, 'Messier 87', 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'A grand-design spir
al galaxy known for its clearly defined spiral arms and active star formation regions.', 463, 'Whirlpool Galaxy', 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only natural satellite, known for its phases and influence on Earths tides.', 'LUNA', false, true, 'Basalt, Anorthosite', 'Trace', 7.342, 300000, 1, 'Prehistory');
INSERT INTO public.moon VALUES (2, 'Europa', 'A moon of Jupiter with a subsurface ocean beneath its icy crust, possibly harboring life.', 'EURO', true, true, 'Water Ice, Silicate Rock', 'Oxygen', 4.8, 250, 3, 'Common Era');
INSERT INTO public.moon VALUES (3, 'Titan', 'Saturns largest moon, with a thick atmosphere and liquid methane lakes on its surface.', 'TITA', true, true, 'Water Ice, Methane Ice', 'Nitrogen, Methane', 1.345, 1500, 6, 'Common Era');
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiters innermost large moon, the most volcanically active body in the Solar System.', 'IO', true, true, 'Sulfur, Silicate Rock', 'Sulfur Dioxide', 8.93, 1000, 3, 'Common Era');
INSERT INTO public.moon VALUES (5, 'Ganymede', 'The largest moon in the Solar System, bigger than Mercury, with its own magnetic field.', 'GANY', true, true, 'Water Ice, Silicate Rock', 'Oxygen', 1.4819, 1500, 3, 'Common Era');
INSERT INTO public.moon VALUES (6, 'Enceladus', 'A small moon of Saturn with geysers that spew water vapor, suggesting a subsurface ocean.', 'ENCE', true, true, 'Water Ice', 'Water Vapor', 1.08, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (7, 'Callisto', 'A heavily cratered moon of Jupiter, one of the oldest surfaces in the Solar System.', 'CALL', false, true, 'Water Ice, Rock', 'Carbon Dioxide', 1.0759, 2500, 3, 'Common Era');
INSERT INTO public.moon VALUES (8, 'Triton', 'The largest moon of Neptune, with active geysers and a retrograde orbit.', 'TRIT', true, true, 'Nitrogen Ice, Water Ice', 'Nitrogen, Methane', 2.14, 1000, 9, 'Common Era');
INSERT INTO public.moon VALUES (9, 'Phobos', 'The larger and closer of Mars two moons, heavily cratered and irregularly shaped.', 'PHOB', false, true, 'Carbonaceous Chondrite', 'None', 1.0659, 1000, 2, 'Common Era');
INSERT INTO public.moon VALUES (10, 'Deimos', 'The smaller and more distant of Mars two moons, smoother than Phobos with fewer craters.', 'DEIM', false, true, 'Carbonaceous Chondrite', 'None', 1.4762, 1000, 2, 'Common Era');
INSERT INTO public.moon VALUES (11, 'Rhea', 'The second-largest moon of Saturn, with a heavily cratered icy surface and a tenuous atmosphere.', 'RHEA', false, true, 'Water Ice', 'Oxygen, Carbon Dioxide', 2.31, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (12, 'Dione', 'A moon of Saturn with bright ice cliffs and evidence of geological activity in its past.', 'DION', true, true, 'Water Ice, Silicate Rock', 'Oxygen', 1.1, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (13, 'Miranda', 'The smallest and innermost of Uranus five major moons, known for its unique, patchwork surface.', 'MIRA', true, true, 'Water Ice, Rock', 'None', 6.59, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (14, 'Oberon', 'The second-largest moon of Uranus, with a dark, heavily cratered surface and some bright rays.', 'OBRO', false, true, 'Water Ice, Silicate Rock', 'None', 3.014, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (15, 'Charon', 'The largest moon of Pluto, almost half its size, with a surface featuring chasms and a dark north pole.', 'CHAR', true, true, 'Water Ice, Ammonia Hydrates', 'None', 1.52, 1000, 9, 'Common Era');
INSERT INTO public.moon VALUES (16, 'Mimas', 'Saturns small moon, nicknamed the Death Star moon due to a large crater that dominates its surface.', 'MIMA', false, true, 'Water Ice', 'None', 3.75, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (17, 'Iapetus', 'Saturns moon with a striking two-tone coloration, featuring a dark leading hemisphere and a bright trailing one.', 'IAPE', false, true, 'Water Ice, Carbonaceous Material', 'None', 1.8, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (18, 'Hyperion', 'An irregularly shaped, sponge-like moon of Saturn with a chaotic rotation and a heavily cratered surface.', 'HYPE', false, false, 'Water Ice, Dark Organic Material', 'None', 5.6, 1000, 6, 'Common Era');
INSERT INTO public.moon VALUES (19, 'Amalthea', 'A small, irregularly shaped inner moon of Jupiter with a red color due to sulfur from Io.', 'AMAL', false, true, 'Water Ice, Rock', 'None', 7.17, 1000, 3, 'Common Era');
INSERT INTO public.moon VALUES (20, 'Nereid', 'Neptunes third-largest moon, with a highly eccentric orbit and an irregular shape.', 'NERE', false, false, 'Water Ice, Carbonaceous Material', 'None', 3.1, 1000, 9, 'Common Era');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun, known for its divers
e ecosystems and the only known planet to support life.', 1.0, 4500, true, true, 12742, 5.52, 0.0167, 23.5, '365.25 days', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun, known as the Red Pla
net, with surface conditions that may have once supported liquid water.', 0.107, 4500, false, true, 6779, 3.93, 0.0934, 25.19, '687 days', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'The largest planet in the Solar System, a gas gia
nt with a strong magnetic field and dozens of moons, including Ganymede, the largest moon in the Solar System.', 317.8, 4500, false, true, 139820, 1.33, 0.0489, 3.13, '4332.59 days', 1);
INSERT INTO public.planet VALUES (4, 'Kepler-186f', 'An exoplanet orbiting the red dwarf star Kepl
er-186, located in the habitable zone where liquid water could exist.', 1.4, 4000, false, true, 14440, 5.27, 0.12, 0, '129.9 days', 2);
INSERT INTO public.planet VALUES (5, 'Venus', 'The second planet from the Sun, similar in size to 
Earth but with an extremely thick atmosphere that creates surface temperatures hot enough to melt lead.', 0.815, 4500, false, true, 12104, 5.24, 0.0068, 177.36, '224.7 days', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun, known for its exten
sive ring system made of ice and rock particles, and its numerous moons including Titan.', 95.16, 4500, false, true, 116460, 0.687, 0.0565, 26.73, '10759 days', 1);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri b', 'An exoplanet orbiting the star Proxima Centauri, the closest known exoplanet to the Solar System, possibly within the habitable zone.', 1.17, 4500, false, true, 12790, 5.51, 0.35, 0, '11.2 days', 1);
INSERT INTO public.planet VALUES (8, 'Gliese 581g', 'A potentially habitable exoplanet located in the Gliese 581 system, within the habitable zone where liquid water could exist.', 3.1, 7000, false, true, 19000, 5.5, 0.16, 0, '37 days', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'The eighth and farthest known planet from the Sun
, a gas giant with a deep blue color due to methane in its atmosphere.', 17.15, 4500, false, true, 49244, 1.64, 0.0086, 28.32, '60190 days', 1);
INSERT INTO public.planet VALUES (10, 'HD 209458 b (Osiris)', 'A exoplanet known for being the firs
t exoplanet where an atmosphere was detected. It is a gas giant orbiting very close to its star.', 220, 5000, false, true, 143000, 0.36, 0.007, 0, '3.5 days', 1);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 'A hot Jupiter exoplanet that is so close to its 
star that it is losing mass due to tidal forces and has an elongated shape.', 454, 5000, false, true, 213000, 0.3, 0, 0, '1.09 days', 1);
INSERT INTO public.planet VALUES (12, 'Titan', 'The largest moon of Saturn, larger than the planet 
Mercury, with a thick atmosphere and lakes of liquid methane and ethane on its surface.', 0.0255, 4500, false, true, 5149, 1.88, 0.0288, 0.33, '15.95 days', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 5778, 'Yellow', 'Sun', 1);
INSERT INTO public.star VALUES (2, 79, 12100, 'Blue', 'Rigel', 1);
INSERT INTO public.star VALUES (3, 1, 5790, 'Yellow', 'Alpha Centauri A', 1);
INSERT INTO public.star VALUES (4, 764, 3500, 'Red', 'Betelgeuse', 1);
INSERT INTO public.star VALUES (5, 2, 25300, 'Blue_White', 'S2', 1);
INSERT INTO public.star VALUES (6, 0, 2516, 'Red', 'TRAPPIST-1', 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_mood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mood_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_code_key UNIQUE (name_code);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet name_uniqueplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_uniqueplanet UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

