<!-- select.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select page</title>
</head>
<body>
	<form method="get" action="select">
			<!-- CSS 문법 -->
		<span style="float : left; margin-right:20px"> 
		<label for="job">직업</label>
			<!-- HTML 문법 -->
		<!-- 셀렉트 옵션 생성 -->
		<select id="jop" name="job" size="1">
			<option value=""> 선택하세요 </option>
			<option value="학생"> 학생 </option>
			<option value="공무원"> 공무원 </option>		
			<option value="공무원"> 군인 </option>
			<option value="공무원"> 회사원 </option>
		</select>
		</span>
		<input type="submit" value="전송">
</body>
</html>