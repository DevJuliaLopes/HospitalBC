CREATE TABLE [Medico] (
  [id_medico] int PRIMARY KEY IDENTITY(1, 1),
  [especialidade] varchar(255),
  [nome_medico] varchar(255),
  [cpf] varchar(11),
  [id_pacientes] int
)
GO

CREATE TABLE [Pacientes] (
  [id_pacientes] int PRIMARY KEY IDENTITY(1, 1),
  [endereco] varchar(255),
  [rg] varchar(255),
  [cpf] varchar(255),
  [email] varchar(255),
  [n_convenio] int(9),
  [data_nasc] date,
  [nome_paci] varchar(255),
  [telefone] int(255),
  [id_quarto] int,
  [id_convenio] int
)
GO

CREATE TABLE [Receita] (
  [id_receita] int PRIMARY KEY IDENTITY(1, 1),
  [nome_medico] varchar(255),
  [nome_paci] varchar(255),
  [qunt_med] float,
  [remedio] varchar(255),
  [id_consulta] int
)
GO

CREATE TABLE [Quarto] (
  [id_quarto] int PRIMARY KEY IDENTITY(1, 1),
  [numero] number(255),
  [tipo_quarto] varchar(255),
  [id_tquarto] int
)
GO

CREATE TABLE [Consulta] (
  [id_consulta] int PRIMARY KEY IDENTITY(1, 1),
  [especialidade] varchar(255),
  [n_carteira] int(9),
  [n_paci] varchar(255),
  [nome_medico] varchar(255),
  [data_cons] date,
  [hora_cons] time,
  [valor_cons] int(255),
  [id_convenio] int
)
GO

CREATE TABLE [Internacao] (
  [id_internacao] int PRIMARY KEY IDENTITY(1, 1),
  [data_entrada] date,
  [data_pre_alta] date,
  [data_alta] date,
  [procedimento] varchar(255),
  [id_quarto] int,
  [id_enfermeiro] int,
  [id_tquarto] int
)
GO

CREATE TABLE [Enfermeiro] (
  [id_enfermeiro] int PRIMARY KEY IDENTITY(1, 1),
  [nome] varchar(255),
  [cpf] varchar(11),
  [registro] varchar(255),
  [cargo] varchar(255)
)
GO

CREATE TABLE [Tipo_quarto] (
  [id_tquarto] int PRIMARY KEY IDENTITY(1, 1),
  [descricao] varchar(255),
  [valor_diaria] float(12),
  [id_enfermeiro] int
)
GO

CREATE TABLE [Convenio] (
  [id_convenio] int PRIMARY KEY IDENTITY(1, 1),
  [cnpj] int(12),
  [tempo_carencia] varchar(255),
  [nome_paci] varchar(255),
  [nome_convenio] varchar(255)
)
GO

ALTER TABLE [Pacientes] ADD FOREIGN KEY ([id_pacientes]) REFERENCES [Medico] ([id_pacientes])
GO

ALTER TABLE [Quarto] ADD FOREIGN KEY ([id_quarto]) REFERENCES [Pacientes] ([id_quarto])
GO

ALTER TABLE [Tipo_quarto] ADD FOREIGN KEY ([id_tquarto]) REFERENCES [Quarto] ([id_tquarto])
GO

ALTER TABLE [Enfermeiro] ADD FOREIGN KEY ([id_enfermeiro]) REFERENCES [Tipo_quarto] ([id_enfermeiro])
GO

ALTER TABLE [Internacao] ADD FOREIGN KEY ([id_enfermeiro]) REFERENCES [Enfermeiro] ([id_enfermeiro])
GO

ALTER TABLE [Internacao] ADD FOREIGN KEY ([id_tquarto]) REFERENCES [Tipo_quarto] ([id_tquarto])
GO

ALTER TABLE [Convenio] ADD FOREIGN KEY ([id_convenio]) REFERENCES [Pacientes] ([id_convenio])
GO

ALTER TABLE [Convenio] ADD FOREIGN KEY ([id_convenio]) REFERENCES [Consulta] ([id_convenio])
GO

ALTER TABLE [Consulta] ADD FOREIGN KEY ([id_consulta]) REFERENCES [Receita] ([id_consulta])
GO
