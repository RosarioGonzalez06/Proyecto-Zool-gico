-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2025 a las 13:16:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zoo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE `alimento` (
  `codAli` int(11) NOT NULL,
  `nomAli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`codAli`, `nomAli`) VALUES
(1, 'Carne'),
(5, 'Frutas'),
(10, 'Granos'),
(3, 'Hojas'),
(9, 'Huevos'),
(4, 'Insectos'),
(7, 'Néctar'),
(11, 'Patatas'),
(6, 'Peces'),
(8, 'Raíces'),
(2, 'Semillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `codAni` int(11) NOT NULL,
  `nomAni` varchar(50) NOT NULL,
  `sexAni` enum('M','F') NOT NULL,
  `codEsp` int(11) NOT NULL,
  `codRec` int(11) NOT NULL,
  `fecNac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`codAni`, `nomAni`, `sexAni`, `codEsp`, `codRec`, `fecNac`) VALUES
(1, 'Boby', 'M', 1, 1, '2019-03-15'),
(2, 'Roxy', 'M', 1, 8, '2025-02-02'),
(3, 'Max', 'M', 3, 6, '2020-09-05'),
(4, 'Luna', 'F', 4, 10, '2022-01-20'),
(5, 'Rocky', 'M', 5, 5, '2017-07-30'),
(6, 'Nala', 'F', 6, 3, '2018-05-12'),
(7, 'Toby', 'M', 7, 8, '2020-11-08'),
(8, 'Simba', 'M', 8, 7, '2019-02-25'),
(9, 'Milo', 'M', 9, 10, '2023-04-18'),
(20, 'milan', 'M', 12, 7, '2003-01-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `codCar` int(11) NOT NULL,
  `nomCar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`codCar`, `nomCar`) VALUES
(6, 'Cuidador de mamíferos'),
(8, 'Cuidador de reptiles'),
(7, 'Especialista en grandes felinos'),
(3, 'Herpetólogo'),
(5, 'Ornitólogo'),
(4, 'Primatóloga'),
(1, 'Veterinario'),
(2, 'Zoológo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `come`
--

CREATE TABLE `come` (
  `codAni` int(11) NOT NULL,
  `codAli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `come`
--

INSERT INTO `come` (`codAni`, `codAli`) VALUES
(1, 1),
(2, 1),
(3, 9),
(4, 4),
(4, 7),
(5, 6),
(6, 5),
(7, 2),
(7, 8),
(8, 1),
(8, 6),
(9, 2),
(9, 4),
(9, 5),
(9, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuida`
--

CREATE TABLE `cuida` (
  `codCui` int(11) NOT NULL,
  `codAni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuida`
--

INSERT INTO `cuida` (`codCui`, `codAni`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(6, 1),
(6, 5),
(7, 2),
(7, 9),
(8, 3),
(8, 7),
(9, 6),
(10, 4),
(10, 8),
(11, 4),
(11, 6),
(11, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidador`
--

CREATE TABLE `cuidador` (
  `codCui` int(11) NOT NULL,
  `nomCui` varchar(50) NOT NULL,
  `apeCui` varchar(50) NOT NULL,
  `fecIng` date NOT NULL,
  `fecNacCui` date NOT NULL,
  `telCui` char(9) NOT NULL,
  `codCar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidador`
--

INSERT INTO `cuidador` (`codCui`, `nomCui`, `apeCui`, `fecIng`, `fecNacCui`, `telCui`, `codCar`) VALUES
(1, 'Juan', 'Pérez', '2015-06-20', '1988-04-10', '123456789', 4),
(2, 'maria', 'Gomez', '2024-04-04', '2002-02-02', '123456562', 1),
(3, 'Carlos', 'Ramírez', '2017-04-25', '1985-11-30', '345678912', 7),
(4, 'Laura', 'Fernández', '2018-07-30', '1994-02-18', '456789123', 8),
(5, 'Pedro', 'Sánchez', '2014-03-15', '1981-06-25', '567891234', 8),
(6, 'María', 'López', '2019-11-05', '1990-09-08', '678912345', 8),
(7, 'Jorge', 'Díaz', '2020-01-22', '1986-05-03', '789123456', 7),
(8, 'Lucía', 'Martínez', '2013-08-14', '1978-10-22', '891234567', 2),
(9, 'Miguel', 'Hernández', '2012-12-01', '1973-03-05', '912345678', 7),
(10, 'Patricia', 'Ruiz', '2021-05-18', '1996-12-10', '923456789', 2),
(11, 'Paco', 'Gomez', '2024-04-02', '1990-02-03', '124357444', 4),
(20, 'Marina', 'Gonzalez', '2023-04-05', '2004-04-05', '124242344', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `codEsp` int(11) NOT NULL,
  `tipEsp` varchar(50) NOT NULL,
  `desEsp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especie`
--

INSERT INTO `especie` (`codEsp`, `tipEsp`, `desEsp`) VALUES
(1, 'Lobo', 'Mamífero carnívoro salvaje'),
(2, 'Águila', 'Ave rapaz de gran visión'),
(3, 'Iguana', 'Reptil de sangre fría'),
(4, 'Salamandra', 'Anfibio de cuerpo alargado'),
(5, 'Delfín', 'Mamífero acuático inteligente'),
(6, 'Gorila', 'Primate con gran fuerza'),
(7, 'Castor', 'Mamífero constructor de presas'),
(8, 'Zorro', 'Canino salvaje muy astuto'),
(9, 'Abeja', 'Insecto polinizador'),
(12, 'Ciervo', 'Herviboro,con cuernos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recinto`
--

CREATE TABLE `recinto` (
  `codRec` int(11) NOT NULL,
  `nomRec` varchar(50) NOT NULL,
  `desRec` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recinto`
--

INSERT INTO `recinto` (`codRec`, `nomRec`, `desRec`) VALUES
(1, 'Sabana', 'Área de leones y jirafas'),
(2, 'Aviario', 'Área de aves exóticas'),
(3, 'Selva', 'Zona tropical con diversidad de especies'),
(4, 'Desierto', 'Área de animales adaptados a climas áridos'),
(5, 'Acuario', 'Zona de vida marina'),
(6, 'Terrario', 'Espacio para reptiles y anfibios'),
(7, 'Bosque', 'Hábitat de osos y ciervos'),
(8, 'Pradera', 'Área de bisontes y ciervos'),
(10, 'Pantano', 'Zona de cocodrilos y anfibios'),
(31, 'laguna', 'agua dulce,mas peque�o que un lago');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`codAli`),
  ADD UNIQUE KEY `nomAli_unico` (`nomAli`);

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`codAni`),
  ADD UNIQUE KEY `unique_nomAni` (`nomAni`),
  ADD KEY `codEsp` (`codEsp`),
  ADD KEY `codRec` (`codRec`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`codCar`),
  ADD UNIQUE KEY `nomCar` (`nomCar`);

--
-- Indices de la tabla `come`
--
ALTER TABLE `come`
  ADD PRIMARY KEY (`codAni`,`codAli`),
  ADD KEY `codAli` (`codAli`);

--
-- Indices de la tabla `cuida`
--
ALTER TABLE `cuida`
  ADD PRIMARY KEY (`codCui`,`codAni`),
  ADD KEY `codAni` (`codAni`);

--
-- Indices de la tabla `cuidador`
--
ALTER TABLE `cuidador`
  ADD PRIMARY KEY (`codCui`),
  ADD UNIQUE KEY `telCui_unico` (`telCui`),
  ADD KEY `fk_cargo` (`codCar`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`codEsp`),
  ADD UNIQUE KEY `tipEsp_unico` (`tipEsp`);

--
-- Indices de la tabla `recinto`
--
ALTER TABLE `recinto`
  ADD PRIMARY KEY (`codRec`),
  ADD UNIQUE KEY `unique_nomRec` (`nomRec`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimento`
--
ALTER TABLE `alimento`
  MODIFY `codAli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `animal`
--
ALTER TABLE `animal`
  MODIFY `codAni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `codCar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cuidador`
--
ALTER TABLE `cuidador`
  MODIFY `codCui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `codEsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `recinto`
--
ALTER TABLE `recinto`
  MODIFY `codRec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`codEsp`) REFERENCES `especie` (`codEsp`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`codRec`) REFERENCES `recinto` (`codRec`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `come`
--
ALTER TABLE `come`
  ADD CONSTRAINT `come_ibfk_1` FOREIGN KEY (`codAni`) REFERENCES `animal` (`codAni`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `come_ibfk_2` FOREIGN KEY (`codAli`) REFERENCES `alimento` (`codAli`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuida`
--
ALTER TABLE `cuida`
  ADD CONSTRAINT `cuida_ibfk_1` FOREIGN KEY (`codCui`) REFERENCES `cuidador` (`codCui`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cuida_ibfk_2` FOREIGN KEY (`codAni`) REFERENCES `animal` (`codAni`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuidador`
--
ALTER TABLE `cuidador`
  ADD CONSTRAINT `fk_cargo` FOREIGN KEY (`codCar`) REFERENCES `cargo` (`codCar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
