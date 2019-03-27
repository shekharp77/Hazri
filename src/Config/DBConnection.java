package Config;

import java.sql.*;

public class DBConnection {
	public static Connection con;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hazri","root","");
			System.out.println("Connection created");		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getConnection()
	{
		return con;
	}
}
