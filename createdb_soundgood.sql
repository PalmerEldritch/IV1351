-- Database: soundgood

-- DROP DATABASE IF EXISTS soundgood;

CREATE DATABASE soundgood
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Swedish_Sweden.1252'
    LC_CTYPE = 'Swedish_Sweden.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE discount (
 id SERIAL NOT NULL PRIMARY KEY,
 percentage DECIMAL(10) NOT NULL
);


CREATE TABLE email (
 id SERIAL NOT NULL PRIMARY KEY,
 email_address VARCHAR(100) NOT NULL
);


CREATE TABLE lesson_price (
 id SERIAL NOT NULL PRIMARY KEY,
 lesson_type VARCHAR(20) NOT NULL,
 level VARCHAR(20) NOT NULL,
 price DECIMAL(20) NOT NULL
);


CREATE TABLE person (
 id SERIAL NOT NULL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 person_number VARCHAR(12) NOT NULL UNIQUE,
 street VARCHAR(100) NOT NULL,
 zip VARCHAR(10) NOT NULL,
 city VARCHAR(100) NOT NULL
);


CREATE TABLE person_email (
 email_id INT NOT NULL,
 person_id INT NOT NULL,

 PRIMARY KEY (email_id,person_id),

 FOREIGN KEY (email_id) REFERENCES email (id) ON DELETE CASCADE,
 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE
);


CREATE TABLE phone (
 id SERIAL NOT NULL PRIMARY KEY,
 phone_number VARCHAR(20)
);


CREATE TABLE rent_instrument (
 id SERIAL NOT NULL PRIMARY KEY,
 type VARCHAR(100) NOT NULL,
 brand VARCHAR(100),
 rental_price DECIMAL(20) NOT NULL
);


CREATE TABLE student (
 person_id INT NOT NULL PRIMARY KEY,
 level VARCHAR(20) NOT NULL,

 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE
);


CREATE TABLE teach_instrument (
 id SERIAL NOT NULL PRIMARY KEY,
 instrument VARCHAR(100) NOT NULL
);


CREATE TABLE booking (
 id SERIAL NOT NULL PRIMARY KEY,
 lesson_price_id INT NOT NULL,
 discount_id INT,
 person_id INT,

 FOREIGN KEY (lesson_price_id) REFERENCES lesson_price (id) ON DELETE CASCADE,
 FOREIGN KEY (discount_id) REFERENCES discount (id) ON DELETE CASCADE,
 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE
);


CREATE TABLE contact_person (
 person_id INT NOT NULL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 phone_number VARCHAR(20),
 email_address VARCHAR(100) NOT NULL,

 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE
);


CREATE TABLE instructor (
 person_id INT NOT NULL PRIMARY KEY,
 teaches_ensembles BOOLEAN NOT NULL,

 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE
);


CREATE TABLE instructor_teach_instrument (
 person_id INT NOT NULL,
 teach_instrument_id INT NOT NULL,

 PRIMARY KEY (person_id,teach_instrument_id),

 FOREIGN KEY (person_id) REFERENCES instructor (person_id) ON DELETE CASCADE,
 FOREIGN KEY (teach_instrument_id) REFERENCES teach_instrument (id) ON DELETE CASCADE
);


CREATE TABLE person_phone (
 phone_id INT NOT NULL,
 person_id INT NOT NULL,

 PRIMARY KEY (phone_id,person_id),

 FOREIGN KEY (phone_id) REFERENCES phone (id) ON DELETE CASCADE,
 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE
);


CREATE TABLE rent (
 person_id INT NOT NULL PRIMARY KEY,
 start_month VARCHAR(20) NOT NULL,
 rent_duration INT NOT NULL,
 to_be_belivered BOOLEAN NOT NULL,
 rent_intrument_id INT NOT NULL,

 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE,
 FOREIGN KEY (rent_intrument_id) REFERENCES rent_instrument (id) ON DELETE CASCADE
);


CREATE TABLE sibling (
 person_id INT NOT NULL PRIMARY KEY,
 person_number VARCHAR(12) NOT NULL UNIQUE,

 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE
);


CREATE TABLE time_slot (
 id INT NOT NULL PRIMARY KEY,
 dateTime TIMESTAMP(12) NOT NULL,
 duration TIME(6) NOT NULL,
 instructor_id INT,

 FOREIGN KEY (instructor_id) REFERENCES instructor (person_id) ON DELETE CASCADE
);


CREATE TABLE ensemble (
 id SERIAL NOT NULL PRIMARY KEY,
 min_students INT NOT NULL,
 max_students INT NOT NULL,
 genre VARCHAR(100) NOT NULL,
 time_slot_id INT,

 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id) ON DELETE CASCADE
);


CREATE TABLE group_lesson (
 id SERIAL NOT NULL PRIMARY KEY,
 min_students INT NOT NULL,
 max_students INT NOT NULL,
 intrument VARCHAR(100) NOT NULL,
 level VARCHAR(100) NOT NULL,
 time_slot_id INT,

 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id) ON DELETE CASCADE
);


CREATE TABLE individual_lesson (
 id SERIAL NOT NULL PRIMARY KEY,
 intrument VARCHAR(100) NOT NULL,
 level VARCHAR(20) NOT NULL,
 time_slot_id INT,
 booking_id INT,

 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id) ON DELETE CASCADE,
 FOREIGN KEY (booking_id) REFERENCES booking (id) ON DELETE CASCADE
);


CREATE TABLE booking_ensemble (
 booking_id INT NOT NULL,
 ensemble_id INT NOT NULL,

 PRIMARY KEY (booking_id,ensemble_id),

 FOREIGN KEY (booking_id) REFERENCES booking (id) ON DELETE CASCADE,
 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id) ON DELETE CASCADE
);


CREATE TABLE booking_group_lesson (
 booking_id INT NOT NULL,
 group_lesson_id INT NOT NULL,

 PRIMARY KEY (booking_id,group_lesson_id),

 FOREIGN KEY (booking_id) REFERENCES booking (id) ON DELETE CASCADE,
 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id) ON DELETE CASCADE
);