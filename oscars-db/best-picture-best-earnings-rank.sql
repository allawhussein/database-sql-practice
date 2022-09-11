SELECT name , earnings_rank
FROM mydb.movie
WHERE earnings_rank = (SELECT min(M.earnings_rank)
FROM mydb.movie as M, mydb.oscar as O
WHERE M.id = O.movie_id and O.type = 'Best-Picture');