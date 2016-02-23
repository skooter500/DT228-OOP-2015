package ie.dit;

public class Main
{
	public static void main(String[] args)
	{

		Dictionary dictionary = new Dictionary("words.txt");


		Matrix a = new Matrix(3, 2);
		Matrix b = new Matrix(2, 6);

		try
		{
			Matrix c = Matrix.mult(a, b);
		}
		catch(MatrixException e)
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		String sa = "DEFEFDD";
		String sb = "EFDFDBED";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));

		sa = "AbCDE";
		sb = "bBCD";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));
		
		try
		{
			int[] ia = new int[2];
			System.out.println("Before exception");
			ia[0] = 0;
			ia[1] /= ia[0]; // This will throw a divide by 0 exception (comment it out to execute the subsequent line)

			ia[2] = 2; // This line will throw an ArrayIndexOutOfBoundsException


			System.out.println("After exception");
		}		
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Tried to write outside the array bounds");
			e.printStackTrace();	
		}
		catch(ArithmeticException e)
		{
			System.out.println("Divide by 0");
			e.printStackTrace();
		}
		catch(Exception e)
		{
			// All other checked and unchecked exceptions get caught here
			System.out.println("An exception occured");
			e.printStackTrace();
		}
		finally
		{
			// This code gets executed regardless of whether the exception was thrown
			System.out.println("In finally clause");	
		}
	}
}