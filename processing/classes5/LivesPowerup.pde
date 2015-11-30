class LivesPowerup extends GameObject implements Powerup
{
  LivesPowerup()
  {
    super(random(0, width), random(0, height), 50);    
    c = color(255, 255, 255);
    forward.x = random(-1, 1);
    forward.y = random(-1, 1);
    forward.normalize();
  }
  
  // From the interface. This class won't compile unless it has this
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
    fill(0);
    rect(- halfW, - halfW, w, w);
    popMatrix();
  }
  
  void update()
  {
    theta += 0.1f;
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