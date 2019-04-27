<!-- scriptlet : 스크립 + 애플릿  -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	int i = 0;
 		while (true) {
 			i++;
 			out.println("5 *" +i + "=" + (5*i) + "<br>");
 			System.out.println("====JSP====");
		
 %>
 	<h3> 이 부분은 HTML입니다. </h3>
 <%
	if (i==9) 
		break;
 		}
 %>
 	<h3> 이 부분 HTML입니다. </h3>
</body>
</html>