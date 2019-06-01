<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session Get</title>
</head>
<body>
<%
	Object obj1 =session.getAttribute("mySessionName");
	String mySessionName = (String) obj1;
	Object obj2 =session.getAttribute("myName");
	String myName = (String) obj2;
	out.println("mySessionName="+mySessionName);
	out.println("<br> myName="+myName);
	
	out.println("<br>-------------------<br>");
	Enumeration enums = session.getAttributeNames();
	int i = 0;
	String name, value;
	while(enums.hasMoreElements()) {
		name = enums.nextElement().toString();
		System.out.println("name="+name);
		value = session.getAttribute(name).toString();
		System.out.println("value="+value);
		out.println("name="+name);
		out.println("<br>");
		out.println("value="+value);
		

	}
%>
</body>
</html>