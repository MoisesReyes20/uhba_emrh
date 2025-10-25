-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2025 a las 17:52:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uhab_emrh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `alumno_id` int(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo_institucional` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`alumno_id`, `matricula`, `nombre`, `apellido`, `correo_institucional`) VALUES
(1, 'UHAB001', 'Allan', 'Hernández', 'allan.hernandez@uhab.com'),
(2, 'UHAB002', 'Diego', 'Guzman', 'diego.guzman@uhab.com'),
(3, 'UHAB003', 'Eric', 'Piña', 'eric.piña@uhab.com'),
(4, 'UHAB004', 'Marychu', 'Cruz', 'marychu.cruz@uhab.com'),
(5, 'UHAB005', 'Emmanuel', 'Reyes', 'emmanuel.reyes@uhab.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `clase_id` int(11) NOT NULL,
  `nombre_clase` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`clase_id`, `nombre_clase`) VALUES
(4, 'Administración De Redes'),
(5, 'Arquitecturas De Computadoras I'),
(2, 'Base De Datos II'),
(1, 'Ingeniería Económica'),
(3, 'Programación Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `nota_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `calificacion` decimal(4,2) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`nota_id`, `alumno_id`, `clase_id`, `calificacion`, `fecha_registro`) VALUES
(1, 1, 3, 9.50, '2025-09-07'),
(2, 2, 2, 7.80, '2025-09-07'),
(3, 3, 1, 8.25, '2025-09-07'),
(4, 4, 3, 6.00, '2025-09-07'),
(5, 5, 5, 9.00, '2025-09-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`alumno_id`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD UNIQUE KEY `correo_institucional` (`correo_institucional`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`clase_id`),
  ADD UNIQUE KEY `nombre_clase` (`nombre_clase`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`nota_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `alumno_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `clase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `nota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
