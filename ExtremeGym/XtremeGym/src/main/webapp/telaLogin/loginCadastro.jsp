<!DOCTYPE html>

<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/telaLogin/loginCadastro.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
  <script>
    function formataValorCpf(campo) {
    var vr = campo.value;
    if (vr.length > 0) {
        vr = vr.replace(new RegExp("\\.","gm"), "").replace("-", "");
    }

    tam = vr.length;
    if (tam <= 2) {
        campo.value = vr;
    }
    if ((tam > 2) && (tam <= 5)) {
        campo.value = vr.substr(0, tam - 2) + '-' + vr.substr(tam - 2, tam);
    }
    if ((tam >= 6) && (tam <= 8)) {
        campo.value = vr.substr(0, tam - 5) + '.' + vr.substr(tam - 5, 3) + '-' + vr.substr(tam - 2, tam);
    }
    if ((tam == 11)) {
        campo.value = vr.substr(0, tam - 8) + '.' + vr.substr(tam - 8, 3) + '.' + vr.substr(tam - 5, 3) + '-' + vr.substr(tam - 2, tam);
    }
};
  </script>
</head>
<body>

<div class="container" id="container">
  <div class="form-container sign-up-container">
    <form action="/create-User" method="post">
        <span>${requestScope.messageSingIn}</span>
      <h1>Cria uma conta</h1>

      <input type="text" name="User-name" id="User-name" placeholder="Nome" value="${param.nome}"/>
      <input type="cpf" onkeyup="formataValorCpf(this)" name="User-cpf" id="User-cpf" value="${param.cpf}" placeholder="CPF" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength=14 />
      <input type="email" name="User-email" id="User-email" placeholder="Email" value="${param.email}" />
      <input type="password" name="User-senha" id="User-senha" placeholder="Senha" value="${param.senha}"/>
      <input type="hidden" name="User-id" id="User-id" value="${param.id}"/>
      <button type="submit">Cadastrar</button>

    </form>
  </div>
  <div class="form-container sign-in-container">
        <form action="/login" method="post">

            <span>${requestScope.message}</span>
            <h1>Entre com sua conta</h1>

            <input type="email" name="User-login-email" placeholder="Email" />
            <input type="password" name="User-login-senha" placeholder="Senha" />

            <button id="btnAbrirPopup">Entrar</button>
        </form>

        <div id="meuPopup" class="fundo">
          <div class="pop-up">
            <h2>Escolha uma opção</h2>
            <p>Você gostaria de ir para a área de alteração de treinos ou para a de alteração de usuários?</p>
            <button onclick="location.href='/listar-todos-treinos'">Alteração de Treinos</button>
            <button onclick="location.href='/achar-todos-usuarios'">Alteração de Usuários</button>
            <button id="btnFecharPopup">Fechar</button>
          </div>
        </div>

        <script>

        var popup = document.getElementById("meuPopup");


        var btnAbrirPopup = document.getElementById("btnAbrirPopup");


        var btnFecharPopup = document.getElementById("btnFecharPopup");


        btnAbrirPopup.onclick = function() {
          popup.style.display = "block";
        }

        btnFecharPopup.onclick = function() {
          popup.style.display = "none";
        }

        window.onclick = function(event) {
          if (event.target == popup) {
            popup.style.display = "none";
          }
        }
        </script>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Bem Vindo!</h1>
        <p>Para ter acesso sua área, faça seu cadastro</p>
        <button class="ghost" id="signIn">Login</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>Olá!</h1>
        <p>Caso não tenha uma conta, faça seu cadastro</p>
        <button class="ghost" id="signUp">Cadastro</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>

<script src="/telaLogin/loginCadastro.js"></script>