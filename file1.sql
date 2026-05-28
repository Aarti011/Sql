Insert into table1 values("kajal");
use db1;
select distinct(name) from table1;
select * from table1 where class between 3 and 50;

select class from table1 group by class;
select class, count(name) from table1 group by class;


select class, avg(class) from table1 group by class order by class;

truncate table table1;
select * from table1;
alter table table1 add marks int;
alter table table1 add studid int;

select * from table1;

Set SQL_SAFE_UPDATES=0;

Insert into table1 
values
("Aryaman Manhotra", 8, 98, 01320807223),
("Shakshi", 8, 96, 01420807223),
("Joshi Manhotra", 8, 88, 01920807223),
("Aanya ", 8, 55, 01520807223),
("kajal", 8, 70, 01120807223),
("khushi jain", 8, 96, 01820807223),
("lily Pandoh", 8, 67, 01220807223);

update table1 set marks=35 where studid=1420807223;

delete from table1 where marks=35;

Alter table table1 add Primary key (studid);

--
  
create table IF NOT EXISTS table2 (
	stdid int,
    grade varchar(5),
    parent_name varchar(30),
    foreign key(stdid) references table1(studid)
    on update cascade
    on delete cascade
);

Insert into table2 
values
(1320807223, "B", "ANKUR SAHU"),
(1920807223, "B", "OMKAAR SINGH SAHU"),
(1520807223, "B", "RUKMINI DEVI"),
(1120807223, "B", "RAM PRASAD"),
(1820807223, "B", "RUKMINI RAO"),
(1220807223, "B", "KANHA KUMAR");

select * from table2;

DROP TABLE IF EXISTS TABLE2 ;

update table1 set studid=520807223 where studid=1520807223;

alter table table2
rename to newtable; 

alter table newtable
add batch int default(8638);

select * from newtable;

alter table newtable
drop column batch;

alter table newtable
modify grade varchar(2) ;
 
--
  
create table t1(
	c1 int,
    c2 int
);
Insert into t1 values (1, 98), (2, 896), (3,897);
Alter table t1 modify c1 INT PRIMARY KEY;

create table t2(
	cc1 int,
    cc2 varchar(10)
);
Insert into t2 values (1, "aalu"), (2, "jar"), (3,"kaanda");
Insert into t1 values(4 , 8665);
Alter table t2 modify cc1 INT PRIMARY KEY;

select * from t1;
select * from t2;

--
 
select * from t1
left join t2
on t1.c1=t2.cc1 
union
select * from t1 
right join t2 
on t1.c1 = t2.cc1;

select * from t1 
left join t2
on t1.c1=t2.cc1
where t2.cc1 is null;

--

create table employee(
	id int,
    name varchar(20),
    managerid int
);
Insert into employee values(102, "Kalyani", null), (103, "tayani", 102), (104, "Rani", 103);
select a.name as employee_name, b.name as manager_name  from employee as a 
join employee as b
on a.id= b.managerid;
