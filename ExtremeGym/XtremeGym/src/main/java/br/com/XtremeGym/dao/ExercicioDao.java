package br.com.XtremeGym.dao;

import br.com.XtremeGym.config.ConnectionPoolConfig;
import br.com.XtremeGym.model.Exercicio;
import br.com.XtremeGym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ExercicioDao {

    public void criarExercicio(Exercicio exercicio){
        String sql= "INSERT INTO exercicio (categoria, nome, serie, repeticao) VALUES (?, ?, ?, ?)";

        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, exercicio.getCategoria());
            preparedStatement.setString(2, exercicio.getNome());
            preparedStatement.setString(3, exercicio.getSerie());
            preparedStatement.setString(4, exercicio.getRepeticao());

            preparedStatement.execute();

            System.out.println("Sucesso em inserir");

            connection.close();
        }catch (Exception e){
            System.out.println("Erro");
        }
    }

    public List<Exercicio> mostrarTodosExercicios(){
        String sql = "select * from exercicio";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }

    public void updateExercicio(Exercicio exercicio){
        String SQL= "UPDATE exercicio SET nome = ?, categoria= ?, serie= ?, repeticao= ? WHERE id = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);


            preparedStatement.setString(1, exercicio.getNome());
            preparedStatement.setString(2, exercicio.getCategoria());
            preparedStatement.setString(3, exercicio.getSerie());
            preparedStatement.setString(4, exercicio.getRepeticao());
            preparedStatement.setString(5, exercicio.getId());

            preparedStatement.execute();

            System.out.println("sucesso em alterar exercicio de id: " + exercicio.getId());

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public List<Exercicio> SortearExercicioPeito(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Peito' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }
    public List<Exercicio> SortearExercicioCosta(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Costas' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }
    public List<Exercicio> SortearExercicioOmbro(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Ombro' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }

    public List<Exercicio> SortearExercicioBicepsTripces(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Biceps ou Triceps' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }

    public List<Exercicio> SortearExercicioCore(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Core' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }

    public List<Exercicio> SortearExercicioPerna(){
        String sql = "SELECT * FROM exercicio WHERE categoria = 'Perna' ORDER BY RAND() LIMIT 5";
        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Exercicio> exercicios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeExercicio= resultSet.getString("NOME");
                String categoriaExercicio= resultSet.getString("CATEGORIA");
                String serieExercicio= resultSet.getString("SERIE");
                String repeticaoExercicio= resultSet.getString("REPETICAO");
                String idExercicio = resultSet.getString("Id");

                Exercicio exe = new Exercicio(idExercicio, nomeExercicio, categoriaExercicio, repeticaoExercicio, serieExercicio);

                exercicios.add(exe);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return exercicios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }

}
