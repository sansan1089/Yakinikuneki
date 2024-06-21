<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="CafeteriaApp.MenuItem" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>メニュー</title>
</head>
<body>
    <h1>メニュー 一覧</h1>
    <ul>
        <%
            List<MenuItem> menu = (List<MenuItem>) request.getAttribute("menu");
            if (menu != null) {
                for (MenuItem item : menu) {
                    out.println("<li>" + item.getName() + " - " + item.getPrice() + " 円 " + "</li>");
                }
            } else {
                out.println("<li>メニューはありません</li>");
            }
        %>
    </ul>
    <a href="index.jsp">Back to Home</a>
</body>
</html>

