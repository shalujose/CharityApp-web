package com.revature.charityapp.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.revature.charityapp.Model.User;
import com.revature.charityapp.Services.UserService;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserService userservice = new UserService();
		User user = userservice.findByNameAndPassword(email,password);
		
		
		Gson gson = new Gson();
		String json = gson.toJson(user);
		
		PrintWriter out = response.getWriter();
		out.println(json);
		
		System.out.println("Hello");
	}


}
