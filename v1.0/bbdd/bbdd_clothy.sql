-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 09:06:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clothy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `probador`
--

CREATE TABLE `probador` (
  `num_probador` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `pos_x` int(11) NOT NULL,
  `pos_y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `probador`
--

INSERT INTO `probador` (`num_probador`, `estado`, `pos_x`, `pos_y`) VALUES
(0, 0, 0, 0),
(1, 1, 0, 0),
(2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robot`
--

CREATE TABLE `robot` (
  `id` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `robot`
--

INSERT INTO `robot` (`id`, `estado`) VALUES
(0, 1),
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robot_probador`
--

CREATE TABLE `robot_probador` (
  `id_robot` int(11) NOT NULL,
  `num_probador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robot_ropa`
--

CREATE TABLE `robot_ropa` (
  `id_robot` int(11) NOT NULL,
  `codigo_ropa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa`
--

CREATE TABLE `ropa` (
  `codigo_ropa` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `tipo` text NOT NULL,
  `precio` float NOT NULL,
  `imagen_principal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ropa`
--

INSERT INTO `ropa` (`codigo_ropa`, `nombre`, `descripcion`, `tipo`, `precio`, `imagen_principal`) VALUES
(0, 'SUDADERA RUN AHEAD', 'Sudadera con capucha en color rojo, con texto Run Ahead en contraste.', 'Sudadera', 22.99, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa_color`
--

CREATE TABLE `ropa_color` (
  `codigo_ropa` int(11) NOT NULL,
  `rojo` int(11) NOT NULL,
  `verde` int(11) NOT NULL,
  `azul` int(11) NOT NULL,
  `amarillo` int(11) NOT NULL,
  `blanco` int(11) NOT NULL,
  `negro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa_imagenes`
--

CREATE TABLE `ropa_imagenes` (
  `codigo_ropa` int(11) NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa_probador`
--

CREATE TABLE `ropa_probador` (
  `codigo_ropa` int(11) NOT NULL,
  `num_probador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa_talla`
--

CREATE TABLE `ropa_talla` (
  `codigo_ropa` int(11) NOT NULL,
  `S` int(11) NOT NULL,
  `M` int(11) NOT NULL,
  `L` int(11) NOT NULL,
  `XL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `robot`
--
ALTER TABLE `robot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
