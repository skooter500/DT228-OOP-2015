class Star extends GameObject
{
  float points;
  float rotSpeed;
  float radius;
  float rot;
  
  
  Star(float x, float y, float radius, color c, int points)
  {
    super(x, y, radius * 2);
    this.c = c;
    this.radius = radius;
    this.points = points;
    rot = 0.0f;
    rotSpeed = 0.01f;
  }
  
  void update()
  {
    rot += rotSpeed;
    if (rot > TWO_PI)
    {
      rot = 0;
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rot);
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = 0;
    lastY = -radius; 
    stroke(c);
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      if (i % 2 == 1)
      {
        x = sin(theta) * (radius / 2.0f);
        y = -cos(theta) * (radius / 2.0f);
      }
      else
      {
        x = sin(theta) * radius;
        y = -cos(theta) * radius;
      }
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
    
    popMatrix();
  }
}