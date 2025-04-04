-- Criação das tabelas
CREATE TABLE autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

-- Inserção de dados
INSERT INTO autores (id, nome) VALUES (1, 'Machado de Assis');
INSERT INTO autores (id, nome) VALUES (2, 'Clarice Lispector');

INSERT INTO livros (id, titulo, autor_id) VALUES (1, 'Dom Casmurro', 1);
INSERT INTO livros (id, titulo, autor_id) VALUES (2, 'Memórias Póstumas de Brás Cubas', 1);
INSERT INTO livros (id, titulo, autor_id) VALUES (3, 'A Hora da Estrela', 2);

-- Consulta dos dados
SELECT 
    livros.titulo AS livro,
    autores.nome AS autor
FROM 
    livros
JOIN 
    autores ON livros.autor_id = autores.id;
