void setup()
{
  background(0);
  size(500, 500);
  
  for(int stars = 0; stars < 50 ; stars ++)
  {
    drawStar(random(0, width), random(0, height), random(10, 50), (int)random(5, 10), color(random(100, 255), random(100, 255), random(100, 255)));  
  } 
}

void draw()
{
  
}

void drawStar(float cx, float cy, float radius, int points, color c)
{
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = cx;
    lastY = cy -radius; 
    
    stroke(c);
    
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      float r;
      if (i % 2 == 1)
      {
        r = radius * 0.5f;
      }
      else
      {
        r = radius;        
      }

      x = cx + sin(theta) * r;
      y = cy -cos(theta) * r;
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
}


