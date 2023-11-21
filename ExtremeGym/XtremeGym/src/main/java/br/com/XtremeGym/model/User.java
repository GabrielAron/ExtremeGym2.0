package br.com.XtremeGym.model;

public class User {
    private String nome;
    private String cpf;
    private String email;
    private String Senha;
    private String id;

    public User(String name, String cpf, String email, String senha, String id) {
        this.nome = name;
        this.cpf = cpf;
        this.email = email;
        this.Senha = senha;
        this.id = id;
    }

    public User(String nome, String cpf, String email, String senha) {
        this.nome = nome;
        this.cpf = cpf;
        this.email = email;
        Senha = senha;
    }

    public User(String email, String senha) {
        this.email = email;
        Senha = senha;
    }




    public String getNome() {
        return nome;
    }

    public String getId() {
        return id;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return Senha;
    }
}