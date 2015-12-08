-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:22:43
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
-- Estructura de tabla para la tabla `public_eventos`
--

CREATE TABLE IF NOT EXISTS `public_eventos` (
  `id` int(11) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `estadofinal` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `estadoinicial` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `titulomsg1` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `titulomsg2` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_eventos`
--

INSERT INTO `public_eventos` (`id`, `codocu`, `estadofinal`, `estadoinicial`, `descripcion`, `creadopor`, `creadoel`, `titulomsg1`, `titulomsg2`) VALUES
(1, '100', '10', '99', 'CREAR GUIA', '', '', NULL, NULL),
(2, '100', '30', '10', 'AUTORIZAR GUIA', '', '', NULL, NULL),
(35, '100', '50', '10', 'ANULAR GUIA', '', '', NULL, NULL),
(36, '100', '20', '30', 'CONFIRMAR TRASLADO', '', '', NULL, NULL),
(37, '100', '80', '20', 'CONFIRMAR ENTREGA', '', '', NULL, NULL),
(38, '001', '10', '30', 'REVERTIR AUTORIZACION', '', '', NULL, NULL),
(39, '001', '30', '20', 'REVERTIR CONFIRMACION DESPACHO', '', '', NULL, NULL),
(40, '005', '10', '99', 'CREAR INGRESO', '', '', NULL, NULL),
(41, '005', '20', '10', 'CONFIRMAR INGRESO', '', '', NULL, NULL),
(42, '005', '40', '10', 'ANULAR INGRESO', '', '', NULL, NULL),
(43, '005', '10', '20', 'REVERTIR INGRESO', '', '', NULL, NULL),
(44, '026', '40', '20', 'ANULAR CARGO', '', '', NULL, NULL),
(45, '026', '50', '20', 'COMPENSAR CARGO', '', '', NULL, NULL),
(46, '011', '10', '99', 'CREAR COTIZACION', '', '', NULL, NULL),
(47, '011', '30', '10', 'APROBAR COTIZACION', '', '', NULL, NULL),
(48, '011', '70', '10', 'ANULAR', '', '', NULL, NULL),
(49, '011', '10', '30', 'REVERTIR APROBACION', '', '', NULL, NULL),
(50, '021', '30', '10', 'LIBERAR COMPRA', '', '', NULL, NULL),
(51, '021', '50', '10', 'ANULAR COMPRA', '', '', NULL, NULL),
(52, '021', '10', '30', 'REVERTIR FIRMA', '', '', NULL, NULL),
(53, '001', '20', '80', 'ANULAR ENTREGA', '', '', NULL, NULL),
(54, '035', '20', '10', 'ANULAR SOLPE', '', '', NULL, NULL),
(55, '035', '10', '20', 'REVERTIR ANULACION', '', '', NULL, NULL),
(56, '035', '30', '10', 'TOMAR SOLPE', '', '', NULL, NULL),
(57, '035', '40', '30', 'ATENDER SOLPE', '', '', NULL, NULL),
(58, '035', '30', '40', 'REVERTIR ATENCION', '', '', NULL, NULL),
(59, '035', '10', '30', 'REVERTIR LA TOMA', '', '', NULL, NULL),
(60, '034', '20', '10', 'APROBAR', '', '', NULL, NULL),
(61, '034', '30', '10', 'ANULAR', '', '', NULL, NULL),
(62, '010', '30', '10', 'ANULAR', '', '', NULL, NULL),
(63, '010', '30', '20', 'REVERTIR ATENCION', '', '', NULL, NULL),
(64, '100', '10', '30', 'REVERTIR AUTORIZACION', '', '', NULL, NULL),
(65, '210', '30', '10', 'APROBAR ORDEN DE COMPRA', '', '', NULL, NULL),
(66, '210', '50', '10', 'ANULAR ORDEN DE COMPRA', '', '', NULL, NULL),
(67, '210', '10', '30', 'REVERTIR AUTORIZACION', '', '', NULL, NULL),
(68, '100', '30', '20', 'REVERTIR TRANSPORTE', '', '', NULL, NULL),
(69, '100', '20', '80', 'REVERTIR ENTREGA', '', '', NULL, NULL),
(70, '101', '20', '10', 'CONFIRMAR VALE', '', '', NULL, NULL),
(71, '101', '30', '20', 'ANULAR VALE', '', '', NULL, NULL),
(72, '890', '20', '10', 'APROBACION', '', '', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_eventos`
--
ALTER TABLE `public_eventos`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_docioure` (`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_eventos`
--
ALTER TABLE `public_eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
