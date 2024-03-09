show global variables like 'local_infile';
set global local_infile=true;
SET SQL_SAFE_UPDATES = 0;


create	table Marks2 (
	mark__id int,
    student_id int,
    subject_id int,
    teacher_id int,
    mark_obtained int,
    exam_date date
);



create	table Students (
    student_id int,
    first_name varchar(50),
    last_name varchar(50),
	date_of_birth date,
    address varchar (200),
    phone_code int,
    contact_number int,
    email varchar(200)
);

create	table Subjects (
    subject_id int,
	subject_name varchar(100)
);

create	table Teachers (
    teacher_id int,
    first_name varchar(50),
    last_name varchar(50),
	date_of_birth date,
    address varchar (200),
    phone_code int,
    contact_number int,
    email varchar(200)
);

LOAD DATA LOCAL INFILE 'Students.csv'
INTO TABLE students
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

Create table new_marks(
	new_mark_id int
);



