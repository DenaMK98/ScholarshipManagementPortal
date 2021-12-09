use p_052;
show tables;
create table adminLoginInfo(
adminName varchar(50),
adminEmailId varchar(50),
adminPassword varchar(50)
);
create table studentLoginInfo(
studentName varchar(50),
studentEmailId varchar(50),
studentPassword varchar(30)
);

select * from studentLoginInfo;
create table scholarshipDetails(
first_name varchar(20),
last_name varchar(20),
address varchar(500),
phoneNo varchar(10),
emailId varchar(30),
stream varchar(10),
ssc float,
hsc float,
cutoff float,
college varchar(500)
);
create table scholarshipStatus(
 first_name varchar(30),
	emailId varchar(30),
	address varchar(500),
	contact varchar(10),
	ssc float,
	hsc float,
	stream varchar(10),
	college varchar(500),
	cutoff float,
	status varchar(10)
	);
select * from scholarshipDetails;