// This is how the processing map method works
float mapRange(float value, float start1, float stop1, float start2, float stop2)
{
  float inRange = stop1 - start1;
  float howFar = value - start1;
  float percentageInRange = howFar / inRange;
  
  float outRange = stop2 - start2;
  return start2 + (percentageInRange * outRange) ;
}

void setup()
{
  println(map(6, 0, 20, 0, 100));
  
  float[] arr = new float[3];
  arr[0] = 99;
  arr[1] = 10;
  arr[2] = 10;
  
  // An arraylist that does the same as the array above
  ArrayList<Float> arrList = new ArrayList<Float>();
  arrList.add(99.0f); // This is how you add data to an arraylist
  arrList.add(10.0f);
  arrList.add(10.0f);
  
  for (int i = 0 ; i < arrList.size() ; i ++)
  {
    println(arrList.get(i)); // This is how you get data out of an arraylist
  }
  
  // The same as the above!
  for(float f:arrList) // Using a foreach loop
  {
    println(f);
  }
  
  String fsVal = "100.99";
  float fVal = Float.parseFloat(fsVal); // Java
  fVal = parseFloat(fsVal); // Processing
  
  String[] lines = loadStrings("sum.csv"); // Load each line into a String array
  ArrayList<Float> sumData = new ArrayList<Float>(); // Create an arraylist
  for(String s:lines)
  {
    // Add each element from the string array to the arrraylist
    float f = Float.parseFloat(s);
    sumData.add(f);
  }  
  
  // Find the year with the lowest rainfall
  float lowest = sumData.get(0);
  int lowestIndex = 0;  
  for (int i = 1 ; i < sumData.size() ; i ++)
  {
    if (sumData.get(i) < lowest)
    {
      lowest = sumData.get(i);
      lowestIndex = i;
    }
  }
  
  // Look! We can use the map function here:
  println("The driest year is: " + (int) map(lowestIndex, 0, sumData.size() - 1, 1850, 2010) + " with rainfall of: " + sumData.get(lowestIndex));
  

  /*String[] lines = loadStrings("hellofiles.txt");  
  for (String s:lines)
  {
    String[] words = s.split(" ");
    println(s);
    for (String w:words)
    {
      println(w);
    }    
  }
  */
}
