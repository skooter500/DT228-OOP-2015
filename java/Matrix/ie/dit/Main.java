package ie.dit;

public class Main
{
	public static void main(String[] args)
	{
		Matrix m = new Matrix(4,4);
		m.identity();
		
		Matrix m1 = new Matrix(4,4);
		m1.identity();
		m.add(m1);
		System.out.println(m);
		System.out.println(m1);
		
		Matrix c = Matrix.add(m, m1);
		System.out.println(c);
		
		Vector a = new Vector(0, 10);
		Matrix rot = Matrix.rotation((float) Math.PI);
		
		Vector b = rot.transform(a);
		System.out.println(a);
		System.out.println(b);
		
	}
}