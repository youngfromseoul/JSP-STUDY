package com.hykim.bean;

public class MemberBean {
	String name;
	String userid;
	
	//기본 생성자
	public MemberBean() {
		
	}
	
	//일반 생성자
	public MemberBean (String name, String userid) {
		this.name = name;
		this.userid = userid;
	}
	
	@Override
	public String toString() {
		return "MemberBean{name="+name+", userid"+userid+" }";
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
