
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
('sensor1', 'living room', TIMESTAMP '2019-09-02 15:36:38', 77.11, 88.50);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor2', 'dining room', TIMESTAMP '2019-10-12 15:36:38', 68.44, 93.51);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', TIMESTAMP '2019-01-13 15:36:38', 35.11, 67.02);

