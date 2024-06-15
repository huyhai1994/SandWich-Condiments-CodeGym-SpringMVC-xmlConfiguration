<%@ page import="vn.codegym.model.Condiment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: huyhai1994
  Date: 6/15/24
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sandwich Condiments Menu</title>
</head>
<body>
<h1>SandWich Conduments</h1>
<form action="/save" method="get">

    <label for="lettuce">Lettuce</label><input type="checkbox" id="lettuce"
                                               name="condiment" value="Lettuce">
    <label for="tomato">Tomato</label><input type="checkbox" id="tomato"
                                             name="condiment" value="Tomato">
    <label for="mustard">Mustard</label><input type="checkbox" id="mustard" name="condiment" value="Mustard">
    <label for="sprouts">Sprouts</label><input type="checkbox" id="sprouts" name="condiment" value="Sprouts">
    <br>
    <input type="submit" value="Submit">

</form>

</body>
</html>
