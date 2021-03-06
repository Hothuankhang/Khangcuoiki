CREATE DATABASE HoThiTuyetDBCK

USE HoThiTuyetDBCK
CREATE TABLE AdminAccount
(
	ID int IDENTITY(1,1) primary key,
	UserName  char(50) NOT NULL,
	PassWord char(100) NOT NULL,
	Status varchar(100)
)
drop table UserAccount

CREATE TABLE UserAccount
(
	ID int IDENTITY(1,1) primary key,
	UserName  char(50) NOT NULL,
	PassWord char(100) NOT NULL,
	Status varchar(100)
)

insert into UserAccount(UserName,PassWord,Status)
values('thuankhang','Khang2511@','Active'),('bichphuong','doanhdoanduoc','Active'),
('bichtra','bichtra123','Active'),('tuankha','tuankha997','Active'),
('hoang','hoangdai','Active')

CREATE TABLE Category
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(200) NOT NULL,
	Description nvarchar(200)
)
insert into Category(Name,Description)
values(N'Laptop',N'Hàng Chất Lượng cao')

CREATE TABLE Product
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(200) NOT NULL,
	UnitCost decimal(10,2),
	Quantity INT not null,
	Image varchar(200),
	Description nvarchar(200),
	Status int,
	IDCategory int foreign key references Category(ID)
)
select * from Product
insert into Product(Name,UnitCost,Quantity,Image,Description,Status,IDCategory)
values('asus',10000000,1,'asus.png','Hàng Mới Về',1,1),('dell',5000000,1,'dell.png','Hàng 2nd',1,1),('hp',9000000,1,'hp.png','Hàng Mới Về',1,1)