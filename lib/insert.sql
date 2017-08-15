INSERT INTO series (title) VALUES
("book1"),
("book2");

INSERT INTO subgenres (name) VALUES
("humor"),
("humes");
--
INSERT INTO authors (name) VALUES
("Marlon Merjos"),
("George RR Martin");

INSERT INTO books (title, series_id, id) VALUES
("book1", 1, 1),
("book2", 1, 2),
("book3", 1, 3),
("book1", 2, 4),
("book2", 2, 5),
("book3", 2, 6);

INSERT INTO characters (name, series_id, id) VALUES
("character1", 1, 1),
("character2", 1, 2),
("character3", 1, 3),
("character4", 1, 4),
("character1", 2, 5),
("character2", 2, 6),
("character3", 2, 7),
("character4", 2, 8);

INSERT INTO character_books (book_id, character_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 4),
(4, 5),
(5, 5),
(6, 5),
(4, 6),
(5, 6),
(6, 6),
(4, 7),
(6, 8);
-- 2 series
-- 2 sub-genres
-- 2 authors
-- 3 books in each series
-- 8 characters
-- 4 characters in each series
-- of each of those 4, make 2 in all of the books in a series, and 2 in just 1 book in a series
-- Note you will need to insert values into your character_books join table
-- Feel free to make these up if you don't know any Fantasy series :)
