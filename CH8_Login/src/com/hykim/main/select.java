package com.hykim.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class select
 */
@WebServlet("/select")
public class select extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public select() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");

		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter printer = response.getWriter();
	
		printer.println("<html><body>");
		printer.println("당신이 선택한 직업 : <br>");
		printer.println(job);
		printer.println("관심분야 : <br>");
		if (interests == null) {
			printer.println("선택한 항목이 없습니다.");
		}else {
			for (String interest : interests) {
				printer.println(interest + " ");
			}
		}
		printer.println("</html></body>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
