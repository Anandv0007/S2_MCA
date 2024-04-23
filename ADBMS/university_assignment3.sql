use university;

desc course;
desc section;
#alter table section add primary key(section_identifier);
desc student;
# 2. QUERIES TO INSERT VALUES IN ALL THE FIVE TABLES
create table grade_report(student_number varchar(11), section_identifier varchar(11), grade varchar(11), primary key(student_number, section_identifier),foreign key(student_number) references student(student_number), foreign key(section_identifier) references section(section_identifier));
desc grade_report;

create table prerequisite(course_number varchar(11),prerequisite_number varchar(11), primary key(course_number, prerequisite_number), foreign key(course_number) references course(course_number), foreign key(prerequisite_number) references course(course_number));
desc prerequisite;

insert into student VALUES('Smith',17, 1, 'CS');
insert into student VALUES('Brown',8, 2, 'CS');

insert into course values('Intro to computer science','CS1310',4,'CS');
insert into course values('Data structures','CS3320',4,'CS');
insert into course values('Discrete Mathemeatics','MATH2410',3,'MATH');
insert into course values('Database','CS3380',3,'CS');

insert into section values(85,'MATH2410','Fall','07','King');
insert into section values(92,'CS1310','Fall','07','Anderson');
insert into section values(102,'CS3320','Spring','08','Knuth');
insert into section values(112,'MATH2410','Fall','08','Chang');
insert into section values(119,'CS1310','Fall','08','Anderson');
insert into section values(135,'CS3380','Fall','08','Stone');

insert into grade_report values(17,112,'B');
insert into grade_report values(17,119,'C');
insert into grade_report values(8,85,'A');
insert into grade_report values(8,92,'A');
insert into grade_report values(8,102,'B');
insert into grade_report values(8,135,'A');

SELECT * FROM grade_report;

insert into prerequisite values('CS3380','CS3320');
insert into prerequisite values('CS3380','MATH2410');
insert into prerequisite values('CS3380','CS1310');

#3.RETRIVE THE LIST OF ALL COURSES AND GRADES OF SMITH
select g.grade,c.course_name from student s inner join grade_report g on s.student_number = g.student_number inner join section se on g.section_identifier = se.section_identifier inner join course c on se.course_number = c.course_number where s.name="Smith";

#4. List the names of students who took the section of the 'Database' course offered in fall 2008 and their grades in that section
select s.name,g.grade from student s inner join grade_report g on s.student_number = g.student_number inner join section se on g.section_identifier=se.section_identifier inner join course c on c.course_number=se.course_number where se.semester='Fall' and se.year='08' and c.course_name="Database";

#5. List the prerequisites of the 'Database' course
select course_name from course where course_number in (select prerequisite_number from prerequisite where course_number=(select course_number from course where course_name='Database'));

#6. Retrieve the names of all the senior students majoring in 'CS' 
select distinct s.name from student s inner join grade_report g on s.student_number=g.student_number inner join section se on se.section_identifier=g.section_identifier where se.year='07' and s.major='CS';

#7. Retrieve the names of all the courses taught by Professor King in 2007 and 2008
select course_name from course c inner join section s on c.course_number=s.course_number where instructor='King' and year in ('07','08');

#8. For each section taught by Professor King,retrieve the course number,semester ,year and number of students who took the section
select s.course_number,s.semester,s.year,count(g.student_number) as No_of_students from section s join grade_report g on s.section_identifier=g.section_identifier where s.instructor="King" group by g.section_identifier; 

#9. Retrieve the names and transcript of each senior student(Class=4) majoring in CS. A transcript includes course name, course number, credit hours, semester ,year and grade for each course completed by the student.
select s.name, c.course_name, c.course_number,se.semester,se.year,g.grade from student s join grade_report g on s.student_number=g.student_number join section se on g.section_identifier=se.section_identifier join course c on se.course_number=c.course_number where s.class=2 and s.major="CS";

#10. A. Insert a new student,<'Johnson',25,1,'Math'>,in the database.
insert into student values("Johnson",25,1, "Math");
select * from student;

#B.change the class of student 'smith' to 2
set sql_safe_updates=0;
update student set class=2 where name="Smith";

#c.insert new course
insert into course values("knowledge engineering","CS4390",3,"CS");
select * from course;

#d.delete record for student with names smith and student number is 17
delete from grade_report where student_number in(select student_number from students where name="Smith");
delete from student where name="Smith" and student_number=17;

select * from student;

desc grade_report;
