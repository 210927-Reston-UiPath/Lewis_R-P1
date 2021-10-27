create table PegaBeverages (
        pegaBevName varchar(100) not null, 
        pegaBevPrice real not null, 
        id serial primary key 
);

create table PegaSeasonings (
    pegaSeasName varchar(100) not null, 
    pegaSeasPrice real not null,
    id serial primary key, 
);

create table ProductsID
(
    pegaProdName varchar(100) not null,
    pegaID int not null,
    id serial primary Key, 
);

insert into PegaBeverages (pegaBevName, pegaBevPrice) values
('Chai', 2.00), 
('Chang', 19.00), 
('Chartreuse verte', 18.00), 
('Cote de Blaye', 263.50), 
('Guarana Fantastica', 4.50), 
('Ipoh Coffee', 46.00), 
('Lakkalikoori', 18.00), 
('Laughing Lumberjack Lager', 14.00), 
('Rhonbrau Klosterbier', 7.76),
('Sasquatch Ale', 14.00),
('Steeleye Stout', 18.00);

insert into PegaSeasonings (pegaSeasName, pegaSeasPrice) values
('Aniseed Syrup', 10.00), 
('Chef Antons Cajun Seasoning', 22.00), 
('Chef Antons Gumbo Mix', 21.36), 
('Genen Shouyu', 15.50), 
('Grandmas Boysenberry Spread', 25.00), 
('Gula Malacca', 19.46), 
('Louisiana Fiery Hot Pepper Sauce', 21.06), 
('Louisiana Hot Spiced Okra', 17.00), 
('Northwoods Cranberry Sauce', 40.00), 
('Original Frankfurter Grune SoBe', 13.00), 
('Sirop derable', 28.50), 
('Veggie Spread', 43.90);

insert into ProductsID (pegaProdName, pegaID) values
('Chai', 1), 
('Chang', 2), 
('Chartreuse verte', 39), 
('Cote de Blaye', 38), 
('Guarana Fantastica', 24), 
('Ipoh Coffee', 43), 
('Lakkalikoori', 76), 
('Laughing Lumberjack Lager', 67), 
('Rhonbrau Klosterbier', 75),
('Sasquatch Ale', 34),
('Steeleye Stout', 35);
('Aniseed Syrup', 3), 
('Chef Antons Cajun Seasoning', 4), 
('Chef Antons Gumbo Mix', 5), 
('Genen Shouyu', 15), 
('Grandmas Boysenberry Spread', 6), 
('Gula Malacca', 44), 
('Louisiana Fiery Hot Pepper Sauce', 65), 
('Louisiana Hot Spiced Okra', 66), 
('Northwoods Cranberry Sauce', 8), 
('Original Frankfurter Grune SoBe', 77), 
('Sirop derable', 61), 
('Veggie Spread', 63);