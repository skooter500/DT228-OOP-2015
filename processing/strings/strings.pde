void setup()
{
  String s = "I wandered lonely as a cloud\n";
  
  // Append strings
  s += "That floats on high ore vales and hills";
  
  // get the string character by character
  println(s);
  for (int i = s.length() - 1 ; i >= 0 ; i --)
  {
    println(s.charAt(i));
  }
  
  // These all return a new string!
  // Start at character 2 and read to the end of the string
  String ss = s.substring(2);
  println(ss);
  
  // Start at character 2 and read to character 10 (non-inclusive), so it stops at character 9
  ss = s.substring(2, 10);
  println(ss);
  
  // Find the index of lonely in the string s
  int i = s.indexOf("lonely");
  if (i != -1)
  {
    ss = s.substring(i, i + 6);
    println(ss);
  }
  
  // Extract the string skooter500
  String test = "Username: skooter500";
  String name = test.substring(test.indexOf(":") + 2);  
  println(name);
  
  // Extract the string bryan
  test = "Username: bryan, password: ppp";
  name = test.substring(
      test.indexOf(":") + 2
      , test.indexOf(",")
      );
  println(name);
  
  // Extract the string tunepal.org
  test = "<title>tunepal.org</title>";
  name = test.substring(
    test.indexOf(">")
    ,test.indexOf("</")
    );
    
  name = test.substring(
    test.indexOf(">")
    ,test.indexOf("<", test.indexOf("<") + 1)
    );
  
  int angleIndex = test.indexOf(">");
  name = test.substring(
    angleIndex
    ,test.indexOf("<", angleIndex) // Start searching from angleIndex
    );
    
  // Remove the ""  from the start and end of the string
  test = "\"Dublin\"";  
  String dub = test.substring(1, test.length() - 1);
  println(dub);
  
  // You can also search from the end of the string backwards
  // i will be the index from the start though!
  i = test.lastIndexOf("\"");
  println(i);
  // SO i will be 7
  
  // Replace the , with the empty string
  String fs = "100,000";
  float f = parseFloat(fs.replace(",", ""));
  println(f);
  
  // Finally, look up loadTable in Processing. Its cool and wills ave you a lot of code
  // https://www.processing.org/tutorials/data/
}