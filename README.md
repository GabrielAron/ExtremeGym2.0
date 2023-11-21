# ExtremeGym

Escopo Projeto Integrador

- Area Logada
- Area Não Logada
- Pagina "Quem somos"
- Nossos serviços
- Galeria
- Avaliações dos clientes
- Pagina "Seguir" com as redes sociais
- Fale Conosco
- Planos das nossas redes
- Nossas redes sociais
- Veja nossas unidades

  # MER
  ![Aqui está o Nosso Modelo Entidade Relacionamento](Imagens/DiagramaDeUso.PNG)

  # Protótipo do Site

  ![Esta é a viewpoint de nosso site](Imagens/inicio.png)
  ![Quem somos](Imagens/QuemSomos.png)
  ![Serviços oferecidos pela academia](Imagens/Serviços.png)
  ![Galeria de fotos da academia](Imagens/Galeria.png)
  ![Area de Avaliação dos clientes](Imagens/Avaliações.png)
  ![Recursos da academia](Imagens/Recursos.png)
  ![Fale conosco](Imagens/FaleConosco.png)
  ![Treinos](Imagens/Treinos.1.jpg)
  ![Treinos](Imagens/Treinos.2.jpg)
  ![Tela de Login](Imagens/login.png)
  ![Cadastrar-se](Imagens/Cadastro.png)


# SQL
create table usuario(
	id int unique auto_increment primary key,
    nome varchar(255),
    CPF varchar(14),
    email varchar(255),
    senha varchar(255)
);

create table exercicio(
	id int unique auto_increment primary key,
    categoria varchar(40),
    nome varchar(50),
    serie int,
    repeticao int
);

create table treino(
	id int unique auto_increment primary key,
	nome Varchar(30),
    fkExercicios int,
		foreign key (fkExercicios) references treinos(id)
);

create table diaDaSemana(
	id int unique auto_increment primary key,
    nome Varchar(12),
    fkTreinos int,
		foreign key (fkTreinos) references treinos(id)
);

create table treino_exe (
	id int unique auto_increment primary key,
	fkTreinos int,
		foreign key (fkTreinos) references treinos(id),
    fkExercicios int,
		foreign key (fkExercicios) references exercicios(id)
);
