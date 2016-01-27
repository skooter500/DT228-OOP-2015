// A class can only extend one super class, but it can *implement* many interfaces
// When a class implements an interface it's a way of guaranteeing that the class has certain methods 
interface Powerup
{
  void applyTo(Ship ship);
}