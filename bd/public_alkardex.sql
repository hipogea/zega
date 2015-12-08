-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:44:26
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
-- Estructura de tabla para la tabla `public_alkardex`
--

CREATE TABLE IF NOT EXISTS `public_alkardex` (
  `codart` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `codmov` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `cant` double DEFAULT NULL,
  `alemi` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `aldes` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coddoc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `numdoc` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `usuario` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `um` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `comentario` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codocuref` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `numdocref` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prefijo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `fechadoc` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correlativo` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `numkardex` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `solicitante` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `hidvale` bigint(20) DEFAULT NULL,
  `idref` bigint(20) DEFAULT NULL,
  `lote` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `valido` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `checki` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `destino` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `preciounit` double DEFAULT NULL,
  `correlativ` bigint(20) DEFAULT NULL,
  `codcendes` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idusertemp` int(11) DEFAULT NULL,
  `idstatus` int(11) DEFAULT NULL,
  `idtemp` bigint(20) DEFAULT NULL,
  `textolargo` text COLLATE utf8_unicode_ci NOT NULL,
  `colector` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `montomovido` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alkardex`
--
ALTER TABLE `public_alkardex`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_movis` (`codmov`), ADD KEY `fki_oetoetee` (`hidvale`), ADD KEY `fki_codigomat` (`codart`), ADD KEY `fki_cemitr` (`codcentro`), ADD KEY `fki_docirer` (`codocuref`), ADD KEY `fki_deod` (`coddoc`), ADD KEY `bk_codcendes` (`codcendes`), ADD KEY `um` (`um`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alkardex`
--
ALTER TABLE `public_alkardex`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2253;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alkardex`
--
ALTER TABLE `public_alkardex`
ADD CONSTRAINT `public_alkardex_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_alkardex_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
