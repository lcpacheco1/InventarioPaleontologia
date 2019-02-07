-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-01-2019 a las 22:46:39
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paleontologia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canton`
--

CREATE TABLE `canton` (
  `idCanton` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Provincia_idProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canton`
--

INSERT INTO `canton` (`idCanton`, `nombre`, `Provincia_idProvincia`) VALUES
(1, 'Tulcán', 1),
(2, 'Montufar', 1),
(3, 'Espejo', 1),
(4, 'Mira', 1),
(5, 'Bolívar', 1),
(6, 'Huaca', 1),
(7, 'Ibarra', 2),
(8, 'Otavalo', 2),
(9, 'Cotacachi', 2),
(10, 'Antonio Ante', 2),
(11, 'Pimampiro', 2),
(12, 'Urcuqui', 2),
(13, 'Puerto Quito', 3),
(14, 'Pedro Vicente Maldonado', 3),
(15, 'Rumiñahui', 3),
(16, 'Distrito Metropolitano Quito', 3),
(17, 'Mejía', 3),
(18, 'Pedro Moncayo', 3),
(19, 'Bancos', 3),
(20, 'Cayambe', 3),
(21, 'Latacunga', 4),
(22, 'La Mana', 4),
(23, 'Pangua', 4),
(24, 'Pujilí', 4),
(25, 'Salcedo', 4),
(26, 'Saquisilí', 4),
(27, 'Sigcho', 4),
(28, 'Ambato', 5),
(29, 'Baños', 5),
(30, 'Cevallos', 5),
(31, 'Mocha', 5),
(32, 'Patate', 5),
(33, 'Pelileo', 5),
(34, 'Píllaro', 5),
(35, 'Quero', 5),
(36, 'Tisaleo', 5),
(37, 'Guaranda', 6),
(38, 'San José de Chimbo', 6),
(39, 'San Miguel de Bolívar', 6),
(40, 'Chillanes', 6),
(41, 'Echéandia', 6),
(42, 'Caluma', 6),
(43, 'Las Naves', 6),
(44, 'Penipe', 7),
(45, 'Guano', 7),
(46, 'Riobamba', 7),
(47, 'Chambo', 7),
(48, 'Colta', 7),
(49, 'Guamote', 7),
(50, 'Pallatanga', 7),
(51, 'Alausí', 7),
(52, 'Chunchi', 7),
(53, 'Cumandá', 7),
(54, 'Azogues', 8),
(55, 'Cañar', 8),
(56, 'Biblián', 8),
(57, 'La Troncal', 8),
(58, 'El Tambo', 8),
(59, 'Déleg', 8),
(60, 'Suscal', 8),
(61, 'Camilo Ponce Enríquez', 9),
(62, 'Chordeleg', 9),
(63, 'Cuenca', 9),
(64, 'El Pan', 9),
(65, 'Girón', 9),
(66, 'Guachapala', 9),
(67, 'Gualaceo', 9),
(68, 'Nabón', 9),
(69, 'Oña', 9),
(70, 'Paute', 9),
(71, 'Pucará', 9),
(72, 'San Fernando', 9),
(73, 'Santa Isabel', 9),
(74, 'Sevilla de Oro', 9),
(75, 'Sígsig', 9),
(76, 'Calvas', 10),
(77, 'Catamayo', 10),
(78, 'Celica', 10),
(79, 'Chaguarpamba', 10),
(80, 'Espíndola', 10),
(81, 'Gonzanamá', 10),
(82, 'Loja', 10),
(83, 'Macará', 10),
(84, 'Olmedo', 10),
(85, 'Paltas', 10),
(86, 'Pindal', 10),
(87, 'Puyango', 10),
(88, 'Quilanga', 10),
(89, 'Saraguro', 10),
(90, 'Sozoranga', 10),
(91, 'Zapotillo', 10),
(92, 'Santo Domingo', 11),
(93, 'La Concordia', 11),
(94, 'Cascales', 12),
(95, 'Cuyabeno', 12),
(96, 'Gonzalo Pizarro', 12),
(97, 'Lago Agrio', 12),
(98, 'Putumayo', 12),
(99, 'Shishufindi', 12),
(100, 'Sucumbios', 12),
(101, 'Tena', 13),
(102, 'Archidona', 13),
(103, 'Carlos Julio Arosemena Tola', 13),
(104, 'El Chaco', 13),
(105, 'Quijos', 13),
(106, 'Arajuno', 14),
(107, 'Mera', 14),
(108, 'Pastaza', 14),
(109, 'Santa Clara', 14),
(110, 'Francisco de Orellana', 15),
(111, 'Aguarico', 15),
(112, 'La Joya de los Sachas', 15),
(113, 'Loreto', 15),
(114, 'Morona', 16),
(115, 'Gualaquiza', 16),
(116, 'Huamboya', 16),
(117, 'Limón Indanza', 16),
(118, 'Logroño', 16),
(119, 'Pablo Sexto', 16),
(120, 'Palora', 16),
(121, 'San Juan Bosco', 16),
(122, 'Santiago de Méndez', 16),
(123, 'Sucúa', 16),
(124, 'Taisha', 16),
(125, 'Tiwintza', 16),
(126, 'Zamora', 17),
(127, 'Centinela del Cóndor', 17),
(128, 'Chinchipe', 17),
(129, 'El Pangui', 17),
(130, 'Nangaritza', 17),
(131, 'Palanda', 17),
(132, 'Paquisha', 17),
(133, 'Yacuambi', 17),
(134, 'Yantzaza', 17),
(135, 'Esmeraldas', 18),
(136, 'Atacames', 18),
(137, 'Eloy Alfaro', 18),
(138, 'Muisne', 18),
(139, 'Quinindé', 18),
(140, 'Rioverde', 18),
(141, 'San Lorenzo', 18),
(142, 'Portoviejo', 19),
(143, '24 de Mayo', 19),
(144, 'Bolívar', 19),
(145, 'Chone', 19),
(146, 'El Carmen', 19),
(147, 'Flavio Alfaro', 19),
(148, 'Jama', 19),
(149, 'Jaramijó', 19),
(150, 'Jipijapa', 19),
(151, 'Junín', 19),
(152, 'Manta', 19),
(153, 'Montecristi', 19),
(154, 'Olmedo', 19),
(155, 'Paján', 19),
(156, 'Pedernales', 19),
(157, 'Pichincha', 19),
(158, 'Puerto López', 19),
(159, 'Rocafuerte', 19),
(160, 'San Vicente', 19),
(161, 'Santa Ana', 19),
(162, 'Sucre', 19),
(163, 'Tosagua', 19),
(164, 'Guayaquil', 20),
(165, 'Alfredo Bauqerizo Moreno', 20),
(166, 'Balao', 20),
(167, 'Balzar', 20),
(168, 'Colimes', 20),
(169, 'Daule', 20),
(170, 'Durán', 20),
(171, 'El Empalme', 20),
(172, 'El Triunfo', 20),
(173, 'General Antonio Elizalde', 20),
(174, 'Isidro Ayora', 20),
(175, 'Lomas de Sargentillo', 20),
(176, 'Marcelino Maridueña', 20),
(177, 'Milagro', 20),
(178, 'Naranjal', 20),
(179, 'Naranjito', 20),
(180, 'Nobol', 20),
(181, 'Palestina', 20),
(182, 'Pedro Carbo', 20),
(183, 'Playas', 20),
(184, 'Salitre', 20),
(185, 'Samborondón', 20),
(186, 'Santa Lucía', 20),
(187, 'Simón Bolívar', 20),
(188, 'Yaguachi', 20),
(189, 'Babahoyo', 21),
(190, 'Baba', 21),
(191, 'Buena Fe', 21),
(192, 'Mocache', 21),
(193, 'Montalvo', 21),
(194, 'Palenque', 21),
(195, 'Puebloviejo', 21),
(196, 'Quevedo', 21),
(197, 'Quisaloma', 21),
(198, 'Urdaneta', 21),
(199, 'Valencia', 21),
(200, 'Ventanas', 21),
(201, 'Vinces', 21),
(202, 'Machala', 22),
(203, 'Arenillas', 22),
(204, 'Atahualpa', 22),
(205, 'Balsas', 22),
(206, 'Chilla', 22),
(207, 'El Guabo', 22),
(208, 'Huaquillas', 22),
(209, 'Las Lajas', 22),
(210, 'Marcabelí', 22),
(211, 'Pasaje', 22),
(212, 'Piñas', 22),
(213, 'Portovelo', 22),
(214, 'Santa Rosa', 22),
(215, 'Zaruma', 22),
(216, 'La Libertad', 23),
(217, 'Salinas', 23),
(218, 'Santa Elena', 23),
(219, 'San Cristóbal', 24),
(220, 'Isabela', 24),
(221, 'Santa Cruz', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `idClase` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Filo-Division_idFilo-Division` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`idClase`, `nombre`, `Filo-Division_idFilo-Division`) VALUES
(1, 'Archiacanthocephala', 1),
(2, 'Palaeacanthocephala', 1),
(3, 'Eoacanthocephala', 1),
(4, 'Acoela', 2),
(5, 'Nemertodermatida', 2),
(6, 'Adenophorea', 3),
(7, 'Secernentea', 3),
(8, 'Insecta', 4),
(9, 'Entognatha', 4),
(10, 'Arachnida', 4),
(11, 'Merostomata', 4),
(12, 'Pycnogonida', 4),
(13, 'Chilopoda', 4),
(14, 'Diplopoda', 4),
(15, 'Pauropoda', 4),
(16, 'Symphyla', 4),
(17, 'Arthropleuridea', 4),
(18, 'Thylacocephala', 4),
(19, 'Branchiopoda', 4),
(20, 'Remipedia', 4),
(21, 'Cephalocarida', 4),
(22, 'Maxillopoda', 4),
(23, 'Ostracoda', 4),
(24, 'Malacostraca', 4),
(25, 'Trilobita', 4),
(26, 'Megacheira', 4),
(27, 'Merostomoidea', 4),
(28, 'Marrellomorph', 4),
(29, 'Cheloniellida', 4),
(30, 'Articulada', 5),
(31, 'Inarticulata', 5),
(32, 'Stenolaemata', 6),
(33, 'Gymnolaemata', 6),
(34, 'Phylactolaemata', 6),
(35, 'Archisagittoidea', 7),
(36, 'Sagittoidea', 7),
(37, 'Actinopterygii', 8),
(38, 'Amphibia', 8),
(39, 'Appendicularia', 8),
(40, 'Chondrichthyes', 8),
(41, 'Synapsida ', 8),
(42, 'Sauropsida', 8),
(43, 'Antozoos', 9),
(44, 'Cubozoos', 9),
(45, 'Hidrozoos', 9),
(46, 'Escifozoos', 9),
(47, 'Mixozoos', 9),
(48, 'Polipodiozoos', 9),
(49, 'Staurozoos', 9),
(50, 'Tentaculata', 10),
(51, 'Nuda', 10),
(52, 'Scleroctenophora', 10),
(53, 'Eucycliophora', 11),
(54, 'Crinoideos', 12),
(55, 'Asteroideos', 12),
(56, 'Ofiuroideos', 12),
(57, 'Equinoideos', 12),
(58, 'Holoturoideos', 12),
(59, 'Concentricycloidea', 12),
(60, 'Edrioasteroidea', 12),
(61, 'Polychaeta', 13),
(62, 'Sedentaria', 13),
(63, 'NA', 14),
(64, 'NA', 15),
(65, 'NA', 15),
(66, 'Filospermoidea', 16),
(67, 'Bursovaginoidea', 16),
(68, 'Enteropneusta', 17),
(69, 'Pterobranchia', 17),
(70, 'Planctosphaeroidea', 17),
(71, 'Graptolithina', 17),
(72, 'Cyclorhagida', 18),
(73, 'Allomalorhagida', 18),
(74, 'Nanaloricea', 19),
(75, 'Micrognathozoa', 20),
(76, 'Caudofoveata', 21),
(77, 'Solenogastres', 21),
(78, 'Polyplacophora', 21),
(79, 'Rostroconchia', 21),
(80, 'Helcionelloida', 21),
(81, 'Monoplacophora', 21),
(82, 'Bivalvia', 21),
(83, 'Scaphopoda', 21),
(84, 'Gastropoda', 21),
(85, 'Cephalopoda', 21),
(86, 'Aplacophora', 21),
(87, 'NA', 22),
(88, 'Adenophorea', 23),
(89, 'Secernentea', 23),
(90, 'Nectonematoida', 24),
(91, 'Gordioidea', 24),
(92, 'Anopla', 25),
(93, 'Enopla', 25),
(94, 'Palaeonemertea', 25),
(95, 'Euonychophora', 26),
(96, 'Orthonectea', 27),
(97, 'Phoronidea', 28),
(98, 'Turbelarios', 29),
(99, 'Monogéneos', 29),
(100, 'Trematodos', 29),
(101, 'Cestodos', 29),
(102, 'Calcarea', 30),
(103, 'Demospongiae', 30),
(104, 'Hexactinellida', 30),
(105, 'Homoscleromorpha', 30),
(106, 'Archaeocyatha', 30),
(107, 'Stromatoporida', 30),
(108, 'NA', 31),
(109, 'Rhombozoa', 32),
(110, 'Seisonoidea', 33),
(111, 'Bdelloidea', 33),
(112, 'Monogononta', 33),
(113, 'Sipunculidea', 34),
(114, 'Phascolosomatidea', 34),
(115, 'Heterotardigrada', 35),
(116, 'Mesotardigrada', 35),
(117, 'Eutardigrada', 35),
(118, 'Acoela', 36),
(119, 'Nemertodermatida', 36),
(120, 'Agaricomycetes', 37),
(121, 'Agaricostilbomycetes', 37),
(122, 'Atractiellomycetes', 37),
(123, 'Classiculomycetes', 37),
(124, 'Cryptomycocolacomycetes', 37),
(125, 'Cystobasidiomycetes', 37),
(126, 'Dacrymycetes', 37),
(127, 'Entorrhizomycetes', 37),
(128, 'Exobasidiomycetes', 37),
(129, 'Malasseziomycetes', 37),
(130, 'Microbotryomycetes', 37),
(131, 'Mixiomycetes', 37),
(132, 'Pucciniomycetes', 37),
(133, 'Tremellomycetes', 37),
(134, 'Tritirachiomycetes', 37),
(135, 'Ustilaginomycetes', 37),
(136, 'Wallemiomycetes', 37),
(137, 'Archaeorhizomycetes', 38),
(138, 'Arthoniomycetes', 38),
(139, 'Dothideomycetes', 38),
(140, 'Eurotiomycetes', 38),
(141, 'Geoglossomycetes', 38),
(142, 'Laboulbeniomycetes', 38),
(143, 'Lecanoromycetes', 38),
(144, 'Leotiomycetes', 38),
(145, 'Lichinomycetes', 38),
(146, 'Neolectomycetes', 38),
(147, 'Orbiliomycetes', 38),
(148, 'Pezizomycetes', 38),
(149, 'Pneumocystidomycetes', 38),
(150, 'Saccharomycetes', 38),
(151, 'Schizosaccharomycetes', 38),
(152, 'Sordariomycetes', 38),
(153, 'Xylonomycetes', 38),
(154, 'Glomeromycetes', 39),
(155, 'Zygomycetes', 40),
(156, 'Anthoceros agrestis', 41),
(157, 'Anthoceros caucasicus', 41),
(158, 'Anthoceros punctatus', 41),
(159, 'Phaeoceros carolinianus', 41),
(160, 'Phaeoceros laevis', 41),
(161, 'Bryopsida', 42),
(162, 'Andreaeopsida', 42),
(163, 'Jungermanniopsida', 42),
(164, 'Charophyceae', 43),
(165, 'Coleochaetophyceae', 43),
(166, 'Klebsormidiophyceae', 43),
(167, 'Mesostigmatophyceae', 43),
(168, 'Zygnematophyceae', 43),
(169, 'Bryopsidophyceae', 44),
(170, 'Ulvophyceae', 44),
(171, 'Chlorodendrophyceae', 44),
(172, 'Chlorophyceae', 44),
(173, 'Pedinophyceae', 44),
(174, 'Pleurastrophyceae', 44),
(175, 'Siphonocladophyceae', 44),
(176, 'Trebouxiophyceae', 44),
(177, 'Cycas revoluta', 45),
(178, 'Equisetum arvense', 46),
(179, 'Equisetum palustre', 46),
(180, 'Equisetum ramosissimum', 46),
(181, 'Equisetum telmateia', 46),
(182, 'Ginkgo biloba', 47),
(183, 'Glaucocystis nostochinearum', 48),
(184, 'Isoetales', 49),
(185, 'Lycopodiales', 49),
(186, 'Selaginellales', 49),
(187, 'Liliopsida', 50),
(188, 'Magnoliopsida', 50),
(189, 'Jungermanniales', 51),
(190, 'Marchantiales', 51),
(191, 'Metzgeriales', 51),
(192, 'Sphaerocarpales', 51),
(193, 'Pinales', 52),
(194, 'Gnetales', 52),
(195, 'Filicopsida', 53),
(196, 'Psilotopsida', 53),
(197, 'Florideophyceae', 54),
(198, 'Bangiophyceae', 54),
(199, 'Compsopogonophyceae', 54),
(200, 'Rhodellophyceae', 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE `coleccion` (
  `idColeccion` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `propietario` varchar(50) DEFAULT NULL,
  `control` varchar(45) DEFAULT NULL,
  `curador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE `familia` (
  `idFamilia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `SuperFamilia_idSuperFamilia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichafosil`
--

CREATE TABLE `fichafosil` (
  `idFichaFosil` int(11) NOT NULL,
  `largo` decimal(10,0) DEFAULT NULL,
  `ancho` decimal(10,0) DEFAULT NULL,
  `diametro` decimal(10,0) DEFAULT NULL,
  `espesor` decimal(10,0) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `estadoConser` varchar(50) DEFAULT NULL,
  `registrador` varchar(50) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `descripcionGeologica` varchar(1000) DEFAULT NULL,
  `entidadRevisadora` varchar(50) DEFAULT NULL,
  `fechaRevision` date DEFAULT NULL,
  `estadoDeFicha` varchar(15) DEFAULT NULL,
  `Coleccion_idColeccion` int(11) NOT NULL,
  `Proyecto_idProyecto` int(11) NOT NULL,
  `Subclase_idSubclase` int(11) NOT NULL,
  `SubFamilia_idSubFamilia` int(11) NOT NULL,
  `Genero_idGenero` int(11) NOT NULL,
  `RegiEspe_idRegiEspe` int(11) NOT NULL,
  `Localizacion_idLocalizacion` int(11) NOT NULL,
  `SubOrden_idSubOrden` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filodivision`
--

CREATE TABLE `filodivision` (
  `idFilo-Division` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Reino_idReino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filodivision`
--

INSERT INTO `filodivision` (`idFilo-Division`, `nombre`, `Reino_idReino`) VALUES
(1, 'Acanthocephala', 1),
(2, 'Acoelomorpha', 1),
(3, 'Annelida', 1),
(4, 'Arthropoda', 1),
(5, 'Brachiopoda', 1),
(6, 'Bryzoa', 1),
(7, 'Chaetognatha', 1),
(8, 'Chordata', 1),
(9, 'Cnidaria', 1),
(10, 'Ctenophora', 1),
(11, 'Cycliophora', 1),
(12, 'Aechinodermata', 1),
(13, 'Echiura', 1),
(14, 'Entoprocta', 1),
(15, 'Gastrotrichia', 1),
(16, 'Gnathostomulida', 1),
(17, 'Hemichordata', 1),
(18, 'Kinorhyncha', 1),
(19, 'Loricifera', 1),
(20, 'Micrognathozoa', 1),
(21, 'Mollusca ', 1),
(22, 'Monoblastozoa', 1),
(23, 'Nematoda', 1),
(24, 'Nematomorpha', 1),
(25, 'Nemertea', 1),
(26, 'Onychophora', 1),
(27, 'Orthonectida', 1),
(28, 'Phoronida', 1),
(29, 'Platyhelminthes', 1),
(30, 'Porifera', 1),
(31, 'Priapula', 1),
(32, 'Rhombozoa', 1),
(33, 'Rotifera', 1),
(34, 'Sipuncula', 1),
(35, 'Tardigrada', 1),
(36, 'Xenacoelomorpha', 1),
(37, 'Basidiomycota', 3),
(38, 'Ascomycota', 3),
(39, 'Glomeromycota', 3),
(40, 'Zygomycota', 3),
(41, 'Anthocerotophyta', 2),
(42, 'Bryophyta', 2),
(43, 'Charophyta', 2),
(44, 'Chlorophyta', 2),
(45, 'Cycadophyta', 2),
(46, 'Equisetophyta', 2),
(47, 'Gingkophyta', 2),
(48, 'Glaucophyta', 2),
(49, 'Lycopodiophyta', 2),
(50, 'Magnoliophyta', 2),
(51, 'Marchantiophyta', 2),
(52, 'Pinophyta', 2),
(53, 'Pteridophyta', 2),
(54, 'Rhodophyta', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `SuperFamilia_idSuperFamilia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `idLocalizacion` int(11) NOT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `UTMeste` int(11) DEFAULT NULL,
  `UTMnorte` int(11) DEFAULT NULL,
  `Parroquia_idParroquia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idOrden` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Clase_idClase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE `parroquia` (
  `idParroquia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `Canton_idCanton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`idParroquia`, `nombre`, `tipo`, `Canton_idCanton`) VALUES
(1, 'González Suárez', 'urbana', 1),
(2, 'Tulcán', 'urbana', 1),
(3, 'Julio Andrade(La Orejuela)', 'rural', 1),
(4, 'El Carmelo (Pun)', 'rural', 1),
(5, 'Maldonado', 'rural', 1),
(6, 'Pioter', 'rural', 1),
(7, 'Tobar Donoso', 'rural', 1),
(8, 'Tufiño', 'rural', 1),
(9, 'Urbina', 'rural', 1),
(10, 'Santa Martha de Cuba', 'rural', 1),
(11, 'Chical', 'rural', 1),
(12, 'San Gabriel', 'urbana', 2),
(13, 'San Jose', 'urbana', 2),
(14, 'Gonzales Suarez', 'urbana', 2),
(15, 'Fernández Salvador', 'rural', 2),
(16, 'Piartal', 'rural', 2),
(17, 'Cristobal Colón', 'rural', 2),
(18, 'La Paz', 'rural', 2),
(19, 'Chitan de Navarretes', 'rural', 2),
(20, 'El Angel', 'urbana', 3),
(21, '27 de septiembre', 'urbana', 3),
(22, 'La Libertad', 'rural', 3),
(23, 'San Isidro', 'rural', 3),
(24, 'El Goaltal', 'rural', 3),
(25, 'Mira', 'urbana', 4),
(26, 'Jijón y Caamaño', 'rural', 4),
(27, 'Juan Montalvo', 'rural', 4),
(28, 'LaConcepción', 'rural', 4),
(29, 'Bolívar', 'urbana', 5),
(30, 'GarcíaMoreno', 'rural', 5),
(31, 'Los Andes', 'rural', 5),
(32, 'Monteolivo', 'rural', 5),
(33, 'San Rafael', 'rural', 5),
(34, 'San Vicente de Pusir', 'rural', 5),
(35, 'Huaca', 'urbana', 6),
(36, 'Mariscal Sucre', 'rural', 6),
(37, 'San Francisco', 'urbana', 7),
(38, 'El Sagrario', 'urbana', 7),
(39, 'Caranqui', 'urbana', 7),
(40, 'Alpachaca', 'urbana', 7),
(41, 'Priorato', 'urbana', 7),
(42, 'San Antonio', 'rural', 7),
(43, 'La Esperanza', 'rural', 7),
(44, 'Angochagua', 'rural', 7),
(45, 'Ambuquí', 'rural', 7),
(46, 'Salinas', 'rural', 7),
(47, 'La Carolina', 'rural', 7),
(48, 'Lita', 'rural', 7),
(49, 'Jordán', 'urbana', 8),
(50, 'San Luis', 'urbana', 8),
(51, 'Eugenio Espejo', 'rural', 8),
(52, 'San Pablo del Lago', 'rural', 8),
(53, 'González Suárez', 'rural', 8),
(54, 'San Rafael', 'rural', 8),
(55, 'San Juan de Ilumán', 'rural', 8),
(56, 'Dr. Miguel Egas Cabezas', 'rural', 8),
(57, 'San José de Quichinche', 'rural', 8),
(58, 'San Pedro de Pataquí', 'rural', 8),
(59, 'Selva Alegre', 'rural', 8),
(60, 'El Sagrario', 'urbana', 9),
(61, 'San Francisco', 'urbana', 9),
(62, 'Quiroga', 'rural', 9),
(63, 'Imantag', 'rural', 9),
(64, '6 de Julio de Cuellaje', 'rural', 9),
(65, 'Apuela', 'rural', 9),
(66, 'Carcía Moreno', 'rural', 9),
(67, 'Peñaherrera', 'rural', 9),
(68, 'Plaza Gutiérrez', 'rural', 9),
(69, 'Vacas Galindo', 'rural', 9),
(70, 'Atuntaqui ', 'urbana', 10),
(71, 'Andrade Marín', 'urbana', 10),
(72, 'San Roque', 'rural', 10),
(73, 'Chaltura', 'rural', 10),
(74, 'Natabuela', 'rural', 10),
(75, 'Imbaya', 'rural', 10),
(76, 'Pimampiro', 'urbana', 11),
(77, 'Mariano Acosta', 'rural', 11),
(78, 'San Francisco de Sigsipamba', 'rural', 11),
(79, 'Chugá ', 'rural', 11),
(80, 'San Miguel de Urcuquí', 'urbana', 12),
(81, 'Pablo Arenas', 'rural', 12),
(82, 'Cahuasqui', 'rural', 12),
(83, 'Buenos Aires', 'rural', 12),
(84, 'San Blas ', 'rural', 12),
(85, 'Tumbabiro', 'rural', 12),
(86, 'Puerto Quito', 'urbana', 13),
(87, 'Pedro Vicente Maldonado', 'urbana', 14),
(88, 'Sangolquí', 'urbana', 15),
(89, 'San Pedro de Taboada', 'urbana', 15),
(90, 'San Rafael', 'urbana', 15),
(91, 'Cotogchoa', 'rural', 15),
(92, 'Rumipamba', 'rural', 15),
(93, 'Belisario Quevedo', 'urbana', 16),
(94, 'Carcelén', 'urbana', 16),
(95, 'Centro Histórico', 'urbana', 16),
(96, 'Chilibulo', 'urbana', 16),
(97, 'Chillogallo', 'urbana', 16),
(98, 'Chimbacalle', 'urbana', 16),
(99, 'Cochapamba', 'urbana', 16),
(100, 'Comité del Pueblo', 'urbana', 16),
(101, 'Concepción', 'urbana', 16),
(102, 'Cotocollao', 'urbana', 16),
(103, 'El Condado', 'urbana', 16),
(104, 'El Inca', 'urbana', 16),
(105, 'Guamaní', 'urbana', 16),
(106, 'Iñaquito', 'urbana', 16),
(107, 'Itchimbía', 'urbana', 16),
(108, 'Jipijapa', 'urbana', 16),
(109, 'Kennedy', 'urbana', 16),
(110, 'La Argelia', 'urbana', 16),
(111, 'La Ecuatoriana', 'urbana', 16),
(112, 'La Ferroviaria', 'urbana', 16),
(113, 'La Libertad', 'urbana', 16),
(114, 'La Mena', 'urbana', 16),
(115, 'Magdalena', 'urbana', 16),
(116, 'Mariscal Sucre', 'urbana', 16),
(117, 'Ponceano', 'urbana', 16),
(118, 'Puengasí', 'urbana', 16),
(119, 'Quitumbe', 'urbana', 16),
(120, 'Rumipamba', 'urbana', 16),
(121, 'San Bartolo', 'urbana', 16),
(122, 'San Juan', 'urbana', 16),
(123, 'Solanda', 'urbana', 16),
(124, 'Turubamba', 'urbana', 16),
(125, 'Alangasí', 'rural', 16),
(126, 'Amaguaña', 'rural', 16),
(127, 'Atahualpa', 'rural', 16),
(128, 'Calacalí', 'rural', 16),
(129, 'Calderón', 'rural', 16),
(130, 'Chavezpamba', 'rural', 16),
(131, 'Checa', 'rural', 16),
(132, 'Conocoto', 'rural', 16),
(133, 'Cumbayá', 'rural', 16),
(134, 'El Quinche', 'rural', 16),
(135, 'Gualea', 'rural', 16),
(136, 'Guangopolo', 'rural', 16),
(137, 'Guayllabamba', 'rural', 16),
(138, 'La Merced', 'rural', 16),
(139, 'Llano Chico', 'rural', 16),
(140, 'Lloa', 'rural', 16),
(141, 'Nanegal', 'rural', 16),
(142, 'Nanegalito', 'rural', 16),
(143, 'Nayón', 'rural', 16),
(144, 'Nono', 'rural', 16),
(145, 'Pacto', 'rural', 16),
(146, 'Perucho', 'rural', 16),
(147, 'Pifo', 'rural', 16),
(148, 'Píntag', 'rural', 16),
(149, 'Pomasqui', 'rural', 16),
(150, 'Puéllaro', 'rural', 16),
(151, 'Puembo', 'rural', 16),
(152, 'San Antonio de Pichincha', 'rural', 16),
(153, 'San José de Minas', 'rural', 16),
(154, 'Tababela', 'rural', 16),
(155, 'Tumbaco', 'rural', 16),
(156, 'Yaruquí', 'rural', 16),
(157, 'Zámbiza', 'rural', 16),
(158, 'Machachi', 'urbana', 17),
(159, 'Alóag', 'rural', 17),
(160, 'Aloasí', 'rural', 17),
(161, 'Manuel Cornejo Astorga (Tandapi)', 'rural', 17),
(162, 'Cutuglagua', 'rural', 17),
(163, 'El Chaupi', 'rural', 17),
(164, 'Tambillo', 'rural', 17),
(165, 'Uyumbicho', 'rural', 17),
(166, 'Tabacundo', 'urbana', 18),
(167, 'La Esperanza', 'rural', 18),
(168, 'Tocachi', 'rural', 18),
(169, 'Malchinguí', 'rural', 18),
(170, 'Tupigachi', 'rural', 18),
(171, 'Los Bancos', 'urbana', 19),
(172, 'Mindo', 'rural', 19),
(173, 'Cayambe ', 'urbana', 20),
(174, 'Juan Montalvo', 'urbana', 20),
(175, 'Ayora', 'rural', 20),
(176, 'Ascázubi', 'rural', 20),
(177, 'Santa Rosa de Cusubamba', 'rural', 20),
(178, 'Otón', 'rural', 20),
(179, 'Cangahua', 'rural', 20),
(180, 'Olmedo', 'rural', 20),
(181, '11 de noviembre', 'rural', 21),
(182, 'Alaques', 'rural', 21),
(183, 'Belisario Quevedo', 'rural', 21),
(184, 'Guaitacama', 'rural', 21),
(185, 'Joseguango Bajo', 'rural', 21),
(186, 'Mulaló', 'rural', 21),
(187, 'Poaló', 'rural', 21),
(188, 'San Juan de Pastocalle', 'rural', 21),
(189, 'Tanicuchí', 'rural', 21),
(190, 'Toacaso', 'rural', 21),
(191, 'Eloy Alfaro', 'urbana', 21),
(192, 'Ignacio Flores', 'urbana', 21),
(193, 'Juan Montalvo', 'urbana', 21),
(194, 'La Matriz', 'urbana', 21),
(195, 'San Buenaventura', 'urbana', 21),
(196, 'Latacunga', 'urbana', 21),
(197, 'Guasaganda', 'rural', 22),
(198, 'Pucayacu', 'rural', 22),
(199, 'El Carmen', 'urbana', 22),
(200, 'La Maná', 'urbana', 22),
(201, 'El Triunfo', 'urbana', 22),
(202, 'Moraspungo', 'rural', 23),
(203, 'Pinllopata', 'rural', 23),
(204, 'Ramón Campaña', 'rural', 23),
(205, 'El Corazón', 'urbana', 23),
(206, 'Angamarca', 'rural', 24),
(207, 'Guangaje', 'rural', 24),
(208, 'La Victoria', 'rural', 24),
(209, 'Pilaló', 'rural', 24),
(210, 'Tingo  ', 'rural', 24),
(211, 'Zumbahua', 'rural', 24),
(212, 'Pujilí', 'urbana', 24),
(213, 'Antonio José Holguín', 'rural', 25),
(214, 'Cusubamba', 'rural', 25),
(215, 'Mulalillo', 'rural', 25),
(216, 'Mulliquindil', 'rural', 25),
(217, 'Pansaleo', 'rural', 25),
(218, 'San Miguel', 'urbana', 25),
(219, 'Saquisilí', 'urbana', 26),
(220, 'Cochapamba', 'rural', 26),
(221, 'Canchagua', 'rural', 26),
(222, 'Chantilín', 'rural', 26),
(223, 'Sigchos', 'urbana', 27),
(224, 'Chugchillán', 'rural', 27),
(225, 'Isinliví', 'rural', 27),
(226, 'Las Pampas', 'rural', 27),
(227, 'Palo Quemado', 'rural', 27),
(228, 'Ambatillo', 'rural', 28),
(229, 'Atahualpa', 'rural', 28),
(230, 'Augusto N. Martínez', 'rural', 28),
(231, 'Constantino Fernández', 'rural', 28),
(232, 'Huachi Grande', 'rural', 28),
(233, 'Izamba', 'rural', 28),
(234, 'Juan Benigno Vela', 'rural', 28),
(235, 'Montalvo', 'rural', 28),
(236, 'Pasa', 'rural', 28),
(237, 'Picaigua', 'rural', 28),
(238, 'Pilagüín', 'rural', 28),
(239, 'Quisapincha', 'rural', 28),
(240, 'San Bartolomé de Pinllog', 'rural', 28),
(241, 'San Fernando', 'rural', 28),
(242, 'Santa Rosa', 'rural', 28),
(243, 'Totoras', 'rural', 28),
(244, 'Cunchibamba', 'rural', 28),
(245, 'Unamuncho', 'rural', 28),
(246, 'Atocha – Ficoa', 'urbana', 28),
(247, 'Celiano Monge', 'urbana', 28),
(248, 'Huachi Chico', 'urbana', 28),
(249, 'Huachi Loreto', 'urbana', 28),
(250, 'La Merced', 'urbana', 28),
(251, 'La Península', 'urbana', 28),
(252, 'Matriz', 'urbana', 28),
(253, 'Pishilata ', 'urbana', 28),
(254, 'San Francisco', 'urbana', 28),
(255, 'Lligua', 'rural', 29),
(256, ' Río Negro', 'rural', 29),
(257, 'Río Verde', 'rural', 29),
(258, 'Ulba', 'rural', 29),
(259, 'Baños de Agua Santa', 'urbana', 29),
(260, 'Cevallos', 'urbana', 30),
(261, 'Pinguilí Santo Domingo', 'rural', 31),
(262, 'Mocha', 'urbana', 31),
(263, 'Patate', 'urbana', 32),
(264, 'Sucre', 'rural', 32),
(265, 'El Triunfo', 'rural', 32),
(266, 'Los Andes', 'rural', 32),
(267, 'Benítez', 'rural', 33),
(268, 'Bolívar', 'rural', 33),
(269, 'Cotaló', 'rural', 33),
(270, 'Chiquicha', 'rural', 33),
(271, 'El Rosario', 'rural', 33),
(272, 'García Moreno', 'rural', 33),
(273, 'Huambaló', 'rural', 33),
(274, 'Salasaca', 'rural', 33),
(275, 'Pelileo', 'urbana', 33),
(276, 'Pelileo Grande', 'urbana', 33),
(277, 'Baquerizo Moreno', 'rural', 34),
(278, 'Emilio María Terán', 'rural', 34),
(279, 'Marcos Espinel', 'rural', 34),
(280, 'Presidente Urbina', 'rural', 34),
(281, 'San Andrés', 'rural', 34),
(282, 'San José de Poaló', 'rural', 34),
(283, 'San Miguelito', 'rural', 34),
(284, 'Ciudad Nueva', 'urbana', 34),
(285, 'Píllaro', 'urbana', 34),
(286, 'Rumipamba', 'rural', 35),
(287, 'Yanayacu – Mochapata', 'rural', 35),
(288, 'Quero', 'urbana', 35),
(289, 'Quinchicoto', 'rural', 36),
(290, 'Tisaleo', 'urbana', 36),
(291, 'San Pedro de Guaranda (cabecera cantonal)', 'urbana', 37),
(292, 'Ángel Polibio Chávez', 'urbana', 37),
(293, 'Gabriel Ignacio Veintimilla', 'urbana', 37),
(294, 'Guanujo', 'urbana', 37),
(295, 'Eugenio Espejo (Calpaquí)', 'rural', 37),
(296, 'Facundo Vela', 'rural', 37),
(297, 'Julio Moreno', 'rural', 37),
(298, 'Salinas', 'rural', 37),
(299, 'San Lorenzo', 'rural', 37),
(300, 'San Luis de Pambil', 'rural', 37),
(301, 'San Simón', 'rural', 37),
(302, 'Santa Fe', 'rural', 37),
(303, 'Simiatug', 'rural', 37),
(304, 'San José de Chimbo', 'urbana', 38),
(305, 'Asunción (Asancoto)', 'rural', 38),
(306, 'Magdalena (Chapacoto)', 'rural', 38),
(307, 'San Sebastián', 'rural', 38),
(308, 'Telimbela', 'rural', 38),
(309, 'San Miguel', 'urbana', 39),
(310, 'Balsapamba', 'rural', 39),
(311, 'Bilován', 'rural', 39),
(312, 'Régulo de Mora', 'rural', 39),
(313, 'San Pablo de Atenas', 'rural', 39),
(314, 'Santiago', 'rural', 39),
(315, 'San Vicente', 'rural', 39),
(316, 'Chillanes', 'urbana', 40),
(317, 'San José del Tambo', 'rural', 40),
(318, 'Echeandía', 'urbana', 41),
(319, 'Caluma', 'urbana', 42),
(320, 'Las Mercedes', 'urbana', 43),
(321, 'Las Naves', 'urbana', 43),
(322, 'Bilbao', 'rural', 44),
(323, 'El Altar', 'rural', 44),
(324, 'La Candelaria', 'rural', 44),
(325, 'Matus', 'rural', 44),
(326, 'Puela', 'rural', 44),
(327, 'San Antonio de Bayushig', 'rural', 44),
(328, 'Penipe', 'urbana', 44),
(329, 'Guanando', 'rural', 45),
(330, 'Ilapo', 'rural', 45),
(331, 'La Providencia', 'rural', 45),
(332, 'San Andrés', 'rural', 45),
(333, 'San Gerardo de Pacaicaguán', 'rural', 45),
(334, 'San Isidro de Patulú', 'rural', 45),
(335, 'San José del Chazo', 'rural', 45),
(336, 'Santa Fe de Galán', 'rural', 45),
(337, 'Valparaíso', 'rural', 45),
(338, 'La Matriz ', 'urbana', 45),
(339, 'El Rosario', 'urbana', 45),
(340, 'Cacha', 'rural', 46),
(341, 'Calpi', 'rural', 46),
(342, 'Cubijíes', 'rural', 46),
(343, 'Flores', 'rural', 46),
(344, 'Licán', 'rural', 46),
(345, 'Licto', 'rural', 46),
(346, 'Pungala', 'rural', 46),
(347, 'Punín', 'rural', 46),
(348, 'Quimiag', 'rural', 46),
(349, 'San Juan', 'rural', 46),
(350, 'San Luis', 'rural', 46),
(351, 'Lizarzaburu', 'urbana', 46),
(352, 'Maldonado', 'urbana', 46),
(353, 'Velasco', 'urbana', 46),
(354, 'Veloz', 'urbana', 46),
(355, 'Yaruquíes', 'urbana', 46),
(356, 'Chambo', 'urbana', 47),
(357, 'Cañi', 'rural', 48),
(358, 'Columbe', 'rural', 48),
(359, 'Juan de Velasco', 'rural', 48),
(360, 'Santiago de Quito', 'rural', 48),
(361, 'Cajabamba', 'urbana', 48),
(362, 'Sicalpa', 'urbana', 48),
(363, 'Cebadas ', 'rural', 49),
(364, 'Palmira', 'rural', 49),
(365, 'Guamote', 'urbana', 49),
(366, 'Pallatanga', 'urbana', 50),
(367, 'Alausí Central', 'urbana', 51),
(368, 'Tixán', 'rural', 51),
(369, 'Sibambe', 'rural', 51),
(370, 'Huigra', 'rural', 51),
(371, 'Pistishi', 'rural', 51),
(372, 'Guasuntos', 'rural', 51),
(373, 'Achupallas', 'rural', 51),
(374, 'Sevilla', 'rural', 51),
(375, 'Pumallacta', 'rural', 51),
(376, 'Multitud', 'rural', 51),
(377, 'Chunchi', 'urbana', 52),
(378, 'Capzol', 'rural', 52),
(379, 'Compud', 'rural', 52),
(380, 'Gonzol', 'rural', 52),
(381, 'Llagos', 'rural', 52),
(382, 'Cumandá', 'urbana', 53),
(383, 'Cojitambo', 'rural', 54),
(384, 'Guapán', 'rural', 54),
(385, 'Javier Loyola', 'rural', 54),
(386, 'Luis Cordero', 'rural', 54),
(387, 'Pindilig', 'rural', 54),
(388, 'Rivera', 'rural', 54),
(389, 'San Miguel', 'rural', 54),
(390, 'Taday', 'rural', 54),
(391, 'Aurelio Bayas Martínez', 'urbana', 54),
(392, 'Azogues', 'urbana', 54),
(393, 'Borrero', 'urbana', 54),
(394, 'San Francisco', 'urbana', 54),
(395, 'Cañar', 'urbana', 55),
(396, 'Chontamarca', 'rural', 55),
(397, 'Ventura', 'rural', 55),
(398, 'San Antonio', 'rural', 55),
(399, 'Gualleturo', 'rural', 55),
(400, 'Juncal', 'rural', 55),
(401, 'Cañar', 'rural', 55),
(402, 'Zhud', 'rural', 55),
(403, 'General Morales', 'rural', 55),
(404, 'Ducur', 'rural', 55),
(405, 'Chorocopte', 'rural', 55),
(406, 'Ingapirca', 'rural', 55),
(407, 'Honorato Vasquez', 'rural', 55),
(408, 'Biblián', 'urbana', 56),
(409, 'Jerusalén', 'rural', 56),
(410, 'Turupamba', 'rural', 56),
(411, 'Nazón', 'rural', 56),
(412, 'San Francisco de Sageo', 'rural', 56),
(413, 'LA TRONCAL', 'urbana', 57),
(414, 'MANUEL J. CALLE', 'rural', 57),
(415, 'PANCHO NEGRO', 'rural', 57),
(416, 'EL TAMBO', 'urbana', 58),
(417, 'DELEG', 'urbana', 59),
(418, 'SOLANO', 'rural', 59),
(419, 'SUSCAL', 'urbana', 60),
(420, 'CAMILO PONCE ENRIQUEZ', 'urbana', 61),
(421, 'CHORDELEG', 'urbana', 62),
(422, 'Delegsol', 'rural', 62),
(423, 'Principal', 'rural', 62),
(424, 'La Unión', 'rural', 62),
(425, 'San Martín de Puzhío', 'rural', 62),
(426, 'Bellavista', 'urbana', 63),
(427, 'Cañaribamba', 'urbana', 63),
(428, 'El Batán', 'urbana', 63),
(429, 'El Sagrario', 'urbana', 63),
(430, 'El Vecino', 'urbana', 63),
(431, 'Gil Ramírez Dávalos', 'urbana', 63),
(432, 'Hermano Miguel', 'urbana', 63),
(433, 'Huayna Cápac', 'urbana', 63),
(434, 'Machángara', 'urbana', 63),
(435, 'Monay', 'urbana', 63),
(436, 'San Blas', 'urbana', 63),
(437, 'San Sebastián', 'urbana', 63),
(438, 'Sucre', 'urbana', 63),
(439, 'Totoracocha', 'urbana', 63),
(440, 'Yanuncay', 'urbana', 63),
(441, 'Baños', 'rural', 63),
(442, 'Chaucha', 'rural', 63),
(443, 'Checa', 'rural', 63),
(444, 'Chiquintad', 'rural', 63),
(445, 'Cumbe', 'rural', 63),
(446, 'El Valle', 'rural', 63),
(447, 'Llacao', 'rural', 63),
(448, 'Molleturo', 'rural', 63),
(449, 'Nulti', 'rural', 63),
(450, 'Octavio Cordero Palacios', 'rural', 63),
(451, 'Paccha', 'rural', 63),
(452, 'Quingeo', 'rural', 63),
(453, 'Ricaurte', 'rural', 63),
(454, 'San Joaquín', 'rural', 63),
(455, 'Santa Ana', 'rural', 63),
(456, 'Sayausí', 'rural', 63),
(457, 'Sidcay', 'rural', 63),
(458, 'Sinincay', 'rural', 63),
(459, 'Tarqui', 'rural', 63),
(460, 'Turi', 'rural', 63),
(461, 'Victoria del Portete', 'rural', 63),
(462, 'El Pan', 'urbana', 64),
(463, 'San Vicente', 'rural', 64),
(464, 'Girón', 'urbana', 65),
(465, 'La Asunción', 'rural', 65),
(466, 'San Gerardo', 'rural', 65),
(467, 'Guachapala', 'urbana', 66),
(468, 'Gualaceo', 'urbana', 67),
(469, 'Jadán', 'rural', 67),
(470, 'Luis Cordero (Laguán)', 'rural', 67),
(471, 'Zhidmad', 'rural', 67),
(472, 'San Juan', 'rural', 67),
(473, 'Remigio Crespo T. (Gúlag)', 'rural', 67),
(474, 'Mariano Moreno (Callasay)', 'rural', 67),
(475, 'Daniel Córdova', 'rural', 67),
(476, 'Simón Bolívar (Gañansol)', 'rural', 67),
(477, 'Nabón', 'urbana', 68),
(478, 'Cochapata', 'rural', 68),
(479, 'Las Nieves', 'rural', 68),
(480, 'El Progreso', 'rural', 68),
(481, 'San Felipe de Oña', 'urbana', 69),
(482, 'Susudel', 'urbana', 69),
(483, 'Paute', 'urbana', 70),
(484, 'San Cristóbal', 'rural', 70),
(485, 'Bulán', 'rural', 70),
(486, 'El Cabo', 'rural', 70),
(487, 'Dugdug', 'rural', 70),
(488, 'Chicán', 'rural', 70),
(489, 'Tomebamba', 'rural', 70),
(490, 'Guaraynag', 'rural', 70),
(491, 'San Juan Bautista de Pucará', 'urbana', 71),
(492, 'San Rafael de Sharug', 'urbana', 71),
(493, 'San Fernando', 'urbana', 72),
(494, 'El Carmen de Pijilí', 'urbana', 73),
(495, 'Santa Isabel', 'urbana', 73),
(496, 'Shaglli', 'urbana', 73),
(497, 'Sevilla de Oro', 'urbana', 74),
(498, 'Palmas', 'rural', 74),
(499, 'Amaluza', 'rural', 74),
(500, 'Güel', 'rural', 75),
(501, 'Cutchil', 'rural', 75),
(502, 'San José de Raranga', 'rural', 75),
(503, 'San Miguel de Jima', 'rural', 75),
(504, 'San Bartolomé', 'rural', 75),
(505, 'Ludo', 'rural', 75),
(506, 'Sígsig', 'urbana', 75),
(507, 'Cariamanga', 'urbana', 76),
(508, 'Chile', 'urbana', 76),
(509, 'San Vicente', 'urbana', 76),
(510, 'Colaisaca', 'rural', 76),
(511, 'El Lucero', 'rural', 76),
(512, 'Sanguillín', 'rural', 76),
(513, 'Utuana', 'rural', 76),
(514, 'Catamayo', 'urbana', 77),
(515, 'San José', 'urbana', 77),
(516, 'El Tambo', 'rural', 77),
(517, 'Guayquichuma', 'rural', 77),
(518, 'San Pedro de la Bendita', 'rural', 77),
(519, 'Zambi', 'rural', 77),
(520, 'Celica', 'urbana', 78),
(521, 'San Juan de Pózul', 'rural', 78),
(522, 'Tnte. Maximiliano Rodríguez', 'rural', 78),
(523, 'Cruzpamba', 'rural', 78),
(524, 'Sabanilla', 'rural', 78),
(525, 'Chaguarpamba', 'urbana', 79),
(526, 'Buena Vista', 'rural', 79),
(527, 'El Rosario', 'rural', 79),
(528, 'Santa Rufina', 'rural', 79),
(529, 'Amarillos', 'rural', 79),
(530, 'Amaluza ', 'urbana', 80),
(531, 'Bellavista ', 'rural', 80),
(532, 'Jimbura', 'rural', 80),
(533, 'Santa Teresita', 'rural', 80),
(534, '27 de Abril (Cab. en La Naranja)', 'rural', 80),
(535, 'El Ingenio', 'rural', 80),
(536, 'El Airo', 'rural', 80),
(537, 'Gonzanamá', 'urbana', 81),
(538, 'Changaimina (La Libertad)', 'rural', 81),
(539, 'Purunuma (Eguiguren)', 'rural', 81),
(540, 'Nambacola', 'rural', 81),
(541, 'Sacapalca', 'rural', 81),
(542, 'El Sagrario', 'urbana', 82),
(543, 'Sucre', 'urbana', 82),
(544, 'El Valle', 'urbana', 82),
(545, 'San Sebastián', 'urbana', 82),
(546, 'Punzara', 'urbana', 82),
(547, 'Carigán', 'urbana', 82),
(548, 'Chantaco', 'rural', 82),
(549, 'Chuquiribamba', 'rural', 82),
(550, 'El Cisne', 'rural', 82),
(551, 'Gualel', 'rural', 82),
(552, 'Jimbilla', 'rural', 82),
(553, 'Malacatos', 'rural', 82),
(554, 'Quinara', 'rural', 82),
(555, 'San Lucas', 'rural', 82),
(556, 'San Pedro de Vilcabamba', 'rural', 82),
(557, 'Santiago', 'rural', 82),
(558, 'Taquil', 'rural', 82),
(559, 'Vilcabamba', 'rural', 82),
(560, 'Yangana', 'rural', 82),
(561, 'General Eloy Alfaro (San Sebastián)', 'urbana', 83),
(562, 'Macará (Manuel Enrique Rengel Suquilanda)', 'urbana', 83),
(563, 'Larama', 'rural', 83),
(564, 'Sabiango', 'rural', 83),
(565, 'La Victoria', 'rural', 83),
(566, 'Olmedo', 'urbana', 84),
(567, 'La Tingue', 'rural', 84),
(568, 'Catacocha', 'urbana', 85),
(569, 'Lourdes', 'urbana', 85),
(570, 'Cangonamá', 'rural', 85),
(571, 'Yamana', 'rural', 85),
(572, 'Lauro Guerrero', 'rural', 85),
(573, 'Casanga', 'rural', 85),
(574, 'San Antonio', 'rural', 85),
(575, 'Guachanamá', 'rural', 85),
(576, 'Orianga', 'rural', 85),
(577, 'Pindal ', 'urbana', 86),
(578, 'Chaquinal', 'rural', 86),
(579, 'Milagros', 'rural', 86),
(580, '12 de Diciembre (Cab. en Achiotes)', 'rural', 86),
(581, 'Alamor', 'urbana', 87),
(582, 'Ciano', 'rural', 87),
(583, 'El Arenal', 'rural', 87),
(584, 'El Limo (Mariana de Jesús)', 'rural', 87),
(585, 'Mercadillo', 'rural', 87),
(586, 'Vicentino', 'rural', 87),
(587, 'Quilanga', 'urbana', 88),
(588, 'Fundochamba.', 'rural', 88),
(589, 'San Antonio de Las Aradas (Cab. en Las Aradas)', 'rural', 88),
(590, 'Saraguro', 'urbana', 89),
(591, 'El Paraíso de Celen', 'rural', 89),
(592, 'El Tablón', 'rural', 89),
(593, 'Lluzhapa', 'rural', 89),
(594, 'Manu', 'rural', 89),
(595, 'San Antonio de Cumbe', 'rural', 89),
(596, 'San Pablo de Tenta', 'rural', 89),
(597, 'San Sebastián de Yuluc', 'rural', 89),
(598, 'Selva Alegre', 'rural', 89),
(599, 'Urdaneta (Paquishapa)', 'rural', 89),
(600, 'Sumaypamba', 'rural', 89),
(601, 'Sozoranga', 'urbana', 90),
(602, 'Nueva Fátima', 'rural', 90),
(603, 'Tacamoros', 'rural', 90),
(604, 'Zapotillo', 'urbana', 91),
(605, 'Paletillas', 'rural', 91),
(606, 'Mangahurco', 'rural', 91),
(607, 'Cazaderos', 'rural', 91),
(608, 'Parroquia Limones', 'rural', 91),
(609, 'Garza Real', 'rural', 91),
(610, 'Bolaspamba', 'rural', 91),
(611, 'Santo Domingo', 'urbana', 92),
(612, 'Chigüilpe', 'urbana', 92),
(613, 'Río Verde', 'urbana', 92),
(614, 'Abraham Calazacón', 'urbana', 92),
(615, 'Bombolí', 'urbana', 92),
(616, 'Río Toachi', 'urbana', 92),
(617, 'Zaracay', 'urbana', 92),
(618, 'Alluriquín', 'rural', 92),
(619, 'Luz de América', 'rural', 92),
(620, 'Puerto Limón', 'rural', 92),
(621, 'San Jacinto del Búa', 'rural', 92),
(622, 'Valle Hermoso', 'rural', 92),
(623, 'El Esfuerzo', 'rural', 92),
(624, 'Santa María del Toachi', 'rural', 92),
(625, 'La Concordia', 'urbana', 93),
(626, 'Monterrey', 'rural', 93),
(627, 'Plan Piloto', 'rural', 93),
(628, 'La Villegas', 'rural', 93),
(629, 'El Dorado de Cascales', 'urbana', 94),
(630, 'Santa Rosa de Sucumbíos', 'rural', 94),
(631, 'Sevilla', 'rural', 94),
(632, 'La Troncal', 'rural', 94),
(633, 'Tarapoa', 'urbana', 95),
(634, 'Cuyabeno', 'rural', 95),
(635, 'Aguas Negras', 'rural', 95),
(636, 'Lumbaquí', 'urbana', 96),
(637, 'El Reventador', 'rural', 96),
(638, 'Gonzalo Pizarro', 'rural', 96),
(639, 'Puerto Libre', 'rural', 96),
(640, 'Nueva Loja', 'urbana', 97),
(641, 'Dureno', 'rural', 97),
(642, 'El Eno', 'rural', 97),
(643, 'General Farfán', 'rural', 97),
(644, 'Jambelí', 'rural', 97),
(645, 'Pacayacu', 'rural', 97),
(646, 'Santa Cecilia', 'rural', 97),
(647, '10 de agosto', 'rural', 97),
(648, 'Puerto El Carmen del Putumayo', 'urbana', 98),
(649, 'Palma Roja', 'rural', 98),
(650, 'Puerto Rodríguez', 'rural', 98),
(651, 'Santa Elena', 'rural', 98),
(652, 'Puerto Bolívar (Puerto Montúfar)', 'rural', 98),
(653, 'Shushufindi ', 'urbana', 99),
(654, 'Limoncocha', 'rural', 99),
(655, 'Pañacocha', 'rural', 99),
(656, 'San Roque (Cab. en San Vicente)', 'rural', 99),
(657, 'San Pedro de los Cofanes', 'rural', 99),
(658, 'Siete de Julio', 'rural', 99),
(659, 'La Bonita', 'urbana', 100),
(660, 'El Playón de San Francisco', 'rural', 100),
(661, 'Rosa Florida', 'rural', 100),
(662, 'Santa Bárbara', 'rural', 100),
(663, 'La Sofía', 'rural', 100),
(664, 'Tena', 'urbana', 101),
(665, 'Ahuano', 'rural', 101),
(666, 'Tálag', 'rural', 101),
(667, 'Chontapunta', 'rural', 101),
(668, 'Misahuallí', 'rural', 101),
(669, 'Pano', 'rural', 101),
(670, 'Puerto Napo', 'rural', 101),
(671, 'Archidona', 'urbana', 102),
(672, 'Carlos Julio Arosemena Tola', 'urbana', 103),
(673, 'El Chaco', 'urbana', 104),
(674, 'Gonzalo Díaz de Pineda (El Bombón)', 'rural', 104),
(675, 'Linares', 'rural', 104),
(676, 'Oyacachi', 'rural', 104),
(677, 'Santa Rosa', 'rural', 104),
(678, 'Sardinas', 'rural', 104),
(679, 'Cacapishco', 'rural', 104),
(680, 'Baeza', 'urbana', 105),
(681, 'Cosanga', 'rural', 105),
(682, 'Cuyuja', 'rural', 105),
(683, 'Papallacta', 'rural', 105),
(684, 'San Francisco de Borja (Virgilio Dávila)', 'rural', 105),
(685, 'Sumaco (Salahonda).', 'rural', 105),
(686, 'Arajuno', 'urbana', 106),
(687, 'Curaray', 'rural', 106),
(688, 'Mera', 'urbana', 107),
(689, 'Madre Tierra', 'rural', 107),
(690, 'Shell', 'rural', 107),
(691, 'Puyo', 'urbana', 108),
(692, 'Canelos', 'rural', 108),
(693, 'Diez De Agosto', 'rural', 108),
(694, 'Fátima', 'rural', 108),
(695, 'Montalvo (Andoas)', 'rural', 108),
(696, 'Pomona', 'rural', 108),
(697, 'Río Corrientes', 'rural', 108),
(698, 'Río Tigre', 'rural', 108),
(699, 'Sarayacu', 'rural', 108),
(700, 'Simón Bolívar (Cab. en Mushullacta)', 'rural', 108),
(701, 'Tarqui', 'rural', 108),
(702, 'Teniente Hugo Ortiz', 'rural', 108),
(703, 'Veracruz (Cab. en Indillama)', 'rural', 108),
(704, 'El Triunfo', 'rural', 108),
(705, 'Chuwitayu', 'rural', 108),
(706, 'Santa Clara', 'urbana', 109),
(707, 'San José', 'rural', 109),
(708, 'Francisco de Orellana', 'urbana', 110),
(709, 'Alejandro Labaka', 'rural', 110),
(710, 'Armenia', 'rural', 110),
(711, 'Dayuma', 'rural', 110),
(712, 'El Dorado', 'rural', 110),
(713, 'El Edén', 'rural', 110),
(714, 'García Moreno', 'rural', 110),
(715, 'Guayusa', 'rural', 110),
(716, 'Inés Arango', 'rural', 110),
(717, 'La Belleza', 'rural', 110),
(718, 'Nuevo Paraíso', 'rural', 110),
(719, 'Taracoa', 'rural', 110),
(720, 'Nuevo Rocafuerte', 'urbana', 111),
(721, 'Tiputini ', 'urbana', 111),
(722, 'Capitán Augusto Rivadeneira', 'rural', 111),
(723, 'Cononaco', 'rural', 111),
(724, 'Santa María Huiririma', 'rural', 111),
(725, 'Yasuní', 'rural', 111),
(726, 'La Joya de los Sachas', 'urbana', 112),
(727, 'San Sebastián del Coca', 'rural', 112),
(728, 'Pompeya', 'rural', 112),
(729, 'Enokanqui', 'rural', 112),
(730, 'San Carlos', 'rural', 112),
(731, 'Unión Milagreña', 'rural', 112),
(732, 'Lago San Pedro', 'rural', 112),
(733, 'Rumipamba', 'rural', 112),
(734, 'Tres de Noviembre', 'rural', 112),
(735, 'Loreto', 'urbana', 113),
(736, 'Ávila (Cab. en Huiruno)', 'rural', 113),
(737, 'Puerto Murialdo', 'rural', 113),
(738, 'San José de Payamino', 'rural', 113),
(739, 'San José de Dahuano', 'rural', 113),
(740, 'San Vicente de Huaticocha', 'rural', 113),
(741, 'Macas', 'urbana', 114),
(742, 'Alshi (Cab. en 9 de Octubre)', 'rural', 114),
(743, 'General Proaño', 'rural', 114),
(744, 'San Isidro', 'rural', 114),
(745, 'Sevilla Don Bosco', 'rural', 114),
(746, 'Sinaí', 'rural', 114),
(747, 'Cuchaentza', 'rural', 114),
(748, 'Río Blanco', 'rural', 114),
(749, 'Zuña (Zuñac)', 'rural', 114),
(750, 'Gualaquiza (cabecera cantonal)', 'urbana', 115),
(751, 'Mercedes Molina', 'urbana', 115),
(752, 'Bomboiza', 'rural', 115),
(753, 'Nueva Tarqui', 'rural', 115),
(754, 'San Miguel de Cuyes', 'rural', 115),
(755, 'Amazonas', 'rural', 115),
(756, 'Chigüinda', 'rural', 115),
(757, 'Bermejos', 'rural', 115),
(758, 'El Rosario', 'rural', 115),
(759, 'El Ideal', 'rural', 115),
(760, 'Huamboya', 'urbana', 116),
(761, 'Chiguaza', 'rural', 116),
(762, 'General Leónidas Plaza Gutiérrez', 'urbana', 117),
(763, 'Indanza', 'rural', 117),
(764, 'San Miguel de Conchay', 'rural', 117),
(765, 'San Antonio', 'rural', 117),
(766, 'Santa Susana de Chiviaza', 'rural', 117),
(767, 'Yunganza', 'rural', 117),
(768, 'Logroño', 'urbana', 118),
(769, 'Yaupi', 'rural', 118),
(770, 'Shimpis', 'rural', 118),
(771, 'Pablo Sexto', 'urbana', 119),
(772, 'Palora', 'urbana', 120),
(773, 'Sangay (Cab. en Nayamanaca)', 'rural', 120),
(774, '16 de Agosto', 'rural', 120),
(775, 'Arapicos', 'rural', 120),
(776, 'Cumandá (Cab. en Colonia Agrícola Sevilla del Oro)', 'rural', 120),
(777, 'San Juan Bosco', 'urbana', 121),
(778, 'San Carlos de Limón', 'rural', 121),
(779, 'Pan de Azúcar', 'rural', 121),
(780, 'San Jacinto de Wakambeis', 'rural', 121),
(781, 'Santiago de Pananza', 'rural', 121),
(782, 'Santiago de Méndez', 'urbana', 122),
(783, 'Copal, Chupianza', 'rural', 122),
(784, 'San Luis del Acho', 'rural', 122),
(785, 'San Francisco de Chinimbimi', 'rural', 122),
(786, 'Patuca', 'rural', 122),
(787, 'Tayuza', 'rural', 122),
(788, 'Sucúa', 'urbana', 123),
(789, 'Asunción', 'rural', 123),
(790, 'Huambi', 'rural', 123),
(791, 'Santa Marianita de Jesús', 'rural', 123),
(792, 'Taisha', 'urbana', 124),
(793, 'Huasaga (Cab. en Wampuik)', 'rural', 124),
(794, 'Tuutinentza', 'rural', 124),
(795, 'Macuma', 'rural', 124),
(796, 'Pumpuentsa', 'rural', 124),
(797, 'Santiago', 'urbana', 125),
(798, 'San José de Morona', 'rural', 125),
(799, 'El Limón', 'urbana', 126),
(800, 'Zamora', 'urbana', 126),
(801, 'Cumbaratza', 'rural', 126),
(802, 'Guadalupe', 'rural', 126),
(803, 'Imbana', 'rural', 126),
(804, 'Sabanilla', 'rural', 126),
(805, 'San Carlos', 'rural', 126),
(806, 'Timbara', 'rural', 126),
(807, 'Zumbi', 'urbana', 127),
(808, 'Triunfo-Dorado', 'rural', 127),
(809, 'Panguintza', 'rural', 127),
(810, 'Zumba', 'urbana', 128),
(811, 'Chito', 'rural', 128),
(812, 'Chonta', 'rural', 128),
(813, 'El Chorro', 'rural', 128),
(814, 'Pucapamba', 'rural', 128),
(815, 'San Andrés', 'rural', 128),
(816, 'El Pangui', 'urbana', 129),
(817, 'El Guismi', 'rural', 129),
(818, 'Pachicutza', 'rural', 129),
(819, 'Tundayme', 'rural', 129),
(820, 'Guayzimi', 'urbana', 130),
(821, 'Zurmi', 'rural', 130),
(822, 'Nuevo Paraiso', 'rural', 130),
(823, 'Nankais', 'rural', 130),
(824, 'Palanda', 'urbana', 131),
(825, 'Vergel', 'rural', 131),
(826, 'El Porvenir', 'rural', 131),
(827, 'Valladolid', 'rural', 131),
(828, 'La Canela', 'rural', 131),
(829, 'Paquisha', 'urbana', 132),
(830, 'Nuevo Quito', 'rural', 132),
(831, 'Bellavista', 'rural', 132),
(832, '28 de Mayo', 'urbana', 133),
(833, 'La Paz', 'rural', 133),
(834, 'Tutupali', 'rural', 133),
(835, 'Chicaña', 'rural', 134),
(836, 'Los Encuentros', 'rural', 134),
(837, 'Yantzaza', 'urbana', 134),
(838, 'Tabiazo', 'rural', 135),
(839, 'Tachina', 'rural', 135),
(840, 'Vuelta Larga', 'rural', 135),
(841, 'Camarones', 'rural', 135),
(842, 'Chinca', 'rural', 135),
(843, 'Carlos Concha', 'rural', 135),
(844, 'Majua', 'rural', 135),
(845, 'San Mateo', 'rural', 135),
(846, '5 de Agosto', 'urbana', 135),
(847, 'Bartolomé Ruíz', 'urbana', 135),
(848, 'Esmeraldas', 'urbana', 135),
(849, 'Luis Tello', 'urbana', 135),
(850, 'Simón Plata', 'urbana', 135),
(851, 'Atacames', 'urbana', 136),
(852, 'La Unión', 'rural', 136),
(853, 'Súa (Cab. en La Bocana)', 'rural', 136),
(854, 'Tonchigüe', 'rural', 136),
(855, 'Tonsupa', 'rural', 136),
(856, 'Anchayacu', 'rural', 137),
(857, 'Atahualpa (Camarones) Borbón', 'rural', 137),
(858, 'Colón Eloy del María', 'rural', 137),
(859, 'La Tola', 'rural', 137),
(860, 'Luis Vargas Torres (Playa de Oro) Maldonado', 'rural', 137),
(861, 'Pampanal de Bolívar', 'rural', 137),
(862, 'San Francisco de Onzole', 'rural', 137),
(863, 'San José de Cayapas', 'rural', 137),
(864, 'Santo Domingo de Onzole', 'rural', 137),
(865, 'Selva Alegre', 'rural', 137),
(866, 'Telembí', 'rural', 137),
(867, 'Timbiré', 'rural', 137),
(868, 'Valdez', 'urbana', 137),
(869, 'Galera', 'rural', 138),
(870, 'El Cabo de San Francisco', 'rural', 138),
(871, 'Bolívar', 'rural', 138),
(872, 'Sálima', 'rural', 138),
(873, 'Quingue', 'rural', 138),
(874, 'Gregorio', 'rural', 138),
(875, 'Daule', 'rural', 138),
(876, 'San José de Chamanga ', 'rural', 138),
(877, 'Muisne', 'urbana', 138),
(878, 'Rosa Zárate', 'urbana', 139),
(879, 'Cube', 'rural', 139),
(880, 'Chura', 'rural', 139),
(881, 'Malimpia', 'rural', 139),
(882, 'La Unión', 'rural', 139),
(883, 'Viche', 'rural', 139),
(884, 'Rioverde', 'urbana', 140),
(885, 'Chontaduro', 'rural', 140),
(886, 'Chumundé', 'rural', 140),
(887, 'Lagarto GAD Lagarto', 'rural', 140),
(888, 'Montalvo (Cab. en Horqueta)', 'rural', 140),
(889, 'Rocafuerte', 'rural', 140),
(890, 'Alto Tambo', 'rural', 141),
(891, 'Ancón de Sardinas', 'rural', 141),
(892, 'Calderón', 'rural', 141),
(893, 'Carondelet', 'rural', 141),
(894, '5 de junio', 'rural', 141),
(895, 'Concepción', 'rural', 141),
(896, 'Mataje', 'rural', 141),
(897, 'San Javier de Cachavi', 'rural', 141),
(898, 'Santa Rita', 'rural', 141),
(899, 'Tambillo', 'rural', 141),
(900, 'Tululbí', 'rural', 141),
(901, 'Urbina', 'rural', 141),
(902, '12 de marzo', 'urbana', 142),
(903, '18 de octubre', 'urbana', 142),
(904, 'Andrés de Vera', 'urbana', 142),
(905, 'Colón', 'urbana', 142),
(906, 'Francisco Pacheco', 'urbana', 142),
(907, 'San Pablo', 'urbana', 142),
(908, 'Simón Bolívar', 'urbana', 142),
(909, 'Picoaza', 'urbana', 142),
(910, 'Portoviejo', 'urbana', 142),
(911, 'Abdón Calderón (San Francisco de Asis)', 'rural', 142),
(912, 'Alhajuela (Bajo Grande)', 'rural', 142),
(913, 'Chirijos', 'rural', 142),
(914, 'Crucita', 'rural', 142),
(915, 'Pueblo Nuevo', 'rural', 142),
(916, 'San Plácido', 'rural', 142),
(917, 'Riochico (Río Chico)', 'rural', 142),
(918, 'Sucre', 'urbana', 143),
(919, 'Bellavista', 'rural', 143),
(920, 'Noboa ', 'rural', 143),
(921, 'Sixto Duran Ballén', 'rural', 143),
(922, 'Calceta', 'urbana', 144),
(923, 'Membrillo', 'rural', 144),
(924, 'Quiroga', 'rural', 144),
(925, 'Chone', 'urbana', 145),
(926, 'Santa Rita', 'urbana', 145),
(927, 'Canuto', 'rural', 145),
(928, 'Convento', 'rural', 145),
(929, 'Chibunga', 'rural', 145),
(930, 'San Antonio', 'rural', 145),
(931, 'Eloy Alfaro', 'rural', 145),
(932, 'Ricaurte', 'rural', 145),
(933, 'Boyacá', 'rural', 145),
(934, '4 de Diciembre', 'urbana', 146),
(935, 'El Carmen', 'urbana', 146),
(936, 'San Pedro de Suma', 'rural', 146),
(937, 'Wilfrido Loor Moreira (Maicito)', 'rural', 146),
(938, 'Flavio Alfaro', 'urbana', 147),
(939, 'San Francisco de Novillo (Cab. en Novillo).', 'rural', 147),
(940, 'Zapallo', 'rural', 147),
(941, 'Jama', 'urbana', 148),
(942, 'Jaramijó', 'urbana', 149),
(943, 'San Lorenzo de Jipijapa', 'urbana', 150),
(944, 'Manuel Inocencio Parrales y Guale', 'urbana', 150),
(945, 'Dr. Miguel Morán Lucio', 'urbana', 150),
(946, 'La América', 'rural', 150),
(947, 'El Anegado (Cab. en Eloy Alfaro)', 'rural', 150),
(948, 'Julcuy', 'rural', 150),
(949, 'Pedro Pablo Gómez', 'rural', 150),
(950, 'Puerto Cayo', 'rural', 150),
(951, 'Membrillal', 'rural', 150),
(952, 'La Unión', 'rural', 150),
(953, 'Junín', 'urbana', 151),
(954, 'Los Esteros', 'urbana', 152),
(955, 'Manta', 'urbana', 152),
(956, 'San Mateo', 'urbana', 152),
(957, 'Eloy Alfaro', 'urbana', 152),
(958, 'Tarqui', 'urbana', 152),
(959, 'San Lorenzo', 'rural', 152),
(960, 'Santa Marianita (Boca de Pacoche)', 'rural', 152),
(961, 'Aníbal San Andrés', 'urbana', 153),
(962, 'Colorado', 'urbana', 153),
(963, 'General Alfaro', 'urbana', 153),
(964, 'Leónidas Proaño', 'urbana', 153),
(965, 'Montecristi', 'urbana', 153),
(966, 'La Pila', 'rural', 153),
(967, 'Olmedo', 'urbana', 154),
(968, 'Paján', 'urbana', 155),
(969, 'Guale', 'rural', 155),
(970, 'Lascano', 'rural', 155),
(971, 'Cascol', 'rural', 155),
(972, 'Campozano (La Palma de Paján)', 'rural', 155),
(973, 'Pedernales', 'urbana', 156),
(974, 'Cojimíes', 'rural', 156),
(975, '10 de Agosto', 'rural', 156),
(976, 'Atahualpa', 'rural', 156),
(977, 'Pichincha', 'urbana', 157),
(978, 'San Sebastián', 'rural', 157),
(979, 'Barraganete', 'rural', 157),
(980, 'Puerto López', 'urbana', 158),
(981, 'Puerto Machalilla', 'rural', 158),
(982, 'Salango', 'rural', 158),
(983, 'Puerto rico las tunas', 'rural', 158),
(984, 'Rocafuerte', 'urbana', 159),
(985, 'San Vicente ', 'urbana', 160),
(986, 'Canoa', 'rural', 160),
(987, 'Lodana', 'urbana', 161),
(988, 'Santa Ana', 'urbana', 161),
(989, 'Ayacucho', 'rural', 161),
(990, 'La Unión', 'rural', 161),
(991, 'San Pablo (Cab. en Pueblo Nuevo)', 'rural', 161),
(992, 'Honorato Vásquez (Cab. en Vásquez)', 'rural', 161),
(993, 'Bahía de Caráquez', 'urbana', 162),
(994, 'Leonidas Plaza Gutiérrez', 'urbana', 162),
(995, 'Charapotó', 'rural', 162),
(996, 'San Isidro', 'rural', 162),
(997, 'Tosagua', 'urbana', 163),
(998, 'Bachillero', 'urbana', 163),
(999, 'Angel Pedro Giler (La Estancilla)', 'urbana', 163),
(1000, 'Ayacucho', 'urbana', 164),
(1001, 'Bolívar', 'urbana', 164),
(1002, 'Carbo', 'urbana', 164),
(1003, 'Chongón', 'urbana', 164),
(1004, 'Febres Cordero', 'urbana', 164),
(1005, 'García Moreno', 'urbana', 164),
(1006, 'Letamendi', 'urbana', 164),
(1007, 'Nueve de Octubre', 'urbana', 164),
(1008, 'Olmedo', 'urbana', 164),
(1009, 'Pascuales', 'urbana', 164),
(1010, 'Roca', 'urbana', 164),
(1011, 'Rocafuerte', 'urbana', 164),
(1012, 'Sucre', 'urbana', 164),
(1013, 'Tarqui', 'urbana', 164),
(1014, 'Urdaneta', 'urbana', 164),
(1015, 'Ximena', 'urbana', 164),
(1016, 'Juan Gómez Rendón', 'rural', 164),
(1017, 'Morro', 'rural', 164),
(1018, 'Posorja', 'rural', 164),
(1019, 'Puná', 'rural', 164),
(1020, 'Tenguel', 'rural', 164),
(1021, 'Alfredo Baquerizo Moreno (Jujan)', 'urbana', 165),
(1022, 'Balao', 'urbana', 166),
(1023, 'San Jacinto de Balzar', 'urbana', 167),
(1024, 'San Jacinto', 'rural', 168),
(1025, 'Colimes', 'urbana', 168),
(1026, 'Daule', 'urbana', 169),
(1027, 'La Aurora', 'urbana', 169),
(1028, 'Juan Bautista Aguirre', 'rural', 169),
(1029, 'Limonal', 'rural', 169),
(1030, 'Los Lojas', 'rural', 169),
(1031, 'Eloy Alfaro', 'urbana', 170),
(1032, 'El Recreo', 'urbana', 170),
(1033, 'Divino Niño', 'urbana', 170),
(1034, 'Oramas Gonzales', 'urbana', 170),
(1035, 'Panorama', 'urbana', 170),
(1036, 'Brisas del Santay', 'urbana', 170),
(1037, 'El arbolito', 'urbana', 170),
(1038, 'Los helechos', 'urbana', 170),
(1039, 'Primavera 1 y 2', 'urbana', 170),
(1040, 'Brisas de procarsa', 'urbana', 170),
(1041, 'Velasco Ibarra', 'urbana', 171),
(1042, 'El Rosario', 'rural', 171),
(1043, 'Guayas', 'rural', 171),
(1044, 'El Triunfo', 'urbana', 172),
(1045, 'General Antonio Elizalde', 'urbana', 173),
(1046, 'Isidro Ayora', 'urbana', 174),
(1047, 'Lomas de Sargentillo', 'urbana', 175),
(1048, 'Coronel Marcelino Maridueña', 'urbana', 176),
(1049, 'Camilo Andrade Manrique', 'urbana', 177),
(1050, 'Chirijos', 'urbana', 177),
(1051, 'Coronel Enrique Valdez C.', 'urbana', 177),
(1052, 'Ernesto Seminario Hans', 'urbana', 177),
(1053, 'Santa Rosa de Chobo', 'rural', 177),
(1054, 'Mariscal Sucre', 'rural', 177),
(1055, 'Roberto Astudillo', 'rural', 177),
(1056, 'Naranjal', 'urbana', 178),
(1057, 'Jesús María', 'rural', 178),
(1058, 'San Carlos', 'rural', 178),
(1059, 'Santa Rosa de Flandes', 'rural', 178),
(1060, 'Taura', 'rural', 178),
(1061, 'Naranjito', 'urbana', 179),
(1062, 'Narcisa de Jesús', 'urbana', 180),
(1063, 'Palestina', 'urbana', 181),
(1064, 'Pedro Carbo', 'urbana', 182),
(1065, 'Sabanilla', 'rural', 182),
(1066, 'Valle de la Virgen', 'rural', 182),
(1067, 'General Villamil', 'urbana', 183),
(1068, 'Salitre', 'urbana', 184),
(1069, 'Samborondón', 'urbana', 185),
(1070, 'La Puntilla', 'urbana', 185),
(1071, 'Tarifa', 'rural', 185),
(1072, 'Santa Lucía', 'urbana', 186),
(1073, 'Simón Bolívar', 'urbana', 187),
(1074, 'Lorenzo de Garaicoa', 'rural', 187),
(1075, 'Yaguachi', 'urbana', 188),
(1076, 'Cone', 'rural', 188),
(1077, 'Vírgen de Fátima', 'rural', 188),
(1078, 'Pedro J. Montero', 'rural', 188),
(1079, 'Babahoyo', 'urbana', 189),
(1080, 'Camilo Ponce Enríquez', 'urbana', 189),
(1081, 'Clemente Baquerizo', 'urbana', 189),
(1082, 'El Salto', 'urbana', 189),
(1083, 'Caracol', 'rural', 189),
(1084, 'Febres Cordero', 'rural', 189),
(1085, 'La Unión', 'rural', 189),
(1086, 'Pimocha', 'rural', 189),
(1087, 'Baba', 'urbana', 190),
(1088, 'Guare', 'rural', 190),
(1089, 'Isla de Bejucal', 'rural', 190),
(1090, 'San Jacinto de Buena Fe', 'urbana', 191),
(1091, '7 de agosto', 'rural', 191),
(1092, 'Once de octubre', 'rural', 191),
(1093, 'Patricia Pilar', 'rural', 191),
(1094, 'Mocache', 'urbana', 192),
(1095, 'Montalvo', 'urbana', 193),
(1096, 'La Esmeralda', 'rural', 193),
(1097, 'Palenque', 'urbana', 194),
(1098, 'Puebloviejo', 'urbana', 195),
(1099, 'Puerto Pechiche', 'rural', 195),
(1100, 'San Juan', 'rural', 195),
(1101, '7 de octubre', 'urbana', 196),
(1102, '24 de mayo', 'urbana', 196),
(1103, 'Guayacán', 'urbana', 196),
(1104, 'Nicolás Infante Díaz', 'urbana', 196),
(1105, 'San Camilo', 'urbana', 196),
(1106, 'San Cristóbal', 'urbana', 196),
(1107, 'Quevedo (cabecera cantonal)', 'urbana', 196),
(1108, 'Venus del Río Quevedo', 'urbana', 196),
(1109, 'Viva Alfaro', 'urbana', 196),
(1110, 'La Esperanza', 'rural', 196),
(1111, 'San Carlos', 'rural', 196),
(1112, 'Quisaloma', 'urbana', 197),
(1113, 'Catarama', 'urbana', 198),
(1114, 'Ricaurte', 'rural', 198),
(1115, 'Valencia', 'urbana', 199),
(1116, 'La Unión', 'urbana', 199),
(1117, 'Nueva Unión', 'urbana', 199),
(1118, '10 de noviembre', 'urbana', 200),
(1119, 'Ventanas', 'urbana', 200),
(1120, 'Chacarita', 'rural', 200),
(1121, 'Los Ángeles', 'rural', 200),
(1122, 'Zapotal', 'rural', 200),
(1123, 'Vinces', 'urbana', 201),
(1124, 'Antonio Sotomayor', 'rural', 201),
(1125, 'Machala', 'urbana', 202),
(1126, 'Puerto Bolívar', 'urbana', 202),
(1127, 'La Providencia', 'urbana', 202),
(1128, '9 de mayo', 'urbana', 202),
(1129, 'Jambelí', 'urbana', 202),
(1130, 'Jubones', 'urbana', 202),
(1131, 'El Cambio', 'urbana', 202),
(1132, 'El Retiro', 'rural', 202),
(1133, 'Arenillas', 'urbana', 203),
(1134, 'Pueblo Nuevo (Las Mercedes)', 'urbana', 203),
(1135, 'Tierras Coloradas', 'urbana', 203),
(1136, 'Palmales', 'rural', 203),
(1137, 'Chacras', 'rural', 203),
(1138, 'Carcabón', 'rural', 203),
(1139, 'La Cuca', 'rural', 203),
(1140, 'Paccha', 'urbana', 204),
(1141, 'Ayapamba', 'rural', 204),
(1142, 'Milagro', 'rural', 204),
(1143, 'San José', 'rural', 204),
(1144, 'Cordoncillo', 'rural', 204),
(1145, 'San Juan de Cerro Azul', 'rural', 204),
(1146, 'Balsas', 'urbana', 205),
(1147, 'Bellamaría', 'rural', 205),
(1148, 'Chilla', 'urbana', 206),
(1149, 'El Guabo ', 'urbana', 207),
(1150, 'Barbones (Sucre)', 'rural', 207),
(1151, 'La Iberia', 'rural', 207),
(1152, 'Tendales (Cab. en Pto. Tendales)', 'rural', 207),
(1153, 'Río Bonito', 'rural', 207),
(1154, 'Chontillal', 'rural', 207),
(1155, 'Hualtaco', 'urbana', 208),
(1156, 'Ecuador', 'urbana', 208),
(1157, 'Unión Lojana', 'urbana', 208),
(1158, 'Milton Reyes ', 'urbana', 208),
(1159, 'El Paraiso', 'urbana', 208),
(1160, 'La Victoria', 'urbana', 209),
(1161, 'Platanillos', 'urbana', 209),
(1162, 'Valle Hermoso', 'urbana', 209),
(1163, 'La Libertad', 'rural', 209),
(1164, 'San Isidro', 'rural', 209),
(1165, 'El Paraíso', 'rural', 209),
(1166, 'Marcabelí', 'urbana', 210),
(1167, 'El Ingenio', 'rural', 210),
(1168, 'Ochoa León', 'urbana', 211),
(1169, 'Bolívar', 'urbana', 211),
(1170, 'Loma de Franco', 'urbana', 211),
(1171, 'Tres Cerritos', 'urbana', 211),
(1172, 'Buenavista', 'rural', 211),
(1173, 'Cañaquemada', 'rural', 211),
(1174, 'La Peaña', 'rural', 211),
(1175, 'Uzhcurrumi', 'rural', 211),
(1176, 'El Progreso', 'rural', 211),
(1177, 'Casacay', 'rural', 211),
(1178, 'Piñas', 'urbana', 212),
(1179, 'Piñas Grande', 'urbana', 212),
(1180, 'La Susaya', 'urbana', 212),
(1181, 'Capiro', 'rural', 212),
(1182, 'La Bocana', 'rural', 212),
(1183, 'Moromoro', 'rural', 212),
(1184, 'Piedras', 'rural', 212),
(1185, 'San Roque', 'rural', 212),
(1186, 'Saracay', 'rural', 212),
(1187, 'Portovelo', 'urbana', 213),
(1188, 'Morales', 'rural', 213),
(1189, 'Curtincapac ', 'rural', 213),
(1190, 'Salatí', 'rural', 213),
(1191, 'Balneareo Jambelí', 'urbana', 214),
(1192, 'Jumòn', 'urbana', 214),
(1193, 'Santa Rosa', 'urbana', 214),
(1194, 'Nuevo Santa Rosa', 'urbana', 214),
(1195, 'Puerto Jelí', 'urbana', 214),
(1196, 'Bellamaría', 'rural', 214),
(1197, 'Bellavista', 'rural', 214),
(1198, 'Jambelí', 'rural', 214),
(1199, 'La Avanzada', 'rural', 214),
(1200, 'San Antonio', 'rural', 214),
(1201, 'Torata', 'rural', 214),
(1202, 'Victoria', 'rural', 214),
(1203, 'Zaruma', 'urbana', 215),
(1204, 'Abañín', 'rural', 215),
(1205, 'Arcapamba', 'rural', 215),
(1206, 'Guanazán', 'rural', 215),
(1207, 'Guizhaguiña', 'rural', 215),
(1208, 'Huertas', 'rural', 215),
(1209, 'Malvas', 'rural', 215),
(1210, 'Muluncay Grande', 'rural', 215),
(1211, 'Sinsao', 'rural', 215),
(1212, 'Salvias', 'rural', 215),
(1213, 'La libertad', 'urbana', 216),
(1214, 'Salinas', 'urbana', 217),
(1215, 'Alberto Enríquez Gallo', 'urbana', 217),
(1216, 'Carlos Espinosa Larrea', 'urbana', 217),
(1217, 'Santa Rosa', 'urbana', 217),
(1218, 'Vicente Rocafuerte', 'urbana', 217),
(1219, 'Anconcito', 'rural', 217),
(1220, 'José Luis Tamayo', 'rural', 217),
(1221, 'Santa Elena', 'urbana', 218),
(1222, 'Ancón', 'rural', 218),
(1223, 'Atahualpa', 'rural', 218),
(1224, 'Chanduy', 'rural', 218),
(1225, 'Colonche', 'rural', 218),
(1226, 'Manglaralto', 'rural', 218),
(1227, 'Simón Bolívar', 'rural', 218),
(1228, 'Puerto Baquerizo Moreno', 'urbana', 219),
(1229, 'El Progreso', 'rural', 219),
(1230, 'Isla Santa María ', 'rural', 219),
(1231, 'Española "Hood"', 'rural', 219),
(1232, 'Santa Fé “Barrington”', 'rural', 219),
(1233, 'Genovesa "Tower"', 'rural', 219),
(1234, 'Puerto Villamil', 'urbana', 220),
(1235, 'Tomás de Berlanga (Santo Tomás)', 'rural', 220),
(1236, 'Charles Darwin "Culpepper"', 'rural', 220),
(1237, 'Fernandina “Narborough”', 'rural', 220),
(1238, 'Teodoro Wolf “Wenmen”', 'rural', 220),
(1239, 'Puerto Ayora', 'urbana', 221),
(1240, 'Bellavista', 'rural', 221),
(1241, 'Santa Rosa', 'rural', 221),
(1242, 'Marchena “Bindloe”', 'rural', 221),
(1243, 'Rábida “Jervis”', 'rural', 221),
(1244, 'Pinta “Abigdon”', 'rural', 221),
(1245, 'Santiago “San Salvador o James”', 'rural', 221),
(1246, 'Pinzón “Duncan”', 'rural', 221),
(1247, 'Seymour', 'rural', 221);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`idProvincia`, `nombre`) VALUES
(1, 'Carchi'),
(2, 'Imbabura'),
(3, 'Pichincha'),
(4, 'Cotopaxi'),
(5, 'Tungurahua'),
(6, 'Bolívar'),
(7, 'Chimborazo'),
(8, 'Cañar'),
(9, 'Azuay'),
(10, 'Loja'),
(11, 'Sto. Domingo de los Tsachilas'),
(12, 'Sucumbíos'),
(13, 'Napo'),
(14, 'Pastaza'),
(15, 'Orellana'),
(16, 'Morona Santiago'),
(17, 'Zamora Chinchipe'),
(18, 'Esmeraldas'),
(19, 'Manabí'),
(20, 'Guayas'),
(21, 'Los Ríos'),
(22, 'El Oro'),
(23, 'Santa Elena'),
(24, 'Galápagos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `era` varchar(60) DEFAULT NULL,
  `preiodo` varchar(50) DEFAULT NULL,
  `epoca` varchar(45) NOT NULL,
  `cronologia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursosfosil`
--

CREATE TABLE `recursosfosil` (
  `idRecursosFosil` int(11) NOT NULL,
  `imagenFosil` blob,
  `FichaFosil_idFichaFosil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiespe`
--

CREATE TABLE `regiespe` (
  `idRegiEspe` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `TipoReg_idTipoReg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regiespe`
--

INSERT INTO `regiespe` (`idRegiEspe`, `nombre`, `TipoReg_idTipoReg`) VALUES
(1, 'Estatal ', 1),
(2, 'Municipal ', 1),
(3, 'Religioso ', 2),
(4, 'Particular ', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reino`
--

CREATE TABLE `reino` (
  `idReino` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reino`
--

INSERT INTO `reino` (`idReino`, `nombre`) VALUES
(1, 'Animalie'),
(2, 'Plantae'),
(3, 'Fungi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subclase`
--

CREATE TABLE `subclase` (
  `idSubclase` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `Clase_idClase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subclase`
--

INSERT INTO `subclase` (`idSubclase`, `nombre`, `Clase_idClase`) VALUES
(1, 'NA', 1),
(2, 'NA', 2),
(3, 'NA', 3),
(4, 'Actinoposthiidae', 4),
(5, 'Anaperidae', 4),
(6, 'Childiidae', 4),
(7, 'Convolutidae', 4),
(8, 'Dakuidae', 4),
(9, 'Diopisthoporidae', 4),
(10, 'Hallangiidae', 4),
(11, 'Haploposthiidae', 4),
(12, 'Hofsteniidae', 4),
(13, 'Isodiametridae', 4),
(14, 'Mecynostomidae', 4),
(15, 'Otocelididae', 4),
(16, 'Paratomellidae', 4),
(17, 'Polycanthiidae', 4),
(18, 'Proporidae', 4),
(19, 'Sagittiferidae', 4),
(20, 'Solenofilomorphidae', 4),
(21, 'NA', 5),
(22, 'Enoplia', 6),
(23, 'Chromadoria', 6),
(24, 'Rhabditia', 7),
(25, 'Spiruria', 7),
(26, 'Diplogasteria', 7),
(27, 'Apterigota', 8),
(28, 'Pterigota', 8),
(29, 'NA', 9),
(30, 'NA', 10),
(31, 'NA', 11),
(32, 'S/N', 12),
(33, 'Notostigmophora', 13),
(34, 'Pleurostigmophora', 13),
(35, 'Penicillata', 14),
(36, 'Chilognatha', 14),
(37, 'S/N', 15),
(38, 'S/N', 16),
(39, 'S/N', 17),
(40, 'S/N', 18),
(41, 'Filópodos', 19),
(42, 'Sarsostraca', 19),
(43, 'NA', 20),
(44, 'N/A', 21),
(45, 'Thecostraca', 22),
(46, 'Tantulocarida', 22),
(47, 'Mystacocarida', 22),
(48, 'Copepoda', 22),
(49, 'Branchiura', 22),
(50, 'Pentastomida', 22),
(51, 'N/A', 23),
(52, 'Phyllocarida', 24),
(53, 'Hoplocarida', 24),
(54, 'Eumalacostraca', 24),
(55, 'N/A', 25),
(56, 'N/A', 26),
(57, 'N/A', 27),
(58, 'N/A', 28),
(59, 'N/A', 29),
(60, 'N/A', 30),
(61, 'NA', 31),
(62, 'NA', 32),
(63, 'NA', 33),
(64, 'NA', 34),
(65, 'NA', 35),
(66, 'NA', 36),
(67, 'Chondrostei', 37),
(68, 'Neopterygii', 37),
(69, 'Lissamphibia', 38),
(70, 'Temnospondyli', 38),
(71, 'Lepospondyli', 38),
(72, 'Reptiliomorpha', 38),
(73, 'NA', 39),
(74, 'Elasmobranchii', 40),
(75, 'Holocephali', 40),
(76, 'NA', 41),
(77, 'Anapsida', 42),
(78, 'Diapsida', 42),
(79, 'Octocorallia', 43),
(80, 'Hexacorallia', 43),
(81, 'NA', 44),
(82, 'Hydroidolina', 45),
(83, 'NA', 46),
(84, 'Malacosporea', 47),
(85, 'Myxosporea', 47),
(86, 'NA', 48),
(87, 'Staurozoa', 49),
(88, 'NA', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilia`
--

CREATE TABLE `subfamilia` (
  `idSubFamilia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Familia_idFamilia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suborden`
--

CREATE TABLE `suborden` (
  `idSubOrden` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Orden_idOrden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superfamilia`
--

CREATE TABLE `superfamilia` (
  `idSuperFamilia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Orden_idOrden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporeg`
--

CREATE TABLE `tiporeg` (
  `idTipoReg` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tiporeg`
--

INSERT INTO `tiporeg` (`idTipoReg`, `nombre`) VALUES
(1, 'Público '),
(2, 'Privada ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `contrasenia` varchar(50) NOT NULL,
  `rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `cedula`, `nombres`, `apellidos`, `correo`, `contrasenia`, `rol`) VALUES
(1, 1105102543, 'Rocío del Carmen', 'Jaramillo Rosales', 'rcjaramillo2@utpl.edu.ec', 'chio12345', 'Administrador'),
(2, 1105102550, 'Lizbeth Carolina', 'Pacheco Guevara', 'lgcp@gmail.com', 'liz12345', 'Usuario'),
(3, 1111111111, 'Amanda Ximena', 'Tacuri Jaramillo', 'chiojaramillo2@gmail.com', 'mary12345', 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canton`
--
ALTER TABLE `canton`
  ADD PRIMARY KEY (`idCanton`),
  ADD KEY `fk_Canton_Provincia1_idx` (`Provincia_idProvincia`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`idClase`),
  ADD KEY `fk_Clase_Filo-Division1_idx` (`Filo-Division_idFilo-Division`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`idColeccion`);

--
-- Indices de la tabla `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`idFamilia`,`SuperFamilia_idSuperFamilia`),
  ADD KEY `fk_Familia_SuperFamilia1_idx` (`SuperFamilia_idSuperFamilia`);

--
-- Indices de la tabla `fichafosil`
--
ALTER TABLE `fichafosil`
  ADD PRIMARY KEY (`idFichaFosil`),
  ADD KEY `fk_Fosil_Coleccion1_idx` (`Coleccion_idColeccion`),
  ADD KEY `fk_Fosil_Proyecto1_idx` (`Proyecto_idProyecto`),
  ADD KEY `fk_Fosil_Subclase1_idx` (`Subclase_idSubclase`),
  ADD KEY `fk_Fosil_SubFamilia1_idx` (`SubFamilia_idSubFamilia`),
  ADD KEY `fk_Fosil_Genero1_idx` (`Genero_idGenero`),
  ADD KEY `fk_Fosil_RegiEspe1_idx` (`RegiEspe_idRegiEspe`),
  ADD KEY `fk_Fosil_Localizacion1_idx` (`Localizacion_idLocalizacion`),
  ADD KEY `fk_Fosil_SubOrden1_idx` (`SubOrden_idSubOrden`),
  ADD KEY `fk_FichaFosil_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `filodivision`
--
ALTER TABLE `filodivision`
  ADD PRIMARY KEY (`idFilo-Division`),
  ADD KEY `fk_Filo-Division_Reino1_idx` (`Reino_idReino`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`),
  ADD KEY `fk_Genero_SuperFamilia1_idx` (`SuperFamilia_idSuperFamilia`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`idLocalizacion`),
  ADD KEY `fk_Localizacion_Parroquia1_idx` (`Parroquia_idParroquia`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idOrden`),
  ADD KEY `fk_Orden_Clase1_idx` (`Clase_idClase`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`idParroquia`),
  ADD KEY `fk_Parroquia_Canton1_idx` (`Canton_idCanton`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProvincia`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`);

--
-- Indices de la tabla `recursosfosil`
--
ALTER TABLE `recursosfosil`
  ADD PRIMARY KEY (`idRecursosFosil`),
  ADD KEY `fk_RecursosFosil_FichaFosil1_idx` (`FichaFosil_idFichaFosil`);

--
-- Indices de la tabla `regiespe`
--
ALTER TABLE `regiespe`
  ADD PRIMARY KEY (`idRegiEspe`),
  ADD KEY `fk_RegiEspe_TipoReg1_idx` (`TipoReg_idTipoReg`);

--
-- Indices de la tabla `reino`
--
ALTER TABLE `reino`
  ADD PRIMARY KEY (`idReino`);

--
-- Indices de la tabla `subclase`
--
ALTER TABLE `subclase`
  ADD PRIMARY KEY (`idSubclase`),
  ADD KEY `fk_Subclase_Clase1_idx` (`Clase_idClase`);

--
-- Indices de la tabla `subfamilia`
--
ALTER TABLE `subfamilia`
  ADD PRIMARY KEY (`idSubFamilia`),
  ADD KEY `fk_SubFamilia_Familia1_idx` (`Familia_idFamilia`);

--
-- Indices de la tabla `suborden`
--
ALTER TABLE `suborden`
  ADD PRIMARY KEY (`idSubOrden`),
  ADD KEY `fk_SubOrden_Orden1_idx` (`Orden_idOrden`);

--
-- Indices de la tabla `superfamilia`
--
ALTER TABLE `superfamilia`
  ADD PRIMARY KEY (`idSuperFamilia`),
  ADD KEY `fk_SuperFamilia_Orden1_idx` (`Orden_idOrden`);

--
-- Indices de la tabla `tiporeg`
--
ALTER TABLE `tiporeg`
  ADD PRIMARY KEY (`idTipoReg`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canton`
--
ALTER TABLE `canton`
  MODIFY `idCanton` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `idClase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `idColeccion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `familia`
--
ALTER TABLE `familia`
  MODIFY `idFamilia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fichafosil`
--
ALTER TABLE `fichafosil`
  MODIFY `idFichaFosil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `filodivision`
--
ALTER TABLE `filodivision`
  MODIFY `idFilo-Division` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  MODIFY `idLocalizacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `idParroquia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1248;
--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recursosfosil`
--
ALTER TABLE `recursosfosil`
  MODIFY `idRecursosFosil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `regiespe`
--
ALTER TABLE `regiespe`
  MODIFY `idRegiEspe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `reino`
--
ALTER TABLE `reino`
  MODIFY `idReino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `subclase`
--
ALTER TABLE `subclase`
  MODIFY `idSubclase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `subfamilia`
--
ALTER TABLE `subfamilia`
  MODIFY `idSubFamilia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `suborden`
--
ALTER TABLE `suborden`
  MODIFY `idSubOrden` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `superfamilia`
--
ALTER TABLE `superfamilia`
  MODIFY `idSuperFamilia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiporeg`
--
ALTER TABLE `tiporeg`
  MODIFY `idTipoReg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canton`
--
ALTER TABLE `canton`
  ADD CONSTRAINT `fk_Canton_Provincia1` FOREIGN KEY (`Provincia_idProvincia`) REFERENCES `provincia` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `fk_Clase_Filo-Division1` FOREIGN KEY (`Filo-Division_idFilo-Division`) REFERENCES `filodivision` (`idFilo-Division`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `familia`
--
ALTER TABLE `familia`
  ADD CONSTRAINT `fk_Familia_SuperFamilia1` FOREIGN KEY (`SuperFamilia_idSuperFamilia`) REFERENCES `superfamilia` (`idSuperFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fichafosil`
--
ALTER TABLE `fichafosil`
  ADD CONSTRAINT `fk_FichaFosil_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_Coleccion1` FOREIGN KEY (`Coleccion_idColeccion`) REFERENCES `coleccion` (`idColeccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_Genero1` FOREIGN KEY (`Genero_idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_Localizacion1` FOREIGN KEY (`Localizacion_idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_Proyecto1` FOREIGN KEY (`Proyecto_idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_RegiEspe1` FOREIGN KEY (`RegiEspe_idRegiEspe`) REFERENCES `regiespe` (`idRegiEspe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_SubFamilia1` FOREIGN KEY (`SubFamilia_idSubFamilia`) REFERENCES `subfamilia` (`idSubFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_SubOrden1` FOREIGN KEY (`SubOrden_idSubOrden`) REFERENCES `suborden` (`idSubOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fosil_Subclase1` FOREIGN KEY (`Subclase_idSubclase`) REFERENCES `subclase` (`idSubclase`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `filodivision`
--
ALTER TABLE `filodivision`
  ADD CONSTRAINT `fk_Filo-Division_Reino1` FOREIGN KEY (`Reino_idReino`) REFERENCES `reino` (`idReino`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `genero`
--
ALTER TABLE `genero`
  ADD CONSTRAINT `fk_Genero_SuperFamilia1` FOREIGN KEY (`SuperFamilia_idSuperFamilia`) REFERENCES `superfamilia` (`idSuperFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD CONSTRAINT `fk_Localizacion_Parroquia1` FOREIGN KEY (`Parroquia_idParroquia`) REFERENCES `parroquia` (`idParroquia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_Orden_Clase1` FOREIGN KEY (`Clase_idClase`) REFERENCES `clase` (`idClase`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD CONSTRAINT `fk_Parroquia_Canton1` FOREIGN KEY (`Canton_idCanton`) REFERENCES `canton` (`idCanton`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recursosfosil`
--
ALTER TABLE `recursosfosil`
  ADD CONSTRAINT `fk_RecursosFosil_FichaFosil1` FOREIGN KEY (`FichaFosil_idFichaFosil`) REFERENCES `fichafosil` (`idFichaFosil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `regiespe`
--
ALTER TABLE `regiespe`
  ADD CONSTRAINT `fk_RegiEspe_TipoReg1` FOREIGN KEY (`TipoReg_idTipoReg`) REFERENCES `tiporeg` (`idTipoReg`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subclase`
--
ALTER TABLE `subclase`
  ADD CONSTRAINT `fk_Subclase_Clase1` FOREIGN KEY (`Clase_idClase`) REFERENCES `clase` (`idClase`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subfamilia`
--
ALTER TABLE `subfamilia`
  ADD CONSTRAINT `fk_SubFamilia_Familia1` FOREIGN KEY (`Familia_idFamilia`) REFERENCES `familia` (`idFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `suborden`
--
ALTER TABLE `suborden`
  ADD CONSTRAINT `fk_SubOrden_Orden1` FOREIGN KEY (`Orden_idOrden`) REFERENCES `orden` (`idOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `superfamilia`
--
ALTER TABLE `superfamilia`
  ADD CONSTRAINT `fk_SuperFamilia_Orden1` FOREIGN KEY (`Orden_idOrden`) REFERENCES `orden` (`idOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
