package br.com.XtremeGym.model;

public class Exercicio {
    String id;
    String nome;
    String categoria;
    String repeticao;
    String serie;

    public Exercicio(String id, String nome, String categoria, String repeticao, String serie) {
        this.id = id;
        this.nome = nome;
        this.categoria = categoria;
        this.repeticao = repeticao;
        this.serie = serie;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getRepeticao() {
        return repeticao;
    }

    public String getSerie() {
        return serie;
    }

}
