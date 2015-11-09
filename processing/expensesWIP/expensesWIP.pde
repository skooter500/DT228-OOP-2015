void setup()
{
  size(500, 500);
}

ArrayList<Expense> expenses = new ArrayList<Expense>();

void loadExpenses()
{
  String[] lines = loadStrings("expense.txt");
 
  for(String line:lines)
  {
    String[] elements = line.split("\t"); 
    Expense expense = new Expense();
    Expense e = new Expense("Bryan", "Independant", 90);
    expense.name = elements[0];
    expense.party = elements[1];
    expense.constituency = elements[2];
    expense.returned = Float.parseFloat(elements[3]);    
    expense.claimed = Float.parseFloat(elements[4]);  
    expense.total = expense.claimed - expense.returned;
    expenses.add(expense);  
  } 
    
}

void draw()
{
}
