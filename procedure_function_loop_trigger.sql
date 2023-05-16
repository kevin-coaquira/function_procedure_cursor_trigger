CREATE DATABASE function_procedure_cursor_trigger;
use function_procedure_cursor_trigger;

CREATE TABLE customer(
id INT AUTO_INCREMENT,
full_name VARCHAR(50),
product VARCHAR(30),
pago VARCHAR(30),
presupuesto INT,
PRIMARY KEY(id)
);

CREATE TABLE store(
id INT AUTO_INCREMENT,
name_product VARCHAR(30),
price INT,
stock VARCHAR(10),
PRIMARY KEY(id)
);

/*TRIGGER*/
DELIMITER $$
CREATE TRIGGER insert_after AFTER INSERT ON store
for each row
BEGIN
	insert into customer(pago) VALUES ('Pago realizado');
END; 
$$

INSERT INTO store(name_product,price,stock) VALUES ('laptop',950,'available');

SELECT * FROM customer;
SELECT * FROM store;
/*Procedure*/
DELIMITER $$
CREATE PROCEDURE BuscarCliente(
    IN nombre_cliente VARCHAR(50)
    )
BEGIN
    SELECT *
    FROM customer
    WHERE full_name = nombre_cliente;
END 
$$
/*Para llamar un procedure utilizamos CALL*/
CALL BuscarCliente('Jaume');
INSERT INTO customer(full_name) VALUES ('Jaume');
INSERT INTO customer(full_name,product,presupuesto) VALUES ('Jaume','iphone',100);
/*Fucntion*/
DELIMITER //
CREATE FUNCTION GetCustomer()
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE count_customer INT;
    SELECT COUNT(*) INTO count_customer
    FROM customer;
    RETURN count_customer;
END //
DELIMITER ;
/*Llamamos con Select*/
select GetCustomer();
SELECT * FROM customer;
/*LOOP*/