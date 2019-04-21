package com.hykim.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.util.Arrays;

/**
 * Servlet implementation class FormEX
 */
//@WebServlet(description = "form ex", urlPatterns = { "/FE" })
public class FormEX extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEX() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("---- Init -----");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("---- destroy -----");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("---- do get -----");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("---- do post -----");
		//response.setContentType("text/html; charset=utf-8"); // 브라우저에게 보내는 값 인코딩
		request.setCharacterEncoding("utf-8"); //받는 정보 인코딩
		//request : Web Server -> WAS
		//response : Web Server <- WAS
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("name="+name+ " id="+id+" pw="+pw);
		//TEXT 값은 string으로 넣어주기
		
		String[] hobbys = request.getParameterValues("hobby");
		//checkbox은 배열 사용
		System.out.println("hobbys=");
		for (int i=0;i<hobbys.length;i++) {
			System.out.print(hobbys[i]+ " ");
		}
		
		String major =request.getParameter("major");
		String protocol =request.getParameter("protocol");
		System.out.println("major="+major+" protocol="+protocol);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("이름 : "+ name + "<br>");
		writer.println("아이디 : "+ id + "<br>");
		writer.println("취미 : "+ Arrays.toString(hobbys) + "<br>"); //Array.toString 배열 변수를 출력 가능
		writer.println("전공 : "+ major + "<br>");
		writer.println("프로토콜 : "+ protocol + "<br>");
		writer.println("</body>");
		writer.println("</html>");
		
		
	}

}
