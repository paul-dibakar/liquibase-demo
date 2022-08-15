--liquibase formatted sql
--changeset dibakar:JIRA-2222

DROP TABLE IF EXISTS BOOKING;

CREATE TABLE BOOKING(
	booking_id int(11) unsigned NOT NULL AUTO_INCREMENT,
	guest_id int(11) unsigned NOT NULL,
	room_no varchar(20) not null,
	checkin timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	checkout timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	modification_date timestamp,
	PRIMARY KEY (booking_id),
	CONSTRAINT fk_booking_guist_details_idx FOREIGN KEY (guest_id) REFERENCES GUEST(guest_id)
);