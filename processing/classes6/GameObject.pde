// This is the base class! 
// Everything in the scene will extend GameObject
// An abstract class means that:
// You can't instantiate it
// You must make a subclass and instantiate that
// Some of the methods can be abstract. That means they have no body
// If the subclass doesn't implement the abstract methods, then it too is abstract
// You can use abstract classes to ensure that a class has an implementation of the abstract methods
abstract class GameObject
{
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;
  color c; 
 
  GameObject()
  {
    // Constructor chaining
    this(width * 0.5f, height  * 0.5f, 50);     
  }
  
  GameObject(float x, float y, float w)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    this.w = w; // Disambiguate w by using this
    this.halfW = w * 0.5f;
    this.theta = 0.0f;
  }
  
  abstract void update();  
  abstract void render();
  
}