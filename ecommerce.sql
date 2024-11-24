-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 24-11-2024 a las 02:00:37
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(30) DEFAULT '',
  `user_id` int(10) NOT NULL,
  `descripcion` varchar(85) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `password`) VALUES
(1, 'fvbfbfgdb', 'mjjjj', 'bbbbbb'),
(2, 'jnijij', 'jbbjb', 'ijijij'),
(3, 'jnijij', 'jbbjb', 'ijijij'),
(4, 'rrrrrr', 'rrrrr', 'rrrrrr'),
(5, 'rrrrrr', 'rrrrr', 'rrrrrr'),
(6, 'butcher', 'mateolavandeiracsi@gmail.com', 'asdsfrgth'),
(7, 'butcher', 'fffff', 'sdfgh'),
(8, 'butcher', 'fffff', 'qwedsa'),
(9, 'deeeeeee', 'pepsiii', 'deswq'),
(10, '', 'fffff', 'ddddddddddddd'),
(11, 'sdgsdg', 'sdfsdg', 'sdgsdg'),

/*aca pude poner para que la password no pueda ser vista en la base de datos*/

(12, 'butcher', 'fffff', '$2a$10$0A9XEViUSs2a9Yu.1.YpsOlevFyD00FGOIPYh64thOf9LMxm4uxhO'),
(13, 'butcher', 'fffff', '$2a$10$zLuA9WioBGVBeI3m/ENlI.R/UgH3ePzSCQcXHbcXorvLz6SWWYLfy'),
(14, 'gsdgdg', 'sgfvrdseg', '$2a$10$ZFFxZZFERfDdaTRDiNymF.cl/X3BNs69JdtphHyD4nwoSqBjXZtA.'),
(15, 'boca', 'riverjdjjd', '$2a$10$mgdkwnIYA1s5s2visk0BD./qbQIxjN4Ubdj81EBrNguIIdNz2qi1K'),
(16, 'wegwrg', 'refergrw', '$2a$10$db14n6QAl2yrOPe6xnQdh.xuoRR3JyOcDKEo38NSv0pNPKzuNCyUG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
