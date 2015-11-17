void setup()
{
  size(500, 500);
}

float range = 40.0f;
float theta = 0;
float thetaInc;
float fps = 60.0f;

void draw()
{
    background(0);
    strokeWeight(20);
    stroke(0,255,255);
    fill(0, 255,255);
        
    translate(width / 2, height / 2);
    rotate(sin(theta) * radians(range));
    line(0, 0, 0, 200);
    ellipse(0, 200, 20, 20);    
    theta += (PI / fps);
}