CREATE DATABASE dindin; 

CREATE TABLE usuarios ( 
	id serial PRIMARY KEY,
	nome varchar NOT NULL,
	email varchar UNIQUE NOT NULL,  
	senha varchar NOT NULL
);

CREATE TABLE categorias ( 
	id serial PRIMARY KEY,
  	descricao varchar NOT NULL
);

CREATE TABLE transacoes ( 
	id serial PRIMARY KEY,
  	descricao text NOT NULL,
	valor integer NOT NULL,
	data timestamp DEFAULT current_timestamp,
	categoria_id integer REFERENCES categorias(id),
	usuario_id integer REFERENCES usuarios(id),
	tipo varchar NOT NULL
);

INSERT INTO categorias (descricao) VALUES 
	('Alimentação'), ('Assinaturas e Serviços'), 
    ('Casa'), ('Mercado'), ('Cuidados Pessoais'), 
    ('Educação'), ('Família'), ('Lazer'), 
    ('Pets'), ('Presentes'), ('Roupas'), 
    ('Saúde'), ('Transporte'), 
    ('Salário'), ('Vendas'), 
    ('Outras receitas'), ('Outras despesas');