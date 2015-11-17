void setup()
{
  size(500, 500);
  ship = new Ship();
  ship1 = new AIShip();
}

// The class name always starts with uppercase!!
Ship ship; // ship is called an INSTANCE of the Ship class
AIShip ship1; // ship is called an INSTANCE of the Ship class
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{
  background(0);
  
  ship.update();
  ship.render();
  
  ship1.update();
  ship1.render();
  
  for(Bullet b: bullets)
  {
    b.update();
    b.render();
  }
  
}