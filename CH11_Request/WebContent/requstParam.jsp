<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>requsetParam.jsp</title>
</head>
<body>
<%!  //decration
String name, id, password, major, protocol;
String[] hobby;
%>

<% //scriptlet (script + applet)
	request.setCharacterEncoding("utf-8"); 
	name = request.getParameter("name");
	id = request.getParameter("id");
	password = request.getParameter("password");
	hobby = request.getParameterValues("hobby");
	major = request.getParameter("major");
	protocol = request.getParameter("protocol");
%>

이름 : <%= name %> <br>
아이디 : <%= id %> <br>
패스워드 : <%= password %> <br>
취미 : <%= Arrays.toString(hobby) %> <br>
전공 : <%= major %> <br>
프로토콜 : <%= protocol %> <br>
</body>
</html>