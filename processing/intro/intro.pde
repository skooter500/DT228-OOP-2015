void setup()
{
  size(500, 500);
}

void draw()
{
  // Random background colour
  background(random(0, 255), random(0, 255), random(0, 255));    
  for (int x = 0 ; x <= width ; x += 50)
  {
    // Random stroke colour
    stroke(random(0, 255), random(0, 255), random(0, 255));
    line(x, 0, width - x, height);
  }
}
