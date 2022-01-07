create database if not exists training;
use training;
DROP table if exists demography;
create table demography(
	CustId int auto_increment primary key,
    Full_Name varchar(255),
    Age int,
    Gender varchar(1)
);
insert into demography(Full_Name,Age,Gender) Values ('john',25,'M');
insert into demography(Full_Name,Age,Gender) Values ('Pawan',26,'M');
insert into demography(Full_Name,Age,Gender) Values ('Hema',31,'F');
insert into demography(Full_name,Gender) values ('Rekha','F');
SET SQL_SAFE_UPDATES = 0;
UPDATE demography
SET Age=null
WHERE Full_name='john';
SET SQL_SAFE_UPDATES = 1;
select * from demography
WHERE Age is null;
# for deleting 
Delete from demography;
