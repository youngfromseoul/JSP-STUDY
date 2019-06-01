<!-- JSP에서 Java Bean 사용하기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="Student" class="com.hykim.bean.Student" 
	scope="page" />  <!-- scope=page 현재 페이지에서만 사용한다는 의미 --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanEx.jsp</title>
</head>
<body>
<jsp:setProperty property="name" name="Student" value="김효영"/>
<jsp:setProperty property="age" name="Student" value="27"/>
<jsp:setProperty property="grade" name="Student" value="6"/>
<jsp:setProperty property="studentNum" name="Student" value="190601"/>
<!-- property = variable, name = class -->


<!-- setProperty = 정보 입력, getProperty = 정보 가져오기 -->
이름 :  <jsp:getProperty property="name" name="Student"/> <br>
나이 :<jsp:getProperty property="age" name="Student"/> <br>
학년 :<jsp:getProperty property="grade" name="Student"/> <br>
번호 :<jsp:getProperty property="studentNum" name="Student"/> <br>
</body>
</html>