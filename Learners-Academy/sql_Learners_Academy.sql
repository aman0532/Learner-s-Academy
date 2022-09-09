create database Learners_Academy;
use learners_academy;
create table student(sid int, sname varchar(20) primary key,saddress varchar(20),
scontact int, class varchar(20));
select *from student;
create table teacher(tid int, tname varchar(20) primary key,taddress varchar(20),
tcontact int, tdesig varchar(20));
select *from teacher;

create table subject(subid int,subname varchar(20) primary key);
select* from subject;

create table classes (clsid int primary key,classname varchar(20));
select *from classes;

create table subteach(sno int,subname varchar(20), foreign key(subname) references subject(subname),tname varchar(20),foreign key(tname) references teacher(tname));
select *from subteach;
create table classreport(cno int,sname varchar(20),foreign key(sname) references student(sname),tname varchar(20),foreign key(tname) references teacher(tname));

select *from classreport;
