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

---------------------------------------Delete Existing Contact From Table(UC5)-----------------------------------------------
Delete From AddressBook1 Where FirstName='Rakesh' And LastName = 'Sharma';
select * from AddressBook1

---------------------------------------Delete Existing Contact From Table(UC5)-----------------------------------------------
Delete From AddressBook1 Where FirstName='Rakesh' And LastName = 'Sharma';
select * from AddressBook1

--------------------------------Retrieve Person Record From Table By City Or State(UC6)---------------------------------------
Select * From AddressBook1 Where City='Mumbai' Or StateName='Maharashtra'; 

----------------------Ability To Get The Size Of AddressBook By City And State Using Count(UC7)---------------------------------
Select Count(*) As Count,StateName, City From AddressBook1 Group By StateName,City;

--------------------------------------Retrive Sorted Persons Records By City(UC8)------------------------------------------------
Select * From AddressBook1 Where City = 'Pune' Order By FirstName;


-----------------------------------------------Add AddressBookName And Type Column(UC9)----------------------------------------------------------

Create Table AddressBook2(
	FirstName varchar(50) not null,
	LastName varchar(50),
	Address varchar(255),
	City varchar(50),
	StateName varchar(50),
	ZipCode int,
	PhoneNum varchar(10),
	EmailId varchar(50)
);

Insert Into AddressBook2 Values('pushpa', 'Raj', 'Gandhinagar', 'Bengluru', 'Karnataka', 560045, '9823434561', 'abc012@gmail.com'),
						('Mahesh', 'jadhav', 'Manglore', 'Bengluru', 'Karnataka', 560030, '7419632580', 'abc320@gmail.com'),	
						('Ankita', 'khade', 'Noida', 'Delhi', 'NewDelhi', 965874, '7412589631', 'abc475@gmail.com'),	
						('Rahul', 'Gandhi', 'Chandani', 'Delhi', 'NewDelhi', 965875, '9874561230', 'abc456@gmail.com'),	
						('Bharat', 'Kumar', 'Yalanka', 'Bengluru', 'Karnataka', 560015, '7456981230', 'abc786@gmail.com');
Select * From AddressBook2

Alter Table AddressBook2 Add AddressBookName varchar(50), AddressBookType varchar(50);


------------------Updating The DataBase With New Coulmn Values------------------

Update AddressBook2 Set AddressBookName='FreindsAddressBook',AddressBookType='Freinds' Where FirstName ='Pushpa' Or FirstName='Rahul' Or FirstName = 'Mahesh';
Update AddressBook2 Set AddressBookName='FamilyAddressBook',AddressBookType='Family' Where FirstName ='Ankita' Or FirstName='Bharat';
Select * From AddressBook2 Order By FirstName;