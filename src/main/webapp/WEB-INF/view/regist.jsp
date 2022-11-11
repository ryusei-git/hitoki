<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/regist.css">
<link rel="icon" href="img/favicon.ico">
<title>問題登録画面</title>
</head>
<body>
	<nav>
	<a href="index.html">TOP</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="deleteServlet">問題削除</a></nav>
	<form action="registedServlet" method="post">
	<h1>もんだいをとうろくしてください</h1>
	もんだい：<input type="text" name="question">
	こたえ：<input type="text" name="answer">
	<input type="submit" name="できた"> </form>
	<img alt="" src="img/bnn.png">
	
</body>
</html>