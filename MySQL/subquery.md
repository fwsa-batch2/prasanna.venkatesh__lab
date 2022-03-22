# MySQL Subquery

```syntax
SELECT * FROM Constraints;
```
| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | NULL       |

```syntax
SELECT * FROM foreignkey;
```
| studId | mark | Id |
|:-------|:-----|:---------|
|      1 |  100 |        1 |
|      2 |  60  |        2 |

### single row subquery

```syntax
 SELECT Email FROM Constraints WHERE Id = (SELECT Id FROM foreignkey WHERE studId = 1);
```

| Email                   |
|:------------------------|
| prasanna@freshclass.com |


### multiple row subquery

```syntax
 SELECT Email FROM Constraints WHERE Id IN (SELECT Id FROM foreignkey WHERE mark < 70);
```

| Email                   |
|:------------------------|
| vimal@freshclass.com    |