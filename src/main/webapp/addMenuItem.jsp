<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Menu Item</title>
</head>
<body>
    <h1>Add Menu Item</h1>
    <form action="CafeteriaAppServlet" method="post">
        <input type="hidden" name="action" value="addMenuItem">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="price">Price:</label>
        <input type="number" step="0.01" id="price" name="price" required><br>
        <button type="submit">Add Menu Item</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>