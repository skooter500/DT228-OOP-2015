package ie.dit;

public class Stopwatch 
{
	private long previous;
	private long current;
	
	public Stopwatch()
	{
	}
	
	public void start()
	{
		
		previous = System.nanoTime();
	}
	
	public void stop()
	{
		current = System.nanoTime();
	}
	
	public float ellapsed()
	{
		float seconds = (current - previous) / 1000000000f;
		return seconds;
	}
}
