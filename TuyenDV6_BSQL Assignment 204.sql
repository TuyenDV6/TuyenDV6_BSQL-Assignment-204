--B?ng Movie
CREATE TABLE Movie(
	MovieName nvarchar(100) NOT null primary key,--t?o khóa chính k null
	Duration datetime check(Duration>'01:00:00'),--th?i lý?ng >1h
	Genre  TINYINT check(Genre between 0 and 8),--th? lo?i trong kho?ng 1-8
	Director nvarchar(50),
	MoneyMovie int,
	Comments nvarchar(200),)



INSERT INTO Movie (MovieName,Duration,Genre,Director,MoneyMovie,Comments)  VALUES (N'chúa nh?n', '1:30:00',6, 'Tuyen', '50', N'hay quá bà con õi' ) 
ALTER TABLE Movie ALTER COLUMN MoneyMovie int
INSERT INTO Movie (MovieName,Duration,Genre,Director,Comments)  VALUES (N'Chi?n tranh', '1:30:00',6, 'Diego Costa','khong hay' )



CREATE TABLE Actor(-- T?o b?ng Actor
	Name nvarchar(100) not null primary key,
	Age TINYINT not null,
	Salary int,
	Nationality varchar(50) not null,)


	INSERT INTO ACTOR VALUES (N'TuyenDV6', 26, '50', N'VN') 
  INSERT INTO ACTOR VALUES (N'TU', 34, '400', N'VN') 
  INSERT INTO ACTOR VALUES (N'Ngokhong', 23, '400', N'VN') 


CREATE TABLE ActedIn(
         nameMovie nvarchar(100) not null , 
		 nameActor nvarchar(100) not null , 
		 FOREIGN KEY (nameMovie) REFERENCES Movie(MovieName) , 
		 FOREIGN KEY (nameActor) REFERENCES ACTOR(Name) ,

 )


 --- thêm trý?ng ImageLink vào b?ng MOVIE 
 ALTER TABLE Movie ADD ImageLink varchar(100) not null unique 
 --- INSERT vào Movie 
   INSERT INTO Movie (MovieName,Duration,Genre,Director,Comments)  VALUES (N'   ', '1:30:00',6, 'Diego Costa','Chua xem' ) 
   INSERT INTO Movie (MovieName,Duration,Genre,Director,Comments)  VALUES (N'@@', '1:30:00',6, 'AMG','k thich xem' ) 
--- update	tên di?n viên 
UPDATE ACTOR 
SET Name = 'Kun '
WHERE age = 33 ; 
--- t?m nhân viên l?n hõn 50 tu?i 
use TuyenDV6
SELECT Name,age, Salary, nationality from ACTOR  where age > 50 ;

--- sap xep 
select * from ACTOR 
ORDER BY Salary 
			