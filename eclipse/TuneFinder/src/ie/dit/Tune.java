package ie.dit;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Tune {
	private String title;	
	private int x;
	private int source;
	private String keySig;
	private String searchKey;
	
	public Tune(ResultSet r) throws SQLException
	{
		title = r.getString("title");
		x = r.getInt("x");
		source = r.getInt("source");
		keySig = r.getString("key_sig");
		searchKey = r.getString("search_key");
	}
	
	public String toString()
	{
		return title + ", " + x + ", " + source + ", " + keySig + ", " + searchKey; 
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getSource() {
		return source;
	}
	public void setSource(int source) {
		this.source = source;
	}
	public String getKeySig() {
		return keySig;
	}
	public void setKeySig(String keySig) {
		this.keySig = keySig;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	
	
	
}
