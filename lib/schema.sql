CREATE TABLE characters (
  id  INTEGER PRIMARY KEY,
  name VARCHAR(255),
  motto VARCHAR(255),
  species TEXT,
  author_id INTEGER,
  series_id INTEGER);

CREATE TABLE books (
  id  INTEGER PRIMARY KEY,
  title VARCHAR(255),
  year INTEGER,
  series_id INTEGER
);

CREATE TABLE series (
  id  INTEGER PRIMARY KEY,
  title VARCHAR(255),
  author_id INTEGER,
  subgenre_id INTEGER
);

CREATE TABLE authors (
  id  INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE subgenres (
  id  INTEGER PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE character_books (
  id  INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER
);
