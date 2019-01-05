
create table readings (
  id bigint IDENTITY(1000,1),
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	datetime,
  reading    	decimal(15,2)
);


insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 10:34:09', 72.38);

insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 11:34:09', 72.38);

insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 12:34:09', 72.38);

insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 18:34:09', 72.38);


insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 20:12:14', 72.38);


insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 21:12:14', 72.38);

insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 22:12:14', 72.38);

insert into readings
(sensor_id, notes, reading_time, reading)
values 
('sensor1', 'temperature', '20120618 23:12:14', 72.38);


