package ie.dit;

public class Person
{
	private String name;
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public Person()
	{
	}
	
	public Person(String name)
	{
		setName(name); 
	}
	
	public void sayHello()
	{
		System.out.println("Hello, my name is: " + getName());
	}		
}