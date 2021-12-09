package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckOutWarningLogin extends HttpServlet{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  req.setAttribute("error", "Please login before paying");
	  req.getRequestDispatcher("./Pages_Customer/CheckOut/index.jsp").forward(req, resp);
}
}
