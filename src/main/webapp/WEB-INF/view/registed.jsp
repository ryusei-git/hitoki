<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/registed.css">
<link rel="icon" href="img/favicon.ico">
<title>登録完了</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8");
	String str1 = request.getParameter("question");
	String str2 = request.getParameter("answer");
	%>
	<nav>
	<a href="index.html">TOP</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="deleteServlet">問題削除</a></nav>
	
	<div class="main">
	<h1>もんだいをとうろくしました</h1>
	<a>もんだい：<%=str1 %></a><br>
	<a>こたえ:<%=str2 %></a><br>
	<a href="registerServlet" class="remake">まだつくる</a>
		<img alt="" src="img/bnn.png"></div>
	

</body>
</html>