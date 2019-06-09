package com.ih.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontCon
 */
@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontCon() {
        super();
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

		if (command.equals("/memberAll.do")) {
			System.out.println("memberAll");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<html><head></head><body>");
				
				Service service = new MemberAllService();
				ArrayList<MemberDto> dtos = service.execute(request, response);
				for (int i =0; i<dtos.size(); i++) {
					MemberDto dto = dtos.get(i);
					String id = dto.getId();
					String pw = dto.getPw();
					String name = dto.getName();
					String eMail = dto.geteMail();
					Timestamp rDate = dto.getrDate();
					String address = dto.getAddress();
					
					writer.println("id="+id+" pw="+pw+" name="+name+
							" eMail="+eMail+"  rDate="+rDate.toLocalDateTime()
							+"  address="+address);
				}					
				writer.println("</body>");				
			} catch (IOException e) {			
				e.printStackTrace();
			}
		
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}		
	
}




