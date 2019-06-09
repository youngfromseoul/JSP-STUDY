<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>frontControllerEx.jsp</title>
</head>
<body>
<!-- 4가지 선언 방법  -->
	<a href ="insert.do"> insert</a>
	<HR>
	<a href ="HTTP://localhost:8090<%=request.getContextPath()%>/update.do"> update</a>	
	<HR>
	<a href ="HTTP://localhost:8090/Ch25_frontController/select.do"> select</a>	
	<HR>
	<a href ="<%=request.getContextPath()%>/delete.do"> delete</a>	
	<HR>	
</body>
</html>