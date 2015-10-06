void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
  
  println(fact(3));
  printCharsOnLine("Hello world");
  println(binaryToDecimal("10011"));
}

int binaryToDecimal(String binary)
{
  // Do the calculation!!!
  int decimal = 0;
  for (int i = 0 ; i < binary.length() ; i ++)
  {
    int bit = (binary.length() - 1) - 1;
    decimal += (binary.charAt(bit) == '1') ? pow(2, i) : 0;
  }
  
  return 0;
}

void printCharsOnLine(String s)
{
  for(int i = s.length() - 1  ; i >= 0 ; i --)
  {
    char c = s.charAt(i);
    println(c);
  }
}

float fact(float x)
{
  float sum = 1;
  for (float i = 2 ; i <= x ; i ++)
  {
    sum *= i;
  }
  return sum;
}

float cx, cy;

void draw()
{
  int numLines = 20;
  float gap = width / numLines;
  for (float x = 0 ; x <= width ; x += gap)
  {
    line(cx, cy, x, height);
  }
 
   float segments = 12;
   float thetaInc = TWO_PI / segments;
   float radius = 200;
   float lastX = cx, lastY = cy - radius;
   for (float point = 1 ; point <= segments * 2 ; point ++)
   {
     float theta = point * thetaInc;
     float r ;
     
     if (point % 2 == 0)
     {
       r = radius;       
     }
     else
     {
       r = radius / 2;
     }
     float x = cx + sin(theta) * r;
     float y = cy - cos(theta) * r;
     line(lastX, lastY, x, y);
     lastX = x;
     lastY = y;

   }    
}
