void setup()
{
  size(500, 500, P3D);  
  
  int minMonth = minIndex(rainFall);
  println(months[minMonth] + " had the minimum rainfall of: " + rainFall[minMonth]);

  int maxMonth = maxIndex(rainFall);
  println(months[maxMonth] + " had the maximum rainfall of: " + rainFall[maxMonth]);
  
  centX = width * 0.5f;
  centY = height * 0.5f;
  
  textMode(SHAPE);
  
  for (int i = 0 ; i < rainFall.length ; i ++)
  {
    colors[i] = color(random(100, 255), random(100, 255), 0);
  }  
}

float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,58}; 
String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
color[] colors = new color[rainFall.length];

float centX, centY;

float sum(float[] array)
{
  float sum = 0;
  for (float r:array)
  {
    sum += r;
  }
  return sum;
}


int minIndex(float[] r)
{
  float min = r[0];
  int minIndex = 0;
  for (int i = 1 ; i < r.length ; i ++)
  {
    if (r[i] < min)
    {
      min = r[i];
      minIndex = i;
    }
  }
  return minIndex;
}

int maxIndex(float[] r)
{
  float max = r[0];
  int maxIndex = 0;
  for (int i = 1 ; i < r.length ; i ++)
  {
    if (r[i] > max)
    {
      max = r[i];
      maxIndex = i;
    }
  }
  return maxIndex;
}

int mode = 0;

color randomColor()
{
  return color(random(0, 255), random(0, 255), random(0, 255));
}

void draw()
{    
  background(0);
  float barWidth = width / (float) months.length;
  switch (mode)
  {    
    case 0:            
      for (int i = 0 ; i < rainFall.length ; i ++)
      {
        float x = i * barWidth;
        fill(colors[i]);
     stroke(colors[i]);
        rect(x, height, barWidth, - rainFall[i]);
      }  
      break;
    case 1:
    {
      int maxIndex = maxIndex(rainFall);
      float max = rainFall[maxIndex];    
      float scale = height / max;
      barWidth = width / (float) months.length;
      for (int i = 0 ; i < rainFall.length ; i ++)
      {
        float x = i * barWidth;
        float y = rainFall[i] * scale;
        float col = map(y, 0, max * scale, 255, 100);
        stroke(0, col, col);
        fill(0, col, col);        
        rect(x, height, barWidth - 1, - y);
        // Or use the Processing map function!
        //rect(x, height, barWidth, - map(rainFall[i], 0, max, 0, height));
      }
      break;
    }      
  case 2:
      stroke(255);
      barWidth = width / (float) (months.length - 1);
      for (int i = 1 ; i < rainFall.length ; i ++)
      {
        float x = i * barWidth;
        line((i - 1) * barWidth, height - rainFall[i - 1], x, height - rainFall[i]);
      }  
      break;  
   case 3:
   {
     float sum = sum(rainFall);
     int maxIndex = maxIndex(rainFall);
     float max = rainFall[maxIndex];
     float thetaPrev = 0;
     for(int i = 0 ; i < rainFall.length ; i ++)
     {
       fill(colors[i]);
       stroke(colors[i]);
       
       float theta = map(rainFall[i], 0, sum, 0, TWO_PI);
       textAlign(CENTER);
       float col = map(rainFall[i], 0, max, 255, 100);
       float thetaNext = thetaPrev + theta;
       float radius = centX * 0.6f;       
       float x = centX + sin(thetaPrev + (theta * 0.5f) + HALF_PI) * radius;      
       float y = centY - cos(thetaPrev + (theta * 0.5f) + HALF_PI) * radius;
       fill(255);
       text(months[i], x, y);             
       stroke(0, col, col);
       fill(0, col, col);               
       arc(centX, centY, centX, centY, thetaPrev, thetaNext);
       thetaPrev = thetaNext;
     }
     break;
    }
    case 4:
    {
      float border = width * 0.1f;
      drawAxis(rainFall, months, 15, 150, border);
      stroke(0, 255, 255);
      
      
      float windowRange = (width - (border * 2.0f));
      float dataRange = 150;      
      float lineWidth =  windowRange / (float) (months.length - 1) ;
      
      float scale = windowRange / dataRange;
      for (int i = 1 ; i < rainFall.length ; i ++)
      {
        float x1 = border + ((i - 1) * lineWidth);
        float x2 = border + (i * lineWidth);
        float y1 = (height - border) - (rainFall[i - 1]) * scale;
        float y2 = (height - border) - (rainFall[i]) * scale;
        line(x1, y1, x2, y2);
      }  
      break;  
    } 
  }
}

void drawAxis(float[] data, String[] horizLabels, int verticalIntervals, float vertDataRange, float border)
{
  stroke(200, 200, 200);
  fill(200, 200, 200);  
  
  // Draw the horizontal azis  
  line(border, height - border, width - border, height - border);
  
  float windowRange = (width - (border * 2.0f));  
  float horizInterval =  windowRange / (data.length - 1);
  float tickSize = border * 0.1f;
  
    
  for (int i = 0 ; i < data.length ; i ++)
  {   
   // Draw the ticks
   float x = border + (i * horizInterval);
    line(x, height - (border - tickSize)
      , x, (height - border));
   float textY = height - (border * 0.5f);
   
   // Print the text 
   textAlign(CENTER, CENTER);
   text(horizLabels[i].substring(0, 3), x, textY);
   
  }
  
  // Draw the vertical axis
  line(border, border , border, height - border);
  
  float verticalDataGap = vertDataRange / verticalIntervals;
  float verticalWindowRange = height - (border * 2.0f);
  float verticalWindowGap = verticalWindowRange / verticalIntervals; 
  for (int i = 0 ; i <= verticalIntervals ; i ++)
  {
    float y = (height - border) - (i * verticalWindowGap);
    line(border - tickSize, y, border, y);
    float hAxisLabel = verticalDataGap * i;
        
    textAlign(RIGHT, CENTER);  
    text((int)hAxisLabel, border - (tickSize * 2.0f), y);
  }
  
  
  
}

void keyPressed()
{
  if (key >= '0' && key <='9')
  {
    mode = key - '0';
  }
  println(mode);
}

