# MySQL Testing

### Table 1

```syntax
create table students (id int primary key auto_increment, name varchar(100) not null, email varchar(100) not null, mobile_no bigint not null, password varchar(100) not null, gender char(1) not null, dob date, created_date timestamp not null default current_timestamp, unique (email), check (gender in ('M','F')));
```

| Field        | Type         | Null | Key | Default           | Extra             |
|:-------------|:-------------|:-----|:----|:------------------|:------------------|
| id           | int          | NO   | PRI | NULL              | auto_increment    |
| name         | varchar(100) | NO   |     | NULL              |                   |
| email        | varchar(100) | NO   | UNI | NULL              |                   |
| mobile_no    | bigint       | NO   |     | NULL              |                   |
| password     | varchar(100) | NO   |     | NULL              |                   |
| gender       | char(1)      | NO   |     | NULL              |                   |
| dob          | date         | YES  |     | NULL              |                   |
| created_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |

### Table 2

```syntax
create table student_class (id int primary key auto_increment, student_id int not null, class int not null, status varchar(20) not null, foreign key (student_id) references students(id), check(class >= 1 and class <=12), check (status in ('ACTIVE','INACTIVE')));
```

| Field      | Type        | Null | Key | Default | Extra          |
|:-----------|:------------|:-----|:----|:--------|:---------------|
| id         | int         | NO   | PRI | NULL    | auto_increment |
| student_id | int         | NO   | MUL | NULL    |                |
| class      | int         | NO   |     | NULL    |                |
| status     | varchar(20) | NO   |     | NULL    |                |

### Feature 1: Student Registration

```syntax
   INSERT INTO students (name,email,mobile_no,password,gender,dob) VALUES ('Prasanna','prasanna@freshclass.com','123456890','Prasanna@2022','M','2001-01-20'),('Haiden','haiden@freshclass.com','123456890','Haiden@2022','M','2001-01-20'),('vimal','vimal@freshclass.com','123456890','Vimal@2022','M','2001-01-20'),('Aswath','aswath@freshclass.com','123456890','Aswath@2022','M','2001-01-20'),('Kaushik','kaushik@freshclass.com','123456890','Kaushik@2022','M','2001-01-20'),('suguram','suguram@freshclass.com','123456890','Suguram@2022','M','2001-01-20'),('Deepak','deepak@freshclass.com','123456890','Deepak@2022','M','2001-01-20');
```

### Feature 2: List All Students

```syntax
SELECT * FROM students;
```

| id | name     | email                   | mobile_no | password      | gender | dob        | created_date        |
|:---|:---------|:------------------------|:----------|:--------------|:-------|:-----------|:--------------------|
|  1 | Prasanna | prasanna@freshclass.com | 123456890 | Prasanna@2022 | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  2 | Haiden   | haiden@freshclass.com   | 123456890 | Haiden@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  3 | vimal    | vimal@freshclass.com    | 123456890 | Vimal@2022    | M      | NULL       | 2022-03-01 18:26:43 |
|  4 | Aswath   | aswath@freshclass.com   | 123456890 | Aswath@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  5 | Kaushik  | kaushik@freshclass.com  | 123456890 | Kaushik@2022  | M      | NULL       | 2022-03-01 18:26:43 |
|  6 | suguram  | suguram@freshclass.com  | 123456890 | Suguram@2022  | M      | 2001-01-20 | 2022-03-02 07:04:55 |
|  7 | Deepak   | deepak@freshclass.com   | 123456890 | Deepak@2022   | M      | 2001-01-20 | 2022-03-02 07:06:42 |

### Feature 3: Login with email and password

```syntax
 SELECT * FROM students WHERE email = 'prasanna@freshclass.com' AND password = 'Prasanna@2022';
```

| id | name     | email                   | mobile_no | password      | gender | dob        | created_date        |
|:---|:---------|:------------------------|:----------|:--------------|:-------|:-----------|:--------------------|
|  1 | Prasanna | prasanna@freshclass.com | 123456890 | Prasanna@2022 | M      | 2001-01-20 | 2022-03-01 18:26:43 |

### Feature 4: Update Password

```syntax
 UPDATE students SET password = 'Prasanna@2021' WHERE password = 'Prasanna@2022';
```

| id | name     | email                   | mobile_no | password      | gender | dob        | created_date        |
|:---|:---------|:------------------------|:----------|:--------------|:-------|:-----------|:--------------------|
|  1 | Prasanna | prasanna@freshclass.com | 123456890 | Prasanna@2021 | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  2 | Haiden   | haiden@freshclass.com   | 123456890 | Haiden@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  3 | vimal    | vimal@freshclass.com    | 123456890 | Vimal@2022    | M      | NULL       | 2022-03-01 18:26:43 |
|  4 | Aswath   | aswath@freshclass.com   | 123456890 | Aswath@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  5 | Kaushik  | kaushik@freshclass.com  | 123456890 | Kaushik@2022  | M      | NULL       | 2022-03-01 18:26:43 |
|  6 | suguram  | suguram@freshclass.com  | 123456890 | Suguram@2022  | M      | 2001-01-20 | 2022-03-02 07:04:55 |
|  7 | Deepak   | deepak@freshclass.com   | 123456890 | Deepak@2022   | M      | 2001-01-20 | 2022-03-02 07:06:42 |

### Feature 5: Enroll Student into Class

```syntax
 INSERT INTO student_class (id,Student_id,Class,status) VALUES (1,1,1,'ACTIVE'),(2,2,1,'ACTIVE'),(3,3,2,'ACTIVE'),(4,4,5,'ACTIVE'),(5,5,5,'ACTIVE');
```

### Feature 6: Find Students who are studying in 5th standard

```syntax
 SELECT students.id,students.name FROM students INNER JOIN student_class ON students.id = student_class.student_id AND student_class.class = 5;
```

| id | name    |
|:---|:--------|
|  4 | Aswath  |
|  5 | Kaushik |

### Feature 7: Update Student Class information Update student from 5th standard to 6th standard.

```syntax
 UPDATE student_class SET class = 6 WHERE class = 5;
```

| id | student_id | class | status |
|:---|:-----------|:------|:-------|
|  1 |          1 |     1 | ACTIVE |
|  2 |          2 |     1 | ACTIVE |
|  3 |          3 |     2 | ACTIVE |
|  4 |          4 |     6 | ACTIVE |
|  5 |          5 |     6 | ACTIVE |

### Feature 8: Student withdrawn from a Class

```syntax
UPDATE student_class SET Status = 'INACTIVE' WHERE id = 3;
```

| id | student_id | class | status   |
|:---|:-----------|:------|:---------|
|  1 |          1 |     1 | ACTIVE   |
|  2 |          2 |     1 | ACTIVE   |
|  3 |          3 |     2 | INACTIVE |
|  4 |          4 |     6 | ACTIVE   |
|  5 |          5 |     6 | ACTIVE   |

### Feature 9: Find student details who have not updated their Date Of Birth

```syntax
SELECT * FROM students WHERE dob is NULL;
```

| id | name    | email                  | mobile_no | password     | gender | dob  | created_date        |
|:---|:--------|:-----------------------|:----------|:-------------|:-------|:-----|:--------------------|
|  3 | vimal   | vimal@freshclass.com   | 123456890 | Vimal@2022   | M      | NULL | 2022-03-01 18:26:43 |
|  5 | Kaushik | kaushik@freshclass.com | 123456890 | Kaushik@2022 | M      | NULL | 2022-03-01 18:26:43 |

### Feature 10: Find Total no of students actively studying in this school

```syntax
SELECT COUNT(status) FROM student_class WHERE student_class.status = 'ACTIVE';
```

| COUNT(status) |
|:--------------|
|             4 |

### Feature 11: Find Total no of students actively studying in each class

```syntax
SELECT COUNT(status),class FROM student_class WHERE status = 'ACTIVE' GROUP BY class;
```
| COUNT(status) | class |
|:--------------|:------|
|             2 |     1 |
|             2 |     6 |

### Feature 12: Find Total no of students actively studying each class which has less than 5 students.

```syntax
SELECT COUNT(status),class FROM student_class WHERE student_class.status = 'ACTIVE' GROUP BY class HAVING COUNT(status) < 5;
```

| COUNT(status) | class |
|:--------------|:------|
|             2 |     1 |
|             2 |     6 |

### Feature 13: Display student and class details Using Joins (Inner Join)

```syntax
SELECT * FROM students INNER JOIN student_class ON students.id = student_class.student_id;
```

| id | name     | email                   | mobile_no | password      | gender | dob        | created_date        | id | student_id | class | status   |
|:---|:---------|:------------------------|:----------|:--------------|:-------|:-----------|:--------------------|:---|:-----------|:------|:---------|
|  1 | Prasanna | prasanna@freshclass.com | 123456890 | Prasanna@2022 | M      | 2001-01-20 | 2022-03-01 18:26:43 |  1 |          1 |     1 | ACTIVE   |
|  2 | Haiden   | haiden@freshclass.com   | 123456890 | Haiden@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |  2 |          2 |     1 | ACTIVE   |
|  3 | vimal    | vimal@freshclass.com    | 123456890 | Vimal@2022    | M      | NULL       | 2022-03-01 18:26:43 |  3 |          3 |     2 | INACTIVE |
|  4 | Aswath   | aswath@freshclass.com   | 123456890 | Aswath@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |  4 |          4 |     6 | ACTIVE   |
|  5 | Kaushik  | kaushik@freshclass.com  | 123456890 | Kaushik@2022  | M      | NULL       | 2022-03-01 18:26:43 |  5 |          5 |     6 | ACTIVE   |

### Feature 14: Display Student Details for the given input Class : 6th Standard Using Joins

```syntax
SELECT students.* FROM students INNER JOIN student_class ON students.id = student_class.student_id WHERE student_class.class = 6;
```

| id | name     | email                   | mobile_no | password      | gender | dob        | created_date        |
|:---|:---------|:------------------------|:----------|:--------------|:-------|:-----------|:--------------------|
|  4 | Aswath   | aswath@freshclass.com   | 123456890 | Aswath@2022   | M      | 2001-01-20 | 2022-03-01 18:26:43 |
|  5 | Kaushik  | kaushik@freshclass.com  | 123456890 | Kaushik@2022  | M      | NULL       | 2022-03-01 18:26:43 |

### Feature 15: Find Class for the given student email id Email: prasanna@gmail.com * Using Subquery ( single row subquery )

```syntax
 SELECT class FROM student_class WHERE student_id = (SELECT id FROM students WHERE email = 'prasanna@freshclass.com');
```

| class |
|:------|
|     1 |

### Feature 16: Find Students who has not enrolled in a class Using Subquery (multiple row subquery)

```syntax
SELECT * FROM students WHERE id NOT IN (SELECT student_id FROM student_class);
```

| id | name    | email                  | mobile_no | password     | gender | dob        | created_date        |
|:---|:--------|:-----------------------|:----------|:-------------|:-------|:-----------|:--------------------|
|  6 | suguram | suguram@freshclass.com | 123456890 | Suguram@2022 | M      | 2001-01-20 | 2022-03-02 07:04:55 |
|  7 | Deepak  | deepak@freshclass.com  | 123456890 | Deepak@2022  | M      | 2001-01-20 | 2022-03-02 07:06:42 |

### Feature 17: Display all students name with class - include both enrolled and not enrolled Using Joins (Left outer join)

```syntax
SELECT students.name,student_class.class FROM students LEFT OUTER JOIN student_class ON students.id = student_class.student_id;
```

| name     | class |
|:---------|:------|
| Prasanna |     1 |
| Haiden   |     1 |
| vimal    |     2 |
| Aswath   |     6 |
| Kaushik  |     6 |
| suguram  |  NULL |
| Deepak   |  NULL |
