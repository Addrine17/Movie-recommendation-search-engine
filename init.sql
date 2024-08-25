CREATE DATABASE movie_recommendations;

USE movie_recommendations;

CREATE TABLE MovieData (
    ID int NOT NULL AUTO_INCREMENT,
    Release_Date int(5),
    Movie_Title varchar(255),
    Genre varchar(255),
    Avg_Rating decimal(4,2),
    Poster_URL varchar(255),
    PRIMARY KEY (ID)
);

INSERT INTO MovieData (Release_Date, Movie_Title, Genre, Avg_Rating, Poster_URL) VALUES
(2014, 'The Conjuring', 'Horror', 8.5, 'posters/conjuring.jpg'),
(2002, 'Babys day out', 'Comedy', 8.3, 'posters/babys_day_out.jpg'),
(1978, 'Pride and Prejudice', 'Romance', 9.4, 'posters/pride_and_prejudice.jpg'),
(2013, 'Interstellar', 'Sci-fi', 9.2, 'posters/interstellar.jpg'),
(1993, 'John Wick 2', 'Action', 8.1, 'posters/john_wick2.jpg'),
(1992, 'Love is in the Air', 'Romance', 7.1, 'posters/love_is_in_the_air.jpg'),
(2023, 'Thanksgiving', 'Horror', 6.2, 'posters/thanksgiving.jpg'),
(2013, 'Carrie', 'Thriller', 7.5, 'posters/carrie.jpg'),
(2021, 'King of comedy', 'Comedy', 6.0, 'posters/king_of_comedy.jpg'),
(1997, 'Titanic', 'Romance', 9.1, 'posters/titanic.jpg'),
(2010, 'The Avengers', 'Action', 8.8, 'posters/avengers.jpg'),
(2000, 'The Exorcist', 'Horror', 7.7, 'posters/exorcist.jpg'),
(1988, 'The Chase', 'Action', 4.9, 'posters/chase.jpg'),
(2010, 'Avatar', 'Sci-fi', 9.2, 'posters/avatar.jpg'),
(2001, 'Shutter Island', 'Thriller', 9.6, 'posters/shutter_island.jpg');