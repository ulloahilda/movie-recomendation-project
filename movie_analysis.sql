-- Movie SQL Analysis Project by Hilda Ulloa
-- Goal: Analyze movie ratings and trends using SQL

-- 1. Preview the movies table
SELECT * FROM movies LIMIT 5;

-- 2. Preview the ratings table
SELECT * FROM ratings LIMIT 5;

-- 3. Join ratings and movies to see actual movie titles and their ratings
SELECT 
    r.userId,
    r.movieId,
    m.title,
    r.rating,
    r.timestamp
FROM ratings r
JOIN movies m ON r.movieId = m.movieId
LIMIT 10;

-- 4. Find the average rating for each movie
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.rating) AS num_ratings
FROM ratings r
JOIN movies m ON r.movieId = m.movieId
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 20;

-- 5. Find the most rated movies
SELECT 
    m.title,
    COUNT(r.rating) AS rating_count
FROM ratings r
JOIN movies m ON r.movieId = m.movieId
GROUP BY m.title
ORDER BY rating_count DESC
LIMIT 20;




