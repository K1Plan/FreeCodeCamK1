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
    name character varying(255),
    age integer NOT NULL,
    discovered integer NOT NULL,
    origin_g text,
    size_g numeric,
    has_life boolean,
    is_spherical boolean
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
    name character varying(255),
    age integer NOT NULL,
    discovered integer NOT NULL,
    origin_m text,
    size_m numeric,
    has_life boolean,
    is_spherical boolean,
    planet_id bigint
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
    name character varying(255),
    age integer NOT NULL,
    discovered integer NOT NULL,
    origin_p text,
    size_p numeric,
    has_life boolean,
    is_spherical boolean,
    star_id bigint
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
    name character varying(255),
    age integer NOT NULL,
    discovered integer NOT NULL,
    origin_s text,
    size_s numeric,
    has_life boolean,
    is_spherical boolean,
    galaxy_id bigint
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(255),
    age integer NOT NULL,
    discovered integer NOT NULL,
    origin_su text,
    size_su numeric,
    has_life boolean,
    is_spherical boolean
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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milchstraße', 13600, 1610, 'Von der Erde aus sichtbar; Galileo dokumentierte sie zuerst mit einem Teleskop.', 100000.0, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 964, 'Von persischen Astronomen dokumentiert, später von Al Sufi beschrieben.', 220000.0, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 1654, 'Von italienischen Astronomen entdeckt.', 60000.0, false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000, 1912, 'Entdeckt von Vesto Slipher durch spektroskopische Analyse.', 50000.0, false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 11000, 1773, 'Von Charles Messier katalogisiert.', 60000.0, false, true);
INSERT INTO public.galaxy VALUES (6, 'Sculptor', 9500, 1900, 'Erkannt durch Infrarotdaten.', 30000.0, false, true);
INSERT INTO public.galaxy VALUES (7, 'Black Eye', 8500, 1779, 'Entdeckt von Edward Pigott.', 40000.0, false, true);
INSERT INTO public.galaxy VALUES (8, 'Cartwheel', 10000, 1941, 'Erkannt durch ungewöhnliche Ringstruktur in Teleskopbildern.', 150000.0, false, false);
INSERT INTO public.galaxy VALUES (9, 'Messier 87', 13000, 1781, 'Von Charles Messier dokumentiert.', 98000.0, false, true);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', 12000, 1826, 'Erstmals im südlichen Himmel dokumentiert.', 60000.0, false, true);
INSERT INTO public.galaxy VALUES (11, 'Large Magellanic Cloud', 13000, 1519, 'Von Magellan auf seiner Weltumsegelung notiert.', 14000.0, false, false);
INSERT INTO public.galaxy VALUES (12, 'Small Magellanic Cloud', 13000, 1519, 'Ebenfalls durch Magellans Mannschaft entdeckt.', 7000.0, false, false);
INSERT INTO public.galaxy VALUES (13, 'Pinwheel', 11000, 1781, 'Im Messier-Katalog verzeichnet.', 170000.0, false, true);
INSERT INTO public.galaxy VALUES (14, 'NGC 1300', 9000, 1835, 'Entdeckt durch William Herschel.', 110000.0, false, true);
INSERT INTO public.galaxy VALUES (15, 'NGC 6744', 9500, 1826, 'Im südlichen Himmel gefunden.', 175000.0, false, true);
INSERT INTO public.galaxy VALUES (16, 'IC 1101', 13000, 1790, 'Früh in teleskopischer Kartierung sichtbar.', 600000.0, false, true);
INSERT INTO public.galaxy VALUES (17, 'NGC 4622', 10000, 1920, 'Erkannt durch ungewöhnliche Spiralstruktur.', 80000.0, false, true);
INSERT INTO public.galaxy VALUES (18, 'Tadpole Galaxy', 8000, 1999, 'Entdeckt durch Hubble-Bilder.', 280000.0, false, false);
INSERT INTO public.galaxy VALUES (19, 'Hoag’s Object', 9500, 1950, 'Seltene Ringgalaxie, entdeckt von Arthur Hoag.', 100000.0, false, true);
INSERT INTO public.galaxy VALUES (20, 'NGC 2442', 9700, 1834, 'Von John Herschel im südlichen Himmel beobachtet.', 75000.0, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 4500, -1000, 'Seit Urzeiten bekannt, einziger natürlicher Satellit der Erde.', 0.27, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600, 1877, 'Einer von zwei Marsmonden, entdeckt von Asaph Hall.', 0.011, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600, 1877, 'Zweiter Marsmond, kleiner als Phobos.', 0.006, false, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymed', 4600, 1610, 'Größter Mond im Sonnensystem, entdeckt von Galileo.', 0.41, false, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 4600, 1610, 'Eisiger Jupitermond mit unterirdischem Ozean.', 0.25, false, true, 3);
INSERT INTO public.moon VALUES (6, 'Proxima b I', 4800, 2020, 'Fiktiver Mond um den Planeten Proxima b.', 0.1, false, true, 4);
INSERT INTO public.moon VALUES (7, 'Sirius Ab Luna', 200, 2023, 'Hypothetischer Mond im Sirius-System.', 0.3, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Betel Alpha Minor', 100, 2017, 'Gaswolkenartiger Mond, instabil.', 0.6, false, false, 6);
INSERT INTO public.moon VALUES (9, 'Icarus Theta', 100, 2001, 'Kleiner heißer Mond in der Nähe von Vega.', 0.05, false, true, 7);
INSERT INTO public.moon VALUES (10, 'Altair Gamma', 300, 1980, 'Großer felsiger Mond, fiktiv.', 0.9, false, true, 8);
INSERT INTO public.moon VALUES (11, 'Deneb Moon 1', 900, 2009, 'Gasreicher Mond, kaum fest.', 0.5, false, false, 9);
INSERT INTO public.moon VALUES (12, 'Barnard’s Rock', 6900, 2020, 'Eisiger, erdgroßer Mond.', 1.0, false, true, 10);
INSERT INTO public.moon VALUES (13, 'Polaris C', 49000, 2021, 'Langperiodischer Mond, entfernt.', 0.7, false, true, 11);
INSERT INTO public.moon VALUES (14, 'UY Minor', 100, 2024, 'Instabiler Mond, könnte kollabieren.', 2.0, false, false, 12);
INSERT INTO public.moon VALUES (15, 'Canopus Echo', 200, 2021, 'Kleiner felsiger Mond.', 0.2, false, true, 13);
INSERT INTO public.moon VALUES (16, 'X-1A', 5, 2023, 'Sehr junger, heißer Mond.', 0.8, false, false, 14);
INSERT INTO public.moon VALUES (17, 'Wolf Beta I', 80, 2020, 'Fiktiver eisiger Mond.', 0.4, false, true, 15);
INSERT INTO public.moon VALUES (18, 'Zeta Puppis Moon', 1000, 2022, 'Staubreicher Mond, instabil.', 0.3, false, false, 16);
INSERT INTO public.moon VALUES (19, 'Canis Minor', 500, 2023, 'Gezeitenverformter Mond.', 0.6, false, true, 17);
INSERT INTO public.moon VALUES (20, 'Methusalon B', 13000, 2005, 'Einer der ältesten bekannten Monde.', 0.9, false, true, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Erde', 4540, -1000, 'Seit der Antike bekannt, der einzige bekannte belebte Planet.', 1.0, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4600, -1000, 'Schon früh mit bloßem Auge sichtbar.', 0.53, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4600, -1000, 'Größter Planet im Sonnensystem, seit der Antike bekannt.', 11.2, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 4800, 2016, 'Erster Planet um Proxima Centauri, potenziell habitabel.', 1.1, false, true, 2);
INSERT INTO public.planet VALUES (5, 'Sirius Ab', 200, 2022, 'Hypothetisch entdeckt mit spektralen Methoden.', 1.4, false, true, 3);
INSERT INTO public.planet VALUES (6, 'Betelgeuse Alpha I', 1000, 2015, 'Fiktiver Gasriese in Betelgeuse-System.', 12.0, false, true, 4);
INSERT INTO public.planet VALUES (7, 'Vega Icarus', 100, 1999, 'Hypothetischer heißer Planet, nahe am Stern.', 0.9, false, true, 6);
INSERT INTO public.planet VALUES (8, 'Altair IV', 500, 1956, 'Berühmt aus Science-Fiction, hier hypothetisch eingefügt.', 1.3, false, true, 7);
INSERT INTO public.planet VALUES (9, 'Deneb Prime', 1000, 2009, 'Großer Gasplanet in Umlaufbahn eines blauen Riesen.', 15.0, false, true, 8);
INSERT INTO public.planet VALUES (10, 'Barnards Planet', 7000, 2018, 'Entdeckt durch Radialgeschwindigkeit, kühler Supererde-Typ.', 3.2, false, true, 9);
INSERT INTO public.planet VALUES (11, 'Polaris B2', 50000, 2020, 'Planet in weiter Umlaufbahn um den Nordstern.', 2.5, false, true, 10);
INSERT INTO public.planet VALUES (12, 'UY Prime', 200, 2023, 'Fiktiver Planet nahe Überriese UY Scuti.', 10.0, false, false, 11);
INSERT INTO public.planet VALUES (13, 'Canopus Minor', 500, 2021, 'Gasriese mit elliptischer Bahn.', 9.8, false, true, 12);
INSERT INTO public.planet VALUES (14, 'R136a1-X', 10, 2022, 'Extremer junger Gasplanet, sehr nah am Stern.', 15.0, false, false, 13);
INSERT INTO public.planet VALUES (15, 'Wolf Terra', 100, 2019, 'Erdähnlicher Planet nahe Wolf 359.', 1.0, false, true, 15);
INSERT INTO public.planet VALUES (16, 'Zeta I', 1000, 1998, 'Staubreicher Riesenplanet.', 8.6, false, true, 16);
INSERT INTO public.planet VALUES (17, 'Canis Prime', 700, 2018, 'Wahrscheinlich instabil wegen Nähe zum Stern.', 4.1, false, false, 17);
INSERT INTO public.planet VALUES (18, 'Mu Cephei Beta', 500, 2023, 'Exotischer Planet mit kohlenstoffreicher Atmosphäre.', 7.5, false, true, 18);
INSERT INTO public.planet VALUES (19, 'Methusalon', 13000, 2003, 'Ältester bekannter Planet, bei HD 140283.', 1.1, false, true, 19);
INSERT INTO public.planet VALUES (20, 'Nova X', 400, 1572, 'Theoretischer Planet vor Supernova SN 1572.', 3.4, false, false, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sonne', 4600, -1000, 'Seit der Antike bekannt, zentrale Energiequelle des Sonnensystems.', 1.0, true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4800, 1915, 'Von Robert Innes entdeckt, nächster Stern zur Sonne.', 0.15, false, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 240, -1000, 'Seit der Antike bekannt, hellster Stern am Nachthimmel.', 2.1, false, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10000, 1836, 'Roter Überriese, auffällig in Orion.', 950.0, false, true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8000, 1752, 'Blauer Überriese im Sternbild Orion.', 70.0, false, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 455, -1000, 'Sehr hell, in der Antike als Zeitmesser verwendet.', 2.3, false, true, 1);
INSERT INTO public.star VALUES (7, 'Altair', 1200, -1000, 'Teil des Sommerdreiecks, sehr nah an der Erde.', 1.8, false, true, 1);
INSERT INTO public.star VALUES (8, 'Deneb', 10000, 1600, 'Blauer Riese, Teil des Sommerdreiecks.', 200.0, false, true, 1);
INSERT INTO public.star VALUES (9, 'Barnards Pfeilstern', 7000, 1916, 'Entdeckt durch Edward Emerson Barnard.', 0.16, false, true, 1);
INSERT INTO public.star VALUES (10, 'Polaris', 70000, -1000, 'Nordstern, seit Jahrhunderten zur Navigation verwendet.', 37.5, false, true, 1);
INSERT INTO public.star VALUES (11, 'UY Scuti', 10000, 1860, 'Extrem großer Überriese, einer der größten bekannten Sterne.', 1700.0, false, true, 1);
INSERT INTO public.star VALUES (12, 'Canopus', 10000, -1000, 'Zweithellster Stern am Nachthimmel.', 65.0, false, true, 1);
INSERT INTO public.star VALUES (13, 'R136a1', 1000, 2010, 'Massenreichster bekannter Stern, in der LMC.', 35.0, false, true, 11);
INSERT INTO public.star VALUES (14, 'SN 1994D', 1000, 1994, 'Supernova-Überrest in der Galaxie NGC 4526.', 1.4, false, false, 2);
INSERT INTO public.star VALUES (15, 'Wolf 359', 5000, 1917, 'Roter Zwerg, einer der sonnennächsten Sterne.', 0.16, false, true, 1);
INSERT INTO public.star VALUES (16, 'Zeta Puppis', 3000, 1700, 'Heller heißer Stern im Südhimmel.', 20.0, false, true, 14);
INSERT INTO public.star VALUES (17, 'VY Canis Majoris', 8000, 1801, 'Einer der größten bekannten Sterne.', 1420.0, false, true, 1);
INSERT INTO public.star VALUES (18, 'Mu Cephei', 5000, 1600, 'Roter Überriese, genannt "Garnet Star".', 1200.0, false, true, 1);
INSERT INTO public.star VALUES (19, 'HD 140283', 13500, 2000, 'Einer der ältesten bekannten Sterne.', 0.8, false, true, 1);
INSERT INTO public.star VALUES (20, 'SN 1572', 450, 1572, 'Von Tycho Brahe beobachtete Supernova.', 1.0, false, false, 1);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', 4600, -1000, 'Zentrale Sonne unseres Sonnensystems, seit Menschheitsbeginn bekannt.', 1.0, true, true);
INSERT INTO public.sun VALUES (2, 'Alpha Solaris', 5000, 2020, 'Fiktive Sonne in Alpha Centauri-System.', 1.2, false, true);
INSERT INTO public.sun VALUES (3, 'Helios Nova', 3000, 1999, 'Theoretisch modellierte Sonne in fremder Galaxie.', 0.9, false, true);
INSERT INTO public.sun VALUES (4, 'Zeta Helion', 10000, 2015, 'Extrem heiße Sonne mit hoher UV-Strahlung.', 2.5, false, true);
INSERT INTO public.sun VALUES (5, 'Kronos A', 12000, 1988, 'Alte Sonne mit schwächerer Strahlung, in Sternhaufen beobachtet.', 0.6, false, true);
INSERT INTO public.sun VALUES (6, 'Tau Ceti', 5800, 1960, 'Sonnentyp-ähnlich, wird häufig in SETI erforscht.', 0.78, false, true);
INSERT INTO public.sun VALUES (7, 'Vega Prime', 455, -1000, 'Sehr helle Sonne im Lyra-System, seit der Antike bekannt.', 2.1, false, true);
INSERT INTO public.sun VALUES (8, 'Polaris Solis', 70000, -1000, 'Riesige, pulsierende Sonne – bekannt als Nordstern.', 6.0, false, true);
INSERT INTO public.sun VALUES (9, 'Erebus A', 2000, 2023, 'Kalte, dunkle Sonne eines Exosystems.', 0.4, false, false);
INSERT INTO public.sun VALUES (10, 'Ignis', 100, 2021, 'Junger, heller Sonnenkern mit hoher Energieabgabe.', 1.7, false, true);
INSERT INTO public.sun VALUES (11, 'Aurora', 10000, 1974, 'Beobachtet in Andromeda, sehr stabiler Sonnenkörper.', 1.3, false, true);
INSERT INTO public.sun VALUES (12, 'Helion X', 5000, 2002, 'Künstlich klassifizierte Sonne in Computersimulation.', 0.95, false, true);
INSERT INTO public.sun VALUES (13, 'Zorion', 6000, 2020, 'Sonnensystem mit mehreren Monden beobachtet.', 1.1, false, true);
INSERT INTO public.sun VALUES (14, 'Titanus', 7000, 1987, 'Riesige, rote Sonne im Riesenplanetensystem.', 3.4, false, true);
INSERT INTO public.sun VALUES (15, 'Kappa Lux', 1500, 2010, 'Kalte Sonne mit hoher Metallizität.', 0.8, false, true);
INSERT INTO public.sun VALUES (16, 'Lumen Alpha', 8000, 2012, 'Fiktive Sonne in einer Zone mit starker Gravitation.', 2.0, false, false);
INSERT INTO public.sun VALUES (17, 'Super Sol', 25000, 2008, 'Hyperriesiger Sonnenkörper in ferner Galaxie.', 12.0, false, true);
INSERT INTO public.sun VALUES (18, 'Dawnfire', 3000, 2023, 'Junge, instabile Sonne mit schnellen Eruptionen.', 1.6, false, false);
INSERT INTO public.sun VALUES (19, 'Aurelia', 4000, 1990, 'Strahlt ungewöhnlich stark im Infrarotbereich.', 0.9, false, true);
INSERT INTO public.sun VALUES (20, 'Nyx Solaris', 20000, 2021, 'Lang lebende Sonne in dunkler Materiezone.', 0.7, false, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 20, true);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

