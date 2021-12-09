package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.ProductDAO;
import com.nhom1.model.Product;

public class CustomerHome extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	ProductDAO productDao = new ProductDAO();
	List<Product> all_product = productDao.listAllProduct();
	
	List<Product> men_product = new ArrayList<>();
	List<Product> women_product = new ArrayList<>();

	
	for(int i = 0 ; i < all_product.size(); i++)
	{
	  	if(all_product.get(i).getCategory_code().equals("Men's shoes"))
	  	{
	  		men_product.add(all_product.get(i));
	  	}
	}
		
	for(int i = 0 ; i < all_product.size(); i++)
	{
	  	if(all_product.get(i).getCategory_code().equals("Women's shoes"))
	  	{
	  		women_product.add(all_product.get(i));
	  	}
	}
	
	req.setAttribute("women", women_product);
	req.setAttribute("men", men_product);
	req.getRequestDispatcher("/Pages_Customer/Homepage/index.jsp").forward(req, resp);    
}	
	
}
