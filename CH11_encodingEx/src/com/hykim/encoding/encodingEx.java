package com.hykim.encoding;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class encodingEx
 */
@WebServlet("/encodingEx")
public class encodingEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public encodingEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Get");
		
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("이름 : "+name);
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Post");
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("이름 : "+name);
		out.println("</body></html>");
		out.close();
	}

}
