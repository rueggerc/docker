
create table fidelity (
  id 			serial not null primary key,
  transaction_date	timestamp,
  debit_credit	 	varchar(40),
  description		varchar(40),
  memo			varchar(40),
  amount    		decimal(15,2)
);
