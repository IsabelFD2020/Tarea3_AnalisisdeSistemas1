-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2023 a las 05:11:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `numeros_primos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intentos`
--

CREATE TABLE `intentos` (
  `No_Intento` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Numero_Ingresado` bigint(20) NOT NULL,
  `Sumatoria_Primo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `intentos`
--

INSERT INTO `intentos` (`No_Intento`, `Id_Usuario`, `Numero_Ingresado`, `Sumatoria_Primo`) VALUES
(1, 1, 15, 41),
(2, 1, 100, 1060),
(3, 1, 25, 100),
(4, 1, 25, 100),
(5, 1, 41, 197),
(6, 1, 1, 2),
(7, 1, 1, 2),
(8, 1, 51, 328),
(9, 2, 15, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Usuario` varchar(32) NOT NULL,
  `Contraseña` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Usuario`, `Contraseña`) VALUES
(1, 'Vanii21', 1234),
(2, 'Werner', 4321);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `intentos`
--
ALTER TABLE `intentos`
  ADD PRIMARY KEY (`No_Intento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `intentos`
--
ALTER TABLE `intentos`
  MODIFY `No_Intento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
