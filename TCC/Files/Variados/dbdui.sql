-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Ago-2024 às 11:19
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbdui`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategorias`
--

DROP TABLE IF EXISTS `tbcategorias`;
CREATE TABLE IF NOT EXISTS `tbcategorias` (
  `CAT_ID` int NOT NULL AUTO_INCREMENT,
  `CAT_NOM` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CAT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos`
--

DROP TABLE IF EXISTS `tbprodutos`;
CREATE TABLE IF NOT EXISTS `tbprodutos` (
  `PROD_ID` int NOT NULL AUTO_INCREMENT,
  `CAT_ID` int DEFAULT NULL,
  `PROD_NOM` varchar(30) DEFAULT NULL,
  `PROD_SUB_NOM` varchar(30) DEFAULT NULL,
  `PROD_DESC` varchar(100) DEFAULT NULL,
  `PROD_VAL` varchar(12) DEFAULT NULL,
  `PROD_IMG` blob,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

DROP TABLE IF EXISTS `tbusuarios`;
CREATE TABLE IF NOT EXISTS `tbusuarios` (
  `USER_ID` int NOT NULL AUTO_INCREMENT,
  `USER_TIP` varchar(6) DEFAULT NULL,
  `USER_NOM` varchar(30) DEFAULT NULL,
  `USER_EMAIL` varchar(50) DEFAULT NULL,
  `USER_PAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvendas`
--

DROP TABLE IF EXISTS `tbvendas`;
CREATE TABLE IF NOT EXISTS `tbvendas` (
  `VEN_ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `PROD_ID` int DEFAULT NULL,
  `CAT_ID` int DEFAULT NULL,
  `VEN_NOM_CLI` varchar(30) DEFAULT NULL,
  `VEN_DATA` date DEFAULT NULL,
  `VEN_QTDE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
