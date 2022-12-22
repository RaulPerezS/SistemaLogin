-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2022 a las 21:30:18
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemacuenta`
--

DELIMITER $$
--
-- Procedimientos
--
<<<<<<< HEAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarUsuarioespecifico` (IN `id` INT)   SELECT `usuario`.*, `operaciones`.*, `cargo`.*, CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Activo" AND idusuario= id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsuarios` ()   BEGIN
SELECT `usuario`.*, `operaciones`.*, `cargo`.*,CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Activo";

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsuariosInactivos` ()   BEGIN
SELECT `usuario`.*, `operaciones`.*, `cargo`.*,CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Inactivo";

=======
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarUsuarioespecifico` (IN `id` INT)   SELECT `usuario`.*, `operaciones`.*, `cargo`.*, CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Activo" AND idusuario= id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsuarios` ()   BEGIN
SELECT `usuario`.*, `operaciones`.*, `cargo`.*,CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Activo";

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsuariosInactivos` ()   BEGIN
SELECT `usuario`.*, `operaciones`.*, `cargo`.*,CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo`WHERE estado="Inactivo";

>>>>>>> ac8592ae41ebe564a48a1d4fa9861545757e222e
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idcargo`, `descripcion`) VALUES
(1, 'Admin'),
(2, 'usuario'),
(3, 'consultor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `idoperaciones` int(11) NOT NULL,
  `cargo_idcargo` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`idoperaciones`, `cargo_idcargo`, `usuario_idusuario`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 1, 5),
(6, 1, 6),
(7, 3, 7),
(8, 3, 8),
(9, 1, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 3, 13),
(14, 2, 14),
(15, 3, 15),
(16, 2, 16),
(17, 3, 17),
(18, 2, 18),
(19, 2, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 2, 27),
(28, 3, 28),
(29, 2, 29),
(30, 3, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 3, 38),
(39, 1, 39),
(40, 3, 40),
(41, 2, 41),
(42, 3, 42),
(43, 3, 43),
(44, 3, 44),
(45, 1, 45),
(46, 3, 46),
(47, 3, 47),
(48, 2, 48),
(49, 1, 49),
(50, 2, 50),
(51, 1, 51),
(54, 2, 55),
(55, 2, 56),
(56, 2, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidop` varchar(20) NOT NULL,
  `apellidom` varchar(20) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fechacreacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` varchar(25) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellidop`, `apellidom`, `usuario`, `contraseña`, `email`, `fechacreacion`, `estado`) VALUES
(1, 'Raul', 'Perez', 'Saldaño', 'admin', '123', 'admin@admin.cl', '2022-12-21 18:59:55', 'Activo'),
(2, 'Humfried', 'Pluck', 'Farlowe', 'hfarlowe1', '123', 'hfarlowe1@altervista.orgdAFSAD', '2022-12-21 20:05:48', 'Activo'),
(3, 'Heath', 'Filippozzi', 'Retallack', 'hretallack2', 'YGK3f9gBBG2Y', 'hretallack2@storify.com', '2022-12-21 20:05:54', 'Activo'),
(4, 'Chelsae', 'Baptista', 'Parkman', 'cparkman3', 'ELfjxXzb9VpR', 'cparkman3@youtu.be', '2022-12-21 20:05:22', 'Inactivo'),
(5, 'Chane', 'Moncur', 'Vidler', 'cvidler4', 'Zl4vg2S', 'cvidler4@slideshare.net', '2022-12-21 19:53:22', 'Inactivo'),
(6, 'Mozes', 'Shorton', 'Fitzsymonds', 'mfitzsymonds5', 'AUzS5zR', 'mfitzsymonds5@domainmarket.com', '2022-12-21 16:15:46', 'Activo'),
(7, 'Britta', 'Kershaw', 'Mc-Kerley', 'bmckerley6', 'u8CBb4ktfFr', 'bmckerley6@mlb.com', '2022-12-21 16:15:46', 'Activo'),
(8, 'Modestia', 'Po', 'Enders', 'menders7', '2KR7orfG', 'menders7@skype.com', '2022-12-21 16:15:46', 'Activo'),
(9, 'Clemmy', 'Van Castele', 'Yeld', 'cyeld8', 'jVcxOi9gxPOI', 'cyeld8@soup.io', '2022-12-21 16:15:46', 'Activo'),
(10, 'Ben', 'Hendron', 'Botte', 'bbotte9', '8jjalm3Eqc', 'bbotte9@arstechnica.com', '2022-12-21 16:15:46', 'Activo'),
(11, 'Branden', 'Dunderdale', 'Colledge', 'bcolledgea', 'YnFcrEs6', 'bcolledgea@over-blog.com', '2022-12-21 16:15:46', 'Activo'),
(12, 'Alina', 'Medford', 'Burchill', 'aburchillb', 'gF1IrjMQ', 'aburchillb@aol.com', '2022-12-21 19:53:32', 'Inactivo'),
(13, 'Codie', 'De Lisle', 'Gulberg', 'cgulbergc', 's65s0meQN', 'cgulbergc@ox.ac.uk', '2022-12-21 16:15:46', 'Activo'),
(14, 'Bradney', 'Harring', 'Staining', 'bstainingd', '3MQDi1', 'bstainingd@bloglines.com', '2022-12-21 16:15:46', 'Activo'),
(15, 'Niki', 'Breeds', 'Rodell', 'nrodelle', 'zfsxfJ', 'nrodelle@fda.gov', '2022-12-21 16:15:46', 'Activo'),
(16, 'Chelsie', 'Kordas', 'Rolfini', 'crolfinif', 'T6ZUjgjTe4l', 'crolfinif@amazon.de', '2022-12-21 16:15:46', 'Activo'),
(17, 'Tonnie', 'Caudrey', 'Punton', 'tpuntong', 'gkknXMo', 'tpuntong@gov.uk', '2022-12-21 16:15:46', 'Activo'),
(18, 'Gerri', 'Pheazey', 'Losano', 'glosanoh', 'LLkI7nzFS6', 'glosanoh@flickr.com', '2022-12-21 16:15:46', 'Activo'),
(19, 'Shea', 'Hainge', 'Blasgen', 'sblasgeni', 'qqqnAy2rcV4', 'sblasgeni@time.com', '2022-12-21 16:15:46', 'Activo'),
(20, 'Alanson', 'Weth', 'Morrilly', 'amorrillyj', 'nv1CyNW8', 'amorrillyj@nasa.gov', '2022-12-21 16:15:46', 'Activo'),
(21, 'Henry', 'Hazelgreave', 'Daveridge', 'hdaveridgek', 'zOOeuz', 'hdaveridgek@wordpress.org', '2022-12-21 16:15:46', 'Activo'),
(22, 'Radcliffe', 'Stallon', 'McGinly', 'rmcginlyl', 'iqw7iW8b', 'rmcginlyl@hugedomains.com', '2022-12-21 16:15:46', 'Activo'),
(23, 'Ebeneser', 'Orpin', 'Albers', 'ealbersm', 'X0vjvzxuP', 'ealbersm@utexas.edu', '2022-12-21 16:15:46', 'Activo'),
(24, 'Rita', 'Sommerly', 'Brosch', 'rbroschn', 'qTnswpk2', 'rbroschn@oaic.gov.au', '2022-12-21 16:15:46', 'Activo'),
(25, 'Jillene', 'Vassman', 'McKelvie', 'jmckelvieo', 'ilw3eUHb', 'jmckelvieo@army.mil', '2022-12-21 16:15:46', 'Activo'),
(26, 'Kally', 'Potticary', 'Link', 'klinkp', 'TOsLcXLvvzZ', 'klinkp@theguardian.com', '2022-12-21 16:15:46', 'Activo'),
(27, 'Jemima', 'Fawlks', 'Boundy', 'jboundyq', '0lt8VCZk', 'jboundyq@indiegogo.com', '2022-12-21 16:15:46', 'Activo'),
(28, 'Kial', 'Grewe', 'Meers', 'kmeersr', 'yzwYiUj3sjWI', 'kmeersr@gmpg.org', '2022-12-21 16:15:46', 'Activo'),
(29, 'Erin', 'Chuney', 'Muselli', 'emusellis', 'Ot3JnXkeL4t8', 'emusellis@thetimes.co.uk', '2022-12-21 16:15:46', 'Activo'),
(30, 'Sibylle', 'Crosby', 'Moncreiffe', 'smoncreiffet', 'IHYoQj3JugO', 'smoncreiffet@phoca.cz', '2022-12-21 16:15:46', 'Activo'),
(31, 'Herby', 'Giffaut', 'Brown', 'hbrownu', 'HF1xSJNi', 'hbrownu@furl.net', '2022-12-21 16:15:46', 'Activo'),
(32, 'Rebeka', 'Serot', 'Nancarrow', 'rnancarrowv', '1ultEp', 'rnancarrowv@paginegialle.it', '2022-12-21 16:15:46', 'Activo'),
(33, 'Louie', 'Hunston', 'Hylands', 'lhylandsw', 'k9ooV48', 'lhylandsw@kickstarter.com', '2022-12-21 16:15:46', 'Activo'),
(34, 'Antonius', 'Riddell', 'Cansdill', 'acansdillx', 'HxoPEBe', 'acansdillx@gov.uk', '2022-12-21 16:15:46', 'Activo'),
(35, 'Marthena', 'Beeson', 'Coltart', 'mcoltarty', 'H0tgt3OlhK', 'mcoltarty@scientificamerican.c', '2022-12-21 16:15:46', 'Activo'),
(36, 'Janice', 'Trevaskiss', 'Olyet', 'jolyetz', 'OksNY880P', 'jolyetz@google.it', '2022-12-21 16:15:46', 'Activo'),
(37, 'Hal', 'Kear', 'Seine', 'hseine10', 'i5MAv9kd3xUj', 'hseine10@printfriendly.com', '2022-12-21 16:15:46', 'Activo'),
(38, 'Matthiew', 'Hallford', 'Delap', 'mdelap11', '4cMmVzIX', 'mdelap11@sphinn.com', '2022-12-21 16:15:46', 'Activo'),
(39, 'Augustine', 'Tansly', 'Strauss', 'astrauss12', 'aiLoB0W', 'astrauss12@tuttocitta.it', '2022-12-21 16:15:46', 'Activo'),
(40, 'Lyndel', 'Poser', 'Talby', 'ltalby13', 'AKYT7EbZCRc', 'ltalby13@thetimes.co.uk', '2022-12-21 16:15:46', 'Activo'),
(41, 'Jay', 'Heber', 'Demchen', 'jdemchen14', 'YE77XE', 'jdemchen14@ft.com', '2022-12-21 16:15:46', 'Activo'),
(42, 'Jase', 'Konzel', 'Haldin', 'jhaldin15', 'BEtRn1X288TK', 'jhaldin15@netvibes.com', '2022-12-21 16:15:46', 'Activo'),
(43, 'Galven', 'Hards', 'Hayland', 'ghayland16', 't3Am7CncN', 'ghayland16@springer.com', '2022-12-21 16:15:46', 'Activo'),
(44, 'Horatia', 'Pickance', 'Woodrough', 'hwoodrough17', 'zQuu8FkD', 'hwoodrough17@techcrunch.com', '2022-12-21 16:15:46', 'Activo'),
(45, 'Ardene', 'Dominec', 'Sallery', 'asallery18', 'WFRwPfLA7Kj', 'asallery18@netscape.com', '2022-12-21 16:15:46', 'Activo'),
(46, 'Oby', 'Gilmore', 'Bowskill', 'obowskill19', 'KIB4CO3', 'obowskill19@nytimes.com', '2022-12-21 16:15:46', 'Activo'),
(47, 'Bernice', 'Emm', 'De Vries', 'bdevries1a', 'weDIkVvkdc', 'bdevries1a@youtube.com', '2022-12-21 16:15:47', 'Activo'),
(48, 'Doug', 'Ambrosini', 'Drage', 'ddrage1b', 'DojRzoJuOpbQ', 'ddrage1b@ed.gov', '2022-12-21 16:15:47', 'Activo'),
(49, 'Mortie', 'Mawdsley', 'Vanyukov', 'mvanyukov1c', 'AUObdX80xv2', 'mvanyukov1c@omniture.com', '2022-12-21 16:15:47', 'Activo'),
(50, 'Lyndsie', 'Rivelin', 'Collier', 'lcollier1d', 'CxtOwMHLrx', 'lcollier1d@boston.com', '2022-12-21 16:15:47', 'Activo'),
(51, 'Sterne', 'Fayter', 'Murty', 'smurty1e', 'mt6JYv4MW', 'smurty1e@dell.com', '2022-12-21 16:15:47', 'Activo'),
(52, 'Jeremias', 'Adasme', 'Contreras', 'j.adasme', '123', 'j.adasme@ase.cl', '2022-12-21 20:19:01', 'Activo'),
(53, 'Jeremias', 'adasd\'asdasdas', 'asdasdasdf', 'afdf', '123', 'adasfd', '2022-12-21 20:23:56', 'Activo'),
(54, 'Jeremias', 'adasd\'asdasdas', 'asdasdasdf', 'afdf', '123', 'adasfd', '2022-12-21 20:24:29', 'Activo'),
(55, 'Jeremias', 'afasdfsd\'fsdfsfsd', 'fsdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdfs', 'sdfsdf', '2022-12-21 20:24:35', 'Activo'),
(56, 'Jeremias', 'afasdfsd\'fsdfsfsd', 'fsdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdfs', 'sdfsdf', '2022-12-21 20:24:45', 'Activo'),
(57, 'asdfasd', 'asdasdas', 'dasdsadsa', 'dasdasdas', 'asdasdas', 'dasasd', '2022-12-21 20:27:43', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`),
  ADD KEY `idcargo` (`idcargo`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`idoperaciones`),
  ADD KEY `cargo_idcargo` (`cargo_idcargo`),
  ADD KEY `usuario_idusuario` (`usuario_idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `idoperaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `cargo_idcargo` FOREIGN KEY (`cargo_idcargo`) REFERENCES `cargo` (`idcargo`),
  ADD CONSTRAINT `usuario_idusuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
