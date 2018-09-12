use rueggerllc;
create table book (
  id 		bigint not null primary key,
  isbn 		varchar(40) not null,
  title		varchar(40) not null,
  author	varchar(40) not null
);

insert into book(id,isbn,title,author) values (0, "139393939393", "Spring In Action", "Craig Walls");
insert into book(id,isbn,title,author) values (1, "372772882266", "I will Find You", "Joe Kenda");