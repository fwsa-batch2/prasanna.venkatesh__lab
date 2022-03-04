# Join

![VQ5XP](https://user-images.githubusercontent.com/83388298/153813424-8e766761-843e-4f14-8587-672a8ad78848.png)

### INNER JOIN

```syntax
SELECT * FROM markclass_A INNER JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Id   | Mark | Name     | Id   | Mark | Name      |
|:----:|:----:|:--------:|:----:|:----:|:---------:|
|    2 |    6 | Prasanna |    2 |    6 | Venkatesh |

###### 1 row in set (0.00 sec)

```syntax
SELECT markclass_A.Mark, markclass_B.Mark FROM markclass_A INNER JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Mark | Mark |
|:----:|:----:|
|    6 |    6 |

###### 1 row in set (0.01 sec)

### LEFT JOIN

```syntax
SELECT * FROM markclass_A LEFT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Id   | Mark | Name     | Id   | Mark | Name      |
|:----:|:----:|:--------:|:----:|:----:|:---------:|
|    1 |    5 | Vimal    | NULL | NULL | NULL      |
|    2 |    6 | Prasanna |    2 |    6 | Venkatesh |

###### 2 rows in set (0.00 sec)

```syntax
 SELECT markclass_A.Mark, markclass_B.Mark FROM markclass_A LEFT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Mark | Mark |
|:----:|:----:|
|    5 | NULL |
|    6 |    6 |

###### 2 rows in set (0.00 sec)

```syntax
 SELECT markclass_A.Mark, markclass_B.Mark FROM markclass_A LEFT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark WHERE markclass_B.Mark is NOT NULL;
```
| Mark | Mark |
|:----:|:----:|
|    6 |    6 |

###### 1 row in set (0.00 sec)

### RIGHT JOIN

```syntax
SELECT * FROM markclass_A RIGHT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Id   | Mark | Name     | Id   | Mark | Name      |
|:----:|:----:|:--------:|:----:|:----:|:---------:|
| NULL | NULL | NULL     |    1 |    4 | Raj       |
|    2 |    6 | Prasanna |    2 |    6 | Venkatesh |

###### 2 rows in set (0.00 sec)

```syntax
 SELECT markclass_A.Mark, markclass_B.Mark FROM markclass_A RIGHT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark;
```
| Mark | Mark |
|:----:|:----:|
| NULL |    4 |
|    6 |    6 |

###### 2 rows in set (0.00 sec)

```syntax
 SELECT markclass_A.Mark, markclass_B.Mark FROM markclass_A RIGHT JOIN markclass_B ON markclass_A.Mark = markclass_B.Mark WHERE markclass_A.Mark is NOT NULL;
```
| Mark | Mark |
|:----:|:----:|
|    6 |    6 |

###### 1 row in set (0.00 sec)

### CROSS JOIN

```syntax
SELECT * FROM markclass_A CROSS JOIN markclass_B;
```
| Id   | Mark | Name     | Id   | Mark | Name      |
|:----:|:----:|:--------:|:----:|:----:|:---------:|
|    2 |    6 | Prasanna |    1 |    4 | Raj       |
|    1 |    5 | Vimal    |    1 |    4 | Raj       |
|    2 |    6 | Prasanna |    2 |    6 | Venkatesh |
|    1 |    5 | Vimal    |    2 |    6 | Venkatesh |

###### 4 rows in set (0.00 sec)

```syntax
SELECT * FROM markclass_A CROSS JOIN markclass_B WHERE markclass_A.Mark = markclass_B.Mark;
```
| Id   | Mark | Name     | Id   | Mark | Name      |
|:----:|:----:|:---------|:----:|:----:|:----------|
|    2 |    6 | Prasanna |    2 |    6 | Venkatesh |

###### 1 row in set (0.00 sec)