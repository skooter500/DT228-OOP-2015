package ie.dit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TuneFinder 
{
	public TuneFinder()
	{
		
	}
	
	ArrayList<Tune> tunes = new ArrayList<Tune>();
	
	public String findClosest(String notes)
	{
		// Iterate through the tunes arraylist
		// Calculate the EditDistance between 
		// the notes parameter and the searchKey field of 
		// Each Tune
		// return title of the one thats the closest
		
		float min = Float.MAX_VALUE;
		int minIndex = 0;
		for (int i = 0 ; i < tunes.size() ; i ++)
		{
			Tune tune = tunes.get(i);
			float dist = EditDistance.substringEditDistance(notes, tune.getSearchKey());
			if (dist < min)
			{
				min = dist;
				minIndex = i;
			}
		}
		return tunes.get(minIndex).getTitle();
	}
	
	public void loadTunes(String title)
	{
		Connection conn;
		PreparedStatement s;
		ResultSet r;
		tunes.clear();
		try
		{
			Class.forName("org.sqlite.JDBC");			
			conn = DriverManager.getConnection("jdbc:sqlite:tunes.sqlite");
			s = conn.prepareStatement("select * from tuneindex where upper(title) like ?");
			s.setString(1, "%" + title.toUpperCase() + "%");
			r = s.executeQuery();
			while(r.next())
			{
				Tune tune = new Tune(r);
				tunes.add(tune);
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
	
	public void loadTunes(int x)
	{
		Connection conn;
		PreparedStatement s;
		ResultSet r;
		tunes.clear();
		try
		{
			Class.forName("org.sqlite.JDBC");			
			conn = DriverManager.getConnection("jdbc:sqlite:tunes.sqlite");
			s = conn.prepareStatement("select * from tuneindex where source = ?");
			s.setInt(1, x);
			r = s.executeQuery();
			while(r.next())
			{
				Tune tune = new Tune(r);
				tunes.add(tune);
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
	
	public void loadTunes()
	{
		Connection conn;
		PreparedStatement s;
		ResultSet r;
		tunes.clear();
		try
		{
			Class.forName("org.sqlite.JDBC");			
			conn = DriverManager.getConnection("jdbc:sqlite:tunes.sqlite");
			s = conn.prepareStatement("select * from tuneindex");
			r = s.executeQuery();
			while(r.next())
			{
				Tune tune = new Tune(r);
				tunes.add(tune);
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
	
	public void printTunes()
	{
		for(Tune t:tunes)
		{
			System.out.println(t);
		}
	}
}
