-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-05-2017 a las 13:25:30
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `microprocesadores`
--

CREATE TABLE `microprocesadores` (
  `id` int(100) NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `velocidad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nnucleos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `microprocesadores`
--

INSERT INTO `microprocesadores` (`id`, `marca`, `modelo`, `velocidad`, `nnucleos`, `precio`) VALUES
(1, 'Intel', 'Intel Core I7', '4.2', '4', '349'),
(2, 'AMD', 'Ryzen 5', '3.2', '6', '239'),
(3, 'Intel', 'Celeron G1840', '2.8', '2', '35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `microprocesadores`
--
ALTER TABLE `microprocesadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `microprocesadores`
--
ALTER TABLE `microprocesadores`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
