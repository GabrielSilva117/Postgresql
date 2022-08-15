create table car (
	car_uid UUID PRIMARY KEY NOT NULL,
	make VARCHAR(100)	NOT NULL,
	model VARCHAR(100)	NOT NULL,
	price DECIMAL(10,2)	NOT NULL
);

create table person (
	person_uid UUID PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50)	 NOT NULL,	
	gender VARCHAR(7)	NOT NULL,
	date_of_birth DATE	NOT NULL,
	email VARCHAR(50)	,
	country_of_birth VARCHAR(50) NOT NULL,
  car_uid UUID REFERENCES car (car_uid),
  UNIQUE(car_uid)
);

insert into person (person_uid, first_name, last_name, gender, date_of_birth, email, country_of_birth) values (uuid_generate_v4(), 'Joanna', 'Bowden', 'Female', '2000/08/01', 'jbowden0@seesaa.net', 'China');
insert into person (person_uid, first_name, last_name, gender, date_of_birth, email, country_of_birth) values (uuid_generate_v4(), 'Gabriel', 'Ferreira', 'Male', '2002/09/09', 'gabriel@gmail', 'Brazil');
insert into person (person_uid, first_name, last_name, gender, date_of_birth, email, country_of_birth) values (uuid_generate_v4(), 'Moacir', 'Henrique', 'Male', '1990/10/05', 'moacircudepato@gmail.com', 'Brazil');

insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'GMC', 'Acadia', '17662.69');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Suzuki', 'Swift', '82363.99');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Acadia', 'Sterling', '87665.99');
