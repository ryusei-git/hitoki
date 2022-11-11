<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Quiz" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/select.css">
<link rel="icon" href="img/favicon.ico">
<title>問題一覧</title>
</head>
<body>
	<nav>
	<a href="index.html">TOP</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="registerServlet">問題登録</a>
	<a href="deleteServlet">問題削除</a></nav>
	<%int i = 0; %>
	<div class="a">
	<table border="1">
		<tr><th>ばんごう</th>
			<th>もんだい</th>
			<th>こたえ</th>
		</tr>
		<%
		List<Quiz> list = (ArrayList<Quiz>)request.getAttribute("list");
		for(Quiz s : list) {
	%>
		<tr><td><%=i = i + 1%></td>
			<td><%=s.getQuestion()%></td>
			<td><%=s.getAnswer() %></td>
		</tr>
	<%} %></table></div>
		<img alt="" src="img/bnn.png">
</body>
</html>