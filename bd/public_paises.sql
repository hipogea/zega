-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:37:41
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
-- Estructura de tabla para la tabla `public_paises`
--

CREATE TABLE IF NOT EXISTS `public_paises` (
  `codpais` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `prefijotelef` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_paises`
--

INSERT INTO `public_paises` (`codpais`, `pais`, `prefijotelef`) VALUES
('AB', 'ARUBA', ''),
('AF', 'AFGANISTÁN', ''),
('AG', 'ANGOLA', ''),
('AI', 'ANGUILA', ''),
('AL', 'ALBANIA', ''),
('AN', 'ANDORRA', ''),
('AR', 'ARGENTINA', ''),
('AS', 'SAMOA ESTADOUNIDENSE', ''),
('AT', 'ANTIGUA Y BARBUDA', ''),
('AU', 'AUSTRALIA', ''),
('AZ', 'AZERBAIYÁN', ''),
('BD', 'BURUNDI', ''),
('BE', 'BÉLGICA', ''),
('BF', 'BURKINA FASO', ''),
('BG', 'BULGARIA', ''),
('BH', 'BAHAMAS', ''),
('BI', 'BOSNIA Y HERZEGOVINA', ''),
('BL', 'BELICE', ''),
('BM', 'BERMUDAS', ''),
('BO', 'BOLIVIA', ''),
('BR', 'BRASIL', ''),
('BT', 'BUTÁN', ''),
('BV', 'ISLA BOUVET', ''),
('BW', 'BOTSUANA', ''),
('CA', 'CANADÁ', ''),
('CC', 'ISLAS COCOS', ''),
('CH', 'CHILE', ''),
('CI', 'COSTA DE MARFIL', ''),
('CM', 'CAMERÚN', ''),
('CO', 'COLOMBIA', ''),
('CP', 'CABO VERDE', ''),
('CR', 'COSTA RICA', ''),
('CU', 'CUBA', ''),
('CX', 'ISLA DE NAVIDAD', ''),
('CY', 'CHIPRE', ''),
('CZ', 'REPÚBLICA CHECA', ''),
('DE', 'ALEMANIA', ''),
('DJ', 'YIBUTI', ''),
('DM', 'DOMINICA', ''),
('DN', 'DINAMARCA', ''),
('DO', 'REPÚBLICA DOMINICANA', ''),
('DZ', 'ARGELIA', ''),
('EC', 'ECUADOR', ''),
('EG', 'EGIPTO', ''),
('ER', 'ERITREA', ''),
('ES', 'ESPAÑA', ''),
('ET', 'ETIOPÍA', ''),
('FI', 'FINLANDIA', ''),
('FJ', 'FIYI', ''),
('FL', 'ISLAS MALVINAS', ''),
('FR', 'FRANCIA', ''),
('FS', 'MICRONESIA', ''),
('GA', 'GABÓN', ''),
('GB', 'REINO UNIDO', ''),
('GE', 'GEORGIA', ''),
('GG', 'GUERNSEY', ''),
('GH', 'GHANA', ''),
('GI', 'GUINEA', ''),
('GL', 'GUADALUPE', ''),
('GM', 'GAMBIA', ''),
('GN', 'GUINEA ECUATORIAL', ''),
('GR', 'GRECIA', ''),
('GT', 'GUATEMALA', ''),
('GU', 'GUYANA', ''),
('HK', 'HONG KONG', ''),
('HM', 'ISLAS HEARD Y MCDONALD', ''),
('HN', 'HONDURAS', ''),
('HR', 'CROACIA', ''),
('HT', 'HAITÍ', ''),
('HU', 'HUNGRÍA', ''),
('IM', 'ISLA DE MAN', ''),
('IN', 'INDIA', ''),
('IO', 'TERRITORIO BRITÁNICO DEL OCÉANO ÍNDICO', ''),
('IR', 'IRLANDA', ''),
('IS', 'ISRAEL', ''),
('IT', 'ITALIA', ''),
('JA', 'JAMAICA', ''),
('JE', 'JERSEY', ''),
('JO', 'JORDANIA', ''),
('JP', 'JAPÓN', ''),
('KA', 'KAZAJISTÁN', ''),
('KE', 'KENIA', ''),
('KG', 'KIRGUISTÁN', ''),
('KH', 'CAMBOYA', ''),
('KI', 'KIRIBATI', ''),
('KN', 'SAN CRISTÓBAL Y NIEVES', ''),
('KO', 'COREA DEL SUR', ''),
('KW', 'KUWAIT', ''),
('LA', 'LAOS', ''),
('LB', 'LIBERIA', ''),
('LC', 'SANTA LUCÍA', ''),
('LI', 'LIECHTENSTEIN', ''),
('LK', 'SRI LANKA', ''),
('LS', 'LESOTO', ''),
('LT', 'LITUANIA', ''),
('LU', 'LUXEMBURGO', ''),
('LV', 'LETONIA', ''),
('MA', 'MARRUECOS', ''),
('MC', 'MÓNACO', ''),
('MD', 'MALDIVAS', ''),
('ME', 'MÉXICO', ''),
('MH', 'ISLAS MARSHALL', ''),
('MK', 'REPÚBLICA DE MACEDONIA', ''),
('ML', 'MALÍ', ''),
('MM', 'BIRMANIA', ''),
('MN', 'ISLAS MARIANAS DEL NORTE', ''),
('MO', 'MOZAMBIQUE', ''),
('MR', 'MAURITANIA', ''),
('MS', 'MONTSERRAT', ''),
('MT', 'MARTINICA', ''),
('MU', 'MAURICIO', ''),
('MW', 'MALAUI', ''),
('MY', 'MALASIA', ''),
('NA', 'NAMIBIA', ''),
('NC', 'NUEVA CALEDONIA', ''),
('NE', 'NÍGER', ''),
('NF', 'NORFOLK', ''),
('NG', 'NIGERIA', ''),
('NI', 'NICARAGUA', ''),
('NL', 'PAÍSES BAJOS', ''),
('NO', 'NORUEGA', ''),
('NP', 'NEPAL', ''),
('NR', 'NAURU', ''),
('NZ', 'NUEVA ZELANDA', ''),
('OM', 'OMÁN', ''),
('PA', 'PAKISTÁN', ''),
('PE', 'PERÚ', ''),
('PH', 'FILIPINAS', ''),
('PL', 'PALAOS', ''),
('PN', 'PAPÚA NUEVA GUINEA', ''),
('PO', 'POLONIA', ''),
('PR', 'PARAGUAY', ''),
('PS', 'AUTORIDAD NACIONAL PALESTINA', ''),
('PY', 'POLINESIA FRANCESA', ''),
('QA', 'CATAR', ''),
('RE', 'REUNIÓN', ''),
('RO', 'RUMANÍA', ''),
('RU', 'RUSIA', ''),
('RW', 'RUANDA', ''),
('SA', 'ARABIA SAUDITA', ''),
('SD', 'SUDÁN', ''),
('SE', 'SENEGAL', ''),
('SG', 'SINGAPUR', ''),
('SH', 'SANTA HELENA, A. Y T.', ''),
('SJ', 'SVALBARD Y JAN MAYEN', ''),
('SL', 'EL SALVADOR', ''),
('SM', 'SAN MARINO', ''),
('SO', 'SOMALIA', ''),
('SP', 'SAN PEDRO Y MIQUELÓN', ''),
('SR', 'SERBIA', ''),
('ST', 'SANTO TOMÉ Y PRÍNCIPE', ''),
('SU', 'SURINAM', ''),
('SV', 'ESLOVAQUIA', ''),
('SW', 'SUECIA', ''),
('SY', 'SIRIA', ''),
('TC', 'CHAD', ''),
('TG', 'TOGO', ''),
('TH', 'TAILANDIA', ''),
('TJ', 'TAYIKISTÁN', ''),
('TK', 'TOKELAU', ''),
('TL', 'TIMOR ORIENTAL', ''),
('TO', 'TONGA', ''),
('TT', 'TRINIDAD Y TOBAGO', ''),
('TU', 'TÚNEZ', ''),
('TW', 'TAIWÁN', ''),
('TZ', 'TANZANIA', ''),
('UG', 'UGANDA', ''),
('UK', 'UCRANIA', ''),
('UR', 'URUGUAY', ''),
('US', 'ESTADOS UNIDOS', ''),
('UZ', 'UZBEKISTÁN', ''),
('VA', 'CIUDAD DEL VATICANO', ''),
('VC', 'SAN VICENTE Y LAS GRANADINAS', ''),
('VE', 'VENEZUELA', ''),
('VG', 'ISLAS VÍRGENES BRITÁNICAS', ''),
('VI', 'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS', ''),
('VN', 'VIETNAM', ''),
('VU', 'VANUATU', ''),
('WL', 'WALLIS Y FUTUNA', ''),
('WS', 'SAMOA', ''),
('YE', 'YEMEN', ''),
('ZA', 'SUDÁFRICA', ''),
('ZM', 'ZAMBIA', ''),
('ZW', 'ZIMBABUE', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_paises`
--
ALTER TABLE `public_paises`
  ADD PRIMARY KEY (`codpais`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
