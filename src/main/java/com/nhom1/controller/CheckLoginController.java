package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.CookieUtil;

public class CheckLoginController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		 
		String id_user = "."; 
		 try
		 {
			 HttpSession session = req.getSession(false);
				id_user = session.getAttribute("id_user").toString(); 
			
		 }catch(Exception e)
		 {
			  id_user = ".";
		 }
			
		
		
		
		
		
	if( id_user.equals("."))
	{
		req.getRequestDispatcher("./Pages_Customer/MyAccount/Login/index.jsp").forward(req, resp); 
	}
	
	
	
	
	else
	{
		req.getRequestDispatcher("./Pages_Customer/MyAccount/Account/index.jsp").forward(req, resp); 
	}
}
}
