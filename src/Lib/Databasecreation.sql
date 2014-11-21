GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP ON trail.* TO 'root'@'localhost' IDENTIFIED BY 'password';
create database Trail;
use Trail;


create table books
( title   varchar(50) not null,
  author varchar(50) not null,
  publisher varchar(50) ,
  topic  varchar(30) ,
  price float 
);

INSERT INTO books 
  VALUES ("MySQL", "Paul DuBois", "New Riders", "MySQL", 
          "Excellent book, but doesn't cover Java API", 49.99);


INSERT INTO books
  VALUES ("Beginning XML", "David Hunter", "Wrox", "XML",
          "Well recommended", 39.99);

INSERT INTO books 
  VALUES ("Java How to Program", "Paul Deitel", "Prentice Hall", "Java",
          "Good textbook, extremely detailed", 68.00);

INSERT INTO books
  VALUES ("Thinking in Java", "Bruce Eckel", "Prentice Hall", "Java",
          "Well written, free on the web", 0.00); 

INSERT INTO books
  VALUES ("The Java Programming Language", "Ken Arnold", "Addison Wesley", "Java",
          "Considered to be from the source", 37.95);

INSERT INTO books
  VALUES ("Learning Perl", "Randal Schwartz", "O'Reilly", "Perl",
          "Not a bad start", 29.95);

INSERT INTO books
  VALUES ("Programming Perl", "Larry Wall", "O'Reilly", "Perl",
          "Usually considered THE reference", 44.95);

INSERT INTO books
  VALUES ("Effective Perl ", "Joseph Hall", "Addison Wesley", "Perl",
          "Great tips, not for beginners", 34.95);

create table employee(
    employeeid varchar(16) not null primary key,
    name varchar(64),
    managerid varchar(16)
    );

insert into employee values("emp-1","Dilbert","emp-3");
insert into employee values("","Wally","emp-3");
insert into employee values("emp-3","Pointy Hair Manager","emp-4");
insert into employee values("emp-4","Dogbert","");
insert into employee values("5","Alice","emp-3");
insert into employee values("emp-6","Catbert","emp-4");
Select * from books;
select * from employee