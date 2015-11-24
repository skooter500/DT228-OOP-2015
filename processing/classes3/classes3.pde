void setup()
{
  size(500, 500);
  Ship ship = new Ship('W', 'A', 'D', ' ', 200, height / 2, color(0, 255, 255));
  ships.add(ship);
  ship = new Ship('I', 'J', 'L', 'K', width - 200, height / 2, color(255, 255, 0));
  ships.add(ship);
}

// The class name always starts with uppercase!!
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Ship> ships = new ArrayList<Ship>();

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
  
  for (Ship ship: ships)
  {
    ship.update();
    ship.render();
  }
  
  
  for(int i = bullets.size() - 1 ; i >= 0   ;i --)
  {
    Bullet b = bullets.get(i);
    b.update();
    b.render();
  }
  
}