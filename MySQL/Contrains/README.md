# MySQL Constraints

### NOT NULL

```syntax
 CREATE TABLE Constraints(Firstname varchar(255) NOT NULL);
```

### UNIQUE

```syntax
 CREATE TABLE Constraints(Email varchar(255) UNIQUE);
```

### DEFAULT

```syntax
CREATE TABLE Constraints(Department varchar(255) DEFAULT 'Tech');
```

### CHECK

```syntax
CREATE TABLE Constraints(Age int(2) NOT NULL, CHECK (Age>=21));
```

### PRIMARY KEY

```syntax
CREATE TABLE Constraints(Id int(3) PRIMARY KEY AUTO_INCREMENT);
```

### CREATE TABLE with all Constraints without FOREIGN KEY

```syntax
CREATE TABLE Constraints(Id int(3) PRIMARY KEY AUTO_INCREMENT, Firstname varchar(255) NOT NULL, Lastname varchar(255) NOT NULL, Email varchar(255) UNIQUE, Age int(2) NOT NULL, dateofbirth date NOT NULL, Department varchar(255) DEFAULT 'Tech', CHECK (Age>=21));
```
###### Query OK, 0 rows affected, 2 warnings (0.03 sec)
### INSERT INTO

```syntax
INSERT INTO Constraints(Firstname,Lastname,Email,Age,dateofbirth) VALUES ('Prasanna','venkatesh','prasanna@freshclass.com','21','2001-01-20');
```
###### Query OK, 1 row affected (0.01 sec)
```syntax
DESC Constraints;
```
| Field       | Type         | Null | Key | Default | Extra          |
|:------------|:-------------|:-----|:---:|:-------:|:---------------|
| Id          | int          | NO   | PRI | NULL    | auto_increment |
| Firstname   | varchar(255) | NO   |     | NULL    |                |
| Lastname    | varchar(255) | NO   |     | NULL    |                |
| Email       | varchar(255) | YES  | UNI | NULL    |                |
| Age         | int          | NO   |     | NULL    |                |
| dateofbirth | date         | NO   |     | NULL    |                |
| Department  | varchar(255) | YES  |     | Tech    |                |

###### 7 rows in set (0.01 sec)
### SELECT

```syntax
SELECT * FROM Constraints;
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:---|:----------|:---------|:------------------------|:----|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |

###### 1 row in set (0.01 sec)

### FOREIGN KEY

```syntax
CREATE TABLE foreignkey(studId int PRIMARY KEY AUTO_INCREMENT, mark int(3), Id int, FOREIGN KEY(Id) REFERENCES constraints(Id));
```
###### Query OK, 0 rows affected, 1 warning (0.05 sec)
### INSERT INTO

```syntax
INSERT INTO foreignkey(mark,PersonId) VALUES (100,1);
```
###### Query OK, 1 row affected (0.01 sec)
```syntax
DESC foreignkey;
```

| Field  | Type | Null | Key | Default | Extra |
|:-------|:-----|:-----|:---:|:--------|:------|
| studId | int  | NO   | PRI | NULL    |       |
| mark   | int  | YES  |     | NULL    |       |
| Id     | int  | YES  | MUL | NULL    |       |

###### 3 rows in set (0.00 sec)
### SELECT

```syntax
SELECT * FROM foreignkey;
```
| studId | mark | PersonId |
|:-------|:-----|:---------|
|      1 |  100 |        1 |

###### 1 row in set (0.01 sec)