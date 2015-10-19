void setup()
{
  size(500, 500);
  
  loadData();
  calculateSums();
  println(sums);
}

ArrayList<ArrayList<Float>> data = new ArrayList<ArrayList<Float>>();

ArrayList<Float> sums = new ArrayList<Float>();

void calculateSums()
{
  for(ArrayList<Float> lineData:data)
  {
    float sum = 0;
    for (float f:lineData)
    {
      sum += f;
    }
    sums.add(sum);
  }
}

void drawTrendLineGraph(ArrayList<Float> data, String title)
{
  background(0);
  float border = width * 0.1f;
  stroke(0, 255, 255);
  drawAxis(data, null, 10, 1200, border);   
  float windowRange = (width - (border * 2.0f));
  float dataRange = 1200;      
  float lineWidth =  windowRange / (float) (data.size() - 1) ;
  
  for (int i = 1 ; i < data.size() ; i ++)
  {
    float x1 = map(i - 1, 0, data.size(), border, border + windowRange);
    float x2 = map(i, 0, data.size(), border, border + windowRange);
    float y1 = map(data.get(i - 1), 0, dataRange, height - border, (height - border) - windowRange);
    float y2 = map(data.get(i), 0, dataRange, height - border, (height - border) - windowRange);
    line(x1, y1, x2, y2);
  }  
}

void drawAxis(ArrayList<Float> data, String[] horizLabels, int verticalIntervals, float vertDataRange, float border)
{
  stroke(200, 200, 200);
  fill(200, 200, 200);  
  
  // Draw the horizontal azis  
  line(border, height - border, width - border, height - border);
  
  float windowRange = (width - (border * 2.0f));  
  float horizInterval =  windowRange / (data.size() - 1);
  float tickSize = border * 0.1f;
  
    
  for (int i = 0 ; i < data.size() ; i ++)
  {   
   // Draw the ticks
   float x = border + (i * horizInterval);
    line(x, height - (border - tickSize)
      , x, (height - border));
   float textY = height - (border * 0.5f);
   
   // Print the text 
   textAlign(CENTER, CENTER);
   //text(horizLabels[i].substring(0, 3), x, textY);
   
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


void draw()
{
  drawTrendLineGraph(sums, "1850");
}

void loadData()
{
  String[] strings = loadStrings("Dublin Airport.csv");
  
  for(String s:strings)
  {
    println(s);
    String[] line = s.split(",");
    
    ArrayList<Float> lineData = new ArrayList<Float>();
    boolean first = true; 
    for (String ss:line)
    {
      if (! first)
      {
        lineData.add(Float.parseFloat(ss));        
      }
      else
      {
        first = false;
      }
    }
    data.add(lineData);
  }
}
