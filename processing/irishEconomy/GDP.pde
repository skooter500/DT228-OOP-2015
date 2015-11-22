// Question 1

class GDP
{
  String country;
  String currency;
  int year;
  float amount;
  GDP(String line)
  {
    String[] fields = line.split(",");
    country = fields[0];
    currency = fields[1];
    year = Integer.parseInt(fields[3]);
    amount = Float.parseFloat(fields[4]);
  }
}