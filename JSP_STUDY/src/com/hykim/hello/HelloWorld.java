package com.hykim.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */

@WebServlet(urlPatterns = {"/HelloWorld"})
//@WebServlet("/WORLD")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L; //일련번호
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() { //기본 생성자 
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post"); //콘솔에 출력
		response.setContentType("text/html; charset=utf-8"); //response 브라우저에게 보내는 정보  
		PrintWriter writer = response.getWriter(); //브라우저 화면에 출력
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Post 응답 </h1>");
		writer.println("</body>");
		writer.println("</html>");
		
	}

}
