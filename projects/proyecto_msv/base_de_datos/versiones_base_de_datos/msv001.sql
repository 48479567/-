-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2018 a las 17:30:37
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

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
(258, '2018-10-02 21:52:32', 'usuario2', '123', 'pry2'),
(259, '2018-10-02 21:53:28', 'usuario1', '1547', 'pry2'),
(260, '2018-10-02 22:09:41', 'usuario1', '', 'pry4'),
(261, '2018-10-02 22:18:45', 'usuario1', '12345', 'pry3'),
(262, '2018-10-02 22:18:49', 'usuario1', '566455', 'pry3'),
(263, '2018-10-02 22:18:51', 'usuario1', '12121213', 'pry3'),
(264, '2018-10-02 22:18:53', 'usuario1', '123456', 'pry3'),
(265, '2018-10-02 22:18:57', 'usuario1', '458', 'pry3'),
(266, '2018-10-12 14:51:39', 'usuario1', '1 2 ', 'pry5'),
(267, '2018-10-12 14:51:48', 'usuario1', 'esto se muestra de forma automatica', 'pry5'),
(268, '2018-10-12 15:19:48', 'usuario1', '133', 'pry5'),
(269, '2018-10-12 15:30:48', 'usuario1', 'muestra principal', 'pry5'),
(270, '2018-10-12 23:27:49', 'usuario1', '1', 'pry1'),
(271, '2018-10-16 01:13:30', 'usuario1', '', 'pry5'),
(272, '2018-10-16 01:20:49', 'usuario1', 'esto se muestra de una forma mas particular', 'pry5'),
(273, '2018-10-16 01:21:05', 'usuario1', 'deberia tener un corrector mas especifico', 'pry5'),
(274, '2018-10-16 01:36:49', 'usuario1', '', 'pry1'),
(275, '2018-10-16 01:52:26', 'usuario1', '123', 'pry1'),
(276, '2018-10-16 01:52:30', 'usuario1', '56', 'pry1'),
(277, '2018-10-16 01:52:35', 'usuario1', '48', 'pry1'),
(278, '2018-10-16 01:52:39', 'usuario1', '321234', 'pry1'),
(279, '2018-10-16 01:52:42', 'usuario1', 'hla', 'pry1'),
(280, '2018-10-16 01:52:43', 'usuario1', '@', 'pry1'),
(281, '2018-10-16 01:52:49', 'usuario1', 'www.google.com', 'pry1'),
(282, '2018-10-16 02:28:09', 'usuario1', '', 'pry5'),
(283, '2018-10-16 02:28:11', 'usuario1', '', 'pry5'),
(284, '2018-10-16 02:28:13', 'usuario1', '', 'pry5'),
(285, '2018-10-16 02:28:15', 'usuario1', '', 'pry5');

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
('equ2', 'equipo 2'),
('equ3', 'equipo 3'),
('equ4', 'equipo 4');

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
  `dom_proyecto` longtext NOT NULL,
  `tmc_proyecto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`cod_proyecto`, `nom_proyecto`, `cod_equipo`, `dom_proyecto`, `tmc_proyecto`) VALUES
('pry1', 'proyecto 1', 'equ1', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Container label=&quot;Perspectiva 1&quot; href=&quot;&quot; id=&quot;117&quot;&gt;\r\n      &lt;mxCell style=&quot;swimlane;fontSize=7;&quot; parent=&quot;1&quot; vertex=&quot;1&quot; connectable=&quot;0&quot; collapsed=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;590.2232742626834&quot; y=&quot;199.97044334975362&quot; width=&quot;70&quot; height=&quot;23&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;mxRectangle x=&quot;-102.27672573731661&quot; y=&quot;70.97044334975362&quot; width=&quot;952.7448979591836&quot; height=&quot;1334.857142857143&quot; as=&quot;alternateBounds&quot;/&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Container&gt;\r\n    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;9&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;386&quot; y=&quot;251&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;10&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;406&quot; y=&quot;202&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;48&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;550&quot; y=&quot;115&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;49&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;117&quot; source=&quot;9&quot; target=&quot;48&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;53&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;550&quot; y=&quot;202&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;55&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;620&quot; y=&quot;115&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;57&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;620&quot; y=&quot;367&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;58&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;608.5&quot; y=&quot;132&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;59&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;618.5&quot; y=&quot;402&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 1&quot; href=&quot;&quot; id=&quot;60&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;569.5&quot; y=&quot;232&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 2&quot; href=&quot;&quot; id=&quot;61&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;699.5&quot; y=&quot;232&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 3&quot; href=&quot;&quot; id=&quot;62&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;569.5&quot; y=&quot;282&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 4&quot; href=&quot;&quot; id=&quot;63&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;699.5&quot; y=&quot;282&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;71&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;903&quot; y=&quot;252&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;72&quot;&gt;\r\n      &lt;mxCell parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;903&quot; y=&quot;135&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;78&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;117&quot; source=&quot;48&quot; target=&quot;72&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;852&quot; y=&quot;155&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;81&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;117&quot; source=&quot;48&quot; target=&quot;71&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;82&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;928&quot; y=&quot;362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;83&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;928&quot; y=&quot;387&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;86&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;918&quot; y=&quot;457&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;87&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;903&quot; y=&quot;222&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;88&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;933&quot; y=&quot;135&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;89&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;117&quot; source=&quot;71&quot; target=&quot;82&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;142&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;260&quot; y=&quot;232&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;148&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;240&quot; y=&quot;237&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;149&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;117&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;230&quot; y=&quot;332&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Container label=&quot;Perspectiva 2&quot; href=&quot;&quot; id=&quot;258&quot;&gt;\r\n      &lt;mxCell style=&quot;swimlane;fontSize=7;&quot; parent=&quot;1&quot; vertex=&quot;1&quot; connectable=&quot;0&quot; collapsed=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;660.2742946708468&quot; y=&quot;199.87860661505965&quot; width=&quot;70&quot; height=&quot;23&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;mxRectangle x=&quot;853.7742946708468&quot; y=&quot;70.87860661505965&quot; width=&quot;946&quot; height=&quot;664&quot; as=&quot;alternateBounds&quot;/&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Container&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;260&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;432&quot; y=&quot;181&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;261&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;576&quot; y=&quot;94&quot; width=&quot;294&quot; height=&quot;336&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;262&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;258&quot; source=&quot;259&quot; target=&quot;261&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;263&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;590&quot; y=&quot;181&quot; width=&quot;270&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;264&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;94&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;265&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;346&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;266&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;634.5&quot; y=&quot;111&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;267&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;644.5&quot; y=&quot;381&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 1&quot; href=&quot;&quot; id=&quot;268&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;211&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Esto es la funcionÂ &amp;#xa;Principal&quot; href=&quot;&quot; id=&quot;269&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;710&quot; y=&quot;200&quot; width=&quot;121&quot; height=&quot;51&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 3&quot; href=&quot;&quot; id=&quot;270&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;261&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;recreacion de las formas&quot; href=&quot;&quot; id=&quot;271&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;710&quot; y=&quot;261&quot; width=&quot;121&quot; height=&quot;59&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;272&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;231&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;273&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;114&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;274&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;258&quot; source=&quot;261&quot; target=&quot;273&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;878&quot; y=&quot;134&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;275&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;258&quot; target=&quot;272&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;mxPoint x=&quot;870&quot; y=&quot;266&quot; as=&quot;sourcePoint&quot;/&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;276&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;341&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;277&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;366&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;278&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;944&quot; y=&quot;436&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;279&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;201&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;280&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;959&quot; y=&quot;114&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;281&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;258&quot; source=&quot;272&quot; target=&quot;276&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;282&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;286&quot; y=&quot;211&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;283&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;266&quot; y=&quot;216&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;284&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;256&quot; y=&quot;311&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;259&quot;&gt;\r\n      &lt;mxCell parent=&quot;258&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;412&quot; y=&quot;226&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Container label=&quot;Perspectiva 3&quot; href=&quot;&quot; id=&quot;312&quot;&gt;\r\n      &lt;mxCell style=&quot;swimlane;fontSize=7;&quot; parent=&quot;1&quot; vertex=&quot;1&quot; connectable=&quot;0&quot; collapsed=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;660.468172221867&quot; y=&quot;222.8275862068965&quot; width=&quot;70&quot; height=&quot;23&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;mxRectangle x=&quot;660.468172221867&quot; y=&quot;222.8275862068965&quot; width=&quot;946&quot; height=&quot;664&quot; as=&quot;alternateBounds&quot;/&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Container&gt;\r\n    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;313&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;412&quot; y=&quot;281&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;314&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;432&quot; y=&quot;232&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;315&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;576&quot; y=&quot;145&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;316&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;312&quot; source=&quot;313&quot; target=&quot;315&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;317&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;576&quot; y=&quot;232&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;318&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;145&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;319&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;397&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;320&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;634.5&quot; y=&quot;162&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;321&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;644.5&quot; y=&quot;432&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 1&quot; href=&quot;&quot; id=&quot;322&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;262&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 2&quot; href=&quot;&quot; id=&quot;323&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;725.5&quot; y=&quot;262&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 3&quot; href=&quot;&quot; id=&quot;324&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;312&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 4&quot; href=&quot;&quot; id=&quot;325&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;725.5&quot; y=&quot;312&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;326&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;282&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;327&quot;&gt;\r\n      &lt;mxCell parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;165&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;328&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;312&quot; source=&quot;315&quot; target=&quot;327&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;878&quot; y=&quot;185&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;329&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;312&quot; source=&quot;315&quot; target=&quot;326&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;330&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;392&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;331&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;417&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;332&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;944&quot; y=&quot;487&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;333&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;252&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;334&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;959&quot; y=&quot;165&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;335&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;312&quot; source=&quot;326&quot; target=&quot;330&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;336&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;286&quot; y=&quot;262&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;337&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;266&quot; y=&quot;267&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;338&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;312&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;256&quot; y=&quot;362&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Container label=&quot;Perspectiva 3&quot; href=&quot;&quot; id=&quot;339&quot;&gt;\r\n      &lt;mxCell style=&quot;swimlane;fontSize=7;&quot; parent=&quot;1&quot; vertex=&quot;1&quot; connectable=&quot;0&quot; collapsed=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;590.2448979591836&quot; y=&quot;222.8571428571429&quot; width=&quot;70&quot; height=&quot;23&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;mxRectangle x=&quot;6.744897959183618&quot; y=&quot;670.8571428571429&quot; width=&quot;946&quot; height=&quot;664&quot; as=&quot;alternateBounds&quot;/&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Container&gt;\r\n    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;340&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;412&quot; y=&quot;276&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;341&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;432&quot; y=&quot;227&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;342&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;576&quot; y=&quot;140&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;343&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;339&quot; source=&quot;340&quot; target=&quot;342&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;344&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;576&quot; y=&quot;227&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;345&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;140&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;346&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;646&quot; y=&quot;392&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;347&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;634.5&quot; y=&quot;157&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;348&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;644.5&quot; y=&quot;427&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 1&quot; href=&quot;&quot; id=&quot;349&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;257&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 2&quot; href=&quot;&quot; id=&quot;350&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;725.5&quot; y=&quot;257&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 3&quot; href=&quot;&quot; id=&quot;351&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;595.5&quot; y=&quot;307&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Funciï¿½n 4&quot; href=&quot;&quot; id=&quot;352&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;725.5&quot; y=&quot;307&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;353&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;277&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;354&quot;&gt;\r\n      &lt;mxCell parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;160&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;355&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;339&quot; source=&quot;342&quot; target=&quot;354&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;878&quot; y=&quot;180&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;356&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;339&quot; source=&quot;342&quot; target=&quot;353&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;357&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;387&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;358&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;954&quot; y=&quot;412&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;359&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;944&quot; y=&quot;482&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;360&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;929&quot; y=&quot;247&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;361&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;959&quot; y=&quot;160&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;362&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;339&quot; source=&quot;353&quot; target=&quot;357&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;363&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;286&quot; y=&quot;257&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;364&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;266&quot; y=&quot;262&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;365&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;339&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;256&quot; y=&quot;357&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;', '2018-09-27 01:18:13');
INSERT INTO `proyectos` (`cod_proyecto`, `nom_proyecto`, `cod_equipo`, `dom_proyecto`, `tmc_proyecto`) VALUES
('pry2', 'SGCUncp', 'equ1', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;365&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;100.72327426268339&quot; y=&quot;160.97044334975362&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;366&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;244.7232742626834&quot; y=&quot;53.97044334975362&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;368&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;244.7232742626834&quot; y=&quot;140.97044334975362&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;369&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;314.7232742626834&quot; y=&quot;53.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;370&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;314.7232742626834&quot; y=&quot;305.9704433497536&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;371&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;303.2232742626834&quot; y=&quot;70.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;372&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;313.2232742626834&quot; y=&quot;340.9704433497536&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 1&quot; href=&quot;&quot; id=&quot;373&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;264.2232742626834&quot; y=&quot;170.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 2&quot; href=&quot;&quot; id=&quot;374&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;394.2232742626834&quot; y=&quot;170.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 3&quot; href=&quot;&quot; id=&quot;375&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;264.2232742626834&quot; y=&quot;220.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 4&quot; href=&quot;&quot; id=&quot;376&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;394.2232742626834&quot; y=&quot;220.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;377&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;597.7232742626834&quot; y=&quot;190.97044334975362&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;378&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;597.7232742626834&quot; y=&quot;73.97044334975362&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;379&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;378&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;546.7232742626834&quot; y=&quot;93.97044334975362&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;380&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;377&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;381&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;622.7232742626834&quot; y=&quot;300.9704433497536&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;382&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;622.7232742626834&quot; y=&quot;325.9704433497536&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;383&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;612.7232742626834&quot; y=&quot;395.9704433497536&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;384&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;597.7232742626834&quot; y=&quot;160.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;385&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;627.7232742626834&quot; y=&quot;73.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;386&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;377&quot; target=&quot;381&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;387&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;-45.27672573731661&quot; y=&quot;170.97044334975362&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;388&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;-65.27672573731661&quot; y=&quot;175.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;389&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;-70.27672573731661&quot; y=&quot;270.9704433497536&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;', '2018-10-02 21:50:54'),
('pry3', 'quincy 3.0', 'equ2', '<mxGraphModel as=\"model\">\r\n  <root>\r\n    <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n      <mxCell/>\r\n    </Diagram>\r\n    <Layer label=\"Default Layer\" id=\"1\">\r\n      <mxCell parent=\"0\"/>\r\n    </Layer>\r\n    <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Roundrect label=\"\" href=\"\" id=\"366\">\r\n      <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Roundrect>\r\n    <Connector label=\"\" href=\"\" id=\"367\">\r\n      <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Connector>\r\n    <Roundrect label=\"\" href=\"\" id=\"368\">\r\n      <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Roundrect>\r\n    <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Rect label=\"FunciÃ³n 1\" href=\"\" id=\"373\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Rect label=\"FunciÃ³n 2\" href=\"\" id=\"374\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Rect label=\"FunciÃ³n 3\" href=\"\" id=\"375\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Rect label=\"FunciÃ³n 4\" href=\"\" id=\"376\">\r\n      <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n      <mxCell vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Rect>\r\n    <Connector label=\"\" href=\"\" id=\"379\">\r\n      <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\">\r\n          <Array as=\"points\">\r\n            <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n          </Array>\r\n        </mxGeometry>\r\n      </mxCell>\r\n    </Connector>\r\n    <Connector label=\"\" href=\"\" id=\"380\">\r\n      <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Connector>\r\n    <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Image label=\"\" href=\"\" id=\"382\">\r\n      <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Image>\r\n    <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Connector label=\"\" href=\"\" id=\"386\">\r\n      <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n        <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Connector>\r\n    <Image label=\"\" href=\"\" id=\"387\">\r\n      <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Image>\r\n    <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n    <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n      <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n        <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n      </mxCell>\r\n    </Text>\r\n  </root>\r\n</mxGraphModel>', '2018-10-02 21:58:13'),
('pry4', 'Proyecto alpha', 'equ2', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;364&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;474.7232742626834&quot; y=&quot;245.97044334975362&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;365&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;494.7232742626834&quot; y=&quot;216.97044334975362&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;366&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;638.7232742626834&quot; y=&quot;109.97044334975362&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;367&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;1&quot; source=&quot;364&quot; target=&quot;366&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;368&quot;&gt;\r\n      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;638.7232742626834&quot; y=&quot;196.97044334975362&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Roundrect&gt;\r\n    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;369&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;708.7232742626834&quot; y=&quot;109.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;370&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;708.7232742626834&quot; y=&quot;361.9704433497536&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;371&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;697.2232742626834&quot; y=&quot;126.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;372&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;707.2232742626834&quot; y=&quot;396.9704433497536&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 1&quot; href=&quot;&quot; id=&quot;373&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;658.2232742626834&quot; y=&quot;226.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 2&quot; href=&quot;&quot; id=&quot;374&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;788.2232742626834&quot; y=&quot;226.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 3&quot; href=&quot;&quot; id=&quot;375&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;658.2232742626834&quot; y=&quot;276.9704433497536&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;FunciÃ³n 4&quot; href=&quot;&quot; id=&quot;376&quot;&gt;\r\n      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;788.2232742626834&quot; y=&quot;276.9704433497536&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;377&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;991.7232742626834&quot; y=&quot;246.97044334975362&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;378&quot;&gt;\r\n      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;991.7232742626834&quot; y=&quot;129.97044334975362&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Rect&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;379&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;378&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;\r\n          &lt;Array as=&quot;points&quot;&gt;\r\n            &lt;mxPoint x=&quot;940.7232742626834&quot; y=&quot;149.97044334975362&quot;/&gt;\r\n          &lt;/Array&gt;\r\n        &lt;/mxGeometry&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;380&quot;&gt;\r\n      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;377&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;381&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;1016.7232742626834&quot; y=&quot;356.9704433497536&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;382&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;1016.7232742626834&quot; y=&quot;381.9704433497536&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;383&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;1006.7232742626834&quot; y=&quot;451.9704433497536&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;384&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;991.7232742626834&quot; y=&quot;216.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;385&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;1021.7232742626834&quot; y=&quot;129.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;386&quot;&gt;\r\n      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;377&quot; target=&quot;381&quot; edge=&quot;1&quot;&gt;\r\n        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Connector&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;387&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;348.7232742626834&quot; y=&quot;226.97044334975362&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;388&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;328.7232742626834&quot; y=&quot;231.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;389&quot;&gt;\r\n      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;323.7232742626834&quot; y=&quot;326.9704433497536&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Text&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;', '2018-10-02 22:01:21'),
('pry5', 'Mejoramiento de la Planta Nuclear de las Olas', 'equ1', '&lt;mxGraphModel&gt;\r\n  &lt;root&gt;\r\n    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;\r\n      &lt;mxCell/&gt;\r\n    &lt;/Diagram&gt;\r\n    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;\r\n      &lt;mxCell parent=&quot;0&quot;/&gt;\r\n    &lt;/Layer&gt;\r\n    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;2&quot;&gt;\r\n      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;130&quot; y=&quot;360&quot; width=&quot;80&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Image&gt;\r\n    &lt;Shape label=&quot;Shape&quot; href=&quot;&quot; id=&quot;10&quot;&gt;\r\n      &lt;mxCell style=&quot;cloud&quot; vertex=&quot;1&quot; parent=&quot;1&quot;&gt;\r\n        &lt;mxGeometry x=&quot;610&quot; y=&quot;270&quot; width=&quot;80&quot; height=&quot;60&quot; as=&quot;geometry&quot;/&gt;\r\n      &lt;/mxCell&gt;\r\n    &lt;/Shape&gt;\r\n  &lt;/root&gt;\r\n&lt;/mxGraphModel&gt;', '2018-10-12 14:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_per`
--

CREATE TABLE `pro_per` (
  `cod_pro_per` varchar(30) NOT NULL,
  `nom_perspectiva` varchar(60) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL,
  `dom_perspectiva` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_per`
--

INSERT INTO `pro_per` (`cod_pro_per`, `nom_perspectiva`, `cod_proyecto`, `cod_usuario`, `dom_perspectiva`) VALUES
('pro_per1', 'Clientes', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>'),
('pro_per2', 'ew', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>'),
('pro_per3', 'd', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>'),
('pro_per4', 'ddfsfd', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>'),
('pro_per5', 'ddfsfd', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>'),
('pro_per6', 'Clientes', 'pry5', 'usu1', '\r\n<mxGraphModel as=\"model\">\r\n<root>\r\n  <Diagram label=\"My Diagram\" href=\"http://www.jgraph.com/\" id=\"0\">\r\n    <mxCell/>\r\n  </Diagram>\r\n  <Layer label=\"Default Layer\" id=\"1\">\r\n    <mxCell parent=\"0\"/>\r\n  </Layer>\r\n  <Rect label=\"Insertar Insumos\" href=\"\" id=\"364\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"80.72327426268339\" y=\"189.97044334975362\" width=\"100\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Text label=\"INSUMOS\" href=\"\" id=\"365\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"100.72327426268339\" y=\"160.97044334975362\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Roundrect label=\"\" href=\"\" id=\"366\">\r\n    <mxCell style=\"rounded;strokeColor=orange;fillColor=orange;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"53.97044334975362\" width=\"272\" height=\"342\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Connector label=\"\" href=\"\" id=\"367\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"364\" target=\"366\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Roundrect label=\"\" href=\"\" id=\"368\">\r\n    <mxCell style=\"rounded;strokeColor=yellow;fillColor=yellow;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"244.7232742626834\" y=\"140.97044334975362\" width=\"260\" height=\"160\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Roundrect>\r\n  <Text label=\"DIRIGEN / ORGANIZACION\" href=\"\" id=\"369\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"53.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"ACTORES\" href=\"\" id=\"370\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"314.7232742626834\" y=\"305.9704433497536\" width=\"60\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Directores\" href=\"\" id=\"371\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"303.2232742626834\" y=\"70.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Insertar Actores\" href=\"\" id=\"372\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"313.2232742626834\" y=\"340.9704433497536\" width=\"90\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Rect label=\"FunciÃ³n\" href=\"\" id=\"373\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 2\" href=\"\" id=\"374\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"170.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 3\" href=\"\" id=\"375\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"264.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"FunciÃƒÂ³n 4\" href=\"\" id=\"376\">\r\n    <mxCell style=\"strokeColor=orange;shadow=1;\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"394.2232742626834\" y=\"220.97044334975362\" width=\"80\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Inserte Productos o Servicios\" href=\"\" id=\"377\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"190.97044334975362\" width=\"150\" height=\"70\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Rect label=\"Insertar Reguladores\" href=\"\" id=\"378\">\r\n    <mxCell vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"73.97044334975362\" width=\"140\" height=\"40\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Rect>\r\n  <Connector label=\"\" href=\"\" id=\"379\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"366\" target=\"378\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\">\r\n        <Array as=\"points\">\r\n          <mxPoint x=\"546.7232742626834\" y=\"93.97044334975362\"/>\r\n        </Array>\r\n      </mxGeometry>\r\n    </mxCell>\r\n  </Connector>\r\n  <Connector label=\"\" href=\"\" id=\"380\">\r\n    <mxCell style=\"arrowConnector\" edge=\"1\" source=\"366\" target=\"377\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Text label=\"BENEFICIARIOS\" href=\"\" id=\"381\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"300.9704433497536\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Image label=\"\" href=\"\" id=\"382\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"622.7232742626834\" y=\"325.9704433497536\" width=\"90\" height=\"50\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"Insertar Beneficiarios\" href=\"\" id=\"383\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"612.7232742626834\" y=\"395.9704433497536\" width=\"120\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"PRODUCTOS / SERVICIOS\" href=\"\" id=\"384\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"597.7232742626834\" y=\"160.97044334975362\" width=\"160\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"REGULADORES\" href=\"\" id=\"385\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"627.7232742626834\" y=\"73.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Connector label=\"\" href=\"\" id=\"386\">\r\n    <mxCell style=\"straightConnector\" edge=\"1\" source=\"377\" target=\"381\" parent=\"1\">\r\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Connector>\r\n  <Image label=\"\" href=\"\" id=\"387\">\r\n    <mxCell style=\"image\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-45.27672573731661\" y=\"170.97044334975362\" width=\"60\" height=\"110\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Image>\r\n  <Text label=\"PROVEEDORES\" href=\"\" id=\"388\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-65.27672573731661\" y=\"175.97044334975362\" width=\"100\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n  <Text label=\"Inserte proveedores\" href=\"\" id=\"389\">\r\n    <mxCell style=\"text\" vertex=\"1\" parent=\"1\">\r\n      <mxGeometry x=\"-70.27672573731661\" y=\"270.9704433497536\" width=\"110\" height=\"20\" as=\"geometry\"/>\r\n    </mxCell>\r\n  </Text>\r\n</root>\r\n</mxGraphModel>');

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
('usu4', 'usuario4@sistemas.com', 'usuario4', '123456789', 'rol4'),
('usu5', 'fidel@sistemas.com', 'leonardito', 'ssm', 'rol1');

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
('eu5', 'usu1', 'equ2'),
('eu7', 'usu1', 'equ3'),
('eu6', 'usu2', 'equ1'),
('eu2', 'usu2', 'equ3'),
('eu8', 'usu2', 'equ4'),
('eu3', 'usu3', 'equ2'),
('eu4', 'usu4', 'equ2'),
('eu10', 'usu4', 'equ3'),
('eu9', 'usu5', 'equ1');

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
  ADD KEY `cod_perspectiva` (`cod_usuario`),
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
  MODIFY `cod_chat` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

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
-- Filtros para la tabla `usu_equipo`
--
ALTER TABLE `usu_equipo`
  ADD CONSTRAINT `usu_equipo_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  ADD CONSTRAINT `usu_equipo_ibfk_2` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
