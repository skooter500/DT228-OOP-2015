void setup()
{
  size(500, 500);
  centX = width / 2;
  centY = height / 2;
  
  gap = width / bits.length;
}

// Advanced bit
String decimalToBinary(int decimal)
{ 
  String binary = "";
  do
  {
    binary = (decimal % 2) + binary;
    decimal /=2; 
  }
  while(decimal > 0);
  
  return binary;
}

int centX, centY;
float gap;
float left;
boolean[] bits = new boolean[16]; // Stores the array of bits
int maxNum = (int) pow(2, (int)bits.length);

void draw()
{
  background(127);
  for (int i = 0 ; i < bits.length ; i ++)
  {
    float x = i * gap;
    float y = centY;
    if (bits[i])
    {
      fill(0);
    }
    else
    {
      fill(255);
    }
    rect(x,y, gap, gap);
  }
  
  int number = binaryToDecimal(bits);
  fill(255);
  text(number, centX, 100);
}




int binaryToDecimal(boolean[] bits)
{
  int ret = 0;
  int bit = bits.length - 1;
  for (int i = 0 ; i < bits.length ; i ++)
  {
    ret += bits[i] ? pow(2, bit) : 0;
    -- bit;
  }
  
  // 2's complement
  if (bits[0] == true)
  {
    ret -= maxNum;
  }
  
  return ret;
   
}

void mousePressed()
{
  if ((mouseY > centY) && (mouseY < centY + gap))
  {    
    int i = mouseX / (int) gap;    
    bits[i] = ! bits[i];
  }
}
