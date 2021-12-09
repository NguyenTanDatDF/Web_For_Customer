package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.BillDAO;
import com.nhom1.data.ProductDAO;
import com.nhom1.model.Bill;
import com.nhom1.model.Product;

public class BillDetailForward extends HttpServlet{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      int id = Integer.parseInt(req.getParameter("id"));
	  BillDAO BillDao = new BillDAO();
	  Bill bill = new Bill();
	  List<Bill> bills =  BillDao.listAllBill();
	  for(int i = 0 ; i < bills.size(); i++)
	  {
		  if(bills.get(i).getId()==id)
		  {
			  bill = bills.get(i);
		  }
	  }
	  List<Product> products = new ArrayList<>();
	  
      // convert |item|item|item| to {item, item, item} 
    	 String[] listId = new String[1000];
  	 String el ="";
   	 int len = 0;
 	   for(int i = 0; i < bill.getId_product().length(); i++)
  	 {
 		if(bill.getId_product().charAt(i)!='|')
 		{
 		  el += bill.getId_product().charAt(i);
 		}
 		else
 		{
 			listId[len] = el;
 			el = "";
 			len++;
 	  	}
   	 }
 	   
 	   
	  ProductDAO ProductDao = new ProductDAO();
 	   for(int i = 0 ; i < len; i++)
 	   {
 		
 		   products.add( ProductDao.getProduct(Integer.parseInt(listId[i])));
 	   }
 	   
 	// convert |item|item|item| to {item, item, item} 
  	 String[] listQuatity = new String[1000];
	 String el1 ="";
 	 int len1 = 0;
	   for(int i = 0; i < bill.getQuatity().length(); i++)
	 {
		if(bill.getQuatity().charAt(i)!='|')
		{
		  el1 += bill.getQuatity().charAt(i);
		}
		else
		{
			listQuatity[len1] = el1;
			el1 = "";
			len1++;
	  	}
 	 }
 	 
	   for(int i = 0 ; i < products.size(); i++)
	   {
		   products.get(i).setQuatity(Integer.parseInt(listQuatity[i]));
	   }
 	   int totalor = 0;
	   for(int i = 0 ; i < products.size(); i++)
	   {
		   totalor += products.get(i).getQuatity() * products.get(i).getPrice();
	   }
	   req.setAttribute("totalor", totalor);
      req.setAttribute("bill", bill);
      req.setAttribute("products", products);
	  req.getRequestDispatcher("/Pages_Customer/MyAccount/OrderHistoryDetail/index.jsp").forward(req, resp);
}
}
