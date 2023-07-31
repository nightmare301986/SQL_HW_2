/*
Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
*/

create table hw2.sales
(
    id int not null,
    order_date  date not null,
    bucket   varchar(45) not null
);

insert into hw2.sales (id, order_date, bucket)
values  (1, '2021-01-01', '101 to 300'),
		(1, '2021-01-02', '101 to 300'),
		(1, '2021-01-03', 'less then equal to 100'),
		(1, '2021-01-04', '101 to 300'),
		(1, '2021-01-05', 'greater then 300');