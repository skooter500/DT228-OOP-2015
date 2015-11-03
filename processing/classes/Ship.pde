// The class name starts with uppercase
class Ship
{
  // Fields!
  float x, y;
  float w;
  float halfW;
 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    x = width * 0.5f;
    y = height  * 0.5f;
    w = 50;
    halfW = w * 0.5f;
  }  
  
  void update()
  {
    if (keyPressed)
    {
      if (key == 'w')
      {
        y --;
      }
      if (key == 's')
      {
        y ++;
      }
      if (key == 'a')
      {
        x --;
      }
      if (key == 'd')
      {
        x ++;
      }
      
    }
  }
  
  void render()
  {
    stroke(255);
    line(x - halfW, y + halfW, x, y - halfW);
    line(x, y - halfW, x + halfW, y + halfW);
    line(x + halfW, y + halfW, x, y);
    line(x - halfW, y + halfW, x, y);
  }   
}
