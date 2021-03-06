--------------------------------------------------------
--  File created - Saturday-July-16-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_PEDIDO_ID_PEDIDO
--------------------------------------------------------

   CREATE SEQUENCE  "MIUSUARIO"."SEQ_PEDIDO_ID_PEDIDO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "MIUSUARIO"."CATEGORIA" 
   (	"ID_CATEGORIA" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(35 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "MIUSUARIO"."CLIENTES" 
   (	"CEDULA" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDOS" VARCHAR2(75 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"CORREO_ELECTRONICO" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PEDIDO
--------------------------------------------------------

  CREATE TABLE "MIUSUARIO"."PEDIDO" 
   (	"ID_PEDIDO" NUMBER(*,0), 
	"ID_CLIENTE" NUMBER(*,0), 
	"TOTAL" FLOAT(126), 
	"FECHA" VARCHAR2(25 BYTE), 
	"HORA" VARCHAR2(25 BYTE), 
	"DESCUENTO" FLOAT(126)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE "MIUSUARIO"."PRODUCTOS" SHARING=METADATA 
   (	"ID_PRODUCTO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"IMP_PRODUCTO" VARCHAR2(50 BYTE), 
	"TARIFA_IMP" NUMBER(*,0), 
	"DESC_PRODUCTO" FLOAT(126), 
	"PRECIO_UNITARIO" FLOAT(126), 
	"CATEGORIA_ID" NUMBER(*,0), 
	"PROVEEDOR" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE "MIUSUARIO"."PROVEEDORES" 
   (	"ID_PROVEEDORES" NUMBER(*,0), 
	"NOMBRE_COMPANIA" VARCHAR2(70 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"CORREO_ELECTRONICO" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into MIUSUARIO.CATEGORIA
SET DEFINE OFF;
REM INSERTING into MIUSUARIO.CLIENTES
SET DEFINE OFF;
REM INSERTING into MIUSUARIO.PEDIDO
SET DEFINE OFF;
REM INSERTING into MIUSUARIO.PRODUCTOS
SET DEFINE OFF;
REM INSERTING into MIUSUARIO.PROVEEDORES
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."PEDIDO" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PEDIDO" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PEDIDO" MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PEDIDO" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PEDIDO" MODIFY ("HORA" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PEDIDO" ADD PRIMARY KEY ("ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIA
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."CATEGORIA" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CATEGORIA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CATEGORIA" ADD PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."CLIENTES" MODIFY ("CEDULA" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CLIENTES" MODIFY ("APELLIDOS" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CLIENTES" MODIFY ("CORREO_ELECTRONICO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CLIENTES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."CLIENTES" ADD PRIMARY KEY ("CEDULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."PROVEEDORES" MODIFY ("ID_PROVEEDORES" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PROVEEDORES" MODIFY ("NOMBRE_COMPANIA" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PROVEEDORES" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PROVEEDORES" MODIFY ("CORREO_ELECTRONICO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PROVEEDORES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PROVEEDORES" ADD PRIMARY KEY ("ID_PROVEEDORES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTOS 
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("IMP_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("TARIFA_IMP" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("PRECIO_UNITARIO" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("CATEGORIA_ID" NOT NULL ENABLE);
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" MODIFY ("PROVEEDOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."PEDIDO" ADD CONSTRAINT "FK_PEDIDO_ID_CLIENTE" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "MIUSUARIO"."CLIENTES" ("CEDULA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "MIUSUARIO"."PRODUCTOS" ADD CONSTRAINT "FK_PRODUCTOS_CATEGORIA" FOREIGN KEY ("CATEGORIA_ID")
	  REFERENCES "MIUSUARIO"."CATEGORIA" ("ID_CATEGORIA") ENABLE;
  ALTER TABLE "MIUSUARIO"."PRODUCTOS" ADD CONSTRAINT "FK_PRODUCTOS_PROVEEDOR" FOREIGN KEY ("PROVEEDOR")
	  REFERENCES "MIUSUARIO"."PROVEEDORES" ("ID_PROVEEDORES") ENABLE;
