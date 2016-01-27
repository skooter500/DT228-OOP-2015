// A demo of abstract classes and interfaces

void setup()
{
  size(800, 800);
  Ship ship = new Ship('W', 'A', 'D', ' ', 200, height / 2, color(0, 255, 255));
  gameObjects.add(ship);
  ship = new Ship('I', 'J', 'L', 'K', width - 200, height / 2, color(255, 255, 0));
  gameObjects.add(ship);
  
  // Add 5 random stars
  for (int i = 0 ; i < 0 ; i ++)
  {
    Star star = new Star(
        random(100, width - 100)
        , random(100, height - 100)
        , random(50, 100)
        , color(random(100, 255), random(100, 255), random(100, 255))
        , (int) random(3, 20)
        );
  gameObjects.add(star);
  }
}

// The class name always starts with uppercase!!
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

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
    
  for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }
  
  // Create a powerup every second
  if (frameCount % 60 == 0)
  {
    GameObject powerup = null;
    int i = (int) random(0, 2);
    switch (i)
    {
      case 0:
        powerup = new AmmoPowerup();
        break;
      case 1:
        powerup = new LivesPowerup();
        break;
    }
    gameObjects.add(powerup);
  }
 
  checkCollisions();  
}

// Check every ship against every powerup
void checkCollisions()
{
 for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
 {
    GameObject go = gameObjects.get(i);
    if (go instanceof Ship)
    {
      for(int j = gameObjects.size() - 1 ; j >= 0   ;j --)
      {
        GameObject other = gameObjects.get(j);
        if (other instanceof Powerup) // Check the type of a object
        {
          // Bounding circle collisions
          if (go.pos.dist(other.pos) < go.halfW + other.halfW)
          {
            // Do some casting
            ((Powerup) other).applyTo((Ship)go);
            gameObjects.remove(other);
          }
        }
        if (other instanceof Bullet)
        {
          // Bounding circle collisions
          if (go.pos.dist(other.pos) < go.halfW)
          {
            ((Ship) go).lives --;
            gameObjects.remove(other);
          }
        }
      }
    }
 } 
}