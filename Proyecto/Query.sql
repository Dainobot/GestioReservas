select * from reserva;

ALTER TABLE usuarios
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;
call ContarHabitaciones();
call CalcularTotal();
CREATE TABLE informacion_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    tarjeta VARCHAR(16),
    cvv VARCHAR(4),
    telefono VARCHAR(15),
    email VARCHAR(255)
);

CREATE TABLE reserva (
    reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nombre VARCHAR(50),
    dia DATE,
    horario TIME,
    seleccion VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
ALTER TABLE Reserva
ADD precio INT;
UPDATE Reserva
SET precio = CASE
    WHEN seleccion = 'PREMIUN' THEN 150
    WHEN seleccion = 'LOW COST' THEN 50
    ELSE 0 -- Puedes definir otro valor por defecto si es necesario
END;