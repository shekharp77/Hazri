package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.*;
import Bean.*;

 
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ftype=request.getParameter("ftype"); // to categorize the form type
		HazriBean hb=new HazriBean();
		HazriDao hd=new HazriDao();
		HttpSession session = request.getSession();
		switch(ftype)
		{
			case "Signin":String username= request.getParameter("uname");
						  String pass=request.getParameter("Password");
						  hb.setUsername(username);
							 hb.setPassword(pass);
							 
							 
							 String val=hd.AuthAcc(hb);
							 System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+val);
							 if(val.equals("already"))
							 {
								session.setAttribute("Authentication", "successfull");
								response.sendRedirect("uploadphoto.jsp");
								 break;
							 }
							 else {
								 response.getWriter().println("Password Incorrect");//failed logging in
								 break;
							 }
			case "OTP":int OTP=Integer.parseInt(request.getParameter("OTP"));
			 				  /* hb.setOTP(OTP);
			 				   String conf=hd.ConfOTP(hb);
			 				   */
			 				   
			 				   if(OTP==Integer.parseInt(session.getAttribute("otp").toString()))
			 				   {
			 					   response.sendRedirect("changepassword.html");//OTP matched
			 					   break;
			 				   }
			 				   else {
			 					  response.getWriter().println("OTP not matching");//OTP unmatched
			 					   break;
			 				   }
			case "ChangePass":String npass=request.getParameter("newPass");
							  String cpass=request.getParameter("confPass");
							  if(npass.equals(cpass))
							  {
								  hb.setNpass(npass);
								  String value=hd.ChangePass(hb);
								  if(value.equals("success"))
								  {
									  response.sendRedirect("login.html");//take it to login page  
								  }
								  else
								  {
									  //error changing password
								  }
									  
							  }
							  else
							  {
								  response.getWriter().println("Password not matching");//alert password did not match confirm password.
							  }
							  break;
			case "SendOtp": HazriDao hz =new HazriDao();
							int otpval=hz.generateOTP();
							response.sendRedirect("getOTP.html");
 
							session.setAttribute("otp",otpval);
							break;
			default : //invalid option registered client side error.				  
				
							
		
		}
		
	}
	
}
