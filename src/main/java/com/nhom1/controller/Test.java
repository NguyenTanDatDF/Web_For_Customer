package com.nhom1.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.BillDAO;
import com.nhom1.data.MailSending;
import com.nhom1.data.ProductDAO;
import com.nhom1.model.Bill;
import com.nhom1.model.Customer;
import com.nhom1.model.Product;

public class Test extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	  HttpSession session = req.getSession(false);
	  String id_user = session.getAttribute("id_user").toString(); 
	  List<Product> listProduct = (List<Product>) session.getAttribute("listProduct");
	  
	  
//	  HttpSession session1 = req.getSession(false);
//	  String address = session1.getAttribute("address").toString();
//	  String road = session1.getAttribute("road").toString();
//	  String ward = session1.getAttribute("ward").toString();
//	  String district = session1.getAttribute("district").toString();
//	  String city = session1.getAttribute("city").toString();
//	  String country = session1.getAttribute("country").toString();
	  
	  String address = req.getParameter("address");
	  String road = req.getParameter("road");
	  String ward = req.getParameter("ward");
	  String district = req.getParameter("district");
	  String city = req.getParameter("city");
	  String country = req.getParameter("country");
	  
	  String final_address = address + " " + road + " " + ward + " " + district + " " + city + " " + country;  
	  HttpSession sessiona = req.getSession();
	  sessiona.setAttribute("final_address", final_address);
	  String payment_type = req.getParameter("payment_type");
	  
	  req.setAttribute("listProduct", listProduct);

	  String id_product = "";
	  for(int i=0; i < listProduct.size(); i++ )
	  {
		 id_product +=Integer.toString(listProduct.get(i).getId())+"|";
	  }
	  
	  String quatity = "";
	  for(int i=0; i < listProduct.size(); i++ )
	  {
		  quatity +=Integer.toString(listProduct.get(i).getQuatity())+"|";
	  }
	  
	  String ship_fee = session.getAttribute("ship").toString(); 
	  String total = session.getAttribute("total").toString();
	 
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	   LocalDateTime now = LocalDateTime.now();  
	   String date = dtf.format(now);  
	  
	   
	   //Save bill vao database
	   Bill bill = new Bill(id_user, address, road, ward, district, city, country, payment_type, quatity, id_product, ship_fee, total, date);
	   
	   BillDAO billDao = new BillDAO();
	   billDao.saveBill(bill);
	   
	   try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//use Paypal
	   if(payment_type.equals("paypal")) 
	   {
		   //Xoa cookie
		   Cookie a = new Cookie("Shop_Cart", "");
	       a.setMaxAge(0); // set age to 3 years
	       a.setPath("/");                     // allow entire app to access it
	       resp.addCookie(a);
	       
	       for(int i=0; i < listProduct.size(); i++ )
	 	  {
	    	   Cookie b = new Cookie("quatity_product"+Integer.toString(listProduct.get(i).getId()), "");
		         b.setMaxAge(0); // set age to 3 years
		         b.setPath("/");                     // allow entire app to access it
		         resp.addCookie(b);
	 	  }
		   
	   
	       
	       ProductDAO productDAO = new ProductDAO();
	       
	     
	       

	       //Cap nhat so luong
	       for(int i=0; i < listProduct.size(); i++ )
	  	  {
	    	   productDAO.updateQuatity(listProduct.get(i).getId(),  productDAO.listAllProduct().get(i).getQuatity() - listProduct.get(i).getQuatity());
	  	  }
	       
	       
		   req.getRequestDispatcher("checkout.jsp").forward(req, resp);
	   }
	  
	   //use COD
	   else {
	   
	   //Xoa cookie
	   Cookie a = new Cookie("Shop_Cart", "");
       a.setMaxAge(0); // set age to 3 years
       a.setPath("/");                     // allow entire app to access it
       resp.addCookie(a);
       
       for(int i=0; i < listProduct.size(); i++ )
 	  {
    	   Cookie b = new Cookie("quatity_product"+Integer.toString(listProduct.get(i).getId()), "");
	         b.setMaxAge(0); // set age to 3 years
	         b.setPath("/");                     // allow entire app to access it
	         resp.addCookie(b);
 	  }
	   
   
       
       ProductDAO productDAO = new ProductDAO();
       
     
       

       //Cap nhat so luong
       for(int i=0; i < listProduct.size(); i++ )
  	  {
    	   productDAO.updateQuatity(listProduct.get(i).getId(),  productDAO.listAllProduct().get(i).getQuatity() - listProduct.get(i).getQuatity());
  	  }
       
      
       
       //Send mail
       HttpSession sessionz = req.getSession(false);
       Customer user =(Customer) sessionz.getAttribute("user_logined");
       String email = user.getEmail();
       MailSending mail = new MailSending();  
       mail.send("noriva.shoeshops@gmail.com" ,"norivashoe128", email, "Thank you for your purchase!", "Your products will be shipped to "+ final_address +", Please prepare an amount of "+ Integer.toString(Integer.parseInt(total) + Integer.parseInt(ship_fee)) +  " dollars. Best regards");
       
       
	  req.getRequestDispatcher("./Pages_Customer/Thanks/index.html").forward(req, resp);
	  
	   }
}
}
