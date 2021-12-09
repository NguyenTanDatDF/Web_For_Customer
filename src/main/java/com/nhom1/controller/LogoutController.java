package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		Cookie b = new Cookie("User_Information", ".");
//	         b.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
//        b.setPath("/");                     // allow entire app to access it
//        resp.addCookie(b);
	 HttpSession session = req.getSession();
	 session.setAttribute("id_user", ".");
        req.getRequestDispatcher("./Pages_Customer/MyAccount/Login/index.jsp").forward(req, resp);
}
}
