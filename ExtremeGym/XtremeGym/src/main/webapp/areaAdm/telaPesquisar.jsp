<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
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
