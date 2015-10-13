boolean[] bytes = new boolean[16];
int centX, centY;
float boxWidth;

// Probably need to declare some more variables here


void setup()
{
  size(500, 500);
  centX = width / 2;
  centY = height / 2;  
  
  bytes[0] = true;
  bytes[2] = true;
  int number = binaryToDecimal(bytes);
  println(number);
  
  boxWidth = width / (float) bytes.length;
  
  // And set their values here
}


void draw()
{
  background(127);
  // Do some stuff here
  
  int bit = (bytes.length - 1);
  
  float redGap = 255.0f / bytes.length;
  for (int i = 0 ; i < bytes.length ; i ++)
  {
    float x = i * boxWidth;
    float red = redGap * i;
    if (bytes[bit])
    {
      fill(0);
    }
    else
    {
      fill(red, 0,0);
    }
    rect(x, centY, boxWidth, boxWidth);
    -- bit;
  }
  
  int number = binaryToDecimal(bytes);
  

  // This is how you print text in Processing
  fill(255);
  text(number, centX, 100);
}

int binaryToDecimal(boolean[] bytes)
{
  int ret = 0;

  for (int i = 0 ; i < bytes.length ; i ++)
  {
    if (bytes[i])
    {
      ret += pow(2, i);
    }
  }
  // Implement this method

  return ret;
}

void mousePressed()
{
  
  // Put some code here too
  // To toggle the bit on or off based on the mouse position.
  
  if (mouseX > 0 && mouseX < width && mouseY > centY && mouseY < (centY + boxWidth))
  {
    int bit =  (bytes.length - 1) - (int) ( mouseX /  boxWidth);
    bytes[bit] = ! bytes[bit];
  }
}
