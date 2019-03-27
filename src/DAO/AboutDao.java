package DAO;
import java.sql.*;
import Config.DBConnection;
import Bean.HazriBean;
import java.io.*;


public class AboutDao {
	public int addFriend(HazriBean hb1) throws FileNotFoundException, SQLException
	{
		String loc=hb1.getPloc();
		String des=hb1.getMessage();
		String link=hb1.getLink();
		String ldesc=hb1.getLdesc();
		String name=hb1.getUsername();
		int k=0;
		Connection con=DBConnection.getConnection();
		
		try {
			File imgfile = new File(loc);
			System.out.println("================================="+loc);
			FileInputStream fin = new FileInputStream(imgfile);
			
			PreparedStatement ps=con.prepareStatement("insert into about(fimage,fdesc,flink,linkdesc,name) values(?,?,?,?,?)");
			ps.setBinaryStream(1,(InputStream)fin,(int)imgfile.length());
			Blob blob = con.createBlob();
			blob.setBytes(1, des.getBytes());
			ps.setBlob(2, blob);
			Blob blob1 = con.createBlob();
			blob.setBytes(1, link.getBytes());
			ps.setBlob(3, blob1);
			ps.setString(4, ldesc);
			ps.setString(5, name);
			
			k=ps.executeUpdate();
			ps.close();
			
			ResultSet rs = con.createStatement().executeQuery("select * from about;");
			rs.last();
			saveFreindImage(rs.getBlob(2), rs.getInt(1));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return k;
	}
	
	 public static void saveFreindImage(Blob blob, int id){
	        FileOutputStream fos = null;
	        
	        try {
	        	System.out.println("======================================3");
	            InputStream input;
	            fos = new FileOutputStream("C:\\Users\\user\\eclipse-workspace\\hazri2\\WebContent\\images2\\"+id+".jpg");
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

}
