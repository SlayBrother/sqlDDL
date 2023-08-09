-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  airline TEXT NOT NULL,
);

CREATE TABLE flight_times
(
  id SERIAL PRIMARY KEY,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
)

CREATE TABLE location
(
  id SERIAL PRIMARY KEY,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
)

INSERT INTO tickets
  (first_name, last_name, seat, airline)
VALUES
  ('Jennifer', 'Finch', '33B', 'United'),
  ('Thadeus', 'Gathercoal', '8A', 'British Airways'),
  ('Sonja', 'Pauley', '12F', 'Delta'),
  ('Jennifer', 'Finch', '20A', 'Delta'),
  ('Waneta', 'Skeleton', '23D', 'TUI Fly Belgium'),
  ('Thadeus', 'Gathercoal', '18C', 'Air China'),
  ('Berkie', 'Wycliff', '9E', 'United'),
  ('Alvin', 'Leathes', '1A', 'American Airlines'),
  ('Berkie', 'Wycliff', '32B', 'American Airlines'),
  ('Cory', 'Squibbes', '10D', 'Avianca Brasil');

INSERT INTO flight_times 
  (departure, arrival)
VALUES
  ('2018-04-08 09:00:00', '2018-04-08 12:00:00'),
  ('2018-12-19 12:45:00', '2018-12-19 16:15:00'),
  ('2018-01-02 07:00:00', '2018-01-02 08:03:00'),
  ('2018-04-15 16:50:00', '2018-04-15 21:00:00'),
  ('2018-08-01 18:30:00', '2018-08-01 21:50:00'),
  ('2018-10-31 01:15:00', '2018-10-31 12:55:00'),
  ('2019-02-06 06:00:00', '2019-02-06 07:47:00'),
  ('2018-12-22 14:42:00', '2018-12-22 15:56:00'),
  ('2019-02-06 16:28:00', '2019-02-06 19:18:00'),
  ('2019-01-20 19:30:00', '2019-01-20 22:45:00');

INSERT INTO location
  (from_city, from_country, to_city, to_country)
VALUES
  ('Washington DC', 'United States', 'Seattle', 'United States'),
  ('Tokyo', 'Japan', 'London', 'United Kingdom'),
  ('Los Angeles', 'United States', 'Las Vegas', 'United States'),
  ('Seattle', 'United States', 'Mexico City', 'Mexico'),
  ('Paris', 'France', 'Casablanca', 'Morocco'),
  ('Dubai', 'UAE', 'Beijing', 'China'),
  ('New York', 'United States', 'Charlotte', 'United States'),
  ('Cedar Rapids', 'United States', 'Chicago', 'United States'),
  ('Charlotte', 'United States', 'New Orleans', 'United States'),
  ('Sao Paolo', 'Brazil', 'Santiago', 'Chile');