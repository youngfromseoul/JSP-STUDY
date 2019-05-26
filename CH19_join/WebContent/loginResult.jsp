<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name, id, pw;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구찌닷컴</title>
</head>
<body>
<%
	name = (String) session.getAttribute("name"); 
	id = (String) session.getAttribute("id");
	pw = (String) session.getAttribute("pw");
%>
<%= name %> 님 로그인 되었습니다. <br>
로그인 아이디 : <%= id %> <br>
패스워드 : <%= pw %> <br>

<a href="modify.jsp"> 회원정보 수정</a>
</body>
</html>