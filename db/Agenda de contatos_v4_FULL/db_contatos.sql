-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2024 às 15:47
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_contatos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_email`
--

CREATE TABLE `tb_email` (
  `id_email` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_email`
--

INSERT INTO `tb_email` (`id_email`, `email`, `id_pessoa`) VALUES
(43, 'daoi@oss.vc', 19),
(72, 'affsaf@pt.vd', 17),
(73, ' da@dg.mn', 17),
(74, ' danielsimonian@gmail.com', 17),
(75, ' treo@gdl.c', 17),
(79, 'gigi@gi', 18),
(80, ' gu@gu', 18),
(81, ' jojo@j', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pessoa`
--

CREATE TABLE `tb_pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_pessoa`
--

INSERT INTO `tb_pessoa` (`id_pessoa`, `nome`) VALUES
(17, 'Daniel Simonian'),
(18, 'Guigui'),
(19, 'Fefe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_telefone`
--

CREATE TABLE `tb_telefone` (
  `id_telefone` int(11) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_telefone`
--

INSERT INTO `tb_telefone` (`id_telefone`, `telefone`, `id_pessoa`) VALUES
(47, '132254545445', 19),
(74, '13997434878', 17),
(75, ' 13999999997', 17),
(79, '11111', 18),
(80, ' 22222', 18),
(81, ' 333', 18);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_email`
--
ALTER TABLE `tb_email`
  ADD PRIMARY KEY (`id_email`),
  ADD KEY `id_pessoa` (`id_pessoa`);

--
-- Índices para tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Índices para tabela `tb_telefone`
--
ALTER TABLE `tb_telefone`
  ADD PRIMARY KEY (`id_telefone`),
  ADD KEY `id_pessoa` (`id_pessoa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_email`
--
ALTER TABLE `tb_email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tb_telefone`
--
ALTER TABLE `tb_telefone`
  MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_email`
--
ALTER TABLE `tb_email`
  ADD CONSTRAINT `tb_email_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`);

--
-- Limitadores para a tabela `tb_telefone`
--
ALTER TABLE `tb_telefone`
  ADD CONSTRAINT `tb_telefone_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
