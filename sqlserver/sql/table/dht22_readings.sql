create table dbo.dht22_readings (
  id bigint IDENTITY(1000,1),
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	datetime,
  temperature   decimal(15,2),
  humidity      decimal(15,2)
);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', '20220407 10:34:09', 72.11, 83.50);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor2', 'living room', '20220406 12:34:09', 73.12, 83.23);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor1', 'bedroom', '20220405 09:34:09', 74.14, 84.24);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor3', 'on patio', '20220404 07:34:09', 75.42, 84.27);

insert into dht22_readings
(sensor_id, notes, reading_time, temperature, humidity)
values 
('sensor2', 'living room', '20220403 11:55:09', 76.43, 85.33);
