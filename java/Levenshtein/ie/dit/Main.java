package ie.dit;

public class Main
{
	public static void main(String[] args)
	{
		String sa = "DEFEFDD";
		String sb = "EFDFDBED";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));

		sa = "AbCDE";
		sb = "bBCD";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));

	}
}