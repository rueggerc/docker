
create table dummy_transactions (
  id bigint 		IDENTITY(1000,1),
  transaction_date 	date,
  post_date  		date,
  card_no    		varchar(40),
  description 		varchar(40),
  category 		varchar(40),
  debit 		decimal(15,2),
  credit 		decimal(15,2)
);


insert into dummy_transactions
(transaction_date, post_date,card_no,description,category,debit,credit)
values
('2018-10-17', '2018-10-18', '2848','britbox','Entertainment',34.87,0.0);
