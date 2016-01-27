// The class name starts with uppercase
class AIShip extends Ship
{ 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  // If you don't explicitly call the super class constructor, the default one will get called
  AIShip()
  {
    println("In AI DEfault Constructor");
    // Constructor chaining
    //super(width * 0.5f, height  * 0.5f, 50);     
  }
  
  
  // This OVERRIDES the update method from the superclass
  void update()
  {
      forward.x = sin(theta);
      forward.y = - cos(theta);
      
      // Move in the direction we are rotated
      forward.mult(speed);
      pos.add(forward);
      
      
      if (pos.y - halfW < 0)
      {
        theta = HALF_PI;
        pos.y = halfW;
      }
      if (pos.x + halfW > width)
      {
        theta = PI;
        pos.x = width - halfW;
      }
      if (pos.y + halfW > height)
      {
        theta = PI + HALF_PI;
        pos.y = height - halfW;
      }
      if (pos.x < halfW)
      {
        theta = 0;
        pos.x = halfW;
      }
    
  }

}