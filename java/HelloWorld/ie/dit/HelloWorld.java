package ie.dit;

public class HelloWorld
{
	public static void main(String[] args)
	{
		System.out.println("Hello world!");
		
		Person bryan = new Person("Bryan");
		
		bryan.sayHello();
		
		Person ciara = new Person("Ciara");
		
		ciara.sayHello();
	}
}