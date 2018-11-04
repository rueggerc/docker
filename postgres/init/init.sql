create table products (
  id bigint not null primary key,
  product_id varchar(40),
  description varchar(40),
  quantity int
);

insert into products
(id,product_id, description, quantity)
values
(0,'P000001', 'Product 1', 100);

insert into products
(id,product_id, description, quantity)
values
(1,'P000002', 'Product 2', 200);

insert into products
(id,product_id, description, quantity)
values
(2,'P000003', 'Product 3', 300);