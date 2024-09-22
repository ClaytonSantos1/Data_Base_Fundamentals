------------------------------ Cria Tabelas Correspondentes na Ordem correta -----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Publicacao (
    ISSN VARCHAR2(20) PRIMARY KEY,
    TituloP VARCHAR2(100),
    Editor VARCHAR2(100),
    URL VARCHAR2(100)
);

CREATE TABLE Area (
    AreaID NUMBER PRIMARY KEY,
    DescricaoA VARCHAR2(200)
);

CREATE TABLE PalavraChave (
    PC NUMBER PRIMARY KEY,
    DescricaoPC VARCHAR2(100)
);

CREATE TABLE Artigos (
    ArtigoID NUMBER PRIMARY KEY,
    TituloA VARCHAR2(100),
    ISSN VARCHAR2(20) REFERENCES Publicacao(ISSN),
    Ano DATE,
    NumeroPaginas NUMBER,
    AreaID NUMBER REFERENCES Area(AreaID)
);

CREATE TABLE ArtigoPC (
    ArtigoID NUMBER REFERENCES Artigos(ArtigoID),
    PC NUMBER REFERENCES PalavraChave(PC),
    PRIMARY KEY (ArtigoID, PC)
);

------------------------------ Insere Dados nas Tabelas Correspondentes na Ordem Correta -----------------------------------------------------------------------------------------------------------------------------------

-- inseri dados tabela Publicacao
INSERT INTO Publicacao VALUES ('1234-5678','Inteligência Artificial na Pesquisa Científica','Ana Paula Souza','www.revistaexemplo.com/artigo1234');
INSERT INTO Publicacao VALUES ('2345-6789','Ciência de Dados e Inteligência Artificial','Juliana Ferreira','www.jornalacademico.com/ciência5678');
INSERT INTO Publicacao VALUES ('3456-7890','O Futuro da Pesquisa em Inteligência Artificial','Mariana Oliveira','www.pesquisaavancada.com/ia9101');
INSERT INTO Publicacao VALUES ('4567-8901','O que é: IA na Ciência de Dados','Filipe Andrade','www.tecnologiadehoje.com/ia1121');
INSERT INTO Publicacao VALUES ('5678-9012','Ciência de Dados e IA: O Futuro da Tecnologia','Juliana Ferreira','www.inovacaotecnologica.com/cd1314');
-- insere dados tabela Area
INSERT INTO Area VALUES (1, 'Explora como a IA está transformando a pesquisa científica.');
INSERT INTO Area VALUES (2, 'Analisa a combinação de Ciência de Dados e IA para decisões informadas.');
INSERT INTO Area VALUES (3, 'Discute tendências e avanços futuros na pesquisa em IA.');
INSERT INTO Area VALUES (4, 'Guia introdutório sobre IA aplicada na Ciência de Dados.');
INSERT INTO Area VALUES (5, 'Aborda a integração de Ciência de Dados e IA no futuro da tecnologia.');
-- insere dados na tabela PalavraChave
INSERT INTO PalavraChave VALUES (1, 'Inteligência Artificial');
INSERT INTO PalavraChave VALUES (2, 'Ciência de Dados');
INSERT INTO PalavraChave VALUES (3, 'Pesquisa Científica');
INSERT INTO PalavraChave VALUES (4, 'Aprendizado de Máquina');
INSERT INTO PalavraChave VALUES (5, 'Tendências Tecnológicas');
INSERT INTO PalavraChave VALUES (6, 'Inovações');
INSERT INTO PalavraChave VALUES (7, 'Análise de Dados');
INSERT INTO PalavraChave VALUES (8, 'Ética em IA');
INSERT INTO PalavraChave VALUES (9, 'Automatização');
INSERT INTO PalavraChave VALUES (10, 'Futuro da Tecnologia');
-- insere dados na tabela Artigos
INSERT INTO Artigos VALUES (1,'Transformação da Pesquisa Científica com IA','1234-5678',TO_DATE('2023-03-01','YYYY-MM-DD'),20,1);
INSERT INTO Artigos VALUES (2,'Decisões Informadas: Ciência de Dados e IA','2345-6789',TO_DATE('2022-05-15','YYYY-MM-DD'),42,2);
INSERT INTO Artigos VALUES (3,'Tendências Futuras na Pesquisa em IA','3456-7890',TO_DATE('2020-04-22','YYYY-MM-DD'),55,3);
INSERT INTO Artigos VALUES (4,'Guia Introdutório: IA na Ciência de Dados','4567-8901',TO_DATE('2021-10-10','YYYY-MM-DD'),32,4);
INSERT INTO Artigos VALUES (5,'Futuro da Tecnologia: Ciência de Dados e IA','5678-9012',TO_DATE('2024-04-03','YYYY-MM-DD'),33,5);
-- insere dados na tabela ArtigoPC
INSERT INTO ArtigoPC VALUES (1,1);
INSERT INTO ArtigoPC VALUES (1,3);
INSERT INTO ArtigoPC VALUES (1,6);
INSERT INTO ArtigoPC VALUES (2,2);
INSERT INTO ArtigoPC VALUES (2,9);
INSERT INTO ArtigoPC VALUES (3,5);
INSERT INTO ArtigoPC VALUES (3,8);
INSERT INTO ArtigoPC VALUES (4,4);
INSERT INTO ArtigoPC VALUES (4,2);
INSERT INTO ArtigoPC VALUES (4,1);
INSERT INTO ArtigoPC VALUES (5,10);
INSERT INTO ArtigoPC VALUES (5,6);
INSERT INTO ArtigoPC VALUES (5,1);

------------------------------ Seleciona Todos os Dados das Tabelas Correspondentes -----------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM Publicacao;
SELECT * FROM Area;
SELECT * FROM Artigos;
SELECT * FROM PalavraChave;
SELECT * FROM ArtigoPC;

------------------------------ Remove Tabelas Correspondentes na Ordem Correta ----------------------------------------------------------------------------------------------------------------------------------
--DROP TABLE ArtigoPC;
--DROP TABLE Artigos;
--DROP TABLE PalavraChave;
--DROP TABLE Area;
--DROP TABLE Publicacao;