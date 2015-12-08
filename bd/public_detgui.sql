-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:12:02
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
-- Estructura de tabla para la tabla `public_detgui`
--

CREATE TABLE IF NOT EXISTS `public_detgui` (
  `c_itguia` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `n_cangui` double DEFAULT NULL,
  `c_codgui` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `c_edgui` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `c_descri` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `m_obs` longtext CHARACTER SET utf8,
  `c_um` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `c_codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `ndeenvio` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `l_libre` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `n_hconformidad` bigint(20) DEFAULT NULL,
  `c_estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `n_libre` int(11) DEFAULT NULL,
  `n_idconformidad` bigint(20) DEFAULT NULL,
  `c_af` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `c_codactivo` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `c_img` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `c_codsap` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `docref` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `docrefext` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `hidref` bigint(20) DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codlugar` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `n_hguia` bigint(11) NOT NULL,
  `hidespacho` bigint(20) NOT NULL,
  `modo` varchar(1) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_detgui`
--
ALTER TABLE `public_detgui`
  ADD PRIMARY KEY (`id`), ADD KEY `I_CODSAP` (`c_codsap`), ADD KEY `i_pc_estado` (`c_estado`), ADD KEY `fki_detgui_paraqueva` (`c_edgui`), ADD KEY `I_CDOAF` (`c_codactivo`), ADD KEY `i_cedgui` (`c_edgui`), ADD KEY `i_citguia` (`c_itguia`), ADD KEY `n_hguia` (`n_hguia`), ADD KEY `hidespacho` (`hidespacho`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_detgui`
--
ALTER TABLE `public_detgui`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_detgui`
--
ALTER TABLE `public_detgui`
ADD CONSTRAINT `public_detgui_ibfk_1` FOREIGN KEY (`n_hguia`) REFERENCES `public_guia` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
