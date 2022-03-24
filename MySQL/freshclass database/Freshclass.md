# PRESENTATION LINK
https://docs.google.com/presentation/d/1zTatbGUNHZekhcOFCtggrjX_EUXkbxFFsEZe1Hbfxno/edit?usp=sharing

* * *
# freshclass-database

```sql
CREATE DATABASE freshclass;
```

## ER Diagrams
![Freshclass_ERD (2)](https://user-images.githubusercontent.com/83388298/159615401-61a46e13-60fb-46a1-9261-f433986cc058.png)
![Flowchart (1) (1)](https://user-images.githubusercontent.com/83388298/159616124-41c2ecf1-bdd9-40db-8c03-2ca3b917b76b.png)

## CREATE TABLE User

```sql
CREATE TABLE user(Id int PRIMARY KEY Auto_increment,User_id char(6) UNIQUE NOT NULL,First_name varchar(100) NOT NULL,Last_name varchar(100) NOT NULL,Email varchar(255) NOT NULL UNIQUE,Date_of_birth date NOT NULL,Gender char(6) NOT NULL,Role varchar(100) NOT NULL,City varchar(100) NOT NULL,Phone_no bigint NOT NULL,Password varchar(20) NOT NULL,Singup_Date timestamp default current_timestamp,check(Gender in ('Male','Female','Other')));
```

| Field         | Type         | Null | Key | Default           | Extra             |
|:--------------|:-------------|:-----|:----|:------------------|:------------------|
| Id            | int          | NO   | PRI | NULL              | auto_increment    |
| User_id       | char(6)      | NO   | UNI | NULL              |                   |
| First_name    | varchar(100) | NO   |     | NULL              |                   |
| Last_name     | varchar(100) | NO   |     | NULL              |                   |
| Email         | varchar(255) | NO   | UNI | NULL              |                   |
| Date_of_birth | date         | NO   |     | NULL              |                   |
| Gender        | char(6)      | NO   |     | NULL              |                   |
| Role          | varchar(100) | NO   |     | NULL              |                   |
| City          | varchar(100) | NO   |     | NULL              |                   |
| Phone_no      | bigint       | NO   |     | NULL              |                   |
| Password      | varchar(20)  | NO   |     | NULL              |                   |
| Singup_Date   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |


### INSERT VALUE INTO User TABLE

```sql
INSERT INTO user(Id,User_id,First_name,Last_name,Email,Date_of_birth,Gender,Role,City,Phone_no,Password) VALUES(1,'A0001','Prasanna','Venkatesh','prasanna.vanekatesh@freshclass.com','2001-01-20','Male','Student','Thanjevur',9791836225,'Prasanna@2022');
```
```sql
INSERT INTO user(Id,User_id,First_name,Last_name,Email,Date_of_birth,Gender,Role,City,Phone_no,Password) VALUES(2,'E0001','Chitra','Muthukumaran','chirta.muthukumaran@freshclass.com','1995-03-04','Female','Coach','Chennai',9791836222,'Chitra@2022');
```
```sql
INSERT INTO user(Id,User_id,First_name,Last_name,Email,Date_of_birth,Gender,Role,City,Phone_no,Password) VALUES(3,'A0002','Vimal','Raj','vimal.raj@freshclass.com','2002-06-05','Male','Student','Pondicherry',9791836332,'vimal@2022');
```
```sql
INSERT INTO user(Id,User_id,First_name,Last_name,Email,Date_of_birth,Gender,Role,City,Phone_no,Password) VALUES(4,'E0002','Prasanna','Bharathi','prasanna.bharathi@freshclass.com','2003-06-07','Female','coach','Chennai',9791834352,'Prasanna@2022');
```

### User table with values

| Id | User_id | First_name | Last_name    | Email                              | Date_of_birth | Gender | Roll    | City        | Phone_no   | Password      | Singup_Date         |
|:---|:--------|:-----------|:-------------|:-----------------------------------|:--------------|:-------|:--------|:------------|:-----------|:--------------|:--------------------|
|  1 | A0001   | Prasanna   | Venkatesh    | prasanna.vanekatesh@freshclass.com | 2001-01-20    | Male   | Student | Thanjevur   | 9791836225 | Prasanna@2022 | 2022-03-22 16:22:44 |
|  2 | E0001   | Chitra     | Muthukumaran | chirta.muthukumaran@freshclass.com | 1995-03-04    | Female | Coach   | Chennai     | 9791836222 | Chitra@2022   | 2022-03-22 16:48:16 |
|  3 | A0002   | Vimal      | Raj          | vimal.raj@freshclass.com           | 2002-06-05    | Male   | Student | Pondicherry | 9791836332 | vimal@2022    | 2022-03-22 16:50:23 |
|  4 | E0002   | Prasanna   | Bharathi     | prasanna.bharathi@freshclass.com   | 2003-06-07    | Female | coach   | Chennai     | 9791834352 | Prasanna@2022 | 2022-03-22 16:53:04 |

### CREATE TABLE Students

```sql
CREATE TABLE Students(Id int PRIMARY KEY Auto_increment,User_id char(6) unique NOT NULL,Dept varchar(100) NOT NULL,Status varchar(8) NOT NULL,Qualification varchar(100),Github_link BLOB NOT NULL,Slack_link BLOB NOT NULL,FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field         | Type         | Null | Key | Default | Extra |
|:--------------|:-------------|:-----|:----|:--------|:------|
| Id            | int          | YES  | MUL | NULL    |       |
| User_id       | char(6)      | NO   | PRI | NULL    |       |
| Dept          | varchar(100) | NO   |     | NULL    |       |
| Status        | varchar(8)   | NO   |     | NULL    |       |
| Qualification | varchar(100) | YES  |     | NULL    |       |
| Github_link   | blob         | NO   |     | NULL    |       |
| Slack_link    | blob         | NO   |     | NULL    |       |

### INSERT VALUES INTO Students TABLE

```sql 
INSERT INTO Students(Id,User_id,Dept,Status,Qualification,Github_link,Slack_link) VALUES(1,'A0001','Tech','ACTIVE','12th','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J');
```
```sql 
INSERT INTO Students(Id,User_id,Dept,Status,Qualification,Github_link,Slack_link) VALUES(3,'A0002','Design','ACTIVE','12th','https://github.com/Prasanna-dot','https://fwbuzz.slack.com/team/U02GHKLS60J');
```

| Id | User_id | Dept   | Status | Qualification | Github_link                                                      | Slack_link                                                                           |
|:---|:--------|:-------|:-------|:--------------|:-----------------------------------------------------------------|:-------------------------------------------------------------------------------------|
|  1 | A0001   | Tech   | ACTIVE | 12th          | 0x68747470733A2F2F6769746875622E636F6D2F50726173616E6E612D646F74 | 0x68747470733A2F2F667762757A7A2E736C61636B2E636F6D2F7465616D2F55303247484B4C5336304A |
|  3 | A0002   | Design | ACTIVE | 12th          | 0x68747470733A2F2F6769746875622E636F6D2F50726173616E6E612D646F74 | 0x68747470733A2F2F667762757A7A2E736C61636B2E636F6D2F7465616D2F55303247484B4C5336304A |

### CREATE TABLE Coaches

```sql
CREATE TABLE Coaches(Id int PRIMARY KEY Auto_increment,User_id char(6) unique not null,Dept varchar(100) not null,Qualification varchar(100) not null,Position varchar(100) not null, FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field         | Type         | Null | Key | Default | Extra          |
|:--------------|:-------------|:-----|:----|:--------|:---------------|
| Id            | int          | NO   | PRI | NULL    | auto_increment |
| User_id       | char(6)      | NO   | UNI | NULL    |                |
| Dept          | varchar(100) | NO   |     | NULL    |                |
| Qualification | varchar(100) | NO   |     | NULL    |                |
| Position      | varchar(100) | NO   |     | NULL    |                |

### INSERT VALUES INTO Coaches TABLE

```sql
INSERT INTO Coaches(Id,User_id,Dept,Qualification,Position) VALUES(2,'E0001','Tech','MCA','Head tech coach');
```
```sql
INSERT INTO Coaches(Id,User_id,Dept,Qualification,Position) VALUES(4,'E0002','L&D','B.E','Head coach');
```

| Id | User_id | Dept | Qualification | Position        |
|:---|:--------|:-----|:--------------|:----------------|
|  2 | E0001   | Tech | MCA           | Head tech coach |
|  4 | E0002   | L&D  | B.E           | Head coach      |

### CREATE TABLE Attendance

```sql
CREATE TABLE Attendance(Id int,User_id char(6) NOT NULL UNIQUE,Attendance TINYINT(1) NOT NULL,Attendance_date DATE NOT NULL,Noted_date timestamp default current_timestamp, FOREIGN KEY(Id) REFERENCES User(Id));
```

| Field           | Type       | Null | Key | Default           | Extra             |
|:----------------|:-----------|:-----|:----|:------------------|:------------------|
| Id              | int        | YES  | MUL | NULL              |                   |
| User_id         | char(6)    | NO   | PRI | NULL              |                   |
| Attendance      | tinyint(1) | NO   |     | NULL              |                   |
| Attendance_date | date       | NO   |     | NULL              |                   |
| Noted_date      | timestamp  | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |

### INSERT VALUES INTO Attendance TABLE

```sql
 INSERT INTO Attendance(Id,User_id,Attendance,Attendance_date) VALUES(1,'A0001',1,'2020-03-22'),(3,'A0002',1,'2020-03-22');
```

| Id   | User_id | Attendance | Attendance_date | Noted_date          |
|:-----|:--------|:-----------|:----------------|:--------------------|
|    1 | A0001   |          1 | 2020-03-22      | 2022-03-22 20:43:21 |
|    3 | A0002   |          1 | 2020-03-22      | 2022-03-22 20:43:21 |

### CREATE TABLE Assignment

```sql
CREATE TABLE Assignment(Id int primary key auto_increment, 
                        Sub_name varchar(100) NOT NULL, 
                        Ass_name varchar(100) NOT NULL, 
                        Dead_line date, 
                        created_date timestamp not null default current_timestamp
);
```

| Field        | Type         | Null | Key | Default           | Extra             |
|:-------------|:-------------|:-----|:----|:------------------|:------------------|
| Id           | int          | NO   | PRI | NULL              | auto_increment    |
| Sub_name | varchar(100) | NO   |     | NULL              |                   |
| Ass_name     | varchar(100) | NO   |     | NULL              |                   |
| Dead_line    | date         | YES  |     | NULL              |                   |
| created_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |


### INSERT VALUES INTO Assignment TABLE

```sql
o
```

| Id | Subject_name | Ass_name | Dead_line  | created_date        |
|:---|:-------------|:---------|:-----------|:--------------------|
|  1 | ELS          | ELST2    | 2020-03-18 | 2022-03-20 08:46:40 |
|  2 | ELS          | ELST3    | 2020-03-21 | 2022-03-20 08:46:40 |

### CREATE TABLE Schedules

```sql
create table schedules(Id int primary key auto_increment,
                       Class_name varchar(100) NOT NULL,
                       Schedule_date date,
                       Time_in time,
                       Time_out time,
                       Scheduled_date timestamp not null default current_timestamp
);
```

| Field          | Type         | Null | Key | Default           | Extra             |
|:----------------|:------------|:-----|:----|:------------------|:------------------|
| Id             | int          | NO   | PRI | NULL              | auto_increment    |
| Class_name     | varchar(100) | NO   |     | NULL              |                   |
| Schedule_date  | date         | YES  |     | NULL              |                   |
| Time_in        | time         | YES  |     | NULL              |                   |
| Time_out       | time         | YES  |     | NULL              |                   |
| Scheduled_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |



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
