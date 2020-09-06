create table pay_attributes (
	invoice_num serial primary key,
	pay_amount numeric,
	account_num integer,
	date_created timestamp,
	late_fee numeric,
	due_date timestamp,
	financing_number integer
)

create table customer_attributes (
	account_number serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	address varchar(100),
	phone_number integer,
	credit_score integer
)

create table financing (
	financing_number serial primary key,
	car_id integer,
	financing_amount numeric,
	financing_provider varchar(50),
	rate numeric,
	term smallint,
	unpaid_balance integer
)

create table car_attributes (
	car_id serial primary key,
	make varchar(50),
	model varchar(50),
	year smallint,
	full_amount numeric,
	account_number integer
)

create table maintenance (
	workorder serial primary key,
	car_id integer,
	order_created timestamp,
	order_done timestamp,
	price numeric,
	summary varchar(250),
	employee_id smallint
)

create table insurance_coverage (
	insurance_number serial primary key,
	insurance_company varchar(50),
	car_id integer
)

alter table customer_attributes
add column phone_number numeric

insert into customer_attributes (
	account_number,
	first_name,
	last_name,
	address,
	phone_number,
	credit_score,
	created_on, 
	created_at
)
values
('2', 'Jotaro', 'Kujo', '8456 Kanegawa Prefecture', '888674254', '777'),
('3', 'Keisha', 'Cole', '1234 Music Lane', '8790007765', '879'),
('4', 'Kanye', 'West', '6789 MadeUp Drive', '6785554444', '455'),
('5', 'Roronoa', 'Zoro', 'Boys Room Thousand Sunny', '0905673215', '651'),
('6', 'Sonic', 'TheHedgehog', 'Green Hill Zone', '9875664352', '999'),
('7', 'Terry', 'Styles', '1225 Lala Land Drive', '0000000000', '432'),
('8', 'Jake', 'FromStateFarm', 'State Farm Farm', '11223334444', '765'),
('9', 'Ash', 'Ketchum', 'Kanto Region', '098765765', '730'),
('10', 'Ben', 'Tennyson', 'Grandpas RV', '123456788', '400')

insert into car_attributes (
	car_id,
	make,
	model,
	year,
	full_amount,
	account_number
)
values
('1', 'FFXV', 'Regalia', '2017', '250000', '2'),
('2', 'Ford', 'Explorer Sport-Trac', '2004', '20000', '1'),
('3', 'Porsche', 'Panamera', '2020', '87000', '3'),
('4', 'Gotham', 'Rat-Mobile', '2121', '678000', '4'),
('5', 'Water 7', 'Thousand Sunny', '2008', '999999', '5'),
('6', 'Sonics', 'Legs', '1999', '50', '6'),
('7', 'Dodge', 'Ram', '2008', '30000', '7'),
('8', 'State Farm', 'Expire', '2010', '5000', '8'),
('9', 'Pokemon', 'Lapras', '2000', '20000', '9'),
('10', 'BeatUp', 'Grandpas RV', '1980', '300', '10')

insert into financing (
	financing_number,
	financing_amount,
	financing_provider,
	rate,
	term,
	unpaid_balance,
	car_id
)
values
('1', '2000', 'Tevin Styles', '200', '14', '400', '1'),
('2', '20000', 'SpeedWagon-San', '1000', '7', '10000', '2'),
('3', '22000', 'Keyshia', '2200', '30','2200', '3'),
('4', '99999', 'Yeezy', '999', '20', '999999', '4'),
('5', '50000', 'Nami', '3000', '365', '9000', '5'),
('6', '1222', 'Amy', '12', '1', '1222', '6'),
('7', '2000', 'Him', '200', '30', '200', '7'),
('8', '3500', 'State Fatm', '200', '30', '3100', '8'),
('9', '200', 'Ash', '10', '7', '93', '9'),
('10', '50', 'Grandpa', '5', '30', '25', '10')

insert into insurance_coverage (
	insurance_number,
	insurance_company,
	car_id
)
values
('1', 'AskDad', '1'),
('2', 'SpeedWagon Foundation', '2'),
('3', 'Republic', '3'),
('4', 'GOOD Music', '4'),
('5', 'Strawhats', '5'),
('6', 'AMY', '6'),
('7', 'H3Knows', '7'),
('8', 'StateFarm', '8'),
('9', 'Mommy', '9'),
('10', 'Plumbers', '10')

insert into pay_attributes (
	invoice_num,
	pay_amount,
	date_created,
	late_fee,
	due_date,
	account_number,
	financing_number
)
values
('1', '200', '2020-09-01', '200', '2020-09-15', '1', '1'),
('2', '1000', '2020-09-04', '100', '2020-09-11', '2', '2'),
('3', '2200', '2020-08-10', '200', '2020-09-10','3', '3'),
('4', '999', '2020-08-21', '0', '2020-09-11', '4', '4'),
('5', '3000', '2019-12-30', '30', '2020-12-31', '5', '5'),
('6', '12', '2020-09-05', '125', '2020-09-06', '6', '6'),
('7', '200', '2020-08-31', '2000', '2020-10-1', '7', '7'),
('8', '200', '2020-09-01', '50', '2020-10-01', '8', '8'),
('9', '10', '2020-09-01', '5', '2020-09-08', '9', '9'),
('10', '5', '2020-09-05', '50', '2020-09-30', '10', '10')

insert into maintenance (
	workorder,
	order_created,
	order_done,
	price,
	summary,
	employee_id,
	car_id
 )
values
('1', '2020-08-10', '2020-09-01', '200', 'Stero Install', '1', '1'),
('2', '2019-12-30', '2020-09-04', '100', 'Fixing The Trunk', '2', '10'),
('3', '2020-08-21', '2020-08-10', '200', 'RE-installing Side-Laser','2', '10'),
('4', '2020-09-01', '2020-08-21', '0', 'Refilling Cola Reserves', '2', '5'),
('5', '2020-09-05', '2019-12-30', '30', 'Fixing Muffler', '1', '10'),
('6', '2020-07-14', '2020-09-05', '125', 'Replacing tires(off-road)', '2', '10'),
('7', '2020-05-20', '2020-08-31', '2000', 'Window Tints', '17', '4'),
('8', '2020-01-30', '2020-09-01', '50', 'Wrapping the Whip', '1', '8'),
('9', '2020-06-01', '2020-09-01', '5', 'Changing Brake Light', '2', '1'),
('10', '2020-04-13', '2020-09-05', '50', 'Repaint', '1', '10')

update customer_attributes
set created_on = '2020-06-11', created_at = '4:16pm'
where account_number = 10

select first_name, last_name, created_on, created_at
from customer_attributes

select *
from customer_attributes
where credit_score > 650

select sum(pay_amount - 50)
from pay_attributes
where account_number = 1

select customer_attributes.first_name, last_name, sum(pay_amount + late_fee) as "new payment amount"
from customer_attributes
join pay_attributes on customer_attributes.account_number = pay_attributes.account_number
group by customer_attributes.first_name, customer_attributes.last_name
having first_name = 'Sonic'

select pay_amount, due_date
from pay_attributes

create view pay_details as
select pay_amount, due_date
from pay_attributes
where pay_attributes.account_number like  "_%"

select order_created
from maintenance

select maintenance.order_created, customer_attributes.first_name, car_attributes.make, car_attributes.model
from maintenance
join car_attributes on maintenance.car_id = car_attributes.car_id
join customer_attributes on car_attributes.account_number = car_attributes.account_number
