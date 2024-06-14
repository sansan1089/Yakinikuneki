<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>displayReviews</title>
</head>
<body>
    <h1>Menu Item Reviews</h1>
    <ul>
        <c:forEach var="review" items="${reviews}">
            <li>${review}</li>
        </c:forEach>
    </ul>
    <a href="index.jsp">Back to Home</a>
</body>
</html>