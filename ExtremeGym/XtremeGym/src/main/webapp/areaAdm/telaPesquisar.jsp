<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="telaPesquisar.css">
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

        a[href^="/areaAdm/TelaEditar.jsp"] {
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

        button {
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
        </style>
</head>
    <body>
          <div>

                <c:if test="${sessionScope.loggedUser != null}">
                    <span>${sessionScope.loggedUser}</span>
                    <a href="/logout">Logout</a>
                </c:if>
                <h1>Cadastros</h1>
                <table>
                    <tr>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Senha</th>
                        <th>CPF</th>
                        <th>ID</th>
                        <c:if test="${sessionScope.loggedUser != null}">
                            <th>Ações</th>
                        </c:if>
                    </tr>
                    <c:forEach var="user" items="${user}">
                        <tr>
                            <td>${user.nome} </td>
                            <td>${user.email} </td>
                            <td>${user.senha} </td>
                            <td>${user.cpf} </td>
                            <td>${user.id} </td>
                            <td>
                                <c:if test="${sessionScope.loggedUser != null}">
                                    <form action="/delete-User" method="post">
                                        <input type="hidden" id="id" name="User-id" value="${user.id}">
                                        <button type="submit">Deletar</button>
                                        <span> | </span>
                                        <a href="/areaAdm/TelaEditar.jsp?id=${user.id}&nome=${user.nome}&cpf=${user.cpf}&email=${user.email}&senha=${user.senha}">Update</a>
                                    </form>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
          </div>
    </body>
</html>
