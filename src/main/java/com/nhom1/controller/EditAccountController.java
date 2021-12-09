package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.UserDAO;

public class EditAccountController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 HttpSession session = req.getSession(false);
	int id = Integer.parseInt(session.getAttribute("id_user").toString()) ;
	String firstname = req.getParameter("firstname");
	String lastname = req.getParameter("lastname");
	String birthday = req.getParameter("birthday");
	String phone = req.getParameter("phone");
	String email = req.getParameter("email");
	UserDAO userDao = new UserDAO();
	
	int have = 0;
	for(int i = 0 ; i < userDao.listAllCustomer().size(); i++)
	{
		if(userDao.listAllCustomer().get(i).getEmail().equals(email))
		{
			have ++;
		}
	
	}
	String message = "";
	String error = "";
	if(have<=1)
	{
		userDao.Account(id, firstname, lastname, birthday, phone, email);
		message = "Successfully";
		
	}
	else
	{
		error = "Invalid email";
	}
     req.setAttribute("message", message);
     req.setAttribute("error", error);
	req.getRequestDispatcher("./Pages_Customer/MyAccount/EditAccount/index.jsp").forward(req, resp);
}
}
