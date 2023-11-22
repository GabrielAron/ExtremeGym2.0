<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="TelaEditar.css">
<body>

    <h2>Alterar informações de usuario</h2>

    <form action="/create-User" method="post">
        <table>
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>Email</th>
                <th>Senha</th>
                <th>ID</th>
            </tr>
                <tr>
                    <td> <input type="text" name="User-name" id="User-name" placeholder="Nome" value="${param.nome}"/> </td>
                    <td> <input type="cpf" onkeyup="formataValorCpf(this)" name="User-cpf" id="User-cpf" value="${param.cpf}" placeholder="CPF" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength=14 /> </td>
                    <td> <input type="email" name="User-email" id="User-email" placeholder="Email" value="${param.email}" /> </td>
                    <td> <input type="text" name="User-senha" id="User-senha" placeholder="Senha" value="${param.senha}"/> </td>
                    <td> <input type="text" name="User-id" id="User-id" value="${param.id}" readonly/>
                    <td>
                        <button type="submit">Register</button>
                    </td>
                </tr>
        </table>

    </form>

</body>
</html>