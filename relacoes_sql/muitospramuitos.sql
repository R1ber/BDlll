-- Criação das tabelas
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE alunos_cursos (
    aluno_id INT,
    curso_id INT,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- Inserção de dados
INSERT INTO alunos (id, nome) VALUES (1, 'João');
INSERT INTO alunos (id, nome) VALUES (2, 'Maria');

INSERT INTO cursos (id, nome) VALUES (1, 'Matemática');
INSERT INTO cursos (id, nome) VALUES (2, 'História');

INSERT INTO alunos_cursos (aluno_id, curso_id) VALUES (1, 1); -- João em Matemática
INSERT INTO alunos_cursos (aluno_id, curso_id) VALUES (1, 2); -- João em História
INSERT INTO alunos_cursos (aluno_id, curso_id) VALUES (2, 2); -- Maria em História

-- Consulta: alunos com seus cursos
SELECT 
    alunos.nome AS aluno,
    cursos.nome AS curso
FROM 
    alunos
JOIN 
    alunos_cursos ON alunos.id = alunos_cursos.aluno_id
JOIN 
    cursos ON cursos.id = alunos_cursos.curso_id;
