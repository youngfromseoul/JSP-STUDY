<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- action은 서블릿 맵핑 -->
	<form method="get" action ="MethodServlet">  
		<input type ="submit" value="get 형식 호출">
	</form>
	<br> <br>
		<form method="post" action ="MethodServlet">
		<input type ="submit" value="post 형식 호출">
	</form>
</body>
</html>