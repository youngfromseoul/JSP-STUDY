package com.hykim.dbcp;

/* 
 * DTO (MVC Model 2)
 * 
 * @author freey
 * 
 * DTO - Java Bean으로 만든다.
 * DAO, DTO : DB 접근 및 데이터 전송 객체)
 * DAO :Data Access Object 데이터 베이스 접근 객체 
 * DTO :Data Transfer Object 데이터를 담는 객체
 * 
 */
public class MemberDto {
	private String name;
	private String id;
	private String pw;
	private String phone1;
	private String phone2;
	private String phone3;
	private String gender;
	//DB 데이터이기 때문에 private 선언
	
	public MemberDto(String name, String id, String pw, String phone1, String phone2, String phone3,
			String gender) {
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.gender = gender;
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
