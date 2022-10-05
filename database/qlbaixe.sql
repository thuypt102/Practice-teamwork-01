CREATE DATABASE QLBAIXE

USE QLBAIXE

CREATE TABLE EMPLOYEE( Id CHAR(3)not null  primary key,
					   Password VARCHAR(20),
					   DisplayName nvarchar(50),
					   IdRole char(1) )

CREATE TABLE CUSTOMER( Id int not null IDENTITY(1,1)primary key,
					   Code char (12) not null,
					   DisplayName nvarchar(50),
					   Phone char(10))

CREATE TABLE INFOPAKING(Type int primary key,
						Count int not null)

CREATE TABLE INFOCAR(Id int not null IDENTITY(1,1) primary key,
					 LicensePlate char(9)not null,
					 Type int not null,
					 IdEMPLOYEE Char(3)not null CONSTRAINT fk_ifcar_employee FOREIGN KEY (IdEMPLOYEE) REFERENCES EMPLOYEE(Id) ,
					 IdCUSTOMER int not null CONSTRAINT fk_ifcar_customer FOREIGN KEY (IdCUSTOMER)REFERENCES CUSTOMER(Id),
					 CheckInTime Datetime,
					 CheckOutTime Datetime)

CREATE TABLE PAKING(id int IDENTITY primary key,
					Type int not null CONSTRAINT fk_paking_infopaking FOREIGN KEY (Type) REFERENCES INFOPAKING(Type),
					IdINFOCAR int not null CONSTRAINT fk_paking_infocar FOREIGN KEY (IdINFOCAR) REFERENCES INFOCAR(Id))

CREATE TABLE Bill(Id int not null IDENTITY(1,1) primary key,
				  IdEMPLOYEE Char(3)not null CONSTRAINT fk_bill_employee FOREIGN KEY (IdEMPLOYEE) REFERENCES EMPLOYEE(Id) ,
				  IdINFOCAR int not null CONSTRAINT fk_bill_infocar FOREIGN KEY (IdINFOCAR) REFERENCES INFOCAR(Id),
				  Price Money)