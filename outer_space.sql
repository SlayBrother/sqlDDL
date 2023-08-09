-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years NUMERIC NOT NULL,
  galaxy TEXT NOT NULL,
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  planet_id INT REFERENCES planets(id),
  name TEXT NOT NULL  
);

INSERT INTO planets
  (name, orbital_period_in_years, galaxy)
VALUES
  ('Earth', 1.00,'Milky Way'),
  ('Mars', 1.88, 'Milky Way'),
  ('Venus', 0.62, 'Milky Way'),
  ('Neptune', 164.8,'Milky Way'),
  ('Proxima Centauri b', 0.03, 'Milky Way'),
  ('Gliese 876 b', 0.23, 'Milky Way');

INSERT INTO moons (planet_id, name)
VALUES
  (1, 'The Moon'),
  (2, 'Phobos'),
  (2, 'Deimos'),
  (4, 'Naiad'),
  (4, 'Thalassa'),
  (4, 'Despina'),
  (4, 'Galatea'),
  (4, 'Larissa'),
  (4, 'S/2004 N 1'),
  (4, 'Proteus'),
  (4, 'Triton'),
  (4, 'Nereid'),
  (4, 'Halimede'),
  (4, 'Sao'),
  (4, 'Laomedeia'),
  (4, 'Psamathe'),
  (4, 'Neso');