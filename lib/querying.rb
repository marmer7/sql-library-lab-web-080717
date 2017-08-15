def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
  SELECT title, year from books
  WHERE series_id = 1
  ORDER BY year;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
  SELECT name, motto from characters
  ORDER BY length(motto) DESC
  LIMIT 1;
  SQL
end


def select_value_and_count_of_most_prolific_species
  <<-SQL
  SELECT species, count(*) as count FROM characters
  GROUP BY species
  ORDER BY count DESC
  LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name FROM authors
    INNER JOIN series
    ON authors.id = series.author_id
    INNER JOIN subgenres
    ON series.subgenre_id = subgenres.id;
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
    SELECT title FROM series S
    INNER JOIN (SELECT count(*) as count, series_id FROM characters
    WHERE species = "human"
    GROUP BY series_id
    ORDER BY count DESC
    LIMIT 1) C
    ON S.id = C.series_id

  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT name, count(book_id) as book_count
    FROM characters
    INNER JOIN character_books
    ON characters.id = character_books.character_id
    GROUP BY name
    ORDER BY book_count DESC;
  SQL
end
