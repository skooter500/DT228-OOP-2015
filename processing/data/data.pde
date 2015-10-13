void setup()
{
  size(500, 500);
  
  for (int i = 0 ; i < rainFall.length ; i ++)
  {
    println(rainFall[i]);
  }
  
  for(float r:rainFall)
  {
    println(r);    
  }
  
  println(sum(rainFall));
  
  int m = minIndex(rainFall);
  println("The minimum rainfall of " + rainFall[m] + " was recorded in " + months[m]);

  for (int i = 0 ; i < colors.length ; i ++)
  {
    colors[i] = color(0, random(100, 255), random(100, 255));
  }
}

void drawBars(float[] arr)
{
  float barWidth = width / (float) arr.length;
  
  for (int i = 0 ; i < arr.length ; i ++)
  {
    stroke(colors[i]);
    fill(colors[i]);
    float x = i * barWidth;
    rect(x, height, barWidth, - arr[i]);
  }
}

int minIndex(float[]arr)
{
  float min = arr[0];
  int minIndex = 0;
  
  for (int i = 1 ; i < arr.length ; i ++)
  {
    if (arr[i] < min)
    {
      min = arr[i];
      minIndex = i;
    }
  }
  
  return minIndex;
}

float sum(float[] arr)
{
  float sum = 0;
  for (int i = 0 ; i < arr.length ; i ++)
  {
    sum += arr[i];
  }
  return sum;
}

float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
String[] months = {"January"
  , "February"
  , "March"
  , "April"
  , "May"
  , "June"
  , "July"
  , "August"
  , "September"
  , "October"
  , "November"
  , "December"
};

color[] colors = new color[rainFall.length];

void draw()
{
  drawBars(rainFall);
}
