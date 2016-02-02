package ie.dit;

public class Cat extends Animal
{
	private int numLives;
	
	public void setNumLives(int numLives)
	{
		this.numLives = numLives;
	}
	
	public int getNumLives()
	{
		return numLives;
	}
	
	public Cat(String name)
	{
		super(name, 4);
		this.numLives = 9;
	}
	
	public void kill()
	{
		if (numLives > 0)
		{
			System.out.println("Ouch!");
			numLives --;
		}
		else
		{
			System.out.println("Dead");
		}
	}
}