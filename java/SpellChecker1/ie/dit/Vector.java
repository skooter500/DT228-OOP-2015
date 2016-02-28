package ie.dit;

public class Vector
{
	public float x, y;
	
	public Vector(float x, float y)
	{
		this.x = x;
		this.y = y;
	}
	
	public String toString()
	{
		return "(" + x + ", " + y + ")";
	}
}
