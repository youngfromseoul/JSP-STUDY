<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<form method="post" action="login">

<!-- name은 서블릿에서 사용, ID는 JSP에서 사용 -->

 <label for="userid">아이디&nbsp;&nbsp;&nbsp; : </label>
 <input type="text" name="id" id="userid"><br>
 
 <label for="userpw">패스워드: </label>
 <input type="password" name="password"id="password"><br>
 
 <input type="submit" value="로그인"><br>
 
 <!-- &nbsp; 줄 바꿈 없이 공백 처리 -->
 
</form>
</body>
</html>