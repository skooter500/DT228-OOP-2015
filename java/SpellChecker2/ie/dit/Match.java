package ie.dit;

public class Match implements Comparable
{
	String word;
	float ed;
	public Match(String word, float ed)
	{
		this.word = word;
		this.ed = ed;
	}

	public int compareTo(Object m)
	{
		return (int) (ed - ((Match) m).ed);
	}
}