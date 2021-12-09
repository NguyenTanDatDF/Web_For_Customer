package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SetCategory extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 String category = req.getParameter("category");
	HttpSession session = req.getSession();
    session.setAttribute("category_session", category);
    
    try {
  		Thread.sleep(2000);
  	} catch (InterruptedException e) {
  		// TODO Auto-generated catch block
  		e.printStackTrace();
  	}
    
    req.getRequestDispatcher("ProductPageForward").forward(req, resp);
}
}
