package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.UserDAO;

public class LoginController extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 try {
			login(req, resp);

	 }catch(Exception e)
	 {
		 
	 }

}



protected void login(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
{
	String User = req.getParameter("user");
	String Pass = req.getParameter("password");
	
	UserDAO userDAO = new UserDAO();
	
	for(int i = 0 ; i < userDAO.listAllCustomer().size(); i++)
	{
		if( userDAO.listAllCustomer().get(i).getUsername().equals(User) && userDAO.listAllCustomer().get(i).getPassword().equals(Pass))
		{
			HttpSession session = req.getSession(); 
			session.setAttribute("id_user", Integer.toString(userDAO.listAllCustomer().get(i).getId()));
			
			
			
			
//			Cookie b = new Cookie("User_Information", Integer.toString( userDAO.listAllCustomer().get(i).getId()));
//  	         b.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
//	         b.setPath("/");                     // allow entire app to access it
//	         resp.addCookie(b);
	         
			req.getRequestDispatcher("./Pages_Customer/Homepage/index.jsp").forward(req, resp); 
		}
	}
	         req.setAttribute("error", "User or password is incorrect");
             req.getRequestDispatcher("./Pages_Customer/MyAccount/Login/index.jsp").forward(req, resp);
}



}
