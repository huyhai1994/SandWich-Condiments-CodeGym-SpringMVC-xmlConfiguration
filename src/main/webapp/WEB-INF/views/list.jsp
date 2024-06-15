<%@ page import="vn.codegym.model.Condiment" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<Condiment> condiments = (List<Condiment>) request.getAttribute("condiments");
%>

<html>
<head>
    <title>Condiments List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>


<body>

<div class="container">
    <div class="row">
        <div class="col"></div>
        <div class="col col-md-6">
            <p class="text-center">Condiments</p>
        </div>
        <div class="col"></div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col col-md-6">
            <table>
                <caption>Condiments List</caption>
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="c" items="${requestScope.condiments}">
                    <tr>
                        <td>
                            <c:out value="${c.id}"/>
                        </td>
                        <td>
                            <c:out value="${c.name}"/>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col"></div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js integrity="
        sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz
"
crossorigin="anonymous"></script>
</body>
</html>
