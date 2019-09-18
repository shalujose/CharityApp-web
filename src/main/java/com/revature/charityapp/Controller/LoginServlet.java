package com.revature.charityapp.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        String json = UserController.login(email, password);
	        PrintWriter out = response.getWriter();
	        out.write(json);        
	        out.flush();
	        
	       // response.sendRedirect("donorFeatures.jsp");
	            
	}
}
