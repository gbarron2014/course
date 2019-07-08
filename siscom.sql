-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-07-2019 a las 21:53:51
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siscom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre`, `descripcion`, `clave`, `activo`) VALUES
(1, 'METODOLOGÍA DE LA PROGRAMACIÓN', 'Curso destinado a principiantes en Fundamentos de la Programación', '12345', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_participante`
--

DROP TABLE IF EXISTS `curso_participante`;
CREATE TABLE IF NOT EXISTS `curso_participante` (
  `id_curso` int(11) NOT NULL,
  `id_participante` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `porcentaje_completo` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_curso`,`id_participante`),
  KEY `id_participante` (`id_participante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `curso_participante`
--

INSERT INTO `curso_participante` (`id_curso`, `id_participante`, `fecha_inicio`, `fecha_fin`, `porcentaje_completo`) VALUES
(1, 1, '2019-06-03', '2019-07-26', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo`
--

DROP TABLE IF EXISTS `ejemplo`;
CREATE TABLE IF NOT EXISTS `ejemplo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `path` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ejemplo_ilustrativo_tema` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `numeroControl` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `edad` smallint(6) NOT NULL,
  PRIMARY KEY (`numeroControl`),
  KEY `grupo` (`grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`numeroControl`, `nombre`, `apellidos`, `grupo`, `edad`) VALUES
('1111111111', 'Juan Pedro', 'Ruiz Cortinez', 'GIR0131', 23),
('1218100390', 'ANGEL ALEJANDRO', 'GARCIA RAMIREZ ', 'GIR0131', 19),
('1218100494', 'CONCEPCIÓN GUADALUPE', 'GONZÁLEZ BARRIENTOS', 'GIR0131', 19),
('1218100511', 'ARELY LIZBETH', 'GUZMAN JUÁREZ', 'GIR0132', 18),
('1218100891', 'CARLOS MANUEL', 'CONTRERAS RUIZA', 'GIR0131', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `path` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `visible` bit(1) NOT NULL,
  `id_menu` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `idx_menu_menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nombre`, `descripcion`, `path`, `visible`, `id_menu`) VALUES
(1, 'Home', 'Página principal', '/', b'1', NULL),
(2, 'Temario', 'Contenido temático del curso', '/temario', b'1', NULL),
(3, 'Actividades', 'Actividades del curso', '/actividades', b'1', NULL),
(4, 'Evaluaciones', 'Evaluaciones del Curso', '/evaluaciones', b'1', NULL),
(5, 'Calificaciones', 'calificaciones', '/puntajes', b'1', NULL),
(6, 'Progreso', 'Progreso del curso', '/progreso', b'1', NULL),
(7, 'Glosario', 'Glosario de Términos', '/glosario', b'1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

DROP TABLE IF EXISTS `participante`;
CREATE TABLE IF NOT EXISTS `participante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(70) COLLATE latin1_spanish_ci NOT NULL,
  `escolaridad` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_participante_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `nombre`, `apellidos`, `escolaridad`, `email`, `password`, `activo`) VALUES
(1, 'GABRIEL', 'BARRÓN RODRÍGUEZ', 'BACHILLERATO', 'barg90@hotmail.com', '12345', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

DROP TABLE IF EXISTS `recurso`;
CREATE TABLE IF NOT EXISTS `recurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `extension` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `path` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_recurso_tema` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `recurso` int(11) NOT NULL,
  `anterior` int(11) DEFAULT NULL,
  `siguiente` int(11) DEFAULT NULL,
  `prioridad` tinyint(4) NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  KEY `idx_slide_anterior` (`anterior`),
  KEY `idx_slide_siguiente` (`siguiente`),
  KEY `idx_slide_recurso` (`recurso`),
  KEY `idx_slide_tema` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  `id_curso` int(11) NOT NULL,
  `prioridad` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tema` (`id_tema`),
  KEY `id_curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id`, `nombre`, `descripcion`, `id_tema`, `id_curso`, `prioridad`) VALUES
(3, 'Conceptos Fundamentales', 'Conceptos Fundamentales', NULL, 1, '1'),
(4, 'Conceptos Básicos', 'Conceptos Básicos', 1, 1, '1.1'),
(5, 'Algoritmos', 'Algoritmos', NULL, 1, '2'),
(6, 'Estructura de un programa', 'Estructura de un programa', NULL, 1, '3'),
(7, 'Comandos Secuenciales', 'Comandos Secuenciales', 3, 1, '3.1'),
(8, 'Comandos Condicionales Simples', 'Comandos Condicionales Simples', 3, 1, '3.2');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FKhtte7pb199oko7b84bx3q0xkw` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
