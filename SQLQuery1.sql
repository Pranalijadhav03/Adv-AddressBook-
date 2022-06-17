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

------------------Inserting Value Into AddressBook Table (UC3)--------------
Insert Into AddressBook1 Values('Pranali', 'Prakash', 'Jadhav', 'Mumbai', 'Maharashtra', 400099, '7004670887', 'pj321626@gmail.com'),
						('Dipti', 'Sunil', 'Satam', 'Pune', 'Maharashtra', 111045, '7543065510', 'Dipti123@gmail.com'),	
						('Nutan', 'Pravin', 'Katam', 'Bengluru', 'Maharashtra', 5600301, '7004678878', 'Nuts1029@gmail.com'),	
						('Rakesh', 'Kumar', 'Sharma', 'Delhi' ,'Maharashtra', 356809, '9852364170', 'RJ852@gmail.com'),	
						('Rachit', 'Yeshwant', 'Kanavale', 'Andheri', 'Maharashtra', 822102, '9852741630', 'Rachit741@gmail.com');

select * from AddressBook1

------------------Edit Existing AddressBook Table Using Update (UC4)--------------
Update AddressBook1 Set EmailId='Kanavale@yahoo.com' Where FirstName='Rachu';
Update AddressBook1 Set Address='', City = 'Patna', StateName = 'Bihar' Where FirstName='Rakesh';
Update AddressBook1 Set Phonenum='9856406754' Where FirstName='Rakesh';
Update AddressBook1 Set LastName='kadam' Where FirstName='Nutan';
select * from AddressBook1
