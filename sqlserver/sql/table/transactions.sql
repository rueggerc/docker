create table transactions (
  id bigint 		primary key,
  transaction_date 	date,
  post_date  		date,
  card_no    		varchar(40),
  description 		varchar(40),
  category 		varchar(40),
  debit 		decimal(15,2),
  credit 		decimal(15,2)
);

