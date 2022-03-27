create table Cliente(
id int not null primary key,
nome varchar(200),
data_de_nascimento DATE,
email varchar(150)
)

create table Dependente(
id int not null primary key,
titular_id int not null foreign key references Cliente(id),
dependente_id int not null foreign key references Cliente(id)
)

create table Produto(
registro_ANS varchar (50) not null primary key,
descricao varchar(500),
valor money
)

create table Contrato(
id int not null primary key,
data_inicio_vigencia date not null,
cliente_id int not null foreign key references Cliente (id)
)

create table Produto_Contrato(
id int not null primary key,
produto_id int not null foreign key references Produto (registro_ANS)
contrato_id int not null foreign key references Contrato (id)
)