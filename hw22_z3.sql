/*
Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE.
*/   

create table hw22.orders
(
    orderid int not null primary key,
    employeeid  varchar(5) not null,
    amount   decimal(8 , 2) not null,
    orderstatus varchar(15) not null
);

insert into hw22.orders (orderid, employeeid, amount, orderstatus)
values  (1, 'e03', 15.00, 'OPEN'),
		(2, 'e01', 25.50, 'OPEN'),
        (3, 'e05', 100.70, 'CLOSED'),
        (4, 'e02', 22.18, 'OPEN'),
        (5, 'e04', 9.50, 'CANCELLED'),
		(6, 'e04', 99.99, 'OPEN');

SELECT orderid, orderstatus,
CASE
  WHEN orderstatus = 'OPEN' THEN "Order is in open state."
  WHEN orderstatus = 'CLOSED' THEN "Order is closed."
  ELSE "Order is cancelled"
END AS order_summary
FROM hw22.orders