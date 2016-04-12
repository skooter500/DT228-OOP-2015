package ie.dit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TuneFinder 
{
	public void loadTunes()
	{
		Connection conn;
		PreparedStatement s;
		ResultSet r;
		try
		{
			Class.forName("org.sqlite.JDBC");			
			conn = DriverManager.getConnection("jdbc:sqlite:tunes.sqlite");
			s = conn.prepareStatement("select title from tuneindex");
			r = s.executeQuery();
			while(r.next())
			{
				System.out.println(r.getString("title"));
			}
			conn.close();
		}
		catch (ClassNotFoundException e)
		{
			System.out.println("Could not load JDBC driver");
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			System.out.println("Could not make database connection");
			e.printStackTrace();
		}
	}
}
