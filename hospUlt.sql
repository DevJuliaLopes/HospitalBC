CREATE DATABASE IF NOT EXISTS Hospital;
USE Hospital; 

create table if not exists  medicos (
  id_medico int PRIMARY KEY AUTO_INCREMENT,
  especialidade varchar (255),
  nome_medico varchar(255),
  cpf varchar (11),
  id_pacientes int (8)
);
alter table medicos add column  ativo varchar (100);

UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '1');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '2');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '3');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '4');
UPDATE `Hospital` . `medicos` SET `ativo` = 'NAO_ATIVO' WHERE  (`id_medico` = '5');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '6');
UPDATE `Hospital` . `medicos` SET `ativo` = 'NAO_ATIVO' WHERE  (`id_medico` = '7');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '8');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '9');
UPDATE `Hospital` . `medicos` SET `ativo` = 'ATIVO' WHERE  (`id_medico` = '10');





