Create table country (Id int not null primary key, Country_name varchar(15) not null,
Population int not null,Area dec(10,2) not null );

desc country;

create table Persons(Id int not null primary key,Fname varchar(15) not null ,
Lname varchar(15) not null,Population int not null ,Rating float not null ,
Country_id varchar(5) not null,Country_name varchar(20) );

desc persons;

#Insert 10 rows to Table Country

insert into Country(Id,Country_name,Population,Area)values
(200,'China' , 1400000000 , 9600000 ),
 ( 201,'India', 1400000000,  3300000) ,
( 202,'United States', 335000000 , 9800000 ),
( 203,'Indonesia',  277000 , 1900000 ),
( 204,'Brazil',  215000000 , 8400000),
 (205,'Pakistan',  235000000 , 881913 ),
 (206,'Nigeria', 2180000 , 923768 ),
  (207,'Bangladesh',  8000000 , 148571) ,
 (208,'Russia',  144000000 , 17125191 ),
(209,' Australia', 260000,  7692024 );

select * from country;

insert into persons(Id,Fname,Lname,Population,Rating,Country_id,Country_name)values
(1 ,'John', 'Doe', 1000000 , 4.5 ,'US' ,'USA'),
( 2 ,'Jane', 'Smith',  500000 , 3.8 , 'CA', 'Canada' ),
( 3 ,'Michael', 'Johnson', 800000, 4.2 ,' AU','Australia' ),
(4,'Emily', 'Davis' ,700000,  4.0 , 'BR ', NULL),
( 5  ,'Ethan ','Lee',900000 , 4.7,  'CN  ','China '),
( 6,'Olivia',  'Martinez' ,600000,3.9,'FR',NULL), 
 (7 ,'Ava','Williams' ,1200000,4.8,'UK','UK'),
(8,'Sophia','Alex' , 400000 , 3.7,'IN', 'India'),
(9,'Isabella','Jones', 1500000 , 4.9,'JP', 'Japan'),
( 10 ,'Liam', 'Miller',  300000  ,3.6,'MX','Mexico');

SELECT * FROM PERSONS;

-- (1)List the distinct country names from the Persons 
SELECT  DISTINCT Country_name FROM PERSONS;

 -- (2)Select first names and last names from the Persons table with aliases.
Select Fname AS First_names,Lname as Last_names from persons;
 
-- (3)Find all persons with a rating greater than 4.0
select * from persons where rating>4.0;


  -- (4)Find countries with a population greater than 10 lakhs. 
 select Country_name,Population from country  where Population>1000000;
 
 
 -- (5)Find persons who are from 'USA' or have a rating greater than 4.5. 
 select Fname,Lname,Rating from persons where Country_name='USA' OR Rating>4.5;
 
 -- (6)Find all persons where the country name is NULL.
 SELECT * FROM  persons where Country_name is NULL;
 
 -- (7)Find all persons from the countries 'USA', 'Canada', and 'UK'.
 Select * from persons  where Country_name in ('USA','Canada','UK');
 
-- (8)Find all persons not from the countries 'India' and 'Australia'.
 Select * from persons  where Country_name  NOT in ('India','Australia');

-- (9)Find all countries with a population between 5 lakhs and 20 lakhs. 
select * from country where Population between 500000 and 2000000; 

  -- (10)Find all countries whose names do not start with 'C'.
  select * from COUNTRY where Country_name NOT like 'c%';
