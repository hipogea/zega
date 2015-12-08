-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:25:13
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
-- Estructura de tabla para la tabla `public_guia`
--

CREATE TABLE IF NOT EXISTS `public_guia` (
  `c_numgui` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `c_coclig` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `d_fecgui` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_estgui` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `c_rsguia` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `c_codtra` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `c_trans` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `c_motivo` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `c_placa` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `c_licon` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `d_fectra` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_desgui` longtext CHARACTER SET utf8,
  `n_direc` int(11) DEFAULT NULL,
  `c_texto` longtext CHARACTER SET utf8,
  `c_dirsoc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `c_serie` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `n_direcformaldes` int(11) DEFAULT NULL,
  `n_directran` int(11) DEFAULT NULL,
  `c_creado` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `n_guia` bigint(20) NOT NULL,
  `c_estado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `n_dirsoc` int(11) DEFAULT NULL,
  `c_modificado` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `n_agencia` int(11) DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `codcentro` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `d_fecentrega` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_salida` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `cod_cen` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `codocuaux` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `iddocuaux` bigint(20) DEFAULT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_guia`
--
ALTER TABLE `public_guia`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_guia_socio` (`c_rsguia`), ADD KEY `FKI_HHJ` (`c_coclig`), ADD KEY `i_codobjeto` (`codobjeto`), ADD KEY `i_coestgui` (`c_estgui`), ADD KEY `FKI_DIRECCIONES` (`n_direc`), ADD KEY `i_n_directran` (`n_directran`), ADD KEY `fki_guia_objetos` (`c_coclig`,`codobjeto`), ADD KEY `i_c_serie` (`c_serie`), ADD KEY `i_crsguia` (`c_rsguia`), ADD KEY `i_n_hguias` (`n_guia`), ADD KEY `FKI_GUIA_DIREC_DEST` (`n_direcformaldes`), ADD KEY `FKI_GUIA_ESTADO` (`c_estgui`,`codocu`), ADD KEY `fki_trans` (`c_codtra`), ADD KEY `i_c_seriea` (`c_numgui`), ADD KEY `i_n_direcformaldes` (`n_direcformaldes`), ADD KEY `i_n_direc` (`n_direc`), ADD KEY `FKI_GUIA_DIRECC_TRANSP` (`n_directran`), ADD KEY `i_ndirsoc` (`n_dirsoc`), ADD KEY `i_c_codtra` (`c_codtra`), ADD KEY `i_c_coclig` (`c_coclig`), ADD KEY `FKI_CLIPRO_GUIA_TRANSPORT` (`c_codtra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_guia`
--
ALTER TABLE `public_guia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
