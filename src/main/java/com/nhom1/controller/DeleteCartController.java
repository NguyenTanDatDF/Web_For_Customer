package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.CookieUtil;

public class DeleteCartController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Cookie cookie = new Cookie("quatity_product"+id, "");
        cookie.setMaxAge(121212);
        resp.addCookie(cookie);

	    Cookie[] cookies = req.getCookies(); 
        String product_cookie =  CookieUtil.getCookieValue(cookies, "Shop_Cart");
        
        // convert |item|item|item| to {item, item, item} (CookieValue to Array)
      	 String[] listId = new String[1000];
    	 String el ="";
     	 int len = 0;
   	   for(int i = 0; i < product_cookie.length(); i++)
    	 {
   		if(product_cookie.charAt(i)!='|')
   		{
   		  el += product_cookie.charAt(i);
   		}
   		else
   		{
   			listId[len] = el;
   			el = "";
   			len++;
   	  	}
     	 }
        String Cart_String = "";
   	   for(int i = 0 ; i < len; i++)
   	   {
   		   if(!listId[i].equals(id))
   		   {
   			   Cart_String += listId[i] + "|";
   		   }
   	   }
   	   Cookie c = new Cookie("Shop_Cart", Cart_String);
       c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
       c.setPath("/");                     // allow entire app to access it
       resp.addCookie(c);
        req.getRequestDispatcher("deletecookie.jsp").forward(req, resp);
	}
	
}
