
-- CREATE Databse 'myDatabase';
DROP DATABASE IF EXISTS myDatabase; 

SET default_storage_engine=InnoDB; 

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci; 

CREATE DATABASE IF NOT EXISTS myDatabase 
    DEFAULT CHARACTER SET utf8mb4 
    DEFAULT COLLATE utf8mb4_unicode_ci;
USE myDatabase;




-- Tables 
CREATE TABLE User(
		username varchar(50) NOT NULL,
		password varchar(50) NOT NULL,
		first_name varchar(50) NOT NULL,
		last_name varchar(50) NOT NULL,
		PRIMARY KEY (username));

CREATE TABLE AdministrativeUser(
		username varchar(50) NOT NULL,
		position varchar(50) NOT NULL,
		PRIMARY KEY (username),
		FOREIGN KEY (username)
			REFERENCES User (username)
      ON DELETE CASCADE   ON UPDATE CASCADE);

CREATE TABLE Category(
		category_name varchar(50) NOT NULL,
		PRIMARY KEY(category_name));

CREATE TABLE Item(
		item_ID int NOT NULL AUTO_INCREMENT,
    item_name varchar(50) NOT NULL,
		listing_date_and_time datetime NOT NULL,
		auction_length int NOT NULL CHECK (auction_length IN (1,3,5,7)),
		starting_bid decimal(15,2) NOT NULL CHECK (starting_bid>0),
		get_it_now_price decimal(15,2) NULL CHECK (get_it_now_price>0),
		CHECK (get_it_now_price>starting_bid),
		minimum_sell_price decimal(15,2) NOT NULL CHECK(minimum_sell_price>0),
		CHECK (get_it_now_price>=minimum_sell_price),
		CHECK (minimum_sell_price>=starting_bid),		
		description text NOT NULL,
		returnable boolean NOT NULL,
		conditions int NOT NULL CHECK (conditions IN (1,2,3,4,5)),
		category_name varchar(50) NOT NULL,
		username varchar(50) NOT NULL,
		PRIMARY KEY (item_ID),
		FOREIGN KEY(category_name)
			REFERENCES Category (category_name)
      ON UPDATE CASCADE,
		FOREIGN KEY (username)
			REFERENCES User (username)
      ON UPDATE CASCADE); 

CREATE TABLE Bid(
		username varchar(50) NOT NULL,
		bid_date_and_time datetime NOT NULL,
		item_ID int NOT NULL ,
		bid_amount decimal(15,2) NOT NULL CHECK (bid_amount>0),
		PRIMARY KEY (username,bid_date_and_time),
		FOREIGN KEY (username)
			REFERENCES User (username)
      ON DELETE CASCADE   ON UPDATE CASCADE,
		FOREIGN KEY (item_ID)
			REFERENCES Item (item_ID) 
      ON DELETE CASCADE   ON UPDATE CASCADE); 

CREATE TABLE Rating(
		username varchar(50) NOT NULL,
		item_ID int NOT NULL,
		number_of_stars int NOT NULL CHECK(number_of_stars IN (0,1,2,3,4,5)),
		comment text NULL,
		date_and_time datetime NOT NULL,
		PRIMARY KEY(username,item_ID),
		FOREIGN KEY(username)
			REFERENCES User (username)
      ON DELETE CASCADE   ON UPDATE CASCADE,
		FOREIGN KEY (item_ID)
			REFERENCES Item (item_ID)
      ON DELETE CASCADE   ON UPDATE CASCADE);
      
      
