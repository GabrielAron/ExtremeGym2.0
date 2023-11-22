<!DOCTYPE html>

<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

    <meta charset="UTF-8">
    <title>Treinos</title>

    <style>
        body {
          font-family: 'Lexend Deca', sans-serif;
          margin: 0;
          padding: 0;
          background-color:#f1ecf1;
        }

        header {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 20px;
        }

        #LogoSite {
          margin-left: 20px;
          position: absolute; /* Posiciona o logo no canto superior esquerdo */
          top: 0;
          left: 0;
        }

        #LogoSite img {
          width: 90%; /* Ajuste o valor conforme necessário */
          max-width: 200px; /* Defina um limite máximo para a largura */

        }

        #Menu {
          margin-right: 20px;
        }

        #Menu a {
          margin-left: 10px;
          text-decoration: none;
          color: black;
        }

        h1 {
          text-align: center;
        }

        .container {
          display: flex;
          flex-wrap: wrap;
          justify-content: center;
        }

        figure {
          display: flex;
          flex-direction: column;
          align-items: center;
          border: none;
          box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.2);
          padding: 20px;
          width: calc(33.33% - 20px); /* Faz com que haja 3 cards por linha */
          margin: 10px;
        }

        figcaption {
          margin-top: 10px;
          text-align: left;
        }

        button {
          margin-top: auto;
          display: block;
          margin-left: auto;
          margin-right: auto;
        }

        #TxtContadorDeTreinos,
        #ContadorRealDetreinos {
          text-align: center;
          margin-top: 20px;
        }

        li {
          list-style-type: none;
        }

        /* Ajusta o layout dos cards para dispositivos menores */
        @media screen and (max-width: 768px) {
          figure {
            width: calc(50% - 20px); /* Faz com que haja 2 cards por linha em dispositivos menores */
          }
        }

        #inicio {
          position: absolute;
          top: 20px;
          right: 20px;
          width: 50px;
          height: 50px;
        }

    </style>



</head>
<header>
<div id="LogoSite">
   <img src="/telaTreinos/LogoXtremeGYM.png" alt="Logo XtremeGym">
</div>
<div id="inicio">
    <a class="hover-1" href="../index.html">Inicio</a>
</div>

</header>

<body>
<h1 id="MeuTreinoaSemanal">Meu treino semanal</h1>

<div>
   <div class="container">
    <figure>
        <div>
            <table>
                <figcaption>Segunda-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="peitos" items="${peitos}">
                    <tr>
                        <td>${peitos.nome} </td>
                        <td>${peitos.repeticao} </td>
                        <td>${peitos.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
    <figure>
        <div>
            <table>
                <figcaption>Terça-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="costas" items="${costas}">
                    <tr>
                        <td>${costas.nome} </td>
                        <td>${costas.repeticao} </td>
                        <td>${costas.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
    <figure>
        <div>
            <table>
                <figcaption>Quarta-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="ombro" items="${ombro}">
                    <tr>
                        <td>${ombro.nome} </td>
                        <td>${ombro.repeticao} </td>
                        <td>${ombro.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
    <figure>
        <div>
            <table>
                <figcaption>Quinta-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="biceps" items="${biceps}">
                    <tr>
                        <td>${biceps.nome} </td>
                        <td>${biceps.repeticao} </td>
                        <td>${biceps.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
    <figure>
        <div>
            <table>
                <figcaption>Sexta-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="core" items="${core}">
                    <tr>
                        <td>${core.nome} </td>
                        <td>${core.repeticao} </td>
                        <td>${core.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
    <figure>
        <div>
            <table>
                <figcaption>Sexta-Feira</figcaption>
                <tr>
                    <th>Nome</th>
                    <th>Repetições</th>
                    <th>Séries</th>
                </tr>
                <c:forEach var="perna" items="${perna}">
                    <tr>
                        <td>${perna.nome} </td>
                        <td>${perna.repeticao} </td>
                        <td>${perna.serie} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </figure>
   </div>
</div>

</body>
</html>