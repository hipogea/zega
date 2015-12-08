-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:37:21
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
-- Estructura de tabla para la tabla `public_ot`
--

CREATE TABLE IF NOT EXISTS `public_ot` (
  `id` bigint(20) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `fechacre` date NOT NULL,
  `fechafinprog` date NOT NULL,
  `codpro` varchar(8) NOT NULL,
  `idobjeto` int(11) NOT NULL,
  `codresponsable` varchar(6) NOT NULL,
  `textocorto` varchar(40) NOT NULL,
  `textolargo` text NOT NULL,
  `grupoplan` varchar(3) NOT NULL,
  `codcen` varchar(4) NOT NULL,
  `iduser` int(11) NOT NULL,
  `codocu` varchar(3) NOT NULL,
  `codestado` varchar(2) NOT NULL,
  `clase` varchar(1) NOT NULL,
  `hidoferta` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ot`
--
ALTER TABLE `public_ot`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `numero` (`numero`), ADD KEY `codpro` (`codpro`), ADD KEY `idobjeto` (`idobjeto`), ADD KEY `codresponsable` (`codresponsable`), ADD KEY `codcen` (`codcen`), ADD KEY `codocu` (`codocu`), ADD KEY `codestado` (`codestado`), ADD KEY `hidoferta` (`hidoferta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ot`
--
ALTER TABLE `public_ot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_ot`
--
ALTER TABLE `public_ot`
ADD CONSTRAINT `public_ot_ibfk_4` FOREIGN KEY (`hidoferta`) REFERENCES `public_dpeticion` (`id`),
ADD CONSTRAINT `public_ot_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_ot_ibfk_2` FOREIGN KEY (`idobjeto`) REFERENCES `public_objetos_cliente` (`id`),
ADD CONSTRAINT `public_ot_ibfk_3` FOREIGN KEY (`codresponsable`) REFERENCES `public_trabajadores` (`codigotra`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
