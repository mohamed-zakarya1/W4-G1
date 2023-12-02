create database bookstore ;
use bookstore
--------------------------------------------------
create table author (
author_id int primary key not null,
author_name varchar(500) not null,
nationality varchar(500) not null,
); 
-----------------------------------------------------
create table genre (
gener_id int primary key not null,
genre_name varchar (500) not null,
);
---------------------------------------------------------
create table book(
book_id int primary key not null,
title varchar (50) not null,
author_id int foreign key references author (author_id),
genre_id int foreign key references  genre (gener_id ),
price int not null,
publication_year date not null,
);
------------------------------------------------------
create table customer (
customer_id int primary key not null ,
first_name varchar(50) not null,
list_name varchar(50) not null,
email varchar (50) not null,
costomer_address varchar(500) not null,
);
-------------------------------------------------------
create table order1(
order_id int primary key not null,
cutomer_id int foreign key references customer(customer_id),
book_id int foreign key references book(book_id),
order_date date not null,
quantity int not null,
);
---------------------------------------------------------
insert into author values ( 1,'john smith','USA')
insert into author values ( 2,'jahe johnson','UK')
insert into author values ( 3,'robert','canade')
insert into author values ( 4,'bertus','us')
insert into author values ( 5,'patrica','norway')
insert into author values ( 6,'hans','us')
insert into author values ( 7,'verne','us')
insert into author values ( 8,'david','us')
insert into author values ( 9,'jahe aaron','wales')
insert into author values ( 10,'jonathan','us')
insert into author values ( 11,'soazig ','france')
insert into author values ( 12,'aarudhra','india')
insert into author values ( 13,'rafael','spain')
insert into author values ( 14,'chris','us')
insert into author values ( 15,'ferhat','algeria')
insert into author values ( 16,'england','sudan')
insert into author values ( 17,'irakil','ussr')
insert into author values ( 18,'fekry','egypt')
insert into author values ( 19,'camine','italy')
insert into author values ( 20,'sait','turkey')
select * from author
---------------------------------------------------
insert into genre values ( 1,'fiction')
insert into genre values ( 2,'mystery')
insert into genre values ( 3,'romance')
insert into genre values ( 4,'Action and Adventure Fiction')
insert into genre values ( 5,'Classic Fiction')
insert into genre values ( 6,'Contemporary Fiction')
insert into genre values ( 7,'Dystopian Fiction')
insert into genre values ( 8,'Fantasy Fiction')
insert into genre values ( 9,'Graphic Novel')
insert into genre values ( 10,'Historical Fiction')
insert into genre values ( 11,'Horror Fiction ')
insert into genre values ( 12,'LGBTQ+ Fiction')
insert into genre values ( 13,'Literary Fiction')
insert into genre values ( 14,'Satire Fiction')
insert into genre values ( 15,'Science Fiction')
insert into genre values ( 16,'Short Story')
insert into genre values ( 17,'Thriller Fiction')
insert into genre values ( 18,'Utopian Fiction')
insert into genre values ( 19,'Western Fiction')
insert into genre values ( 20,'Women’s Fiction')
select * from genre
---------------------------------------------------------
insert into book values ( 1,'book1',1,1,20,'2010')
insert into book values ( 2,'book2',2,2,18,'2015-5-4')
insert into book values ( 3,'book3',8,5,182,'2018-7-9')
insert into book values ( 4,'book4',9,8,166,'2019-9-4')
insert into book values ( 5,'book5',12,15,188,'2017-8-21')
insert into book values ( 6,'book6',17,19,15,'1999-7-19')
insert into book values ( 7,'book7',20,8,187,'2000-2-28')
insert into book values ( 8,'book8',3,6,152,'2001-1-8')
insert into book values ( 9,'book9',7,4,178,'2008-9-5')
insert into book values ( 10,'book10',18,17,168,'2007-8-7')
insert into book values ( 11,'book11',13,14,25,'2009-1-9')
insert into book values ( 12,'book12',15,15,57,'2007-8-21')
insert into book values ( 13,'book13',16,3,28,'2000-8-7')
insert into book values ( 14,'book14',6,6,87,'2009-2-22')
insert into book values ( 15,'book15',9,5,15,'1900-8-2')
insert into book values ( 16,'book16',20,19,17,'1922-9-7')
insert into book values ( 17,'book17',18,17,54,'2222-2-2')
insert into book values ( 18,'book18',4,11,65,'1202-8-7')
insert into book values ( 19,'book19',11,12,65,'6547-7-9')
insert into book values ( 20,'book20',14,4,68,'8888-8-8')
insert into book values ( 22,'book22',14,4,68,'8888-8-8')
insert into book values ( 23,'book23',13,4,68,'8888-8-8')
insert into book values ( 24,'book24',14,4,68,'8888-8-8')
insert into book values ( 25,'book25',14,4,68,'8888-8-8')
insert into book values ( 26,'book26',14,4,68,'8888-8-8')
insert into book values ( 21,'book22',14,4,68,'8888-8-8')


select * from book
---------------------------------------------------------------------------------------
insert into customer values ( 1,'loey','yoosry','loeyyossry82@gmail.com','6th  octobar')
insert into customer values( 2,'adham ','yoosry','adham.0522043@gmail.com','6th  octobar')
insert into customer values ( 3,'noor','el3en','noorel3en@gmail.com','	Cairo')
insert into customer values( 4,'mohamed','zakaria','mohamedzakaria@gmail.com','	Alexandria')
insert into customer values ( 5,'dana','hazem','danahazem@gmail.com','Gize')
insert into customer values ( 6,'youssef','aboadam','youssef82@gmail.com','Shubra El-Kheima')
insert into customer values ( 7,'alice','johnoson','alicejohnoson@gmail.com','Port Said')
insert into customer values ( 8,'bob','smith','bobamith@gmail.com','Suez')
insert into customer values ( 9,'sara','Mohamed','sara57@gmail.com','Luxor')
insert into customer values ( 10,'Omar','Amr','OmarAmr@gmail.com','al-Mansura')
insert into customer values ( 11,'jana','muhammad','janamuhammad@gmail.com','	El-Mahalla El-Kubra')
insert into customer values ( 12,'mostafa','Ahmad','mostafaAhmad@gmail.com','	Tanta')
insert into customer values ( 13,'Ahmad','mido','loeyyossry82@gmail.com','	Asyut')
insert into customer values ( 14,'Eslam','yoosry','Eslamyossry82@gmail.com','	Ismailia')
insert into customer values ( 15,'Shahd','Miro','ShahdMiro@gmail.com','	Fayyum')
insert into customer values ( 16,'Abdallah','Khaled','AbdallahKhaled@gmail.com','	Zagazig')
insert into customer values ( 17,'Kareem','Ayman','KareemAyman@gmail.com','	Aswan')
insert into customer values ( 18,'Hussein','osama','Husseinosama@gmail.com','Gizeh')
insert into customer values ( 19,'Aly','Tarek','AlyTarekgmail.com','.	Port Said')
insert into customer values ( 20,'Zainab','	daniel','Zainabdaniel@gmail.com','Shubra El-Kheima')
select * from customer
-------------------------------------------------------------------------------------------
insert into order1 values ( 1,1,1,'2010',20)
insert into order1 values ( 2,2,2,'2015-5-4',9)
insert into order1 values ( 3,8,5,'2018-7-9',8)
insert into order1 values ( 4,9,8,'2019-9-4',16)
insert into order1 values ( 5,12,15,'2017-8-21',8)
insert into order1 values ( 6,17,19,'1999-7-19',2)
insert into order1 values ( 7,20,8,'2000-2-28',2)
insert into order1 values ( 8,3,6,'2001-1-8',9)
insert into order1 values ( 9,7,4,'2008-9-5',6)
insert into order1 values ( 10,18,17,'2007-8-7',48)
insert into order1 values ( 11,13,14,'2009-1-9',7)
insert into order1 values ( 12,15,15,'2007-8-21',2)
insert into order1 values ( 13,16,3,'2000-8-7',18)
insert into order1 values ( 14,6,6,'2009-2-22',48)
insert into order1 values ( 15,9,5,'1900-8-2',15)
insert into order1 values ( 16,20,19,'1922-9-7',7)
insert into order1 values ( 17,18,17,'2222-2-2',3)
insert into order1 values ( 18,4,11,'1202-8-7',13)
insert into order1 values ( 19,11,12,'6547-7-9',18)
insert into order1 values ( 20,14,4,'8888-8-8',8)
select * from order1
--------------------------------***QUERIES***-----------------------------------------------
--------------------------------------------------------------------------------------------1
select book.* from book join genre on book.genre_id = genre.gener_id 
where genre.genre_name = 'mystery'
--------------------------------------------------------------------------------------------2
select customer.first_name , customer.list_name , SUM(order1.quantity) as 'totalQuantity' from customer
join order1 on customer.customer_id = order1.cutomer_id
group by customer.first_name , customer.list_name
--------------------------------------------------------------------------------------------3
select author_name , nationality from author
--------------------------------------------------------------------------------------------4
select AVG (ISNULL(book.price , 0)) as AveragePrice from book
where publication_year = '2020'
--------------------------------------------------------------------------------------------5
select book.* , customer.first_name , customer.list_name as lastName from order1 join
book on order1.book_id = book.book_id 
join customer on customer.customer_id = order1.cutomer_id order by book.book_id asc
--------------------------------------------------------------------------------------------6
select COUNT(*) as number_of_books_in_each_genre  from book 
join genre on book.genre_id = genre.gener_id
--------------------------------------------------------------------------------------------7
select customer.first_name , customer.customer_id from customer join order1 on 
order1.cutomer_id = customer.customer_id
group by customer.first_name , customer.customer_id
having COUNT(customer.customer_id) >= 5
--------------------------------------------------------------------------------------------8
select * from book where price > (select AVG(price) from book)
--------------------------------------------------------------------------------------------9
select * from customer where customer.costomer_address = '6th  octobar'
--------------------------------------------------------------------------------------------10
select * from book join order1 on book.book_id = order1.book_id 
order by book.publication_year desc
-----------------------------------------------------------------------------------------------------------------11
select * from author join book on book.author_id = author.author_id join genre on genre.gener_id = book.genre_id
where genre.genre_name = 'fiction'
---------------------------------------------------------------------------------------------------12
select customer.* , book.book_id , book.title from order1 join
book on order1.book_id = book.book_id 
join customer on customer.customer_id = order1.cutomer_id order by customer.customer_id
---------------------------------------------------------------------------------------------------13
select book.* , author.author_name from book join author on book.author_id = author.author_id 
---------------------------------------------------------------------------------------------------14
select order1.order_id , customer.first_name , customer.list_name as 'last Name' from order1
join customer on customer.customer_id = order1.cutomer_id where order1.order_date = '2023/10/25'
---------------------------------------------------------------------------------------------------15
select MAX(genre.gener_id) as 'highest number of books' , genre.genre_name from genre 
join book on book.genre_id = genre.gener_id group by genre.genre_name
-------------------------------------------------------------------------------------------------------------------------------------16
select MAX(order1.quantity) as'total order quantities' ,  customer.customer_id , customer.first_name  from order1 
join customer on customer.customer_id = order1.cutomer_id group by customer.first_name , customer.customer_id
-------------------------------------------------------------------------------------------------------------------------------------17
select distinct * from book where book.publication_year < '2000'
-------------------------------------------------------------------------------------------------------------------------------------18
select * from customer join order1 on order1.cutomer_id = customer.customer_id join book on order1.book_id = book.book_id 
where book.price > 100
-------------------------------------------------------------------------------------------------------------------------------------19
select book.* , genre.genre_name from book join genre on genre.gener_id = book.genre_id
-------------------------------------------------------------------------------------------------------------------------------------20
select customer.first_name , customer.list_name, author.author_name from customer join order1 on order1.cutomer_id = customer.customer_id join
book on book.book_id = order1.book_id join author on author.author_id = book.author_id
-------------------------------------------------------------------------------------------------------------------------------------21
select * from book where book.title like '%Harry%'
-----------------------------------------------------------------------------------22
select * from book where genre_id in (1 , 20);
-----------------------------------------------------------------------------------23
select * from book where publication_year between '2000' and '2010'
-----------------------------------------------------------------------------------24
select * from book where price = (select MIN(book.price) from book)
---------------------------------------**The End***----------------------------------------------------------------------------
select * from genre
select * from book
select * from customer
select * from order1
select * from author
