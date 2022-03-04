# MySQL Operators

```syntax
SELECT * FROM studentslist;
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | NULL       |

###### 2 rows in set (0.00 sec)

### AND

```syntax
SELECT * FROM studentslist WHERE Department = 'Design' AND Age = 20;
```
| Id | Firstname | Lastname | Email                | Age | dateofbirth | Department |
|:---|:----------|:---------|:---------------------|:----|:------------|:-----------|
|  2 | Vimal     | raj      | vimal@freshclass.com |  20 | 2002-01-20  | Design     |

###### 1 row in set (0.00 sec)

### OR

```syntax
SELECT * FROM studentslist WHERE Department = 'Design' AND Age = 20;
```
| Id | Firstname | Lastname | Email                | Age | dateofbirth | Department |
|:---|:----------|:---------|:---------------------|:----|:------------|:-----------|
|  2 | Vimal     | raj      | vimal@freshclass.com |  20 | 2002-01-20  | Design     |

###### 1 row in set (0.00 sec)

### NOT

```syntax
SELECT * FROM studentslist WHERE NOT Age = 21;
```
| Id | Firstname | Lastname | Email                | Age | dateofbirth | Department |
|:---|:----------|:---------|:---------------------|:----|:------------|:-----------|
|  2 | Vimal     | raj      | vimal@freshclass.com |  20 | 2002-01-20  | Design     |

###### 1 row in set (0.00 sec)

### BETWEEN

```syntax
SELECT * FROM studentslist WHERE Age BETWEEN 20 AND 22;
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:---|:----------|:---------|:------------------------|:----|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | Design     |

###### 2 rows in set (0.00 sec)

### IN

```syntax
SELECT * FROM studentslist WHERE Department IN ('Tech');
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:---|:----------|:---------|:------------------------|:----|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |

###### 1 row in set (0.01 sec)

### LIKE

```syntax
SELECT * FROM studentslist WHERE Firstname LIKE 'Vi%';
```

| Id | Firstname | Lastname | Email                | Age | dateofbirth | Department |
|:---|:----------|:---------|:---------------------|:----|:------------|:-----------|
|  2 | Vimal     | raj      | vimal@freshclass.com |  20 | 2002-01-20  | Design     |

###### 1 row in set (0.00 sec)

```syntax
SELECT * FROM studentslist WHERE Firstname LIKE '%a';
```

| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:---|:----------|:---------|:------------------------|:----|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |

###### 1 row in set (0.00 sec)
### ANY
```syntax
CREATE TABLE Markclass_A(Id int,Mark int,Name varchar(100));
```
```syntax
INSERT INTO markclass_A (Id,Mark,Name) VALUES (1,5,'Vimal'),(2,6,'Prasanna');
```
```syntax
SELECT * FROM markclass_A;
```
| Id   | Mark | Name     |
|:-----|:-----|:---------|
|    1 |    5 | Vimal    |
|    2 |    6 | Prasanna |

###### 2 rows in set (0.00 sec)
```syntax
CREATE TABLE Markclass_B(Id int,Mark int,Name varchar(100));
```
```syntax
INSERT INTO markclass_B (Id,Mark,Name) VALUES (1,4,'Raj'),(2,6,'Venkatesh');
```
```syntax
SELECT * FROM markclass_B;
```
| Id   | Mark | Name      |
|:-----|:-----|:----------|
|    1 |    4 | Raj       |
|    2 |    6 | Venkatesh |

###### 2 rows in set (0.00 sec)

```syntax
SELECT Mark FROM markclass_A WHERE mark = ANY(SELECT mark FROM markclass_B);
```
| Mark |
|:-----|
|    6 |

###### 1 row in set (0.00 sec)