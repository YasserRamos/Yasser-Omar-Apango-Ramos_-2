-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 13-06-2024 a las 05:09:46
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
-- Base de datos: `librería`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Nombre` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Autor` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Editorial` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID`, `ISBN`, `Nombre`, `Autor`, `Precio`, `Editorial`) VALUES
(1, '9788444147555', 'La Cenicienta', 'Charles Perrault', 10.00, 'Everest'),
(2, '9788444147562', 'Blancanieves y los siete enanitos', 'Hermanos Grimm', 12.00, 'Everest'),
(3, '9788444147579', 'Caperucita Roja', 'Hermanos Grimm', 9.00, 'Everest'),
(4, '9788444147586', 'El Patito Feo', 'Hans Christian Andersen', 11.00, 'Everest'),
(5, '9788444147593', 'La Bella Durmiente', 'Charles Perrault', 10.50, 'Everest'),
(6, '9788444147609', 'Hansel y Gretel', 'Hermanos Grimm', 12.50, 'Everest'),
(7, '9788444147616', 'Rapunzel', 'Hermanos Grimm', 11.00, 'Everest'),
(8, '9788444147623', 'El Gato con Botas', 'Charles Perrault', 10.00, 'Everest'),
(9, '9788444147630', 'La Sirenita', 'Hans Christian Andersen', 12.00, 'Everest'),
(10, '9788444147647', 'Pulgarcito', 'Charles Perrault', 9.50, 'Everest');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
