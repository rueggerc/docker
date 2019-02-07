
create table dummy (
  id serial not null primary key,
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	timestamp with time zone default (current_timestamp at time zone 'UTC'),
  temperature   decimal(15,2),
  humidity      decimal(15,2)
);

insert into dummy
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', TIMESTAMP '2019-01-13 15:36:38', 35.11, 88.50);
