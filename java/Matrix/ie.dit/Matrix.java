package ie.dit;

public class Matrix
{
	private int rows;
	private int cols;
	private float[][] data;
	
	public Matrix(int rows, int cols)
	{
		this.rows = rows;
		this.cols = cols;
		
		data = new float[rows][cols];
		
		identity();
	}
	
	public int getRows()
	{
		return rows;
	}
	
	public int getCols()
	{
		return cols;
	}	
	
	public void setCell(int row, int col, float value)
	{
		data[row][col] = value;
	}
	
	public float getCell(int row, int col)
	{
		return data[row][col];
	}
	
	public void identity()
	{
		
	}
	
	public String toString() // ALways looks like this!!
	{
		StringBuffer sb = new StringBuffer();
		for (int row = 0 ; row < rows ; row ++)
		{
			for (int col = 0 ; col < cols ; col ++)
			{
				//sb.append(getCell(row, col));
				sb.append(data[row][col]);
				sb.append("\t");
			}
			sb.append("\n");
		}
			
	}
}