DROP TABLE AN_CATALOGO;
DROP TABLE AN_CONFIGURACION;
DROP TABLE AN_USUARIOWEB;
DROP TABLE AN_USUARIO;
DROP TABLE AN_CLIENTE;
DROP TABLE AN_PROVEEDOR;
DROP TABLE AN_FICHAPROVEEDOR;
DROP TABLE AN_FICHACLIENTE;
DROP TABLE AN_PRIVILEGIO;
DROP TABLE AN_PRIV_USUARIOWEB;
DROP TABLE AN_DIRECCION;
DROP TABLE AN_GEOLOC;
DROP TABLE AN_CONTACTO;
DROP TABLE AN_EMPRESA;
DROP TABLE AN_SERVICIO;
DROP TABLE AN_CARGO;
DROP TABLE AN_EMPRESA_OP_SERVICIO;
DROP TABLE AN_SERVICIO_CARGO;
DROP TABLE AN_SOLICITUD;
DROP TABLE AN_SUBASTA;
DROP TABLE AN_SUBASTA_PROVEEDOR;
DROP TABLE AN_OFERTA;
DROP TABLE AN_TRANSACCION;
DROP TABLE AN_BITTRANSACCION;
DROP TABLE AN_MEDIOPAGO;
DROP TABLE AN_TARJETA;
DROP TABLE AN_PAIS;
DROP TABLE AN_REGION;
DROP TABLE AN_CIUDAD;
DROP TABLE AN_COMUNA;
DROP TABLE AN_MAILREPORT;
DROP TABLE AN_MENU;

CREATE TABLE AN_MENU(
C_CODIGO INTEGER,
T_NOMBRE_MENU TEXT NOT NULL,
C_PADRE_MENU INTEGER,
T_DESTINO_MENU TEXT NOT NULL,
C_TIPCATAL VARCHAR(20),
C_ORDEN INTEGER NOT NULL
);

CREATE TABLE AN_CATALOGO(
C_CATALOGO VARCHAR(30) NOT NULL, --PK //CODIGO CATALOGO EJ 'USUARIOWEB_TIPO'
C_TIPCATAL VARCHAR(20) NOT NULL, -- CODIGO DEL VALOR
T_DESCRIPCION  VARCHAR(250) NOT NULL, -- VALOR DE LA CADENA
N_ORDEN INT NOT NULL, -- PRIORIDAD U ORDEN
T_VIGENTE VARCHAR(1) -- INDICA SI ESTÁ ACTIVA LA FILA
);

CREATE TABLE AN_CONFIGURACION(
C_CONFIG VARCHAR(20) NOT NULL, --PK
C_TIPCONFIG VARCHAR(20) NOT NULL,
T_DESCRIPCION  VARCHAR(100) NOT NULL
);

CREATE TABLE AN_USUARIOWEB (
C_CODUSUWEB VARCHAR(20) NOT NULL, --PK
T_NOMUSU VARCHAR(15) NOT NULL,
T_PASSWORD VARCHAR(20) NOT NULL,
T_FIRMA VARCHAR(500),
T_PREG1 VARCHAR(15) NOT NULL,
T_PREG2 VARCHAR(15),
T_PREG3 VARCHAR(15),
T_RES1 VARCHAR(15) NOT NULL,
T_RES2 VARCHAR(15),
T_RES3 VARCHAR(15),
T_ESTCTA VARCHAR(2),
C_TIPUSUWEB VARCHAR(20) NOT NULL, --FK (AN_CATALOGO)
C_CODUSU VARCHAR(20) NOT NULL --FK (AN_USUARIO)
);

CREATE TABLE AN_USUARIO (
C_CODUSU VARCHAR(20) NOT NULL, --PK
T_RUT VARCHAR(15) NOT NULL,
T_RUTDV VARCHAR(1) NOT NULL,
T_NOMBRES VARCHAR(50) NOT NULL,
T_APEPAT VARCHAR(50) NOT NULL,
T_APEMAT VARCHAR(50) NOT NULL,
D_FECNAC DATE NOT NULL,
T_GENERO VARCHAR(1) NOT NULL,
T_OCUPACION VARCHAR(500),
D_FECREG DATE NOT NULL,
C_TIPUSU VARCHAR(20) NOT NULL --FK (AN_CATALOGO)
);

CREATE TABLE AN_CLIENTE (
C_CODCLI VARCHAR(20) NOT NULL, --PK
C_FICHCLI VARCHAR(20), --FK (AN_FICHACLIENTE)
C_TIPCLI VARCHAR(20) NOT NULL, --FK (AN_CATALOGO)
C_CODUSU VARCHAR(20) NOT NULL --FK (AN_USUARIO)
);

CREATE TABLE AN_PROVEEDOR (
C_CODPROV VARCHAR(20) NOT NULL, --PK
C_FICHPROV VARCHAR(20), --FK (AN_FICHAPROVEEDOR)
C_EMPRESA VARCHAR(20) NOT NULL, --FK (AN_EMPRESA)
C_CODSER VARCHAR(20) NOT NULL, --FK (AN_SERVICIO)
C_CODCAR VARCHAR(20) NOT NULL, --FK (AN_CARGO)
C_CODUSU VARCHAR(20) NOT NULL --FK (AN_USUARIO)
);

CREATE TABLE AN_FICHAPROVEEDOR (
C_FICHPROV VARCHAR(20) NOT NULL, --PK
N_ATENCION DECIMAL NOT NULL,
N_COHEREN DECIMAL NOT NULL,
N_CNTCTO DECIMAL NOT NULL,
N_EDPROB DECIMAL NOT NULL,
N_EXPROB DECIMAL NOT NULL,
N_PUNTUAL DECIMAL NOT NULL,
N_TIMESERV DECIMAL NOT NULL,
T_DESCRIPCION VARCHAR(5000),
N_CANTEVAL INT NOT NULL
);

CREATE TABLE AN_FICHACLIENTE (
C_FICHCLI VARCHAR(20) NOT NULL, --PK
N_AREATRA DECIMAL NOT NULL,
N_ATENCION DECIMAL NOT NULL,
N_COMPLEJ DECIMAL NOT NULL,
N_FORMALI DECIMAL NOT NULL,
N_HOPST DECIMAL NOT NULL,
N_PRESENC DECIMAL NOT NULL,
N_RECEP DECIMAL NOT NULL,
N_TRATO DECIMAL NOT NULL,
T_DESCRIPCION VARCHAR(5000),
N_CANTEVAL INT NOT NULL
);

CREATE TABLE AN_PRIVILEGIO (
C_CODPRIV VARCHAR(20) NOT NULL, --PK
T_DESCRIPCION VARCHAR(250) NOT NULL,
T_VIGENTE INT NOT NULL,
T_OBSERVACION VARCHAR(250),
D_FECREG DATE NOT NULL,
C_TIPOPRIV VARCHAR(40) NOT NULL, --FK (AN_CATALOGO)
C_TIPUSUWEB VARCHAR(20) --FK (AN_CATALOGO)
);

CREATE TABLE AN_PRIV_USUARIOWEB (
C_CODPRIV VARCHAR(20) NOT NULL, --FK (AN_PRIVILEGIO)
C_CODUSUWEB VARCHAR(20) NOT NULL, --FK (AN_USUARIOWEB)
T_ACTIVO INT NOT NULL,
D_FECASIG DATE NOT NULL,
T_DESCRIPCION VARCHAR(50)
);

CREATE TABLE AN_DIRECCION (
C_CODDIR VARCHAR(20) NOT NULL, --PK
T_CALLE VARCHAR(50) NOT NULL,
T_NUMERACION VARCHAR(10) NOT NULL,
T_NRODEPTO VARCHAR(10) NOT NULL,
N_PISO INT,
T_OBSERV VARCHAR(200),
T_PRIOR INT,
T_CODPOS VARCHAR(20),
C_TIPDIR VARCHAR(20) NOT NULL, --FK (AN_CATALOGO)
C_CODGEOLOC VARCHAR(20), --FK (AN_GEOLOC)
C_TITULAR VARCHAR(20) NOT NULL, --FK (AN_USUARIO, AN_EMPRESA)
C_COMUNA VARCHAR(20) NOT NULL --FK (AN_COMUNA)
);

CREATE TABLE AN_GEOLOC (
C_CODGEOLOC VARCHAR(20) NOT NULL, --PK
N_LATITUD BIGINT NOT NULL,
N_LONGITUD BIGINT NOT NULL,
C_TIPGEO VARCHAR(20)
);

CREATE TABLE AN_CONTACTO (
C_CODCON VARCHAR(20) NOT NULL, --PK
T_EMAIL VARCHAR(50) NOT NULL,
N_PRIOR INT,
N_TELFIJO1 VARCHAR(20),  
N_TELFIJO2 VARCHAR(20),
N_TELMOV1 VARCHAR(20),
N_TELMOV2 VARCHAR(20),
C_TIPCON VARCHAR(20) NOT NULL, --FK (AN_CATALOGO)
C_TITULAR VARCHAR(20) NOT NULL --FK (AN_USUARIO, AN_EMPRESA)
);

CREATE TABLE AN_EMPRESA(
C_CODEMP VARCHAR(20) NOT NULL, --PK
T_DESCRIPCION VARCHAR(500) NOT NULL,
D_FECFUN DATE NOT NULL,
D_FECREG DATE NOT NULL, 
T_NOMBRE VARCHAR(50) NOT NULL,
T_RUT VARCHAR(15) NOT NULL,
T_RUTDV VARCHAR(1) NOT NULL,
T_VIGENTE VARCHAR(1) NOT NULL
);

CREATE TABLE AN_SERVICIO (
C_CODSER VARCHAR(20) NOT NULL, --PK
T_NOMBRE VARCHAR(50) NOT NULL,
T_SIGLA VARCHAR(5) NOT NULL,
D_FECREG DATE NOT NULL,
T_DESCRIPCION VARCHAR(500) NOT NULL,
C_TIPSER VARCHAR(20) NOT NULL  --FK (AN_CATALOGO)
);

CREATE TABLE AN_CARGO (
C_CODCAR VARCHAR(20) NOT NULL, --PK
T_NOMBRE VARCHAR(50) NOT NULL,
T_SIGLA VARCHAR(5) NOT NULL,
T_DESCRIPCION VARCHAR(500) NOT NULL,
T_VIGENTE VARCHAR(5) NOT NULL
);

CREATE TABLE AN_EMPRESA_OP_SERVICIO(
C_CODEMP VARCHAR(20) NOT NULL, --FK (AN_EMPRESA)
C_CODSER VARCHAR(20) NOT NULL, --FK (AN_SERVICIO)
N_PRIORIDAD INT NOT NULL,
D_FECOPE DATE,
D_FECREG DATE NOT NULL,
T_ACTIVO VARCHAR (1)
);

CREATE TABLE AN_SERVICIO_CARGO(
C_CODCAR VARCHAR(20) NOT NULL, --FK (AN_CARGO)
C_CODSER VARCHAR(20) NOT NULL --FK (AN_SERVICIO)
);

CREATE TABLE AN_SOLICITUD (
C_CODSOL VARCHAR(20) NOT NULL, --PK
T_DESCRIPCION VARCHAR(1000) NOT NULL,
T_ESTSOL VARCHAR(5) NOT NULL,
D_FECCREA DATE NOT NULL,
D_FECVEN DATE NOT NULL,
N_PRECEST INT NOT NULL,
N_PRIOR INT NOT NULL,
C_CODCLI VARCHAR(20) NOT NULL, --FK (AN_CLIENTE) 
C_CODSER VARCHAR(20) NOT NULL, --FK (AN_SERVICIO)
C_CODDIR VARCHAR(20) NOT NULL --FK (AN_DIRECCION)
);

CREATE TABLE AN_SUBASTA (
C_CODSUB VARCHAR(20) NOT NULL,
C_ESTADO VARCHAR(5) NOT NULL,
D_FECINI DATE NOT NULL,
D_FECTER DATE,
T_DURACION VARCHAR(8),
N_CANTEXT INT NOT NULL,
N_MTOMIN DECIMAL,
N_MTOINI DECIMAL,
N_MTOFINAL DECIMAL,
T_DESCRIPCION VARCHAR(2000),
C_EXTEND INT NOT NULL, --FK (AN_CATALOGO)
C_CODOFEG VARCHAR(20), --FK (AN_OFERTA)
C_CODSER VARCHAR(20) NOT NULL, --FK (AN_SERVICIO)
C_CODSOL VARCHAR(20) NOT NULL --FK (AN_SOLICITUD)
);

CREATE TABLE AN_SUBASTA_PROVEEDOR (
C_CODPROV VARCHAR(20) NOT NULL, --FK (AN_PROVEEDOR)
C_CODSUB VARCHAR(20) NOT NULL, --FK (AN_SUBASTA)
T_ESTADO VARCHAR(5) NOT NULL,
D_FECREG DATE NOT NULL
);

CREATE TABLE AN_OFERTA (
C_CODOFER VARCHAR(20) NOT NULL, --PK
D_FECOFER DATE NOT NULL,
N_COMISION DECIMAL NOT NULL,
N_MTOOFER DECIMAL NOT NULL,
C_CODSUB VARCHAR(20) NOT NULL, --FK (AN_SUBASTA)
C_CODPROV VARCHAR(20) NOT NULL --FK (AN_PROVEEDOR)
);

CREATE TABLE AN_TRANSACCION (
C_CODTRAN VARCHAR(20) NOT NULL, --PK
C_ESTADO VARCHAR(5) NOT NULL,
D_FECCREA DATE NOT NULL,
D_FECTER DATE,
N_MTOTOTAL DECIMAL,
N_CMPLEJ INT NOT NULL,
T_DESCRIPCION VARCHAR(2000),
C_CODMEDPAG VARCHAR(20), --FK (AN_MEDIOPAGO)
C_TIPMON VARCHAR(5), --FK (AN_CATALOGO)
C_CODSUB VARCHAR(20) NOT NULL --FK (AN_TRANSACCION)
);


CREATE TABLE AN_BITTRANSACCION (
C_CODBITTRAN VARCHAR(20) NOT NULL, --PK
T_ESTORI VARCHAR(5) NOT NULL,
T_ESTFIN VARCHAR(5) NOT NULL,
D_FECMOV DATE NOT NULL,
T_DESCRIPCION TEXT,
C_CODTRAN VARCHAR(20) NOT NULL --FK (AN_TRANSACCION)
);

CREATE TABLE AN_MEDIOPAGO (
C_CODMEDPAG VARCHAR(20) NOT NULL, --PK
D_FECPAG DATE NOT NULL,
N_MONTO DECIMAL NOT NULL,
N_CUOTAS INT,
N_MTOCTA DECIMAL,
T_DESCRIPCION VARCHAR(1000),
C_VIAPAG VARCHAR(10) NOT NULL, --FK (AN_CATALOGO)
C_CODTAR VARCHAR(20) --FK(AN_TARJETA)
);

CREATE TABLE AN_TARJETA (
C_CODTAR VARCHAR(20) NOT NULL, --PK
D_FECEXP VARCHAR(10) NOT NULL,
T_NROTAR VARCHAR(30) NOT NULL,
C_ENTIDAD VARCHAR(5) NOT NULL, --FK (AN_CATALOGO)
C_TIPTAR VARCHAR(5) NOT NULL --FK (AN_CATALOGO)
);


CREATE TABLE AN_PAIS (
C_CODPAIS VARCHAR(10) NOT NULL, --PK
T_SIGLA VARCHAR(2) NOT NULL,
T_ABREV VARCHAR(5) NOT NULL,
T_NOMBRE VARCHAR(20) NOT NULL
);

CREATE TABLE AN_REGION (
C_CODREG VARCHAR(10) NOT NULL, --PK
T_SIGLA VARCHAR(2) NOT NULL, 
T_NOMBRE VARCHAR(50) NOT NULL, 
T_IDENT VARCHAR(10) NOT NULL, 
C_CODPAIS VARCHAR(10) NOT NULL --FK (AN_PAIS)
);

CREATE TABLE AN_CIUDAD (
C_CODCIU VARCHAR(10) NOT NULL, --PK 
T_SIGLA VARCHAR(2) NOT NULL, 
T_NOMBRE VARCHAR(50) NOT NULL, 
C_CODREG VARCHAR(10) NOT NULL --FK (AN_REGION)
);

CREATE TABLE AN_COMUNA (
C_CODCOM VARCHAR(10) NOT NULL, --PK
T_SIGLA VARCHAR(2) NOT NULL,
T_NOMBRE VARCHAR(50) NOT NULL,
C_CODCIU VARCHAR(10) NOT NULL --FK (AN_CIUDAD)
);

CREATE TABLE AN_MAILREPORT (
C_CODMAIL VARCHAR(50) NOT NULL, -- PK
T_FROM VARCHAR(50) NOT NULL,
T_TO VARCHAR(5000) NOT NULL,
T_CC VARCHAR(5000) NOT NULL,
T_CCO VARCHAR(5000),
T_ASUNTO VARCHAR(5000) NOT NULL,
T_MAIL VARCHAR(5000) NOT NULL
);

SELECT * FROM AN_CATALOGO;
SELECT * FROM AN_CONFIGURACION;
SELECT * FROM AN_USUARIOWEB;
SELECT * FROM AN_USUARIO;
SELECT * FROM AN_CLIENTE;
SELECT * FROM AN_PROVEEDOR;
SELECT * FROM AN_FICHAPROVEEDOR;
SELECT * FROM AN_FICHACLIENTE;
SELECT * FROM AN_PRIVILEGIO;
SELECT * FROM AN_PRIV_USUARIOWEB;
SELECT * FROM AN_DIRECCION;
SELECT * FROM AN_GEOLOC;
SELECT * FROM AN_CONTACTO;
SELECT * FROM AN_EMPRESA;
SELECT * FROM AN_SERVICIO;
SELECT * FROM AN_CARGO;
SELECT * FROM AN_EMPRESA_OP_SERVICIO;
SELECT * FROM AN_SERVICIO_CARGO;
SELECT * FROM AN_SOLICITUD;
SELECT * FROM AN_SUBASTA;
SELECT * FROM AN_SUBASTA_PROVEEDOR;
SELECT * FROM AN_OFERTA;
SELECT * FROM AN_TRANSACCION;
SELECT * FROM AN_BITTRANSACCION;
SELECT * FROM AN_MEDIOPAGO;
SELECT * FROM AN_TARJETA;
SELECT * FROM AN_PAIS;
SELECT * FROM AN_REGION;
SELECT * FROM AN_CIUDAD;
SELECT * FROM AN_COMUNA;
SELECT * FROM AN_MAILREPORT;
SELECT * FROM AN_MENU;