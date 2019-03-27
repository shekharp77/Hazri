package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.util.*;
import java.util.Date;
import java.util.Properties;
import Config.DBConnection;
import org.omg.PortableInterceptor.USER_EXCEPTION;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

 
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name=request.getParameter("name");
		 String email=request.getParameter("email");
		 String subject=request.getParameter("sub");
		 String mess=request.getParameter("mess");
		 long number=Long.parseLong(request.getParameter("num"));
		/* Connection con=DBConnection.getConnection();
		 try {
			  	PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?,?) ");
			  	ps.setString(1, name);
			  	ps.setString(2, email);
			  	Blob blob = con.createBlob();
			  	blob.setBytes(1, subject.getBytes());
			  	ps.setBlob(3, blob);
			  	Blob blob1 = con.createBlob();
			  	blob1.setBytes(1, mess.getBytes());
			  	ps.setBlob(4, blob1);
			  	ps.setInt(5, number);
			  	ps.executeUpdate();
		 }
		 catch(Exception a)
		 {
			a.printStackTrace();
		 }
		 
		 */
		 try{    
	           FileWriter fw=new FileWriter("FirstTest.txt");
	           BufferedWriter buffer = new BufferedWriter(fw);  
	           buffer.write("NAME ="+name);
	           buffer.newLine();
	           buffer.write("email="+email);
	           buffer.newLine();
	           buffer.write("message ="+mess);
	           System.out.println(mess);
	           buffer.newLine();
	           buffer.write("number="+number);
	           buffer.newLine();
	           buffer.close();
	           fw.close();    
	          }catch(Exception e){System.out.println(e);}    
	          System.out.println("Success...");
	          
	          String to="shivamhazri839@gmail.com";//change accordingly
			  final String user="hazohazri@gmail.com";//change accordingly
			  final String password="Hazri839";//change accordingly
			  final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
			  //1) get the session object   
			  Properties properties = System.getProperties();
			  properties.setProperty("mail.smtp.host", "smtp.gmail.com");//change accordingly
			  properties.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
			  properties.setProperty("mail.smtp.socketFactory.fallback", "false");
			  properties.setProperty("mail.smtp.port", "465");
			     properties.setProperty("mail.smtp.socketFactory.port", "465");
			     properties.put("mail.smtp.auth", "true");
			     properties.put("mail.debug", "true");
			     properties.put("mail.store.protocol", "pop3");
			     properties.put("mail.transport.protocol", "smtp");

			  properties.put("mail.smtp.auth", "true");
			  try {
			  Session session = Session.getDefaultInstance(properties,
			   new javax.mail.Authenticator() {
			   protected PasswordAuthentication getPasswordAuthentication() {
			   return new PasswordAuthentication(user,password);
			   }
			  });
			   
			  //2) compose message   
			  
			    MimeMessage message = new MimeMessage(session);
			    message.setFrom(new InternetAddress(user,"HAZO HAZRI"));
			    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
			    message.setSubject(mess);
			    
			    //3) create MimeBodyPart object and set your message content    
			    BodyPart messageBodyPart1 = new MimeBodyPart();
			    messageBodyPart1.setText(subject);
			    
			    //4) create new MimeBodyPart object and set DataHandler object to this object    
			    MimeBodyPart messageBodyPart2 = new MimeBodyPart();

			    String filename = "FirstTest.txt";//change accordingly
			    DataSource source = new FileDataSource(filename);
			    messageBodyPart2.setDataHandler(new DataHandler(source));
			    messageBodyPart2.setFileName(filename);
			   
			   
			    //5) create Multipart object and add MimeBodyPart objects to this object    
			    Multipart multipart = new MimeMultipart();
			    multipart.addBodyPart(messageBodyPart1);
			    multipart.addBodyPart(messageBodyPart2);

			    //6) set the multiplart object to the message object
			    message.setContent(multipart );
			   
			    //7) send message
			    Transport.send(message);
			    response.sendRedirect("NewFile.jsp");
			   System.out.println("message sent....");
			   }catch (Exception ex) {ex.printStackTrace();}

	}

}
