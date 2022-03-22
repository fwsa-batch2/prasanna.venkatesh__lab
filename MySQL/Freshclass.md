# freshclass-database

```sql
CREATE DATABASE freshclass;
```

## ER Diagrams
![Screenshot (162)](https://user-images.githubusercontent.com/83388298/159400220-9dd2aeaa-8c9c-4796-b8b6-03c48e56cf2f.jpg)

## CREATE TABLE User

```sql
CREATE TABLE User(Id int PRIMARY KEY Auto_increment,
                  FirstName varchar(100) NOT NULL, 
                  LastName varchar(100) NOT NULL, 
                  Emp_id char(6) NOT NULL, 
                  Email varchar(255) not null, 
                  DOB date NOT NULL,
                  Gender char(6) NOT NULL, 
                  Dept varchar(100) NOT NULL , 
                  Position varchar(100) NOT NULL, 
                  City varchar(100) NOT NULL, 
                  Phoneno bigint NOT NULL,
                  Password varchar(20) NOT NULL, 
                  Singup_Date timestamp default current_timestamp ,
                  check(Gender in ('Male','Female','Other'))
);
```

| Field       | Type         | Null | Key | Default           | Extra             |
|:------------|:-------------|:-----|:----|:------------------|:------------------|
| Id          | int          | NO   | PRI | NULL              | auto_increment    |
| FirstName   | varchar(100) | NO   |     | NULL              |                   |
| LastName    | varchar(100) | NO   |     | NULL              |                   |
| Emp_id      | char(6)      | NO   |     | NULL              |                   |
| Email       | varchar(255) | NO   | UNI | NULL              |                   |
| DOB         | date         | NO   |     | NULL              |                   |
| Gender      | char(6)      | NO   |     | NULL              |                   |
| Dept        | varchar(100) | NO   |     | NULL              |                   |
| Position    | varchar(100) | NO   |     | NULL              |                   |
| City        | varchar(100) | NO   |     | NULL              |                   |
| Phoneno     | bigint       | NO   |     | NULL              |                   |
| Password    | varchar(20)  | NO   |     | NULL              |                   |
| Singup_Date | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |


### INSERT VALUE INTO User TABLE

```sql
INSERT INTO  user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(null,'Prasanna','Venkatesh','A0001','prasanna.venkatesh@freshclass.com','2001-01-20','Male','Tech','Student','Thanjavur',9791836225,'Prasanna@2022');
```
```sql
INSERT INTO username,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(2,'Chitra','Muthukumaran','E0001','chitra.muthukumaran@freshclass.com','2001-01-20','Female','Tech','coach','chennai',9791836225,'Chitra@2022');
```
```sql
INSERT INTO user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(3,'viaml','Raj','A0002','vimal.raj@freshclass.com','2001-01-20','Male','Design','Student','Pondicherry',9791836225,'Vimal@2022');
```
```sql
INSERT INTO user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(4,'kaushick','sing','A0003','kaushik.sing@fwsa.freshworks.com','2001-01-20','Male','Tech','Student','Chennai',9791836225,'Kaushick@2022');
```
```sql
INSERT INTO user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(5,'Haiden','Arulappan','A0004','haiden.arulappan@fwsa.freshworks.com','2001-01-20','Male','Tech','Student','Tirunelveli',9791836225,'Haiden@2022');
```
```sql
insert into user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(6,'deepak','Pannerselvam','A0005','deepak.pannerselvam@fwsa.freshworks.com','2001-01-20','Male','Design','Student','Chennai',9791836225,'Deepak@2022');

```
```sql
insert into user(Id,Firstname,lastname,Emp_id,Email,DOB,Gender,dept,position,city,phoneno,password) 
values(7,'Prasanna','Bharati','E0002','prasanna.bharati@freshclass.com','1990-05-04','Female','L&D','Coach','chennai',9791836225,'Prasanna@2022');
```
### User table with values

| Id | FirstName | LastName     | Emp_id | Email                                   | DOB        | Gender | Dept   | Position | City        | Phoneno    | Password      | Singup_Date         |
|:---|:----------|:-------------|:-------|:----------------------------------------|:-----------|:-------|:-------|:---------|:------------|:-----------|:--------------|:--------------------|
|  1 | Prasanna  | Venkatesh    | A0001  | prasanna.venkatesh@freshclass.com       | 2001-01-20 | Male   | Tech   | Student  | Thanjavur   | 9791836225 | Prasanna@2022 | 2022-03-20 08:06:48 |
|  2 | Chitra    | Muthukumaran | E0001  | chitra.muthukumaran@freshclass.com      | 2001-01-20 | Female | Tech   | coach    | chennai     | 9791836225 | Chitra@2022   | 2022-03-20 08:08:57 |
|  3 | viaml     | Raj          | A0002  | vimal.raj@freshclass.com                | 2001-01-20 | Male   | Design | Student  | Pondicherry | 9791836225 | Vimal@2022    | 2022-03-20 08:10:47 |
|  4 | kaushick  | sing         | A0003  | kaushik.sing@fwsa.freshworks.com        | 2001-01-20 | Male   | Tech   | Student  | Chennai     | 9791836225 | Kaushick@2022 | 2022-03-20 08:12:02 |
|  5 | Haiden    | Arulappan    | A0004  | haiden.arulappan@fwsa.freshworks.com    | 2001-01-20 | Male   | Tech   | Student  | Tirunelveli | 9791836225 | Haiden@2022   | 2022-03-20 08:13:01 |
|  6 | deepak    | Pannerselvam | A0005  | deepak.pannerselvam@fwsa.freshworks.com | 2001-01-20 | Male   | Design | Student  | Chennai     | 9791836225 | Deepak@2022   | 2022-03-20 08:14:03 |
|  7 | Prasanna  | Bharati      | E0002  | prasanna.bharati@freshclass.com         | 1990-05-04 | Female | L&D    | Coach    | chennai     | 9791836225 | Prasanna@2022 | 2022-03-20 08:15:56 |

### CREATE TABLE Students

```sql
CREATE table student_link(Id int,
                          Emp_id char(6) NOT NULL,
                          ithub_link varchar(255), 
                          Slack_link varchar(255),
                          FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field  | Type    | Null | Key | Default | Extra |
|:-------|:--------|:-----|:----|:--------|:------|
| Id     | int     | YES  | MUL | NULL    |       |
| Emp_id | char(6) | NO   |     | NULL    |       |

### INSERT VALUES INTO Students TABLE

```sql 
INSERT INTO students(Id,Emp_id) 
Values(1,'A0001'),
      (3,'A0002'),
      (4,'A0003'),
      (5,'A0004'),
      (6,'A0005');
```

| Id   | Emp_id |
|------|:-------|
|    1 | A0001  |
|    3 | A0002  |
|    4 | A0003  |
|    5 | A0004  |
|    6 | A0005  |

### CREATE TABLE Coaches

```sql
CREATE TABLE Coaches(Id int,
                     Emp_id char(6) NOT NULL, 
                     FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field  | Type    | Null | Key | Default | Extra |
|:-------|:--------|:-----|:----|:--------|:------|
| Id     | int     | YES  | MUL | NULL    |       |
| Emp_id | char(6) | NO   |     | NULL    |       |

### INSERT VALUES INTO Coaches TABLE

```sql
INSERT INTO coaches(Id,Emp_id) 
Values(2,'E0001'),
      (7,'E0002');
```

| Id   | Emp_id |
|:-----|:-------|
|    2 | E0001  |
|    7 | E0002  |

### CREATE TABLE student_link

```sql
CREATE table student_link(Id int,
                          Emp_id char(6) NOT NULL,
                          Github_link varchar(255), 
                          Slack_link varchar(255),
                          FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field       | Type         | Null | Key | Default | Extra |
|:------------|:-------------|:-----|:----|:--------|:------|
| Id          | int          | YES  | MUL | NULL    |       |
| Emp_id      | char(6)      | NO   |     | NULL    |       |
| Github_link | varchar(255) | YES  |     | NULL    |       |
| Slack_link  | varchar(255) | YES  |     | NULL    |       |


### INSERT VALUES INTO student_link TABLE

```sql
INSERT INTO student_link(Id,Emp_id,Github_link,Slack_link) 
Values(1,'A0001','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J'),
      (3,'A0002','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J'),
      (4,'A0003','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J'),
      (5,'A0004','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J'),
      (6,'A0005','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J');
```

| Id   | Emp_id | Github_link                     | Slack_link                                |
|:-----|:-------|:--------------------------------|:------------------------------------------|
|    1 | A0001  | https://github.com/Prasanna-dot | https://fwbuzz.slack.com/team/U02GHKLS60J |
|    3 | A0002  | https://github.com/Prasanna-dot | https://fwbuzz.slack.com/team/U02GHKLS60J |
|    4 | A0003  | https://github.com/Prasanna-dot | https://fwbuzz.slack.com/team/U02GHKLS60J |
|    5 | A0004  | https://github.com/Prasanna-dot | https://fwbuzz.slack.com/team/U02GHKLS60J |
|    6 | A0005  | https://github.com/Prasanna-dot | https://fwbuzz.slack.com/team/U02GHKLS60J |

### CREATE TABLE student_status

```sql
CREATE table student_status(Id int,
                            Emp_id char(6) NOT NULL,
                            status varchar(20) NOT NULL,
                            FOREIGN KEY(Id) REFERENCES User(Id),
                            check (status in ('ACTIVE','INACTIVE')));
```

| Field  | Type        | Null | Key | Default | Extra |
|:-------|:------------|:-----|:----|:--------|:------|
| Id     | int         | YES  | MUL | NULL    |       |
| Emp_id | char(6)     | NO   |     | NULL    |       |
| status | varchar(20) | NO   |     | NULL    |       |

### INSERT VALUES INTO student_status TABLE

```sql
INSERT INTO student_status(Id,Emp_id,status) 
values(1,'A0001','ACTIVE'),
      (3,'A0002','ACTIVE'),
      (4,'A0003','ACTIVE'),
      (5,'A0004','ACTIVE'),
      (6,'A0005','ACTIVE');
```

| Id   | Emp_id | status |
|:-----|:-------|:-------|
|    1 | A0001  | ACTIVE |
|    3 | A0002  | ACTIVE |
|    4 | A0003  | ACTIVE |
|    5 | A0004  | ACTIVE |
|    6 | A0005  | ACTIVE |

### CREATE TABLE Attendance

```sql
CREATE TABLE Attendance(Id int,
                        Emp_id char(6) NOT NULL,
                        Attendance tinyint(1),
                        Attendance_date date, 
                        FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field           | Type       | Null | Key | Default | Extra |
|:----------------|:-----------|:-----|:----|:--------|:------|
| Id              | int        | YES  | MUL | NULL    |       |
| Emp_id          | char(6)    | NO   |     | NULL    |       |
| Attendance      | tinyint(1) | YES  |     | NULL    |       |
| Attendance_date | date       | YES  |     | NULL    |       |

### INSERT VALUES INTO Attendance TABLE

```sql
INSERT INTO Attendance(Id,Emp_id,Attendance,Attendance_date) 
values(1,'A0001',1,'2020-03-20'),
      (3,'A0002',0,'2020-03-20'),
      (4,'A0003',1,'2020-03-20'),
      (5,'A0004',1,'2020-03-20'),
      (6,'A0005',1,'2020-03-20');
```

| Id   | Emp_id | Attendance | Attendance_date | noted_date          |
|:-----|:-------|:-----------|:----------------|:--------------------|
|    1 | A0001  |          1 | 2020-03-20      | 2022-03-20 08:43:17 |
|    3 | A0002  |          0 | 2020-03-20      | 2022-03-20 08:43:17 |
|    4 | A0003  |          1 | 2020-03-20      | 2022-03-20 08:43:17 |
|    5 | A0004  |          1 | 2020-03-20      | 2022-03-20 08:43:17 |
|    6 | A0005  |          1 | 2020-03-20      | 2022-03-20 08:43:17 |

## ER Diagram

![Screenshot (163)](https://user-images.githubusercontent.com/83388298/159401091-e297885a-1b15-4d96-aa11-83f6aebf5bf7.jpg)

### CREATE TABLE Assignment

```sql
CREATE TABLE Assignment(Id int primary key auto_increment, 
                        Subject_name varchar(100) NOT NULL, 
                        Ass_name varchar(100) NOT NULL, 
                        Dead_line date, 
                        created_date timestamp not null default current_timestamp);
```

| Field        | Type         | Null | Key | Default           | Extra             |
|:-------------|:-------------|:-----|:----|:------------------|:------------------|
| Id           | int          | NO   | PRI | NULL              | auto_increment    |
| Subject_name | varchar(100) | NO   |     | NULL              |                   |
| Ass_name     | varchar(100) | NO   |     | NULL              |                   |
| Dead_line    | date         | YES  |     | NULL              |                   |
| created_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |


### INSERT VALUES INTO Assignment TABLE

```sql
INSERT INTO Assignment(subject_name,Ass_name,dead_line) 
VALUES('ELS','ELST2','2020-03-18'),
      ('ELS','ELST3','2020-03-21');
```

| Id | Subject_name | Ass_name | Dead_line  | created_date        |
|:---|:-------------|:---------|:-----------|:--------------------|
|  1 | ELS          | ELST2    | 2020-03-18 | 2022-03-20 08:46:40 |
|  2 | ELS          | ELST3    | 2020-03-21 | 2022-03-20 08:46:40 |

## ER Diagram
![Screenshot (163) (1)](https://user-images.githubusercontent.com/83388298/159401104-338dc286-32c6-4b30-8453-9ea9998de928.jpg)

### CREATE TABLE Schedules

```sql
CREATE TABLE Assignment(Id int primary key auto_increment, 
                        Subject_name varchar(100) NOT NULL, 
                        Ass_name varchar(100) NOT NULL, 
                        Dead_line date, 
                        created_date timestamp not null default current_timestamp);
```

| Field        | Type         | Null | Key | Default           | Extra             |
|:-------------|:-------------|:-----|:----|:------------------|:------------------|
| Id           | int          | NO   | PRI | NULL              | auto_increment    |
| Subject_name | varchar(100) | NO   |     | NULL              |                   |
| Ass_name     | varchar(100) | NO   |     | NULL              |                   |
| Dead_line    | date         | YES  |     | NULL              |                   |
| created_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |


### INSERT VALUES INTO Schedules TABLE

```sql
 INSERT INTO Schedules(Class_name,schedule_date,time_in,time_out) 
 VALUES('ELS','2020-03-16','09:00:00','10:00:00'),
       ('Tech','2020-03-16','11:30:00','01:00:00');
```

| Id | Class_name | Schedule_date | Time_in  | Time_out | Scheduled_date      |
|:---|:-----------|:--------------|:---------|:---------|:--------------------|
|  1 | ELS        | 2020-03-16    | 09:00:00 | 10:00:00 | 2022-03-20 08:49:56 |
|  2 | Tech       | 2020-03-16    | 11:30:00 | 01:00:00 | 2022-03-20 08:49:56 |
