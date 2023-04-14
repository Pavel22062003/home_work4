--1
CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
)
--2
ALTER TABLE student ADD COLUMN middle_name varchar

--3
ALTER TABLE student DROP COLUMN middle_name

--4
ALTER TABLE student RENAME birthday TO birth_date

--5
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32)

--6
INSERT INTO student(first_name, last_name) VALUES
('Ivan','Ivanov'),
('Pavel','Pavlov'),
('Max','Kupper')

--7
TRUNCATE TABLE student RESTART IDENTITY
