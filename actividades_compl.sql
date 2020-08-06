-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2020 a las 23:23:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades_compl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `actClave` int(10) NOT NULL,
  `actNombre` varchar(100) NOT NULL,
  `actCategoria` varchar(50) NOT NULL,
  `actObjetivo` varchar(100) NOT NULL,
  `actContenido` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`actClave`, `actNombre`, `actCategoria`, `actObjetivo`, `actContenido`, `id`) VALUES
(3, 'congreso de sistemas', 'Congreso', '1', '1', 53),
(7, 'emprendedurismo', 'Mooks', 'Hacer una Empresa', 'Empresa 1 ', 56),
(100, 'Computo en la nube', 'Mooks', 'Hacer Computo en la nube', 'servicios de aws', 57),
(200, 'taller de emprendedores', 'Congreso', 'aprender a ser emprendedores', 'empresa', 58),
(300, 'Congreso Mazatán', 'Congreso', 'Actualización de Conocimientos', 'Areas de la computacón', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detgrupo`
--

CREATE TABLE `detgrupo` (
  `grpClave` int(10) NOT NULL,
  `estNoControl` int(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `estNoControl` varchar(10) NOT NULL,
  `estNombre` varchar(50) NOT NULL,
  `estCarrera` varchar(60) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`estNoControl`, `estNombre`, `estCarrera`, `id`) VALUES
('8', '8', 'Ingeniería Informática', 96),
('10', '10', 'Ingeniería Bioquímica', 100),
('12', 'yadira', 'Ingeniería Informática', 102),
('14', 'fernando', 'Ingeniería Industrial', 104),
('15', 'Yadira Nuñez', 'Ingeniería en Sistemas', 105),
('17', 'Alejandra Zambrano', 'Ingeniería Industrial', 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `grpClave` int(10) NOT NULL,
  `grpCarrera` varchar(60) NOT NULL,
  `actClave` int(10) NOT NULL,
  `insClave` int(10) NOT NULL,
  `grpAula` varchar(10) NOT NULL,
  `grpLimite` int(2) NOT NULL,
  `grpDateIni` date NOT NULL,
  `grpDateFin` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`grpClave`, `grpCarrera`, `actClave`, `insClave`, `grpAula`, `grpLimite`, `grpDateIni`, `grpDateFin`, `id`) VALUES
(1, 'Ingeniería en Sistemas', 3, 1, '6', 11, '2020-07-17', '2020-07-18', 12),
(2, 'Ingeniería Informática', 3, 1, '2', 22, '2020-07-21', '2020-07-21', 45),
(3, 'Ingeniería en Sistemas', 100, 10, 'A333', 33, '2020-07-17', '2020-07-17', 46),
(4, 'Ingeniería Informática', 200, 15, 'A4', 44, '2020-07-13', '2020-07-13', 47),
(5, 'Ingeniería Informática', 3, 1, 'A5', 55, '2020-07-04', '2020-07-04', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `insClave` int(10) NOT NULL,
  `insNombre` varchar(50) NOT NULL,
  `insDepto` varchar(60) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`insClave`, `insNombre`, `insDepto`, `id`) VALUES
(1, 'Othoniel Rivera', 'Desarrollo Academico', 50),
(9, 'Leonardo Martinez', 'Desarrollo Academico', 54),
(10, 'Fernando Carranza', 'Instrustrial', 57),
(11, 'Sandra Ruán', 'Ciencias Básicas', 58),
(12, 'Mariela Vázquez', 'Sistemas y Computacion', 59),
(15, 'Sandra Ruán', 'Instrustrial', 60);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detgrupo`
--
ALTER TABLE `detgrupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `detgrupo`
--
ALTER TABLE `detgrupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
