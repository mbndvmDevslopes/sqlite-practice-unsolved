pragma foreign_keys = ON;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Dogs;
DROP TABLE IF EXISTS Dogs_Users;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS dogs;
DROP TABLE IF EXISTS dogs_users;
DROP TABLE IF EXISTS favorites;

CREATE TABLE users(id integer Primary Key AUTOINCREMENT, 
first_name text not null, 
last_name text not null, 
motto text) ;
 insert into users (first_name, last_name, motto) values('Jon' , 'Higgz' , 'I love coding');


insert into users (first_name, last_name, motto) values('Andrey','Rusterton',
'I love coding even more');

insert into users (first_name, last_name, motto) values('Peter','Garboni',
'I love coding even more') ; 

CREATE TABLE dogs(id integer Primary Key AUTOINCREMENT, name text not null);
insert into dogs (name) values('DOOMSLAYER');
INSERT INTO   dogs (name) VALUES ('Zoey');
INSERT INTO   dogs (name) VALUES ('Jefferey');

CREATE TABLE Favorites (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    dog_id INTEGER, 
    user_id INTEGER,
    FOREIGN KEY(dog_id) REFERENCES Dogs(id),
    FOREIGN KEY(user_id) REFERENCES Users(id),
    UNIQUE(dog_id, user_id)
);

insert into favorites (dog_id, user_id) values(1,3);
insert into favorites (dog_id, user_id) values(1,1);
insert into favorites (dog_id, user_id) values(1,2);
insert into favorites (dog_id, user_id) values(3,1);
insert into favorites (dog_id, user_id) values(2,2);



