create schema if not exists ruegger;
SET search_path TO ruegger,public;

create table dht22_readings (
  id serial not null primary key,
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	timestamp with time zone default (current_timestamp at time zone 'UTC'),
  temperature   decimal(15,2),
  humidity      decimal(15,2)
);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', TIMESTAMP '2019-01-13 15:36:38', 72.11, 83.50);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor2', 'living room', TIMESTAMP '2020-10-31 15:36:38', 73.12, 83.23);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor1', 'bedroom', TIMESTAMP '2020-10-30 15:36:38', 74.14, 84.24);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', TIMESTAMP '2020-04-26 15:36:38', 75.42, 84.27);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor2', 'living room', TIMESTAMP '2020-07-22 15:36:38', 76.43, 85.33);
