void setup()
{
  String s = "I wandered lonely as a cloud\n";
  s += "That floats on high ore vales and hills";
  
  for(int i = 0 ; i < s.length() ; i ++)
  {
    println(s.charAt(i));  
  }
  
  println(s.substring(5));
  println(s.substring(2, 10));
  
  s = s.replace(" ", "#");
  println(s);
  println(s.startsWith("I"));
  println(s.toLowerCase());
  
  
  
  
  
}

void draw()
{
}