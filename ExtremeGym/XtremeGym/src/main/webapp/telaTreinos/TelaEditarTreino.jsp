<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="TelaEditar.css">
<body>
    <h2>Alterar informações de Exercicio</h2>

    <form action="/atualiza-Exercicio" method="post">
        <table>
            <tr>
                <th>Nome</th>
                <th>Categoria</th>
                <th>Repetições</th>
                <th>Séries</th>
                <th>ID</th>
            </tr>
                <tr>
                    <td> <input type="text" name="exercicio-name" id="exercicio-name" placeholder="Nome" value="${param.nome}"/> </td>
                    <td> <input type="text" name="exercicio-cat" id="exercicio-cat" placeholder="Categoria" value="${param.categoria}"/> </td>
                    <td> <input type="text" name="exercicio-rep" id="exercicio-rep" placeholder="Repetições" value="${param.repeticao}"/> </td>
                    <td> <input type="text" name="exercicio-serie" id="exercicio-serie" placeholder="Séries" value="${param.serie}"/> </td>
                    <td> <input type="text" name="exercicio-id" id="exercicio-id" value="${param.id}"/>
                    <td>
                        <button type="submit">Register</button>
                    </td>
                </tr>
        </table>

    </form>

</body>
</html>