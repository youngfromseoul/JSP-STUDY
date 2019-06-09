<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre> c는 core를 의미 (core lib)</pre>
	<c:set var="varName" value="varValue" />
	varName : <c:out value="${varName }" />
	<br>
	
	
	<c:set var="moblie" value="galaxy" />
	moblie 모델 명칭 : <c:out value= "${mobile }" />
	<br>
	<c:catch var="debug-catch">
	 <%= 2/0 %>
	 </c:catch> <br>
	 에러 체크 결과 : <c:out value="${debug-check }"></c:out>
	 
	 <c:if test="$(1+2=3)">
	 1+2=3
	 </c:if>
	 
	 	 <c:if test="$(1+2!=3)">
	 1+2 !=3
	 </c:if>
	 <br>
	 <c:forEach var = "start" begin = "0" end = "30" step = "10">
	 ${start }
	 </c:forEach>
	 
	 

</body>
</html>