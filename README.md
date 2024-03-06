# IT635_Midterm
Here is my Midterm Deliverables:
I have a database called Movie_Rankings with three tables titled: MOVIE, VIEWER, and RATING.
MOVIE contains a list of movies which have a designated MovieID, Title, and Genre assigned.
VIEWER contains a list of viewer that are designated based on their UserID and other personal information.
RATING have the attributes MovieID and UserID as its foreign keys which referenced MOVIE and VIEWER respectively.
Each tuple in RATING also have a Rating score set based on the combination of UserID and MovieID.

This repository also has a python script which ask the user for both a UserID and MovieID, and returns the MovieTitle plus the Rating
An error may occur depending on what UserId and MovieID you input. This signify that there is no tuple in RATING that has that combination of UserID and MOVIEID.
