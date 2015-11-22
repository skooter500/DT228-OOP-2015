void setup()
{
 size(500, 500);
 loadData();
 calcMinMax();
 border = width * 0.1f;
 
}

// Question 2
ArrayList<GDP> data = new ArrayList<GDP>();

float border;
float min, max;

// Question 3
void loadData()
{
  String[] lines = loadStrings("gdp.csv");
  for(String line: lines)
  {
    GDP gdp = new GDP(line);
    data.add(gdp);
  }
}

// Question 4
void calcMinMax()
{
  min = max = data.get(0).amount; 
  for (GDP gdp:data)
  {
    if (gdp.amount < min)
    {
      min = gdp.amount;
    }
    if (gdp.amount > max)
    {
      max = gdp.amount;
    }    
  }
}

// Question 4 continued
void drawLineGraph()
{
  stroke(255);
   
  
  stroke(255);  
  line(border - 5, height - border, width - border, height - border);
  line(border, border, border, height - border + 5);
  
  
  for (int i = 1 ; i < data.size() ; i ++)
  {
    stroke(0, 255, 255);
    float x1 = map(i - 1, 0, data.size() - 1, border, width - border);
    float y1 = map(data.get(i - 1).amount, min, max, height - border, border);
    float x2 = map(i, 0, data.size() - 1, border, width - border);
    float y2 = map(data.get(i).amount, min, max, height - border, border);
    line(x1, y1, x2, y2);
    
    // Another way to solve Question 5
    /*
    if (mouseX >= x1 && mouseX <= x2)
    {      
      stroke(255, 0, 0);
      fill(255, 0, 0);
      line(x1, border, x1, height - border);
      ellipse(x1, y1, 5, 5);
      fill(255);
      text("Year: " + data.get(i - 1).year, x1 + 10, y1);
      text("GDP (Mill$): " + data.get(i - 1).amount, x1 + 10, y1 + 10);
    } 
    */
  }  
}

// Question 5
void drawGDPAmount()
{
  if (mouseX >= border && mouseX <= width - border)
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    line(mouseX, border, mouseX, height - border);
    int i = (int) map(mouseX, border, width - border, 0, data.size() - 1);
    float y = map(data.get(i).amount, min, max, height - border, border);
    ellipse(mouseX, y, 5, 5);
    fill(255);
    text("Year: " + data.get(i).year, mouseX + 10, y);
    text("GDP (Mill$): " + data.get(i).amount, mouseX + 10, y + 10);
  }
}

void draw()
{
  background(0);
  drawLineGraph();
  drawGDPAmount();
}