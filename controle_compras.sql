-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2019 às 01:15
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_compras`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `compradores`
--

CREATE TABLE `compradores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compradores`
--

INSERT INTO `compradores` (`id`, `nome`, `endereco`, `telefone`) VALUES
(1, 'ANA', 'RUA VERGUEIRO, 123', '(11) 2345-5677'),
(2, 'ADRIANO', 'AV. PAULISTA, 34', '(11) 2435-5315'),
(3, 'GUILHERME', 'AV. RIO BRANCO, 5', '(21) 3414-5325'),
(4, 'PEDRO', 'RUA ANITA, 42', '(91) 6362-5262');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `valor` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `observacoes` text NOT NULL,
  `recebido` tinyint(1) DEFAULT 0,
  `forma_pagto` enum('cartao','boleto','dinheiro') DEFAULT NULL,
  `comprador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `valor`, `data`, `observacoes`, `recebido`, `forma_pagto`, `comprador_id`) VALUES
(1, 100, '2007-05-12', 'COMPRAS DE MAIO', 1, 'cartao', 1),
(2, 200, '2008-02-19', 'MATERIAL ESCOLAR', 1, 'cartao', 1),
(3, 3500, '2008-05-21', 'TELEVISAO', 0, 'cartao', 1),
(4, 1576.4, '2008-04-30', 'MATERIAL DE CONSTRUCAO', 1, 'cartao', 1),
(5, 163.45, '2008-12-15', 'PIZZA PRA FAMILIA', 1, 'cartao', 1),
(6, 4780, '2009-01-23', 'SALA DE ESTAR', 1, 'cartao', 1),
(7, 392.15, '2009-03-03', 'QUARTOS', 1, 'cartao', 1),
(8, 1203, '2009-03-18', 'QUARTOS', 1, 'cartao', 1),
(9, 402.9, '2009-03-21', 'COPA', 1, 'cartao', 1),
(10, 54.98, '2009-04-12', 'LANCHONETE', 0, 'cartao', 2),
(11, 12.34, '2009-05-23', 'LANCHONETE', 0, 'cartao', 2),
(12, 78.65, '2009-12-04', 'LANCHONETE', 0, 'cartao', 2),
(13, 12.39, '2009-01-06', 'SORVETE NO PARQUE', 0, 'cartao', 2),
(14, 98.12, '2009-07-09', 'HOPI HARI', 1, 'cartao', 2),
(15, 2498, '2009-01-12', 'COMPRAS DE JANEIRO', 1, 'cartao', 2),
(16, 3212.4, '2009-11-13', 'COMPRAS DO MES', 1, 'cartao', 2),
(17, 223.09, '2009-12-17', 'COMPRAS DE NATAL', 1, 'cartao', 2),
(18, 768.9, '2009-01-16', 'FESTA', 1, 'cartao', 2),
(19, 827.5, '2010-01-09', 'FESTA', 1, 'cartao', 2),
(20, 12, '2010-02-19', 'SALGADO NO AEROPORTO', 1, 'cartao', 3),
(21, 678.43, '2010-05-21', 'PASSAGEM PRA BAHIA', 1, 'boleto', 3),
(22, 10937.12, '2010-04-30', 'CARNAVAL EM CANCUN', 1, 'boleto', 3),
(23, 1501, '2010-06-22', 'PRESENTE DA SOGRA', 0, 'boleto', 3),
(24, 1709, '2010-08-25', 'PARCELA DA CASA', 0, 'boleto', 3),
(25, 567.09, '2010-09-25', 'PARCELA DO CARRO', 0, 'boleto', 3),
(26, 631.53, '2010-10-12', 'IPTU', 1, 'boleto', 3),
(27, 909.11, '2010-02-11', 'IPVA', 1, 'boleto', 3),
(28, 768.18, '2010-04-10', 'GASOLINA VIAGEM PORTO ALEGRE', 1, 'boleto', 3),
(29, 434, '2010-04-01', 'RODEIO INTERIOR DE SAO PAULO', 0, 'boleto', 3),
(30, 115.9, '2010-06-12', 'DIA DOS NAMORADOS', 0, 'boleto', 3),
(31, 98, '2010-10-12', 'DIA DAS CRIANÇAS', 0, 'dinheiro', 4),
(32, 253.7, '2010-12-20', 'NATAL - PRESENTES', 0, 'dinheiro', 4),
(33, 370.15, '2010-12-25', 'COMPRAS DE NATAL', 0, 'dinheiro', 4),
(34, 32.09, '2011-07-02', 'LANCHONETE', 1, 'dinheiro', 4),
(35, 954.12, '2011-11-03', 'SHOW DA IVETE SANGALO', 1, 'dinheiro', 4),
(36, 98.7, '2011-02-07', 'LANCHONETE', 1, 'dinheiro', 4),
(37, 213.5, '2011-09-25', 'ROUPAS', 0, 'dinheiro', 4),
(38, 1245.2, '2011-10-17', 'ROUPAS', 0, 'dinheiro', 4),
(39, 23.78, '2011-12-18', 'LANCHONETE DO ZÉ', 1, 'dinheiro', 4),
(40, 576.12, '2011-09-13', 'SAPATOS', 1, 'dinheiro', 4),
(41, 12.34, '2011-07-19', 'CANETAS', 0, 'dinheiro', 4),
(42, 87.43, '2011-05-10', 'GRAVATA', 0, 'dinheiro', 4),
(43, 887.66, '2011-02-02', 'PRESENTE PARA O FILHAO', 1, 'dinheiro', 4),
(44, 189.76, '2009-02-09', 'uma compra qualquer', 0, 'dinheiro', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compradores`
--
ALTER TABLE `compradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
