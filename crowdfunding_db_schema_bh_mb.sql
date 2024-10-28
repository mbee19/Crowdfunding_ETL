-- create table schema
/*
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
*/

-- category table
CREATE TABLE category(
	category_id VARCHAR(4) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id)
);

-- subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

-- contacts table
CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)
);


-- campaign table
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- check that each table schema was created correctly

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;

-- import appropriate .csv files to each table

-- verify data in each table

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;


