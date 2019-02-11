
create table spark_readings (
  id serial not null primary key,
  sensor_id 	varchar(40),
  notes 	varchar(40),
  reading_time	timestamp with time zone default (current_timestamp at time zone 'UTC'),
  temperature   decimal(15,2),
  humidity      decimal(15,2)
);

