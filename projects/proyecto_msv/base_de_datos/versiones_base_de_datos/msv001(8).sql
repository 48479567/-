-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2018 a las 21:13:02
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
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `cod_chat` int(12) NOT NULL,
  `tiempo_mensaje` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nom_usuario` varchar(60) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`cod_chat`, `tiempo_mensaje`, `nom_usuario`, `mensaje`, `cod_proyecto`) VALUES
(17, '2018-09-05 23:44:07', 'usuario2', 'esto ahora si funciona', 'pry3'),
(18, '2018-09-05 23:45:52', 'usuario2', 'esot es el comienzo del formato de arranque para el desarrollo del chat', 'pry1'),
(19, '2018-09-05 23:46:03', 'usuario1', 'si tienes razon', 'pry1'),
(20, '2018-09-05 23:46:19', 'usuario1', 'esto funciona de maravilla', 'pry1'),
(21, '2018-09-05 23:50:48', 'usuario1', 'ahora el chat funciona', 'pry1'),
(22, '2018-09-05 23:53:58', 'usuario1', 'esto aumenta', 'pry1'),
(23, '2018-09-05 23:54:02', 'usuario1', 'genial', 'pry1'),
(24, '2018-09-05 23:54:08', 'usuario1', 'ahora como se hace', 'pry1'),
(25, '2018-09-05 23:54:15', 'usuario1', 'estuvo esto genial', 'pry1'),
(26, '2018-09-05 23:54:23', 'usuario1', 'genial', 'pry1'),
(27, '2018-09-05 23:54:25', 'usuario1', 'genial', 'pry1'),
(28, '2018-09-05 23:54:28', 'usuario1', 'genia', 'pry1'),
(29, '2018-09-05 23:54:34', 'usuario1', 'genial', 'pry1'),
(30, '2018-09-05 23:56:12', 'usuario1', 'esto esta genial', 'pry1'),
(31, '2018-09-06 00:05:40', 'usuario1', 'fff', 'pry1'),
(32, '2018-09-06 00:05:50', 'usuario1', 'fff', 'pry1'),
(33, '2018-09-06 00:07:16', 'usuario1', 'dddd', 'pry1'),
(34, '2018-09-06 00:07:43', 'usuario1', 'hola', 'pry1'),
(35, '2018-09-06 00:16:02', 'usuario1', 'hola\n', 'pry1'),
(36, '2018-09-06 00:16:42', 'usuario1', 'genial\ndd', 'pry1'),
(37, '2018-09-06 00:17:44', 'usuario1', 'ggg', 'pry1'),
(38, '2018-09-06 00:18:59', 'usuario1', 'genial esto funciona', 'pry1'),
(39, '2018-09-06 00:20:36', 'usuario1', 'hola', 'pry1'),
(40, '2018-09-06 00:20:48', 'usuario1', 'genial esto funciona de maravilla', 'pry1'),
(41, '2018-09-06 00:21:06', 'usuario1', 'wao', 'pry1'),
(42, '2018-09-06 00:21:52', 'usuario1', 'lista de los mejores', 'pry1'),
(43, '2018-09-06 00:22:10', 'usuario1', 'esto funciona de maravilla', 'pry1'),
(44, '2018-09-06 00:23:17', 'usuario1', 'wao', 'pry1'),
(45, '2018-09-06 00:24:21', 'usuario2', 'hola', 'pry1'),
(46, '2018-09-06 00:26:57', 'usuario2', 'como es esto', 'pry1'),
(47, '2018-09-06 00:27:48', 'usuario1', '', 'pry1'),
(48, '2018-09-06 00:27:49', 'usuario1', '', 'pry1'),
(49, '2018-09-06 00:27:51', 'usuario1', '', 'pry1'),
(50, '2018-09-06 00:27:56', 'usuario1', '', 'pry1'),
(51, '2018-09-06 00:28:07', 'usuario1', '', 'pry1'),
(52, '2018-09-06 00:28:08', 'usuario1', '', 'pry1'),
(53, '2018-09-06 00:29:04', 'usuario1', 'genial', 'pry1'),
(54, '2018-09-06 00:29:13', 'usuario1', 'hola', 'pry1'),
(55, '2018-09-06 00:29:31', 'usuario2', 'genial', 'pry1'),
(56, '2018-09-06 00:30:20', 'usuario2', 'genial', 'pry1'),
(57, '2018-09-06 00:30:49', 'usuario2', 'genial', 'pry1'),
(58, '2018-09-06 00:32:59', 'usuario1', 'genial', 'pry1'),
(59, '2018-09-06 00:33:08', 'usuario1', 'ahora si funciona de maravilla', 'pry1'),
(60, '2018-09-06 00:33:15', 'usuario1', 'genial', 'pry1'),
(61, '2018-09-06 00:33:34', 'usuario1', 'como hacer esto de mejor forma', 'pry1'),
(62, '2018-09-06 00:33:38', 'usuario1', 'genial', 'pry1'),
(63, '2018-09-06 00:34:00', 'usuario1', 'genial', 'pry1'),
(64, '2018-09-06 00:34:28', 'usuario1', 'wao', 'pry1'),
(65, '2018-09-06 00:38:13', 'usuario1', 'genial', 'pry1'),
(66, '2018-09-06 00:39:20', 'usuario1', 'wao', 'pry1'),
(67, '2018-09-06 00:39:33', 'usuario1', 'genial', 'pry1'),
(68, '2018-09-06 00:40:35', 'usuario1', 'genial', 'pry1'),
(69, '2018-09-06 00:40:53', 'usuario1', 'genial', 'pry1'),
(70, '2018-09-06 00:41:00', 'usuario1', 'ahora esto si funciona', 'pry1'),
(71, '2018-09-06 00:41:06', 'usuario1', 'tr', 'pry1'),
(72, '2018-09-06 00:41:09', 'usuario1', 'tmr', 'pry1'),
(73, '2018-09-06 00:41:16', 'usuario1', 'ddd', 'pry1'),
(74, '2018-09-06 00:48:43', 'usuario1', 'ahora esto si funciona', 'pry1'),
(75, '2018-09-06 00:48:52', 'usuario1', 'genial', 'pry1'),
(76, '2018-09-06 00:49:25', 'usuario1', 'genial', 'pry1'),
(77, '2018-09-06 00:50:31', 'usuario1', 'genial', 'pry1'),
(78, '2018-09-06 00:50:38', 'usuario1', 'ddd', 'pry1'),
(79, '2018-09-06 00:51:29', 'usuario1', 'control', 'pry1'),
(80, '2018-09-06 00:51:33', 'usuario1', 'genial', 'pry1'),
(81, '2018-09-06 00:51:41', 'usuario1', 'genial', 'pry1'),
(82, '2018-09-06 00:51:55', 'usuario1', 'genial', 'pry1'),
(83, '2018-09-06 00:52:04', 'usuario1', 'genial', 'pry1'),
(84, '2018-09-06 00:52:18', 'usuario2', 'wao', 'pry1'),
(85, '2018-09-06 00:52:46', 'usuario2', 'genial', 'pry1'),
(86, '2018-09-06 00:53:35', 'usuario1', 'genial', 'pry1'),
(87, '2018-09-06 00:53:39', 'usuario1', 'wao', 'pry1'),
(88, '2018-09-06 00:53:56', 'usuario2', 'mira esto', 'pry1'),
(89, '2018-09-06 00:54:00', 'usuario2', 'wao', 'pry1'),
(90, '2018-09-06 00:56:36', 'usuario2', 'hola', 'pry1'),
(91, '2018-09-06 00:57:23', 'usuario2', 'mira ahora como funciona esto', 'pry3'),
(92, '2018-09-06 00:57:26', 'usuario2', 'genial', 'pry3'),
(93, '2018-09-06 00:57:30', 'usuario2', 'wao', 'pry3'),
(94, '2018-09-06 00:57:37', 'usuario2', 'como funciona esto', 'pry3'),
(95, '2018-09-06 00:57:43', 'usuario2', 'esto es estupendo', 'pry3'),
(96, '2018-09-06 00:59:36', 'usuario1', 'ahora si funciona', 'pry1'),
(97, '2018-09-06 01:05:25', 'usuario1', 'wao', 'pry1'),
(98, '2018-09-07 22:46:36', 'usuario1', 'esto es la generacion de codigo fuente', 'pry1'),
(99, '2018-09-08 00:05:40', 'usuario1', 'ggg', 'pry1'),
(100, '2018-09-08 00:07:14', 'usuario1', 'hhh', 'pry1'),
(101, '2018-09-08 00:07:59', 'usuario1', 'hola', 'pry1'),
(102, '2018-09-08 00:08:11', 'usuario1', '', 'pry1'),
(103, '2018-09-10 06:06:28', 'usuario1', 'tambien funciona', 'pry1'),
(104, '2018-09-10 06:07:03', 'usuario2', 'si esto funciona', 'pry1'),
(105, '2018-09-10 06:12:15', 'usuario2', '', 'pry1'),
(106, '2018-09-10 06:12:27', 'usuario2', '', 'pry1'),
(107, '2018-09-10 21:17:42', 'usuario2', 'holi', 'pry1'),
(108, '2018-09-10 21:20:04', 'usuario2', 'jjj', 'pry1'),
(109, '2018-09-10 21:22:05', 'usuario2', '44', 'pry1'),
(110, '2018-09-10 21:22:09', 'usuario2', '145', 'pry1'),
(111, '2018-09-10 21:23:43', 'usuario1', '454545', 'pry1'),
(112, '2018-09-10 21:23:48', 'usuario1', 'jkjkjkjk', 'pry1'),
(113, '2018-09-10 21:23:52', 'usuario1', 'jkjhhj', 'pry1'),
(114, '2018-09-10 21:23:55', 'usuario1', 'hjhjhj+', 'pry1'),
(115, '2018-09-10 21:23:58', 'usuario1', 'hjhjhj', 'pry1'),
(116, '2018-09-10 21:47:58', 'usuario2', '', 'pry1'),
(117, '2018-09-10 21:58:37', 'usuario2', '', 'pry1'),
(118, '2018-09-10 21:58:38', 'usuario2', '', 'pry1'),
(119, '2018-09-10 22:11:49', 'usuario2', '', 'pry1'),
(120, '2018-09-10 22:21:32', 'usuario3', 'mmm', 'pry2'),
(121, '2018-09-10 22:21:39', 'usuario3', 'lll', 'pry2'),
(122, '2018-09-10 22:21:42', 'usuario3', 'oooo', 'pry2'),
(123, '2018-09-10 22:21:49', 'usuario3', 'hhhh', 'pry2'),
(124, '2018-09-10 22:21:51', 'usuario3', 'kks', 'pry2'),
(125, '2018-09-10 22:21:57', 'usuario3', 'hhhh', 'pry2'),
(126, '2018-09-10 22:22:00', 'usuario3', 'yyyyyy', 'pry2'),
(127, '2018-09-10 22:29:33', 'usuario3', '', 'pry2'),
(128, '2018-09-10 22:37:02', 'usuario1', '123123132', 'pry3'),
(129, '2018-09-17 22:48:23', 'usuario1', 'hola', 'pry1'),
(130, '2018-09-19 05:47:54', 'usuario1', '', 'pry1'),
(131, '2018-09-19 22:04:23', 'usuario1', 'hola', 'pry1'),
(132, '2018-09-19 22:04:24', 'usuario1', 'xd', 'pry1'),
(133, '2018-09-19 22:04:24', 'usuario1', 'xd', 'pry1'),
(134, '2018-09-19 22:04:25', 'usuario1', 'xd', 'pry1'),
(135, '2018-09-19 22:04:26', 'usuario1', 'xd', 'pry1'),
(136, '2018-09-19 22:28:46', 'usuario1', 'dd', 'pry1'),
(137, '2018-09-19 22:28:55', 'usuario1', 'esto funciona bien', 'pry1'),
(138, '2018-09-19 22:34:19', 'usuario1', 'ddd', 'pry1'),
(139, '2018-09-19 22:34:52', 'usuario2', 'mira esto como funciona', 'pry1'),
(140, '2018-09-19 22:35:04', 'usuario1', 'esto funciona bien', 'pry1'),
(141, '2018-09-19 22:35:17', 'usuario2', 'ddd', 'pry1'),
(142, '2018-09-19 22:35:20', 'usuario2', 'dd', 'pry1'),
(143, '2018-09-19 22:35:22', 'usuario2', 'ddd', 'pry1'),
(144, '2018-09-19 22:35:24', 'usuario2', 'ddd77', 'pry1'),
(145, '2018-09-19 22:35:27', 'usuario2', 'ddd', 'pry1'),
(146, '2018-09-19 22:35:30', 'usuario2', 'dd', 'pry1'),
(147, '2018-09-19 22:35:34', 'usuario2', 'aaa', 'pry1'),
(148, '2018-09-19 22:35:37', 'usuario2', 'aaa', 'pry1'),
(149, '2018-09-19 22:35:40', 'usuario2', 's', 'pry1'),
(150, '2018-09-19 22:36:00', 'usuario1', 'ddd', 'pry1'),
(151, '2018-09-19 22:36:03', 'usuario1', 'fdff', 'pry1'),
(152, '2018-09-19 22:36:15', 'usuario1', 'fff7', 'pry1'),
(153, '2018-09-19 22:36:25', 'usuario2', 'ddd', 'pry1'),
(154, '2018-09-22 17:38:38', 'usuario1', 'esto funciona bien', 'pry1'),
(155, '2018-09-22 17:38:49', 'usuario1', 'dd', 'pry1'),
(156, '2018-09-22 17:52:54', 'usuario1', 'tmr', 'pry1'),
(157, '2018-09-22 18:58:07', 'usuario1', '122', 'pry1'),
(158, '2018-09-22 18:58:10', 'usuario1', '1112', 'pry1'),
(159, '2018-09-22 18:58:18', 'usuario1', '5445', 'pry1'),
(160, '2018-09-22 19:02:46', 'usuario1', 'esto es el formato que se debe mostrar', 'pry1');

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
-- Estructura de tabla para la tabla `per_usu`
--

CREATE TABLE `per_usu` (
  `cod_per_usu` varchar(30) NOT NULL,
  `cod_perspectiva` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `dom_proyecto` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`cod_proyecto`, `nom_proyecto`, `cod_equipo`, `dom_proyecto`) VALUES
('pry1', 'proyecto 1', 'equ1', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Text label=&quot;Text Here&quot; href=&quot;&quot; id=&quot;10&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;90&quot; y=&quot;60&quot; width=&quot;80&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Text Here&quot; href=&quot;&quot; id=&quot;20&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;40&quot; y=&quot;450&quot; width=&quot;80&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;'),
('pry2', 'proyecto 2', 'equ2', ''),
('pry3', 'proyecto 3', 'equ1', '<mxGraphModel as=\"model\">\r\n  <root>\r\n    <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n      <mxCell/>\r\n    </Diagram>\r\n    <Layer label=\"Default Layer\" id=\"1\">\r\n      <mxCell parent=\"0\"/>\r\n    </Layer>\r\n    <Shape label=\"Shape\" href=\"\" id=\"2\">\r\n      <mxCell style=\"cloud\" parent=\"1\" vertex=\"1\">\r\n        <mxGeometry x=\"490\" y=\"100\" width=\"80\" height=\"60\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Shape>\r\n    <Shape label=\"Shape\" href=\"\" id=\"3\">\r\n      <mxCell style=\"doubleEllipse\" parent=\"1\" vertex=\"1\">\r\n        <mxGeometry x=\"530\" y=\"230\" width=\"60\" height=\"60\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Shape>\r\n    <Shape label=\"Shape\" href=\"\" id=\"4\">\r\n      <mxCell style=\"cloud\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"380\" y=\"310\" width=\"80\" height=\"60\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Shape>\r\n    <Connector label=\"\" href=\"\" id=\"5\">\r\n      <mxCell edge=\"1\" parent=\"1\" source=\"2\" target=\"4\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Connector>\r\n    <Shape label=\"Shape\" href=\"\" id=\"6\">\r\n      <mxCell style=\"cloud\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"590\" y=\"140\" width=\"80\" height=\"60\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Shape>\r\n    <Connector label=\"\" href=\"\" id=\"7\">\r\n      <mxCell edge=\"1\" parent=\"1\" source=\"2\" target=\"6\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Connector>\r\n  </root>\r\n</mxGraphModel>\r\n'),
('pry4', 'proyecto 4', 'equ2', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_per`
--

CREATE TABLE `pro_per` (
  `cod_pro_per` varchar(30) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL,
  `cod_perspectiva` varchar(30) NOT NULL,
  `dom_perspectiva` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_per`
--

INSERT INTO `pro_per` (`cod_pro_per`, `cod_proyecto`, `cod_perspectiva`, `dom_perspectiva`) VALUES
('pro_per1', 'pry1', 'per1', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Text label=&quot;Text Here&quot; href=&quot;&quot; id=&quot;2&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;150&quot; y=&quot;180&quot; width=&quot;80&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Hola&amp;#xa;&quot; href=&quot;&quot; id=&quot;3&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;410&quot; y=&quot;110&quot; width=&quot;30&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;'),
('pro_per2', 'pry1', 'per2', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Text label=&quot;Text Here&quot; href=&quot;&quot; id=&quot;10&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;90&quot; y=&quot;60&quot; width=&quot;80&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_rol`
--

CREATE TABLE `pro_rol` (
  `cod_pro_rol` varchar(30) NOT NULL,
  `nom_pro_rol` varchar(60) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`cod_beneficiario`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`cod_chat`),
  ADD KEY `cod_tip_archivo` (`mensaje`,`cod_proyecto`),
  ADD KEY `cod_tip_archivo_2` (`mensaje`,`cod_proyecto`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

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
-- Indices de la tabla `per_usu`
--
ALTER TABLE `per_usu`
  ADD PRIMARY KEY (`cod_per_usu`),
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
  ADD KEY `cod_equipo` (`cod_equipo`);

--
-- Indices de la tabla `pro_per`
--
ALTER TABLE `pro_per`
  ADD PRIMARY KEY (`cod_pro_per`),
  ADD KEY `cod_perspectiva` (`cod_perspectiva`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

--
-- Indices de la tabla `pro_rol`
--
ALTER TABLE `pro_rol`
  ADD PRIMARY KEY (`cod_pro_rol`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `cod_chat` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

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
-- Filtros para la tabla `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyectos` (`cod_proyecto`);

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
-- Filtros para la tabla `per_usu`
--
ALTER TABLE `per_usu`
  ADD CONSTRAINT `per_usu_ibfk_1` FOREIGN KEY (`cod_perspectiva`) REFERENCES `perspectivas` (`cod_perspectiva`);

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
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`);

--
-- Filtros para la tabla `pro_per`
--
ALTER TABLE `pro_per`
  ADD CONSTRAINT `pro_per_ibfk_1` FOREIGN KEY (`cod_perspectiva`) REFERENCES `perspectivas` (`cod_perspectiva`),
  ADD CONSTRAINT `pro_per_ibfk_2` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyectos` (`cod_proyecto`);

--
-- Filtros para la tabla `pro_rol`
--
ALTER TABLE `pro_rol`
  ADD CONSTRAINT `pro_rol_ibfk_1` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyectos` (`cod_proyecto`);

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
