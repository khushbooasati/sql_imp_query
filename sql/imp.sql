1)mysql> select o.ord_no as "orders no", o.ord_date, o.purch_amt, c.cust_name as "customer name",c.grade, b.name as "salesman",b.commission from orders
o inner join customer c on o.customer_id = c.customer_id  inner join salesman b on o.salesman_id = b.salesman_id;
+-----------+------------+-----------+---------------+-------+----------+------------+
| orders no | ord_date   | purch_amt | customer name | grade | salesman | commission |
+-----------+------------+-----------+---------------+-------+----------+------------+
|         1 | 2022-10-05 |    120.20 | Annu          | 100   | anamika  |      0.400 |
|         2 | 2022-11-05 |    150.20 | Bnnu          | 200   | bala     |      0.500 |
|         3 | 2022-12-05 |    130.20 | channu        | 300   | chanda   |      0.400 |
+-----------+------------+-----------+---------------+-------+----------+------------+

2)mysql> select c.cust_name as "customer name", c.city, b.name as "salesman", b.city, b.commission from customer c inner join salesman b on c.salesman_i
d = b.salesman_id where b.commission>0.12 and c.city <> b.city;
+---------------+-------+----------+------+------------+
| customer name | city  | salesman | city | commission |
+---------------+-------+----------+------+------------+
| channu        | damoh | chanda   | hata |      0.400 |
+---------------+-------+----------+------+------------+

3)(j)
mysql> (select u1.id, u1.name, u1.grade,"new_user1" as source from new_user1 u1 left join new_user2 u2 on u1.id = u2.id where u1.grade>u2.grade)union(select u1.id , u1.name,u1.grade,"new_user2" as source from new_user2 u1 left join new_user1 u2 on u1.id = u2.id where u1.grade>u2.grade);
+----+----------+-------+-----------+
| id | name     | grade | source    |
+----+----------+-------+-----------+
|  1 | khushboo |   200 | new_user2 |
|  3 | siya     |   300 | new_user2 |
+----+----------+-------+-----------+

4)(j)

mysql> select u1.id, u1.name, u1.grade from new_user2 u1 left join new_user1 u2 on u1.id = u2.id where u1.grade>u2.grade;
+----+----------+-------+
| id | name     | grade |
+----+----------+-------+
|  1 | khushboo |   200 |
|  3 | siya     |   300 |
+----+----------+-------+

2 rows in set (0.00 sec)
5)
select c.cust_name as "customer name", c.city, b.name as "salesman", b.city, b.commission from customer c inner join salesman b on c.salesman_i
d = b.salesman_id where b.commission>0.12 and c.city <> b.city;
+---------------+-------+----------+------+------------+
| customer name | city  | salesman | city | commission |
+---------------+-------+----------+------+------------+
| channu        | damoh | chanda   | hata |      0.400 |
+---------------+-------+----------+------+------------+

6)(g)
mysql> select o.ord_no as "orders no", o.ord_date, o.purch_amt, c.cust_name as "customer name",c.grade, b.name as "salesman",b.commission from orders
o inner join customer c on o.customer_id = c.customer_id  inner join salesman b on o.salesman_id = b.salesman_id;
+-----------+------------+-----------+---------------+-------+----------+------------+
| orders no | ord_date   | purch_amt | customer name | grade | salesman | commission |
+-----------+------------+-----------+---------------+-------+----------+------------+
|         1 | 2022-10-05 |    120.20 | Annu          | 100   | anamika  |      0.400 |
|         2 | 2022-11-05 |    150.20 | Bnnu          | 200   | bala     |      0.500 |
|         3 | 2022-12-05 |    130.20 | channu        | 300   | chanda   |      0.400 |
+-----------+------------+-----------+---------------+-------+----------+------------+

3 rows in set (0.00 sec)

7)
select * from orders natural join customer natural join salesman;
+-------------+--------+-------------+--------+-----------+------------+-----------+-------+---------+------------+
| salesman_id | city   | customer_id | ord_no | purch_amt | ord_date   | cust_name | grade | name    | commission |
+-------------+--------+-------------+--------+-----------+------------+-----------+-------+---------+------------+
|           1 | indore |           1 |      1 |    120.20 | 2022-10-05 | Annu      | 100   | anamika |      0.400 |
|           2 | bhopal |           2 |      2 |    150.20 | 2022-11-05 | Bnnu      | 200   | bala    |      0.500 |
+-------------+--------+-------------+--------+-----------+------------+-----------+-------+---------+------------+



