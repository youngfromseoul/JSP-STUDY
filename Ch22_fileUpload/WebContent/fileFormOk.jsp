<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path= request.getRealPath("fileFolder");
	out.println("default path = " + path + "<br>");
	out.println("======================  <br>");
	
	path = "D:/workspace_hih_jsp/file_upload"; // 업로드 파일 저장소(위치)
	
	//   폴더를 나타내는 문자  / 는 원도우/리눅스 호환   (윈도우는 \\, 리눅스는 / ) 
	int size = 1024 * 1024 * 10 ;  // 단위는 바이트, 따라서  10M
	String file="";			  // 업로드될 파일명 	
	String origFile = "";  // 원래 파일명
	
	try {
		MultipartRequest multi = new MultipartRequest( request, path, size,
				"UTF-8", new DefaultFileRenamePolicy() );
		
		
		Enumeration files = multi.getFileNames();
		String str = (String) files.nextElement();
		file = multi.getFilesystemName(str);	
		origFile = multi.getOriginalFileName(str);
		
		out.println("path="+path);
		out.println("str="+str);
		out.println("file="+file);
		out.println("origFile="+origFile);
		out.println("size="+size);		
	} catch (Exception ex) {
		ex.printStackTrace();
	}		
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fileFormOk.jsp</title>
</head>
<body>
<hr><p>
file upload success!! </p>
</body>
</html>