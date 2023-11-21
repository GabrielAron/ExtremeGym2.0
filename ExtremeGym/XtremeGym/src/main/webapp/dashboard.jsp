<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Cars</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="user" items="${user}">
            <tr>
                <td></td>
                <td>Nome: ${user.nome}</td>
                <td>CPF: ${user.cpf}</td>
                <td>Email: ${user.email}</td>
                <td>Id: ${user.id}</td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>