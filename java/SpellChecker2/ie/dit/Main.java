package ie.dit;
import java.util.Scanner;


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

		Dictionary dictionary = new Dictionary("words.txt");

		String word = null;
		Scanner in = new Scanner(System.in);

		do
		{
			System.out.println("Enter a word or quit: ");
			word = in.nextLine();
			if ("quit".equals(word))
			{
				break;
			}
			String[] closest = dictionary.findClosest(word, 10);
			if (closest[0].equals(word))
			{
				System.out.println("Correct match");
			}
			else
			{
				System.out.println("Did you mean:");
				for (String w:closest)
				{
					System.out.println(w);
				}	
			}
		}
		while (true);

	}
}