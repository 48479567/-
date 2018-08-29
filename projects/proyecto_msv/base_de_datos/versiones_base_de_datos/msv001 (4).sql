-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2018 a las 19:14:01
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
  `cod_actor` varchar(13) NOT NULL,
  `nom_actor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`cod_actor`, `nom_actor`, `cod_ele_perspectiva`) VALUES
('act1', 'actor1', 'cep1'),
('act2', 'actor2', 'cep2'),
('act3', 'actor3', 'cep1'),
('act4', 'actor4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `cod_archivo` varchar(30) NOT NULL,
  `nom_archivo` varchar(80) NOT NULL,
  `cod_tip_archivo` varchar(30) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`cod_archivo`, `nom_archivo`, `cod_tip_archivo`, `cod_proyecto`) VALUES
('arc1', 'archivo 1', 'cta1', 'pry1'),
('arc2', 'archivo 2', 'cta3', 'pry1'),
('arc3', 'archivo 3', 'cta4', 'pry2'),
('arc4', 'archivo 4', 'cta2', 'pry2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `cod_beneficiario` varchar(30) NOT NULL,
  `nom_beneficiario` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `beneficiarios`
--

INSERT INTO `beneficiarios` (`cod_beneficiario`, `nom_beneficiario`, `cod_ele_perspectiva`) VALUES
('ben1', 'beneficiario 1', 'cep1'),
('ben2', 'beneficiario 2', 'cep2'),
('ben3', 'beneficiario 3', 'cep1'),
('ben4', 'beneficiario 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirigentes`
--

CREATE TABLE `dirigentes` (
  `cod_dirigente` varchar(30) NOT NULL,
  `nom_dirigente` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dirigentes`
--

INSERT INTO `dirigentes` (`cod_dirigente`, `nom_dirigente`, `cod_ele_perspectiva`) VALUES
('drg1', 'dirigente 1', 'cep1'),
('drg2', 'dirigente 2', 'cep2'),
('drg3', 'dirigente 3', 'cep1'),
('drg4', 'dirigente 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos_perspectiva`
--

CREATE TABLE `elementos_perspectiva` (
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `elementos_perspectiva`
--

INSERT INTO `elementos_perspectiva` (`cod_ele_perspectiva`) VALUES
('cep1'),
('cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `cod_equipo` varchar(30) NOT NULL,
  `npm_equipo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`cod_equipo`, `npm_equipo`) VALUES
('equ1', 'equipo 1'),
('equ2', 'equipo 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `cod_insumo` varchar(30) NOT NULL,
  `nom_insumo` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`cod_insumo`, `nom_insumo`, `cod_ele_perspectiva`) VALUES
('ins1', 'insumo 1', 'cep1'),
('ins2', 'insump 2', 'cep2'),
('ins3', 'insumo 3', 'cep1'),
('ins4', 'insumo 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perspectivas`
--

CREATE TABLE `perspectivas` (
  `cod_perspectiva` varchar(30) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perspectivas`
--

INSERT INTO `perspectivas` (`cod_perspectiva`, `cod_ele_perspectiva`) VALUES
('per1', 'cep1'),
('per2', 'cep1'),
('per3', 'cep2'),
('per4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perspectivas_generales`
--

CREATE TABLE `perspectivas_generales` (
  `cod_per_general` varchar(30) NOT NULL,
  `nom_per_genral` varchar(80) NOT NULL,
  `cod_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perspectivas_generales`
--

INSERT INTO `perspectivas_generales` (`cod_per_general`, `nom_per_genral`, `cod_perspectiva`) VALUES
('cpg1', 'perspectiva general 1', 'per1'),
('cpg2', 'perspectiva general 2', 'per2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicios`
--

CREATE TABLE `productos_servicios` (
  `cod_pro_ser` varchar(30) NOT NULL,
  `nom_pro_ser` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_servicios`
--

INSERT INTO `productos_servicios` (`cod_pro_ser`, `nom_pro_ser`, `cod_ele_perspectiva`) VALUES
('cps1', 'producto o servicio 1', 'cep1'),
('cps2', 'producto o servicio 2', 'cep2'),
('cps3', 'producto o servicio 3', 'cep1'),
('cps4', 'producto o servicio 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cod_proveedor` varchar(30) NOT NULL,
  `nom_proveedor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`cod_proveedor`, `nom_proveedor`, `cod_ele_perspectiva`) VALUES
('prv1', 'proveedor 1', 'cep1'),
('prv2', 'proveedor 2', 'cep2'),
('prv3', 'proveedor 3', 'cep1'),
('prv4', 'proveedor 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `cod_proyecto` varchar(30) NOT NULL,
  `nom_proyecto` varchar(80) NOT NULL,
  `cod_equipo` varchar(30) NOT NULL,
  `cod_perspecitva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`cod_proyecto`, `nom_proyecto`, `cod_equipo`, `cod_perspecitva`) VALUES
('pry1', 'proyecto 1', 'equ1', 'per1'),
('pry2', 'proyecto 2', 'equ2', 'per1'),
('pry3', 'proyecto 3', 'equ1', 'per2'),
('pry4', 'proyecto 4', 'equ2', 'per2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reguladores`
--

CREATE TABLE `reguladores` (
  `cod_regulador` varchar(30) NOT NULL,
  `nom_regulador` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reguladores`
--

INSERT INTO `reguladores` (`cod_regulador`, `nom_regulador`, `cod_ele_perspectiva`) VALUES
('reg1', 'regulador 1', 'cep1'),
('reg2', 'regulador 2', 'cep2'),
('reg3', 'regulador 3', 'cep1'),
('reg4', 'regulador 4', 'cep2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `cod_rol` varchar(30) NOT NULL,
  `nom_rol` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`cod_rol`, `nom_rol`) VALUES
('rol1', 'gestor'),
('rol2', 'co-gestor'),
('rol3', 'analista'),
('rol4', 'espectador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `cod_rol_usu` varchar(30) NOT NULL,
  `cod_rol` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`cod_rol_usu`, `cod_rol`, `cod_usuario`) VALUES
('ru1', 'rol1', 'usu1'),
('ru2', 'rol2', 'usu1'),
('ru3', 'rol3', 'usu1'),
('ru4', 'rol3', 'usu3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_archivo`
--

CREATE TABLE `tipos_archivo` (
  `cod_tip_archivo` varchar(30) NOT NULL,
  `nom_tip_archivo` varchar(80) NOT NULL,
  `nom_ext_tip_archivo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_archivo`
--

INSERT INTO `tipos_archivo` (`cod_tip_archivo`, `nom_tip_archivo`, `nom_ext_tip_archivo`) VALUES
('cta1', 'tipo de archivo 1', 'pdf'),
('cta2', 'tipo de archivo 2', 'doc'),
('cta3', 'tipo de archivo 3', 'png'),
('cta4', 'tipo de archivo 4', 'jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` varchar(30) NOT NULL,
  `cor_usuario` varchar(30) NOT NULL,
  `nom_usuario` varchar(60) NOT NULL,
  `pas_usuario` varchar(40) NOT NULL,
  `cod_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cod_usuario`, `cor_usuario`, `nom_usuario`, `pas_usuario`, `cod_rol`) VALUES
('usu1', 'usuario1@sistemas.com', 'usuario1', '123456', 'rol1'),
('usu2', 'usuario2@sistemas.com', 'usuario2', '123456789', 'rol2'),
('usu3', 'usuario3@sistemas.com', 'usuario3', '123456789', 'rol3'),
('usu4', 'usuario4@sistemas.com', 'usuario4', '123456789', 'rol4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_equipo`
--

CREATE TABLE `usu_equipo` (
  `cod_usu_equ` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL,
  `cod_equipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usu_equipo`
--

INSERT INTO `usu_equipo` (`cod_usu_equ`, `cod_usuario`, `cod_equipo`) VALUES
('eu1', 'usu1', 'equ1'),
('eu2', 'usu2', 'equ1'),
('eu3', 'usu3', 'equ2'),
('eu4', 'usu4', 'equ2');

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
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`cod_archivo`),
  ADD KEY `cod_tip_archivo` (`cod_tip_archivo`,`cod_proyecto`),
  ADD KEY `cod_tip_archivo_2` (`cod_tip_archivo`,`cod_proyecto`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

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
  ADD KEY `cod_usuario` (`npm_equipo`);

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
-- Indices de la tabla `perspectivas_generales`
--
ALTER TABLE `perspectivas_generales`
  ADD PRIMARY KEY (`cod_per_general`),
  ADD KEY `cod_perspectiva` (`cod_perspectiva`);

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
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`cod_rol_usu`),
  ADD KEY `cod_rol` (`cod_rol`,`cod_usuario`),
  ADD KEY `cod_usuario` (`cod_usuario`);

--
-- Indices de la tabla `tipos_archivo`
--
ALTER TABLE `tipos_archivo`
  ADD PRIMARY KEY (`cod_tip_archivo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD KEY `cod_rol` (`cod_rol`);

--
-- Indices de la tabla `usu_equipo`
--
ALTER TABLE `usu_equipo`
  ADD PRIMARY KEY (`cod_usu_equ`),
  ADD KEY `cod_usuario` (`cod_usuario`,`cod_equipo`),
  ADD KEY `cod_equipo` (`cod_equipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actores`
--
ALTER TABLE `actores`
  ADD CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`cod_tip_archivo`) REFERENCES `tipos_archivo` (`cod_tip_archivo`),
  ADD CONSTRAINT `archivos_ibfk_2` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyectos` (`cod_proyecto`);

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
-- Filtros para la tabla `perspectivas_generales`
--
ALTER TABLE `perspectivas_generales`
  ADD CONSTRAINT `perspectivas_generales_ibfk_1` FOREIGN KEY (`cod_perspectiva`) REFERENCES `perspectivas` (`cod_perspectiva`);

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
-- Filtros para la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`cod_rol`) REFERENCES `roles` (`cod_rol`),
  ADD CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`);

--
-- Filtros para la tabla `usu_equipo`
--
ALTER TABLE `usu_equipo`
  ADD CONSTRAINT `usu_equipo_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  ADD CONSTRAINT `usu_equipo_ibfk_2` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
