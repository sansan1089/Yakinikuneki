<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Menu Item</title>
<style>
	h1{
		color:yellow;
	}
</style>
<style>
	body{
		background-color:lightblue;
		text-align: center;
	}
</style>
</head>
<body>
    <h1>メニューを追加しよう</h1>
    <form action="CafeteriaAppServlet" method="post">
        <input type="hidden" name="action" value="addMenuItem">
        <label for="name">メニュー名:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="price">価格:</label>
        <input type="number" step="0.01" id="price" name="price" required><br>
        <button type="submit">メニューを追加</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>