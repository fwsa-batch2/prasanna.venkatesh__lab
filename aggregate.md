# MySQL Aggregate functions

```syntax
SELECT * FROM studentslist;
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | NULL       |

###### 2 rows in set (0.00 sec)

### MIN
```syntax
SELECT MIN(age) FROM Studentslist;
```
| MIN(age) |
|:---------|
|       20 |

###### 1 row in set (0.01 sec)

### MAX
```syntax
SELECT MAX(age) FROM Studentslist;
```
| MAX(age) |
|:---------|
|       21 |

###### 1 row in set (0.00 sec)

### AVG
```syntax
SELECT MAX(age) FROM Studentslist;
```
| AVG(age) |
|:---------|
|  20.5000 |

###### 1 row in set (0.00 sec)

### COUNT
```syntax
SELECT COUNT(age) FROM Studentslist;
```
| COUNT(age) |
|:---------|
|       2 |

###### 1 row in set (0.00 sec)

### SUM
```syntax
SELECT MAX(age) FROM Studentslist;
```
| SUM(age) |
|:---------|
|       41 |

###### 1 row in set (0.00 sec)