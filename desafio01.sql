--CREAR BD
CREATE DATABASE desafio_cristian_venegas_960;

--INGRESAR
\c desafio_cristian_venegas_960

--CREAR UNA TABLA
CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR,
  email VARCHAR(50),
  telefono VARCHAR(16),
  empresa VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
  );


INSERT INTO client (nombre, email, telefono,empresa, priority ) VALUES 
('Consuelo'  ,'email1@correo.cl' ,'1111111'  ,'Google'     ,1),
 ('Daniel'    ,'email2@correo.cl' ,'2222222'  ,'Netflix '    ,9),
  ('Fernando'  ,'email3@correo.cl' ,'3333333'  ,'Amazon'     ,10),
  ('Dirk'      ,'email4@correo.cl' ,'4444444'  ,'Facebook'   ,5),
  ('Enzo'      ,'email5@correo.cl' ,'5555555'  ,'Instagram'  ,6);

--SELECCIONAR TRES CLIENTES CON MAYOR PRIORIDAD
SELECT * FROM client ORDER BY priority DESC LIMIT 3;

--SELECCIONAR 2 CLIENTES POR NOMBRE DE EMPRESA O PRIORIDAD
SELECT * FROM client WHERE priority >= 10 OR nombre = 'Consuelo';

--SALIR DE LA DB
\q

