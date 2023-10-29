ALTER TABLE ONLY categories
	ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);

ALTER TABLE ONLY authors
	ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);

ALTER TABLE ONLY borrow
	ADD CONSTRAINT borrow_pkey PRIMARY KEY (borrow_id);

ALTER TABLE ONLY books
	ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);

ALTER TABLE ONLY users
	ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);

ALTER TABLE ONLY staffs
	ADD CONSTRAINT staffs_pkey PRIMARY KEY (staff_id);



ALTER TABLE ONLY compose
	ADD CONSTRAINT fk_compose_author FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE;

ALTER TABLE ONLY compose
	ADD CONSTRAINT fk_compose_book FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE;

ALTER TABLE ONLY classify
	ADD CONSTRAINT fk_classify_book FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE;

ALTER TABLE ONLY classify
	ADD CONSTRAINT fk_classify_category FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE;

ALTER TABLE ONLY register 
	ADD CONSTRAINT fk_register_staff FOREIGN KEY (staff_id) REFERENCES staffs(staff_id) ON DELETE SET NULL ;

ALTER TABLE ONLY register 
	ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE SET NULL ;