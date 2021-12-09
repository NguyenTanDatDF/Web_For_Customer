package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.UserDAO;

public class ChangePasswordController extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String oldpass = req.getParameter("old");
    	String newpass = req.getParameter("new");
    	UserDAO UserDao = new UserDAO();
    	HttpSession session = req.getSession(false);
    	int id = Integer.parseInt(session.getAttribute("id_user").toString()) ;
    	for(int i = 0 ; i < UserDao.listAllCustomer().size(); i++)
    	{
    		if(UserDao.getCustomer(id).getPassword().equals(oldpass))	
    		{
    			UserDao.ChangePassword(id, newpass);
    			req.setAttribute("message", "Successfully");
    			req.getRequestDispatcher("./Pages_Customer/MyAccount/ChangePassword/index.jsp").forward(req, resp);
    		}
    	}
    	req.setAttribute("error", "Wrong password");
		req.getRequestDispatcher("./Pages_Customer/MyAccount/ChangePassword/index.jsp").forward(req, resp);
    	
    }
}
