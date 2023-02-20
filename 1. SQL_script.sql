create schema mysql_ddl_dml;
use mysql_ddl_dml;

CREATE TABLE PERSONS
(
    name           varchar(50) NOT NULL ,
    surname        varchar(50) NOT NULL ,
    age            int CHECK ( age > 0 AND age < 121 ),
    phone_number   char(15) NOT NULL ,
    city_of_living varchar(100) NOT NULL ,
    PRIMARY KEY (name, surname, age)
);

INSERT INTO PERSONS(name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Ivanov', 18, '8(921)123-12-31', 'Moscow'),
       ('Petr', 'Petrov', 20, '8(921)565-65-58', 'Moscow'),
       ('Olga', 'Frolova', 38, '8(921)954-65-32', 'Orel'),
       ('Elena', 'Sidorova', 22, '8(921)234-54-65', 'Novosibirsk'),
       ('Oleg', 'Semenov', 52, '8(921)564-42-12', 'S-Pb'),
       ('Olga', 'Filatova', 42, '8(921)954-21-03', 'Moscow');