-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:19:12
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
-- Estructura de tabla para la tabla `public_documentos`
--

CREATE TABLE IF NOT EXISTS `public_documentos` (
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `desdocu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `clase` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `coddocupadre` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `tabla` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `anuladesde` int(11) DEFAULT NULL,
  `cactivo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `abreviatura` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `prefijo` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `x_report` int(11) NOT NULL,
  `y_report` int(11) NOT NULL,
  `comprobante` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `idreportedefault` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_documentos`
--

INSERT INTO `public_documentos` (`coddocu`, `desdocu`, `clase`, `tipo`, `creadopor`, `creadoel`, `modificadopor`, `modificadoel`, `coddocupadre`, `tabla`, `anuladesde`, `cactivo`, `abreviatura`, `prefijo`, `x_report`, `y_report`, `comprobante`, `idreportedefault`) VALUES
('014', 'CONTROL DE ACTIVOS', 'D', '04', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '999', NULL, NULL, NULL, NULL, '140', 0, 0, '', 0),
('100', 'GUIA DE REMISION', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '19-10-2013@10:44:35', '160', 'dcotmateriales', NULL, NULL, '', '100', 20, 320, '0', 0),
('101', 'VALE DE ALMACEN', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '08-03-2014@12:19:32', '', NULL, NULL, NULL, '', '110', 0, 0, '0', 3),
('110', 'COTIZACION', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '21-11-2013@23:39:10', '   ', NULL, NULL, NULL, '', '111', 0, 0, '', 0),
('120', 'ACTA DE CONFORMIDAD', 'D', '02', 'postgres', '16-10-2013@23:46:42', 'tomasito', '22-05-2014@21:47:12', '160', NULL, NULL, NULL, '', '120', 0, 0, '', 0),
('130', 'PETICION DE OFERTA', 'D', '03', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '', NULL, NULL, NULL, 'PETOF', '130', 0, 0, '', 0),
('150', 'DIRECCION', 'O', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '', NULL, NULL, NULL, '', '150', 0, 0, '', 0),
('160', 'GENERAL', 'D', '00', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '999', NULL, NULL, NULL, NULL, '999', 0, 0, '', 0),
('170', 'DETALLE DE FACTURA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-05-2012@11:48:51', '400', NULL, NULL, NULL, NULL, '777', 0, 0, '', 0),
('190', 'FACTURA', 'D', '03', 'postgres', '16-10-2013@23:46:42', 'julian', '27-03-2011@09:50:35', '', NULL, NULL, NULL, '', '190', 0, 0, '1', 0),
('200', 'DETALLE DE CAJA CHICA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '25-10-2014@03:15:13', '370', 'detgui', NULL, NULL, '', '789', 0, 0, '0', 0),
('201', 'DETALLE FACTURA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '30-03-2011@10:39:21', '400', NULL, NULL, NULL, NULL, '222', 0, 0, '', 0),
('210', 'ORDEN DE COMPRA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '30-03-2011@10:39:51', '999', NULL, NULL, NULL, NULL, '210', 0, 0, '', 0),
('220', 'DETALLE ORDEN DE COMPRA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '30-03-2011@10:40:13', '210', NULL, NULL, NULL, '', '220', 0, 0, '0', 0),
('230', 'DETALLE GUIA DE REMISION', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '19-10-2013@10:45:09', '100', 'guia', NULL, NULL, '', '189', 250, 238, '', 0),
('240', 'DETALLE COTIZACION', 'D', '02', 'postgres', '16-10-2013@23:46:42', 'tomasito', '02-11-2013@21:43:36', '200', 'coti', NULL, NULL, '', '240', 0, 0, '', 0),
('250', 'DETALLE NOTA DE INGRESO', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-05-2012@11:49:01', '500', NULL, NULL, NULL, NULL, '251', 0, 0, '', 0),
('260', 'CARGO DE MATERIALES', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '26-07-2012@09:17:22', '999', NULL, NULL, NULL, NULL, '260', 0, 0, '', 0),
('270', 'DETALLE CARGOS', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '26-07-2012@09:18:30', '999', NULL, NULL, NULL, NULL, '277', 0, 0, '', 0),
('280', 'REGISTRO DE INGRESO DOC', 'D', '03', 'postgres', '16-10-2013@23:46:42', 'postgres', '26-09-2012@10:47:11', '', NULL, NULL, NULL, '', '280', 0, 0, '', 0),
('290', 'ACTA DE BAJA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '27-09-2012@10:39:44', '999', NULL, NULL, '1', 'SBAJA', '290', 0, 0, '', 0),
('300', 'OPERACION', 'O', NULL, 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '0  ', NULL, NULL, NULL, NULL, '300', 0, 0, '', 0),
('301', 'ALTA DE ACTIVO', 'D', '03', 'postgres', '16-10-2013@23:46:42', 'postgres', '27-09-2012@10:40:10', '999', NULL, NULL, '1', 'SOBCU', '301', 0, 0, '', 0),
('310', 'RESERVA PARA VENTA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '30-01-2013@07:34:45', '', 'inventario', NULL, NULL, '', '310', 0, 0, '', 0),
('320', 'OBSERVACION ACTIVO FIJO', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '11-02-2013@18:22:13', '999', 'obervaciones', NULL, NULL, NULL, '332', 0, 0, '', 0),
('330', 'OBSERVACION ACTIVO FIJO', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '02-02-2014@20:51:07', '   ', NULL, NULL, NULL, '', '333', 0, 0, '', 0),
('340', 'SOLICITUD DE PEDIDO', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '28-02-2014@23:59:28', '   ', NULL, NULL, NULL, 'SOLPE', '330', 0, 0, '', 0),
('350', 'DETALLE SOLPE', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '01-03-2014@00:00:01', '340', NULL, NULL, NULL, '', '350', 0, 0, '', 0),
('360', 'REGISTRO EMPRESA(CLIPRO)', 'D', '01', 'postgres', '16-10-2013@23:46:42', NULL, NULL, '', NULL, NULL, NULL, '', '360', 0, 0, '', 0),
('370', 'DOC DE CAJACHICA', 'D', '01', 'postgres', '16-10-2013@23:46:42', NULL, NULL, '', NULL, NULL, NULL, '', '370', 0, 0, '', 0),
('380', 'FICHA TECNICA', 'D', '01', 'postgres', '16-10-2013@23:46:42', NULL, NULL, '999', NULL, NULL, NULL, NULL, '380', 0, 0, '', 0),
('390', 'REGISTRO ACTIVO', 'D', '03', 'postgres', '16-10-2013@23:46:42', 'postgres', '23-07-2013@11:25:53', '', NULL, NULL, '1', 'REGAC', '390', 0, 0, '0', 0),
('400', 'INVENTARIO FISICO', 'O', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '0  ', NULL, NULL, NULL, NULL, '400', 0, 0, '', 0),
('401', 'INGRESO DOCUMENTARIO', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '01-08-2013@14:55:10', '999', NULL, NULL, NULL, NULL, '440', 0, 0, '', 0),
('410', 'RECIBO SERVICIOS', 'D', '01', 'postgres', '16-10-2013@23:46:42', NULL, NULL, '999', NULL, NULL, NULL, NULL, '410', 0, 0, '', 0),
('420', 'DETALLE DE CAJA CHICA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '17-09-2013@18:28:07', '370', NULL, NULL, NULL, '', '420', 0, 0, '', 0),
('421', 'SOLCIITUD COTIZACION', '', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, 'SOLCO', '421', 0, 0, '0', 0),
('430', 'DETALLE PETICION DE OFERTA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '08-03-2014@12:15:16', '130', 'dcotmateriales_d', NULL, NULL, '49', '430', 0, 0, '0', 0),
('450', 'RESERVA', 'D', '  ', 'tomasito', '12-04-2014@23:18:18', NULL, NULL, '   ', NULL, NULL, NULL, 'RES', '450', 0, 0, '', 0),
('460', 'KARDEX', '0', '  ', 'tomasito', '29-06-2014@15:57:32', NULL, NULL, '   ', NULL, NULL, NULL, 'KARD', '460', 0, 0, '', 0),
('470', 'RECEPCION DE MATERIALES Y SERV', '', '', 'admin', NULL, NULL, NULL, '220', NULL, NULL, NULL, 'RECEP', '470', 0, 0, '', 0),
('500', 'NOTA DE INGRESO', 'O', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '16-11-2013@08:07:31', '200', NULL, NULL, NULL, 'NE', '500', 0, 0, '', 0),
('560', 'MAESTRO  SERVICIO', 'M', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '560', 0, 0, '0', 0),
('600', 'RQ COMPRA', 'O', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '07-08-2014@01:14:30', '', NULL, NULL, NULL, '', '600', 0, 0, '0', 0),
('700', 'CATALOGO DE MATERIAL', 'O', '01', 'postgres', '16-10-2013@23:46:42', 'postgres', '21-03-2011@12:29:54', '', NULL, NULL, NULL, '', '700', 0, 0, '', 0),
('800', 'REQ COMPRA', 'D', '01', 'postgres', '16-10-2013@23:46:42', 'tomasito', '04-10-2014@21:37:09', '350', NULL, NULL, NULL, 'INGCO', '800', 0, 0, '0', 0),
('890', 'ORDEN DE TRABAJO', 'D', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, 'OTRA', '490', 0, 0, '0', 0),
('891', 'DETALLE OT', '', '', 'admin', NULL, NULL, NULL, '890', NULL, NULL, NULL, 'DEOT', '891', 0, 0, '0', 0),
('900', 'TRASLADO ENTRE ALMACENES', 'O', '06', 'postgres', '16-10-2013@23:46:42', 'tomasito', '25-10-2014@03:15:45', '   ', NULL, NULL, NULL, '', '900', 0, 0, '', 0),
('901', 'FICHA TECNICA DE MATERIAL', 'D', '01', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '002', 0, 0, '', 0),
('902', 'BOLETA DE VENTA', '', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, 'BOL', '458', 0, 0, '1', 0),
('903', 'BOLETO TERRESTRE', '', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, 'BT', '459', 0, 0, '1', 0),
('904', 'VALE DE MOVILIDAD', '', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '461', 0, 0, '1', 0),
('905', 'VALE GASTOS NO DOC', '', '', 'admin', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '462', 0, 0, '1', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_documentos`
--
ALTER TABLE `public_documentos`
  ADD PRIMARY KEY (`coddocu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
