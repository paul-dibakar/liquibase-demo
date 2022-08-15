--liquibase formatted sql
--changeset dibakar:JIRA-3333

DROP TABLE IF EXISTS INVOICELEDGER;

CREATE TABLE INVOICELEDGER (
  invoice_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  booking_id int(11) unsigned NOT NULL,
  invoice_type varchar(20) NOT NULL,
  invoice_description varchar(1000) NOT NULL,
  amount double NOT NULL,
  creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modification_date timestamp,
  PRIMARY KEY (invoice_id),
  CONSTRAINT fk_invoice_breakup_booking_details_idx FOREIGN KEY (booking_id) REFERENCES BOOKING(booking_id)
);