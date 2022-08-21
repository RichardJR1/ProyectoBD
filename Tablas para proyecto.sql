--
-- Estructura de tabla para la tabla CLIENTES
--

CREATE TABLE CLIENTES(
  ID_CLIENTE NUMERIC NOT NULL,
  CEDULA NUMERIC NOT NULL,
  NOMBRE VARCHAR2(50) NOT NULL,
  APELLIDOS VARCHAR2(75) NOT NULL,
  TELEFONO NUMERIC NULL,
  CORREO_ELECTRONICO VARCHAR2(50) NOT NULL,
  DIRECCION varchar2(100) NOT NULL,
  PRIMARY KEY (ID_CLIENTE) 
);


--
-- Estructura de tabla para la tabla PEDIDO
--

CREATE TABLE PEDIDO (
  ID_PEDIDO NUMBER NOT NULL,
  ID_CLIENTE NUMERIC NOT NULL,
  TOTAL FLOAT NOT NULL,
  FECHA VARCHAR2(50) NOT NULL,
  HORA VARCHAR2(50) NOT NULL,
  DESCUENTO FLOAT NULL,
  PRIMARY KEY (ID_PEDIDO)
);

ALTER TABLE PEDIDO
ADD CONSTRAINT FK_PEDIDO_ID_CLIENTE
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTES(ID_CLIENTE);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla CATEGORIA
--

CREATE TABLE CATEGORIA(
  ID_CATEGORIA INT NOT NULL,
  DESCRIPCION varchar2(35) NOT NULL,
  PRIMARY KEY (ID_CATEGORIA)
);

INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(1,'Bebida fria');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(2,'Bebida caliente');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(3, 'Proteinas');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(4, 'Adicionales');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(5, 'Combos');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(6, 'Postres');
INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
(7, 'Casado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla PROVEEDORES
--

CREATE TABLE PROVEEDORES(
  ID_PROVEEDORES INT NOT NULL,
  CED_PROVEEDORES INT NOT NULL,
  NOMBRE_COMPANIA varchar2(70) NOT NULL,
  TELEFONO NUMERIC NOT NULL,
  CORREO_ELECTRONICO varchar2(50) NOT NULL,
  DIRECCION varchar2(100) NOT NULL,
  PRIMARY KEY (ID_PROVEEDORES)
);

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla PRODUCTOS
--

CREATE TABLE PRODUCTOS (
  ID_PRODUCTO int NOT NULL,
  NOMBRE varchar2(50) NOT NULL,
  IMP_PRODUCTO varchar2(50) NOT NULL,
  TARIFA_IMP int NOT NULL,
  DESC_PRODUCTO FLOAT NULL,
  PRECIO_UNITARIO FLOAT NOT NULL,
  CATEGORIA_ID INT NOT NULL,
  PROVEEDOR INT  NULL,
  PRIMARY KEY (ID_PRODUCTO)
);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_PRODUCTOS_CATEGORIA
FOREIGN KEY (CATEGORIA_ID)
REFERENCES CATEGORIA(ID_CATEGORIA);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_PRODUCTOS_PROVEEDOR
FOREIGN KEY (PROVEEDOR)
REFERENCES PROVEEDORES(ID_PROVEEDORES);
