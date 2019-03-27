package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.*;
import Bean.*;

public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 String form=request.getParameter("ftype");
			 HazriBean hb1=new HazriBean();
			 UploadDao ud=new UploadDao();
			 AboutDao ad = new AboutDao();
			 switch(form)
			 {
			 	case "video": String link=request.getParameter("elink");
			 				  String type=request.getParameter("type");
			 				  hb1.setLink(link);
			 				  hb1.setType(type);
			 				  int i=ud.uploadvideo(hb1);
			 				  if(i>0)
			 				  {
			 					 response.sendRedirect("uploadphoto.jsp");// when video is Stored in database
			 				  }
			 				  else
			 				  {
			 					 response.sendRedirect("error.html");//video isn't stored isn't database
			 				  }
			 				  break;
			 	case "delvid": String Dlink=request.getParameter("elink");
			 				   String Dtype=request.getParameter("type");
			 				   hb1.setLink(Dlink);
			 				   hb1.setType(Dtype);
			 				   int j=ud.DeletVideo(hb1);
			 				   if(j>0)
			 				   {
			 					  response.sendRedirect("uploadphoto.jsp");//video link is deleted from the database
			 				   }
			 				   else
			 				   {
			 					  response.sendRedirect("error.html");//video link isn't deleted please check your connection/program
			 				   }
			 				   break;
			 	case "photo":String loc=request.getParameter("loc");//location of the image
			 				 String ptype=request.getParameter("ptype");//category of the photo
			 				System.out.println(loc+"====================================");
			 				 hb1.setPloc(loc);
			 				
			 				 hb1.setPtype(ptype);
			 				 int k=ud.UploadPhoto(hb1);
			 				 if(k>0)
			 				 {
			 					 response.sendRedirect("uploadphoto.jsp"); //photo is uploaded into the database
			 				 }
			 				 else
			 				 {
			 					 response.sendRedirect("error.html");//error somewhere photo didn't get uploaded
			 				 }
			 				 break;
			 	case "delphoto":int id=Integer.parseInt(request.getParameter("picID")); //id of the photo to be deleted
								String pictype=request.getParameter("ptype"); //delete photo type
								hb1.setpId(id);
								hb1.setPtype(pictype);
								int l=ud.delImage(hb1);
								if(l>0)
								{
									UploadDao.delFolderImage(id);
									response.sendRedirect("uploadphoto.jsp");//photo is deleted from the database
								}
								else
								{
									response.sendRedirect("error.html");//error somewhere photo didn't got deleted
								}
								break;
			 	case "About"  :	String floc=request.getParameter("loc");//location of the image
				 				String fdesc=request.getParameter("desc");//description of the friend
				 				String flink=request.getParameter("flink");//link of the friend profile
				 				String flinkdesc=request.getParameter("Ldesc");//link description
				 				String fname=request.getParameter("name");//friend name
				 				
				 				hb1.setPloc(floc);
				 				hb1.setMessage(fdesc);
				 				hb1.setLink(flink);
				 				hb1.setLdesc(flinkdesc);
				 				hb1.setUsername(fname);
				 				int m=ad.addFriend(hb1);
				 				if(m>0)
				 				{
				 					response.sendRedirect("uploadphoto.jsp");
				 				}
				 				else
				 				{
				 					response.sendRedirect("error.html");//when friend is not added successfully
				 				}
				 		
				 				System.out.println(floc+"==============1======================");
				 				break;
			 	default:	response.sendRedirect("error.html");// for unwanted case 
			 				   
			 }
		}catch(Exception ex) {
			ex.printStackTrace();
			response.getWriter().println(ex);
		}
			
	}

}
