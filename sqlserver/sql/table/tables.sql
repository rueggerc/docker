use rueggerllc;
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