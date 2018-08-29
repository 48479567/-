-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2018 a las 03:55:03
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `msv001`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `cod_actor` int(10) NOT NULL,
  `nom_actor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `cod_beneficiario` int(10) NOT NULL,
  `nom_beneficiario` varchar(60) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirigentes`
--

CREATE TABLE `dirigentes` (
  `cod_dirigente` int(10) NOT NULL,
  `nom_dirigente` varchar(60) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos_perspectiva`
--

CREATE TABLE `elementos_perspectiva` (
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `cod_equipo` int(10) NOT NULL,
  `cod_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `cod_insumo` int(10) NOT NULL,
  `nom_insumo` varchar(80) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perspectivas`
--

CREATE TABLE `perspectivas` (
  `cod_perspectiva` int(10) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicios`
--

CREATE TABLE `productos_servicios` (
  `cod_pro_ser` int(10) NOT NULL,
  `nom_pro_ser` varchar(80) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cod_proveedor` int(10) NOT NULL,
  `nom_proveedor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `cod_proyecto` int(10) NOT NULL,
  `nom_proyecto` varchar(80) NOT NULL,
  `cod_equipo` int(10) NOT NULL,
  `cod_perspecitva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reguladores`
--

CREATE TABLE `reguladores` (
  `cod_regulador` int(10) NOT NULL,
  `nom_regulador` varchar(80) NOT NULL,
  `cod_ele_perspectiva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `cod_rol` int(10) NOT NULL,
  `nom_rol` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` int(10) NOT NULL,
  `nom_usuario` varchar(60) NOT NULL,
  `pas_usuario` varchar(40) NOT NULL,
  `cod_rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`cod_actor`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`),
  ADD KEY `cod_ele_perspectiva_2` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`cod_beneficiario`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `dirigentes`
--
ALTER TABLE `dirigentes`
  ADD PRIMARY KEY (`cod_dirigente`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `elementos_perspectiva`
--
ALTER TABLE `elementos_perspectiva`
  ADD PRIMARY KEY (`cod_ele_perspectiva`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`cod_equipo`),
  ADD KEY `cod_usuario` (`cod_usuario`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`cod_insumo`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `perspectivas`
--
ALTER TABLE `perspectivas`
  ADD PRIMARY KEY (`cod_perspectiva`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD PRIMARY KEY (`cod_pro_ser`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`cod_proveedor`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`cod_proyecto`),
  ADD KEY `cod_equipo` (`cod_equipo`,`cod_perspecitva`),
  ADD KEY `cod_perspecitva` (`cod_perspecitva`);

--
-- Indices de la tabla `reguladores`
--
ALTER TABLE `reguladores`
  ADD PRIMARY KEY (`cod_regulador`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`cod_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD KEY `cod_rol` (`cod_rol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actores`
--
ALTER TABLE `actores`
  ADD CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD CONSTRAINT `beneficiarios_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `dirigentes`
--
ALTER TABLE `dirigentes`
  ADD CONSTRAINT `dirigentes_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`);

--
-- Filtros para la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD CONSTRAINT `insumos_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `perspectivas`
--
ALTER TABLE `perspectivas`
  ADD CONSTRAINT `perspectivas_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD CONSTRAINT `productos_servicios_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`),
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`cod_perspecitva`) REFERENCES `perspectivas` (`cod_perspectiva`);

--
-- Filtros para la tabla `reguladores`
--
ALTER TABLE `reguladores`
  ADD CONSTRAINT `reguladores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cod_rol`) REFERENCES `roles` (`cod_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
