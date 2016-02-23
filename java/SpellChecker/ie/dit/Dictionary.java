package ie.dit;

import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Dictionary
{
	private String fileName;
	ArrayList<String> words = new ArrayList<String>();

	public Dictionary(String fileName)
	{
		this.fileName = fileName;
		loadWords();
	} 

	public String findClosest(String word)
	{

	}

	public void loadWords()
	{
		try
		{
			BufferedReader reader = new BufferedReader(new FileReader(fileName));
			String current = "";
			while ((current = reader.readLine()) != null)
			{
				words.add(current);
			}
		}
		catch(FileNotFoundException e)
		{
			System.out.println("File not found!");
			e.printStackTrace();
		}
		catch(IOException e)
		{
			System.out.println("Problem reading the file!");
			e.printStackTrace();	
		}

	} 
}