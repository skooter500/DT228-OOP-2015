class Expense
{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  float total; 
  color c;
  
  Expense(String name, String party, float returned)
  {
    this.name = name;
    this.party = party;  
    this.returned = returned;
  }  
  
  Expense()
  {
    name = "";
    party = "";
    constituency = "";
    returned = 0.0f;
    claimed = 0.0f;
    total = 0.0f;
  }
  
}
