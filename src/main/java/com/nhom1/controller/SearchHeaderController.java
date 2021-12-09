package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhom1.data.ProductDAO;
import com.nhom1.data.UserDAO;
import com.nhom1.model.Product;

public class SearchHeaderController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	ProductDAO ProductDao = new ProductDAO();
    	String name = req.getParameter("name");
    	List<Product> products = new ArrayList<>();
    	List<Product> all_products = ProductDao.listAllProduct();
    	for(int i = 0 ; i < all_products.size(); i++)
    	{
    		if(all_products.get(i).getName().toLowerCase().contains(name.toLowerCase()))
    		{
    			products.add(all_products.get(i));
    		}
    	}
           req.setAttribute("listProduct", products);
           req.getRequestDispatcher("/Pages_Customer/ProductPage/index.jsp").forward(req, resp);
    }
}
