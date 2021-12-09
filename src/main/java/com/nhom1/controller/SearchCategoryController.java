package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.ProductDAO;
import com.nhom1.model.Product;

public class SearchCategoryController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String  category = req.getParameter("category");
	System.out.print(category);
	if(category.equals("men"))
	{
		category = "Men's shoes";
	}
	if(category.equals("women"))
	{
		category = "Women's shoes";
	}
	if(category.equals("clothes"))
	{
		category = "Clothes";
	}
	
	String  brand = req.getParameter("brand");
	System.out.print(brand);
	System.out.print(category);
	ProductDAO ProductDao = new ProductDAO();
    List<Product> products = new ArrayList<>();
    List<Product> all_products = ProductDao.listAllProduct();
    for(int i = 0 ; i < all_products.size(); i++)
    {
    	if(all_products.get(i).getCategory_code().equals(category))
    	{
    		if(all_products.get(i).getBrand_code().equals(brand))
    		{
    			products.add(all_products.get(i));
    		}
    	}
    }
  req.setAttribute("listProduct", products);
  req.getRequestDispatcher("./Pages_Customer/ProductPage/index.jsp").forward(req, resp);
}
}
