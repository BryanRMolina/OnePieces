--create database onePiece;
--use onePiece;
----- - - - - - - - ---

--create table tablemain (

--	id_Person int not null,
--	image_Character varbinary(max),
--	name_Character nvarchar(30),
--	ocupation_Character nvarchar(30),
--	alliance_Character nvarchar(30),
--	origin_Chracter nvarchar(30),
--	age_Character int,
--	food_Name nvarchar(30),
--	food_Power nvarchar(30),
--	bounties_Character nvarchar(30),
--	status_Character bit,

--	constraint PK_id_Person primary key (id_Person)
--);

--alter table tablemain drop column image_Character;
--alter table tablemain add image_Character image null;

BULK INSERT tablemain
FROM 'C:\Users\BryanRoa\Desktop\OnePiece.txt'
WITH
(
 FIRSTROW = 2, -- As the actual first row has header
 FIELDTERMINATOR =',',
 ROWTERMINATOR ='\n'
);