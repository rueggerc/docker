
create table capitalone (
  id 			serial not null primary key,
  transaction_date	timestamp,
  posted_date		timestamp,
  card_last4 		varchar(40),
  description 		varchar(40),
  category 		varchar(40),
  debit    		decimal(15,2),
  credit    		decimal(15,2)
);
