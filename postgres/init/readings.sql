
create table readings (
  id bigint not null primary key,
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	timestamp with time zone default (current_timestamp at time zone 'EST'),
  reading    	decimal(15,2)
);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1000, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 08:36:38', 72.11);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1001, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 09:36:38', 74.00);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1002, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 10:36:38', 81.66);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1003, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 11:36:38', 82.89);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1004, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 12:36:38', 80.12);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1005, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 15:36:38', 85.21);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1006, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 16:36:38', 90.33);

insert into readings
(id, sensor_id, notes, reading_time, reading)
values 
(1007, 'sensor1', 'temperature', TIMESTAMP '2019-01-06 18:36:38', 92.54);