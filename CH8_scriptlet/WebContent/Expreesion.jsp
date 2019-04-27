<!-- @ : system에게 알려주는 표식자 -->
<!-- page : 지시자(명령)
	 language : 언어
	 contentType : charset은 선언된 문자 정보 (html/uft-8)로 출력
	 pageEncoding : 해당 파일의 인코딩 방법
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>

<!--meta : 메타포어 (의미를 암시) -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! /* ! : 선언문 */
	int i = 10;
	String str = "abc";
	private int sum (int a, int b) {
		return a+b;
	}
%>

<%= i %> <br> <!-- = : 출력문    -->

str = > <%= str %> <br>

<h2> sum => </ht> <%= sum(1,5) %> 

<%
	int[] iArr = {10, 20 ,30};
	out.println(Arrays.toString(iArr));
	%>


</body>
</html>