-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:53:31
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
-- Estructura de tabla para la tabla `public_cajachica`
--

CREATE TABLE IF NOT EXISTS `public_cajachica` (
  `id` int(11) NOT NULL,
  `hidperiodo` int(11) NOT NULL,
  `fechaini` date NOT NULL,
  `fechafin` date NOT NULL,
  `codtra` varchar(4) NOT NULL,
  `codcen` varchar(4) NOT NULL,
  `iduser` int(11) NOT NULL,
  `descripcion` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `liquidada` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `codocu` char(3) NOT NULL,
  `codestado` char(2) NOT NULL,
  `codarea` varchar(3) NOT NULL,
  `hidfondo` int(11) NOT NULL,
  `valornominal` decimal(10,3) NOT NULL,
  `serie` char(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_cajachica`
--
ALTER TABLE `public_cajachica`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_peridont` (`hidperiodo`), ADD KEY `codtra` (`codtra`), ADD KEY `codocu` (`codocu`), ADD KEY `codestado` (`codestado`), ADD KEY `codarea` (`codarea`), ADD KEY `hidfondo` (`hidfondo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_cajachica`
--
ALTER TABLE `public_cajachica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_cajachica`
--
ALTER TABLE `public_cajachica`
ADD CONSTRAINT `public_cajachica_ibfk_1` FOREIGN KEY (`hidperiodo`) REFERENCES `public_periodos` (`id`),
ADD CONSTRAINT `public_cajachica_ibfk_2` FOREIGN KEY (`codtra`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_cajachica_ibfk_3` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_cajachica_ibfk_4` FOREIGN KEY (`hidfondo`) REFERENCES `public_fondofijo` (`id`),
ADD CONSTRAINT `public_cajachica_ibfk_5` FOREIGN KEY (`hidfondo`) REFERENCES `public_fondofijo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
