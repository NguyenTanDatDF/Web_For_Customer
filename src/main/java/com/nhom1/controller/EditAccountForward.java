package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.UserDAO;
import com.nhom1.model.Customer;

public class EditAccountForward extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 UserDAO userDAO = new UserDAO();
	 HttpSession session = req.getSession(false);
	int id = Integer.parseInt(session.getAttribute("id_user").toString()) ;
	Customer customer =   userDAO.getCustomer(id);
	  req.setAttribute("customer", customer);
	  
	 req.getRequestDispatcher("./Pages_Customer/MyAccount/EditAccount/index.jsp").forward(req, resp);
}
}
