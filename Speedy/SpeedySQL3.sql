/*CREATING A DATABASE NAMED AMAZON*/
CREATE DATABASE AMAZON;
USE AMAZON;
DROP TABLE sale_amazon;

/*CREATING A TABLE amazon_books with columns Name, AUthor, UserRating,Reviews,Price,Year Released and Genre*/
CREATE TABLE amazon_books (
    Name VARCHAR(255),
    Author VARCHAR(255),
    UserRating FLOAT,
    Reviews INT,
    Price DECIMAL(10, 2),
    Year INT,
    Genre VARCHAR(255)
);

/*LOADING THE DATA FROM THE CSV FILE Amazon.CSV*/
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Amazon.csv'
INTO TABLE amazon_books
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from amazon_books;

/*CATEGORIZING THE 550 BOOKS TO FICTION AND NON_FICTION*/
select Genre, count(Genre) as Genre_Count
from amazon_books
group by Genre;

/*QUERY TO RETRIEVE THE BOOKS THAT HAVE USERRATING GREATER THAN 4 AND WAS RELEASED IN THE YEAR 2019*/
select * from amazon_books
where UserRating > 4 and Year = 2019;

/*QUERY TO RETRIEVE THE BOOKS THAT HAVE REVIEWS GREATER THAN 10000 AND WAS RELEASED IN THE YEAR 2018*/
select * from amazon_books
where Reviews > 10000 and Year = 2018;

/*QUERY TO RETIEVE THE 50 BEST SELLERS WITH THE NAME, AUTHOR, Year, Reviews*/
select Name, Author, Year, Reviews
from amazon_books
limit 50;

/*GIVEST THE TOTAL NUMBER OF BOOKS WRITTEN BY EACH AUTHOR*/
select Author,count(Author) as Author_Count 
from amazon_books
group by Author;

/*GIVES THE TOTAL NUMBER BOOKS RELEASE IN EACH YEAR*/
select Year,count(Year) as Number_Books_per_Year
from amazon_books
group by Year;

/*THIS QUERY RETRIEVES THE BOOKS THAT HAVE PRICE GREATER THAN 10 and REVIEWS GREATER THAT 10000*/
select * from amazon_books
where Price >= 10 and Reviews > 10000;

/*THIS QUERY RETURNS THE BOOKS THAT HAVE USERRATING LESS THAN 4 AND REVIEWS GREATER THAN 10000*/
select * from amazon_books
where UserRating < 4 and Reviews > 10000;





