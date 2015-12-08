-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:52:10
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
-- Estructura de tabla para la tabla `public_tempdfactur`
--

CREATE TABLE IF NOT EXISTS `public_tempdfactur` (
  `id` bigint(20) NOT NULL,
  `hidfactu` bigint(20) NOT NULL,
  `item` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codart` varchar(10) CHARACTER SET utf8 NOT NULL,
  `cant` float NOT NULL,
  `punit` float NOT NULL,
  `um` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pventa` float NOT NULL,
  `igv` float NOT NULL,
  `igv_monto` float NOT NULL,
  `igv_tipoafecta` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `igv_codtributo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `igv_codinternac` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `isc` float NOT NULL,
  `isc_montoitem` float NOT NULL,
  `isc_montolinea` float NOT NULL,
  `isc_codsistema` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `isc_codtributo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `isc_codinternac` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `valorventa` float NOT NULL,
  `valor_op_no_onerosas` float NOT NULL,
  `descuento` float NOT NULL,
  `idtemp` int(11) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `texto` text COLLATE utf8_unicode_ci NOT NULL,
  `idref` bigint(20) NOT NULL,
  `idusertemp` int(11) NOT NULL,
  `codocu` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codestado` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tempdfactur`
--
ALTER TABLE `public_tempdfactur`
  ADD PRIMARY KEY (`id`), ADD KEY `hidfactu` (`hidfactu`), ADD KEY `hidGfactu` (`hidfactu`), ADD KEY `codart` (`codart`), ADD KEY `codart_2` (`codart`), ADD KEY `codart_3` (`codart`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tempdfactur`
--
ALTER TABLE `public_tempdfactur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_tempdfactur`
--
ALTER TABLE `public_tempdfactur`
ADD CONSTRAINT `public_tempdfactur_ibfk_1` FOREIGN KEY (`hidfactu`) REFERENCES `public_factur` (`id`),
ADD CONSTRAINT `public_tempdfactur_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_tempdfactur_ibfk_3` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
