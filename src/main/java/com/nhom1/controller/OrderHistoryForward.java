package com.nhom1.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom1.data.BillDAO;
import com.nhom1.data.UserDAO;
import com.nhom1.model.Bill;

public class OrderHistoryForward extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	BillDAO billDao = new BillDAO();
	HttpSession session = req.getSession(false);
	String id = session.getAttribute("id_user").toString();
    List<Bill> bills = billDao.listAllBill();
    
    
    List<Bill> customerbill = new ArrayList<>();
	for(int i = 0 ; i < bills.size(); i++)
	{
		if(bills.get(i).getId_customer().equals(id))
		{
			customerbill.add(bills.get(i));
		}
	}
    req.setAttribute("customerbill", customerbill);
    
	req.getRequestDispatcher("./Pages_Customer/MyAccount/OrderHistory/index.jsp").forward(req, resp);
}
}
