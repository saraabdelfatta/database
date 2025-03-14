CREATE DATABASE Academy_Awards;

USE Academy_Awards;

CREATE TABLE people(
F_Name varchar(255) not NULL,
M_Name varchar(255) not NULL,
L_Name varchar(255) not NULL,
Birth_day DATE not NULL,

country_of_Birth varchar(255),
Death_Date DATE,

primary key(F_Name,M_Name,L_Name,Birth_day)
);



CREATE TABLE Movie(
Movie_Name varchar(255) not NULL,
Release_Date DATE not NULL,
Category varchar(255) not NULL,

language varchar(255),
Production_Company varchar(255) not NULL,
reun_time INT(255),


Actress_FN varchar(255) not NULL,
Actress_MN varchar(255) not NULL,
Actress_LN varchar(255) not NULL,

Director_FN varchar(255) not NULL,
Director_MN varchar(255) not NULL,
Director_LN varchar(255) not NULL,

Producers_FN varchar(255) not NULL,
Producers_MN varchar(255) not NULL,
Producers_LN varchar(255) not NULL,

primary key ( Movie_Name, Release_Date, Category),
foreign key(Actress_FN,Actress_MN,Actress_LN)references people(F_Name,M_Name,L_Name),
foreign key(Director_FN,Director_MN,Director_LN)references people(F_Name,M_Name,L_Name),
foreign key(Producers_FN,Producers_MN,Producers_LN)references people(F_Name,M_Name,L_Name)


);

ALTER TABLE Movie
ADD CONSTRAINT unique_movie_name_category UNIQUE (Movie_Name, Category);

create table user(
Email_Adrewss varchar(255) not NULL,
user_same varchar(255) not NULL,

movie_name varchar(255) not NULL,
movie_category varchar(255) not NULL,

gender VARCHAR(50),
country VARCHAR(255),
age INT,
birthdate DATE,

primary key(Email_Adrewss,user_same),
foreign key(movie_name,movie_category)references Movie(Movie_Name,Category)

);


CREATE TABLE Nomination(
nominated_movie varchar(255) not NULL,
nomination_category varchar(255) not NULL,
won BOOLEAN,


nominated_staff_member_f varchar(255),
nominated_staff_member_M varchar(255),
nominated_staff_member_L varchar(255),

primary key(nominated_movie,nomination_category),
foreign key(nominated_movie,nomination_category)references user(movie_name,movie_category),
foreign key(nominated_staff_member_f,nominated_staff_member_M,nominated_staff_member_L)references people(F_Name,M_Name,L_Name)

);


