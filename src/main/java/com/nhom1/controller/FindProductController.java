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

public class FindProductController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	ProductDAO productDAO = new ProductDAO();
	String id ;
	
	  id = req.getParameter("id");
	
	

	Product product = productDAO.getProduct(Integer.parseInt(id));
	req.setAttribute("product", product);
	List<Product> allProduct = productDAO.listAllProduct();
	String Category = productDAO.getProduct(Integer.parseInt(id)).getCategory_code();
	List<Product> Related_Product = new ArrayList<>();
	for(int i = 0 ; i< allProduct.size(); i++ )
	{
		if(allProduct.get(i).getCategory_code().equals(Category))
		{
			Related_Product.add(allProduct.get(i));
		}
	}
	req.setAttribute("Related_Product", Related_Product);
	req.getRequestDispatcher("./Pages_Customer/ProductDetailPage/index.jsp").forward(req, resp);
    
	
}
}
