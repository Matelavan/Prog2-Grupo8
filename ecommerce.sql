-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 25-11-2024 a las 00:36:34
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
  `imagen` varchar(1000) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `user_id`, `descripcion`, `imagen`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'licuadora', 2, 'Esta licuadora es la ultima del mercado y la mejor trituradora de alimentos', 'img-cafetera-moulinex.jpg', '2024-11-25 00:32:23', '2024-11-25 00:32:23', NULL),
(2, 'Celular', 4, 'Este celular es el mas avanzado del mercado', 'img-samsung-galaxy-s10.jpg', '2024-11-25 00:34:15', '2024-11-25 00:34:15', NULL),
(3, 'licuadora', 2, 'Esta licuadora es la ultima del mercado y la mejor trituradora de alimentos', 'img-cafetera-moulinex.jpg', '2024-11-25 00:34:15', '2024-11-25 00:34:15', NULL),
(4, 'licuadora', 2, 'Esta licuadora es la ultima del mercado y la mejor trituradora de alimentos', 'img-cafetera-moulinex.jpg', '2024-11-25 00:34:15', '2024-11-25 00:34:15', NULL),
(5, 'licuadora', 2, 'Esta licuadora es la ultima del mercado y la mejor trituradora de alimentos', 'img-cafetera-moulinex.jpg', '2024-11-25 00:34:15', '2024-11-25 00:34:15', NULL),
(6, 'licuadora', 2, 'Esta licuadora es la ultima del mercado y la mejor trituradora de alimentos', 'img-cafetera-moulinex.jpg', '2024-11-25 00:34:15', '2024-11-25 00:34:15', NULL);

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
(12, 'butcher', 'fffff', '$2a$10$0A9XEViUSs2a9Yu.1.YpsOlevFyD00FGOIPYh64thOf9LMxm4uxhO'),
(13, 'butcher', 'fffff', '$2a$10$zLuA9WioBGVBeI3m/ENlI.R/UgH3ePzSCQcXHbcXorvLz6SWWYLfy'),
(14, 'gsdgdg', 'sgfvrdseg', '$2a$10$ZFFxZZFERfDdaTRDiNymF.cl/X3BNs69JdtphHyD4nwoSqBjXZtA.'),
(15, 'boca', 'riverjdjjd', '$2a$10$mgdkwnIYA1s5s2visk0BD./qbQIxjN4Ubdj81EBrNguIIdNz2qi1K'),
(16, 'wegwrg', 'refergrw', '$2a$10$db14n6QAl2yrOPe6xnQdh.xuoRR3JyOcDKEo38NSv0pNPKzuNCyUG'),
(17, 'erferfwf', 'vdfvdvdfvdvsa', '$2a$10$o2Ky87BumndgytCpzFfhtu8exyHN.rlXTgR7Efh6Oy3LVCvhEb6oO'),
(18, 'erferfwf', 'wfefdwecxdwxdwedf', '$2a$10$WP5i8sQeyd2W3fWwerCOPOj5fwpqcU.TctOC/jFirL9Ai10TN0VOa'),
(19, 'erferfwffwefewf', 'wfefdwecxdwxdwedf', '$2a$10$yktTnNcVXmIBfQqwrdSF8.Mc4V/h87mZsX5kOdBDm2846BiBobqti'),
(20, '', 'wfefdwecxdwxdwedf', '$2a$10$nlf4K2ZhZq3biYSoJrRw8.fkI/9kDDIpLDneKcU6CqsmLv55FFtEK'),
(21, 'csfbvdgtbdbrsdvc', 'asdaefrsbvsbvdc', '$2a$10$rYW3I0evOrbFFwk57VIQve/ISKxItkGNUSCzjJRqVnjz.Q90079Dy'),
(22, '', '3;refdok;f', '$2a$10$lmVg17ayyqizGNyu3.kqd.ump4Cl4UO/O9FoOmWUif3qTD9AySDiO'),
(23, '', 'cdscscsdc', '$2a$10$ZOrJ3dwXHHoEqyQJ4w41pOukjDnkasjogBoOqujl1jPVJX44yVVr.'),
(24, 'frvdfvdcvd', 'cdscscsdc', '$2a$10$kM4AmwtmPZmnQAwVFVBE8OwHWOSV6gxiaoNDjnirZdWihsHdMkN6i'),
(25, 'frvdfvdcvd', '', '$2a$10$feiHxtcLsxsc0cBhdQhMbuWEu3WLt4nNaPeMmpGfHrZ7lvSrDtJwW'),
(26, '', 'dgfergrgr', '$2a$10$VjAuT0GgK0lNG6lFXjubzeNUZ7xt.DhmZSQtyrBR16WaPM5NKkBX2'),
(27, '', 'rgfergergregfregf', '$2a$10$f47TElZl6.cmgv2k3GLRdujQuxwDmxJv9WWIxadTbnSekWhQ/ps/.'),
(28, '', 'fsrfsrfsrffsfsrf', '$2a$10$q/MMQZNPo2C90ZwOm4yndu24Ha5JFq1koZgcrg2Ssbnl4qmh9zIni'),
(29, '', 'fsrfsrfsrffsfsrf', '$2a$10$Qc1PN3tjIJqJ.ckyXrKZo.gXZIkbLuM9.u3GHEL05DXdYzqVZRvXi'),
(30, 'vcerferfr', 'rffdwedwf', '$2a$10$WqkmlRresddazQ2RSBAV8eyXdcaAPxyh1GAADFCnFWhcg8lrbUR7O'),
(31, '', 'wefewfewf', '$2a$10$ooFLQXTKYpiAg2RTwzpqouPXthWIssQ.gTObDHLd3bph/zMmAwy9a'),
(32, '', 'ffrwefwefewfewefewfewf', '$2a$10$JyRnB0S8YO9BEOid/FSxvu3t.QSICE7RAz4qFygSqUH.JUDRjJngK'),
(33, 'fwefwefwefewf', '', '$2a$10$kT/4ltqOg5TdzqRMaFZ7SOmRCL5tE0J5p9zYreZmtYzuhAByMMOtO'),
(34, 'fwefwefwefewf', 'rfwfw', '$2a$10$A21UHiYp.k6HzsgEK78CVuZh6BgCcC05SzGGHCK8eBwDFnyCfz7oi'),
(35, 'fwefwefwefewf', 'rfwfw', '$2a$10$P.gNF5v1pGLvPRazGPJeReCoe1tLmq4YtyfvGzsWqsM273Jo/1C1S'),
(36, 'fwefwefwefewf', 'rfwfw', '$2a$10$xrsCg1wrQSsGOAYuiVp6xeSSe2haNQZfb9WG2JxlFmKbZVAWqB4Y.'),
(37, 'wefwefewfwe', 'fwefwef', '$2a$10$xTuEU32yOQWIEESMsQIL8OgxKr/niRUCY5jkl/hJCcMPZNLCWln/q'),
(38, 'fwefefewf', 'fsderwef', '$2a$10$r.5CCtaSRlexGRN0HXnrPumZQMACQXw/dIqOlier.hdSLrP2mIMyu'),
(39, 'gsrgsdrfgs', 'erfsegfs', '$2a$10$rcqedxDYw4i8JFWhyn65je9PjuON5w4tgmB4/b2kN3mpJGPL4QSNO'),
(40, 'wefwefwef', 'frefwefwefew', ''),
(41, 'gsrgrsgr', 'sfgsrg', '$2a$10$wq3RlUEoJrnAhe.ARv3inuPdpZ1wX5iclJOgsAhWYK2Xz0PhvKjve'),
(42, 'gdgrgsge', 'dgrfdrg', '$2a$10$TjYAF74J5hQgh1Ezw1tTd.7xsqGHk2F.QCR5GF5KIYFB4RMWgoX4S'),
(43, 'gegrgegeg', 'gergerger', '$2a$10$AEMEWmuzSkPEXJH4VmrEbuWbFvmxnsAaRnN.gTKiBMtn0HTzxOg.2'),
(44, 'gegrgegeg', 'gergerger', '$2a$10$CUqw6iTLmj057fvuIWnj2.4C1D...S9vssSDYCLQwJ3uom6FD6vPK'),
(45, 'butcher', 'mateolavandeiracsi@gmail.com', '$2a$10$/eVvQwckPoTkhEMlj62zHuhz0MF1dVQ8BbJa1YOFlnIiPRtm8rbta'),
(46, 'butcher', 'mateolavandeiracsi@gmail.com', '$2a$10$tKDnHVDNsVD1cIuvzFVNJuezP3LlGYEA4o1QzSVAVIc0cUYGCMusy'),
(47, 'jhgkjgblj', 'lavandeiram@udesa.edu.ar', '$2a$10$Si8Ah/vV7bzMJ2G18Kv8XefFvAjlOJ6fPe/5Bhq0QoGkcnya0ho7O'),
(48, 'butcher', 'reterere', '$2a$10$QlW1vOvVwNNwqN7Vj0kjFu8Hzu.VGl4p7bMEeC/0giXPJbNxJdm9S'),
(49, 'butcher', 'dallott', '$2a$10$FRCypTMtCtM96gZ.nMPEj.b2O5Hrw8OQnz3mthPsUaB0Ph2B8M4Na'),
(50, 'butcher', 'mateolavandeiracsi@gmail.com', '$2a$10$k/dyOCTZQiskVdx27RmJbObnm6x/6tf31JTZzFIi29OfVoKfbirZW'),
(51, 'butcher', 'fffff', '$2a$10$2WInGS5QlqTCq7OEkKFkZO9LBCeCXsJJCMpUOIxTfUzIMG2AtCYkO'),
(52, 'butcher', 'fffff', '$2a$10$E1PEUCG.Nvw7Cwduiy4h8uIEkhNTcAzTrRKV94U8O9650ZJIxpSrK'),
(53, 'hgjfvk', 'mateolavandeiracsi@gmail.com', '$2a$10$O4SHUUZcNbTDZTMEYKeOpeJIwmLxyRtUElYnWiPYr0KJ44wAHrRRy'),
(54, 'hgjfvk', 'dallowewew', '$2a$10$s84Yner5VGEOAi9PYefif.ENaM1C9aWg4GIi2DvEfSPql8/DqIxnu'),
(55, 'hgjfvk', 'fffff', '$2a$10$TifkpQLjEWTKSqOBZ9QxZ.w0qCZny7P3OleV.DELuV92SMzHYhskK'),
(56, 'frgergverg', 'gegerg', '$2a$10$pT8AFarZlUqHbSze9hRrI.eKHvLX9g68KtL/0eAHwrC8CD4ASr2Ge'),
(57, 'ergerg', 'gregerg', '$2a$10$VVOAsxQpd9KdX0TN3kQ7Ge0/C1kpe0mp0D1G4eTXRT3EuP3Knkc3q'),
(58, 'ergerg', 'gregerg', '$2a$10$yidjJun/b3MdOlJMbpHgseyerKqtJFZN4ilYBxcyFOXv7cfLUpRRm'),
(59, 'ergerg', 'gregerg', ''),
(60, 'ergerg', 'gregerg', '$2a$10$GjOPGSmKo8qka5X9P4NrZuUOkIAXJf/3vavUQqqwdSvcBVvOglflW'),
(61, 'ergerg', '', '$2a$10$db/5oFnKDzsjvTc1MZO5iuWInW2tZnkRQKVf00OrP8znRHTwMWDh6'),
(62, 'ergerg', 'mateolavandeiracsi@gmail.com', '$2a$10$abRSXpA8vhwcpzE84WWuHOFDeNNGrUfdqJvszwqSQ1DcbgKKCSH3q'),
(63, 'grtgerg', 'mateolavandeiracsi@gmail.com', '$2a$10$qN4nMTgWUEMF56Sloeq.x..2rON/6mb8N82rAZdIqyX0/WrdSX3AO'),
(64, 'kmnknmk', 'mateolavandeiracsi@gmail.com', '$2a$10$v53Ng2EFc6hqFQxHD0zUkuC8zAxUUnLVbqlAQ6Vq72JLJA9KNdE7K'),
(65, 'fvdfververv', 'bkjnkjnl', '$2a$10$XXo0ZKmudZ8aaNpmYanp/O6Inm1UyEU2qE/Sp6fCKmr2HMhCxD8q2');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
