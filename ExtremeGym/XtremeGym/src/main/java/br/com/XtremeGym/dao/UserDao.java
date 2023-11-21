package br.com.XtremeGym.dao;

import br.com.XtremeGym.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserDao {
    public void createUser(User user){
        String sql= "Insert into USUARIO (NOME, CPF, EMAIL, SENHA) values (?, ?, ?, ?)";

        try{

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Sucesso em conectar");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, user.getNome());
            preparedStatement.setString(2, user.getCpf());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getSenha());

            preparedStatement.execute();

            System.out.println("Sucesso em inserir");

            connection.close();
        }catch (Exception e){
            System.out.println("Erro");
        }
    }

    public List<User> acharTodosUsuarios(){
        String sql = "select * from usuario";
        try{

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Sucesso em conectar");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> ususarios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeUsuario= resultSet.getString("NOME");
                String cpfUsuario= resultSet.getString("CPF");
                String emailUsuario= resultSet.getString("EMAIL");
                String senhaUsuario= resultSet.getString("SENHA");
                int idUsuario = resultSet.getInt("Id");

                User user = new User(nomeUsuario, cpfUsuario, emailUsuario, senhaUsuario, idUsuario);

                ususarios.add(user);

            }

            System.out.println("Sucesso em pesquisar");

            connection.close();

            return ususarios;
        }catch (Exception e){
            System.out.println("Falha em conectar");

            return Collections.emptyList();
        }
    }
}