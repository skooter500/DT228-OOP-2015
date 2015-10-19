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
  
  ArrayList<Float> arrList = new ArrayList<Float>();
  arrList.add(99.0f);
  arrList.add(10.0f);
  arrList.add(10.0f);
  
  for (int i = 0 ; i < arrList.size() ; i ++)
  {
    println(arrList.get(i));
  }
  
  // The same as the above!
  for(float f:arrList)
  {
    println(f);
  }
  
  String fsVal = "100.99";
  float fVal = Float.parseFloat(fsVal); // Java
  fVal = parseFloat(fsVal); // Processing

  String[] lines = loadStrings("hellofiles.txt");  
  for (String s:lines)
  {
    String[] words = s.split(" ");
    println(s);
    for (String w:words)
    {
      println(w);
    }    
  }
}

void draw()
{
}
