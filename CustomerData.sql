create table clientTable (
    id serial primary key,
    clientName varchar(100) not null,
    clientEmail varchar(100) not null 
);

create table shoppingListTable (
    id serial primary key, 
    productName varchar(100) not null, 
    quantity int not null,
    clientID int REFERENCES clientTable(id)
);

create table shoppingExpenseTable (
    id serial primary key, 
    orderID int REFERENCES orderTable(id),
    itemID INT REFERENCES clientTable(id),
    price double precision null, 
    subtotal double precision  null
);

create table orderTable (
    id serial primary key,
    clientID int REFERENCES clientTable(id),
    total real not null,
    orderDate date null
);

drop table shoppingListTable;
drop table shoppingExpenseTable;
drop table orderTable;
drop table clientTable; 

select * from shoppingExpenseTable; 

select * from clientTable; 
select * from shoppingListTable; 

insert into clientTable(clientName, clientEmail) values
('James', 'Jdoe@notreal.com'), ('John', 'Jon@notreal.com');

insert into shoppingListTable(productName, quantity, clientID) values
('Outback Lager', 2, 1), ('Chartreuse verte', 5, 1), ('Ipoh Coffee', 7, 2),('Chai', 3, 2); 

insert into shoppingListTable(productName, quantity, clientID) values
('Aniseed Syrup', 2, 1);

insert into shoppingListTable(productName, quantity, clientID) values
('Comics', 3, 2);




('Jane', 'Jae@notreal.com'),('Chris', 'Chris@notreal.com'), ('Frank', 'frank@notreal.com');




create table Students(
    studID serial primary key, 
    studentName varchar(50) not null
);

create table teachers(
    teachID serial primary key, 
    teacherName varchar(50),
    foreignkey int references Students(studID)
);

insert into Students(studentName)
('James'), ('Jack'), ('Jane'),('Jas'), ('Jak'), ('Jae'),('Jes'), ('Jck'), ('Ja');

insert into teachers(teacherName)
('Tim'), ('Tom'), ('Timmy'),('Tommy'), ('TI'), ('TO'),('Tes'), ('Tck'), ('Ta');








































