# MySQL Views

```syntax
SELECT * FROM studentslist;
```

| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | NULL       |

```syntax
CREATE VIEW Age_equal_21 AS SELECT * FROM studentslist WHERE Age = 21;
```

```syntax
SELECT * FROM Age_equal_21:
```

| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |

```syntax
CREATE OR REPLASE VIEW Age_equal_21&20 AS SELECT * FROM studentslist WHERE Age = 21 AND Age = 20;
```

```syntax
SELECT * FROM Age_equal_21&20:
```

| Id | Firstname | Lastname | Email                   | Age | dateofbirth | Department |
|:--:|:----------|:---------|:------------------------|:---:|:------------|:-----------|
|  1 | Prasanna  | venkatesh| prasanna@freshclass.com |  21 | 2001-01-20  | Tech       |
|  2 | Vimal     | raj      | vimal@freshclass.com    |  20 | 2002-01-20  | NULL       |


```syntax
RENAME TABLE old_view_name TO new_view_name;
```

```syntax
INSERT INTO view_name VALUES (column1);
```

```syntax
DELETE FROM view_name WHERE condition;
```

```syntax
DROP VIEW view_name;
```