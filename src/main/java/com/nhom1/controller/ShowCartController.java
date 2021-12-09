package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.CookieUtil;
import com.nhom1.data.ProductDAO;
import com.nhom1.data.UserDAO;
import com.nhom1.model.Product;

public class ShowCartController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 ProductDAO productDAO = new ProductDAO();
	 UserDAO userDao = new UserDAO();
	 CookieUtil cookie = new CookieUtil();
	 Cookie[] cookies = req.getCookies();
	 String product_cookie = cookie.getCookieValue(cookies, "Shop_Cart");
	 
	 
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
	 

      // get product from cookie
	 List<Product> listProduct = new ArrayList<Product>();
	 for(int i = 0 ; i < len; i++ )
	 {
		Product product = productDAO.getProduct(Integer.parseInt(listId[i]));
		product.setQuatity(Integer.parseInt(cookie.getCookieValue(cookies,"quatity_product"+listId[i])));
		listProduct.add(product);
	 }
     
	 int total = 0;
	 int ship = 0;
	 String pay_descr ="";
	 for(int i = 0 ; i < len; i++ )
	 {
		total += listProduct.get(i).getPrice() * listProduct.get(i).getQuatity();
		ship += listProduct.get(i).getQuatity();
		pay_descr += listProduct.get(i).getQuatity()+ " " + listProduct.get(i).getName() + "  ";
	 }
	 
	 HttpSession session = req.getSession();
	 String id_user = ".";
	 try {
	 HttpSession sessionb = req.getSession(false);
		 id_user = sessionb.getAttribute("id_user").toString(); 
	 } catch(Exception e)
	 {
		 
	 }
	 try {
	 HttpSession session1 = req.getSession(); 
		session1.setAttribute("user_logined", userDao.getCustomer(Integer.parseInt(id_user))) ;
	 }
	 catch(Exception e)
	 {
		 
	 }
	 session.setAttribute("total", total);
	 session.setAttribute("listProduct", listProduct);
	 session.setAttribute("ship", ship);
	 session.setAttribute("pay_descr", pay_descr);
	 
	 req.getRequestDispatcher("./Pages_Customer/ShoppingCart/index.jsp").forward(req, resp);
}


 


}
