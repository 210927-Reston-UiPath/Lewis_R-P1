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
    price real not null, 
    subtotal real not null
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

select * from clientTable; 
select * from shoppingListTable; 



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








































