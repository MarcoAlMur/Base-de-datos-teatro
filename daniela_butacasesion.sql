create database mydb;
use mydb;
CREATE TABLE butaca_sesion (
  id_sesion INT NOT NULL,
  id_butaca INT NOT NULL,
  estado ENUM('DISPONIBLE','RESERVADA','VENDIDA','BLOQUEADA') 
         DEFAULT 'DISPONIBLE',
  PRIMARY KEY (id_sesion, id_butaca),
  FOREIGN KEY (id_sesion) REFERENCES sesion(id_sesion),
  FOREIGN KEY (id_butaca) REFERENCES butaca(id_butaca)
);
