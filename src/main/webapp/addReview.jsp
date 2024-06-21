<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>レビューを追加</title>
</head>
<body>
    <h1>レビューを追加</h1>
    <form action="CafeteriaAppServlet" method="post">
        <input type="hidden" name="action" value="addReview">
        <label for="itemName">メニュー名:</label>
        <input type="text" id="itemName" name="itemName" required><br>
        <label for="rating">評価 (1-5):</label>
        <input type="number" id="rating" name="rating" min="1" max="5" required><br>
        <label for="comment">コメント:</label>
        <textarea id="comment" name="comment" required></textarea><br>
        <button type="submit">追加</button>
    </form>
    <a href="index.jsp">Back to Home</a>

</body>
</html>