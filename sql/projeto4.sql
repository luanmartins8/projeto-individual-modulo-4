CREATE TABLE `curso` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `unidade` varchar(255)
);

CREATE TABLE `turma` (
  `id` int PRIMARY KEY,
  `codigo` int(3),
  `nome` varchar(100),
  `id_curso` varchar(100)
);

CREATE TABLE `facilitador` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` bigint(11),
  `telefone` bigtint(12),
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

ALTER TABLE `curso` ADD FOREIGN KEY (`id`) REFERENCES `turma` (`id_curso`);

ALTER TABLE `projetos` ADD FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`);

ALTER TABLE `competencia` ADD FOREIGN KEY (`id_facilitador`) REFERENCES `facilitador` (`id`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`);

ALTER TABLE `facilitador` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`);
