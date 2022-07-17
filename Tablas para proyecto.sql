--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE CLIENTES (
  CEDULA NUMERIC NOT NULL,
  NOMBRE VARCHAR2(50) NOT NULL,
  APELLIDOS VARCHAR2(75) NOT NULL,
  TELEFONO NUMERIC NULL,
  CORREO_ELECTRONICO VARCHAR2(50) NOT NULL,
  DIRECCION varchar2(100) NOT NULL,
  PRIMARY KEY (CEDULA)
);


--
-- Estructura de tabla para la tabla pedido
--

CREATE TABLE PEDIDO (
  ID_PEDIDO NUMBER NOT NULL,
  ID_CLIENTE NUMERIC NOT NULL,
  TOTAL FLOAT NOT NULL,
  FECHA DATE NOT NULL,
  HORA TIME NOT NULL,
  DESCUENTO FLOAT NULL,
  PRIMARY KEY (ID_PEDIDO)
);

ALTER TABLE PEDIDO
ADD CONSTRAINT FK_PEDIDO_ID_CLIENTE
FOREING KEY (ID_CLIENTE)
REFERENCES CLIENTES(CEDULA);

CREATE SEQUENCE seq_PEDIDO_ID_PEDIDO
START WITH 1 
INCREMENT BY 1
NOMAXVALUE; 



--INSERT INTO PEDIDO (ID_PEDIDO, ID_CLIENTE, TOTAL, FECHA, HORA, DESCUENTO) VALUES
--(seq_PEDIDO_ID_PEDIDO.nextval, 'A', 'A', 'A', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla CATEGORIA
--

CREATE TABLE CATEGORIA(
  ID_CATEGORIA int NOT NULL,
  DESCRIPCION varchar2(35) NOT NULL,
  PRIMARY KEY (ID_CATEGORIA)
);

--INSERT INTO CATEGORIA(ID_CATEGORIA, DESCRIPCION) VALUES
--(1,'BEBIDAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla PROVEEDORES
--

CREATE TABLE PROVEEDORES(
  ID_PROVEEDORES NUMERIC NOT NULL,
  NOMBRE_COMPANIA varchar2(70) NOT NULL,
  TELEFONO NUMERIC NOT NULL,
  CORREO_ELECTRONICO varchar2(50) NOT NULL,
  DIRECCION varchar2(100) NOT NULL,
  PRIMARY KEY (ID_PROVEEDORES)
);


INSERT INTO PROVEEDORES(ID_PROVEEDORES, NOMBRE_COMPANIA , TELEFONO, CORREO_ELECTRONICO, DIRECCION) VALUES
(2080008200, 'Fernanda', 88888888, 'mchavarria@gmail.com', '300mts suroeste');

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
  CATEGORIA INT NOT NULL,
  PROVEEDOR INT NOT NULL
);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_PRODUCTOS_CATEGORIA
FOREING KEY (CATEGORIA)
REFERENCES CATEGORIA(ID_CATEGORIA);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_PRODUCTOS_PROVEEDOR
FOREING KEY (PROVEEDOR)
REFERENCES PROVEEDORES(ID_PROVEEDORES);

--INSERT INTO PRODUCTOS (ID_PRODUCTO, NOMBRE, IMP_PRODUCTO, TARIFA_IMP, DESC_PRODUCTO, PRECIO_UNITARIO, CA_ID_CATEGORIA, PR_ID_PROVEEDORES) VALUES
--(1, 'A', 'A', 7, 0, 100, 'A', 'A');

-- --------------------------------------------------------
