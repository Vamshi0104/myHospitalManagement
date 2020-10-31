-- Creating a Database named "Hospital" :
create database hospital;
use hospital;
-- Creating User Table in current database :
create table reg(FirstName varchar(30) not null,LastName varchar(30) not null,Email varchar(30) unique,Phone varchar(30) not null primary key,Salt_Key varchar(20) not null,Gender varchar(8) not null);
-- Creating Doctor Table in current database :
create table docreg(FirstName varchar(30) not null,LastName varchar(30) not null,Email varchar(30) unique,Phone varchar(30) not null primary key,Salt_Key varchar(20) not null,Gender varchar(8) not null);
-- Creating Reception Table in current database :
create table recreg(FirstName varchar(30) not null,LastName varchar(30) not null,Email varchar(30) unique,Phone varchar(30) not null primary key,Salt_Key varchar(20) not null,Gender varchar(8) not null);
-- Creating Reception-Doctor Appointment Table in current database :
create table doc(Doctor_FirstName varchar(30) not null,Doctor_LastName varchar(30) not null,Doctor_Email varchar(30) unique,Contact_Doctor varchar(30) not null primary key,Available_Status varchar(8) not null);
-- Creating Doctor Appointment Table in current database :
create table ai(Time_In varchar(30) not null,Time_Out varchar(30) not null,Problem varchar(50) not null,Phone varchar(20) not null);