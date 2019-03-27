package DAO;
import java.sql.*;
import Config.DBConnection;
import Bean.HazriBean;
import java.io.*;
import java.nio.file.DirectoryNotEmptyException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;

public class UploadDao {
	public int uploadvideo(HazriBean hb3)
	{
		String link=hb3.getLink();
		String vtype=hb3.getType();
		int i=0;
		Connection con=DBConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into uploadvideo (videolink,videotype) values(?,?)");
			ps.setString(1,link);
			ps.setString(2,vtype);
			
			i=ps.executeUpdate();
			ps.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return i;			
	}
	
	public int DeletVideo(HazriBean hb2) 
	{
		 
		int j=0;
		Connection con=DBConnection.getConnection();
		try
		{
			PreparedStatement ps=con.prepareStatement("delete from uploadvideo where videolink='"+hb2.getLink()+"' and videotype='"+hb2.getType()+"';");
			j=ps.executeUpdate();
			ps.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return j;
	}
	public int UploadPhoto(HazriBean hb1) throws FileNotFoundException, SQLException
	{
		String loc=hb1.getPloc();
		String ptype=hb1.getPtype();
		int k=0;
		Connection con=DBConnection.getConnection();
		 
		
			
			try {
				File imgfile = new File(loc);
				System.out.println("================================="+loc);
				FileInputStream fin = new FileInputStream(imgfile);
				
				PreparedStatement ps=con.prepareStatement("insert into uploadimage(Image,ImageType) values(?,?)");
				ps.setBinaryStream(1,(InputStream)fin,(int)imgfile.length());
				ps.setString(2, ptype);
				
				k=ps.executeUpdate();
				ps.close();
				System.out.println("======================================1");
				ResultSet rs = con.createStatement().executeQuery("select * from uploadimage;");
				rs.last();
				saveImage(rs.getBlob(2), rs.getInt(1));
				System.out.println("======================================"+rs.getInt(1));
				System.out.println("======================================2");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return k;
	}
	
	 public static void saveImage(Blob blob, int id){
	        FileOutputStream fos = null;
	        
	        try {
	        	System.out.println("======================================3");
	            InputStream input;
	            fos = new FileOutputStream("C:\\Users\\user\\eclipse-workspace\\hazri2\\WebContent\\images\\"+id+".jpg");
	            {
	               
	                input = blob.getBinaryStream();
	                int i=0;
	                i++;
	                int c = 0;
	                while ((c = input.read()) > -1) {
	                    fos.write(c);
	                }
	            }
	            input.close();
	            fos.close();
	            System.out.println("Success============================     4 ");
	        
	        } catch (Exception ex) {
	           ex.printStackTrace();
	        }
	  }
	 
	 public int delImage(HazriBean hb5) {
		 int pid= hb5.getpId();
		 String pictype=hb5.getPtype();
		 
		 int k=0;
			Connection con=DBConnection.getConnection();
			try
			{
				PreparedStatement ps=con.prepareStatement("delete from uploadImage where ImageId="+pid+" and ImageType='"+pictype+"';");
				k=ps.executeUpdate();
				ps.close();	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			return k;
	 }
	 
	 public static void delFolderImage(int id) //method to delete image from the folder/directory
	 {
		 try
	        {
	            Files.deleteIfExists(Paths.get("C:\\Users\\user\\eclipse-workspace\\hazri2\\WebContent\\images\\"+id+".jpg"));
	        }
	        catch(NoSuchFileException e)
	        {
	            System.out.println("No such file/directory exists");
	        }
	        catch(DirectoryNotEmptyException e)
	        {
	            System.out.println("Directory is not empty.");
	        }
	        catch(IOException e)
	        {
	            System.out.println("Invalid permissions.");
	        }
	         
	        System.out.println("Deletion successful.");
		 
	 }
}
