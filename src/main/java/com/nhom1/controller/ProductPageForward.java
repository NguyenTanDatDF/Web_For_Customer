package com.nhom1.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.model.*;



import com.nhom1.data.*;



public class ProductPageForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO productDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductPageForward() {
        productDao = new ProductDAO();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
            	try {
					listProduct(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} catch (ServletException e) {
					e.printStackTrace();
				}
	}

	
	
    private void listProduct(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
    	List<Product> listProduct = new ArrayList<Product>();
    	String category = null;
    	   try {
    	  		Thread.sleep(2000);
    	  	} catch (InterruptedException e) {
    	  		// TODO Auto-generated catch block
    	  		e.printStackTrace();
    	  	}
    	try {
    	HttpSession session = request.getSession(false);
    	 category = session.getAttribute("category_session").toString();
    	}
    	
    	catch(Exception e)
    	{
    		
    	}
    	
    	String sort = request.getParameter("sort");
    	
    		
    	
	
   if(category!=null)
   {
        if(category.equals("men")) 
        {
        	for(int i = 0; i<productDao.listAllProduct().size(); i++)
              {
        	    if(productDao.listAllProduct().get(i).getCategory_code().equals("Men's shoes"))
        	    {
        	    	listProduct.add(productDao.listAllProduct().get(i));
        	    }
              }
        
        	if(sort!=null)
        	{
        		
        	
          if(sort.equals("az"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return a.getName().compareTo(b.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("za"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return b.getName().compareTo(a.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("lh"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(a.getPrice()).compareTo(Float.toString(b.getPrice()));
  		             }
  			}
  			);
          }
          if(sort.equals("hl"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(b.getPrice()).compareTo(Float.toString(a.getPrice()));
  		             }
  			}
  			);
          }
          
          
          
        	
        	}          
          
        }
        else if(category.equals("women"))
        {
        	for(int i = 0; i<productDao.listAllProduct().size(); i++)
              {
        	    if(productDao.listAllProduct().get(i).getCategory_code().equals("Women's shoes"))
        	    {
        	    	listProduct.add(productDao.listAllProduct().get(i));
        	    }
              }
        	
        	if(sort!=null)
        	{
        		
        	
          if(sort.equals("az"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return a.getName().compareTo(b.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("za"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return b.getName().compareTo(a.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("lh"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(a.getPrice()).compareTo(Float.toString(b.getPrice()));
  		             }
  			}
  			);
          }
          if(sort.equals("hl"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(b.getPrice()).compareTo(Float.toString(a.getPrice()));
  		             }
  			}
  			);
          }
          
          
          
        	
        	}  
        	
        	
        }
        else if(category.equals("clothes"))
        {
        	for(int i = 0; i<productDao.listAllProduct().size(); i++)
              {
        	    if(productDao.listAllProduct().get(i).getCategory_code().equals("Clothes"))
        	    {
        	    	listProduct.add(productDao.listAllProduct().get(i));
        	    }
              }
        }
        else if(category.equals("all"))
        {
        	for(int i = 0; i<productDao.listAllProduct().size(); i++)
              {
        	   
        	    	listProduct.add(productDao.listAllProduct().get(i));

              }
        	
        	if(sort!=null)
        	{
        		
        	
          if(sort.equals("az"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return a.getName().compareTo(b.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("za"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return b.getName().compareTo(a.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("lh"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(a.getPrice()).compareTo(Float.toString(b.getPrice()));
  		             }
  			}
  			);
          }
          if(sort.equals("hl"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(b.getPrice()).compareTo(Float.toString(a.getPrice()));
  		             }
  			}
  			);
          }
          
          
          
        	
        	}  
        	
        	
        	
        }
   }
        else
        {
        	listProduct = productDao.listAllProduct();
        	
        	if(sort!=null)
        	{
        		
        	
          if(sort.equals("az"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return a.getName().compareTo(b.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("za"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return b.getName().compareTo(a.getName());
  		             }
  			}
  			);
          }
          if(sort.equals("lh"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(a.getPrice()).compareTo(Float.toString(b.getPrice()));
  		             }
  			}
  			);
          }
          if(sort.equals("hl"))
          {
        	  Collections.sort(listProduct, new Comparator<Product>()
  			{
  		             public int compare(Product a, Product b)
  		             {
  		            	 return Float.toString(b.getPrice()).compareTo(Float.toString(a.getPrice()));
  		             }
  			}
  			);
          }
          
          
          
        	
        	}  
        	
        }
        	
        //listProduct.sort(Comparator.naturalOrder());
        request.setAttribute("listProduct", listProduct);
        
        
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("./Pages_Customer/ProductPage/index.jsp");
        dispatcher.forward(request, response);
    }
    
    
    
 
    
    
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
   
}