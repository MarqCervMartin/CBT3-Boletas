-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-10-2019 a las 23:49:03
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cbt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `inscrito` varchar(5) NOT NULL,
  `Matricula` varchar(15) NOT NULL,
  `NomPla` varchar(35) DEFAULT NULL,
  `CCT` varchar(25) DEFAULT NULL,
  `Subsistema` varchar(35) DEFAULT NULL,
  `Zona` varchar(20) DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Grado` int(11) DEFAULT NULL,
  `CURP` varchar(20) DEFAULT NULL,
  `Paterno` varchar(30) DEFAULT NULL,
  `Materno` varchar(30) DEFAULT NULL,
  `Nombres` varchar(30) DEFAULT NULL,
  `Teléfono` int(11) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Domicilio` varchar(50) DEFAULT NULL,
  `Exterior` varchar(5) DEFAULT NULL,
  `Interior` varchar(5) DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `Municipio` varchar(45) DEFAULT NULL,
  `Referencia` varchar(45) DEFAULT NULL,
  `PaternoTut` varchar(30) DEFAULT NULL,
  `MaternoTut` varchar(30) DEFAULT NULL,
  `NombresTut` varchar(30) DEFAULT NULL,
  `TeléfonoTut` int(11) DEFAULT NULL,
  `EmailTut` varchar(25) DEFAULT NULL,
  `DomicilioTut` varchar(50) DEFAULT NULL,
  `ExteriorTut` varchar(5) DEFAULT NULL,
  `InteriorTut` varchar(5) DEFAULT NULL,
  `LocalidadTut` varchar(30) DEFAULT NULL,
  `MunicipioTut` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `Matricula` (`Matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_usuario`, `inscrito`, `Matricula`, `NomPla`, `CCT`, `Subsistema`, `Zona`, `Turno`, `Grado`, `CURP`, `Paterno`, `Materno`, `Nombres`, `Teléfono`, `Email`, `Domicilio`, `Exterior`, `Interior`, `Localidad`, `Municipio`, `Referencia`, `PaternoTut`, `MaternoTut`, `NombresTut`, `TeléfonoTut`, `EmailTut`, `DomicilioTut`, `ExteriorTut`, `InteriorTut`, `LocalidadTut`, `MunicipioTut`) VALUES
(1263, 'si', '5437160116', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL15', 'ARROYO', 'DIAZ', 'REBECA ABIGAIL', 55678978, 'abi@gmail.com', 'calle de la amargura', '25', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'ARROYO', 'TORRES', 'SARA', 55678978, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '25', 'S/N', 'San pedro zula', 'temascalapa'),
(1264, 'si', '5437160118', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL27', 'BRAVO', 'TELLEZ', 'OMAR', 55678979, 'abi@gmail.com', 'calle de la amargura', '26', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'BRAVO', 'SANTIAGO', 'ALDO', 55678979, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '26', 'S/N', 'San pedro zula', 'Atizapan'),
(1265, 'si', '5437160120', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL26', 'CASIMIRO', 'SANTANA', 'BENITO', 55678980, 'abi@gmail.com', 'calle de la amargura', '27', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'CASIMIRO', 'MENDOZA', 'ADRIAN', 55678980, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '27', 'S/N', 'San pedro zula', 'Tecamac'),
(1266, 'si', '5437160122', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL20', 'CASTELLON', 'BRAVO', 'MELITON', 55678981, 'abi@gmail.com', 'calle de la amargura', '28', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'CASTELLON', 'MARTINEZ', 'CECILIA', 55678981, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '28', 'S/N', 'San pedro zula', 'Ticoman'),
(1267, 'si', '5437160124', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 2, 'SAGA971111HMCNLL10', 'DIAZ', 'ORTIS', 'REMEDIOS', 55678982, 'abi@gmail.com', 'calle de la amargura', '29', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'DIAZ', 'ROMERO', 'MAMA ILI', 55678982, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '29', 'S/N', 'San pedro zula', 'Zumpango'),
(1268, 'si', '5437160126', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 2, 'SAGA971111HMCNLL16', 'DIAZ', 'CARSO', 'SANDRA', 55678983, 'abi@gmail.com', 'calle de la amargura', '30', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'DIAZ', 'HERNANDEZ', 'DANIELA', 55678983, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '30', 'S/N', 'San pedro zula', 'temascalapa'),
(1269, 'si', '5437160128', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL18', 'FLORES', 'ARIAS', 'MONICA', 55678984, 'abi@gmail.com', 'calle de la amargura', '31', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'FLORES', 'SANCHEZ', 'CHABELO', 55678984, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '31', 'S/N', 'San pedro zula', 'Atizapan'),
(1270, 'si', '5437160130', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL21', 'GONZALEZ', 'RUIZ', 'CAROLINA', 55678985, 'abi@gmail.com', 'calle de la amargura', '32', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'GONZALEZ', 'ORTIZ', 'OLGA', 55678985, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '32', 'S/N', 'San pedro zula', 'Tecamac'),
(1271, 'si', '5437160132', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL11', 'HERNANDEZ', 'HERNANDEZ', 'MEDRANO', 55678986, 'abi@gmail.com', 'calle de la amargura', '33', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'HERNANDEZ', 'ESCORSIA', 'JAVIER', 55678986, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '33', 'S/N', 'San pedro zula', 'Ticoman'),
(1272, 'si', '5437160134', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL24', 'MATIAS', 'ALMEIDA', 'ZUJEY', 55678987, 'abi@gmail.com', 'calle de la amargura', '34', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'MATIAS', 'RAMIREZ', 'AIME', 55678987, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '34', 'S/N', 'San pedro zula', 'Zumpango'),
(1273, 'si', '5437160136', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL14', 'MEDRANO', 'PEREZ', 'JHONATAN', 55678988, 'abi@gmail.com', 'calle de la amargura', '35', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'MEDRANO', 'COBARRUVIAS', 'OSCAR', 55678988, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '35', 'S/N', 'San pedro zula', 'temascalapa'),
(1274, 'si', '5437160138', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL23', 'MERINO', 'CONTRERAS', 'RITA ', 55678989, 'abi@gmail.com', 'calle de la amargura', '36', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'MERINO', 'GUZMAN ', 'TADEO', 55678989, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '36', 'S/N', 'San pedro zula', 'Atizapan'),
(1275, 'si', '5437160140', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 2, 'SAGA971111HMCNLL19', 'MONDRAGON', 'MERCADO ', 'CORINA', 55678990, 'abi@gmail.com', 'calle de la amargura', '37', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'MONDRAGON', 'MENDEZ', 'CRISTIAN', 55678990, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '37', 'S/N', 'San pedro zula', 'Tecamac'),
(1276, 'si', '5437160142', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 2, 'SAGA971111HMCNLL22', 'MONRROY', 'NAVA', 'CHUMEL', 55678991, 'abi@gmail.com', 'calle de la amargura', '38', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'MONRROY', 'DIEGO', 'JUDAS', 55678991, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '38', 'S/N', 'San pedro zula', 'Ticoman'),
(1277, 'si', '5437160144', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL12', 'SANCHEZ', 'GALINDO', 'ALDO ADRIAN', 55678992, 'abi@gmail.com', 'calle de la amargura', '39', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'SANCHEZ', 'PACHESCO', 'ISCARIOTE', 55678992, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '39', 'S/N', 'San pedro zula', 'Zumpango'),
(1278, 'si', '5437160146', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 1, 'SAGA971111HMCNLL09', 'SANTOS', 'DIAZ', 'JESUS', 55678993, 'abi@gmail.com', 'calle de la amargura', '40', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'SANTOS', 'SANDOBAL', 'TOMAS', 55678993, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '40', 'S/N', 'San pedro zula', 'temascalapa'),
(1279, 'si', '5437160148', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 2, 'SAGA971111HMCNLL25', 'SOLIS', 'PORTILLO', 'JENNIFER', 55678994, 'abi@gmail.com', 'calle de la amargura', '41', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'SOLIS', 'BENITES', 'VANESA', 55678994, '2DANIELA12@GMAIL.ORG', 'calle de la amargura', '41', 'S/N', 'San pedro zula', 'Atizapan'),
(1280, 'si', '5437160150', 'Cbt 3 zumpango', '15epr5678a', 'bachillerato tecnologico', 'P30A', 'MATUTINO', 3, 'SAGA971111HMCNLL17', 'SOTO', 'SOTO', 'ABRIL', 55678995, 'abi@gmail.com', 'calle de la amargura', '42', 'S/N', 'San pedro zula', 'Atizapan', 'Bar la loca', 'SOTO', 'RUIZ', 'PAPIRRIN', 55678995, '1DANIELA13@GMAIL.ORG', 'calle de la amargura', '42', 'S/N', 'San pedro zula', 'Tecamac');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctrevaluacion`
--

DROP TABLE IF EXISTS `ctrevaluacion`;
CREATE TABLE IF NOT EXISTS `ctrevaluacion` (
  `id_ctr` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_ctr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctrevaluacion`
--

INSERT INTO `ctrevaluacion` (`id_ctr`, `periodo`, `status`) VALUES
(1, '1 periodo', 'inactivo'),
(2, '2 periodo', 'inactivo'),
(3, '3 periodo', 'inactivo'),
(4, 'evaluacion final', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupos` int(11) NOT NULL AUTO_INCREMENT,
  `grado` varchar(5) DEFAULT NULL,
  `grupo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_grupos`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupos`, `grado`, `grupo`) VALUES
(5, '1°', '1'),
(6, '1°', '2'),
(7, '1°', '3'),
(9, '2°', '1'),
(10, '2°', '2'),
(11, '2°', '3'),
(12, '3°', '1'),
(13, '3°', '2'),
(14, '3°', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE IF NOT EXISTS `materias` (
  `id_materias` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(25) NOT NULL,
  `grado` int(11) NOT NULL,
  PRIMARY KEY (`id_materias`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materias`, `materia`, `grado`) VALUES
(16, 'ESPAÑOL I', 1),
(17, 'MATEMATICAS II', 2),
(18, 'ESPAÑOL II', 2),
(19, 'MATEMATICAS III', 3),
(20, 'ESPAÑOL III', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiasign`
--

DROP TABLE IF EXISTS `materiasign`;
CREATE TABLE IF NOT EXISTS `materiasign` (
  `idmatasign` int(11) NOT NULL AUTO_INCREMENT,
  `idprof` int(11) NOT NULL,
  `materia` varchar(40) NOT NULL,
  `grupoasign` varchar(10) NOT NULL,
  `horario` time NOT NULL,
  PRIMARY KEY (`idmatasign`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materiasign`
--

INSERT INTO `materiasign` (`idmatasign`, `idprof`, `materia`, `grupoasign`, `horario`) VALUES
(24, 22, 'ESPAï¿½OL I', '', '00:00:00'),
(25, 24, 'ESPAï¿½OL I', '3ï¿½ 2', '05:04:00'),
(26, 24, 'ESPAï¿½OL I', '3ï¿½ 2', '05:04:00'),
(27, 25, 'ESPAï¿½OL I', '3ï¿½ 1', '08:09:00'),
(28, 27, 'ESPAï¿½OL I', '3ï¿½ 1', '11:11:00'),
(29, 27, 'ESPAï¿½OL I', '3ï¿½ 1', '11:11:00'),
(30, 27, 'ESPAï¿½OL I', '3ï¿½ 1', '11:11:00'),
(31, 22, 'MATEMATICAS II', '3ï¿½ 2', '05:04:00'),
(32, 29, 'MATEMATICAS III', '3ï¿½ 2', '05:05:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

DROP TABLE IF EXISTS `profesor`;
CREATE TABLE IF NOT EXISTS `profesor` (
  `materiasasign` int(5) NOT NULL,
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `NomPla` varchar(100) DEFAULT NULL,
  `CCT` varchar(25) DEFAULT NULL,
  `Subsistema` varchar(30) DEFAULT NULL,
  `Zona` varchar(10) DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Grado` int(11) DEFAULT NULL,
  `CURP` varchar(25) DEFAULT NULL,
  `Paterno` varchar(25) DEFAULT NULL,
  `Materno` varchar(25) DEFAULT NULL,
  `Nombres` varchar(25) DEFAULT NULL,
  `Teléfono` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Domicilio` varchar(50) DEFAULT NULL,
  `Exterior` varchar(10) DEFAULT NULL,
  `Interior` varchar(10) DEFAULT NULL,
  `Localidad` varchar(30) DEFAULT NULL,
  `Municipio` varchar(30) DEFAULT NULL,
  `Referencia` varchar(25) DEFAULT NULL,
  `Cargo` varchar(20) DEFAULT NULL,
  `Categoría` varchar(30) DEFAULT NULL,
  `Función` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`materiasasign`, `id_usuario`, `NomPla`, `CCT`, `Subsistema`, `Zona`, `Turno`, `Grado`, `CURP`, `Paterno`, `Materno`, `Nombres`, `Teléfono`, `Email`, `Domicilio`, `Exterior`, `Interior`, `Localidad`, `Municipio`, `Referencia`, `Cargo`, `Categoría`, `Función`) VALUES
(3, 22, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P22', 'MATUTINO', 4, 'SAGA971111HMCNLL10', 'ARCINIEGA', 'GARCIA', 'FERNANDO OMAR', 55678977, 'cervlt@gmail.com', 'calle bosques de san angel', '24', 'S/N', 'San pedro zula', 'zumpango', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(3, 23, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P23', 'MATUTINO', 5, 'SAGA971111HMCNLL11', 'CASTRO', 'HERNANDEZ', 'NUBIA', 55678978, 'cervlt@gmail.com', 'calle bosques de san angel', '25', 'S/N', 'San pedro zula', 'Atizapan', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(1, 24, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P24', 'MATUTINO', 6, 'SAGA971111HMCNLL12', 'BARRON', 'VIDALES', 'JESUS', 55678979, 'cervlt@gmail.com', 'calle bosques de san angel', '26', 'S/N', 'San pedro zula', 'tecamac', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(1, 25, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P25', 'MATUTINO', 7, 'SAGA971111HMCNLL13', 'MEDINA', 'ANGELES', 'OSVALDO MAUGDIEL', 55678980, 'cervlt@gmail.com', 'calle bosques de san angel', '27', 'S/N', 'San pedro zula', 'Atizapan', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(0, 26, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P26', 'MATUTINO', 8, 'SAGA971111HMCNLL14', 'GONZALEZ', 'ROJA', 'Claudia yamilet', 55678981, 'cervlt@gmail.com', 'calle bosques de san angel', '28', 'S/N', 'San pedro zula', 'zumpango', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(1, 27, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P27', 'MATUTINO', 9, 'SAGA971111HMCNLL15', 'PEREZ', 'MARTINEZ', 'ERNESTO', 55678982, 'cervlt@gmail.com', 'calle bosques de san angel', '29', 'S/N', 'San pedro zula', 'Atizapan', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(0, 28, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P28', 'MATUTINO', 10, 'SAGA971111HMCNLL16', 'GONZALEZ', 'SOLIS', 'CESAR', 55678983, 'cervlt@gmail.com', 'calle bosques de san angel', '30', 'S/N', 'San pedro zula', 'tecamac', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(1, 29, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P29', 'MATUTINO', 11, 'SAGA971111HMCNLL17', 'RAYA', 'GOMEZ', 'KAREN', 55678984, 'cervlt@gmail.com', 'calle bosques de san angel', '31', 'S/N', 'San pedro zula', 'Atizapan', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar'),
(0, 30, 'Centro de bachillerato tecnologico n 3 Zumpango', '15EPR4567U', 'BACCILLERATO TECNOLOGICO', 'P30', 'MATUTINO', 12, 'SAGA971111HMCNLL18', 'BUENDIA', 'FABREGAS', 'TONATIU', 55678985, 'cervlt@gmail.com', 'calle bosques de san angel', '32', 'S/N', 'San pedro zula', 'zumpango', 'carretera san bartolo', 'Profesor', 'tiempo completo', 'Enseñar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(15) DEFAULT NULL,
  `contrasenia` varchar(100) DEFAULT NULL,
  `auth_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `grado` text NOT NULL,
  `grupo` text NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `matricula` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `matricula`, `contrasenia`, `auth_id`, `created_at`, `grado`, `grupo`) VALUES
(1, '2516160229', 'f865b53623b121fd34ee5426c792e5c33af8c227', 1, '2019-08-11 12:53:09', 'profesor', 'profesor'),
(22, 'PRFARCINIEGA22', 'ffe0a793cd33650828ad9c1add1373c5bdef9491', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(23, 'PRFCASTRO23', '9e7ae5d6c55b25abed11fc765a3b956bcf9a7ac6', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(24, 'PRFBARRON24', 'dec7c7757163ca99b4fee2baeca29ac652177058', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(25, 'PRFMEDINA25', '24723018f4c704864880dbd5c883675e13e9c2b0', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(26, 'PRFGONZALEZ26', 'c1b63a0acdc286ff6252206e6697fee919dd588d', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(27, 'PRFPEREZ27', '4863e6b07a301a162958f1693cd56a913c7a235e', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(28, 'PRFGONZALEZ28', '49180b97c40d53056fcd41526ccc885b13551e1d', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(29, 'PRFRAYA29', '097af32e6a6417c760acb1c1a51b1280c8751d82', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(30, 'PRFBUENDIA30', 'ce4dc3b6b6f71070bfeab96a314d39b69dbc4e90', 2, '2019-10-18 08:48:34', 'n/a', 'n/a'),
(1263, '5437160116', 'f5bc162e9e3efd85ab65c86526a1e9a6700c60f6', 3, '2019-08-19 09:58:20', '1', '2'),
(1264, '5437160118', 'cabe79b7df39c292f769fb75706742b64bc84d6a', 3, '2019-08-19 09:58:20', '1', '1'),
(1265, '5437160120', 'c049755a8a161a3aeb423ff2b58d046ab08f6080', 3, '2019-08-19 09:57:46', '3', '1'),
(1266, '5437160122', 'fead189c8b8c2b4ca35541ae9c226595a40d0de7', 3, '2019-08-19 09:57:46', '3', '1'),
(1267, '5437160124', '5781aac53524b13505b836f275022827302b2a1b', 3, '2019-10-18 10:28:37', '2', '1'),
(1268, '5437160126', '03b98e6908ef0b7171f80f1948d808b27703c472', 3, '2019-10-18 10:28:37', '2', '2'),
(1269, '5437160128', 'a9719fa84adaa3d484d3825ee6587149e581977b', 3, '2019-08-19 09:58:20', '1', '2'),
(1270, '5437160130', 'e810b2fbaa12d664a1e95615dfae84d4c9e78417', 3, '2019-08-19 09:58:20', '1', '3'),
(1271, '5437160132', '9903c43292ecd570cee2a9ba9d2d84fa61790e7e', 3, '2019-08-19 09:57:46', '3', '3'),
(1272, '5437160134', 'a3ac1f892c125f6156abdce349e58ecc47eae9fd', 3, '2019-08-19 09:58:20', '1', '2'),
(1273, '5437160136', '49236511b7d39d4ac1bb456e8cb3ae2d7f8df4b8', 3, '2019-08-19 09:57:46', '3', '3'),
(1274, '5437160138', '44493db3f4fef601854da5be046134502072afe2', 3, '2019-08-19 09:57:46', '3', '2'),
(1275, '5437160140', '15f292310dbff6e9b6ad4bdfc4b659b2cafb6ae8', 3, '2019-10-18 10:28:37', '2', '2'),
(1276, '5437160142', '24922386e49efa30e300c536a709d036560d027e', 3, '2019-10-18 10:28:37', '2', '3'),
(1277, '5437160144', '2469232cdc0e6b684d414eb28ba635a6349b416e', 3, '2019-08-19 09:58:20', '1', '1'),
(1278, '5437160146', 'ecea8f95c435567616f69ae2c2c91b525e837a53', 3, '2019-08-19 09:58:20', '1', '3'),
(1279, '5437160148', '5e08b85fb6134573db8219fdb3bd80186c92bf99', 3, '2019-10-18 10:28:37', '2', '3'),
(1280, '5437160150', 'f897b31da166608cb18bd4de313a4fadc44789e1', 3, '2019-08-19 09:57:46', '3', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
