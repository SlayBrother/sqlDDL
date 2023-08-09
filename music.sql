-- Create a table for songs
CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_seconds INT NOT NULL,
  artists TEXT[] NOT NULL
);

-- Create a table for releases
CREATE TABLE releases
(
  id SERIAL PRIMARY KEY,
  album TEXT NOT NULL,
  release_date DATE NOT NULL,
  producers TEXT[]
);

-- Insert data into the songs table
INSERT INTO songs (title, duration_seconds, artists)
VALUES
  ('MMMBop', 238, ARRAY['Hanson']),
  ('Bohemian Rhapsody', 355, ARRAY['Queen']),
  ('One Sweet Day', 282, ARRAY['Mariah Carey', 'Boyz II Men']),
  ('Shallow', 216, ARRAY['Lady Gaga', 'Bradley Cooper']),
  ('How You Remind Me', 223, ARRAY['Nickelback']),
  ('New York State of Mind', 276, ARRAY['Jay Z', 'Alicia Keys']),
  ('Dark Horse', 215, ARRAY['Katy Perry', 'Juicy J']),
  ('Moves Like Jagger', 201, ARRAY['Maroon 5', 'Christina Aguilera']),
  ('Complicated', 244, ARRAY['Avril Lavigne']),
  ('Say My Name', 240, ARRAY['Destiny''s Child']);

-- Insert data into the releases table
INSERT INTO releases (album, release_date, producers)
VALUES
  ('Middle of Nowhere', '1997-04-15', ARRAY['Dust Brothers', 'Stephen Lironi']),
  ('A Night at the Opera', '1975-10-31', ARRAY['Roy Thomas Baker']),
  ('Daydream', '1995-11-14', ARRAY['Walter Afanasieff']),
  ('A Star Is Born', '2018-09-27', ARRAY['Benjamin Rice']),
  ('Silver Side Up', '2001-08-21', ARRAY['Rick Parashar']),
  ('The Blueprint 3', '2009-10-20', ARRAY['Al Shux']),
  ('Prism', '2013-12-17', ARRAY['Max Martin', 'Cirkut']),
  ('Hands All Over', '2011-06-21', ARRAY['Shellback', 'Benny Blanco']),
  ('Let Go', '2002-05-14', ARRAY['The Matrix']),
  ('The Writing''s on the Wall', '1999-11-07', ARRAY['Darkchild']);