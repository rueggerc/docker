
create table products (
  id bigint IDENTITY(1000,1),
  product_id varchar(40),
  description varchar(40),
  quantity int
);


insert into products
(product_id, description, quantity)
values 
('P000001', 'Product 1', 100);

insert into products
(product_id, description, quantity)
values 
('P000002', 'Product 2', 200);

insert into products
(product_id, description, quantity)
values 
('P000003', 'Product 3', 300);
