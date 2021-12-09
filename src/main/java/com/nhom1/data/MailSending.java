package com.nhom1.data;


import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.hibernate.Transaction;

import com.nhom1.model.Customer;

public class MailSending {

	public static void send(String from, String pass, String to, String subject, String body) {
	    Properties props = System.getProperties();
	    String host = "smtp.gmail.com";
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.host", host);
	    props.put("mail.smtp.user", from);
	    props.put("mail.smtp.password", pass);
	    props.put("mail.smtp.port", "587");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.debug", "true");
	    props.put("mail.protocol", "smtp");
	    props.put("mail.smtp.starttls.enable", "true");
	    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(from, pass);
	        }
	    });

	    MimeMessage message = new MimeMessage(session);

	    try {
	        // Set from address
	        message.setFrom(new InternetAddress(from));
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        // Set subject
	        message.setSubject(subject);
	        // Set Mail body
	        message.setText(body);

	        BodyPart objMessageBodyPart = new MimeBodyPart();

	        objMessageBodyPart.setText(body);

	        Transport transport = session.getTransport("smtp");
	        transport.connect(host, from, pass);
	        transport.sendMessage(message, message.getAllRecipients());
	        transport.close();
	    } catch (AddressException ae) {
	        ae.printStackTrace();
	    } catch (MessagingException me) {
	        me.printStackTrace();
	    }
	}
     
	
}
