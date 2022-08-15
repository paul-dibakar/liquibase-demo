--liquibase formatted sql
--changeset dibakar:JIRA-1111
DROP TABLE IF EXISTS GUEST;

CREATE TABLE GUEST(
    guest_id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(100) not null,
    email varchar(100) not null,
    contact_no int(10) unsigned not null,
    dob timestamp NOT NULL,
    address varchar(256),
    city varchar(100),
    state varchar(100),
    pincode int(10) unsigned,
    creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modification_date timestamp,
    PRIMARY KEY (guest_id)
);

DROP TABLE IF EXISTS ROOMTYPE;

CREATE TABLE ROOMTYPE(
    room_no varchar(20) not null,
    room_type varchar(50) not null,
    room_description varchar(2000),
    room_tarrif double,
    creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modification_date timestamp,
    PRIMARY KEY (room_no)
);