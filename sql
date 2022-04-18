
create database [Учет_сделок_с_недвижимостью]
go
use [Учет_сделок_с_недвижимостью]
go 
create table [Квартиры](
[Код_квартиры] int primary key,
[Название_улицы] varchar (50),
[Номер_дома] int,
[Номер_квартиры] int,
[Площадь] varchar (10),
[Кол-во_комнат] int,
[Стоимость] money,
[ФИО_продавца] varchar (80))
go
create table [Риэлторы](
[Код_рифлтора] int primary key,
[ФИО] varchar (80),
[Процент] int)
go
create table [Покупатели](
[Код_покупателя] int primary key,
[ФИО] varchar (100),
[Паспорт] varchar (10))
go
create table [Сделки](
[Код_сделки] int primary key,
[Код_риэлтора] int foreign key references [Риэлторы]([Код_рифлтора]),
[Код_квартиры] int foreign key references [Квартиры]([Код_квартиры]),
[Код_покупателя] int foreign key references [Покупатели]([Код_покупателя]),
[Дата_сделки] date )
