
CREATE DATABASE university;

use university;


CREATE TABLE student(
student_id int(11) not NULL,
student_name varchar(50) not NULL,
primary key(student_id)
);


CREATE TABLE course(
course_id int(11) not NULL,
course_name varchar(50) not NULL,
primary key(course_id)
);


CREATE TABLE student_course(
course_id int(11) not NULL,
student_id int(11) not NULL,
primary key(course_id,student_id),
foreign key(course_id) references course (course_id),
foreign key(student_id) references student (student_id)
);


CREATE TABLE professor(
professor_id int(11) not NULL,
professor_name varchar(50) not NULL,
course_id int(11) not NULL,
primary key(professor_id),
foreign key (course_id) references course(course_id)
);


insert into student values (1,'ahmed');
insert into student(student_name,student_id) values ('mo salah',2);
insert into student values (3,'a');
insert into student values (4,'b');
insert into student values (5,'c');
insert into student values (6,'d');
insert into student values (7,'e');
insert into student values (8,'f');
insert into student values (9,'g');
insert into student values (10,'h');


insert into student values (1,'aziz'); -- !!!! error


insert into course values (1,'OS');
insert into course values (2,'ML');
insert into course values (3,'DB');


insert into student_course values (1,1);
insert into student_course values (1,2);
insert into student_course values (2,3);
insert into student_course values (4,1); -- oops
insert into student_course values (10,2);
insert into student_course values (3,1);
insert into student_course values (4,2);
insert into student_course values (7,1);



insert into professor values (1,'mohammed',2);
insert into professor values (2,'sara',1);
insert into professor values (1,'samir',5); -- oops


delete from student;
delete from course;
delete from professor;
delete from student_course;