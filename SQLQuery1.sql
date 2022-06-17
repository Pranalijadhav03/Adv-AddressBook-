-----------------Creating the DataBase AddressBook (UC1)-----------------
Create database AdvAddressBookDB1;
use AdvAddressBookDB1;

-----------------Creating the AddressBook Table (UC2)--------------------
Create Table AddressBook1(
	FirstName varchar(50) not null,
	LastName varchar(50),
	Address varchar(255),
	City varchar(50),
	StateName varchar(50),
	ZipCode int,
	PhoneNum Varchar(10),
	EmailId varchar(50)
);

