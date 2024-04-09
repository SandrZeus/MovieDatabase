INSERT INTO Genres (GenreID, Name)
VALUES
  (1, 'Drama'),
  (2, 'Crime'),
  (3, 'Action'),
  (4, 'Adventure');

INSERT INTO Films (FilmID, Title, ReleaseDate, IMDbRating, GenreID)
VALUES
  (1, 'The Shawshank Redemption', '1994-10-14', 9.3, 1),
  (2, 'The Godfather', '1972-03-24', 9.2, 1),
  (3, 'The Dark Knight', '2008-07-18', 9.0, 3),
  (4, 'The Godfather: Part II', '1974-12-18', 9.0, 1),
  (5, 'Pulp Fiction', '1994-10-14', 8.9, 2),
  (6, 'Schindler''s List', '1993-12-15', 8.9, 1),
  (7, 'The Lord of the Rings: The Return of the King', '2003-12-17', 8.9, 4),
  (8, 'Fight Club', '1999-10-15', 8.8, 2),
  (9, 'Forrest Gump', '1994-07-06', 8.8, 1),
  (10, 'Inception', '2010-07-16', 8.8, 3);

INSERT INTO Actors (ActorID, Name, DOB)
VALUES
  (1, 'Tim Robbins', '1958-10-16'),
  (2, 'Morgan Freeman', '1937-06-01'),
  (3, 'Marlon Brando', '1924-04-03'),
  (4, 'Al Pacino', '1940-04-25'),
  (5, 'Christian Bale', '1974-01-30'),
  (6, 'Heath Ledger', '1979-04-04'),
  (7, 'John Travolta', '1954-02-18'),
  (8, 'Samuel L. Jackson', '1948-12-21'),
  (9, 'Liam Neeson', '1952-06-07'),
  (10, 'Viggo Mortensen', '1958-10-20'),
  (11, 'Tom Hanks', '1956-07-09'),
  (12, 'Leonardo DiCaprio', '1974-11-11');

INSERT INTO Directors (DirectorID, Name)
VALUES
  (1, 'Frank Darabont'),
  (2, 'Francis Ford Coppola'),
  (3, 'Christopher Nolan'),
  (4, 'Quentin Tarantino'),
  (5, 'Steven Spielberg'),
  (6, 'Peter Jackson'),
  (7, 'David Fincher'),
  (8, 'Robert Zemeckis');

INSERT INTO FilmsActors (FilmID, ActorID, Role)
VALUES
  (1, 1, 'Andy Dufresne'),
  (1, 2, 'Ellis Boyd "Red" Redding'),
  (2, 3, 'Vito Corleone'),
  (2, 4, 'Michael Corleone'),
  (3, 5, 'Bruce Wayne / Batman'),
  (3, 6, 'Joker'),
  (4, 3, 'Vito Corleone'),
  (4, 4, 'Michael Corleone'),
  (5, 4, 'Vincent Vega'),
  (5, 7, 'Jules Winnfield'),
  (6, 9, 'Oskar Schindler'),
  (6, 2, 'Itzhak Stern'),
  (7, 10, 'Aragorn'),
  (7, 8, 'Frodo Baggins'),
  (8, 8, 'Tyler Durden'),
  (8, 4, 'Narrator'),
  (9, 11, 'Forrest Gump'),
  (9, 8, 'Lt. Dan Taylor'),
  (10, 12, 'Dominick "Dom" Cobb');

INSERT INTO FilmsDirectors (FilmID, DirectorID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 2),
  (5, 4),
  (6, 5),
  (7, 6),
  (8, 7),
  (9, 5),
  (10, 3);
