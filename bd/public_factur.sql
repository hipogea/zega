-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:23:06
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
-- Estructura de tabla para la tabla `public_factur`
--

CREATE TABLE IF NOT EXISTS `public_factur` (
  `numero` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codproadqui` varchar(6) CHARACTER SET utf8 NOT NULL,
  `fechaemision` date NOT NULL,
  `versionubl` varchar(10) CHARACTER SET utf8 NOT NULL,
  `versionestruc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `fechaconsumo` date NOT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 NOT NULL,
  `texto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `textolargo` longtext CHARACTER SET utf8,
  `tipodocumento` varchar(2) CHARACTER SET utf8 NOT NULL,
  `moneda` char(3) CHARACTER SET utf8 NOT NULL,
  `orcli` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `descuento` smallint(6) DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codtipofac` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codsociedad` varchar(1) CHARACTER SET utf8 NOT NULL,
  `codgrupoventas` varchar(3) CHARACTER SET utf8 NOT NULL,
  `ordenventa` varchar(13) CHARACTER SET utf8 NOT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `fechapresentacion` date DEFAULT NULL,
  `fechanominal` date DEFAULT NULL,
  `fechacancelacion` date DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `tenorsup` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tenorinf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `numerocheque` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `firmadigital` text CHARACTER SET utf8 NOT NULL,
  `tipodocadqui` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codleyenda` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codal` varchar(3) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_factur`
--
ALTER TABLE `public_factur`
  ADD PRIMARY KEY (`id`), ADD KEY `codproadqui` (`codproadqui`), ADD KEY `codpro` (`codpro`), ADD KEY `codproadqui_2` (`codproadqui`), ADD KEY `codal` (`codal`), ADD KEY `codobjeto` (`codobjeto`), ADD KEY `coddocu` (`coddocu`), ADD KEY `codtipofac` (`codtipofac`), ADD KEY `codgrupoventas` (`codgrupoventas`), ADD KEY `codcentro` (`codcentro`), ADD KEY `codal_2` (`codal`), ADD KEY `moneda` (`moneda`), ADD KEY `moneda_2` (`moneda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_factur`
--
ALTER TABLE `public_factur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_factur`
--
ALTER TABLE `public_factur`
ADD CONSTRAINT `public_factur_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_factur_ibfk_10` FOREIGN KEY (`codal`) REFERENCES `public_almacenes` (`codalm`),
ADD CONSTRAINT `public_factur_ibfk_11` FOREIGN KEY (`moneda`) REFERENCES `public_monedas` (`codmoneda`),
ADD CONSTRAINT `public_factur_ibfk_2` FOREIGN KEY (`codproadqui`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_factur_ibfk_3` FOREIGN KEY (`codproadqui`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_factur_ibfk_4` FOREIGN KEY (`codcentro`) REFERENCES `public_centros` (`codcen`),
ADD CONSTRAINT `public_factur_ibfk_5` FOREIGN KEY (`coddocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_factur_ibfk_6` FOREIGN KEY (`codtipofac`) REFERENCES `public_tipofacturacion` (`codtipofac`),
ADD CONSTRAINT `public_factur_ibfk_7` FOREIGN KEY (`codtipofac`) REFERENCES `public_tipofacturacion` (`codtipofac`),
ADD CONSTRAINT `public_factur_ibfk_8` FOREIGN KEY (`codgrupoventas`) REFERENCES `public_grupoventas` (`codgrupo`),
ADD CONSTRAINT `public_factur_ibfk_9` FOREIGN KEY (`codcentro`) REFERENCES `public_centros` (`codcen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
