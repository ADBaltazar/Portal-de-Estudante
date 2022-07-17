create database if not exists DB_PortalEstyudante charset=utf8;

create table if not exists UnidadesOrganica (
 ID_Unidade int not null primary key auto_increment,
 Designacao  varchar(100) not null unique,
 descricao varchar(100) null,
 Data_fund date not null
)charset=utf8;
create  table if not exists curso
(
	ID_Curso int not null primary key auto_increment,
    Curso varchar(100) not null unique,
    Descricao varchar(100) null,
	ID_Unidade int not null,
    foreign key(ID_Unidade) references UnidadesOrganica(ID_Unidade)
)charset=utf8;

create table if not exists Departamento (
	ID_Dep int not null primary key auto_increment,
    Departamento varchar(100) not null unique,
    Descricao varchar(100) default null,
    COD_UNIDADE INT NOT NULL,
    foreign key(COD_UNIDADE)references UnidadesOrganica(ID_Unidade)
)charset=utf8;
create table if not exists nivel (
	ID_nivel int not null primary key auto_increment,
    nivel varchar(100) not null unique,
    Duracao int not null,
    Descricao varchar(100) default null,
    COD_CURSO INT NOT NULL,
    foreign key(COD_CURSO)references curso(ID_Curso)
)charset=utf8;
create table if not exists TipoCadeira(
	ID_TipCadeira int not null primary key auto_increment,
    Tipo varchar(100) not null unique, 
    Descricao varchar(100) default null
)charset=utf8;
create table if not exists cadeira(
	ID_Cadeira int not null primary key auto_increment,
    Cadeira varchar(100) not null unique,
    Carga_horaria int not null, 
    COD_CURSO INT NOT NULL,
    COD_Tipo INT NOT NULL,
    foreign key(COD_CURSO)references curso(ID_Curso),
    foreign key(COD_Tipo)references TipoCadeira(ID_TipCadeira)
)charset=utf8;
/**/
create table if not exists Funcao(
	ID_Funcao int not null primary key auto_increment,
    Cargo varchar(100) not null unique,
    Descricao varchar(100) not null
)charset=utf8;
/**/
create table if not exists Funcionario(
	ID_Funcionario int not null primary key auto_increment,
    Nome varchar(100) not null,
    Sobrenome varchar(100) not null,
    Apelido varchar(100) not null,
    Sexo enum('M','F'),
    Identidade varchar(100) not null unique,
    Data_Nasc date not null
)charset=utf8;
/**/
create table if not exists Estudante(
	ID_Estudant int not null primary key auto_increment,
    Nome varchar(100) not null,
    Sobrenome varchar(100) not null,
    Apelido varchar(100) not null,
    Sexo enum('M','F'),
    Identidade varchar(100) not null unique,
    Data_Nasc date not null
)charset=utf8;