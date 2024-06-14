<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Menu</title>
</head>
<body>
    <h1>Cafeteria Menu</h1>
    <ul>
        <c:forEach var="item" items="${menu}">
            <li>${item.getName()} - ${item.getPrice()}</li>
        </c:forEach>
    </ul>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
