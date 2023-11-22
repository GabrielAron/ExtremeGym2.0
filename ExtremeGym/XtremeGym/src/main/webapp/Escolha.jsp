<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <link rel="stylesheet" href="Escolha.css">
</head>
<body>

<button id="btnAbrirPopup">Abrir seção de gerenciamento</button>

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

</body>
</html>
