-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Dez-2019 às 00:39
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rh`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `advertencias`
--

CREATE TABLE `advertencias` (
  `cod_advertencia` int(11) NOT NULL,
  `Funcionario_Geral_MATRICULA` int(255) UNSIGNED NOT NULL,
  `Motivo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Advertencia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `advertencias`
--

INSERT INTO `advertencias` (`cod_advertencia`, `Funcionario_Geral_MATRICULA`, `Motivo`, `Data_Advertencia`) VALUES
(1, 1, '<p>\n	Atrasos</p>\n', '2019-12-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `afastamentos`
--

CREATE TABLE `afastamentos` (
  `cod_afastamento` int(255) NOT NULL,
  `Funcionario_Geral_MATRICULA` int(255) UNSIGNED NOT NULL,
  `Motivo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dias_Afastamento` int(255) DEFAULT NULL,
  `Data_inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `afastamentos`
--

INSERT INTO `afastamentos` (`cod_afastamento`, `Funcionario_Geral_MATRICULA`, `Motivo`, `Dias_Afastamento`, `Data_inicio`) VALUES
(1, 5, '<p>\n	Precisou ausentar-se para tratar da sa&uacute;de</p>\n', 3, '2019-11-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faltas_nao_justificadas`
--

CREATE TABLE `faltas_nao_justificadas` (
  `cod_falta` int(11) NOT NULL,
  `Funcionario_Geral_MATRICULA` int(255) UNSIGNED NOT NULL,
  `Motivo_Alegado` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Falta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_geral`
--

CREATE TABLE `funcionario_geral` (
  `MATRICULA` int(255) UNSIGNED NOT NULL,
  `Nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Setor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Nasc` date DEFAULT NULL,
  `Endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bairro` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sexo` enum('FEMININO','MASCULINO','OUTROS') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Filhos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado_Civil` enum('SOLTEIRO','CASADO','DIVORCIADO','VIUVO') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Preferencia_Ferias` enum('JAN','FEV','MAR','ABR','MAI','JUN','JUL','AGO','SET','OUT','NOV','DEZ') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Especiais` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionario_geral`
--

INSERT INTO `funcionario_geral` (`MATRICULA`, `Nome`, `Setor`, `Cargo`, `Data_Nasc`, `Endereco`, `Bairro`, `Sexo`, `Filhos`, `Estado_Civil`, `Email`, `Telefone`, `Preferencia_Ferias`, `Especiais`) VALUES
(1, 'João da Silva', 'Recursos Humanos', 'Técnico administrativo', '1987-02-02', 'Rua dos Palmares, N 879', 'Casa Amarela', 'MASCULINO', '0', 'SOLTEIRO', 'joaosilva@gmail.com', '31768909', 'MAR', '<p>\n	Primeiro emprego deste funcion&aacute;rio</p>\n'),
(5, 'Maria Santos', 'Comercial', 'Gerente de vendas', '1990-06-02', 'Rua da Flores', 'Bairro Novo', 'FEMININO', '2', 'CASADO', 'maria@gmail.com', NULL, 'FEV', NULL),
(6, 'Carlos Eduardo Lima', 'TI', 'Técnico em informática', '1979-03-02', 'Rua Ceolho Leite', 'Boa Viagem', 'MASCULINO', '3', 'CASADO', 'carlos@gmail.com', NULL, 'ABR', NULL),
(7, 'Alexandre Vieira', 'Financeiro', 'Contador', '1986-10-04', 'Rua Marfim ', 'Jiquiá', 'MASCULINO', '1', 'CASADO', 'alexandre@gmail.com', NULL, 'FEV', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_saude`
--

CREATE TABLE `funcionario_saude` (
  `cod_saude` int(255) NOT NULL,
  `Funcionario_Geral_MATRICULA` int(255) UNSIGNED NOT NULL,
  `Alergias` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Doencas_cronicas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Especiais` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionario_saude`
--

INSERT INTO `funcionario_saude` (`cod_saude`, `Funcionario_Geral_MATRICULA`, `Alergias`, `Doencas_cronicas`, `Especiais`) VALUES
(1, 1, 'Não alega', 'Não alega', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horas_extras`
--

CREATE TABLE `horas_extras` (
  `cod_hora` int(11) NOT NULL,
  `Funcionario_Geral_MATRICULA` int(10) UNSIGNED NOT NULL,
  `Data_2` date DEFAULT NULL,
  `Quantidade` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertencias`
--
ALTER TABLE `advertencias`
  ADD PRIMARY KEY (`cod_advertencia`),
  ADD KEY `Advertencias_FKIndex1` (`Funcionario_Geral_MATRICULA`);

--
-- Indexes for table `afastamentos`
--
ALTER TABLE `afastamentos`
  ADD PRIMARY KEY (`cod_afastamento`),
  ADD KEY `Afastamentos_FKIndex1` (`Funcionario_Geral_MATRICULA`);

--
-- Indexes for table `faltas_nao_justificadas`
--
ALTER TABLE `faltas_nao_justificadas`
  ADD PRIMARY KEY (`cod_falta`),
  ADD KEY `Faltas_Nao_Justificadas_FKIndex1` (`Funcionario_Geral_MATRICULA`);

--
-- Indexes for table `funcionario_geral`
--
ALTER TABLE `funcionario_geral`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- Indexes for table `funcionario_saude`
--
ALTER TABLE `funcionario_saude`
  ADD PRIMARY KEY (`cod_saude`),
  ADD UNIQUE KEY `Funcionario_Geral_MATRICULA` (`Funcionario_Geral_MATRICULA`),
  ADD KEY `Table_02_FKIndex1` (`Funcionario_Geral_MATRICULA`);

--
-- Indexes for table `horas_extras`
--
ALTER TABLE `horas_extras`
  ADD PRIMARY KEY (`cod_hora`),
  ADD KEY `Horas_Extras_FKIndex1` (`Funcionario_Geral_MATRICULA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertencias`
--
ALTER TABLE `advertencias`
  MODIFY `cod_advertencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `afastamentos`
--
ALTER TABLE `afastamentos`
  MODIFY `cod_afastamento` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faltas_nao_justificadas`
--
ALTER TABLE `faltas_nao_justificadas`
  MODIFY `cod_falta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionario_geral`
--
ALTER TABLE `funcionario_geral`
  MODIFY `MATRICULA` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funcionario_saude`
--
ALTER TABLE `funcionario_saude`
  MODIFY `cod_saude` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `horas_extras`
--
ALTER TABLE `horas_extras`
  MODIFY `cod_hora` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `advertencias`
--
ALTER TABLE `advertencias`
  ADD CONSTRAINT `advertencias_ibfk_1` FOREIGN KEY (`Funcionario_Geral_MATRICULA`) REFERENCES `funcionario_geral` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `afastamentos`
--
ALTER TABLE `afastamentos`
  ADD CONSTRAINT `afastamentos_ibfk_1` FOREIGN KEY (`Funcionario_Geral_MATRICULA`) REFERENCES `funcionario_geral` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `faltas_nao_justificadas`
--
ALTER TABLE `faltas_nao_justificadas`
  ADD CONSTRAINT `faltas_nao_justificadas_ibfk_1` FOREIGN KEY (`Funcionario_Geral_MATRICULA`) REFERENCES `funcionario_geral` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionario_saude`
--
ALTER TABLE `funcionario_saude`
  ADD CONSTRAINT `funcionario_saude_ibfk_1` FOREIGN KEY (`Funcionario_Geral_MATRICULA`) REFERENCES `funcionario_geral` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `horas_extras`
--
ALTER TABLE `horas_extras`
  ADD CONSTRAINT `horas_extras_ibfk_1` FOREIGN KEY (`Funcionario_Geral_MATRICULA`) REFERENCES `funcionario_geral` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
