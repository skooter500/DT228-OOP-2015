void setup()
{
  size(500, 500);  
  
}

float offsetTheta = 0;
float xOffset = 0; 
float frequency = .75f;  
  
void draw()
{
  background(0);
  stroke(255);

  float border = width * 0.1f;  
  
  float segments = frequency * 4;
  float snakeWidth = 200;
  float segmentWidth = snakeWidth / segments;
  
  float thetaInc = (frequency * TWO_PI) / snakeWidth;
  float amplitude = 50;
  
  float lastX = 0, lastY = height / 2;
  strokeWeight(20);
      stroke(0,255,255);
      fill(0, 255,255);

  for (float x = 0 ; x <= snakeWidth ; x +=segmentWidth)
  {
    float theta = offsetTheta + (thetaInc * x);    
    
    float y = map(sin(theta), -1.0f, 1.0f, (height / 2) - amplitude, (height / 2) + amplitude);
    if (x != 0)
    {
  
      line(lastX + border + xOffset, lastY, x + border + xOffset, y);      
    }
    //stroke(255,0,0);
    //fill(255, 0,0);
    ellipse(x + border + xOffset, y, 20, 20);
    lastX = x;
    lastY = y;        
    amplitude -= 5;
  }
  offsetTheta += 0.1f;
  //xOffset +=2f;
}
