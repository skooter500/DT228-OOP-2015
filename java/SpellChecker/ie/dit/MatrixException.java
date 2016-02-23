package ie.dit;

// This is a checked Exception class, because it extends Exception
public class MatrixException extends Exception
{
	private String message;

	public String getMessage()
	{
		return message;
	}

	public MatrixException(String message)
	{
		this.message = message;
	}

}