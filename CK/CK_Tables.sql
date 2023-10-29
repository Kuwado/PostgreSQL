CREATE TABLE books (
	book_id INT NOT NULL,
	book_name VARCHAR(100) NOT NULL,
	location VARCHAR(30) NOT NULL,
	quantity INT NOT NULL,
	publishing_year VARCHAR(4) NOT NULL,
	language VARCHAR(20) NOT NULL );

CREATE TABLE users (
	user_id INT NOT NULL,
	u_first_name VARCHAR(30) NOT NULL,
	u_last_name VARCHAR(30) NOT NULL,
	u_date_of_birth DATE NOT NULL,
	u_gmail VARCHAR(30) NOT NULL,
	u_phone_number VARCHAR(30) NOT NULL,
	address VARCHAR(100) NOT NULL,
	cccd VARCHAR(20) NOT NULL );

CREATE TABLE staffs (
	staff_id INT NOT NULL,
	s_first_name VARCHAR(30) NOT NULL,
	s_last_name VARCHAR(30) NOT NULL,
	s_date_of_birth DATE NOT NULL,
	s_gmail VARCHAR(30) NOT NULL,
	s_phone_number VARCHAR(30) NOT NULL );
	
CREATE TABLE register (
	user_id INT NOT NULL,
	staff_id INT NOT NULL,
	register_day DATE NOT NULL,
	r_exdate DATE NOT NULL );

CREATE TABLE borrow (
	borrow_id INT NOT NULL,
	user_id INT NOT NULL,
	book_id INT NOT NULL,
	borrow_day DATE NOT NULL,
	expiration_date DATE NOT NULL,
	borrow_quantity INT NOT NULL,
	return_day DATE NOT NULL,
	status INT NOT NULL );
	

CREATE TABLE late (
	borrow_id INT NOT NULL,
	user_id INT NOT NULL,
	money MONEY NOT NULL,
	l_status INT NOT NULL );

CREATE TABLE compose (
	author_id INT NOT NULL,
	book_id INT NOT NULL );

CREATE TABLE authors (
	author_id INT NOT NULL,
	a_first_name VARCHAR(30) NOT NULL,
	a_last_name VARCHAR(30) NOT NULL );

CREATE TABLE classify (
	book_id INT NOT NULL,
	category_id INT NOT NULL );

CREATE TABLE categories (
	category_id INT NOT NULL,
	category_name VARCHAR(100) NOT NULL );