USE estructura;

CREATE TABLE venta (
id_venta INT NOT NULL AUTO_INCREMENT,
id_reserva INT,
fecha_venta DATETIME,
total DECIMAL(8,2),
PRIMARY KEY (id_venta),
FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)
);

CREATE TABLE detalle_venta (
id_venta INT,
id_sesion INT,
id_butaca INT,
precio DECIMAL (8,2),
PRIMARY KEY (id_venta, id_sesion, id_butaca),
FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
FOREIGN KEY (id_sesion) REFERENCES sesion(id_sesion),
FOREIGN KEY (id_butaca) REFERENCES butaca(id_butaca)
);

CREATE TABLE puntuacion (
id_puntuacion INT NOT NULL AUTO_INCREMENT,
id_concierto INT NOT NULL,
id_usuario INT NOT NULL,
puntuacion INT CHECK(puntuacion BETWEEN 1 AND 5),
PRIMARY KEY (id_puntuacion),
FOREIGN KEY (id_concierto) REFERENCES concierto(id_concierto),
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
UNIQUE (id_concierto, id_usuario)
);