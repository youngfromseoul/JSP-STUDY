package com.hykim.dbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.InitialContext;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

public class MemberDao {
 /*
	  String url = "jdbc:oracle:thin:@localhost:1521:xe";  // DB 접속을 위한 시스템 명칭    
	  String uid ="system"; // DB 접속을 위한 계정
	  String upw="oracle"; // DB 접속을 위한 패스워드
*/
	
	DataSource ds;
	
	  public MemberDao() { // 기본 생성자(파라미터 없음)
		 try {
				//Class.forName(driver); // ojdbc6_g.jar 파일을 클래스로 JAVA VM에 등록 
			 Context.context = new InitialContext();
			 
		 } catch (Exception ex ) {
			 	ex.printStackTrace();// 디버깅을 위한 트레이스
		 }
	 }
	  
	  public ArrayList<MemberDto> memberSelect() {
		  ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();
			Connection con = null;  // 1.DB 접속
		    Statement stmt = null ; // 2.SQL 실행
		    ResultSet rs = null;    // 3.SQL 실행 결과
		    String query = "select * from memberships";
			 try {
					con = DriverManager.getConnection(url, uid, upw);		
					stmt = con.createStatement(); 
					rs = stmt.executeQuery(query); // query 문장 실행 결과를 저장 결과  선언(리턴 값)

					while ( rs.next() ) {
						String name = rs.getString("name"); 
						String id = rs.getString("id"); 	String pw = rs.getString("pw");
						String phone1 = rs.getString("phone1"); 	String phone2 = rs.getString("phone2");
						String phone3 = rs.getString("phone3");		String gender = rs.getString("gender");
						
						MemberDto dto = new MemberDto(
								name,id,pw,phone1,phone2,phone3,gender );
						dtos.add(dto);
					}
			 } catch (Exception ex ) {
				 	ex.printStackTrace();// 디버깅을 위한 트레이스
				} finally {
					try {
						if (rs != null) rs.close();
						if (stmt != null) stmt.close();
						if (con != null) con.close(); 
					} catch (Exception e) {
						System.out.println("SQL Exception ==> " + e);
					}
				}  
			 return dtos;
	  }
	  
}
