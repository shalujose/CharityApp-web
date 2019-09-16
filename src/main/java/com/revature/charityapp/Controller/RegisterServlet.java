package com.revature.charityapp.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.charityapp.Model.User;
import com.revature.charityapp.Services.UserService;

/**
 * Servlet implementation class registerServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		String gender=request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));	//parse the parameter as an int
		String email = request.getParameter("email");
		long phone=Long.parseLong(request.getParameter("phone"));
		String password = request.getParameter("password");
		
		User user = new User();
		user.setName(name);
		user.setGender(gender);
		user.setAge(age);
		user.setEmail(email);
		user.setPhone(phone);
		user.setPassword(password);
		

		UserService userservice = new UserService();
		userservice.registerNow(user);
		
		PrintWriter out = response.getWriter();
		out.println("registered");
        out.flush();
 
	}
}
