create database databasepi;
use databasepi;
create table clientes (
	cnpj           varchar(14 ) primary key,
	razao_social   varchar(80),  
	email          varchar(60),  
	pass           varchar(10),
	dt_cadastro    date
) ;
select * from clientes;

