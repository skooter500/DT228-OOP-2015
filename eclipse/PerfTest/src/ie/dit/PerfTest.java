package ie.dit;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Random;

public class PerfTest {

	public static void main(String[] args) 
	{
		int size = 10000000;
		
		Stopwatch sw = new Stopwatch();
		
		sw.start();
		int[] ia = new int[size];
		for (int i = 0 ; i < ia.length ; i ++)
		{
			ia[i] = i;
		}
		sw.stop();
		System.out.println("Populating an array: " + sw.ellapsed());	
		
		sw.start();
		ArrayList<Integer> ali = new ArrayList<Integer>();
		for (int i = 0 ; i < size ; i ++)
		{
			ali.add(i);
		}
		sw.stop();
		System.out.println("Populating an arraylist: " + sw.ellapsed());	
		
		sw.start();
		ali.add(0, 0);
		sw.stop();
		System.out.println("Inserting at the start of the arraylist: " + sw.ellapsed());	
		
		sw.start();
		ali.add(size / 2, 0);
		sw.stop();
		System.out.println("Inserting in the middle the arraylist: " + sw.ellapsed());	

		
		sw.start();
		ali.add(0);
		sw.stop();
		System.out.println("Inserting at the end of the arraylist: " + sw.ellapsed());	
		
		Random r = new Random(42);
		boolean found = false;
		int toFind = 0;
		sw.start();
		for (int i = 0 ; i < ia.length ; i ++)
		{
			if (ia[i] == toFind)
			{
				found = true;
			}
		}
		sw.stop();
		System.out.println("Searching Using a for loop: " + sw.ellapsed());	
		
		sw.start();
		for (int i:ia)
		{
			if (i == toFind)
			{
				found = true;
			}
		}
		sw.stop();
		System.out.println("Searching Using a foreach loop: " + sw.ellapsed());	
		
		r = new Random(42);
		for (int i = 0 ; i < ia.length ; i ++)
		{
			ia[i] = r.nextInt();
		}
		
		r = new Random(42);
		ali.clear();
		for(int i = 0 ; i < size ; i ++)
		{
			ali.add(r.nextInt());
		}

		sw.start();
		java.util.Arrays.sort(ia);
		sw.stop();
		System.out.println("Sorting an array: " + sw.ellapsed());	
		
		
		sw.start();
		Collections.sort(ali);
		sw.stop();
		System.out.println("Sorting an arraylist: " + sw.ellapsed());	
		
		HashMap<Integer, Integer> hm = new HashMap<Integer, Integer>();
		
		sw.start();
		for (int i = 0 ; i < size ; i ++)
		{
			hm.put(i, i);
		}
		sw.stop();
		System.out.println("Populating a hashmap: " + sw.ellapsed());	
		
		sw.start();
		if (hm.containsKey(-1))
		{
			
		}
		sw.stop();
		System.out.println("Searching a hashmap by key: " + sw.ellapsed());	
		
		sw.start();
		if (hm.containsValue(-1))
		{
			
		}
		sw.stop();
		System.out.println("Searching a hashmap by key: " + sw.ellapsed());	
		
		
	}

}
