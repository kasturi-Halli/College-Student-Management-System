mysql> CREATE DATABASE college_db;
Query OK, 1 row affected (0.14 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| college_db         |
| information_schema |
| kashh              |
| mysql              |
| performance_schema |
| student_db         |
| sys                |
+--------------------+
7 rows in set (0.07 sec)

mysql> USE college_db;
Database changed
mysql> CREATE TABLE students(
    -> stud_id INT,
    -> stud_name VARCHAR(50),
    -> age INT,
    -> course VARCHAR(50),
    -> marks INT,
    -> department VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.23 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_college_db |
+----------------------+
| students             |
+----------------------+
1 row in set (0.07 sec)

mysql> DESC students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | int         | YES  |     | NULL    |       |
| stud_name  | varchar(50) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| course     | varchar(50) | YES  |     | NULL    |       |
| marks      | int         | YES  |     | NULL    |       |
| department | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

mysql> INSERT INTO students
    -> VALUES (1,'Rahul',20,'Java',85,'CSE');
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO students VALUES
    -> (2,'Sneha',21,'Python',90,'CSE'),
    -> (3,'Arun',22,'Data Science',88,'IT'),
    -> (4,'Kiran',20,'Java',75,'IT'),
    -> (5,'Neha',23,'Python',92,'CSE');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM students;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       1 | Rahul     |   20 | Java         |    85 | CSE        |
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
|       4 | Kiran     |   20 | Java         |    75 | IT         |
|       5 | Neha      |   23 | Python       |    92 | CSE        |
+---------+-----------+------+--------------+-------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM students;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       1 | Rahul     |   20 | Java         |    85 | CSE        |
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
|       4 | Kiran     |   20 | Java         |    75 | IT         |
|       5 | Neha      |   23 | Python       |    92 | CSE        |
+---------+-----------+------+--------------+-------+------------+
5 rows in set (0.00 sec)

mysql> SELECT stud_name, course FROM students;
+-----------+--------------+
| stud_name | course       |
+-----------+--------------+
| Rahul     | Java         |
| Sneha     | Python       |
| Arun      | Data Science |
| Kiran     | Java         |
| Neha      | Python       |
+-----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT DISTINCT course FROM students;
+--------------+
| course       |
+--------------+
| Java         |
| Python       |
| Data Science |
+--------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM students
    -> ORDER BY marks DESC;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       5 | Neha      |   23 | Python       |    92 | CSE        |
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
|       1 | Rahul     |   20 | Java         |    85 | CSE        |
|       4 | Kiran     |   20 | Java         |    75 | IT         |
+---------+-----------+------+--------------+-------+------------+
5 rows in set (0.02 sec)

mysql> SELECT * FROM students
    -> LIMIT 3;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       1 | Rahul     |   20 | Java         |    85 | CSE        |
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
+---------+-----------+------+--------------+-------+------------+
3 rows in set (0.02 sec)

mysql> SELECT * FROM students
    -> WHERE age = 20;
+---------+-----------+------+--------+-------+------------+
| stud_id | stud_name | age  | course | marks | department |
+---------+-----------+------+--------+-------+------------+
|       1 | Rahul     |   20 | Java   |    85 | CSE        |
|       4 | Kiran     |   20 | Java   |    75 | IT         |
+---------+-----------+------+--------+-------+------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM students
    -> WHERE marks > 85;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
|       5 | Neha      |   23 | Python       |    92 | CSE        |
+---------+-----------+------+--------------+-------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM students
    -> WHERE course = 'Java' OR course = 'Python';
+---------+-----------+------+--------+-------+------------+
| stud_id | stud_name | age  | course | marks | department |
+---------+-----------+------+--------+-------+------------+
|       1 | Rahul     |   20 | Java   |    85 | CSE        |
|       2 | Sneha     |   21 | Python |    90 | CSE        |
|       4 | Kiran     |   20 | Java   |    75 | IT         |
|       5 | Neha      |   23 | Python |    92 | CSE        |
+---------+-----------+------+--------+-------+------------+
4 rows in set (0.04 sec)

mysql> SELECT * FROM students
    -> WHERE marks BETWEEN 80 AND 90;
+---------+-----------+------+--------------+-------+------------+
| stud_id | stud_name | age  | course       | marks | department |
+---------+-----------+------+--------------+-------+------------+
|       1 | Rahul     |   20 | Java         |    85 | CSE        |
|       2 | Sneha     |   21 | Python       |    90 | CSE        |
|       3 | Arun      |   22 | Data Science |    88 | IT         |
+---------+-----------+------+--------------+-------+------------+
3 rows in set (0.00 sec)

mysql> UPDATE students
    -> SET marks = 95
    -> WHERE stud_id = 1;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students
    -> SET department = 'ECE'
    -> WHERE stud_id = 4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE students
    -> SET marks = marks + 5
    -> WHERE course = 'Python';
Query OK, 2 rows affected (0.03 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> DELETE FROM students
    -> WHERE stud_id = 5;
Query OK, 1 row affected (0.01 sec)

mysql> DELETE FROM students
    -> WHERE marks < 80;
Query OK, 1 row affected (0.03 sec)

mysql> DELETE s1 FROM students s1
    -> INNER JOIN students s2
    -> WHERE s1.stud_id > s2.stud_id
    -> AND s1.stud_name = s2.stud_name;
Query OK, 0 rows affected (0.05 sec)

mysql> SELECT COUNT(*) FROM students;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.08 sec)

mysql> SELECT SUM(marks) FROM students;
+------------+
| SUM(marks) |
+------------+
|        278 |
+------------+
1 row in set (0.01 sec)

mysql> SELECT MIN(marks) FROM students;
+------------+
| MIN(marks) |
+------------+
|         88 |
+------------+
1 row in set (0.03 sec)

mysql> SELECT MAX(marks) FROM students;
+------------+
| MAX(marks) |
+------------+
|         95 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(marks) FROM students;
+------------+
| AVG(marks) |
+------------+
|    92.6667 |
+------------+
1 row in set (0.02 sec)

mysql>