CREATE TABLE cliente (
  id_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  vendedor_id_vendedor INTEGER UNSIGNED NOT NULL,
  nome_cliente VARCHAR(255) NULL,
  email_cliente VARCHAR(255) NULL,
  fone_cliente VARCHAR(20) NULL,
  cpf_cliente INTEGER UNSIGNED NULL,
  dt_nasc_cliente DATE NULL,
  PRIMARY KEY(id_cliente),
  INDEX cliente_FKIndex1(vendedor_id_vendedor)
);

CREATE TABLE concessionaria (
  id_concessionaria INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_concessionaria VARCHAR(45) NULL,
  PRIMARY KEY(id_concessionaria)
);

CREATE TABLE marca (
  id_marca INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente_id_cliente INTEGER UNSIGNED NOT NULL,
  nome_marca VARCHAR(20) NULL,
  PRIMARY KEY(id_marca),
  INDEX marca_FKIndex1(cliente_id_cliente)
);

CREATE TABLE modelo (
  id_modelo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  marca_id_marca INTEGER UNSIGNED NOT NULL,
  nome_modelo VARCHAR(20) NULL,
  cor_modelo VARCHAR(20) NULL,
  ano_fab_modelo YEAR NULL,
  ano_mod_modelo YEAR NULL,
  placa_modelo CHAR(8) NULL,
  localidade_modelo VARCHAR(45) NULL,
  PRIMARY KEY(id_modelo),
  INDEX modelo_FKIndex1(marca_id_marca)
);

CREATE TABLE vendedor (
  id_vendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  concessionaria_id_concessionaria INTEGER UNSIGNED NOT NULL,
  nome_vendedor VARCHAR(255) NULL,
  PRIMARY KEY(id_vendedor),
  INDEX vendedor_FKIndex1(concessionaria_id_concessionaria)
);


