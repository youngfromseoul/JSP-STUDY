<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fileForm.jsp</title>
</head>
<body>
<!-- 오렐리 파일업로드 라이브러리를 사용 -->
<form action="fileFormOk.jsp"  method="post"  
	enctype="multipart/form-data" >

	파일 : <input type="file"  name="file"  size="20">  <br>
	<input type="submit"  value="File Upload" > 

</form>

</body>
</html>