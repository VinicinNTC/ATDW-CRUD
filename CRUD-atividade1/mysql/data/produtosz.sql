-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 14-Set-2026 às 23:35
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `produtosz`
--
CREATE DATABASE IF NOT EXISTS `produtosz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `produtosz`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produtos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `categoria` varchar(255) CHARACTER SET latin1 NOT NULL,
  `valor_compra` decimal(15,2) DEFAULT NULL,
  `valor_venda` decimal(15,2) DEFAULT NULL,
  `qtd_estoque` int(11) NOT NULL,
  PRIMARY KEY (`id_produtos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome`, `categoria`, `valor_compra`, `valor_venda`, `qtd_estoque`) VALUES
(2, 'Goiaba', 'Alimentos', '10.00', '15.00', 10),
(4, 'geladeira eletrolux', 'Outros', '6500.00', '7000.00', 1),
(5, 'Fruta Misteriosa', 'Alimentos', '20.00', '25.00', 5),
(6, 'Monitor 24" Full HD', 'Informática', '450.00', '650.00', 8),
(7, 'Fone Bluetooth', 'Eletrônicos', '35.50', '59.90', 20),
(8, 'Miniatura Carro Antigo', 'Carros', '15.00', '30.00', 12),
(9, 'Controle PS5', 'Videogames', '180.00', '280.00', 6),
(10, 'Caneca Personalizada', 'Outros', '8.00', '18.00', 25);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
