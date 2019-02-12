<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %><%--
Created by IntelliJ IDEA.
User: Gogolinsky
Date: 11.02.2019
Time: 20:52
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>

<style type="text/css">
    tr.red { color: red; }
    tr.green { color: green; }
</style>

<table border="1px">
    <tr>
        <td>
            Date
        </td>
        <td>
            Description
        </td>
        <td>
            Calories
        </td>
        <td>
            Action
        </td>
    </tr>

    <jsp:useBean id="meals" scope="request" type="java.util.List"/>
    <c:forEach var="meal" items="${meals}">
        <tr class=${meal.excess ? 'red' : 'green'}>
            <td>
                    ${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()}
            </td>
            <td>
                    ${meal.description}
            </td>
            <td>
                    ${meal.calories}
            </td>
            <td><a href="meals?action=update&id=${meal}">Update</a>
                <a href="meals?action=delete&id=${meal}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
