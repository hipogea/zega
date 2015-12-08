-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:44:23
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
-- Estructura de tabla para la tabla `public_provincias`
--

CREATE TABLE IF NOT EXISTS `public_provincias` (
  `id` int(11) NOT NULL,
  `codprov` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `coddepa` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=395 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_provincias`
--

INSERT INTO `public_provincias` (`id`, `codprov`, `provincia`, `coddepa`) VALUES
(198, '01', 'CHACHAPOYAS', '01'),
(199, '02', 'BAGUA', '01'),
(200, '03', 'BONGARA', '01'),
(201, '04', 'CONDORCANQUI', '01'),
(202, '05', 'LUYA', '01'),
(203, '06', 'RODRIGUEZ DE MENDOZA', '01'),
(204, '07', 'UTCUBAMBA', '01'),
(205, '01', 'HUARAZ', '02'),
(206, '02', 'AIJA', '02'),
(207, '03', 'ANTONIO RAYMONDI', '02'),
(208, '04', 'ASUNCION', '02'),
(209, '05', 'BOLOGNESI', '02'),
(210, '06', 'CARHUAZ', '02'),
(211, '07', 'CARLOS FERMIN FITZCARRALD', '02'),
(212, '08', 'CASMA', '02'),
(213, '09', 'CORONGO', '02'),
(214, '10', 'HUARI', '02'),
(215, '11', 'HUARMEY', '02'),
(216, '12', 'HUAYLAS', '02'),
(217, '13', 'MARISCAL LUZURIAGA', '02'),
(218, '14', 'OCROS', '02'),
(219, '15', 'PALLASCA', '02'),
(220, '16', 'POMABAMBA', '02'),
(221, '17', 'RECUAY', '02'),
(222, '18', 'SANTA', '02'),
(223, '19', 'SIHUAS', '02'),
(224, '20', 'YUNGAY', '02'),
(225, '01', 'ABANCAY', '03'),
(226, '02', 'ANDAHUAYLAS', '03'),
(227, '03', 'ANTABAMBA', '03'),
(228, '04', 'AYMARAES', '03'),
(229, '05', 'COTABAMBAS', '03'),
(230, '06', 'CHINCHEROS', '03'),
(231, '07', 'GRAU', '03'),
(232, '01', 'AREQUIPA', '04'),
(233, '02', 'CAMANA', '04'),
(234, '03', 'CARAVELI', '04'),
(235, '04', 'CASTILLA', '04'),
(236, '05', 'CAYLLOMA', '04'),
(237, '06', 'CONDESUYOS', '04'),
(238, '07', 'ISLAY', '04'),
(239, '08', 'LA UNION', '04'),
(240, '01', 'HUAMANGA', '05'),
(241, '02', 'CANGALLO', '05'),
(242, '03', 'HUANCA SANCOS', '05'),
(243, '04', 'HUANTA', '05'),
(244, '05', 'LA MAR', '05'),
(245, '06', 'LUCANAS', '05'),
(246, '07', 'PARINACOCHAS', '05'),
(247, '08', 'PAUCAR DEL SARA SARA', '05'),
(248, '09', 'SUCRE', '05'),
(249, '10', 'VICTOR FAJARDO', '05'),
(250, '10', 'VICTOR FAFARDO', '05'),
(251, '11', 'VILCAS HUAMAN', '05'),
(252, '01', 'CAJAMARCA', '06'),
(253, '02', 'CAJABAMBA', '06'),
(254, '03', 'CELENDIN', '06'),
(255, '04', 'CHOTA', '06'),
(256, '05', 'CONTUMAZA', '06'),
(257, '06', 'CUTERVO', '06'),
(258, '07', 'HUALGAYOC', '06'),
(259, '08', 'JAEN', '06'),
(260, '09', 'SAN IGNACIO', '06'),
(261, '10', 'SAN MARCOS', '06'),
(262, '11', 'SAN MIGUEL', '06'),
(263, '12', 'SAN PABLO', '06'),
(264, '13', 'SANTA CRUZ', '06'),
(265, '01', 'CALLAO', '07'),
(266, '01', 'CUSCO', '08'),
(267, '02', 'ACOMAYO', '08'),
(268, '03', 'ANTA', '08'),
(269, '04', 'CALCA', '08'),
(270, '05', 'CANAS', '08'),
(271, '06', 'CANCHIS', '08'),
(272, '07', 'CHUMBIVILCAS', '08'),
(273, '08', 'ESPINAR', '08'),
(274, '09', 'LA CONVENCION', '08'),
(275, '10', 'PARURO', '08'),
(276, '11', 'PAUCARTAMBO', '08'),
(277, '12', 'QUISPICANCHI', '08'),
(278, '13', 'URUBAMBA', '08'),
(279, '01', 'HUANCAVELICA', '09'),
(280, '02', 'ACOBAMBA', '09'),
(281, '03', 'ANGARAES', '09'),
(282, '04', 'CASTROVIRREYNA', '09'),
(283, '05', 'CHURCAMPA', '09'),
(284, '06', 'HUAYTARA', '09'),
(285, '07', 'TAYACAJA', '09'),
(286, '01', 'HUANUCO', '10'),
(287, '02', 'AMBO', '10'),
(288, '03', 'DOS DE MAYO', '10'),
(289, '04', 'HUACAYBAMBA', '10'),
(290, '05', 'HUAMALIES', '10'),
(291, '06', 'LEONCIO PRADO', '10'),
(292, '07', 'MARAÑON', '10'),
(293, '08', 'PACHITEA', '10'),
(294, '09', 'PUERTO INCA', '10'),
(295, '10', 'LAURICOCHA', '10'),
(296, '11', 'YAROWILCA', '10'),
(297, '01', 'ICA', '11'),
(298, '02', 'CHINCHA', '11'),
(299, '03', 'NAZCA', '11'),
(300, '04', 'PALPA', '11'),
(301, '05', 'PISCO', '11'),
(302, '01', 'HUANCAYO', '12'),
(303, '02', 'CONCEPCION', '12'),
(304, '03', 'CHANCHAMAYO', '12'),
(305, '04', 'JAUJA', '12'),
(306, '05', 'JUNIN', '12'),
(307, '06', 'SATIPO', '12'),
(308, '07', 'TARMA', '12'),
(309, '08', 'YAULI', '12'),
(310, '09', 'CHUPACA', '12'),
(311, '01', 'TRUJILLO', '13'),
(312, '02', 'ASCOPE', '13'),
(313, '03', 'BOLIVAR', '13'),
(314, '04', 'CHEPEN', '13'),
(315, '05', 'JULCAN', '13'),
(316, '06', 'OTUZCO', '13'),
(317, '07', 'PACASMAYO', '13'),
(318, '08', 'PATAZ', '13'),
(319, '09', 'SANCHEZ CARRION', '13'),
(320, '10', 'SANTIAGO DE CHUCO', '13'),
(321, '11', 'GRAN CHIMU', '13'),
(322, '12', 'VIRU', '13'),
(323, '01', 'CHICLAYO', '14'),
(324, '02', 'FERREÑAFE', '14'),
(325, '03', 'LAMBAYEQUE', '14'),
(326, '01', 'LIMA', '15'),
(327, '02', 'BARRANCA', '15'),
(328, '03', 'CAJATAMBO', '15'),
(329, '04', 'CANTA', '15'),
(330, '05', 'CAÑETE', '15'),
(331, '06', 'HUARAL', '15'),
(332, '07', 'HUAROCHIRI', '15'),
(333, '08', 'HUAURA', '15'),
(334, '09', 'OYON', '15'),
(335, '10', 'YAUYOS', '15'),
(336, '01', 'MAYNAS', '16'),
(337, '02', 'ALTO AMAZONAS', '16'),
(338, '03', 'LORETO', '16'),
(339, '04', 'MARISCAL RAMON CASTILLA', '16'),
(340, '05', 'REQUENA', '16'),
(341, '06', 'UCAYALI', '16'),
(342, '07', 'DATEM DEL MARAÑON', '16'),
(343, '01', 'TAMBOPATA', '17'),
(344, '02', 'MANU', '17'),
(345, '03', 'TAHUAMANU', '17'),
(346, '01', 'MARISCAL NIETO', '18'),
(347, '02', 'GENERAL SANCHEZ CERRO', '18'),
(348, '03', 'ILO', '18'),
(349, '01', 'PASCO', '19'),
(350, '02', 'DANIEL ALCIDES CARRION', '19'),
(351, '03', 'OXAPAMPA', '19'),
(352, '01', 'PIURA', '20'),
(353, '01', 'PUIRA', '20'),
(354, '02', 'AYABACA', '20'),
(355, '03', 'HUANCABAMBA', '20'),
(356, '04', 'MORROPON', '20'),
(357, '05', 'PAITA', '20'),
(358, '06', 'SULLANA', '20'),
(359, '07', 'TALARA', '20'),
(360, '08', 'SECHURA', '20'),
(361, '01', 'PUNO', '21'),
(362, '02', 'AZANGARO', '21'),
(363, '03', 'CARABAYA', '21'),
(364, '04', 'CHUCUITO', '21'),
(365, '05', 'EL COLLAO', '21'),
(366, '06', 'HUANCANE', '21'),
(367, '07', 'LAMPA', '21'),
(368, '08', 'MELGAR', '21'),
(369, '09', 'MOHO', '21'),
(370, '10', 'SAN ANTONIO DE PUTINA', '21'),
(371, '11', 'SAN ROMAN', '21'),
(372, '12', 'SANDIA', '21'),
(373, '13', 'YUNGUYO', '21'),
(374, '01', 'MOYOBAMBA', '22'),
(375, '02', 'BELLAVISTA', '22'),
(376, '03', 'EL DORADO', '22'),
(377, '04', 'HUALLAGA', '22'),
(378, '05', 'LAMAS', '22'),
(379, '06', 'MARISCAL CACERES', '22'),
(380, '07', 'PICOTA', '22'),
(381, '08', 'RIOJA', '22'),
(382, '09', 'SAN MARTIN', '22'),
(383, '10', 'TOCACHE', '22'),
(384, '01', 'TACNA', '23'),
(385, '02', 'CANDARAVE', '23'),
(386, '03', 'JORGE BASADRE', '23'),
(387, '04', 'TARATA', '23'),
(388, '01', 'TUMBES', '24'),
(389, '02', 'CONTRALMIRANTE VILLAR', '24'),
(390, '03', 'ZARUMILLA', '24'),
(391, '01', 'CORONEL PORTILLO', '25'),
(392, '02', 'ATALAYA', '25'),
(393, '03', 'PADRE ABAD', '25'),
(394, '04', 'PURUS', '25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_provincias`
--
ALTER TABLE `public_provincias`
  ADD PRIMARY KEY (`id`), ADD KEY `codprov` (`codprov`), ADD KEY `coddepa` (`coddepa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_provincias`
--
ALTER TABLE `public_provincias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=395;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
