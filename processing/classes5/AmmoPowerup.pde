// Because this class implements the Powerup interface, it must have an applyTo method on it
class AmmoPowerup extends GameObject implements Powerup
{
  float thetaDir;
  AmmoPowerup()
  {
    super(random(0, width), random(0, height), 50);    
    c = color(255, 0, 0);
    forward.x = random(-1, 1);
    forward.y = random(-1, 1);
    forward.normalize();
    thetaDir = random(-0.2f, 0.2f);
  }
  
  // From the interface. This class won't compile unless it has this method  
  void applyTo(Ship ship)
  {
    ship.lives ++;
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(c);
    float lastX = 0; float lastY = - halfW;
    int sides = 5;
    float thetaInc = TWO_PI / sides;
    for(int i = 0 ; i <= sides ; i ++)
    {
      float t = i * thetaInc;
      float x = sin(t) * halfW;
      float y = -cos(t) * halfW;
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;
    }
    popMatrix();
  }
  
  void update()
  {
    theta += thetaDir;
    pos.add(forward);
    if (pos.x < 0)
    {
      pos.x = width;
    }
    
    if (pos.x > width)
    {
      pos.x = 0;
    }
    
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    if (pos.y > height)
    {
      pos.y = 0;
    }
  }
}