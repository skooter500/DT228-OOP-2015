package ie.dit;

import java.util.*;

public class Main
{
	ArrayList<Animal> animals = new ArrayList<Animal>();
	
	Main()
	{
		System.out.println("Hello world!");
		Animal dog = new Dog("Misty");		
		dog.speak();
		
		Cat cat = new Cat("Top cat");
		while(cat.getNumLives() > 0)
		{
			cat.kill();
		}
		cat.kill();
	}
	
	public static void main(String[] args)
	{
		Main main = new Main();
	}
}