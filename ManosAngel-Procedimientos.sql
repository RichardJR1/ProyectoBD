
 SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE PKG_PRODUCTOS
    IS
     PROCEDURE AGREGAR_PRODUCTO(NOMBRE VARCHAR2,IMP_PRODUCTO VARCHAR2,TARIFA_IMP NUMBER,DESC_PRODUCTO FLOAT, PRECIO_UNITARIO FLOAT, CATEGORIA_ID NUMBER,PROVEEDOR NUMBER);
     PROCEDURE CARGAR_CATEGORIA(FILAS OUT SYS_REFCURSOR);
    END;
/

CREATE OR REPLACE PACKAGE BODY PKG_PRODUCTOS
    IS
        PROCEDURE AGREGAR_PRODUCTO(NOMBRE VARCHAR2,IMP_PRODUCTO VARCHAR2,TARIFA_IMP NUMBER,DESC_PRODUCTO FLOAT, PRECIO_UNITARIO FLOAT, CATEGORIA_ID NUMBER,PROVEEDOR NUMBER)
        AS
        BEGIN   
            INSERT INTO PRODUCTOS (NOMBRE,IMP_PRODUCTO,TARIFA_IMP,DESC_PRODUCTO, PRECIO_UNITARIO, CATEGORIA_ID,PROVEEDOR) VALUES (NOMBRE,IMP_PRODUCTO,TARIFA_IMP,DESC_PRODUCTO, PRECIO_UNITARIO, CATEGORIA_ID,PROVEEDOR);
      END;

	PROCEDURE CARGAR_CATEGORIA(FILAS OUT SYS_REFCURSOR)
	AS
 	BEGIN
    		OPEN FILAS FOR SELECT ID_CATEGORIA AS CODIGO,DESCRIPCION FROM CATEGORIA;
  	END;

END;

CREATE OR REPLACE PACKAGE PKG_PERSONAS
    IS
     PROCEDURE AGREGAR_PERSONAS(CEDULA NUMERIC,NOMBRE VARCHAR2,APELLIDOS VARCHAR2,TELEFONO NUMERIC,CORREO_ELECTRONICO VARCHAR2,DIRECCION VARCHAR2);
     PROCEDURE AGREGAR_PROVEEDOR(CEDULA NUMERIC,NOMBRE VARCHAR2,TELEFONO NUMERIC,CORREO_ELECTRONICO VARCHAR2,DIRECCION VARCHAR2);
     PROCEDURE CARGAR_CLIENTES(FILAS OUT SYS_REFCURSOR);
    END;
/


CREATE OR REPLACE PACKAGE BODY PKG_PERSONAS
    IS
       PROCEDURE AGREGAR_PERSONAS(CEDULA NUMERIC,NOMBRE VARCHAR2,APELLIDOS VARCHAR2,TELEFONO NUMERIC,CORREO_ELECTRONICO VARCHAR2,DIRECCION VARCHAR2)
        AS
        BEGIN   
            INSERT INTO CLIENTES (CEDULA,NOMBRE,APELLIDOS,TELEFONO,CORREO_ELECTRONICO,DIRECCION) 
		VALUES (CEDULA,NOMBRE,APELLIDOS,TELEFONO,CORREO_ELECTRONICO,DIRECCION);
      END;

       PROCEDURE AGREGAR_PROVEEDOR(CEDULA NUMERIC,NOMBRE VARCHAR2,TELEFONO NUMERIC,CORREO_ELECTRONICO VARCHAR2,DIRECCION VARCHAR2)
        AS
        BEGIN   
            INSERT INTO PROVEEDORES (CED_PROVEEDORES NUMERIC,NOMBRE_COMPANIA VARCHAR2,TELEFONO NUMERIC,CORREO_ELECTRONICO VARCHAR2,DIRECCION VARCHAR2) VALUES (CEDULA,NOMBRE,TELEFONO,CORREO_ELECTRONICO,DIRECCION);
      END;

       PROCEDURE CARGAR_CLIENTES(FILAS OUT SYS_REFCURSOR)
	AS
  	BEGIN
    	OPEN FILAS FOR SELECT CEDULA,NOMBRE,APELLIDOS,TELEFONO,CORREO_ELECTRONICO,DIRECCION FROM CLIENTES;
      END;

END;


CREATE OR REPLACE PACKAGE PKG_PERSONAS
    IS
     PROCEDURE AGREGAR_PRODUCTO(ID_PRODUCTO NUMBER, NOMBRE VARCHAR2,IMP_PRODUCTO VARCHAR2,TARIFA_IMP NUMBER,DESC_PRODUCTO FLOAT, PRECIO_UNITARIO FLOAT, CATEGORIA_ID NUMBER,PROVEEDOR NUMBER);
     PROCEDURE CARGAR_PRODUCTOS(FILAS OUT SYS_REFCURSOR);
    END;
/



CREATE OR REPLACE PACKAGE BODY PKG_VENTAS
    IS
        PROCEDURE AGREGAR_PRODUCTO(ID_PRODUCTO NUMBER, NOMBRE VARCHAR2,IMP_PRODUCTO VARCHAR2,TARIFA_IMP NUMBER,DESC_PRODUCTO FLOAT, PRECIO_UNITARIO FLOAT, CATEGORIA_ID NUMBER,PROVEEDOR NUMBER)
        AS
        BEGIN   
            INSERT INTO PRODUCTOS (ID_PRODUCTO, NOMBRE,IMP_PRODUCTO,TARIFA_IMP,DESC_PRODUCTO, PRECIO_UNITARIO, CATEGORIA_ID,PROVEEDOR) VALUES (ID_PRODUCTO, NOMBRE,IMP_PRODUCTO,TARIFA_IMP,DESC_PRODUCTO, PRECIO_UNITARIO, CATEGORIA_ID,PROVEEDOR);
      END;
	PROCEDURE CARGAR_PRODUCTOS(FILAS OUT SYS_REFCURSOR)
	AS
  	BEGIN
    	OPEN FILAS FOR
    	SELECT ID_PRODUCTO, NOMBRE, IMP_PRODUCTO, TARIFA_IMP, DESC_PRODUCTO, PRECIO_UNITARIO, DESCRIPCION, PROVEEDOR 
    	FROM PRODUCTOS,CATEGORIA 
    	WHERE CATEGORIA_ID = ID_CATEGORIA;
  	END;


END;
