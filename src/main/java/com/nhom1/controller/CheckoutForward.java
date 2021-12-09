package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.UserDAO;
import com.nhom1.model.Customer;

public class CheckoutForward extends HttpServlet{
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
	
	 if(id_user.equals("."))
	 {
		 req.getRequestDispatcher("/Pages_Customer/CheckOut/index.jsp").forward(req, resp);  
	 }
	 else
	 {
		
		 UserDAO userDAO = new UserDAO();
		Customer customer = userDAO.getCustomer(Integer.parseInt(id_user));
 		 req.setAttribute("customer", customer);
		 req.getRequestDispatcher("/Pages_Customer/CheckOut_Logined/index.jsp").forward(req, resp);  
	 }
}		
}
