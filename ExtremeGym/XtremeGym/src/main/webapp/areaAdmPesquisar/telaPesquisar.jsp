<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pesquisa de Aluno</title>
    <link rel="stylesheet" href="telaPesquisar.css">
    <script src="telaPesquisar.js"></script>
</head>
<body>

<div ng-app="sortTable" ng-controller="mainCtrl as main" class="container">
    <h1>Gerenciamento</h1>
    <div class="filter-table">
        <input type="text" placeholder="Search table" ng-model="searchPerson"/>
    </div>
    <table>
        <thead>
        <tr>
            <th ng-click="main.changeSortType('name')">Name
                <span ng-show="main.isSortType('name') " ng-class="{'down' : main.isOrderedReverse(), 'up': !main.isOrderedReverse()}"></span>
            </th>
            <th ng-click="main.changeSortType('surname')">Surname
                <span ng-show="main.isSortType('surname') " ng-class="{'down' : main.isOrderedReverse(), 'up': !main.isOrderedReverse()}"></th>
            <th ng-click="main.changeSortType('age')">Age
                <span ng-show="main.isSortType('age') " ng-class="{'down' : main.isOrderedReverse(), 'up': !main.isOrderedReverse()}"></th>
            <th ng-click="main.changeSortType('id')">Id
                <span ng-show="main.isSortType('id') " ng-class="{'down' : main.isOrderedReverse(), 'up': !main.isOrderedReverse()}"></th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="person in main.persons | filter: searchPerson | orderBy: main.orderType : main.orderReverse">
            <td>{{ person.name }}</td>
            <td>{{ person.surname }}</td>
            <td>{{ person.age }}</td>
            <td>{{ person.id }}</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>