create table Department(
    Deptno number(3) primary key,
    Dname varchar2(20) unique,
    Location varchar2(20) not null,

    constraint chk_location
    check (Location in ('Delhi','Pune','Agra'))
)



create table Employee(
    Empno varchar2(5) primary key,
    Ename varchar2(20) Unique,
    Designation varchar2(20) not null,
    Salary number(10) default 25000,
    DOB date not null,
    Dno number(3),

    constraint chk_empno
    check (Empno like 'E%'),

    constraint chk_salary
    check (Salary between 15000 and 50000),

    constraint fk_dno
    foreign key(Dno)
    references Department(Deptno)
)



create table Candidate(
    Candidate_ID Number(6) Primary key,
    Candidate_Name Varchar2(20) Not Null,
    Candidate_Email Varchar2 (30) Unique,
    Candidate_Dept VARCHAR2 (30) Default 'HR',
    Manager_ID number (6),

    constraint chk_email
    check (Candidate_Email like '%@%.%'),

    constraint fk_manager
    foreign key(Manager_ID)
    references Candidate(Candidate_ID)
)

CREATE TABLE College
(
    cName VARCHAR2(10),
    state VARCHAR2(10),
    enrollment INT
)

CREATE TABLE Student
(
    sID INT,
    sName VARCHAR2(10),
    GPA NUMBER(2,1),
    sizeHS INT
)

CREATE TABLE Apply
(
    sID INT,
    cName VARCHAR2(10),
    major VARCHAR2(20)
)

alter table college
add primary key(cName)

alter table student 
add primary key(sID)

alter table apply
add primary key(sID,cName,major)

alter table apply
add constraint fk_apply_student
foreign key(sID)
REFERENCES student(sID)

alter table apply
add constraint fk_apply_college
foreign key(cName)
REFERENCES college(cName)

alter table apply
modify(major varchar2(25))

alter table apply
add(decision varchar2(3) not null)

alter table apply
modify(decision char(1))

alter table apply
drop constraint fk_apply_college

alter table student
drop column sizeHS

alter table college
drop primary key

alter table apply
add constraint uq_cname_major
unique (cName, major)

alter table college
add constraint uq_college_cname unique (cName)

alter table apply
add constraint fk_apply_college
foreign key (cName)
references college(cName)
on delete cascade

alter table apply
drop constraint fk_apply_student

ALTER TABLE Apply
ADD CONSTRAINT fk_apply_student
FOREIGN KEY (sID)
REFERENCES Student(sID)
ON DELETE SET NULL

ALTER TABLE College
RENAME COLUMN enrollment TO enroll;