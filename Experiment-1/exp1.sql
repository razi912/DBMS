create table Student(sID int,sNAME varchar2(10),GPA number(2,1),sizeHS int,DoB date)

select * from student

insert into student(sId,sNAME,GPA,sizeHS,DoB)
values(123,'Amy', 3.9 ,1000, '26-JUN-96' ),
(234,'Bob',3.6,1500,'7-Apr-95'),
(345,'Craig',3.5,500,'4-Feb-95'),
(456,'Doris',3.9,1000,'24-Jul-97'),
(567,'Edward',2.9,2000,'21-Dec-96'),
(678,'Fay',3.8,200,'27-Aug-96'),
(789,'Gary',3.4,800,'8-Oct-96'),
(987,'Helen',3.7,800,'27-Mar-97'),
(876,'Irene', 3.9, 400,'7-Mar-96'),
(765,'Jay',2.9,1500,'8-Aug-98'),
(654,'Amy',3.9,1000,'26-May-96'),
(543,'Craig',3.4,2000,'27-Aug-98')

drop table student

create table College(cNAME varchar2(10),state varchar2(10),enrollment int)

insert into College(cNAME,state,enrollment)
values('Stanford','CA', 15000),
( 'Berkeley','CA', 36000),
('MIT','MA', 10000),
('Cornell','NY', 21000),
('Harvard','MA', 50040)

select * from college

create table apply(sID int,cNAME varchar2(10),major varchar2(20),decision char(1))

insert into apply(sID,cNAME,major,decision)
values(123,'Stanford','CS','Y'),
(123 ,'Stanford','EE','N'),
( 123,'Berkeley','CS','Y'),
(123 ,'Cornell','EE','Y'),
( 234 ,'Berkeley','biology','N'),
( 345 ,'MIT','bioengineering','Y'),
(345 ,'Cornell','bioengineering','N'),
(345 ,'Cornell','CS','Y'),
( 345 ,'Cornell','EE','N') ,
(678 ,'Stanford','history','Y'),
(987 ,'Stanford','CS','Y'),
(987,'Berkeley','CS','Y'),
(876 ,'Stanford','CS','N'),
(876,'MIT','biology','Y'),
(876 ,'MIT','marine biology','N'),
(765 ,'Stanford','history','Y'),
(765 ,'Cornell','history','N'),
( 765 ,'Cornell','psychology','Y'),
(543,'MIT','CS','N' )


select * from apply

drop table apply

select sNAME,DoB from student

select sNAME from student where GPA>3.7

select sName from student where sizeHS>=100 AND DoB>'31-DEC-1996'

select sName from student where GPA between 2.9 and 3.9

select * from college where state = 'MA'

select * from student where GPA>2.0 and gpa<3.5

select * from student where DoB>'01-JUL-1996' order by DoB

select sID,cNAME,decision from apply where decision='Y'

select sID,cNAME from apply where cNAME ='Stanford'

select * from college where enrollment>10001

select * from college where state!='CA'

select sName from student where sizeHS>17000 and gpa<3.8

describe student

select * from student

select distinct major from apply

select sNAME from student where sNAME like'___'

select sName from student where sName like'H____'

select sName from student where sName like'__e_e'

select sName from student where sName like'%y'

select * from student order by GPA

select * from student order by GPA asc,DoB desc

select sID from apply where cNAME IN('Stanford','Cornell','MIT')

delete from apply where cNAME='Stanford'

delete from college where cNAME = 'Stanford'

update student set GPA = GPA*1.10

update student set GPA = GPA+1.5 where GPA<3.5 and sizeHS>1500

delete from student where GPA<3.2
