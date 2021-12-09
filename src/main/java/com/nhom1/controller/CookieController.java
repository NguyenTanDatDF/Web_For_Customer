package com.nhom1.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.CookieUtil;


public class CookieController extends HttpServlet{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    
	    String id = req.getParameter("id")	;   
	    int quatity = Integer.parseInt(req.getParameter("quatity"));
	    String action = "";
	   	action = req.getParameter("action");
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
        
   	   boolean havenot = true;
   	   for(int i = 0 ; i < len ; i ++)
   	   {
   		   if(listId[i].equals(id) && action.equals(""))
   		   {
   			 Cookie[] cookiesq = req.getCookies(); 
   	        String quatity_cookie =  CookieUtil.getCookieValue(cookiesq, "quatity_product"+id);
   	         int total = (quatity + Integer.parseInt(quatity_cookie));
   	         Cookie a = new Cookie("quatity_product"+id, Integer.toString(total));
   	         a.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
  	         a.setPath("/");                     // allow entire app to access it
  	         resp.addCookie(a);
  	         havenot = false;
   	       } 
   		 if(listId[i].equals(id) && action.equals("update"))
 		   {
 			 Cookie[] cookiesq = req.getCookies(); 
 	        String quatity_cookie =  CookieUtil.getCookieValue(cookiesq, "quatity_product"+id);
 	     
 	         Cookie a = new Cookie("quatity_product"+id, Integer.toString(quatity));
 	         a.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
	         a.setPath("/");                     // allow entire app to access it
	         resp.addCookie(a);
	         havenot = false;
 	       } 
   	   }
   	   
   	    if(havenot)
   	    {
   	    	Cookie b = new Cookie("quatity_product"+id, Integer.toString(quatity));
   	         b.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
	         b.setPath("/");                     // allow entire app to access it
	         resp.addCookie(b);
	         Cookie c = new Cookie("Shop_Cart", id+"|"+product_cookie);
	         c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
	         c.setPath("/");                     // allow entire app to access it
	         resp.addCookie(c);
   	    }
	   
   	   
   	    
   	    if(action.equals(""))
   	    {
	   req.getRequestDispatcher("FindProductController?id=" +id ).forward(req, resp);
   	    }
   	    if(action.equals("update") )
   	    {
   	     req.getRequestDispatcher("test.jsp").forward(req, resp);
   	    }
}
}
