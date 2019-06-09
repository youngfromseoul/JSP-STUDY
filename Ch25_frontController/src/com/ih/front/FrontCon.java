package com.ih.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontCon
 * FrontController 방식
 */
@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("### get ###");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("### post ###");
		actionDo(request, response);		
	}

	private void actionDo(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("### actionDo ###");
		
		String uri = request.getRequestURI();
		System.out.println("uri="+uri);
		
		String context = request.getContextPath();
		System.out.println("context="+context);
		
		String command = uri.substring(context.length());
		System.out.println("command="+command);
		
		if (command.equals("/insert.do")) {
			System.out.println("insert");
		}
		else if (command.equals("/update.do")) {
			System.out.println("update");
		}		
		else if (command.equals("/select.do")) {
			System.out.println("select");
		}	
		else if (command.equals("/delete.do")) {
			System.out.println("delete");
		}			
	}
	
	
	
	
	
	
	
	
	
}
