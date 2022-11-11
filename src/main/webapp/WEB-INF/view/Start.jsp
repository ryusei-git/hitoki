<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
	<%@ page import="dto.Quiz" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/start.css">
<link rel="icon" href="img/favicon.ico">
<title>クイズ</title>
</head>
<body>
		<nav>
	<a href="index.html">TOP</a>
	<a href="selectAllServlet">問題一覧</a>
	<a href="registerServlet">問題登録</a>
	<a href="deleteServlet">問題削除</a></nav>
	<form action="startedServlet" method="post">
	
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
		<tr><td><%=i = i+1%></td>
			<td><%=s.getQuestion()%></td>
			<td>
				<div id="Awesome" class="anim750">
  
  <div class="reveal circle_wrapper">
    <div class="circle"><%=s.getAnswer() %></div>
  </div>
            
  <div class="sticky anim750">
    <div class="front circle_wrapper anim750">
      <div class="circle anim750"></div>
    </div>
  </div>            
  <div class="sticky anim750">
    <div class="back circle_wrapper anim750">
      <div class="circle anim750"></div>
    </div>
  </div>    
</div>
		</tr>
	<%} %></table></div>
		<img alt="" src="img/bnn.png">
	
	<% %>
	</form>
</body>
</html>