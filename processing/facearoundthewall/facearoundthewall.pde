void setup()
{
  size(500, 500);
  
  stroke(255);
  fill(0);
  
   x = width / 2;
   y = height / 2;
 
}

float x, y;
int speed = 5;
int xspeed = speed;
int yspeed = 0;
float theta = 0;
float radius = 25;

void draw()
{ 
  background(0);
  
  ellipse(x, y, radius * 2, radius * 2);
  ellipse(x - 10, y - 10, 5, 5);
  ellipse(x + 10, y - 10, 5, 5);
  ellipse(x, y, 5, 5);
  line(x - 10, y + 10, x + 10, y + 10); 

  if (x > width - radius)
  {
    xspeed = 0;
    yspeed = -speed;
    x = width - radius;
  }
  
  if (y < radius)
  {
    xspeed = -speed;
    yspeed = 0;
    y = radius;
  }
  
  if (x < radius)
  {
    xspeed = 0;
    yspeed = speed;
    x = radius;
  }
  
  if (y > height - radius)
  {
    xspeed = speed;
    yspeed = 0;
    y = height - radius;
  }
  
  x += xspeed;
  y += yspeed;  
  
  println(x + ", " + y);

}
