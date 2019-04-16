INSERT INTO AN_SUBASTA (
C_CODSUB,
C_ESTADO,
D_FECINI,
D_FECTER,
T_DURACION,
N_CANTEXT,
N_MTOMIN,
N_MTOINI,
N_MTOFINAL,
C_EXTEND,
C_CODOFEG,
C_CODSER,
C_CODSOL
) VALUES (
#{codigoSubasta},
#{estado},
#{fecInicio},
#{fecTermino},
#{duracion},
#{cantidadExtnsions},
#{montoMinimo},
#{montoInicial},
#{montoFinal},
#{extendida},
#{codigoOfertaG},
#{codigoServicio},
#{codigoSolicitud}
		)

INSERT INTO AN_OFERTA (
C_CODOFER,
D_FECOFER,
N_COMISION,
N_MTOOFER,
C_CODPROV
) VALUES (
#{codigoOferta},
#{fechaOferta},
#{comision},
#{montoOferta},
#{codigoProveedor}
)

INSERT INTO AN_TRANSACCION (
C_CODTRAN,
C_ESTADO,
D_FECCREA,
D_FECTER,
N_MTOTOTAL,
N_CMPLEJ,
T_DESCRIPCION,
C_CODMEDPAG,
C_TIPMON,
C_CODSUB
) VALUES (
#{codigoTransaccion},
#{estado},
#{fechaCreacion},
#{fechaTermino},
#{montoTotal},
#{complejidad},
#{descripcion},
#{codigoMedioPago},
#{tipoMoneda},
#{codigoSubasta}
)

INSERT INTO AN_BITTRANSACCION (
C_CODBITTRAN,
T_ESTORI,
T_ESTFIN,
D_FECMOV,
T_DESCRIPCION,
C_CODTRAN
) VALUES (
#{codigoBitTransaccion},
#{estadoOrigen},
#{estadoFinal},
#{fecMovimiento},
#{descripcion},
#{codigoTransaccion}
)

INSERT INTO AN_MEDIOPAGO (
C_CODMEDPAG,
D_FECPAG,
N_MONTO,
N_CUOTAS,
N_MTOCTA,
T_DESCRIPCION,
C_VIAPAG,
C_CODTAR
) VALUES (
#{codigoMedioPago},
#{fechaPago},
#{totalCompra},
#{cuotas},
#{montoCuota},
#{descripcion},
#{viaPago},
#{codigoTarjeta}
)

INSERT INTO AN_TARJETA (
C_CODTAR,
T_ENTIDAD,
D_FECEXP,
T_NROTAR,
C_TIPTAR
) VALUES (
#{codigoTarjeta},
#{entidad},
#{fechaExpiracion},
#{nroTarjeta},
#{tipoTarjeta}
)

INSERT INTO AN_FICHAPROVEEDOR (
C_FICHPROV,
N_ATENCION,
N_COHEREN,
N_CNTCTO,
N_EDPROB,
N_EXPROB,
N_PUNTUAL,
N_TIMESERV,
T_DESCRIPCION
) VALUES ( 
#{codigoFicha},
#{atencion},
#{coherencia},
#{contacto},
#{educacionProblema},
#{explicaProblema},
#{puntualidad},
#{tiempoServicio},
#{descripcion}
)

INSERT INTO AN_FICHACLIENTE (
C_FICHCLI,
N_AREATRA,
N_ATENCION,
N_COMPLEJ,
N_FORMALI,
N_HOPST,
N_PRESENC,
N_RECEP,
N_TRATO,
T_DESCRIPCION
) VALUES (
#{codigoFicha},
#{areaTrabajo},
#{atencion},
#{complejidad},
#{formalidad},
#{hospitalidad},
#{presencia},
#{recepcion},
#{trato},
#{descripcion}
)

INSERT INTO AN_PRIVILEGIO (
C_CODPRIV,
T_DESCRIPCION,
T_VIGENTE,
T_OBSERVACION,
D_FECREG,
C_TIPOPRIV,
C_TIPUSUWEB
) VALUES (
#{codigoPrivilegio},
#{descripcion},
#{vigente},
#{observacion},
#{fechaRegistro},
#{tipoPrivilegio},
#{tipoUsuarioWeb}
);

INSERT INTO AN_PRIV_USUARIOWEB (
C_CODPRIV,
C_CODUSUWEB,
T_ACTIVO, 
D_FECASIG
T_DESCRIPCION
) VALUES (
#{codigoPrivilegio},
#{codigoUsuarioWeb},
#{activo},
#{fechaAsignacion},
#{descripcion}
)