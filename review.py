import psycopg2

conn = psycopg2.connect("postgresql://reviewer:testing@localhost/movie_rankings")
cur = conn.cursor()

while True:
    print("Please enter User ID (1-943)")
    user_id = int(input())
    print("Please enter Movie ID (1-1682)")
    movie_id = int(input())

    cur.execute("""
        SELECT MOVIE.MovieTitle, RATING.Rating FROM MOVIE
        JOIN RATING ON MOVIE.MovieID = RATING.MovieID
        WHERE RATING.UserID= %s and RATING.MovieID= %s;
    """, (user_id, movie_id));
    review_id = cur.fetchone()
    print(f"Title and Review score: {review_id}")
    conn.commit()

cur.close()
conn.close()
