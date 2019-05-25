<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int age; %>
<%
	String str =request.getParameter("age"); 
	age = Integer.parseInt(str);
%>
미성년자입니다. 주류 구매가 불가능 합니다. <br>

<a href="requestEx.html">처음으로</a>
</body>
</html>