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
	<c:set var="msg" value="hello"></c:set>
	\${msg } = ${msg } <br>
	
	<c:set var= "age" value="20"></c:set>
	\${age } = ${age }
	
	<c:set var="member" value ="<%= new com.hykim.bean.MemberBean() %>"></c:set>
	
	<c:set target= "${member }" property="name" value="김효영"></c:set>
	<c:set target= "${member }" property="userid" >abcd</c:set>
	\${member } = ${member } <br>
	<c:set var ="add" value="${10 +5 }"> </c:set>
	\${add } = ${add } <br>
	<c:set var ="flag" value="${10 > 5 }"> </c:set>
		\${flag } = ${flag } <br>

</body>
</html>