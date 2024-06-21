<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="CafeteriaApp.Review" %>
<%@ page import="CafeteriaApp.MenuItem" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>レビュー</title>
</head>
<body>
    <h1>レビュー 一覧</h1>
    <ul>
        <%
            List<Review> reviews = (List<Review>) request.getAttribute("reviews");
            if (reviews != null) {
                for (Review review : reviews) {
                    out.println("<li>" + review.getMenuItem().getName() + " - 評価: " + review.getRating() + " - コメント: " + review.getComment() + "</li>");
                }
            } else {
                out.println("<li>レビューはありません</li>");
            }
        %>
    </ul>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
