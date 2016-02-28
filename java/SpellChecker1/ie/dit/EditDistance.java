package ie.dit;

public class EditDistance
{
	 private static float min3(float a, float b, float c)
	{
		if ((a < b) && (a < c))
		{
			return a;
		}
		if ((b < a) && (b < c))
		{
			return b;
		}
		return c;
	}

	public static float MinimumEditDistance(String needle, String haystack)
	{
		int rows = needle.length() + 1;
		int cols = haystack.length() + 1;
		Matrix m = new Matrix(rows, cols);
		
		for (int row = 0 ; row < rows; row ++)
		{
			m.setElement(row, 0, row);
		}	
		for (int col = 0 ; col < cols; col ++)
		{
			m.setElement(0, col, col);
		}	

		for (int row = 1 ; row < rows ; row ++)
		{
			for (int col = 1 ; col < cols ; col ++)
			{
				if (haystack.charAt(col -1) == needle.charAt(row -1))
				{
					m.setElement(row, col, m.getElement(row -1 , col -1));
				}
				else
				{
					float min = min3(m.getElement(row -1 , col -1), m.getElement(row , col -1), m.getElement(row -1 , col ));
					m.setElement(row, col, min + 1);
				}
			}
		}
		System.out.println(m);
		return (int) m.getElement(rows - 1, cols - 1);
	}
}