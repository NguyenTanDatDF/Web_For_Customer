package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SetAddress extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String address = req.getParameter("address");
	  String road = req.getParameter("road");
	  String ward = req.getParameter("ward");
	  String district = req.getParameter("district");
	  String city = req.getParameter("city");
	  String country = req.getParameter("country");
	  
	  HttpSession session = req.getSession();
	  
	  session.setAttribute("address", address);
	  session.setAttribute("road", road);
	  session.setAttribute("ward", ward);
	  session.setAttribute("district", district);
	  session.setAttribute("city", city);
	  session.setAttribute("country", country);
	  try {
		Thread.sleep(2000);
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  req.getRequestDispatcher("Test").forward(req, resp);
}
}
