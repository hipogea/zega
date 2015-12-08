-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 21:00:31
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
-- Estructura de tabla para la tabla `public_ubl`
--

CREATE TABLE IF NOT EXISTS `public_ubl` (
  `id` int(11) NOT NULL,
  `codocu` char(3) CHARACTER SET utf8 NOT NULL,
  `nombrecampo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ubltag` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT 'tqirqa ubl, pra hacer los taqgs XML',
  `xmltag` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_ubl`
--

INSERT INTO `public_ubl` (`id`, `codocu`, `nombrecampo`, `ubltag`, `xmltag`) VALUES
(1, '190', 'fechaemision', '//Invoice/cbc:IssueDate', 'cbc:IssueDate'),
(2, '190', 'firmadigital', '/Invoice/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/ds:Signature /Invoice/cac:Signature', ''),
(3, '360', 'despro', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName', ''),
(4, '360', 'nombrecomercial', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name', ''),
(5, '150', 'ubigeo', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:ID', ''),
(6, '150', 'c_nomlug', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName', ''),
(7, '150', 'c_direc', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName', ''),
(8, '150', 'c_prov', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName', ''),
(9, '150', 'c_departamen', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity', ''),
(10, '150', 'c_distrito', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:District', ''),
(11, '150', 'codpostal', '/Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode', ''),
(12, '360', 'rucpro', '/Invoice/cac:AccountingSupplierParty/cbc:CustomerAssignedAccountID', ''),
(13, '190', 'tipdoc', '/Invoice/cbc:InvoiceTypeCode', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ubl`
--
ALTER TABLE `public_ubl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ubl`
--
ALTER TABLE `public_ubl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
