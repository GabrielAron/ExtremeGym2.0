package br.com.XtremeGym.dao;

import br.com.XtremeGym.config.ConnectionPoolConfig;
import br.com.XtremeGym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserDao {
    public void createUser(User user){
        String sql= "Insert into USUARIO (NOME, CPF, EMAIL, SENHA, ADM) values (?, ?, ?, ?, FALSE)";

        try{

            Connection connection = ConnectionPoolConfig.getConnection();

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

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> ususarios = new ArrayList<>();

            while (resultSet.next()){//Enq existir "resposta"
                String nomeUsuario= resultSet.getString("NOME");
                String cpfUsuario= resultSet.getString("CPF");
                String emailUsuario= resultSet.getString("EMAIL");
                String senhaUsuario= resultSet.getString("SENHA");
                String idUsuario = resultSet.getString("Id");

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
    
    public void deletaUsuarioPorId(String id){
        String SQL= "Delete usuario where id = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);
            preparedStatement.execute();

            System.out.println("sucesso em deletar usuario de id: " + id);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public void updateUsuario(User user){
        String SQL= "UPDATE usuario SET nome = ?, cpf= ?, email= ?, senha= ? WHERE id = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getNome());
            preparedStatement.setString(2, user.getCpf());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getSenha());
            preparedStatement.setString(5, user.getId());

            preparedStatement.execute();

            System.out.println("sucesso em alterar usuario de id: " + user.getId());

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public int login(User user){
        String SQL = "Select * from usuario where email = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getEmail());

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("sucesso em selecionar email");

            while(resultSet.next()){
                String senha = resultSet.getString("SENHA");
                String adm = resultSet.getString("ADM");

                if(senha.equals(user.getSenha())&&adm.equalsIgnoreCase("false")){
                    return 1;
                } else if (senha.equals(user.getSenha())&&adm.equalsIgnoreCase("true")) {
                    return 2;
                }

            }
            connection.close();
            return 0;


        } catch (SQLException e) {
            System.out.println("fail in database connection");
            return 0;

        }

    }
}