-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:22:21
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
-- Estructura de tabla para la tabla `public_estado`
--

CREATE TABLE IF NOT EXISTS `public_estado` (
  `codestado` char(2) NOT NULL,
  `codocu` char(3) NOT NULL,
  `estado` varchar(25) DEFAULT NULL,
  `ordenn` smallint(6) DEFAULT NULL,
  `creadopor` varchar(25) DEFAULT NULL,
  `creadoel` varchar(20) DEFAULT NULL,
  `modificadopor` varchar(25) DEFAULT NULL,
  `modificadoel` varchar(20) DEFAULT NULL,
  `eseditable` int(11) DEFAULT NULL,
  `esanulable` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `public_estado`
--

INSERT INTO `public_estado` (`codestado`, `codocu`, `estado`, `ordenn`, `creadopor`, `creadoel`, `modificadopor`, `modificadoel`, `eseditable`, `esanulable`, `id`) VALUES
('10', '470', 'CREADO', NULL, '', '', '', '', NULL, NULL, 1),
('20', '110', 'EVALUACION', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 58),
('30', '110', 'FIRMADO', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 59),
('70', '110', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 60),
('10', '400', 'INGRESADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 61),
('20', '400', 'EVALUACION', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 62),
('30', '400', 'FIRMADO', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 63),
('40', '400', 'CONTABILIZADO', 4, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 64),
('50', '400', 'ANULADO', 9999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 65),
('80', '120', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 66),
('90', '120', 'EN CURSO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 67),
('10', '120', 'TERMINADO', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 68),
('11', '120', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 69),
('10', '130', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', '', '', NULL, NULL, 70),
('20', '130', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', '', '', NULL, NULL, 71),
('30', '130', 'PROC COMPRA', 3, 'postgres', '16-10-2013@23:48:53', '', '', NULL, NULL, 72),
('99', '130', 'PREVIO', 1, 'postgres', '16-10-2013@23:48:53', '', '', NULL, NULL, 73),
('50', '130', 'ANULADO', 4, 'postgres', '16-10-2013@23:48:53', '', '', NULL, NULL, 74),
('10', '190', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 75),
('20', '190', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 76),
('30', '190', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 77),
('10', '210', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '20-04-2010@18:50:16', NULL, NULL, 78),
('20', '210', 'MODIFICADO', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '20-04-2010@18:50:21', NULL, NULL, 79),
('10', '220', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '21-04-2010@16:16:28', NULL, NULL, 80),
('20', '220', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 81),
('30', '220', 'FACTURADO', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 82),
('50', '210', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '08-05-2010@13:48:20', NULL, NULL, 83),
('40', '220', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '01-01-2003@01:25:36', NULL, NULL, 84),
('60', '210', 'CON ENTREGAS', 3, 'postgres', '16-10-2013@23:48:53', 'tomasito', '30-03-2014@00:33:24', NULL, NULL, 85),
('70', '210', 'FACT PARCIAL', 4, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 86),
('99', '110', 'PREVIO', 6, 'postgres', '16-10-2013@23:48:53', 'tomasito', '24-11-2013@18:30:42', NULL, NULL, 87),
('50', '110', 'FACTURADO', 7, 'postgres', '16-10-2013@23:48:53', 'postgres', '22-03-2011@11:51:13', NULL, NULL, 88),
('60', '110', 'ARCHIVADO', 8, 'postgres', '16-10-2013@23:48:53', 'postgres', '22-03-2011@11:51:15', NULL, NULL, 89),
('80', '110', 'EN EJECUCION', 5, 'postgres', '16-10-2013@23:48:53', 'postgres', '10-05-2012@15:42:35', NULL, NULL, 90),
('40', '110', 'CON OC CLIENTE', 4, 'postgres', '16-10-2013@23:48:53', 'postgres', '28-03-2011@09:30:36', NULL, NULL, 91),
('30', '210', 'ACEPTADO', 3, 'postgres', '16-10-2013@23:48:53', 'postgres', '28-03-2011@09:35:41', NULL, NULL, 92),
('40', '210', 'FACTURADO', 4, 'postgres', '16-10-2013@23:48:53', 'postgres', '28-03-2011@09:35:48', NULL, NULL, 93),
('99', '210', 'PREVIO', 8, 'postgres', '16-10-2013@23:48:53', 'tomasito', '10-08-2014@13:35:41', NULL, NULL, 94),
('10', '230', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 95),
('40', '230', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 96),
('10', '110', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '30-03-2011@10:53:53', NULL, NULL, 97),
('10', '240', 'CREADA', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 98),
('20', '240', 'ACEPTADA', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '15-04-2011@20:49:12', NULL, NULL, 99),
('99', '240', 'PREVIO', 3, 'postgres', '16-10-2013@23:48:53', 'tomasito', '08-12-2013@22:00:35', NULL, NULL, 100),
('40', '240', 'ANULADA', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 101),
('10', '301', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 102),
('20', '301', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 103),
('10', '310', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 104),
('10', '290', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 105),
('20', '290', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 106),
('30', '301', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '26-07-2012@09:19:56', NULL, NULL, 107),
('40', '500', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:37:57', 0, 0, 108),
('20', '310', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '26-07-2012@09:20:05', NULL, NULL, 109),
('50', '230', 'DEVUELTO PARCIAL', 4, 'postgres', '16-10-2013@23:48:53', 'postgres', '21-08-2012@12:27:44', NULL, NULL, 110),
('60', '230', 'DEVUELTO', 5, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 111),
('10', '170', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '27-09-2012@14:28:16', 1, 1, 112),
('10', '100', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:31', 1, 1, 113),
('20', '100', 'CONFIRMADO', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:37', 0, 0, 114),
('20', '170', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, 0, 0, 115),
('30', '290', 'ACEPTADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 116),
('30', '170', 'ANULADO', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, 0, 0, 117),
('40', '100', 'FACTURADO', 6, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:39', 0, 0, 118),
('50', '100', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:40', 0, 0, 119),
('60', '100', 'RETORNADA', 5, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:41', 0, 0, 120),
('70', '100', 'RETORNADA PARCIAL', 3, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:34:42', 0, 0, 121),
('30', '100', 'AUTORIZADA', 4, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:35:45', 1, 1, 122),
('10', '500', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:37:53', 1, 1, 123),
('20', '500', 'CONFIRMADO', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-09-2012@14:37:55', 0, 0, 124),
('10', '320', 'ACTIVO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '30-01-2013@07:38:51', NULL, NULL, 125),
('30', '500', 'ARCHIVADO', 3, 'postgres', '16-10-2013@23:48:53', 'postgres', '25-10-2012@16:45:58', 0, 0, 126),
('10', '150', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 127),
('10', '330', 'ABIERTO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '11-02-2013@18:23:32', NULL, NULL, 128),
('20', '320', 'FUERA DE OPERACION', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '30-01-2013@07:38:58', NULL, NULL, 129),
('30', '320', 'EN TRAMITE DE BAJA', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '30-01-2013@07:39:01', NULL, NULL, 130),
('20', '330', 'RESUELTO', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '11-02-2013@18:23:34', NULL, NULL, 131),
('20', '150', 'SOLICITADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 132),
('99', '330', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', 'postgres', '11-02-2013@18:24:00', NULL, NULL, 133),
('30', '150', 'EN EJECUCION ', 3, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 134),
('40', '150', 'CERRADO', 4, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 135),
('50', '150', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 136),
('99', '230', 'PREVIO', 3, 'postgres', '16-10-2013@23:48:53', 'tomasito', '01-11-2013@01:21:24', NULL, NULL, 137),
('30', '230', 'FACTURADO', 6, 'postgres', '16-10-2013@23:48:53', 'postgres', '05-04-2013@14:49:03', NULL, NULL, 138),
('10', '340', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '02-05-2013@15:29:05', NULL, NULL, 139),
('20', '340', 'APROBADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 140),
('30', '340', 'ANULADO', 999, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 141),
('99', '100', 'PREVIO', 0, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 142),
('50', '320', 'ELIMINADO', NULL, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 143),
('40', '320', 'BAJA CONFIRMADA', 3, 'postgres', '16-10-2013@23:48:53', 'postgres', '23-07-2013@11:30:54', NULL, NULL, 144),
('10', '401', 'CREADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '01-08-2013@14:55:38', NULL, NULL, 145),
('20', '401', 'ACEPTADO', 2, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 146),
('99', '401', 'ANULADO', 99, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 147),
('10', '420', 'SOLICITADO', 1, 'postgres', '16-10-2013@23:48:53', 'postgres', '17-09-2013@18:28:35', NULL, NULL, 148),
('20', '420', 'REVISADO ', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '17-09-2013@18:29:00', NULL, NULL, 149),
('30', '420', 'REVISADO2', 3, 'postgres', '16-10-2013@23:48:53', 'postgres', '17-09-2013@18:29:26', NULL, NULL, 150),
('40', '420', 'APROBADO', 4, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 151),
('50', '420', 'RECHAZADO', 5, 'postgres', '16-10-2013@23:48:53', 'postgres', '17-09-2013@18:29:53', NULL, NULL, 152),
('60', '420', 'ANULADO', 6, 'postgres', '16-10-2013@23:48:53', 'postgres', '17-09-2013@18:30:05', NULL, NULL, 153),
('80', '100', 'ENTREGADO', 7, 'postgres', '16-10-2013@23:48:53', NULL, NULL, NULL, NULL, 154),
('20', '230', 'ENTREGADO', 2, 'postgres', '16-10-2013@23:48:53', 'postgres', '11-10-2013@23:07:08', NULL, NULL, 155),
('98', '100', 'PREVIO ANT', NULL, 'tomasito', '19-10-2013@10:53:45', 'tomasito', '01-11-2013@00:50:56', NULL, NULL, 156),
('99', '500', 'PREVIO', 2, 'tomasito', '16-11-2013@08:10:03', '', '', NULL, NULL, 189),
('99', '260', 'PREVIO', NULL, 'tomasito', '17-11-2013@23:14:31', '', '', NULL, NULL, 190),
('10', '260', 'CREADO', NULL, 'tomasito', '17-11-2013@23:14:56', '', '', NULL, NULL, 191),
('20', '260', 'ENTREGADO', NULL, 'tomasito', '17-11-2013@23:15:42', '', '', NULL, NULL, 192),
('40', '260', 'ANULADO', NULL, 'tomasito', '17-11-2013@23:15:59', '', '', NULL, NULL, 193),
('50', '260', 'COMPENSADO', NULL, 'tomasito', '17-11-2013@23:19:00', '', '', NULL, NULL, 194),
('99', '350', 'PREVIO', 1, 'tomasito', '01-03-2014@00:59:14', '', '', NULL, NULL, 195),
('10', '350', 'CREADO', 2, 'tomasito', '01-03-2014@00:59:38', '', '', NULL, NULL, 196),
('20', '350', 'ANULADO', NULL, 'tomasito', '01-03-2014@00:59:59', '', '', NULL, NULL, 197),
('30', '350', 'APROBADO', NULL, 'tomasito', '01-03-2014@01:00:51', 'tomasito', '05-03-2014@00:52:51', NULL, NULL, 198),
('40', '350', 'ATENDIDO', NULL, 'tomasito', '01-03-2014@01:01:56', '', '', NULL, NULL, 199),
('99', '340', 'PREVIO', NULL, 'tomasito', '01-03-2014@01:20:01', '', '', NULL, NULL, 200),
('99', '101', 'PREVIO', NULL, 'tomasito', '08-03-2014@12:16:27', '', '', NULL, NULL, 201),
('10', '101', 'CREADO', NULL, 'tomasito', '08-03-2014@12:16:46', '', '', NULL, NULL, 202),
('20', '101', 'EFECTUADO', NULL, 'tomasito', '08-03-2014@12:17:14', '', '', NULL, NULL, 203),
('30', '101', 'ANULADO', NULL, 'tomasito', '08-03-2014@12:17:33', '', '', NULL, NULL, 204),
('99', '800', 'PREVIO', NULL, 'tomasito', '08-03-2014@12:18:13', '', '', NULL, NULL, 205),
('50', '220', 'ATENDIDO PARCIAL', NULL, 'tomasito', '08-03-2014@18:25:19', '', '', NULL, NULL, 206),
('60', '220', 'ATENCION COMPLETA', NULL, 'tomasito', '08-03-2014@18:25:48', '', '', NULL, NULL, 207),
('99', '220', 'PREVIO', NULL, 'tomasito', '30-03-2014@17:38:36', '', '', NULL, NULL, 208),
('50', '350', 'ATENDIDO PARCIAL', NULL, 'tomasito', '12-04-2014@14:45:00', 'tomasito', '12-04-2014@14:45:19', NULL, NULL, 209),
('10', '450', 'CREADO', NULL, 'tomasito', '12-04-2014@23:19:24', '', '', NULL, NULL, 210),
('20', '450', 'ATENDIDO', NULL, 'tomasito', '12-04-2014@23:19:49', 'tomasito', '07-08-2014@01:15:53', NULL, NULL, 211),
('60', '350', 'RESERVADO', NULL, 'tomasito', '13-04-2014@00:39:09', 'tomasito', '13-04-2014@00:40:05', NULL, NULL, 212),
('99', '460', 'PREVIO', NULL, 'tomasito', '29-06-2014@15:59:00', '', '', NULL, NULL, 213),
('10', '460', 'CREADO', NULL, 'tomasito', '29-06-2014@15:59:23', '', '', NULL, NULL, 214),
('10', '600', 'CREADO', NULL, 'tomasito', '07-08-2014@01:15:16', '', '', NULL, NULL, 215),
('20', '600', 'TOMADO', NULL, 'tomasito', '07-08-2014@01:15:38', '', '', NULL, NULL, 216),
('70', '350', 'EN COMPRA', NULL, 'tomasito', '11-09-2014@23:53:09', '', '', NULL, NULL, 218),
('10', '800', 'CREADO', 1, 'tomasito', '04-10-2014@21:37:37', '', '', NULL, NULL, 219),
('20', '800', 'EN PROCESO COMPRA', NULL, 'tomasito', '04-10-2014@21:37:58', 'tomasito', '07-10-2014@00:09:19', NULL, NULL, 220),
('30', '800', 'ANULADO', NULL, 'tomasito', '04-10-2014@21:38:32', '', '', NULL, NULL, 221),
('30', '450', 'ANULADO', NULL, 'tomasito', '07-10-2014@00:16:46', '', '', NULL, NULL, 222),
('10', '900', 'CREADO', NULL, 'tomasito', '25-10-2014@03:16:34', '', '', NULL, NULL, 223),
('80', '350', 'SOLICITADO', NULL, 'tomasito', '06-11-2014@00:00:56', '', '', NULL, NULL, 224),
('20', '470', 'FACTURADO', NULL, '', '', '', '', NULL, NULL, 225),
('40', '800', 'INGRESADO ALM', NULL, '', '', '', '', NULL, NULL, 226),
('98', '460', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 227),
('40', '450', 'ATENDIDO PARCIAL', NULL, '', '', '', '', NULL, NULL, 228),
('30', '470', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 229),
('50', '800', 'COMPRADO TOTAL', NULL, '', '', '', '', NULL, NULL, 230),
('60', '800', 'COMPRADO PARCIAL', NULL, '', '', '', '', NULL, NULL, 231),
('90', '350', 'COMPRADO COMPLETO', NULL, '', '', '', '', NULL, NULL, 232),
('99', '430', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 234),
('10', '430', 'CREADO', NULL, '', '', '', '', NULL, NULL, 235),
('20', '430', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 236),
('30', '430', 'CON O COMPRA', NULL, '', '', '', '', NULL, NULL, 237),
('10', '280', 'CREADO', NULL, '', '', '', '', NULL, NULL, 238),
('20', '280', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 239),
('10', '370', 'CREADO', NULL, '', '', '', '', NULL, NULL, 240),
('20', '370', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 241),
('10', '360', 'CREADO', 1, '', '', '', '', NULL, NULL, 242),
('99', '360', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 243),
('10', '390', 'EN OPERACION', NULL, '', '', '', '', NULL, NULL, 244),
('20', '390', 'FUERA DE OPERACION', NULL, '', '', '', '', NULL, NULL, 245),
('99', '200', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 246),
('10', '200', 'CREADO', NULL, '', '', '', '', NULL, NULL, 247),
('20', '200', 'CERRADO', NULL, '', '', '', '', NULL, NULL, 248),
('30', '200', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 249),
('70', '450', 'CERRADO', NULL, '', '', '', '', NULL, NULL, 250),
('70', '800', 'CERRADO', NULL, '', '', '', '', NULL, NULL, 251),
('40', '200', 'CONFIRMADO', NULL, '', '', '', '', NULL, NULL, 252),
('30', '370', 'CERRADO', NULL, '', '', '', '', NULL, NULL, 253),
('70', '130', 'CERRADO', NULL, '', '', '', '', NULL, NULL, 254),
('10', '280', 'CREADO', NULL, '', '', '', '', NULL, NULL, 255),
('99', '280', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 256),
('30', '280', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 257),
('99', '890', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 258),
('10', '890', 'CREADO', NULL, '', '', '', '', NULL, NULL, 259),
('20', '890', 'APROBADO', NULL, '', '', '', '', NULL, NULL, 260),
('30', '890', 'CERRADO TECNICAMENTE', NULL, '', '', '', '', NULL, NULL, 261),
('40', '890', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 262),
('99', '891', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 263),
('10', '891', 'CREADO', NULL, '', '', '', '', NULL, NULL, 264),
('20', '891', 'PROCESO', NULL, '', '', '', '', NULL, NULL, 265),
('99', '421', 'PREVIO', NULL, '', '', '', '', NULL, NULL, 266),
('10', '421', 'VIGENTE', NULL, '', '', '', '', NULL, NULL, 267),
('30', '421', 'ANULADO', NULL, '', '', '', '', NULL, NULL, 268),
('40', '421', 'PUBLICADO', NULL, '', '', '', '', NULL, NULL, 269);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_estado`
--
ALTER TABLE `public_estado`
  ADD PRIMARY KEY (`id`), ADD KEY `i_pc_estado1` (`codocu`), ADD KEY `i_codestado` (`codestado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_estado`
--
ALTER TABLE `public_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=270;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
