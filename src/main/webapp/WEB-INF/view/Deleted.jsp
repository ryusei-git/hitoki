<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/deleted.css">
<link rel="icon" href="/favicon.ico">
<title>削除完了</title>
</head>
<body>
	<nav>
	<a href="index.html">TOP</a>
	<a href="registerServlet">問題登録</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="deleteServlet">問題削除</a></nav>
	<h1>削除しました。</h1>
		<%
	request.setCharacterEncoding("UTF-8");
	String str = request.getParameter("questionNo");
	%>
</body>
</html>