
create table orders (
  id bigint IDENTITY(1000,1),
  product_id varchar(40),
  quantity int,
  date_ordered date,
  amount decimal(15,2)
);

create table items (
  id bigint primary key,
  msg varchar(40)
);

insert into orders
(product_id, quantity, date_ordered, amount)
values 
('P33001', 42, GETDATE(), 43.11);

insert into orders
(product_id, quantity, date_ordered, amount)
values 
('P33002', 44, GETDATE(), 68.33);

insert into orders
(product_id, quantity, date_ordered, amount)
values 
('P33002', 99, GETDATE(), 598.02);