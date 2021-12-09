/**
 * ExecutePaymentServlet class - execute payment via PayPal.
 * @author Nam Ha Minh
 * @copyright https://codeJava.net
 */
package com.nhom1.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.nhom1.data.MailSending;
import com.nhom1.model.Customer;
import com.paypal.api.payments.*;
import com.paypal.base.rest.PayPalRESTException;

@WebServlet("/execute_payment")
public class ExecutePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ExecutePaymentServlet() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String paymentId = request.getParameter("paymentId");
		String payerId = request.getParameter("PayerID");

		try {
			PaymentServices paymentServices = new PaymentServices();
			Payment payment = paymentServices.executePayment(paymentId, payerId);
			
			PayerInfo payerInfo = payment.getPayer().getPayerInfo();
			Transaction transaction = payment.getTransactions().get(0);
			
			request.setAttribute("payer", payerInfo);
			request.setAttribute("transaction", transaction);			
          
			
			 HttpSession sessionz = request.getSession(false);
		       String final_address = sessionz.getAttribute("final_address").toString();
		       String ship_fee = sessionz.getAttribute("ship").toString(); 
		 	   String total = sessionz.getAttribute("total").toString();
			 
		       Customer user =(Customer) sessionz.getAttribute("user_logined");
		       String email = user.getEmail();
		       MailSending mail = new MailSending();  
		       mail.send("noriva.shoeshops@gmail.com" ,"norivashoe128",email, "Thank you for your purchase!", "Your products will be shipped to "+ final_address +", Please prepare an amount of "+ Integer.toString(Integer.parseInt(total) + Integer.parseInt(ship_fee)) +  " dollars. Best regards");			
			
			
			request.getRequestDispatcher("./Pages_Customer/Thanks/index.html").forward(request, response);
			
		} catch (PayPalRESTException ex) {
			request.setAttribute("errorMessage", ex.getMessage());
			ex.printStackTrace();
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
