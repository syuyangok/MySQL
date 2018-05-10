
USE cs6400_sp18_team037 ;

-- Inserting  Users --
INSERT INTO User (username,password,first_name,last_name) VALUES ('user1','pass1','Danite','Kelor');
INSERT INTO User (username,password,first_name,last_name) VALUES ('user2','pass2','Dodra','Kiney');
INSERT INTO User (username,password,first_name,last_name) VALUES ('user3','pass3','Petran','Bishop');
INSERT INTO User (username,password,first_name,last_name) VALUES ('user4','pass4','Randy','Roran');
INSERT INTO User (username,password,first_name,last_name) VALUES ('user5','pass5','Ashod','Iankel');
INSERT INTO User (username,password,first_name,last_name) VALUES ('user6','pass6','Candy','Achant');
INSERT INTO User (username,password,first_name,last_name) VALUES ('admin1','opensesame','Riley','Fuiss');
INSERT INTO User (username,password,first_name,last_name) VALUES ('admin2','opensesayou','Tonnis','Kinser');

-- Inserting 2 AdministrativeUser --
INSERT INTO AdministrativeUser (username,position) VALUES ('admin1','Technical Support');
INSERT INTO AdministrativeUser (username,position) VALUES ('admin2','Chief Techy');


-- Inserting 7 Category --
INSERT INTO Category (category_name) VALUES ('Art');
INSERT INTO Category (category_name) VALUES ('Books');
INSERT INTO Category (category_name) VALUES ('Electronics');
INSERT INTO Category (category_name) VALUES ('Home & Garden');
INSERT INTO Category (category_name) VALUES ('Sporting Goods');
INSERT INTO Category (category_name) VALUES ('Toys');
INSERT INTO Category (category_name) VALUES ('Other');

-- Inserting 5 items --
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('Garmin GPS', '2018-04-16 03:15:00', '7', '25', '50', '75', 'This is a great GPS.', '0', '2', 'Electronics', 'admin2' );
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('MacBook Pro', '2018-04-16 01:01:00', '7', '1000', NULL, '1500', 'Great MacBook', '0', '5', 'Electronics', 'user4' );
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('Microsoft Surface', '2018-04-16 06:00:00', '7', '500', '899', '750', 'Great Surface Laptop', '0', '3', 'Electronics', 'user5' );
 
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('Nikon D3', '2018-03-20 12:22:00', '5', '10', '100', '50', 'This is a great Camera.', '0', '4', 'Electronics', 'user2' );
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('SQL in 10 Minutes', '2018-04-05 12:22:00', '7', '1', '20', '10', 'This is a great Book.', '0', '5', 'Books', 'user3' );
INSERT INTO Item (item_name, listing_date_and_time, auction_length, starting_bid,get_it_now_price,minimum_sell_price,description,returnable,conditions,category_name,username)
 VALUES ('Pull-up Bar', '2018-04-09 12:22:00', '5', '7', '30', '15', 'Works on any door frame..', '0', '3', 'Sporting Goods', 'user4' );


 
 
-- Inserting bids--
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user4','2018-04-17 14:53:00','1','30');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user5','2018-04-17 17:53:00','1','31');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user3','2018-04-17 18:53:00','1','33');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user4','2018-04-18 11:53:00','1','40');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user4','2018-04-18 12:53:00','1','45');

INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user1','2018-04-06 14:53:00','5','8');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user2','2018-04-06 17:53:00','5','10');
INSERT INTO Bid (username,bid_date_and_time,item_ID,bid_amount) VALUES ('user1','2018-04-07 17:53:00','5','20');


-- Inserting rating--
INSERT INTO Rating (username,item_ID, number_of_stars,comment,date_and_time ) VALUES ('user5', '2', '5', 'Great for getting OMSCS coursework done.', '2018-04-17 17:00:00');
INSERT INTO Rating (username,item_ID, number_of_stars,comment,date_and_time ) VALUES ('user4', '3', '2', 'Look Nice but under powered!', '2018-04-17 17:00:00');
INSERT INTO Rating (username,item_ID, number_of_stars,comment,date_and_time ) VALUES ('user3', '3', '3', ' ', '2018-04-17 18:00:00');

INSERT INTO Rating (username,item_ID, number_of_stars,comment,date_and_time ) VALUES ('user2', '1', '5', 'Great GPS!', '2018-04-17 17:00:00');
INSERT INTO Rating (username,item_ID, number_of_stars,comment,date_and_time ) VALUES ('user3', '1', '3', 'OK GPS!', '2018-04-17 18:00:00');







