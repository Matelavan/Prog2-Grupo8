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
-- Base de datos: ecommerce
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla productos
--
CREATE SCHEMA ecommerce

USE ecommerce

CREATE TABLE productos (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  titulo varchar(30) DEFAULT '',
  user_id int(10) NOT NULL,
  descripcion varchar(85) DEFAULT NULL,
  imagen varchar(1000) DEFAULT NULL,
  createdAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deletedAt timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) 

--
-- Volcado de datos para la tabla productos
--

INSERT INTO productos (id, titulo, user_id, descripcion, imagen, createdAt, updatedAt, deletedAt) VALUES
(DEFAULT, 'Cafetera', 1, 'Esta cafetera tiene la funcion de frio calor.', 'img-cafetera-moulinex.jpg', DEFAULT, DEFAULT, NULL),
(DEFAULT, 'Celular', 2, 'Este celular es el mas avanzado del mercado', 'img-samsung-galaxy-s10.jpg', DEFAULT, DEFAULT, NULL),
(DEFAULT, 'Laptop', 3, 'La laptop con el procesador mas rapido!.', 'img-macbook-pro-2019.jpg', DEFAULT, DEFAULT, NULL),
(DEFAULT, 'Televisor', 4, 'La TV con mejor resolucion.', 'img-tv-samsung-smart.jpg', DEFAULT, DEFAULT, NULL),
(DEFAULT, 'Secador', 5, 'Este secador, seca el pelo en 5 minutos.', 'img-secador.jpg', DEFAULT, DEFAULT, NULL),
(DEFAULT, 'Lavarropas',3, 'El lavarropas con mayor frecuencia del mercado.', 'img-lavarropas.jpg', DEFAULT, DEFAULT, NULL);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla users
--

CREATE TABLE users (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(100) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  password varchar(255) DEFAULT NULL
) 

--
-- Volcado de datos para la tabla users
--

INSERT INTO users (id, nombre, email, password) VALUES

(DEFAULT, 'Marcelo', 'gallardo', '$2a$10$kM4AmwtmPZmnQAwVFVBE8OwHWOSV6gxiaoNDjnirZdWihsHdMkN6i'),
(DEFAULT, 'gustavo', 'costas', '$2a$10$feiHxtcLsxsc0cBhdQhMbuWEu3WLt4nNaPeMmpGfHrZ7lvSrDtJwW'),
(DEFAULT, 'scocco' , 'nacho', '$2a$10$VjAuT0GgK0lNG6lFXjubzeNUZ7xt.DhmZSQtyrBR16WaPM5NKkBX2'),
(DEFAULT, 'marcelo', 'barovero', '$2a$10$f47TElZl6.cmgv2k3GLRdujQuxwDmxJv9WWIxadTbnSekWhQ/ps/.'),
(DEFAULT, 'pisculichi', 'golazo', '$2a$10$q/MMQZNPo2C90ZwOm4yndu24Ha5JFq1koZgcrg2Ssbnl4qmh9zIni');