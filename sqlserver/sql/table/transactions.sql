
create table transactions (
  id bigint primary key,
  transaction_date date,
  description varchar(40),
  quantity int
);
