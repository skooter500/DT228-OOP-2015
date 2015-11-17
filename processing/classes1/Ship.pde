// The class name starts with uppercase
class Ship
{
  // Fields!
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;
 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {

    // Constructor chaining
    this(width * 0.5f, height  * 0.5f, 50);     
    println("In Ship DEfault Constructor");
    
  }
  
  Ship(float x, float y, float w)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    this.w = w; // Disambiguate w by using this
    this.halfW = w * 0.5f;
    this.theta = 0.0f;
    println("In Ship parameterised Constructor");

  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    
    forward.mult(speed);
    if (keyPressed)
    {
      if (key == 'w')
      {
        pos.add(forward);
      }      
      if (key == 'a')
      {
        theta -= 0.1f;
      }
      if (key == 'd')
      {
        theta += 0.1f;
      }      
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(255);
    line(- halfW, halfW, 0, - halfW);
    line(0, - halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(- halfW, halfW, 0, 0);
    popMatrix();
  }   
}