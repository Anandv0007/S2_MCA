create database university;
use university;
create table student (rollno int,name varchar(20),age int);
desc student;
insert into student values(17,"anand","22");
select * from student;
alter table student add gender varchar(20)
insert into student (gender) value("male");
update student set gender="male" where rollno=17;
alter table student add primary key (rollno)



