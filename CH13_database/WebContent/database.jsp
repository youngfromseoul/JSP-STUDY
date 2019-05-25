<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  Ch18_db_membership -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>select.jsp</title>
</head>
<body>
 <%!
// java.sql lib 사용
Connection connection;  // 1.DB 접속
    Statement statement;     // 2.SQL 실행
    ResultSet resultSet;        // 3.SQL 실행 결과
    
    // oracle driver
    String driver = "oracle.jdbc.driver.OracleDriver";   // 1. DB 접속을 위한 드라이버 명칭
    String url = "jdbc:oracle:thin:@localhost:49161:xe";  // 1. DB 접속을 위한 시스템 명칭    
    String uid ="system"; // 1. DB 접속을 위한 계정
    String upw="oracle";     
    String query = "select * from membership"; // 2.SQL 실행을 위한 쿼리문  
%> 
<%
try {        
// 1. DB 접속을 위한 준비단계
System.out.println("driver : " + driver); // JDBC(Java DataBase Controller) driver : ojdbc6_g.jar
Class.forName(driver); // ojdbc6_g.jar 파일을 클래스로 JAVA VM에 등록 
connection = DriverManager.getConnection(url, uid, upw); // 실질적인 DB연결	
System.out.println("connection url : " + url  +"  uid="+uid );
System.out.println("query : " + query);

// 2.SQL 실행을 위한 쿼리문  적용을 위한 준비 단계
statement = connection.createStatement(); // query 문장을 위한 객체의 인스턴스 선언(리턴 값)
//3. SQL 실행 결과를 위한 준비 단계
resultSet = statement.executeQuery(query); // query 문장 실행 결과를 저장 결과  선언(리턴 값)

while ( resultSet.next() ) {
String id = resultSet.getString("id"); // 필드(field) 명칭
String pw = resultSet.getString("pw");
String name = resultSet.getString("name");
String phone = resultSet.getString("phone");

System.out.println("id = " + id + "pw = " + pw + "  name = " + name+ "  phone="+phone);
out.println("id = " + id + "pw = " + pw + "  name = " + name+ "  phone="+phone + " <br>"); 
}
} catch (Exception e) {
System.out.println("Exception ==> " + e);
} finally {
if (resultSet != null) resultSet.close();
if (statement != null) statement.close();
if (connection != null) connection.close(); // 할당된 인스턴스의 메모리를 free하게 함	
}
%>





</body>
</html>