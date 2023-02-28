CREATE TABLE `curso` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `unidade` varchar(255)
);

CREATE TABLE `turma` (
  `id` int PRIMARY KEY,
  `codigo` varchar(100),
  `turno` varchar(100),
  `id_curso` int(3)
);

CREATE TABLE `facilitador` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` bigint(11),
  `telefone` bigint(12),
  `email` varchar(100),
  `id_turma` int(3)
);

CREATE TABLE `aluno` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` bigint(11),
  `telefone` bigint(12),
  `email` varchar(100),
  `id_turma` int(3)
);

CREATE TABLE `competencia` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `id_facilitador` varchar(100)
);

CREATE TABLE `projetos` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `id_aluno` varchar(100)
);

ALTER TABLE `turma` ADD FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

ALTER TABLE `projetos` ADD FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`);

ALTER TABLE `competencia` ADD FOREIGN KEY (`id_facilitador`) REFERENCES `facilitador` (`id`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`);

ALTER TABLE `facilitador` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`);
