/ * A person is standing on top of a building looking down.. and some other things are happening and some things are calculated
*/

void setup()
{
  size(500, 500);
  o = 200;
  bottom = 300;
  left = 100;
}

float a;
float h1;
float h2;
float o;
float theta;
float bottom;
float left;

void draw()
{
  background(0);
  stroke(255);
  fill(0);
  line(left, bottom, left + o, bottom);
  a = bottom - mouseY;
  line(left, bottom, left + o, bottom - a); // Hyp
  line(left + o, bottom - a, left + o, bottom); // Adj
  fill(255);
  
  float theta = atan(o / a);
  h1 = sqrt(a * a + o * o);
  // Or another way
  h2 = o / sin(theta);
  // h1 & h2 should be the same!
  text("Opp: " + o, 10, 20);
  text("Hyp1: " + h1, 10, 40);
  text("Hyp2: " + h2, 10, 60);
  text("Adj: " + a, 10, 80);
  text("Theta: " + degrees(theta), 100, 80);
  
}
