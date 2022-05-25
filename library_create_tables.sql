create database library;
use library;
create table User(
	userId int not null,
    full_name varchar(20) not null,
    gender varchar(3) not null,
	address varchar(120) not null,
	phone_number varchar(20) not null,
    constraint user_pk primary key(userId)
);

create table Books(
	bookId int not null,
    book_title varchar(100) not null,
    author varchar(50) not null,
    constraint books_pk primary key(bookId)
);

create table staff(
	staffId int not null,
    full_name varchar(40) not null,
    address varchar(120) not null,
	email_address varchar(50) not null,
    phone_number varchar(20) not null,
    constraint staff_pk primary key(staffId)
);

create table Book_Rentwl(
	userId int not null,
    bookId int not null,
    date_borrowed datetime not null default current_timestamp,
    return_date datetime not null default current_timestamp,
    constraint borrowed_PK primary key(userId, bookId),
    constraint user_fk foreign key(userId) references User(userId),
    constraint book_fk foreign key(bookId) references Books(bookId)
);