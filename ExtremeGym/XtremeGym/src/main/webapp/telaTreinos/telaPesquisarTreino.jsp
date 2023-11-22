<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
    body {
        font-family: Arial, sans-serif;
    }

    span {
        font-size: 20px;
        color: #333;
    }

    a[href="/logout"] {
        color: #f11403;
    }

    a[href^="/telaTreinos/TelaEditarTreino.jsp"] {
        background-color: #4CAF50;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border: none;
        border-radius: 4px;
        transition-duration: 0.4s;
    }
    a {
        text-decoration: none;
        font-size: 18px;
        margin-left: 10px;
    }

    #searchInput {
        width: 100%;
        font-size: 16px;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
    }

    h1 {
        text-align: center;
        font-family: 'Georgia', serif;
        font-size: 24px;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        color: #333;
        background-color: #ccc;
        font-family: 'Verdana', sans-serif;
    }

    th, td {
        padding: 15px;
        text-align: left;
        font-size: 16px;
    }

    tr:nth-child(even) {
        background-color: #999;
    }


    </style>
</head>
<body>
    <div>
        <c:if test="${sessionScope.loggedUser != null}">
            <span>${sessionScope.loggedUser}</span>
            <a href="/logout">Logout</a>
        </c:if>
        <h1>Exercícios Cadastrados</h1>
        <input type="text" id="searchInput" onkeyup="filterTable()" placeholder="Pesquisar por nome ou categoria..">
        <table id="myTable">
            <tr>
                <th>Nome</th>
                <th>Categoria</th>
                <th>Repetições</th>
                <th>Séries</th>
                <th>ID</th>
                <c:if test="${sessionScope.loggedUser != null}">
                    <th>Ações</th>
                </c:if>
            </tr>
            <c:forEach var="exercicio" items="${exercicio}">
                <tr>
                    <td>${exercicio.nome} </td>
                    <td>${exercicio.categoria} </td>
                    <td>${exercicio.repeticao} </td>
                    <td>${exercicio.serie} </td>
                    <td>${exercicio.id} </td>
                    <td>
                        <c:if test="${sessionScope.loggedUser != null}">
                            <a href="/telaTreinos/TelaEditarTreino.jsp?id=${exercicio.id}&nome=${exercicio.nome}&categoria=${exercicio.categoria}&repeticao=${exercicio.repeticao}&serie=${exercicio.serie}">Update</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <script>
    function filterTable() {
      var input, filter, table, tr, td, i;
      input = document.getElementById("searchInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
      for (i = 0; i < tr.length; i++) {
        tdName = tr[i].getElementsByTagName("td")[0];
        tdCategory = tr[i].getElementsByTagName("td")[1];
        if (tdName || tdCategory) {
          txtValueName = tdName.textContent || tdName.innerText;
          txtValueCategory = tdCategory.textContent || tdCategory.innerText;
          if (txtValueName.toUpperCase().indexOf(filter) > -1 || txtValueCategory.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
    </script>
</body>
</html>
