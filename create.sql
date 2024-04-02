drop schema cccat14 cascade;

create schema cccat14;

create table cccat14.account (
    account_id uuid,
    name text,
    email text,
    cpf text,
    car_plate text,
    is_passenger boolean,
    is_driver boolean,
    password text,
    password_algorithm text,
    salt text
);

create table cccat14.ride (
    ride_id uuid,
    passenger_id uuid,
    driver_id uuid,
    status text,
    fare numeric,
    distance numeric,
    from_lat numeric,
    from_long numeric,
    to_lat numeric,
    to_long numeric,    
    date timestamp
);



create table cccat14.position (
    position_id uuid primary key,
    ride_id uuid,
    lat numeric,
    long numeric,
    date timestamp
);

drop schema cccat16 cascade;

create schema cccat16;

create table cccat16.account (
	account_id uuid primary key,
	name text not null,
	email text not null,
	cpf text not null,
	car_plate text null,
	is_passenger boolean not null default false,
	is_driver boolean not null default false
);