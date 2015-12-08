-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:07:27
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
-- Estructura de tabla para la tabla `public_coti`
--

CREATE TABLE IF NOT EXISTS `public_coti` (
  `numcot` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `fecdoc` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `codcon` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 NOT NULL,
  `texto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `textolargo` longtext CHARACTER SET utf8,
  `tipologia` varchar(1) CHARACTER SET utf8 NOT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 NOT NULL,
  `orcli` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `descuento` smallint(6) NOT NULL,
  `usuario` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `codtipofac` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codsociedad` varchar(1) CHARACTER SET utf8 NOT NULL,
  `codgrupoventas` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codtipocotizacion` varchar(1) CHARACTER SET utf8 NOT NULL,
  `validez` int(11) NOT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `nigv` double NOT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `fechapresentacion` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechanominal` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenorsup` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tenorinf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `montototal` double NOT NULL,
  `idguia` int(11) NOT NULL,
  `idcontacto` int(11) DEFAULT NULL,
  `idobjeto` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_coti`
--
ALTER TABLE `public_coti`
  ADD PRIMARY KEY (`idguia`), ADD KEY `fki_coti_mioneda2` (`moneda`), ADD KEY `FKI_CLCO` (`codpro`), ADD KEY `FKI_GPVEf2` (`codgrupoventas`), ADD KEY `FKI_SOCO2` (`codsociedad`), ADD KEY `fki_` (`codtipofac`), ADD KEY `FKI_EDCOTIf` (`codestado`,`coddocu`), ADD KEY `FKI_GPVE2` (`codgrupoventas`), ADD KEY `fki_coanmahs` (`idcontacto`), ADD KEY `fki_contactos_coti` (`codpro`,`codcon`), ADD KEY `FKI_CENTROS` (`codcentro`), ADD KEY `fki_coti_docuf` (`coddocu`), ADD KEY `fki_contactos_cotif2` (`codpro`,`codcon`), ADD KEY `FKI_CENTROSf2` (`codcentro`), ADD KEY `fki_coti_tenorsupf` (`coddocu`,`tenorsup`), ADD KEY `fki_coti_mioneda` (`moneda`), ADD KEY `FKI_CLCOf2` (`codpro`), ADD KEY `fki_coanmahs2` (`idcontacto`), ADD KEY `fki_coti_docu` (`coddocu`), ADD KEY `fki_coti_mionedaf` (`moneda`), ADD KEY `fki_f2` (`codtipofac`), ADD KEY `fki_2` (`codtipofac`), ADD KEY `FKI_CENTROS2` (`codcentro`), ADD KEY `FKI_SOCOf2` (`codsociedad`), ADD KEY `fki_coti_cod_objeto` (`codpro`,`codobjeto`), ADD KEY `fki_coti_tenorsup2` (`coddocu`,`tenorsup`), ADD KEY `FKI_EDCOTI2` (`codestado`,`coddocu`), ADD KEY `FKI_EDCOTIf2` (`codestado`,`coddocu`), ADD KEY `FKI_GPVE` (`codgrupoventas`), ADD KEY `FKI_SOCO` (`codsociedad`), ADD KEY `fki_coti_cod_objeto2` (`codpro`,`codobjeto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
