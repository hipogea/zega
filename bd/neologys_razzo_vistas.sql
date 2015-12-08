-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:26:00
-- Versión del servidor: 5.5.42-37.1
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `neologys_razzo`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_alinventario`
--
CREATE TABLE IF NOT EXISTS `vw_alinventario` (
`codalm` varchar(3)
,`creadopor` longtext
,`creadoel` longtext
,`modificadopor` longtext
,`modificadoel` longtext
,`fechainicio` char(19)
,`fechafin` char(19)
,`periodocontable` varchar(4)
,`codresponsable` varchar(4)
,`codart` varchar(10)
,`codcen` varchar(4)
,`um` varchar(3)
,`cantlibre` double
,`canttran` double
,`cantres` double
,`ubicacion` varchar(10)
,`lote` varchar(10)
,`siid` bigint(20)
,`ssiduser` varchar(30)
,`id` bigint(20)
,`punit` double
,`codmon` varchar(3)
,`descripcion` varchar(60)
,`codtipo` varchar(2)
,`desum` varchar(20)
,`ptlibre` double(20,3)
,`pttran` double(20,3)
,`ptres` double(20,3)
,`pttotal` double(20,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `Vw_alinventario_resumen`
--
CREATE TABLE IF NOT EXISTS `Vw_alinventario_resumen` (
`stocklibre` double(20,3)
,`stocktran` double(20,3)
,`stockres` double(20,3)
,`stocktotal` double(20,3)
,`codalm` varchar(3)
,`codcen` varchar(4)
,`codtipo` varchar(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_almacendocs`
--
CREATE TABLE IF NOT EXISTS `vw_almacendocs` (
`numvale` char(12)
,`nomal` varchar(35)
,`nomcen` varchar(35)
,`nombredocumento` varchar(45)
,`codtrabajador` char(4)
,`cestadovale` char(2)
,`fechacont` date
,`fechacre` timestamp
,`idvale` bigint(20)
,`textolargo` text
,`fechavale` date
,`codart` varchar(10)
,`codmov` varchar(2)
,`valido` varchar(1)
,`preciounit` double
,`lote` varchar(10)
,`destino` varchar(20)
,`checki` varchar(1)
,`cant` double
,`idref` bigint(20)
,`alemi` varchar(3)
,`aldes` varchar(3)
,`fecha` char(19)
,`coddoc` varchar(3)
,`numdoc` varchar(15)
,`usuario` varchar(25)
,`um` varchar(3)
,`comentario` varchar(40)
,`codocuref` varchar(3)
,`numdocref` varchar(15)
,`codcentro` varchar(4)
,`id` bigint(20)
,`codestado` varchar(2)
,`prefijo` varchar(2)
,`fechadoc` char(19)
,`correlativo` varchar(12)
,`numkardex` varchar(14)
,`solicitante` varchar(18)
,`hidvale` bigint(20)
,`descripcion` varchar(60)
,`desdocu` varchar(45)
,`movimiento` varchar(35)
,`desum` varchar(20)
,`iduser` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_alreservas`
--
CREATE TABLE IF NOT EXISTS `vw_alreservas` (
`codart` varchar(10)
,`txtmaterial` varchar(40)
,`hidesolpe` bigint(20)
,`id` bigint(20)
,`cant` double
,`numreserva` int(11)
,`atendido` char(19)
,`usuario` varchar(25)
,`fechares` char(19)
,`estadoreserva` varchar(2)
,`codocu` varchar(3)
,`desum` varchar(20)
,`estado` varchar(25)
,`desdocu` varchar(45)
,`numero` varchar(10)
,`item` char(3)
,`um` char(3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_atencionessolpe`
--
CREATE TABLE IF NOT EXISTS `vw_atencionessolpe` (
`item` char(3)
,`iddesolpe` bigint(20)
,`cantdesolpe` float
,`numvale` char(12)
,`desumsolpe` varchar(20)
,`idsolpe` bigint(20)
,`umsolpe` char(3)
,`cantreserva` double
,`codocu` varchar(3)
,`numreserva` int(11)
,`estadoreserva` varchar(2)
,`id` bigint(20)
,`cant` double
,`hidreserva` bigint(20)
,`hidkardex` bigint(20)
,`estadoatencion` char(2)
,`codmov` varchar(2)
,`um` varchar(3)
,`numkardex` varchar(14)
,`usuario` varchar(25)
,`codart` varchar(10)
,`preciounit` double
,`fecha` char(19)
,`monto` double
,`ceco` varchar(12)
,`txtmaterial` varchar(40)
,`desumkardex` varchar(20)
,`movimiento` varchar(35)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_contactos`
--
CREATE TABLE IF NOT EXISTS `vw_contactos` (
`id` int(11)
,`c_nombre` varchar(30)
,`correlativo` varchar(5)
,`c_hcod` varchar(6)
,`despro` varchar(100)
,`c_cargo` varchar(30)
,`c_mail` varchar(30)
,`c_tel` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_controlactivos`
--
CREATE TABLE IF NOT EXISTS `vw_controlactivos` (
`idformato` int(11)
,`idactivo` bigint(20)
,`tipo` varchar(1)
,`fecha` char(19)
,`codobraencurso` varchar(12)
,`ccanterior` varchar(8)
,`ccactual` varchar(8)
,`comentario` longtext
,`numformato` varchar(17)
,`codestado` varchar(2)
,`coddocu` varchar(3)
,`codepanterior` varchar(3)
,`codep` varchar(3)
,`codcentro` varchar(4)
,`estado` varchar(25)
,`nomcen` varchar(35)
,`nombrecompleto` varchar(92)
,`barcoanterior` varchar(25)
,`barcoactual` varchar(25)
,`codigosap` varchar(6)
,`codigoaf` varchar(14)
,`descripcion` varchar(40)
,`marca` varchar(15)
,`modelo` varchar(25)
,`serie` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_costos`
--
CREATE TABLE IF NOT EXISTS `vw_costos` (
`id` int(11)
,`ceco` varchar(12)
,`fechacontable` date
,`monto` double
,`codmoneda` varchar(3)
,`usuario` varchar(25)
,`idref` bigint(20)
,`tipo` varchar(1)
,`creadoel` char(19)
,`ano` char(4)
,`mes` char(2)
,`clasecolector` char(1)
,`iduser` int(11)
,`numvale` char(12)
,`codart` varchar(10)
,`codmov` varchar(2)
,`valido` varchar(1)
,`destino` varchar(20)
,`checki` varchar(1)
,`cant` double
,`alemi` varchar(3)
,`aldes` varchar(3)
,`fecha` char(19)
,`coddoc` varchar(3)
,`numdoc` varchar(15)
,`um` varchar(3)
,`comentario` varchar(40)
,`codocuref` varchar(3)
,`numdocref` varchar(15)
,`codcentro` varchar(4)
,`idkardex` bigint(20)
,`codestado` varchar(2)
,`prefijo` varchar(2)
,`fechadoc` char(19)
,`correlativo` varchar(12)
,`numkardex` varchar(14)
,`solicitante` varchar(18)
,`hidvale` bigint(20)
,`descripcion` varchar(60)
,`desdocu` varchar(45)
,`movimiento` varchar(35)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_dee`
--
CREATE TABLE IF NOT EXISTS `vw_dee` (
`um` varchar(3)
,`desum` varchar(20)
,`creadopor` varchar(25)
,`creadoel` varchar(20)
,`modificadopor` varchar(20)
,`modificadoel` varchar(25)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_despacho`
--
CREATE TABLE IF NOT EXISTS `vw_despacho` (
`id` bigint(20)
,`hidpunto` int(11)
,`hidkardex` bigint(20)
,`fechacreac` date
,`fechaprog` date
,`descripcion` varchar(60)
,`responsable` varchar(4)
,`iduser` int(11)
,`vigente` char(1)
,`codart` varchar(10)
,`codcentro` char(4)
,`um` varchar(3)
,`nombrepunto` varchar(40)
,`codalmacen` char(3)
,`descripmaterial` varchar(60)
,`cant` double
,`desum` varchar(20)
,`idkardex` bigint(20)
,`numdocref` varchar(15)
,`numvale` char(12)
,`hidvale` bigint(20)
,`movimiento` varchar(35)
,`ap` varchar(30)
,`am` varchar(35)
,`nombres` varchar(25)
,`codocuref` varchar(3)
,`desdocu` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_despachogeneral`
--
CREATE TABLE IF NOT EXISTS `vw_despachogeneral` (
`hidvale` bigint(20)
,`codcentro` char(4)
,`codalmacen` char(3)
,`nombrepunto` varchar(40)
,`numvale` char(12)
,`movimiento` varchar(35)
,`items` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_detalleingresofactura`
--
CREATE TABLE IF NOT EXISTS `vw_detalleingresofactura` (
`idtemp` bigint(20)
,`id` int(11)
,`hidfactura` bigint(20)
,`item` varchar(3)
,`hidkardex` bigint(20)
,`iduser` int(11)
,`fechacrea` datetime
,`hidalentrega` bigint(20)
,`identrega` bigint(20)
,`iddetcompra` bigint(20)
,`cant` double
,`fechaentrega` char(19)
,`idkardex` bigint(20)
,`punitentrega` double
,`codart` varchar(8)
,`cantcompras` double
,`punitcompra` double
,`itemcompra` varchar(3)
,`descri` varchar(40)
,`codentro` varchar(4)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_detalle_guia`
--
CREATE TABLE IF NOT EXISTS `vw_detalle_guia` (
`m_obs` longtext
,`desum` varchar(20)
,`idtemp` bigint(20)
,`id` bigint(20)
,`n_hguia` bigint(20)
,`c_itguia` varchar(3)
,`n_cangui` double
,`idstatus` int(11)
,`c_codgui` varchar(10)
,`c_edgui` varchar(2)
,`c_descri` varchar(40)
,`c_um` varchar(3)
,`c_codep` varchar(3)
,`c_estado` varchar(2)
,`c_codactivo` varchar(13)
,`c_codsap` varchar(5)
,`nomep` varchar(25)
,`estado` varchar(25)
,`desmotivo` varchar(35)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_detalle_stock_reservado`
--
CREATE TABLE IF NOT EXISTS `vw_detalle_stock_reservado` (
`numsolpe` varchar(10)
,`item` char(3)
,`tipimputacion` char(1)
,`imputacion` varchar(12)
,`desum` varchar(20)
,`cantreservada` double
,`usuariodesolpe` varchar(35)
,`fechaent` date
,`cantres` double
,`cantlibre` double
,`id` bigint(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_docu_ingresados`
--
CREATE TABLE IF NOT EXISTS `vw_docu_ingresados` (
`id` int(11)
,`codprov` varchar(6)
,`fecha` char(19)
,`fechain` char(19)
,`correlativo` varchar(8)
,`tipodoc` varchar(3)
,`moneda` varchar(1)
,`descorta` varchar(25)
,`codepv` varchar(3)
,`monto` double
,`codgrupo` varchar(3)
,`codresponsable` varchar(4)
,`creadopor` varchar(23)
,`creadoel` varchar(15)
,`texv` longtext
,`docref` varchar(14)
,`codteniente` varchar(4)
,`codlocal` varchar(4)
,`numero` varchar(20)
,`despro` varchar(100)
,`rucpro` varchar(11)
,`desdocu` varchar(45)
,`nomep` varchar(25)
,`responsable` varchar(92)
,`apoderado` varchar(92)
,`nomcen` varchar(35)
,`estado` varchar(25)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_dpeticion`
--
CREATE TABLE IF NOT EXISTS `vw_dpeticion` (
`id` bigint(20)
,`hidpeticion` bigint(20)
,`um` char(3)
,`codart` varchar(10)
,`punit` double
,`plista` float
,`igv_monto` float
,`descuento` float
,`pventa` float
,`cant` double
,`comentario` text
,`codestado` char(2)
,`codcen` varchar(4)
,`codal` varchar(3)
,`disponibilidad` char(2)
,`idtemp` bigint(20)
,`item` char(3)
,`idusertemp` int(11)
,`descripcion` varchar(40)
,`idstatus` int(1)
,`tipo` char(1)
,`imputacion` varchar(12)
,`codocu` char(3)
,`estado` varchar(25)
,`dedispo` varchar(40)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_eventos`
--
CREATE TABLE IF NOT EXISTS `vw_eventos` (
`id` int(11)
,`codocu` varchar(3)
,`estadofinal` varchar(2)
,`estadoinicial` varchar(2)
,`descripcion` varchar(30)
,`creadopor` varchar(20)
,`creadoel` varchar(15)
,`einicial` varchar(25)
,`desdocu` varchar(45)
,`efinal` varchar(25)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_guia`
--
CREATE TABLE IF NOT EXISTS `vw_guia` (
`id` bigint(20)
,`c_numgui` varchar(8)
,`c_coclig` varchar(6)
,`cod_cen` varchar(4)
,`d_fecgui` char(19)
,`c_estgui` varchar(2)
,`c_rsguia` varchar(1)
,`c_codtra` varchar(6)
,`c_trans` varchar(20)
,`codocu` varchar(3)
,`c_motivo` varchar(3)
,`c_placa` varchar(15)
,`c_licon` varchar(10)
,`d_fectra` char(19)
,`n_direc` int(11)
,`c_desgui` longtext
,`n_guia` bigint(20)
,`c_texto` longtext
,`c_dirsoc` varchar(1)
,`c_serie` varchar(3)
,`c_salida` varchar(1)
,`n_direcformaldes` int(11)
,`n_directran` int(11)
,`n_dirsoc` int(11)
,`creadopor` varchar(25)
,`modificadopor` varchar(25)
,`creadoel` varchar(20)
,`modificadoel` varchar(20)
,`c_estado` varchar(2)
,`n_hguia` bigint(11)
,`c_itguia` varchar(3)
,`c_af` varchar(1)
,`c_codsap` varchar(5)
,`hidref` bigint(20)
,`docref` varchar(8)
,`n_cangui` double
,`c_codgui` varchar(8)
,`c_edgui` varchar(2)
,`c_descri` varchar(40)
,`m_obs` longtext
,`c_codactivo` varchar(13)
,`c_um` varchar(3)
,`c_codep` varchar(3)
,`l_libre` varchar(1)
,`ptopartida` varchar(100)
,`desmotivo` varchar(35)
,`distpartida` varchar(30)
,`provpartida` varchar(30)
,`dptopartida` varchar(30)
,`direcciontransportista` varchar(100)
,`direccionformaldes` varchar(100)
,`ptollegada` varchar(100)
,`distllegada` varchar(30)
,`provllegada` varchar(30)
,`dptollegada` varchar(30)
,`razondestinatario` varchar(100)
,`rucdestinatario` varchar(11)
,`ructrans` varchar(11)
,`razontransportista` varchar(100)
,`rucsoc` varchar(12)
,`nomep` varchar(25)
,`estadodetalle` varchar(25)
,`estado` varchar(25)
,`y_report` int(11)
,`x_report` int(11)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_hojaentrada`
--
CREATE TABLE IF NOT EXISTS `vw_hojaentrada` (
`um` varchar(3)
,`codart` varchar(10)
,`codmov` varchar(2)
,`cant` double
,`alemi` varchar(3)
,`fecha` char(19)
,`comentario` varchar(40)
,`codocuref` varchar(3)
,`numdocref` varchar(15)
,`codcentro` varchar(4)
,`preciounit` double
,`iduser` int(11)
,`fechadoc` char(19)
,`numcot` varchar(10)
,`item` varchar(3)
,`punit` double
,`desum` varchar(20)
,`despro` varchar(100)
,`texto` varchar(40)
,`numvale` char(12)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_imputaciones`
--
CREATE TABLE IF NOT EXISTS `vw_imputaciones` (
`codc` varchar(12)
,`clasecolector` varchar(1)
,`desceco` varchar(40)
,`desimputa` varchar(15)
,`validacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_inventario`
--
CREATE TABLE IF NOT EXISTS `vw_inventario` (
`codestado` varchar(2)
,`rocoto` varchar(1)
,`iddocu` bigint(20)
,`coddocu` varchar(3)
,`posicion` varchar(6)
,`codlugar` varchar(6)
,`codep` varchar(3)
,`idinventario` bigint(20)
,`codigo` varchar(6)
,`c_estado` varchar(1)
,`modificadopor` varchar(25)
,`modificadoel` varchar(20)
,`codigosap` varchar(6)
,`codigoaf` varchar(14)
,`descripcion` varchar(40)
,`marca` varchar(15)
,`modelo` varchar(25)
,`comentario` longtext
,`fecha` char(19)
,`serie` varchar(20)
,`clasefoto` varchar(30)
,`codigopadre` varchar(5)
,`adicional` varchar(15)
,`numerodocumento` varchar(20)
,`codeporiginal` varchar(3)
,`codepanterior` varchar(3)
,`baja` varchar(1)
,`tipo` varchar(2)
,`desdocu` varchar(45)
,`nomep` varchar(25)
,`nombreepanterior` varchar(25)
,`nombreeporiginal` varchar(25)
,`deslugar` varchar(50)
,`nomcen` varchar(35)
,`area` varchar(25)
,`codpropietario` varchar(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_kardex`
--
CREATE TABLE IF NOT EXISTS `vw_kardex` (
`numvale` char(12)
,`codart` varchar(10)
,`codmov` varchar(2)
,`valido` varchar(1)
,`destino` varchar(20)
,`checki` varchar(1)
,`cant` double
,`idref` bigint(20)
,`alemi` varchar(3)
,`aldes` varchar(3)
,`fecha` char(19)
,`coddoc` varchar(3)
,`numdoc` varchar(15)
,`usuario` varchar(25)
,`creadopor` varchar(25)
,`creadoel` varchar(20)
,`modificadopor` varchar(25)
,`modificadoel` varchar(20)
,`um` varchar(3)
,`comentario` varchar(40)
,`codocuref` varchar(3)
,`numdocref` varchar(15)
,`codcentro` varchar(4)
,`id` bigint(20)
,`codestado` varchar(2)
,`prefijo` varchar(2)
,`fechadoc` char(19)
,`correlativo` varchar(12)
,`numkardex` varchar(14)
,`solicitante` varchar(18)
,`hidvale` bigint(20)
,`descripcion` varchar(60)
,`desdocu` varchar(45)
,`movimiento` varchar(35)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_lugares`
--
CREATE TABLE IF NOT EXISTS `vw_lugares` (
`despro` varchar(100)
,`codlugar` varchar(6)
,`deslugar` varchar(50)
,`claselugar` varchar(3)
,`codpro` varchar(6)
,`n_direc` int(11)
,`c_direc` varchar(100)
,`departamento` varchar(40)
,`provincia` varchar(40)
,`distrito` varchar(40)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_observaciones`
--
CREATE TABLE IF NOT EXISTS `vw_observaciones` (
`codpropietario` varchar(4)
,`idinventario` bigint(20)
,`hidinventario` bigint(20)
,`fecha` char(19)
,`descri` varchar(30)
,`mobs` longtext
,`usuario` varchar(40)
,`id` int(11)
,`codestado` varchar(2)
,`estado` varchar(25)
,`codigoaf` varchar(14)
,`codigosap` varchar(6)
,`codlugar` varchar(6)
,`descripcion` varchar(40)
,`marca` varchar(15)
,`modelo` varchar(25)
,`serie` varchar(20)
,`codcentro` varchar(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ocompra`
--
CREATE TABLE IF NOT EXISTS `vw_ocompra` (
`numcot` varchar(10)
,`codpro` varchar(6)
,`fecdoc` char(19)
,`codcon` varchar(5)
,`codestado` varchar(2)
,`texto` varchar(40)
,`textolargo` longtext
,`tipologia` varchar(1)
,`moneda` varchar(3)
,`orcli` varchar(12)
,`desum` varchar(20)
,`descuento` smallint(6)
,`usuario` varchar(35)
,`coddocu` varchar(3)
,`creado` varchar(20)
,`modificado` varchar(20)
,`creadopor` varchar(25)
,`creadoel` varchar(20)
,`modificadopor` varchar(25)
,`modificadoel` varchar(20)
,`codtipofac` varchar(2)
,`codsociedad` varchar(1)
,`codgrupoventas` varchar(3)
,`codtipocotizacion` varchar(1)
,`validez` int(11)
,`codcentro` varchar(4)
,`nigv` double
,`codobjeto` varchar(3)
,`fechapresentacion` char(19)
,`fechanominal` char(19)
,`idguia` int(11)
,`id` bigint(20)
,`codentro` varchar(4)
,`codigoalma` varchar(3)
,`codart` varchar(8)
,`disp` varchar(2)
,`cant` double
,`punit` double
,`item` varchar(3)
,`descri` varchar(40)
,`stock` double
,`detalle` longtext
,`tipoitem` varchar(1)
,`estadodetalle` varchar(2)
,`um` varchar(3)
,`hidguia` bigint(20)
,`codservicio` varchar(6)
,`tipoimputacion` varchar(1)
,`subto` double
,`desmon` varchar(10)
,`tipofacturacion` varchar(35)
,`estado` varchar(25)
,`rucsoc` varchar(12)
,`dsocio` varchar(40)
,`c_nombre` varchar(30)
,`simbolo` varchar(3)
,`c_cargo` varchar(30)
,`c_tel` varchar(30)
,`c_mail` varchar(30)
,`despro` varchar(100)
,`rucpro` varchar(11)
,`emailpro` varchar(60)
,`desdocu` varchar(45)
,`textocabeza` longtext
,`textopie` longtext
,`ap` varchar(30)
,`am` varchar(35)
,`nombres` varchar(25)
,`telfijo` varchar(8)
,`telmoviles` varchar(30)
,`c_direc` varchar(100)
,`punitdes` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ocosubtotal`
--
CREATE TABLE IF NOT EXISTS `vw_ocosubtotal` (
`idguia` int(11)
,`hidguia` bigint(20)
,`nigv` double
,`descuento` smallint(6)
,`simbolo` varchar(3)
,`subtotal` double(19,2)
,`destotal` double(19,2)
,`subtotaldes` double(19,2)
,`impuesto` double(19,2)
,`total` double(19,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_opcionesdocumentos`
--
CREATE TABLE IF NOT EXISTS `vw_opcionesdocumentos` (
`desdocu` varchar(45)
,`idopdoc` bigint(20)
,`campo` varchar(30)
,`nombrecampo` varchar(30)
,`tipodato` varchar(1)
,`longitud` int(11)
,`id` int(11)
,`idusuario` bigint(20)
,`username` varchar(64)
,`coddocu` varchar(3)
,`valor` varchar(40)
,`seleccionable` longtext
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_pareto`
--
CREATE TABLE IF NOT EXISTS `vw_pareto` (
`codart` varchar(10)
,`desum` varchar(20)
,`punit` double
,`descripcion` varchar(60)
,`ptlibre` double(20,3)
,`ubicacion` varchar(10)
,`codalm` varchar(3)
,`codcen` varchar(4)
,`cantlibre` double
,`ranking` int(11)
,`clase` char(1)
,`acumulado` double
,`porcentaje` double
,`hinventario` bigint(20)
,`idsesion` int(11)
,`column_7` int(11)
,`porcentajeac` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_peticion`
--
CREATE TABLE IF NOT EXISTS `vw_peticion` (
`id` bigint(20)
,`codpro` varchar(6)
,`codproadqui` varchar(6)
,`tipo` char(1)
,`codcen` varchar(4)
,`codal` varchar(3)
,`numero` varchar(12)
,`fecha` date
,`fechacreac` datetime
,`comentario` text
,`textocorto` varchar(40)
,`idcontacto` int(11)
,`iduser` int(11)
,`codocu` char(3)
,`codmon` char(3)
,`descuento` decimal(10,0)
,`grupocompras` char(3)
,`tenorsup` char(1)
,`tenorinf` char(1)
,`validez` int(11)
,`codobjeto` varchar(3)
,`direntrega` int(11)
,`adqui` varchar(100)
,`rucproadqui` varchar(11)
,`despro` varchar(100)
,`rucpro` varchar(11)
,`c_nombre` varchar(30)
,`c_cargo` varchar(30)
,`c_tel` varchar(30)
,`c_mail` varchar(30)
,`desdocu` varchar(45)
,`desmon` varchar(60)
,`estado` varchar(25)
,`nomgru` varchar(20)
,`mensasup` longtext
,`mensainf` longtext
,`descripcionobjeto` longtext
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solcot`
--
CREATE TABLE IF NOT EXISTS `vw_solcot` (
`codpro` varchar(8)
,`numero` varchar(15)
,`fecha` date
,`vigencia` int(11)
,`id` bigint(20)
,`preciounit` double
,`indicaciones` text
,`cant` double
,`dedispo` varchar(40)
,`um` char(3)
,`txtmaterial` varchar(40)
,`codart` varchar(10)
,`desum` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solpe`
--
CREATE TABLE IF NOT EXISTS `vw_solpe` (
`punitplan` double
,`punitreal` double
,`identidad` bigint(20)
,`numero` varchar(10)
,`posicion` int(11)
,`tipimputacion` char(1)
,`centro` varchar(4)
,`codal` varchar(3)
,`codart` varchar(10)
,`txtmaterial` varchar(40)
,`grupocompras` char(3)
,`usuario` varchar(35)
,`modificado` varchar(25)
,`textodetalle` text
,`fechacrea` datetime
,`fechaent` date
,`fechalib` datetime
,`estadolib` char(1)
,`imputacion` varchar(12)
,`solicitanet` varchar(25)
,`hidsolpe` bigint(20)
,`creado` datetime
,`creadopor` varchar(25)
,`creadoel` varchar(25)
,`escompra` varchar(1)
,`modificadopor` varchar(25)
,`modificadoel` varchar(25)
,`id` bigint(20)
,`desum` varchar(20)
,`codocu` char(3)
,`um` char(3)
,`tipsolpe` char(1)
,`est` char(2)
,`cant` float
,`item` char(3)
,`numsolpe` varchar(10)
,`estado` varchar(2)
,`codigodoc` varchar(3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solpeatencion`
--
CREATE TABLE IF NOT EXISTS `vw_solpeatencion` (
`numero` varchar(10)
,`um` char(3)
,`centro` varchar(4)
,`codal` varchar(3)
,`usuario` varchar(35)
,`fechacrea` datetime
,`fechaent` date
,`imputacion` varchar(12)
,`hidsolpe` bigint(20)
,`codocu` char(3)
,`id` bigint(20)
,`item` char(3)
,`cant` float
,`txtmaterial` varchar(40)
,`codart` varchar(10)
,`desum` varchar(20)
,`cantlibre` double
,`umbase` varchar(20)
,`canttran` double
,`cantres` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solpeparacomprar`
--
CREATE TABLE IF NOT EXISTS `vw_solpeparacomprar` (
`numero` varchar(10)
,`estado` varchar(2)
,`item` char(3)
,`id` bigint(20)
,`est` char(2)
,`tipimputacion` char(1)
,`punitplan` double
,`identidad` bigint(20)
,`fechaent` date
,`fechacrea` datetime
,`usuario` varchar(35)
,`um` char(3)
,`tipsolpe` char(1)
,`centro` varchar(4)
,`codal` varchar(3)
,`codart` varchar(10)
,`imputacion` varchar(12)
,`cant` float
,`desum` varchar(20)
,`txtmaterial` varchar(40)
,`cantatendida` double
,`cant_pendiente` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solpeparacomrpar`
--
CREATE TABLE IF NOT EXISTS `vw_solpeparacomrpar` (
`numero` varchar(10)
,`estado` varchar(2)
,`fechaent` date
,`tipsolpe` char(1)
,`centro` varchar(4)
,`codal` varchar(3)
,`codart` varchar(10)
,`imputacion` varchar(12)
,`cant` float
,`desum` varchar(20)
,`txtmaterial` varchar(40)
,`cantatendida` double
,`cant_pendiente` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_solpereservas`
--
CREATE TABLE IF NOT EXISTS `vw_solpereservas` (
`desum` varchar(20)
,`identidad` bigint(20)
,`numero` varchar(10)
,`est` char(2)
,`posicion` int(11)
,`escompra` varchar(1)
,`tipimputacion` char(1)
,`centro` varchar(4)
,`codart` varchar(10)
,`codal` varchar(3)
,`txtmaterial` varchar(40)
,`usuariodesolpe` varchar(35)
,`textodetalle` text
,`fechacrea` datetime
,`fechaent` date
,`imputacion` varchar(12)
,`hidsolpe` bigint(20)
,`iddesolpe` bigint(20)
,`codocusolpe` char(3)
,`um` char(3)
,`tipsolpe` char(1)
,`cantdesolpe` float
,`item` char(3)
,`numsolpe` varchar(10)
,`id` bigint(20)
,`hidesolpe` bigint(20)
,`estadoreserva` varchar(2)
,`fechares` char(19)
,`usuario` varchar(25)
,`cant` double
,`codocu` varchar(3)
,`flag` varchar(1)
,`rex` varchar(100)
,`atendido` char(19)
,`n_sumita` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_stocktotal_almacenes`
--
CREATE TABLE IF NOT EXISTS `vw_stocktotal_almacenes` (
`codcen` varchar(4)
,`codalm` varchar(3)
,`codsoc` varchar(1)
,`nomal` varchar(35)
,`stocklibre` double
,`stockreservado` double
,`stocktransito` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_stock_por_tipos`
--
CREATE TABLE IF NOT EXISTS `vw_stock_por_tipos` (
`destipo` varchar(30)
,`codtipo` varchar(2)
,`codcen` varchar(4)
,`codalm` varchar(3)
,`codsoc` varchar(1)
,`nomal` varchar(35)
,`stocklibre` double
,`stockreservado` double
,`stocktransito` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_stock_supervision`
--
CREATE TABLE IF NOT EXISTS `vw_stock_supervision` (
`codart` varchar(8)
,`codcentro` varchar(4)
,`codal` varchar(3)
,`canteconomica` double
,`cantreposic` double
,`cantreorden` double
,`descripcion` varchar(60)
,`um` varchar(3)
,`desum` varchar(20)
,`supervisionautomatica` varchar(1)
,`cantlibre` double
,`cantres` double
,`canttran` double
,`punit` double
,`idinventario` bigint(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_subtotalpeticion`
--
CREATE TABLE IF NOT EXISTS `vw_subtotalpeticion` (
`hidpeticion` bigint(20)
,`punit` double
,`plista` double
,`igv_monto` double
,`pventa` double
,`descuento` double
,`simbolo` varchar(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_trabajadores`
--
CREATE TABLE IF NOT EXISTS `vw_trabajadores` (
`codigotra` varchar(6)
,`nombrecompleto` varchar(92)
,`codpuesto` varchar(3)
,`ap` varchar(30)
,`am` varchar(35)
,`nombres` varchar(25)
,`dni` varchar(12)
,`oficio` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_trazabilidad_reservas`
--
CREATE TABLE IF NOT EXISTS `vw_trazabilidad_reservas` (
`hidesolpe` bigint(20)
,`id` bigint(20)
,`fecha_reserva` char(19)
,`codocu` varchar(3)
,`estadoreserva` varchar(2)
,`usuario_reserva` varchar(25)
,`desdocu_reserva` varchar(45)
,`umsolic` varchar(20)
,`umatem` varchar(20)
,`cantidad_reservada` double
,`cantidad_atendida` double
,`fecha_atencion_vale` date
,`numero_vale_atencion` char(12)
,`fecha_solicitud_compra` datetime
,`solicitud_compra` varchar(10)
,`fecha_compra` char(19)
,`orden_compra` varchar(10)
,`vale_ingreso_compra_almacen` char(12)
,`fecha_vale_ingreso_almacen` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_trazabilidad_solpe_1`
--
CREATE TABLE IF NOT EXISTS `vw_trazabilidad_solpe_1` (
`numero` varchar(10)
,`centro` varchar(4)
,`codal` varchar(3)
,`codart` varchar(10)
,`txtmaterial` varchar(40)
,`fechaent` date
,`cant` float
,`item` char(3)
,`um` char(3)
,`desum` varchar(20)
,`iddesolpe` bigint(20)
,`iddocompra` bigint(20)
,`cantaten` double
,`featencion` char(19)
,`user` varchar(25)
,`cantcompras` double
,`itemcompra` varchar(3)
,`umcompra` varchar(20)
,`numcot` varchar(10)
,`fecha` char(19)
,`cantkardex` double
,`codmov` varchar(2)
,`numvale` char(12)
,`movimiento` varchar(35)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_alinventario`
--
DROP TABLE IF EXISTS `vw_alinventario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_alinventario` AS select `t`.`codalm` AS `codalm`,`t`.`creadopor` AS `creadopor`,`t`.`creadoel` AS `creadoel`,`t`.`modificadopor` AS `modificadopor`,`t`.`modificadoel` AS `modificadoel`,`t`.`fechainicio` AS `fechainicio`,`t`.`fechafin` AS `fechafin`,`t`.`periodocontable` AS `periodocontable`,`t`.`codresponsable` AS `codresponsable`,`t`.`codart` AS `codart`,`t`.`codcen` AS `codcen`,`c`.`um` AS `um`,`t`.`cantlibre` AS `cantlibre`,`t`.`canttran` AS `canttran`,`t`.`cantres` AS `cantres`,`t`.`ubicacion` AS `ubicacion`,`t`.`lote` AS `lote`,`t`.`siid` AS `siid`,`t`.`ssiduser` AS `ssiduser`,`t`.`id` AS `id`,`t`.`punit` AS `punit`,`t`.`codmon` AS `codmon`,`a`.`descripcion` AS `descripcion`,`a`.`codtipo` AS `codtipo`,`c`.`desum` AS `desum`,round((`t`.`punit` * `t`.`cantlibre`),3) AS `ptlibre`,round((`t`.`punit` * `t`.`canttran`),3) AS `pttran`,round((`t`.`punit` * `t`.`cantres`),3) AS `ptres`,round((((`t`.`punit` * `t`.`cantlibre`) + (`t`.`punit` * `t`.`canttran`)) + (`t`.`punit` * `t`.`cantres`)),3) AS `pttotal` from ((`public_alinventario` `t` join `public_maestrocomponentes` `a`) join `public_ums` `c`) where ((`t`.`codart` = `a`.`codigo`) and (`a`.`um` = `c`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `Vw_alinventario_resumen`
--
DROP TABLE IF EXISTS `Vw_alinventario_resumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `Vw_alinventario_resumen` AS select sum(`vw_alinventario`.`ptlibre`) AS `stocklibre`,sum(`vw_alinventario`.`ptlibre`) AS `stocktran`,sum(`vw_alinventario`.`ptres`) AS `stockres`,sum(`vw_alinventario`.`pttotal`) AS `stocktotal`,`vw_alinventario`.`codalm` AS `codalm`,`vw_alinventario`.`codcen` AS `codcen`,`vw_alinventario`.`codtipo` AS `codtipo` from `vw_alinventario` group by `vw_alinventario`.`codalm`,`vw_alinventario`.`codcen`,`vw_alinventario`.`codtipo`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_almacendocs`
--
DROP TABLE IF EXISTS `vw_almacendocs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.20` SQL SECURITY DEFINER VIEW `vw_almacendocs` AS select `s`.`numvale` AS `numvale`,`w`.`nomal` AS `nomal`,`m`.`nomcen` AS `nomcen`,`v`.`desdocu` AS `nombredocumento`,`s`.`codtrabajador` AS `codtrabajador`,`s`.`cestadovale` AS `cestadovale`,`s`.`fechacont` AS `fechacont`,`s`.`fechacre` AS `fechacre`,`s`.`id` AS `idvale`,`s`.`textolargo` AS `textolargo`,`s`.`fechavale` AS `fechavale`,`t`.`codart` AS `codart`,`t`.`codmov` AS `codmov`,`t`.`valido` AS `valido`,`t`.`preciounit` AS `preciounit`,`t`.`lote` AS `lote`,`t`.`destino` AS `destino`,`t`.`checki` AS `checki`,`t`.`cant` AS `cant`,`t`.`idref` AS `idref`,`t`.`alemi` AS `alemi`,`t`.`aldes` AS `aldes`,`t`.`fecha` AS `fecha`,`t`.`coddoc` AS `coddoc`,`t`.`numdoc` AS `numdoc`,`t`.`usuario` AS `usuario`,`t`.`um` AS `um`,`t`.`comentario` AS `comentario`,`t`.`codocuref` AS `codocuref`,`t`.`numdocref` AS `numdocref`,`t`.`codcentro` AS `codcentro`,`t`.`id` AS `id`,`t`.`codestado` AS `codestado`,`t`.`prefijo` AS `prefijo`,`t`.`fechadoc` AS `fechadoc`,`t`.`correlativo` AS `correlativo`,`t`.`numkardex` AS `numkardex`,`t`.`solicitante` AS `solicitante`,`t`.`hidvale` AS `hidvale`,`a`.`descripcion` AS `descripcion`,`b`.`desdocu` AS `desdocu`,`c`.`movimiento` AS `movimiento`,`x`.`desum` AS `desum`,`s`.`iduser` AS `iduser` from ((((((((`public_alkardex` `t` join `public_maestrocomponentes` `a`) join `public_documentos` `b`) join `public_almacenmovimientos` `c`) join `public_ums` `x`) join `public_almacendocs` `s`) join `public_almacenes` `w`) join `public_centros` `m`) join `public_documentos` `v`) where ((`s`.`id` = `t`.`hidvale`) and (`t`.`codart` = `a`.`codigo`) and (`t`.`codocuref` = `b`.`coddocu`) and (`t`.`codmov` = `c`.`codmov`) and (`t`.`um` = `x`.`um`) and (`s`.`codalmacen` = `w`.`codalm`) and (`s`.`codcentro` = `w`.`codcen`) and (`m`.`codcen` = `s`.`codcentro`) and (`s`.`codocu` = `v`.`coddocu`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_alreservas`
--
DROP TABLE IF EXISTS `vw_alreservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_alreservas` AS select `a`.`codart` AS `codart`,`a`.`txtmaterial` AS `txtmaterial`,`c`.`hidesolpe` AS `hidesolpe`,`c`.`id` AS `id`,`c`.`cant` AS `cant`,`c`.`numreserva` AS `numreserva`,`c`.`atendido` AS `atendido`,`c`.`usuario` AS `usuario`,`c`.`fechares` AS `fechares`,`c`.`estadoreserva` AS `estadoreserva`,`c`.`codocu` AS `codocu`,`d`.`desum` AS `desum`,`e`.`estado` AS `estado`,`f`.`desdocu` AS `desdocu`,`g`.`numero` AS `numero`,`a`.`item` AS `item`,`a`.`um` AS `um` from (((((`public_desolpe1` `a` join `public_alreserva` `c`) join `public_ums` `d`) join `public_estado` `e`) join `public_documentos` `f`) join `public_solpe` `g`) where ((`a`.`hidsolpe` = `g`.`id`) and (`a`.`id` = `c`.`hidesolpe`) and (`c`.`codocu` = `e`.`codocu`) and (`c`.`estadoreserva` = `e`.`codestado`) and (`c`.`codocu` = `f`.`coddocu`) and (`a`.`um` = `d`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_atencionessolpe`
--
DROP TABLE IF EXISTS `vw_atencionessolpe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_atencionessolpe` AS select `d`.`item` AS `item`,`d`.`id` AS `iddesolpe`,`d`.`cant` AS `cantdesolpe`,`h`.`numvale` AS `numvale`,`k`.`desum` AS `desumsolpe`,`d`.`hidsolpe` AS `idsolpe`,`d`.`um` AS `umsolpe`,`u`.`cant` AS `cantreserva`,`u`.`codocu` AS `codocu`,`u`.`numreserva` AS `numreserva`,`u`.`estadoreserva` AS `estadoreserva`,`t`.`id` AS `id`,`t`.`cant` AS `cant`,`t`.`hidreserva` AS `hidreserva`,`t`.`hidkardex` AS `hidkardex`,`t`.`estadoatencion` AS `estadoatencion`,`s`.`codmov` AS `codmov`,`s`.`um` AS `um`,`s`.`numkardex` AS `numkardex`,`s`.`usuario` AS `usuario`,`s`.`codart` AS `codart`,`s`.`preciounit` AS `preciounit`,`s`.`fecha` AS `fecha`,`g`.`monto` AS `monto`,`g`.`ceco` AS `ceco`,`d`.`txtmaterial` AS `txtmaterial`,`j`.`desum` AS `desumkardex`,`f`.`movimiento` AS `movimiento` from ((((((((`public_atencionreserva` `t` join `public_alkardex` `s`) join `public_alreserva` `u`) join `public_ccgastos` `g`) join `public_desolpe1` `d`) join `public_ums` `j`) join `public_ums` `k`) join `public_almacenmovimientos` `f`) join `public_almacendocs` `h`) where ((`t`.`hidkardex` = `s`.`id`) and (`u`.`id` = `t`.`hidreserva`) and (`s`.`id` = `g`.`idref`) and (`d`.`id` = `u`.`hidesolpe`) and (`s`.`um` = `j`.`um`) and (`f`.`codmov` = `s`.`codmov`) and (`k`.`um` = `d`.`um`) and (`s`.`hidvale` = `h`.`id`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_contactos`
--
DROP TABLE IF EXISTS `vw_contactos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_contactos` AS select `b`.`id` AS `id`,`b`.`c_nombre` AS `c_nombre`,`b`.`correlativo` AS `correlativo`,`b`.`c_hcod` AS `c_hcod`,`a`.`despro` AS `despro`,`b`.`c_cargo` AS `c_cargo`,`b`.`c_mail` AS `c_mail`,`b`.`c_tel` AS `c_tel` from (`public_contactos` `b` join `public_clipro` `a`) where (`a`.`codpro` = `b`.`c_hcod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_controlactivos`
--
DROP TABLE IF EXISTS `vw_controlactivos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_controlactivos` AS select `t`.`idformato` AS `idformato`,`t`.`idactivo` AS `idactivo`,`t`.`tipo` AS `tipo`,`t`.`fecha` AS `fecha`,`t`.`codobraencurso` AS `codobraencurso`,`t`.`ccanterior` AS `ccanterior`,`t`.`ccactual` AS `ccactual`,`t`.`comentario` AS `comentario`,`t`.`numformato` AS `numformato`,`t`.`codestado` AS `codestado`,`t`.`coddocu` AS `coddocu`,`t`.`codepanterior` AS `codepanterior`,`t`.`codep` AS `codep`,`t`.`codcentro` AS `codcentro`,`b`.`estado` AS `estado`,`h`.`nomcen` AS `nomcen`,`i`.`nombrecompleto` AS `nombrecompleto`,`c`.`nomep` AS `barcoanterior`,`d`.`nomep` AS `barcoactual`,`g`.`codigosap` AS `codigosap`,`g`.`codigoaf` AS `codigoaf`,`g`.`descripcion` AS `descripcion`,`g`.`marca` AS `marca`,`g`.`modelo` AS `modelo`,`g`.`serie` AS `serie` from ((((((`public_controlactivos` `t` join `public_estado` `b`) join `public_embarcaciones` `c`) join `public_embarcaciones` `d`) join `public_inventario` `g`) join `public_centros` `h`) join `vw_trabajadores` `i`) where ((`t`.`idactivo` = `g`.`idinventario`) and (`t`.`codestado` = `b`.`codestado`) and (`t`.`coddocu` = `b`.`codocu`) and (`t`.`codepanterior` = `c`.`codep`) and (`t`.`codep` = `d`.`codep`) and (`t`.`codcentro` = `h`.`codcen`) and (`t`.`solicitante` = `i`.`codigotra`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_costos`
--
DROP TABLE IF EXISTS `vw_costos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_costos` AS select `z`.`id` AS `id`,`z`.`ceco` AS `ceco`,`z`.`fechacontable` AS `fechacontable`,`z`.`monto` AS `monto`,`z`.`codmoneda` AS `codmoneda`,`z`.`usuario` AS `usuario`,`z`.`idref` AS `idref`,`z`.`tipo` AS `tipo`,`z`.`creadoel` AS `creadoel`,`z`.`ano` AS `ano`,`z`.`mes` AS `mes`,`z`.`clasecolector` AS `clasecolector`,`z`.`iduser` AS `iduser`,`s`.`numvale` AS `numvale`,`t`.`codart` AS `codart`,`t`.`codmov` AS `codmov`,`t`.`valido` AS `valido`,`t`.`destino` AS `destino`,`t`.`checki` AS `checki`,`t`.`cant` AS `cant`,`t`.`alemi` AS `alemi`,`t`.`aldes` AS `aldes`,`t`.`fecha` AS `fecha`,`t`.`coddoc` AS `coddoc`,`t`.`numdoc` AS `numdoc`,`t`.`um` AS `um`,`t`.`comentario` AS `comentario`,`t`.`codocuref` AS `codocuref`,`t`.`numdocref` AS `numdocref`,`t`.`codcentro` AS `codcentro`,`t`.`id` AS `idkardex`,`t`.`codestado` AS `codestado`,`t`.`prefijo` AS `prefijo`,`t`.`fechadoc` AS `fechadoc`,`t`.`correlativo` AS `correlativo`,`t`.`numkardex` AS `numkardex`,`t`.`solicitante` AS `solicitante`,`t`.`hidvale` AS `hidvale`,`a`.`descripcion` AS `descripcion`,`b`.`desdocu` AS `desdocu`,`c`.`movimiento` AS `movimiento`,`x`.`desum` AS `desum` from ((((((`public_alkardex` `t` join `public_maestrocomponentes` `a`) join `public_documentos` `b`) join `public_almacenmovimientos` `c`) join `public_ums` `x`) join `public_almacendocs` `s`) join `public_ccgastos` `z`) where ((`s`.`id` = `t`.`hidvale`) and (`t`.`codart` = `a`.`codigo`) and (`t`.`codocuref` = `b`.`coddocu`) and (`t`.`codmov` = `c`.`codmov`) and (`t`.`um` = `x`.`um`) and (`t`.`id` = `z`.`idref`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_dee`
--
DROP TABLE IF EXISTS `vw_dee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_dee` AS select `public_ums`.`um` AS `um`,`public_ums`.`desum` AS `desum`,`public_ums`.`creadopor` AS `creadopor`,`public_ums`.`creadoel` AS `creadoel`,`public_ums`.`modificadopor` AS `modificadopor`,`public_ums`.`modificadoel` AS `modificadoel`,`public_ums`.`id` AS `id` from `public_ums`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_despacho`
--
DROP TABLE IF EXISTS `vw_despacho`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_despacho` AS select `t`.`id` AS `id`,`t`.`hidpunto` AS `hidpunto`,`t`.`hidkardex` AS `hidkardex`,`t`.`fechacreac` AS `fechacreac`,`t`.`fechaprog` AS `fechaprog`,`t`.`descripcion` AS `descripcion`,`t`.`responsable` AS `responsable`,`t`.`iduser` AS `iduser`,`t`.`vigente` AS `vigente`,`k`.`codart` AS `codart`,`v`.`codcentro` AS `codcentro`,`k`.`um` AS `um`,`p`.`nombrepunto` AS `nombrepunto`,`v`.`codalmacen` AS `codalmacen`,`mm`.`descripcion` AS `descripmaterial`,`k`.`cant` AS `cant`,`u`.`desum` AS `desum`,`k`.`id` AS `idkardex`,`k`.`numdocref` AS `numdocref`,`v`.`numvale` AS `numvale`,`k`.`hidvale` AS `hidvale`,`m`.`movimiento` AS `movimiento`,`s`.`ap` AS `ap`,`s`.`am` AS `am`,`s`.`nombres` AS `nombres`,`k`.`codocuref` AS `codocuref`,`l`.`desdocu` AS `desdocu` from ((((((((`public_despacho` `t` join `public_ums` `u`) join `public_maestrocomponentes` `mm`) join `public_almacendocs` `v`) join `public_almacenmovimientos` `m`) join `public_alkardex` `k`) join `public_puntodespacho` `p`) join `public_trabajadores` `s`) join `public_documentos` `l`) where ((`t`.`hidkardex` = `k`.`id`) and (`s`.`codigotra` = `t`.`responsable`) and (`l`.`coddocu` = `k`.`codocuref`) and (`k`.`codart` = `mm`.`codigo`) and (`k`.`um` = `u`.`um`) and (`k`.`hidvale` = `v`.`id`) and (`v`.`codmovimiento` = `m`.`codmov`) and (`t`.`hidpunto` = `p`.`id`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_despachogeneral`
--
DROP TABLE IF EXISTS `vw_despachogeneral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_despachogeneral` AS select `vw_despacho`.`hidvale` AS `hidvale`,`vw_despacho`.`codcentro` AS `codcentro`,`vw_despacho`.`codalmacen` AS `codalmacen`,`vw_despacho`.`nombrepunto` AS `nombrepunto`,`vw_despacho`.`numvale` AS `numvale`,`vw_despacho`.`movimiento` AS `movimiento`,count(`vw_despacho`.`id`) AS `items` from `vw_despacho` group by `vw_despacho`.`codcentro`,`vw_despacho`.`codalmacen`,`vw_despacho`.`nombrepunto`,`vw_despacho`.`numvale`,`vw_despacho`.`movimiento`,`vw_despacho`.`hidvale`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_detalleingresofactura`
--
DROP TABLE IF EXISTS `vw_detalleingresofactura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_detalleingresofactura` AS select `a`.`idtemp` AS `idtemp`,`a`.`id` AS `id`,`a`.`hidfactura` AS `hidfactura`,`a`.`item` AS `item`,`a`.`hidkardex` AS `hidkardex`,`a`.`iduser` AS `iduser`,`a`.`fechacrea` AS `fechacrea`,`a`.`hidalentrega` AS `hidalentrega`,`b`.`id` AS `identrega`,`b`.`iddetcompra` AS `iddetcompra`,`b`.`cant` AS `cant`,`b`.`fecha` AS `fechaentrega`,`b`.`idkardex` AS `idkardex`,`b`.`punit` AS `punitentrega`,`c`.`codart` AS `codart`,`c`.`cant` AS `cantcompras`,`c`.`punit` AS `punitcompra`,`c`.`item` AS `itemcompra`,`c`.`descri` AS `descri`,`c`.`codentro` AS `codentro`,`d`.`desum` AS `desum` from (((`public_tempdetingfactura` `a` join `public_alentregas` `b`) join `public_docompra` `c`) join `public_ums` `d`) where ((`a`.`hidalentrega` = `b`.`id`) and (`b`.`iddetcompra` = `c`.`id`) and (`c`.`um` = `d`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_detalle_guia`
--
DROP TABLE IF EXISTS `vw_detalle_guia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_detalle_guia` AS select `a`.`m_obs` AS `m_obs`,`x`.`desum` AS `desum`,`a`.`idtemp` AS `idtemp`,`a`.`id` AS `id`,`a`.`n_hguia` AS `n_hguia`,`a`.`c_itguia` AS `c_itguia`,`a`.`n_cangui` AS `n_cangui`,`a`.`idstatus` AS `idstatus`,`a`.`c_codgui` AS `c_codgui`,`a`.`c_edgui` AS `c_edgui`,`a`.`c_descri` AS `c_descri`,`a`.`c_um` AS `c_um`,`a`.`c_codep` AS `c_codep`,`a`.`c_estado` AS `c_estado`,`a`.`c_codactivo` AS `c_codactivo`,`a`.`c_codsap` AS `c_codsap`,`b`.`nomep` AS `nomep`,`c`.`estado` AS `estado`,`d`.`desmotivo` AS `desmotivo` from ((((`public_tempdetgui` `a` join `public_embarcaciones` `b`) join `public_estado` `c`) join `public_motivo` `d`) join `public_ums` `x`) where ((`a`.`c_codep` = `b`.`codep`) and (`a`.`c_edgui` = `d`.`codmotivo`) and (`c`.`codestado` = `a`.`c_estado`) and (`c`.`codocu` = `a`.`codocu`) and (`a`.`c_um` = `x`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_detalle_stock_reservado`
--
DROP TABLE IF EXISTS `vw_detalle_stock_reservado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.20` SQL SECURITY DEFINER VIEW `vw_detalle_stock_reservado` AS select `a`.`numsolpe` AS `numsolpe`,`a`.`item` AS `item`,`a`.`tipimputacion` AS `tipimputacion`,`a`.`imputacion` AS `imputacion`,`a`.`desum` AS `desum`,`a`.`cant` AS `cantreservada`,`a`.`usuariodesolpe` AS `usuariodesolpe`,`a`.`fechaent` AS `fechaent`,`b`.`cantres` AS `cantres`,`b`.`cantlibre` AS `cantlibre`,`b`.`id` AS `id` from (`vw_solpereservas` `a` join `public_alinventario` `b`) where ((`a`.`codart` = `b`.`codart`) and (`a`.`codal` = `b`.`codalm`) and (`a`.`centro` = `b`.`codcen`) and ((`a`.`cant` > `a`.`n_sumita`) or isnull(`a`.`n_sumita`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_docu_ingresados`
--
DROP TABLE IF EXISTS `vw_docu_ingresados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_docu_ingresados` AS select `a`.`id` AS `id`,`a`.`codprov` AS `codprov`,`a`.`fecha` AS `fecha`,`a`.`fechain` AS `fechain`,`a`.`correlativo` AS `correlativo`,`a`.`tipodoc` AS `tipodoc`,`a`.`moneda` AS `moneda`,`a`.`descorta` AS `descorta`,`a`.`codepv` AS `codepv`,`a`.`monto` AS `monto`,`a`.`codgrupo` AS `codgrupo`,`a`.`codresponsable` AS `codresponsable`,`a`.`creadopor` AS `creadopor`,`a`.`creadoel` AS `creadoel`,`a`.`texv` AS `texv`,`a`.`docref` AS `docref`,`a`.`codteniente` AS `codteniente`,`a`.`codlocal` AS `codlocal`,`a`.`numero` AS `numero`,`b`.`despro` AS `despro`,`b`.`rucpro` AS `rucpro`,`c`.`desdocu` AS `desdocu`,`d`.`nomep` AS `nomep`,`e`.`nombrecompleto` AS `responsable`,`f`.`nombrecompleto` AS `apoderado`,`g`.`nomcen` AS `nomcen`,`h`.`estado` AS `estado` from (((((((`public_docu_ingresados` `a` join `public_clipro` `b` on((`a`.`codprov` = `b`.`codpro`))) join `public_estado` `h` on(((`a`.`cod_estado` = `h`.`codestado`) and (`h`.`codocu` = `a`.`codocu`)))) join `public_documentos` `c` on((`a`.`tipodoc` = `c`.`coddocu`))) join `public_embarcaciones` `d` on((`a`.`codepv` = `d`.`codep`))) join `vw_trabajadores` `e` on((`a`.`codresponsable` = `e`.`codigotra`))) left join `vw_trabajadores` `f` on((`a`.`codteniente` = `f`.`codigotra`))) join `public_centros` `g` on((`a`.`codlocal` = `g`.`codcen`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_dpeticion`
--
DROP TABLE IF EXISTS `vw_dpeticion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`190.117.217.94` SQL SECURITY DEFINER VIEW `vw_dpeticion` AS select `t`.`id` AS `id`,`t`.`hidpeticion` AS `hidpeticion`,`t`.`um` AS `um`,`t`.`codart` AS `codart`,`t`.`punit` AS `punit`,`t`.`plista` AS `plista`,`t`.`igv_monto` AS `igv_monto`,`t`.`descuento` AS `descuento`,`t`.`pventa` AS `pventa`,`t`.`cant` AS `cant`,`t`.`comentario` AS `comentario`,`t`.`codestado` AS `codestado`,`t`.`codcen` AS `codcen`,`t`.`codal` AS `codal`,`t`.`disponibilidad` AS `disponibilidad`,`t`.`idtemp` AS `idtemp`,`t`.`item` AS `item`,`t`.`idusertemp` AS `idusertemp`,`t`.`descripcion` AS `descripcion`,`t`.`idstatus` AS `idstatus`,`t`.`tipo` AS `tipo`,`t`.`imputacion` AS `imputacion`,`t`.`codocu` AS `codocu`,`e`.`estado` AS `estado`,`d`.`dedispo` AS `dedispo`,`u`.`desum` AS `desum` from (((`public_dpeticion` `t` join `public_estado` `e`) join `public_disponiblidad` `d`) join `public_ums` `u`) where ((`t`.`codocu` = `e`.`codocu`) and (`t`.`codestado` = `e`.`codestado`) and (`t`.`disponibilidad` = `d`.`codisp`) and (`t`.`um` = `u`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_eventos`
--
DROP TABLE IF EXISTS `vw_eventos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_eventos` AS select `eventos`.`id` AS `id`,`eventos`.`codocu` AS `codocu`,`eventos`.`estadofinal` AS `estadofinal`,`eventos`.`estadoinicial` AS `estadoinicial`,`eventos`.`descripcion` AS `descripcion`,`eventos`.`creadopor` AS `creadopor`,`eventos`.`creadoel` AS `creadoel`,`estadoinicial`.`estado` AS `einicial`,`documentos`.`desdocu` AS `desdocu`,`estadofinal`.`estado` AS `efinal` from (((`public_eventos` `eventos` join `public_documentos` `documentos`) join `public_estado` `estadoinicial`) join `public_estado` `estadofinal`) where ((`eventos`.`codocu` = `documentos`.`coddocu`) and (`eventos`.`estadofinal` = `estadofinal`.`codestado`) and (`estadoinicial`.`codestado` = `eventos`.`estadoinicial`) and (`estadoinicial`.`codocu` = `eventos`.`codocu`) and (`estadofinal`.`codocu` = `eventos`.`codocu`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_guia`
--
DROP TABLE IF EXISTS `vw_guia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_guia` AS select `guia`.`id` AS `id`,`guia`.`c_numgui` AS `c_numgui`,`guia`.`c_coclig` AS `c_coclig`,`guia`.`cod_cen` AS `cod_cen`,`guia`.`d_fecgui` AS `d_fecgui`,`guia`.`c_estgui` AS `c_estgui`,`guia`.`c_rsguia` AS `c_rsguia`,`guia`.`c_codtra` AS `c_codtra`,`guia`.`c_trans` AS `c_trans`,`guia`.`codocu` AS `codocu`,`guia`.`c_motivo` AS `c_motivo`,`guia`.`c_placa` AS `c_placa`,`guia`.`c_licon` AS `c_licon`,`guia`.`d_fectra` AS `d_fectra`,`guia`.`n_direc` AS `n_direc`,`guia`.`c_desgui` AS `c_desgui`,`guia`.`n_guia` AS `n_guia`,`guia`.`c_texto` AS `c_texto`,`guia`.`c_dirsoc` AS `c_dirsoc`,`guia`.`c_serie` AS `c_serie`,`guia`.`c_salida` AS `c_salida`,`guia`.`n_direcformaldes` AS `n_direcformaldes`,`guia`.`n_directran` AS `n_directran`,`guia`.`n_dirsoc` AS `n_dirsoc`,`guia`.`creadopor` AS `creadopor`,`guia`.`modificadopor` AS `modificadopor`,`guia`.`creadoel` AS `creadoel`,`guia`.`modificadoel` AS `modificadoel`,`detgui`.`c_estado` AS `c_estado`,`detgui`.`n_hguia` AS `n_hguia`,`detgui`.`c_itguia` AS `c_itguia`,`detgui`.`c_af` AS `c_af`,`detgui`.`c_codsap` AS `c_codsap`,`detgui`.`hidref` AS `hidref`,`detgui`.`docref` AS `docref`,`detgui`.`n_cangui` AS `n_cangui`,`detgui`.`c_codgui` AS `c_codgui`,`detgui`.`c_edgui` AS `c_edgui`,`detgui`.`c_descri` AS `c_descri`,`detgui`.`m_obs` AS `m_obs`,`detgui`.`c_codactivo` AS `c_codactivo`,`detgui`.`c_um` AS `c_um`,`detgui`.`c_codep` AS `c_codep`,`detgui`.`l_libre` AS `l_libre`,`direcciones_c`.`c_direc` AS `ptopartida`,`motivotraslado`.`desmotivo` AS `desmotivo`,`direcciones_c`.`c_distrito` AS `distpartida`,`direcciones_c`.`c_prov` AS `provpartida`,`direcciones_c`.`c_departam` AS `dptopartida`,`direcciones`.`c_direc` AS `direcciontransportista`,`direcciones_a`.`c_direc` AS `direccionformaldes`,`direcciones_b`.`c_direc` AS `ptollegada`,`direcciones_b`.`c_distrito` AS `distllegada`,`direcciones_b`.`c_prov` AS `provllegada`,`direcciones_b`.`c_departam` AS `dptollegada`,`clipro_a`.`despro` AS `razondestinatario`,`clipro_a`.`rucpro` AS `rucdestinatario`,`clipro`.`rucpro` AS `ructrans`,`clipro`.`despro` AS `razontransportista`,`sociedades`.`rucsoc` AS `rucsoc`,`embarcaciones`.`nomep` AS `nomep`,`estado_b`.`estado` AS `estadodetalle`,`estado`.`estado` AS `estado`,`documentos`.`y_report` AS `y_report`,`documentos`.`x_report` AS `x_report`,`ums`.`desum` AS `desum` from ((((((((((((((`public_guia` `guia` join `public_detgui` `detgui` on((`guia`.`id` = `detgui`.`n_hguia`))) join `public_direcciones` `direcciones_c` on((`direcciones_c`.`n_direc` = `guia`.`n_dirsoc`))) join `public_direcciones` `direcciones_b` on((`guia`.`n_direc` = `direcciones_b`.`n_direc`))) join `public_direcciones` `direcciones` on((`guia`.`n_directran` = `direcciones`.`n_direc`))) join `public_direcciones` `direcciones_a` on((`guia`.`n_direcformaldes` = `direcciones_a`.`n_direc`))) join `public_sociedades` `sociedades` on((`guia`.`c_rsguia` = `sociedades`.`socio`))) join `public_clipro` `clipro_a` on((`guia`.`c_coclig` = `clipro_a`.`codpro`))) join `public_clipro` `clipro` on((`guia`.`c_codtra` = `clipro`.`codpro`))) join `public_estado` `estado` on(((`guia`.`c_estgui` = `estado`.`codestado`) and (`estado`.`codocu` = `guia`.`codocu`)))) join `public_embarcaciones` `embarcaciones` on((`detgui`.`c_codep` = `embarcaciones`.`codep`))) join `public_motivo` `motivotraslado` on((`detgui`.`c_edgui` = `motivotraslado`.`codmotivo`))) join `public_estado` `estado_b` on(((`detgui`.`c_estado` = `estado_b`.`codestado`) and (`estado_b`.`codocu` = `detgui`.`codocu`)))) join `public_documentos` `documentos` on((`guia`.`codocu` = `documentos`.`coddocu`))) join `public_ums` `ums` on((`detgui`.`c_um` = `ums`.`um`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_hojaentrada`
--
DROP TABLE IF EXISTS `vw_hojaentrada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_hojaentrada` AS select `t`.`um` AS `um`,`t`.`codart` AS `codart`,`t`.`codmov` AS `codmov`,`t`.`cant` AS `cant`,`t`.`alemi` AS `alemi`,`t`.`fecha` AS `fecha`,`t`.`comentario` AS `comentario`,`t`.`codocuref` AS `codocuref`,`t`.`numdocref` AS `numdocref`,`t`.`codcentro` AS `codcentro`,`t`.`preciounit` AS `preciounit`,`t`.`iduser` AS `iduser`,`t`.`fechadoc` AS `fechadoc`,`o`.`numcot` AS `numcot`,`s`.`item` AS `item`,`s`.`punit` AS `punit`,`j`.`desum` AS `desum`,`p`.`despro` AS `despro`,`o`.`texto` AS `texto`,`g`.`numvale` AS `numvale` from (((((`public_alkardex` `t` join `public_ocompra` `o`) join `public_docompra` `s`) join `public_ums` `j`) join `public_clipro` `p`) join `public_almacendocs` `g`) where ((`t`.`idref` = `s`.`id`) and (`g`.`id` = `t`.`hidvale`) and (`t`.`um` = `j`.`um`) and (`o`.`codpro` = `p`.`codpro`) and (`s`.`hidguia` = `o`.`idguia`) and (`s`.`tipoitem` = 'S'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_imputaciones`
--
DROP TABLE IF EXISTS `vw_imputaciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_imputaciones` AS select `a`.`codc` AS `codc`,`a`.`clasecolector` AS `clasecolector`,`a`.`desceco` AS `desceco`,`b`.`desimputa` AS `desimputa`,`b`.`validacion` AS `validacion` from (`public_cc` `a` join `public_tipimputa` `b`) where (`a`.`clasecolector` = `b`.`codimpu`) union select `a`.`numero` AS `cc`,`b`.`codimpu` AS `clasecolector`,`a`.`textocorto` AS `textocorto`,`b`.`desimputa` AS `desimputa`,`b`.`validacion` AS `validacion` from (`public_peticion` `a` join `public_tipimputa` `b`) where (`b`.`codimpu` = 'F');

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_inventario`
--
DROP TABLE IF EXISTS `vw_inventario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_inventario` AS select `inventario`.`codestado` AS `codestado`,`inventario`.`rocoto` AS `rocoto`,`inventario`.`iddocu` AS `iddocu`,`inventario`.`coddocu` AS `coddocu`,`inventario`.`posicion` AS `posicion`,`inventario`.`codlugar` AS `codlugar`,`inventario`.`codep` AS `codep`,`inventario`.`idinventario` AS `idinventario`,`inventario`.`codigo` AS `codigo`,`inventario`.`c_estado` AS `c_estado`,`inventario`.`modificadopor` AS `modificadopor`,`inventario`.`modificadoel` AS `modificadoel`,`inventario`.`codigosap` AS `codigosap`,`inventario`.`codigoaf` AS `codigoaf`,`inventario`.`descripcion` AS `descripcion`,`inventario`.`marca` AS `marca`,`inventario`.`modelo` AS `modelo`,`inventario`.`comentario` AS `comentario`,`inventario`.`fecha` AS `fecha`,`inventario`.`serie` AS `serie`,`inventario`.`clasefoto` AS `clasefoto`,`inventario`.`codigopadre` AS `codigopadre`,`inventario`.`adicional` AS `adicional`,`inventario`.`numerodocumento` AS `numerodocumento`,`inventario`.`codeporiginal` AS `codeporiginal`,`inventario`.`codepanterior` AS `codepanterior`,`inventario`.`baja` AS `baja`,`inventario`.`tipo` AS `tipo`,`documentos`.`desdocu` AS `desdocu`,`embarcaciones`.`nomep` AS `nomep`,`epanterior`.`nomep` AS `nombreepanterior`,`eporiginal`.`nomep` AS `nombreeporiginal`,`lugares`.`deslugar` AS `deslugar`,`centros`.`nomcen` AS `nomcen`,`areas`.`area` AS `area`,`inventario`.`codpropietario` AS `codpropietario` from (((((((`public_inventario` `inventario` join `public_documentos` `documentos`) join `public_embarcaciones` `embarcaciones`) join `public_embarcaciones` `epanterior`) join `public_embarcaciones` `eporiginal`) join `public_lugares` `lugares`) join `public_centros` `centros`) join `public_areas` `areas`) where ((`inventario`.`coddocu` = `documentos`.`coddocu`) and (`inventario`.`codep` = `embarcaciones`.`codep`) and (`inventario`.`codeporiginal` = `eporiginal`.`codep`) and (`inventario`.`codepanterior` = `epanterior`.`codep`) and (`inventario`.`codlugar` = `lugares`.`codlugar`) and (`inventario`.`codpropietario` = `centros`.`codcen`) and (`inventario`.`codarea` = `areas`.`codarea`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_kardex`
--
DROP TABLE IF EXISTS `vw_kardex`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_kardex` AS select `s`.`numvale` AS `numvale`,`t`.`codart` AS `codart`,`t`.`codmov` AS `codmov`,`t`.`valido` AS `valido`,`t`.`destino` AS `destino`,`t`.`checki` AS `checki`,`t`.`cant` AS `cant`,`t`.`idref` AS `idref`,`t`.`alemi` AS `alemi`,`t`.`aldes` AS `aldes`,`t`.`fecha` AS `fecha`,`t`.`coddoc` AS `coddoc`,`t`.`numdoc` AS `numdoc`,`t`.`usuario` AS `usuario`,`t`.`creadopor` AS `creadopor`,`t`.`creadoel` AS `creadoel`,`t`.`modificadopor` AS `modificadopor`,`t`.`modificadoel` AS `modificadoel`,`t`.`um` AS `um`,`t`.`comentario` AS `comentario`,`t`.`codocuref` AS `codocuref`,`t`.`numdocref` AS `numdocref`,`t`.`codcentro` AS `codcentro`,`t`.`id` AS `id`,`t`.`codestado` AS `codestado`,`t`.`prefijo` AS `prefijo`,`t`.`fechadoc` AS `fechadoc`,`t`.`correlativo` AS `correlativo`,`t`.`numkardex` AS `numkardex`,`t`.`solicitante` AS `solicitante`,`t`.`hidvale` AS `hidvale`,`a`.`descripcion` AS `descripcion`,`b`.`desdocu` AS `desdocu`,`c`.`movimiento` AS `movimiento`,`x`.`desum` AS `desum` from (((((`public_alkardex` `t` join `public_maestrocomponentes` `a`) join `public_documentos` `b`) join `public_almacenmovimientos` `c`) join `public_ums` `x`) join `public_almacendocs` `s`) where ((`s`.`id` = `t`.`hidvale`) and (`t`.`codart` = `a`.`codigo`) and (`t`.`codocuref` = `b`.`coddocu`) and (`t`.`codmov` = `c`.`codmov`) and (`t`.`um` = `x`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_lugares`
--
DROP TABLE IF EXISTS `vw_lugares`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_lugares` AS select `a`.`despro` AS `despro`,`b`.`codlugar` AS `codlugar`,`b`.`deslugar` AS `deslugar`,`b`.`claselugar` AS `claselugar`,`b`.`codpro` AS `codpro`,`b`.`n_direc` AS `n_direc`,`c`.`c_direc` AS `c_direc`,`d`.`departamento` AS `departamento`,`d`.`provincia` AS `provincia`,`d`.`distrito` AS `distrito` from (((`public_clipro` `a` join `public_lugares` `b`) join `public_direcciones` `c`) join `public_ubigeos` `d`) where ((`a`.`codpro` = `b`.`codpro`) and (`c`.`n_direc` = `b`.`n_direc`) and (`c`.`coddepa` = `d`.`coddep`) and (`c`.`codprov` = `d`.`codprov`) and (`c`.`coddist` = `d`.`coddist`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_observaciones`
--
DROP TABLE IF EXISTS `vw_observaciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_observaciones` AS select `c`.`codpropietario` AS `codpropietario`,`c`.`idinventario` AS `idinventario`,`a`.`hidinventario` AS `hidinventario`,`a`.`fecha` AS `fecha`,`a`.`descri` AS `descri`,`a`.`mobs` AS `mobs`,`a`.`usuario` AS `usuario`,`a`.`id` AS `id`,`a`.`codestado` AS `codestado`,`b`.`estado` AS `estado`,`c`.`codigoaf` AS `codigoaf`,`c`.`codigosap` AS `codigosap`,`c`.`codlugar` AS `codlugar`,`c`.`descripcion` AS `descripcion`,`c`.`marca` AS `marca`,`c`.`modelo` AS `modelo`,`c`.`serie` AS `serie`,`c`.`codcentro` AS `codcentro` from ((`public_observaciones` `a` join `public_estado` `b`) join `public_inventario` `c`) where ((`a`.`codestado` = `b`.`codestado`) and (`a`.`hidinventario` = `c`.`idinventario`) and (`b`.`codocu` = `a`.`codocu`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ocompra`
--
DROP TABLE IF EXISTS `vw_ocompra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_ocompra` AS select `coti`.`numcot` AS `numcot`,`coti`.`codpro` AS `codpro`,`coti`.`fecdoc` AS `fecdoc`,`coti`.`codcon` AS `codcon`,`coti`.`codestado` AS `codestado`,`coti`.`texto` AS `texto`,`coti`.`textolargo` AS `textolargo`,`coti`.`tipologia` AS `tipologia`,`coti`.`moneda` AS `moneda`,`coti`.`orcli` AS `orcli`,`ums`.`desum` AS `desum`,`coti`.`descuento` AS `descuento`,`coti`.`usuario` AS `usuario`,`coti`.`coddocu` AS `coddocu`,`coti`.`creado` AS `creado`,`coti`.`modificado` AS `modificado`,`coti`.`creadopor` AS `creadopor`,`coti`.`creadoel` AS `creadoel`,`coti`.`modificadopor` AS `modificadopor`,`coti`.`modificadoel` AS `modificadoel`,`coti`.`codtipofac` AS `codtipofac`,`coti`.`codsociedad` AS `codsociedad`,`coti`.`codgrupoventas` AS `codgrupoventas`,`coti`.`codtipocotizacion` AS `codtipocotizacion`,`coti`.`validez` AS `validez`,`coti`.`codcentro` AS `codcentro`,`coti`.`nigv` AS `nigv`,`coti`.`codobjeto` AS `codobjeto`,`coti`.`fechapresentacion` AS `fechapresentacion`,`coti`.`fechanominal` AS `fechanominal`,`coti`.`idguia` AS `idguia`,`x`.`id` AS `id`,`x`.`codentro` AS `codentro`,`x`.`codigoalma` AS `codigoalma`,`x`.`codart` AS `codart`,`x`.`disp` AS `disp`,`x`.`cant` AS `cant`,`x`.`punit` AS `punit`,`x`.`item` AS `item`,`x`.`descri` AS `descri`,`x`.`stock` AS `stock`,`x`.`detalle` AS `detalle`,`x`.`tipoitem` AS `tipoitem`,`x`.`estadodetalle` AS `estadodetalle`,`x`.`um` AS `um`,`x`.`hidguia` AS `hidguia`,`x`.`codservicio` AS `codservicio`,`x`.`tipoimputacion` AS `tipoimputacion`,(`x`.`punit` * `x`.`cant`) AS `subto`,`t_moneda`.`desmon` AS `desmon`,`tipofacturacion`.`tipofacturacion` AS `tipofacturacion`,`estado`.`estado` AS `estado`,`sociedades`.`rucsoc` AS `rucsoc`,`sociedades`.`dsocio` AS `dsocio`,`contactos`.`c_nombre` AS `c_nombre`,`t_moneda`.`simbolo` AS `simbolo`,`contactos`.`c_cargo` AS `c_cargo`,`contactos`.`c_tel` AS `c_tel`,`contactos`.`c_mail` AS `c_mail`,`clipro`.`despro` AS `despro`,`clipro`.`rucpro` AS `rucpro`,`clipro`.`emailpro` AS `emailpro`,`documentos`.`desdocu` AS `desdocu`,`tenores`.`mensaje` AS `textocabeza`,`tenores1`.`mensaje` AS `textopie`,`trabajadores`.`ap` AS `ap`,`trabajadores`.`am` AS `am`,`trabajadores`.`nombres` AS `nombres`,`trabajadores`.`telfijo` AS `telfijo`,`trabajadores`.`telmoviles` AS `telmoviles`,`direcciones`.`c_direc` AS `c_direc`,`x`.`punitdes` AS `punitdes` from (((((((((((((`public_ocompra` `coti` join `public_docompra` `x`) join `public_sociedades` `sociedades`) join `public_documentos` `documentos`) join `public_clipro` `clipro`) join `public_contactos` `contactos`) join `public_tipofacturacion` `tipofacturacion`) join `public_t_moneda` `t_moneda`) join `public_tenores` `tenores`) join `public_tenores` `tenores1`) join `public_estado` `estado`) join `public_trabajadores` `trabajadores`) join `public_direcciones` `direcciones`) join `public_ums` `ums`) where ((`coti`.`codsociedad` = `sociedades`.`socio`) and (`coti`.`coddocu` = `documentos`.`coddocu`) and (`coti`.`codpro` = `clipro`.`codpro`) and (`coti`.`idcontacto` = `contactos`.`id`) and (`coti`.`codtipofac` = `tipofacturacion`.`codtipofac`) and (`coti`.`moneda` = `t_moneda`.`codmoneda`) and (`coti`.`tenorsup` = `tenores`.`posicion`) and (`coti`.`coddocu` = `tenores`.`coddocu`) and (`coti`.`codsociedad` = `tenores`.`sociedad`) and (`coti`.`tenorinf` = `tenores1`.`posicion`) and (`coti`.`coddocu` = `tenores1`.`coddocu`) and (`coti`.`codsociedad` = `tenores1`.`sociedad`) and (`x`.`um` = `ums`.`um`) and (`coti`.`idguia` = `x`.`hidguia`) and (`coti`.`codestado` = `estado`.`codestado`) and (`coti`.`codresponsable` = `trabajadores`.`codigotra`) and (`coti`.`direcentrega` = `direcciones`.`n_direc`) and (`coti`.`coddocu` = `estado`.`codocu`)) order by `x`.`item`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ocosubtotal`
--
DROP TABLE IF EXISTS `vw_ocosubtotal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_ocosubtotal` AS select `a`.`idguia` AS `idguia`,`b`.`hidguia` AS `hidguia`,`a`.`nigv` AS `nigv`,`a`.`descuento` AS `descuento`,`f`.`simbolo` AS `simbolo`,round(sum((`b`.`punit` * `b`.`cant`)),2) AS `subtotal`,round(((sum((`b`.`punit` * `b`.`cant`)) * `a`.`descuento`) / 100),2) AS `destotal`,round((sum((`b`.`punit` * `b`.`cant`)) - ((sum((`b`.`punit` * `b`.`cant`)) * `a`.`descuento`) / 100)),2) AS `subtotaldes`,round((sum((`b`.`punit` * `b`.`cant`)) * `a`.`nigv`),2) AS `impuesto`,round(((sum((`b`.`punit` * `b`.`cant`)) - ((sum((`b`.`punit` * `b`.`cant`)) * `a`.`descuento`) / 100)) + (sum((`b`.`punit` * `b`.`cant`)) * `a`.`nigv`)),2) AS `total` from ((`public_ocompra` `a` join `public_docompra` `b`) join `public_t_moneda` `f`) where ((`a`.`idguia` = `b`.`hidguia`) and (`a`.`moneda` = `f`.`codmoneda`)) group by `a`.`idguia`,`a`.`nigv`,`a`.`descuento`,`b`.`hidguia`,`f`.`simbolo`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_opcionesdocumentos`
--
DROP TABLE IF EXISTS `vw_opcionesdocumentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_opcionesdocumentos` AS select `documentos`.`desdocu` AS `desdocu`,`opcionesdocumentos`.`idopdoc` AS `idopdoc`,`opcionescamposdocu`.`campo` AS `campo`,`opcionescamposdocu`.`nombrecampo` AS `nombrecampo`,`opcionescamposdocu`.`tipodato` AS `tipodato`,`opcionescamposdocu`.`longitud` AS `longitud`,`opcionesdocumentos`.`id` AS `id`,`opcionesdocumentos`.`idusuario` AS `idusuario`,`cruge_user`.`username` AS `username`,`documentos`.`coddocu` AS `coddocu`,`opcionesdocumentos`.`valor` AS `valor`,`opcionescamposdocu`.`seleccionable` AS `seleccionable` from (((`public_documentos` `documentos` join `cruge_user`) join `public_opcionescamposdocu` `opcionescamposdocu`) join `public_opcionesdocumentos` `opcionesdocumentos`) where ((`documentos`.`coddocu` = `opcionescamposdocu`.`codocu`) and (`opcionesdocumentos`.`idopdoc` = `opcionescamposdocu`.`id`) and (`opcionesdocumentos`.`idusuario` = `cruge_user`.`iduser`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pareto`
--
DROP TABLE IF EXISTS `vw_pareto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_pareto` AS select `t`.`codart` AS `codart`,`t`.`desum` AS `desum`,`t`.`punit` AS `punit`,`t`.`descripcion` AS `descripcion`,`t`.`ptlibre` AS `ptlibre`,`t`.`ubicacion` AS `ubicacion`,`t`.`codalm` AS `codalm`,`t`.`codcen` AS `codcen`,`t`.`cantlibre` AS `cantlibre`,`w`.`ranking` AS `ranking`,`w`.`clase` AS `clase`,`w`.`acumulado` AS `acumulado`,`w`.`porcentaje` AS `porcentaje`,`w`.`hinventario` AS `hinventario`,`w`.`idsesion` AS `idsesion`,`w`.`column_7` AS `column_7`,`w`.`porcentajeac` AS `porcentajeac` from (`public_pareto` `w` join `vw_alinventario` `t`) where (`t`.`id` = `w`.`hinventario`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_peticion`
--
DROP TABLE IF EXISTS `vw_peticion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_peticion` AS select `t`.`id` AS `id`,`t`.`codpro` AS `codpro`,`t`.`codproadqui` AS `codproadqui`,`t`.`tipo` AS `tipo`,`t`.`codcen` AS `codcen`,`t`.`codal` AS `codal`,`t`.`numero` AS `numero`,`t`.`fecha` AS `fecha`,`t`.`fechacreac` AS `fechacreac`,`t`.`comentario` AS `comentario`,`t`.`textocorto` AS `textocorto`,`t`.`idcontacto` AS `idcontacto`,`t`.`iduser` AS `iduser`,`t`.`codocu` AS `codocu`,`t`.`codmon` AS `codmon`,`t`.`descuento` AS `descuento`,`t`.`grupocompras` AS `grupocompras`,`t`.`tenorsup` AS `tenorsup`,`t`.`tenorinf` AS `tenorinf`,`t`.`validez` AS `validez`,`t`.`codobjeto` AS `codobjeto`,`t`.`direntrega` AS `direntrega`,`cli`.`despro` AS `adqui`,`cli`.`rucpro` AS `rucproadqui`,`c`.`despro` AS `despro`,`c`.`rucpro` AS `rucpro`,`z`.`c_nombre` AS `c_nombre`,`z`.`c_cargo` AS `c_cargo`,`z`.`c_tel` AS `c_tel`,`z`.`c_mail` AS `c_mail`,`d`.`desdocu` AS `desdocu`,`m`.`desmon` AS `desmon`,`e`.`estado` AS `estado`,`g`.`nomgru` AS `nomgru`,`tsup`.`mensaje` AS `mensasup`,`tinf`.`mensaje` AS `mensainf`,`o`.`descripcionobjeto` AS `descripcionobjeto` from ((((((((((`public_peticion` `t` join `public_clipro` `c`) join `public_clipro` `cli`) join `public_contactos` `z`) join `public_documentos` `d`) join `public_monedas` `m`) join `public_estado` `e`) join `public_objetos_cliente` `o`) join `public_grupoventas` `g`) join `public_tenores` `tsup`) join `public_tenores` `tinf`) where ((`t`.`codpro` = `c`.`codpro`) and (`t`.`codpro` = `cli`.`codpro`) and (`t`.`idcontacto` = `z`.`id`) and (`t`.`codocu` = `d`.`coddocu`) and (`t`.`codmon` = `m`.`codmoneda`) and (`t`.`codestado` = `e`.`codestado`) and (`t`.`codocu` = `e`.`codocu`) and (`t`.`codobjeto` = `o`.`codobjeto`) and (`t`.`codpro` = `o`.`codpro`) and (`t`.`grupocompras` = `g`.`codgrupo`) and (`t`.`tenorsup` = `tsup`.`posicion`) and (`t`.`tenorinf` = `tinf`.`posicion`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solcot`
--
DROP TABLE IF EXISTS `vw_solcot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_solcot` AS select `t`.`codpro` AS `codpro`,`t`.`numero` AS `numero`,`t`.`fecha` AS `fecha`,`t`.`vigencia` AS `vigencia`,`e`.`id` AS `id`,`e`.`preciounit` AS `preciounit`,`e`.`indicaciones` AS `indicaciones`,`e`.`cant` AS `cant`,`h`.`dedispo` AS `dedispo`,`f`.`um` AS `um`,`f`.`txtmaterial` AS `txtmaterial`,`f`.`codart` AS `codart`,`g`.`desum` AS `desum` from ((((`public_solcot` `t` join `public_desolcot` `e`) join `public_disponiblidad` `h`) join `public_desolpe1` `f`) join `public_ums` `g`) where ((`t`.`id` = `e`.`hidsolcot`) and (`e`.`hiddesolpe` = `f`.`id`) and (`f`.`um` = `g`.`um`) and (`h`.`codisp` = `e`.`codispo`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solpe`
--
DROP TABLE IF EXISTS `vw_solpe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_solpe` AS select `t`.`punitplan` AS `punitplan`,`t`.`punitreal` AS `punitreal`,`a`.`id` AS `identidad`,`t`.`numero` AS `numero`,`t`.`posicion` AS `posicion`,`t`.`tipimputacion` AS `tipimputacion`,`t`.`centro` AS `centro`,`t`.`codal` AS `codal`,`t`.`codart` AS `codart`,`t`.`txtmaterial` AS `txtmaterial`,`t`.`grupocompras` AS `grupocompras`,`t`.`usuario` AS `usuario`,`t`.`modificado` AS `modificado`,`t`.`textodetalle` AS `textodetalle`,`t`.`fechacrea` AS `fechacrea`,`t`.`fechaent` AS `fechaent`,`t`.`fechalib` AS `fechalib`,`t`.`estadolib` AS `estadolib`,`t`.`imputacion` AS `imputacion`,`t`.`solicitanet` AS `solicitanet`,`t`.`hidsolpe` AS `hidsolpe`,`t`.`creado` AS `creado`,`t`.`creadopor` AS `creadopor`,`t`.`creadoel` AS `creadoel`,`a`.`escompra` AS `escompra`,`t`.`modificadopor` AS `modificadopor`,`t`.`modificadoel` AS `modificadoel`,`t`.`id` AS `id`,`x`.`desum` AS `desum`,`t`.`codocu` AS `codocu`,`t`.`um` AS `um`,`t`.`tipsolpe` AS `tipsolpe`,`t`.`est` AS `est`,`t`.`cant` AS `cant`,`t`.`item` AS `item`,`a`.`numero` AS `numsolpe`,`a`.`estado` AS `estado`,`a`.`codocu` AS `codigodoc` from ((`public_solpe` `a` join `public_desolpe1` `t`) join `public_ums` `x`) where ((`a`.`id` = `t`.`hidsolpe`) and (`t`.`um` = `x`.`um`) and (`t`.`est` <> '99'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solpeatencion`
--
DROP TABLE IF EXISTS `vw_solpeatencion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_solpeatencion` AS select `q`.`numero` AS `numero`,`t`.`um` AS `um`,`t`.`centro` AS `centro`,`t`.`codal` AS `codal`,`t`.`usuario` AS `usuario`,`t`.`fechacrea` AS `fechacrea`,`t`.`fechaent` AS `fechaent`,`t`.`imputacion` AS `imputacion`,`t`.`hidsolpe` AS `hidsolpe`,`t`.`codocu` AS `codocu`,`t`.`id` AS `id`,`t`.`item` AS `item`,`t`.`cant` AS `cant`,`t`.`txtmaterial` AS `txtmaterial`,`t`.`codart` AS `codart`,`s`.`desum` AS `desum`,`r`.`cantlibre` AS `cantlibre`,`u`.`desum` AS `umbase`,`r`.`canttran` AS `canttran`,`r`.`cantres` AS `cantres` from (((((`public_desolpe1` `t` join `public_solpe` `q`) join `public_ums` `s`) join `public_alinventario` `r`) join `public_ums` `u`) join `public_maestrocomponentes` `m`) where ((`t`.`hidsolpe` = `q`.`id`) and (`t`.`um` = `s`.`um`) and (`t`.`centro` = `r`.`codcen`) and (`t`.`codal` = `r`.`codalm`) and (`t`.`codart` = `r`.`codart`) and (`r`.`codart` = `m`.`codigo`) and (`m`.`um` = `u`.`um`));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solpeparacomprar`
--
DROP TABLE IF EXISTS `vw_solpeparacomprar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_solpeparacomprar` AS select `a`.`numero` AS `numero`,`a`.`estado` AS `estado`,`b`.`item` AS `item`,`b`.`id` AS `id`,`b`.`est` AS `est`,`b`.`tipimputacion` AS `tipimputacion`,`b`.`punitplan` AS `punitplan`,`a`.`id` AS `identidad`,`b`.`fechaent` AS `fechaent`,`b`.`fechacrea` AS `fechacrea`,`b`.`usuario` AS `usuario`,`b`.`um` AS `um`,`b`.`tipsolpe` AS `tipsolpe`,`b`.`centro` AS `centro`,`b`.`codal` AS `codal`,`b`.`codart` AS `codart`,`b`.`imputacion` AS `imputacion`,`b`.`cant` AS `cant`,`d`.`desum` AS `desum`,`b`.`txtmaterial` AS `txtmaterial`,sum(`c`.`cant`) AS `cantatendida`,(`b`.`cant` - sum(`c`.`cant`)) AS `cant_pendiente` from (((`public_solpe` `a` join `public_desolpe1` `b` on((`a`.`id` = `b`.`hidsolpe`))) left join `public_desolpecompra` `c` on((`b`.`id` = `c`.`iddesolpe`))) join `public_ums` `d` on((`d`.`um` = `b`.`um`))) where (`a`.`escompra` = '1') group by `a`.`numero`,`a`.`fechanec`,`b`.`centro`,`b`.`txtmaterial`,`b`.`codal`,`b`.`codart`,`b`.`imputacion`,`b`.`cant`,`d`.`desum` having ((sum(`c`.`cant`) < `cant`) or isnull(sum(`c`.`cant`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solpeparacomrpar`
--
DROP TABLE IF EXISTS `vw_solpeparacomrpar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys_julito`@`190.117.161.10` SQL SECURITY DEFINER VIEW `vw_solpeparacomrpar` AS select `a`.`numero` AS `numero`,`a`.`estado` AS `estado`,`b`.`fechaent` AS `fechaent`,`b`.`tipsolpe` AS `tipsolpe`,`b`.`centro` AS `centro`,`b`.`codal` AS `codal`,`b`.`codart` AS `codart`,`b`.`imputacion` AS `imputacion`,`b`.`cant` AS `cant`,`d`.`desum` AS `desum`,`b`.`txtmaterial` AS `txtmaterial`,sum(`c`.`cant`) AS `cantatendida`,(`b`.`cant` - sum(`c`.`cant`)) AS `cant_pendiente` from (((`public_solpe` `a` join `public_desolpe1` `b` on((`a`.`id` = `b`.`hidsolpe`))) left join `public_desolpecompra` `c` on((`b`.`id` = `c`.`iddesolpe`))) join `public_ums` `d` on((`d`.`um` = `b`.`um`))) where (`a`.`escompra` = '1') group by `a`.`numero`,`a`.`fechanec`,`b`.`centro`,`b`.`txtmaterial`,`b`.`codal`,`b`.`codart`,`b`.`imputacion`,`b`.`cant`,`d`.`desum` having ((sum(`c`.`cant`) < `cant`) or isnull(sum(`c`.`cant`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_solpereservas`
--
DROP TABLE IF EXISTS `vw_solpereservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_solpereservas` AS select `u`.`desum` AS `desum`,`a`.`id` AS `identidad`,`t`.`numero` AS `numero`,`t`.`est` AS `est`,`t`.`posicion` AS `posicion`,`a`.`escompra` AS `escompra`,`t`.`tipimputacion` AS `tipimputacion`,`t`.`centro` AS `centro`,`t`.`codart` AS `codart`,`t`.`codal` AS `codal`,`t`.`txtmaterial` AS `txtmaterial`,`t`.`usuario` AS `usuariodesolpe`,`t`.`textodetalle` AS `textodetalle`,`t`.`fechacrea` AS `fechacrea`,`t`.`fechaent` AS `fechaent`,`t`.`imputacion` AS `imputacion`,`t`.`hidsolpe` AS `hidsolpe`,`t`.`id` AS `iddesolpe`,`t`.`codocu` AS `codocusolpe`,`t`.`um` AS `um`,`t`.`tipsolpe` AS `tipsolpe`,`t`.`cant` AS `cantdesolpe`,`t`.`item` AS `item`,`a`.`numero` AS `numsolpe`,`s`.`id` AS `id`,`s`.`hidesolpe` AS `hidesolpe`,`s`.`estadoreserva` AS `estadoreserva`,`s`.`fechares` AS `fechares`,`s`.`usuario` AS `usuario`,`s`.`cant` AS `cant`,`s`.`codocu` AS `codocu`,`s`.`flag` AS `flag`,`s`.`rex` AS `rex`,`s`.`atendido` AS `atendido`,sum(`x`.`cant`) AS `n_sumita` from ((((`public_desolpe1` `t` join `public_alreserva` `s` on((`s`.`hidesolpe` = `t`.`id`))) join `public_ums` `u` on((`u`.`um` = `t`.`um`))) join `public_solpe` `a` on((`t`.`hidsolpe` = `a`.`id`))) left join `public_atencionreserva` `x` on((`s`.`id` = `x`.`hidreserva`))) where ((`s`.`codocu` in ('450','800')) and (`s`.`estadoreserva` <> '30')) group by `u`.`desum`,`a`.`id`,`t`.`numero`,`t`.`posicion`,`a`.`escompra`,`t`.`tipimputacion`,`t`.`centro`,`t`.`codart`,`t`.`codal`,`t`.`txtmaterial`,`t`.`usuario`,`t`.`textodetalle`,`t`.`fechacrea`,`t`.`fechaent`,`t`.`imputacion`,`t`.`hidsolpe`,`t`.`id`,`t`.`codocu`,`t`.`um`,`t`.`tipsolpe`,`t`.`cant`,`t`.`item`,`a`.`numero`,`s`.`id`,`s`.`hidesolpe`,`s`.`estadoreserva`,`s`.`fechares`,`s`.`usuario`,`s`.`cant`,`s`.`codocu`,`s`.`flag`,`s`.`rex`,`s`.`atendido` having ((sum(`x`.`cant`) < `s`.`cant`) or isnull(sum(`x`.`cant`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_stocktotal_almacenes`
--
DROP TABLE IF EXISTS `vw_stocktotal_almacenes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_stocktotal_almacenes` AS select `a`.`codcen` AS `codcen`,`a`.`codalm` AS `codalm`,`a`.`codsoc` AS `codsoc`,`a`.`nomal` AS `nomal`,sum(((`b`.`punit` + `b`.`punitdif`) * `b`.`cantlibre`)) AS `stocklibre`,sum(((`b`.`punit` + `b`.`punitdif`) * `b`.`cantres`)) AS `stockreservado`,sum(((`b`.`punit` + `b`.`punitdif`) * `b`.`canttran`)) AS `stocktransito` from (`public_alinventario` `b` join `public_almacenes` `a`) where ((`a`.`codalm` = `b`.`codalm`) and (`a`.`codcen` = `b`.`codcen`)) group by `a`.`codcen`,`a`.`codsoc`,`a`.`nomal`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_stock_por_tipos`
--
DROP TABLE IF EXISTS `vw_stock_por_tipos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_stock_por_tipos` AS select `n`.`destipo` AS `destipo`,`n`.`codtipo` AS `codtipo`,`a`.`codcen` AS `codcen`,`a`.`codalm` AS `codalm`,`a`.`codsoc` AS `codsoc`,`a`.`nomal` AS `nomal`,sum(((`b`.`punit` + `b`.`punitdif`) * `b`.`cantlibre`)) AS `stocklibre`,sum(((`b`.`punit` + `b`.`punitdif`) * `b`.`cantres`)) AS `stockreservado`,sum((`b`.`punit` + (`b`.`punitdif` * `b`.`canttran`))) AS `stocktransito` from (((`public_alinventario` `b` join `public_almacenes` `a`) join `public_maestrocomponentes` `m`) join `public_maestrotipos` `n`) where ((`a`.`codalm` = `b`.`codalm`) and (`a`.`codcen` = `b`.`codcen`) and (`b`.`codart` = `m`.`codigo`) and (`m`.`codtipo` = `n`.`codtipo`)) group by `n`.`destipo`,`n`.`codtipo`,`a`.`codcen`,`a`.`codsoc`,`a`.`nomal`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_stock_supervision`
--
DROP TABLE IF EXISTS `vw_stock_supervision`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_stock_supervision` AS select `a`.`codart` AS `codart`,`a`.`codcentro` AS `codcentro`,`a`.`codal` AS `codal`,`a`.`canteconomica` AS `canteconomica`,`a`.`cantreposic` AS `cantreposic`,`a`.`cantreorden` AS `cantreorden`,`d`.`descripcion` AS `descripcion`,`d`.`um` AS `um`,`c`.`desum` AS `desum`,`a`.`supervisionautomatica` AS `supervisionautomatica`,`b`.`cantlibre` AS `cantlibre`,`b`.`cantres` AS `cantres`,`b`.`canttran` AS `canttran`,`b`.`punit` AS `punit`,`b`.`id` AS `idinventario` from (((`public_maestrodetalle` `a` join `public_maestrocomponentes` `d`) join `public_ums` `c`) join `public_alinventario` `b`) where ((`a`.`codart` = `b`.`codart`) and (`a`.`codcentro` = `b`.`codcen`) and (`a`.`codal` = `b`.`codalm`) and (`a`.`codart` = `d`.`codigo`) and (`d`.`um` = `c`.`um`) and (`a`.`supervisionautomatica` = '1'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_subtotalpeticion`
--
DROP TABLE IF EXISTS `vw_subtotalpeticion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`190.117.217.94` SQL SECURITY DEFINER VIEW `vw_subtotalpeticion` AS select `t`.`hidpeticion` AS `hidpeticion`,sum((`t`.`punit` * `t`.`cant`)) AS `punit`,sum((`t`.`plista` * `t`.`cant`)) AS `plista`,sum(`t`.`igv_monto`) AS `igv_monto`,sum((`t`.`pventa` * `t`.`cant`)) AS `pventa`,sum(`t`.`descuento`) AS `descuento`,`m`.`simbolo` AS `simbolo` from ((`public_dpeticion` `t` join `public_peticion` `a`) join `public_monedas` `m`) where ((`t`.`hidpeticion` = `a`.`id`) and (`a`.`codmon` = `m`.`codmoneda`)) group by `t`.`hidpeticion`,`m`.`simbolo`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_trabajadores`
--
DROP TABLE IF EXISTS `vw_trabajadores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_trabajadores` AS select `trabajadores`.`codigotra` AS `codigotra`,concat(`trabajadores`.`ap`,'-',`trabajadores`.`am`,'-',`trabajadores`.`nombres`) AS `nombrecompleto`,`trabajadores`.`codpuesto` AS `codpuesto`,`trabajadores`.`ap` AS `ap`,`trabajadores`.`am` AS `am`,`trabajadores`.`nombres` AS `nombres`,`trabajadores`.`dni` AS `dni`,`oficios`.`oficio` AS `oficio` from (`public_trabajadores` `trabajadores` join `public_oficios` `oficios`) where (`trabajadores`.`codpuesto` = `oficios`.`codof`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_trazabilidad_reservas`
--
DROP TABLE IF EXISTS `vw_trazabilidad_reservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_trazabilidad_reservas` AS select `a`.`hidesolpe` AS `hidesolpe`,`a`.`id` AS `id`,`a`.`fechares` AS `fecha_reserva`,`a`.`codocu` AS `codocu`,`a`.`estadoreserva` AS `estadoreserva`,`a`.`usuario` AS `usuario_reserva`,`f`.`desdocu` AS `desdocu_reserva`,`u`.`desum` AS `umsolic`,`uu`.`desum` AS `umatem`,`a`.`cant` AS `cantidad_reservada`,`b`.`cant` AS `cantidad_atendida`,`g`.`fechacont` AS `fecha_atencion_vale`,`g`.`numvale` AS `numero_vale_atencion`,`x`.`fechacrea` AS `fecha_solicitud_compra`,`r`.`numero` AS `solicitud_compra`,`j`.`fecdoc` AS `fecha_compra`,`j`.`numcot` AS `orden_compra`,`k`.`numvale` AS `vale_ingreso_compra_almacen`,`k`.`fechacont` AS `fecha_vale_ingreso_almacen` from (((((((((((((((`public_alreserva` `a` left join `public_documentos` `f` on((`f`.`coddocu` = `a`.`codocu`))) left join `public_atencionreserva` `b` on((`a`.`id` = `b`.`hidreserva`))) left join `public_alkardex` `c` on((`b`.`hidkardex` = `c`.`id`))) left join `public_ums` `uu` on((`c`.`um` = `uu`.`um`))) left join `public_almacendocs` `g` on((`g`.`id` = `c`.`hidvale`))) left join `public_desolpe1` `x` on((`x`.`idreserva` = `a`.`id`))) left join `public_solpe` `r` on((`x`.`hidsolpe` = `r`.`id`))) left join `public_desolpecompra` `y` on((`x`.`id` = `y`.`iddesolpe`))) left join `public_desolpe1` `v` on((`v`.`id` = `y`.`iddesolpe`))) left join `public_ums` `u` on((`u`.`um` = `v`.`um`))) left join `public_solpe` `w` on((`w`.`id` = `v`.`hidsolpe`))) left join `public_docompra` `z` on((`z`.`id` = `y`.`iddocompra`))) left join `public_ocompra` `j` on((`j`.`idguia` = `z`.`hidguia`))) left join `public_alkardex` `s` on((`s`.`idref` = `z`.`id`))) left join `public_almacendocs` `k` on((`k`.`id` = `s`.`hidvale`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_trazabilidad_solpe_1`
--
DROP TABLE IF EXISTS `vw_trazabilidad_solpe_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`neologys`@`localhost` SQL SECURITY DEFINER VIEW `vw_trazabilidad_solpe_1` AS select `a`.`numero` AS `numero`,`b`.`centro` AS `centro`,`b`.`codal` AS `codal`,`b`.`codart` AS `codart`,`b`.`txtmaterial` AS `txtmaterial`,`b`.`fechaent` AS `fechaent`,`b`.`cant` AS `cant`,`b`.`item` AS `item`,`b`.`um` AS `um`,`c`.`desum` AS `desum`,`d`.`iddesolpe` AS `iddesolpe`,`d`.`iddocompra` AS `iddocompra`,`d`.`cant` AS `cantaten`,`d`.`fecha` AS `featencion`,`d`.`user` AS `user`,`e`.`cant` AS `cantcompras`,`e`.`item` AS `itemcompra`,`x`.`desum` AS `umcompra`,`f`.`numcot` AS `numcot`,`s`.`fecha` AS `fecha`,`s`.`cant` AS `cantkardex`,`s`.`codmov` AS `codmov`,`t`.`numvale` AS `numvale`,`u`.`movimiento` AS `movimiento` from (((((((((`public_solpe` `a` join `public_desolpe1` `b` on((`a`.`id` = `b`.`hidsolpe`))) join `public_ums` `c` on((`c`.`um` = `b`.`um`))) join `public_desolpecompra` `d` on((`d`.`iddesolpe` = `b`.`id`))) join `public_docompra` `e` on((`e`.`id` = `d`.`iddocompra`))) join `public_ums` `x` on((`x`.`um` = `e`.`um`))) join `public_ocompra` `f` on((`f`.`idguia` = `e`.`hidguia`))) left join `public_alkardex` `s` on((`s`.`idref` = `e`.`id`))) left join `public_almacendocs` `t` on((`t`.`id` = `s`.`hidvale`))) left join `public_almacenmovimientos` `u` on((`t`.`codmovimiento` = `u`.`codmov`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
