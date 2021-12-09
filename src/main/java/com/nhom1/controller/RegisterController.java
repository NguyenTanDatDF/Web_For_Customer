package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.UserDAO;
import com.nhom1.model.Customer;
import com.nhom1.model.Product;

public class RegisterController extends HttpServlet{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String firstname = req.getParameter("firstname");
	String lastname = req.getParameter("lastname");
	String birthday = req.getParameter("birthday");
	String phone = req.getParameter("phone");
	String email = req.getParameter("email");
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	
	UserDAO userDao = new UserDAO();
	Customer customer = new Customer(firstname,lastname,birthday,phone,email,username,password);
	String error = "";
	boolean have = false;
    for(int i = 0 ; i < userDao.listAllCustomer().size(); i++)
    {
    	if(userDao.listAllCustomer().get(i).getEmail().equals(email))
    	{
    		error += "Email ";
    		have = true;
    	}
    	if(userDao.listAllCustomer().get(i).getUsername().equals(username))
    	{
    		error += "User ";
    		have = true;
    	}
    }
	
    error += "already exists";
    
    if(have == false)
    {
	userDao.saveCustomer(customer);
	error = "";
	req.setAttribute("messaget", "Successfully");
    }
	req.setAttribute("message", error);
	req.getRequestDispatcher("/Pages_Customer/MyAccount/Register/index.jsp").forward(req, resp);
    
	
}
}
