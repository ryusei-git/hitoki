<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="dto.Quiz" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/delete.css">
<link rel="icon" href="img/favicon.ico">
<title>削除</title>
</head>
<body>	
	<%int no = 0; %>
	<form action="deletedServlet" method="post">
		<nav>
	<a href="index.html">TOP</a>
	<a href="registerServlet">問題登録</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="deleteServlet">問題削除</a></nav>
	削除する問題を選択してください
	
	<table border="1">
		<tr><th>ばんごう</th>
			<th>もんだい</th>
			<th>こたえ</th>
		</tr>
		<%
		List<Quiz> list = (ArrayList<Quiz>)request.getAttribute("list");
		for(Quiz s : list) {
	%>
		
		<tr><td><%=no = no+1%></td>
			<td><%=s.getQuestion()%></td>
			<td><%=s.getAnswer() %></td>	
		</tr>
	<%} %></table>
		<input type="text" name="questionNo">
		<input type="submit" name="送信">
		</form>
		
</body>
</html>