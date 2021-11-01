create database project;
use project;

select * from Customer;
select * from Employee_Details;
select * from employee_manages_shipment;
select * from Membership;
select * from Payment_Details;
select * from Shipment_Details;
select * from Status_s;

-- Employee_Details --

select * from Employee_Details;
desc Employee_Details;

alter table Employee_Details modify E_ID int(5) primary key;
 
alter table Employee_Details modify E_NAME varchar(30), modify E_DESIGNATION varchar(40), modify E_ADDR varchar(100),
modify E_BRANCH varchar(15), modify E_CONT_NO varchar(10);

-- Membership --

select * from Membership;
desc Membership;

alter table Membership modify M_ID int Primary key;

-- Customer --

select * from Customer;
desc Customer;

alter table Customer modify C_ID int(4) primary key, add foreign key (M_ID) references Membership(M_ID),
modify C_NAME varchar(30), modify C_EMAIL_ID varchar(50),
modify C_TYPE varchar(30), modify C_ADDR varchar(100), modify C_CONT_NO varchar(10);

-- Payment_Details --

select * from Payment_Details;
desc Payment_Details;

alter table Payment_Details modify Payment_ID varchar(40) primary key, add foreign key (C_ID) references Customer(C_ID),
modify SH_ID varchar(6), add foreign key (SH_ID) references Shipment_Details(SH_ID),
modify Payment_Status varchar(10), modify Payment_Mode varchar(25);


-- Shipment_Details -- 

select * from Shipment_Details;
desc Shipment_Details;

alter table Shipment_Details modify SH_ID varchar(6) primary key, add foreign key (C_ID) references Customer(C_ID),
modify SH_CONTENT varchar(40), modify SH_DOMAIN varchar(15), modify SER_TYPE varchar(15), modify SH_WEIGHT varchar(10),
modify SR_ADDR varchar(100), modify DS_ADDR VARCHAR(100);

-- Status_s --

select * from Status_s;
desc Status_s;

alter table Status_S modify SH_ID varchar(6) primary key, modify Current_Status varchar(15);

-- employee_manages_shipment --

select * from employee_manages_shipment;
desc employee_manages_shipment;

alter table employee_manages_shipment add foreign key (Employee_E_ID) references Employee_Details(E_ID);

alter table employee_manages_shipment modify Shipment_Sh_ID varchar(6), 
add foreign key (Shipment_Sh_ID) references Shipment_Details(SH_ID);

alter table employee_manages_shipment modify Status_Sh_ID varchar(6), 
add foreign key (Status_Sh_ID) references Status_s(SH_ID);













