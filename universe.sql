psql --username=freecodecamp --dbname=postgres

create database universe;

\c universe

create table galaxy (galaxy_ID SERIAL PRIMARY KEY, name varchar(255) unique, age INT NOT NULL, Discovered INT NOT NULL,origin_g text, Size_g numeric, has_life boolean, is_spherical boolean);
create table star   (star_ID SERIAL PRIMARY KEY, name varchar(255) unique,   age INT NOT NULL, Discovered INT NOT NULL,origin_s text, Size_s numeric, has_life boolean, is_spherical boolean, galaxy_ID BIGINT, FOREIGN KEY (galaxy_ID) REFERENCES galaxy(galaxy_ID));
create table planet (planet_ID SERIAL PRIMARY KEY, name varchar(255) unique, age INT NOT NULL, Discovered INT NOT NULL, origin_p text, Size_p numeric, has_life boolean, is_spherical boolean, star_ID BIGINT, FOREIGN KEY (star_ID) REFERENCES star(star_ID));
create table moon   (moon_ID SERIAL Primary KEY, name varchar(255) unique,   age INT NOT NULL, Discovered INT NOT NULL, origin_m text, Size_m numeric, has_life boolean, is_spherical boolean, planet_ID BIGINT, FOREIGN KEY (planet_ID) REFERENCES planet(planet_ID));
create table sun    (sun_ID SERIAL Primary KEY, name varchar(255) unique, age INT NOT NULL, Discovered INT NOT NULL, origin_su text, size_su numeric, has_life boolean, is_spherical boolean);


-- Eingabe Werte

-- Galaxy values

INSERT INTO galaxy (name, age, discovered, origin_g, size_g, has_life, is_spherical) VALUES
      ('Milchstraße', 13600, 1610, 'Von der Erde aus sichtbar; Galileo dokumentierte sie zuerst mit einem Teleskop.', 100000.0, true, true),
      ('Andromeda', 10000, 964, 'Von persischen Astronomen dokumentiert, später von Al Sufi beschrieben.', 220000.0, false, true),
      ('Triangulum', 12000, 1654, 'Von italienischen Astronomen entdeckt.', 60000.0, false, true),
      ('Sombrero', 9000, 1912, 'Entdeckt von Vesto Slipher durch spektroskopische Analyse.', 50000.0, false, true),
      ('Whirlpool', 11000, 1773, 'Von Charles Messier katalogisiert.', 60000.0, false, true),
      ('Sculptor', 9500, 1900, 'Erkannt durch Infrarotdaten.', 30000.0, false, true),
      ('Black Eye', 8500, 1779, 'Entdeckt von Edward Pigott.', 40000.0, false, true),
      ('Cartwheel', 10000, 1941, 'Erkannt durch ungewöhnliche Ringstruktur in Teleskopbildern.', 150000.0, false, false),
      ('Messier 87', 13000, 1781, 'Von Charles Messier dokumentiert.', 98000.0, false, true),
      ('Centaurus A', 12000, 1826, 'Erstmals im südlichen Himmel dokumentiert.', 60000.0, false, true),
      ('Large Magellanic Cloud', 13000, 1519, 'Von Magellan auf seiner Weltumsegelung notiert.', 14000.0, false, false),
      ('Small Magellanic Cloud', 13000, 1519, 'Ebenfalls durch Magellans Mannschaft entdeckt.', 7000.0, false, false),
      ('Pinwheel', 11000, 1781, 'Im Messier-Katalog verzeichnet.', 170000.0, false, true),
      ('NGC 1300', 9000, 1835, 'Entdeckt durch William Herschel.', 110000.0, false, true),
      ('NGC 6744', 9500, 1826, 'Im südlichen Himmel gefunden.', 175000.0, false, true),
      ('IC 1101', 13000, 1790, 'Früh in teleskopischer Kartierung sichtbar.', 600000.0, false, true),
      ('NGC 4622', 10000, 1920, 'Erkannt durch ungewöhnliche Spiralstruktur.', 80000.0, false, true),
      ('Tadpole Galaxy', 8000, 1999, 'Entdeckt durch Hubble-Bilder.', 280000.0, false, false),
      ('Hoag’s Object', 9500, 1950, 'Seltene Ringgalaxie, entdeckt von Arthur Hoag.', 100000.0, false, true),
      ('NGC 2442', 9700, 1834, 'Von John Herschel im südlichen Himmel beobachtet.', 75000.0, false, true);


-- Star values

INSERT INTO star (name, age, discovered, origin_s, size_s, has_life, is_spherical, galaxy_ID) VALUES
      ('Sonne', 4600, -1000, 'Seit der Antike bekannt, zentrale Energiequelle des Sonnensystems.', 1.0, true, true, 1),
      ('Proxima Centauri', 4800, 1915, 'Von Robert Innes entdeckt, nächster Stern zur Sonne.', 0.15, false, true, 1),
      ('Sirius', 240, -1000, 'Seit der Antike bekannt, hellster Stern am Nachthimmel.', 2.1, false, true, 1),
      ('Betelgeuse', 10000, 1836, 'Roter Überriese, auffällig in Orion.', 950.0, false, true, 1),
      ('Rigel', 8000, 1752, 'Blauer Überriese im Sternbild Orion.', 70.0, false, true, 1),
      ('Vega', 455, -1000, 'Sehr hell, in der Antike als Zeitmesser verwendet.', 2.3, false, true, 1),
      ('Altair', 1200, -1000, 'Teil des Sommerdreiecks, sehr nah an der Erde.', 1.8, false, true, 1),
      ('Deneb', 10000, 1600, 'Blauer Riese, Teil des Sommerdreiecks.', 200.0, false, true, 1),
      ('Barnards Pfeilstern', 7000, 1916, 'Entdeckt durch Edward Emerson Barnard.', 0.16, false, true, 1),
      ('Polaris', 70000, -1000, 'Nordstern, seit Jahrhunderten zur Navigation verwendet.', 37.5, false, true, 1),
      ('UY Scuti', 10000, 1860, 'Extrem großer Überriese, einer der größten bekannten Sterne.', 1700.0, false, true, 1),
      ('Canopus', 10000, -1000, 'Zweithellster Stern am Nachthimmel.', 65.0, false, true, 1),
      ('R136a1', 1000, 2010, 'Massenreichster bekannter Stern, in der LMC.', 35.0, false, true, 11),
      ('SN 1994D', 1000, 1994, 'Supernova-Überrest in der Galaxie NGC 4526.', 1.4, false, false, 2),
      ('Wolf 359', 5000, 1917, 'Roter Zwerg, einer der sonnennächsten Sterne.', 0.16, false, true, 1),
      ('Zeta Puppis', 3000, 1700, 'Heller heißer Stern im Südhimmel.', 20.0, false, true, 14),
      ('VY Canis Majoris', 8000, 1801, 'Einer der größten bekannten Sterne.', 1420.0, false, true, 1),
      ('Mu Cephei', 5000, 1600, 'Roter Überriese, genannt "Garnet Star".', 1200.0, false, true, 1),
      ('HD 140283', 13500, 2000, 'Einer der ältesten bekannten Sterne.', 0.8, false, true, 1),
      ('SN 1572', 450, 1572, 'Von Tycho Brahe beobachtete Supernova.', 1.0, false, false, 1);

-- Values Planet

INSERT INTO planet (name, age, discovered, origin_p, size_p, has_life, is_spherical, star_ID) VALUES
      ('Erde', 4540, -1000, 'Seit der Antike bekannt, der einzige bekannte belebte Planet.', 1.0, true, true, 1),
      ('Mars', 4600, -1000, 'Schon früh mit bloßem Auge sichtbar.', 0.53, false, true, 1),
      ('Jupiter', 4600, -1000, 'Größter Planet im Sonnensystem, seit der Antike bekannt.', 11.2, false, true, 1),
      ('Proxima b', 4800, 2016, 'Erster Planet um Proxima Centauri, potenziell habitabel.', 1.1, false, true, 2),
      ('Sirius Ab', 200, 2022, 'Hypothetisch entdeckt mit spektralen Methoden.', 1.4, false, true, 3),
      ('Betelgeuse Alpha I', 1000, 2015, 'Fiktiver Gasriese in Betelgeuse-System.', 12.0, false, true, 4),
      ('Vega Icarus', 100, 1999, 'Hypothetischer heißer Planet, nahe am Stern.', 0.9, false, true, 6),
      ('Altair IV', 500, 1956, 'Berühmt aus Science-Fiction, hier hypothetisch eingefügt.', 1.3, false, true, 7),
      ('Deneb Prime', 1000, 2009, 'Großer Gasplanet in Umlaufbahn eines blauen Riesen.', 15.0, false, true, 8),
      ('Barnards Planet', 7000, 2018, 'Entdeckt durch Radialgeschwindigkeit, kühler Supererde-Typ.', 3.2, false, true, 9),
      ('Polaris B2', 50000, 2020, 'Planet in weiter Umlaufbahn um den Nordstern.', 2.5, false, true, 10),
      ('UY Prime', 200, 2023, 'Fiktiver Planet nahe Überriese UY Scuti.', 10.0, false, false, 11),
      ('Canopus Minor', 500, 2021, 'Gasriese mit elliptischer Bahn.', 9.8, false, true, 12),
      ('R136a1-X', 10, 2022, 'Extremer junger Gasplanet, sehr nah am Stern.', 15.0, false, false, 13),
      ('Wolf Terra', 100, 2019, 'Erdähnlicher Planet nahe Wolf 359.', 1.0, false, true, 15),
      ('Zeta I', 1000, 1998, 'Staubreicher Riesenplanet.', 8.6, false, true, 16),
      ('Canis Prime', 700, 2018, 'Wahrscheinlich instabil wegen Nähe zum Stern.', 4.1, false, false, 17),
      ('Mu Cephei Beta', 500, 2023, 'Exotischer Planet mit kohlenstoffreicher Atmosphäre.', 7.5, false, true, 18),
      ('Methusalon', 13000, 2003, 'Ältester bekannter Planet, bei HD 140283.', 1.1, false, true, 19),
      ('Nova X', 400, 1572, 'Theoretischer Planet vor Supernova SN 1572.', 3.4, false, false, 20);



-- Values Moon

INSERT INTO moon (name, age, discovered, origin_m, size_m, has_life, is_spherical, planet_ID) VALUES
      ('Mond', 4500, -1000, 'Seit Urzeiten bekannt, einziger natürlicher Satellit der Erde.', 0.27, false, true, 1),
      ('Phobos', 4600, 1877, 'Einer von zwei Marsmonden, entdeckt von Asaph Hall.', 0.011, false, false, 2),
      ('Deimos', 4600, 1877, 'Zweiter Marsmond, kleiner als Phobos.', 0.006, false, false, 2),
      ('Ganymed', 4600, 1610, 'Größter Mond im Sonnensystem, entdeckt von Galileo.', 0.41, false, true, 3),
      ('Europa', 4600, 1610, 'Eisiger Jupitermond mit unterirdischem Ozean.', 0.25, false, true, 3),
      ('Proxima b I', 4800, 2020, 'Fiktiver Mond um den Planeten Proxima b.', 0.1, false, true, 4),
      ('Sirius Ab Luna', 200, 2023, 'Hypothetischer Mond im Sirius-System.', 0.3, false, true, 5),
      ('Betel Alpha Minor', 100, 2017, 'Gaswolkenartiger Mond, instabil.', 0.6, false, false, 6),
      ('Icarus Theta', 100, 2001, 'Kleiner heißer Mond in der Nähe von Vega.', 0.05, false, true, 7),
      ('Altair Gamma', 300, 1980, 'Großer felsiger Mond, fiktiv.', 0.9, false, true, 8),
      ('Deneb Moon 1', 900, 2009, 'Gasreicher Mond, kaum fest.', 0.5, false, false, 9),
      ('Barnard’s Rock', 6900, 2020, 'Eisiger, erdgroßer Mond.', 1.0, false, true, 10),
      ('Polaris C', 49000, 2021, 'Langperiodischer Mond, entfernt.', 0.7, false, true, 11),
      ('UY Minor', 100, 2024, 'Instabiler Mond, könnte kollabieren.', 2.0, false, false, 12),
      ('Canopus Echo', 200, 2021, 'Kleiner felsiger Mond.', 0.2, false, true, 13),
      ('X-1A', 5, 2023, 'Sehr junger, heißer Mond.', 0.8, false, false, 14),
      ('Wolf Beta I', 80, 2020, 'Fiktiver eisiger Mond.', 0.4, false, true, 15),
      ('Zeta Puppis Moon', 1000, 2022, 'Staubreicher Mond, instabil.', 0.3, false, false, 16),
      ('Canis Minor', 500, 2023, 'Gezeitenverformter Mond.', 0.6, false, true, 17),
      ('Methusalon B', 13000, 2005, 'Einer der ältesten bekannten Monde.', 0.9, false, true, 19);


-- Values Sun


INSERT INTO sun (name, age, discovered, origin_su, size_su, has_life, is_spherical) VALUES
      ('Sol', 4600, -1000, 'Zentrale Sonne unseres Sonnensystems, seit Menschheitsbeginn bekannt.', 1.0, true, true),
      ('Alpha Solaris', 5000, 2020, 'Fiktive Sonne in Alpha Centauri-System.', 1.2, false, true),
      ('Helios Nova', 3000, 1999, 'Theoretisch modellierte Sonne in fremder Galaxie.', 0.9, false, true),
      ('Zeta Helion', 10000, 2015, 'Extrem heiße Sonne mit hoher UV-Strahlung.', 2.5, false, true),
      ('Kronos A', 12000, 1988, 'Alte Sonne mit schwächerer Strahlung, in Sternhaufen beobachtet.', 0.6, false, true),
      ('Tau Ceti', 5800, 1960, 'Sonnentyp-ähnlich, wird häufig in SETI erforscht.', 0.78, false, true),
      ('Vega Prime', 455, -1000, 'Sehr helle Sonne im Lyra-System, seit der Antike bekannt.', 2.1, false, true),
      ('Polaris Solis', 70000, -1000, 'Riesige, pulsierende Sonne – bekannt als Nordstern.', 6.0, false, true),
      ('Erebus A', 2000, 2023, 'Kalte, dunkle Sonne eines Exosystems.', 0.4, false, false),
      ('Ignis', 100, 2021, 'Junger, heller Sonnenkern mit hoher Energieabgabe.', 1.7, false, true),
      ('Aurora', 10000, 1974, 'Beobachtet in Andromeda, sehr stabiler Sonnenkörper.', 1.3, false, true),
      ('Helion X', 5000, 2002, 'Künstlich klassifizierte Sonne in Computersimulation.', 0.95, false, true),
      ('Zorion', 6000, 2020, 'Sonnensystem mit mehreren Monden beobachtet.', 1.1, false, true),
      ('Titanus', 7000, 1987, 'Riesige, rote Sonne im Riesenplanetensystem.', 3.4, false, true),
      ('Kappa Lux', 1500, 2010, 'Kalte Sonne mit hoher Metallizität.', 0.8, false, true),
      ('Lumen Alpha', 8000, 2012, 'Fiktive Sonne in einer Zone mit starker Gravitation.', 2.0, false, false),
      ('Super Sol', 25000, 2008, 'Hyperriesiger Sonnenkörper in ferner Galaxie.', 12.0, false, true),
      ('Dawnfire', 3000, 2023, 'Junge, instabile Sonne mit schnellen Eruptionen.', 1.6, false, false),
      ('Aurelia', 4000, 1990, 'Strahlt ungewöhnlich stark im Infrarotbereich.', 0.9, false, true),
      ('Nyx Solaris', 20000, 2021, 'Lang lebende Sonne in dunkler Materiezone.', 0.7, false, true);

