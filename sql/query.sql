use query

create  table logindata(FullName varchar(30),
						EmailID varchar(30),
						UserName varchar(30),
						Password varchar(30),
						ConfirmPassword varchar(30));

select * from logindata;

create table createDtls(ID int IDENTITY(101, 1) PRIMARY KEY, 
						Title varchar(10),
						FirstName varchar(20),
						LastName varchar(20),
						Gender varchar(10),
						DateOfBirth varchar(20),
						FileUpload varchar(100),
						Address varchar(50),
						Street varchar(50),
						City varchar(50),
						State varchar(40),
						Email varchar(40),
						MobileNumber varchar(10));

select * from createDtls