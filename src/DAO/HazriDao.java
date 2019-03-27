package DAO;

import Config.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.Random.*;
import Bean.*;
import Servlets.Contact;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.omg.PortableInterceptor.USER_EXCEPTION;
import javax.mail.internet.*;
import javax.mail.*;
import javax.activation.*;

public class HazriDao {
	static Connection con=DBConnection.getConnection();
	static int value;
	public String AuthAcc(HazriBean hb1)
	{
		String g=null;
		try {
			Statement stat= con.createStatement();
			ResultSet rs=stat.executeQuery("select count(*) from account where Username ='"+hb1.getUsername()+"' and password ='"+hb1.getPassword()+"';");
			if(rs.next()) {
				g="already";
			//	System.out.println("hazri>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>2");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(g);
		return g;
	}
	public String ChangePass(HazriBean hb3) {
		String npass=hb3.getNpass();
		int i=0;
		try
		{
			System.out.println("???????????????????????????????????"+npass);
			PreparedStatement ps=con.prepareStatement("update Account set Password=? where Username=?");
			ps.setString(1, npass);
			ps.setString(2, "hazo");
			i=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		if(i>0)
			return "success";
		else
		{
			System.out.println("error found in changePASS method of HazriDao class");
			return "fail";
			
		}
	}
	/*
	public String ConfOTP(HazriBean hb2)
	{
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+value);
	    int uOTP=hb2.getOTP();
	    System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+uOTP);
		if(uOTP==value)
		{
			return "Match";
		}
		else
			return "Unmatch";
	}*/
	
	public int generateOTP()
	{
		Random random = new Random();
		HazriDao.value = random.nextInt(10000);
		String conf=SendOTP(value);
		return value;
	}
	
	
	public String SendOTP(int OTP) {
	
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		  // Get a Properties object
		     Properties props = System.getProperties();
		     props.setProperty("mail.smtp.host", "smtp.gmail.com");
		     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		     props.setProperty("mail.smtp.socketFactory.fallback", "false");
		     props.setProperty("mail.smtp.port", "465");
		     props.setProperty("mail.smtp.socketFactory.port", "465");
		     props.put("mail.smtp.auth", "true");
		     props.put("mail.debug", "true");
		     props.put("mail.store.protocol", "pop3");
		     props.put("mail.transport.protocol", "smtp");
		     final String username ="hazohazri@gmail.com";//
		     final String password ="Hazri839";	
		     try{
		     Session session = Session.getDefaultInstance(props, 
		                          new Authenticator(){
		                             protected PasswordAuthentication getPasswordAuthentication() {
		                                return new PasswordAuthentication(username, password);
		                             }});

		   // -- Create a new message --
		     Message msg = new MimeMessage(session);

		  // -- Set the FROM and TO fields --
		     msg.setFrom(new InternetAddress(username,"HAZO HAZRI"));
		     msg.setRecipients(Message.RecipientType.BCC, 
		                      InternetAddress.parse("shivamhazri839@gmail.com",false));
		     msg.setSubject("OTP TO CHANGE PASSWORD BY ISHD");
		     msg.setText("OTP is ---------------------->"+OTP);
		     msg.setSentDate(new Date());
		    
		     Transport.send(msg);
		     System.out.println("Message sent.");
		  }catch (Exception e){ System.out.println(e);}
		
		return "h";
	}
	


}
