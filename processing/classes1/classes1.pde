void setup()
{
  size(500, 500);
  //ship = new Ship();
  ship1 = new AIShip();
}

// The class name alwasy starts with uppercase!!
//Ship ship; // ship is called an INSTANCE of the Ship class
AIShip ship1; // ship is called an INSTANCE of the Ship class

void draw()
{
  background(0);
  
  //ship.update();
  //ship.render();
  
  ship1.update();
  ship1.render();
  
}