UPDATE AN_USUARIO
SET T_RUT = #{rut},
T_RUTDV = #{rutDV},
T_NOMBRES = #{nombres},
T_APEPAT = #{apePaterno},
T_APEMAT = #{apeMaterno},
D_FECNAC = #{fecNacimiento},
T_GENERO = #{genero},
T_OCUPACION = #{ocupacion},
D_FECREG = #{fecRegistro},
C_TIPUSU = #{tipoUsuario}
WHERE C_CODUSU = #{codigoUsuario}

UPDATE AN_CLIENTE
SET C_FICHCLI = #{codigoFichaCli},
C_TIPCLI = #{tipoCliente}
WHERE C_CODUSU = #{codigoUsuario}
AND C_CODCLI = #{codigoCliente}

UPDATE AN_PROVEEDOR
SET C_FICHPROV = #{codigoFichaProv},
C_EMPRESA = #{codigoEmpresa}
WHERE C_CODUSU = #{codigoUsuario}
AND C_CODPROV = #{codigoProveedor}

UPDATE AN_USUARIOWEB
SET T_NOMUSU = #{nombreUsuario},
T_PASSWORD = #{password},
T_FIRMA = #{firma},
T_PREG1 = #{pregunta1},
T_PREG2 = #{pregunta2},
T_PREG3 = #{pregunta3},
T_RES1 = #{respuesta1},
T_RES2 = #{respuesta2},
T_RES3 = #{respuesta3},
C_TIPUSUWEB = #{tipoUsuWeb}
WHERE C_CODUSU = #{codigoUsuario}
AND C_CODUSUWEB = #{codigoUsuWeb}

UPDATE AN_DIRECCION
SET T_CALLE = #{calle},
T_NUMERACION = #{numeracion},
T_NRODEPTO = #{nroDepto},
N_PISO = #{piso},
T_OBSERV = #{observacion},
T_PRIOR = #{prioridad},
T_CODPOS = #{codigoPostal},
C_TIPDIR = #{tipoDireccion},
C_COMUNA = #{codigoComuna},
C_CIUDAD = #{codigoCiudad},
C_REGION = #{codigoRegion},
C_PAIS = #{codigoPais},
C_GEOLOC = #{codigoGeoLoc}
WHERE C_CODDIR = #{codigoDireccion}
AND C_TITULAR = #{codigoTitular}

UPDATE AN_CONTACTO
SET T_EMAIL = #{email},
N_PRIOR = #{prioridad},
N_TELFIJO1 = #{telefonoFijo1},
N_TELFIJO2 = #{telefonoFijo2},
N_TELMOV1 = #{telefonoMovil1},
N_TELMOV2 = #{telefonoMovil2},
C_TIPCON = #{tipoContacto}
WHERE C_CODCON = #{codigoContacto}
AND C_TITULAR = #{codigoTitular}

UPDATE AN_EMPRESA
SET T_DESCRIPCION = #{descripcion},
D_FECFUN = #{fecFundacion},
D_FECREG = #{fecRegistro},
T_NOMBRE = #{nombre}
WHERE C_CODEMP = #{codigoEmpresa}

UPDATE AN_SOLICITUD
SET T_DESCRIPCION = #{descripcion},
T_ESTSOL = #{estadoSolicitud},
D_FECCREA = #{fecCreacion},
D_FECVEN = #{fecVencimiento},
N_PRECEST = #{precioEstimado},
N_PRIOR = #{prioridad},
C_CODCLI = #{codigoCliente},
C_CODSER = #{codigoServicio},
C_CODDIR = #{codigoDireccion}
WHERE C_CODSOL = #{codigoSolicitud}

UPDATE AN_SERVICIO
SET T_NOMBRE = #{nombre},
T_SIGLA = #{sigla},
D_FECREG = #{fecRegistro},
T_DESCRIPCION = #{descripcion},
C_TIPSER = #{tipoServicio}
WHERE C_CODSER = #{codigoServicio}

UPDATE AN_EMPRESA_OP_SERVICIO
SET N_PRIORIDAD = #{prioridad},
D_FECOPE = #{fecDesdeOpera},
D_FECREG = #{fecRegistro},
T_ACTIVO = #{activo}
WHERE C_CODEMP = #{codigoEmpresa}
AND C_CODSER = #{codigoServicio}

UPDATE AN_GEOLOC
SET N_LATITUD = #{latitud},
N_LONGITUD = #{longitud},
T_TIPGEO = #{tipoGeoLoc}
WHERE C_CODGEOLOC = #{codigoGeoLoc}

UPDATE AN_FICHACLIENTE
SET N_AREATRA = #{areaTrabajo},
N_ATENCION = #{atencion},
N_COMPLEJ = #{complejidad},
N_FORMALI = #{formalidad},
N_HOPST = #{hospitalidad},
N_PRESENC = #{presencia},
N_RECEP = #{recepcion},
N_TRATO = #{trato},
T_DESCRIPCION = #{descripcion}
WHERE C_FICHCLI = #{codigoFicha}

UPDATE AN_FICHAPROVEEDOR
SET N_ATENCION = #{atencion},
N_COHEREN = #{coherencia},
N_CNTCTO = #{contacto},
N_EDPROB = #{educacionProblema},
N_EXPROB = #{explicaProblema},
N_PUNTUAL = #{puntualidad},
N_TIMESERV = #{tiempoServicio},
T_DESCRIPCION = #{descripcion}
WHERE C_FICHPROV = #{codigoFicha}

UPDATE AN_SUBASTA
SET C_ESTADO = #{estado},
D_FECINI = #{fecInicio},
D_FECTER = #{fecTermino},
T_DURACION = #{duracion},
N_CANTEXT = #{cantidadExtnsions},
N_MTOMIN = #{montoMinimo},
N_MTOINI = #{montoInicial},
N_MTOFINAL = #{montoFinal},
C_EXTEND = #{extendida},
C_CODOFEG = #{codigoOfertaG},
C_CODSER = #{codigoServicio}
WHERE C_CODSUB = #{codigoSubasta}
AND C_CODSOL = #{codigoSolicitud}

UPDATE AN_OFERTA
SET D_FECOFER = #{fechaOferta},
N_COMISION = #{comision},
N_MTOOFER = #{montoOferta},
C_CODPROV = #{codigoProveedor}
WHERE C_CODOFER = #{codigoOferta}
AND C_CODSUB = #{codigoSubasta}

UPDATE AN_PRIVILEGIO
SET T_DESCRIPCION = #{descripcion},
T_VIGENTE = #{vigente},
T_OBSERVACION = #{observacion},
D_FECREG = #{fechaRegistro},
C_TIPOPRIV = #{tipoPrivilegio},
C_TIPUSUWEB = #{tipoUsuarioWeb}
WHERE C_CODPRIV = #{codigoPrivilegio}

UPDATE AN_PRIV_USUARIOWEB
SET T_ACTIVO = #{activo},
D_FECASIG = #{fechaAsignacion},
T_DESCRIPCION = #{descripcion}
WHERE C_CODPRIV = #{codigoPrivilegio}
AND C_CODUSUWEB = #{codigoUsuarioWeb}