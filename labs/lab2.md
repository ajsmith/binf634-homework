# LAB2 BINF634 FALL 2019 SOLKA

This lab is due by 4:30 11/18/19.

First create the database called modorg by running the commands in
sequence that are contained in lab2.sql. Using the database modorg
write sql code to answer the following questions.


# 1 (14 pts)

> Show me the structure of the table modorg

```{.sql}
MySQL [asmitl]> describe modorg;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int(11)     | NO   | PRI | NULL    |       |
| class   | varchar(45) | YES  |     | NULL    |       |
| genus   | varchar(45) | YES  |     | NULL    |       |
| species | varchar(45) | YES  |     | NULL    |       |
| nchr    | int(11)     | YES  |     | NULL    |       |
| gsize   | double      | YES  |     | NULL    |       |
| draft   | datetime    | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
```


# 2 (14 pts)

> Show me the records in modorg

```{.sql}
MySQL [asmitl]> select * from modorg;
+----+------------+----------------+--------------+------+-------+---------------------+
| id | class      | genus          | species      | nchr | gsize | draft               |
+----+------------+----------------+--------------+------+-------+---------------------+
|  1 | Bacteria   | Escherichia    | coli         |    1 | 4.639 | 1997-09-05 00:00:00 |
|  2 | Fungi      | Saccharomyces  | cerevisiae   |   16 | 0.672 | 1996-10-25 00:00:00 |
|  3 | Roundworms | Caenorhabditis | elegans      |    6 |   100 | 1998-12-16 00:00:00 |
|  4 | Insects    | Drosophila     | melanogester |    4 |   180 | 2000-03-25 00:00:00 |
|  5 | Insects    | Apis           | melifera     |   16 |   218 | 2003-12-19 00:00:00 |
|  6 | Mammals    | Mus            | musculus     |   21 |  2651 | 2010-09-23 00:00:00 |
|  7 | Mammals    | Rattus         | norvegicus   |   21 |  6597 | 2004-04-02 00:00:00 |
|  8 | Mammals    | Gorilla        | gorilla      |   24 |  3076 | 2008-11-03 00:00:00 |
|  9 | Mammals    | Homo           | sapiens      |   23 |  3038 | 2007-05-22 00:00:00 |
| 10 | Aliens     | Alienus        | area51us     | NULL |  NULL | NULL                |
+----+------------+----------------+--------------+------+-------+---------------------+
```


# 3 (14 pts)

> Show me the records in modorg where the class is Insects

```{.sql}
MySQL [asmitl]> select * from modorg where class = 'Insects';
+----+---------+------------+--------------+------+-------+---------------------+
| id | class   | genus      | species      | nchr | gsize | draft               |
+----+---------+------------+--------------+------+-------+---------------------+
|  4 | Insects | Drosophila | melanogester |    4 |   180 | 2000-03-25 00:00:00 |
|  5 | Insects | Apis       | melifera     |   16 |   218 | 2003-12-19 00:00:00 |
+----+---------+------------+--------------+------+-------+---------------------+
```


# 4 (14 pts)

> Show me the modorg records where gsize is larger than 1000

```{.sql}
MySQL [asmitl]> select * from modorg where gsize > 1000;
+----+---------+---------+------------+------+-------+---------------------+
| id | class   | genus   | species    | nchr | gsize | draft               |
+----+---------+---------+------------+------+-------+---------------------+
|  6 | Mammals | Mus     | musculus   |   21 |  2651 | 2010-09-23 00:00:00 |
|  7 | Mammals | Rattus  | norvegicus |   21 |  6597 | 2004-04-02 00:00:00 |
|  8 | Mammals | Gorilla | gorilla    |   24 |  3076 | 2008-11-03 00:00:00 |
|  9 | Mammals | Homo    | sapiens    |   23 |  3038 | 2007-05-22 00:00:00 |
+----+---------+---------+------------+------+-------+---------------------+
```


# 5 (14 pts)

> Show me the modorg records ordered by gsize

```{.sql}
MySQL [asmitl]> select * from modorg order by gsize;
+----+------------+----------------+--------------+------+-------+---------------------+
| id | class      | genus          | species      | nchr | gsize | draft               |
+----+------------+----------------+--------------+------+-------+---------------------+
| 10 | Aliens     | Alienus        | area51us     | NULL |  NULL | NULL                |
|  2 | Fungi      | Saccharomyces  | cerevisiae   |   16 | 0.672 | 1996-10-25 00:00:00 |
|  1 | Bacteria   | Escherichia    | coli         |    1 | 4.639 | 1997-09-05 00:00:00 |
|  3 | Roundworms | Caenorhabditis | elegans      |    6 |   100 | 1998-12-16 00:00:00 |
|  4 | Insects    | Drosophila     | melanogester |    4 |   180 | 2000-03-25 00:00:00 |
|  5 | Insects    | Apis           | melifera     |   16 |   218 | 2003-12-19 00:00:00 |
|  6 | Mammals    | Mus            | musculus     |   21 |  2651 | 2010-09-23 00:00:00 |
|  9 | Mammals    | Homo           | sapiens      |   23 |  3038 | 2007-05-22 00:00:00 |
|  8 | Mammals    | Gorilla        | gorilla      |   24 |  3076 | 2008-11-03 00:00:00 |
|  7 | Mammals    | Rattus         | norvegicus   |   21 |  6597 | 2004-04-02 00:00:00 |
+----+------------+----------------+--------------+------+-------+---------------------+
```


# 6 (14 pts)

> Compute the number of records for the class Mammals from modorg

```{.sql}
MySQL [asmitl]> select count(*) as 'Mammals Count' from modorg where class = 'Mammals';
+---------------+
| Mammals Count |
+---------------+
|             4 |
+---------------+
```


# 7 (16 pts)

> Create a script that will list all of the records in the modorg
> table using the strategy in slides 30 and 31

See attached script named "list_all.sql".

How to run:

```{.bash}
$ mysql -u [user] -p -h binf.gmu.edu < labs/list_all.sql
Enter password: *****
```
