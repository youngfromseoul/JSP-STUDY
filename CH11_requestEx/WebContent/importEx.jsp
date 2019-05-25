<%@page import="java.text.SimpleDateFormat"%>
<%@page import="sun.java2d.pipe.SpanShapeRenderer.Simple"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>importEx.jsp</title>
</head>
<body>
<%
	Calendar date = Calendar.getInstance(); //인스턴스 객체
	SimpleDateFormat today = new SimpleDateFormat("yyyy년MM월dd일");
	SimpleDateFormat todayDefault = new SimpleDateFormat();
	SimpleDateFormat now = new SimpleDateFormat("hh.mm.ss");
%>
오늘은 <b> <%= today.format(date.getTime()) %></b> <br>
오늘은 <b> <%= todayDefault.format(date.getTime()) %></b><br>
<br>
현재 시간은 <b><%=now.format(date.getTime()) %></b><br>

</body>
</html>