<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="member" class="com.hykim.el.MemberInfo" scope="page"></jsp:useBean>
    <jsp:setProperty property="name" name="member" value="홍길동"/>
    <jsp:setProperty property="id" name="member" value="abc"/>
    <jsp:setProperty property="pw" name="member" value="1234"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> expression 방식 </p>
이름 : <jsp:getProperty property="name" name="member"/> <br>
아이디 : <jsp:getProperty property="id" name="member"/> <br>
패스워드 : <jsp:getProperty property="pw" name="member"/> <br>

<hr>

<p> expression Language 방식 </p>
이름 : ${member.name }
이름 : ${member.id }
이름 : ${member.pw }
</body>
</html>