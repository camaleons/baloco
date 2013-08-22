-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-06-2013 a las 20:42:24
-- Versión del servidor: 5.1.36
-- Versión de PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `baloco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `cedula` bigint(20) NOT NULL,
  `p_apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `s_apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `clientes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_has_codeudor`
--

CREATE TABLE IF NOT EXISTS `clientes_has_codeudor` (
  `clientes_cedula` bigint(20) NOT NULL,
  `codeudor_cedula` bigint(20) NOT NULL,
  PRIMARY KEY (`clientes_cedula`,`codeudor_cedula`),
  KEY `fk_clientes_has_codeudor_codeudor1` (`codeudor_cedula`),
  KEY `fk_clientes_has_codeudor_clientes1` (`clientes_cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `clientes_has_codeudor`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_has_credito`
--

CREATE TABLE IF NOT EXISTS `clientes_has_credito` (
  `clientes_cedula` bigint(20) NOT NULL,
  `credito_n_tarjeta` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`clientes_cedula`,`credito_n_tarjeta`),
  KEY `fk_clientes_has_credito_credito1` (`credito_n_tarjeta`),
  KEY `fk_clientes_has_credito_clientes1` (`clientes_cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `clientes_has_credito`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_has_empresa`
--

CREATE TABLE IF NOT EXISTS `clientes_has_empresa` (
  `clientes_cedula` bigint(20) NOT NULL,
  `empresa_nit` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`clientes_cedula`,`empresa_nit`),
  KEY `fk_clientes_has_empresa_empresa1` (`empresa_nit`),
  KEY `fk_clientes_has_empresa_clientes` (`clientes_cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `clientes_has_empresa`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codeudor`
--

CREATE TABLE IF NOT EXISTS `codeudor` (
  `cedula` bigint(20) NOT NULL,
  `p_apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `s_apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `codeudor`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

CREATE TABLE IF NOT EXISTS `credito` (
  `n_tarjeta` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `valor` double DEFAULT NULL,
  `porcentaje` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clave` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `prenda` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`n_tarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `credito`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `nit` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `razon_social` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dia_pago` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desprendible` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcar la base de datos para la tabla `empresa`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `clientes_has_codeudor`
--
ALTER TABLE `clientes_has_codeudor`
  ADD CONSTRAINT `fk_clientes_has_codeudor_clientes1` FOREIGN KEY (`clientes_cedula`) REFERENCES `clientes` (`cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_has_codeudor_codeudor1` FOREIGN KEY (`codeudor_cedula`) REFERENCES `codeudor` (`cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes_has_credito`
--
ALTER TABLE `clientes_has_credito`
  ADD CONSTRAINT `fk_clientes_has_credito_clientes1` FOREIGN KEY (`clientes_cedula`) REFERENCES `clientes` (`cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_has_credito_credito1` FOREIGN KEY (`credito_n_tarjeta`) REFERENCES `credito` (`n_tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes_has_empresa`
--
ALTER TABLE `clientes_has_empresa`
  ADD CONSTRAINT `fk_clientes_has_empresa_clientes` FOREIGN KEY (`clientes_cedula`) REFERENCES `clientes` (`cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_has_empresa_empresa1` FOREIGN KEY (`empresa_nit`) REFERENCES `empresa` (`nit`) ON DELETE NO ACTION ON UPDATE NO ACTION;
