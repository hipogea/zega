-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:50:31
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
-- Estructura de tabla para la tabla `public_almacenmovimientos`
--

CREATE TABLE IF NOT EXISTS `public_almacenmovimientos` (
  `codmov` varchar(2) CHARACTER SET utf8 NOT NULL,
  `movimiento` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `signo` int(11) DEFAULT NULL,
  `codigo_objeto` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `ingreso` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `anticodmov` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `escontable` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permcodcondicion` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permiteparciales` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campoafectadoinv` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permitereversiones` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualizaprecio` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campodestino` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idevento` int(11) NOT NULL,
  `esconsumo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `itemsdeterministicos` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `borraritems` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `editarcantidad` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `verifconversionmoneda` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_almacenmovimientos`
--

INSERT INTO `public_almacenmovimientos` (`codmov`, `movimiento`, `signo`, `codigo_objeto`, `ingreso`, `codocu`, `anticodmov`, `escontable`, `permcodcondicion`, `permiteparciales`, `campoafectadoinv`, `permitereversiones`, `actualizaprecio`, `campodestino`, `activo`, `idevento`, `esconsumo`, `itemsdeterministicos`, `borraritems`, `editarcantidad`, `verifconversionmoneda`) VALUES
('10', 'SALIDA PARA RESERVA', -1, '00', '0', '340', '20', '1', '0', '1', 'cantres', '1', '0', '', '1', 70, '1', '', '1', '1', ''),
('11', 'SALIDA RQ COMPRA', -1, '', '0', '800', '12', '1', '1', '1', 'cantlibre', '1', '0', '', '1', 70, '1', '0', '0', '0', '0'),
('12', 'ANULAR RQ COMPRA', 1, '', '1', '800', '11', '1', '1', '0', 'cantlibre', '0', '0', '', '1', 71, '0', '0', '0', '0', '0'),
('13', 'INGRESO CONSIGNACION(COMPRA)', 1, '', '0', '210', '', '0', '0', '1', 'cantconsig', '1', '1', '', '1', 70, '0', '0', '0', '0', '1'),
('20', 'ANULAR SALIDA PARA RESERVA', 1, '00', '1', '101', '10', '1', '1', '1', 'cantres', '0', '0', '', '1', 71, '0', '0', '0', '0', '0'),
('30', 'INGRESO POR COMPRA', 1, '00', '1', '210', '40', '1', '1', '1', 'cantlibre', '1', '1', '', '1', 70, '0', '0', '1', '1', '1'),
('31', 'DEVOLUCION CONSIGNACION(COMPRA)', -1, '', '0', '101', '', '0', '1', '1', 'cantconsig', '0', '0', '', '1', 70, '0', '0', '0', '0', '1'),
('40', 'ANULAR INGRESO COMPRA', -1, '00', '0', '101', '30', '1', '1', '1', 'cantlibre', '0', '1', '', '1', 70, '', '', '', '', ''),
('41', 'DEVOLUCION PROVEEDOR', -1, '', '0', '101', '', '1', '1', '0', 'cantlibre', '0', '0', '', '1', 70, '0', '0', '0', '0', '1'),
('45', 'SALIDA TRASLADO', -1, '', '0', '101', '54', '1', '1', '1', 'canttran', '1', '0', '', '1', 70, '0', '0', '0', '0', '1'),
('50', 'SALIDA PARA CECO', -1, '00', '0', '160', '06', '1', '0', '1', 'cantlibre', '1', '0', '', '1', 70, '1', '1', '1', '1', ''),
('54', 'ANULA INGRESO TRASLADO', -1, '', '0', '101', '77', '1', '0', '0', 'cantlibre', '0', '0', '', '1', 71, '0', '', '0', '0', ''),
('60', 'ANULAR SALIDA PARA CECO', 1, '00', '1', '101', '05', '1', '1', '1', 'cantlibre', '0', '0', '', '1', 70, '', '', '', '', ''),
('64', 'ANULAR INICIO TRASALADO', 1, '', '1', '101', '77', '1', '0', '1', 'canttran', '0', '0', 'cantres', '1', 70, '', '', '', '', ''),
('68', 'INGRESO DE ACTIVIDAD', 1, '', '1', '210', '86', '1', '0', '1', '', '1', '0', '', '1', 70, '0', '0', '1', '1', '1'),
('70', 'REINGRESO DE MATERIAL', 1, '', '1', '', '', '1', '1', '1', 'cantlibre', '0', '0', '', '1', 70, '0', '', '1', '1', ''),
('77', 'INICIAR TRASLADO', 0, '00', '0', '160', '78', '1', '0', '1', 'cantlibre', '1', '0', 'canttran', '1', 70, '0', '1', '1', '1', ''),
('78', 'INGRESAR TRASLADO', 1, '', '0', '101', '', '1', '0', '1', 'cantlibre', '1', '1', '', '1', 70, '0', '0', '1', '1', '1'),
('79', 'SALIDA PARA VENTA', -1, '', '0', '', '', '1', '1', '1', 'cantres', '1', '0', '', '1', 70, '0', '0', '0', '0', '1'),
('81', 'ANULAR SALIDA PARA VENTA', 1, '', '1', '', '79', '1', '1', '1', 'cantres', '0', '0', '', '1', 70, '', '', '', '', ''),
('86', 'ANULAR INGRESO ACTIVIDAD', -1, '', '0', '180', '68', '1', '0', '0', 'cantlibre', '1', '0', '', '1', 70, '0', '', '0', '0', ''),
('89', 'ANULAR CARGA INICAL', -1, '', '0', '', '98', '1', '0', '0', 'cantlibre', '0', '1', '', '1', 70, '', '', '', '', ''),
('97', 'DEVOLUCION CLIENTE', 1, '', '0', '', '', '1', '1', '1', 'cantlibre', '0', '1', '', '1', 70, '0', '0', '0', '0', '1'),
('98', 'CARGA INICIAL', 1, '00', '1', '400', '89', '1', '0', '1', 'cantlibre', '1', '1', '', '1', 70, '0', '1', '1', '1', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_almacenmovimientos`
--
ALTER TABLE `public_almacenmovimientos`
  ADD PRIMARY KEY (`codmov`), ADD KEY `fki_docui` (`codocu`), ADD KEY `idevento` (`idevento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_almacenmovimientos`
--
ALTER TABLE `public_almacenmovimientos`
ADD CONSTRAINT `public_almacenmovimientos_ibfk_1` FOREIGN KEY (`idevento`) REFERENCES `public_eventos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
