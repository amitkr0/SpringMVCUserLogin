# SpringMVCUserLogin
A simple  web Application using  Spring MVC, Maven as building tool and MySQL

A web application which has following Capabilities :
1. Candidate can register himself.
2. Candidate can login.
3. Candidate can view his profile after login.
4. Candidate can update his profile.
5. Candidate can logout anytime.
6. Admin can view all user's information.
 
 
Admin Information :
username : admin
password : password

SQL command :

create database springProject;

use springProject;

create table users(username varchar(12) primary key, name varchar(30) not null, gender varchar(10),
mobile varchar(15),email varchar(25), city varchar(20), password varchar(20) not null);

