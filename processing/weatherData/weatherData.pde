ArrayList<Float> sumData;
ArrayList<ArrayList<Float>> airportData;

// declare this once and use only the variable later on
int firstYear = 1850;

void setup() {

  size(500,500);
  background(0);
  loadData();
  float border = 0.1 * width;

  // little improvement: makes the program more flexible by setting
  // the max value for the y-axis according to the data, so 
  // we avoid hardcoding it! Try writing some really high values
  // in sum.csv, and you'll see the graph scale itself.

  // 1. get max value (we don't need the index here)
  float highest = sumData.get(0);
  for (int i = 1 ; i < sumData.size() ; i ++)
    if (sumData.get(i) > highest)
      highest = sumData.get(i);

  // 2. round to the next 200 multiple.
  float delta = 200 - (highest % 200);
  highest += delta;

  drawAxis(sumData, 10, 10, highest, border);
  drawTrendGraph(sumData, border, highest);

  loadAirportData();
  // TODO : find month / year with minimum / maximum rainFall!
}

void loadData() {
  // instantiate the sumData container
  sumData = new ArrayList<Float>();
  String[] lines = loadStrings("sum.csv"); // Load each line into a String array
  for(String s:lines)
  {
    // Add each element from the string array to the arraylist
    float f = Float.parseFloat(s);
    sumData.add(f);
  }
}

void loadAirportData() {
  // instantiate airportData container
  airportData = new ArrayList<ArrayList<Float>>();
  String[] lines = loadStrings("Dublin Airport.csv");
  for (String s : lines) {
    // declare and instantiate list for this line
    ArrayList<Float> v = new ArrayList<Float>();
    String[] values = s.split(",");
    // we start at 1 to skip the first value (the year)
    for (int i = 1; i<values.length ; i++) {
      float f = Float.parseFloat(values[i]);
      // fill this (small) list 
      v.add(f);
    }
    // add the small list to the main one
    airportData.add(v);
  }

  // advantage of ArrayList: we can print them directly!
  println(airportData);
}

// function adapted from our previous lab, the arguments
// changed a little but the code is quite similar.
// TODO: we can get rid of many arithmetics operations,
// and a few variables, by using map instead of doing
// all the maths ourselves!
void drawAxis(ArrayList<Float> data,
              // we no longer have horizontal labels,
              // rather we will draw the ticks as we do
              // for the vertical axis. This argument
              // indicates how many ticks we want.
              int horizontalIntervals,
              int verticalIntervals,
              float vertDataRange,
              float border)
{
  stroke(200, 200, 200);
  fill(200, 200, 200);

  // Draw the horizontal azis
  line(border, height - border, width - border, height - border);

  float horizontalWindowRange = (width - (border * 2.0f));
  float horizontalDataGap = data.size() / horizontalIntervals;
  float horizontalWindowGap = horizontalWindowRange / horizontalIntervals;
  float tickSize = border * 0.1f;

  for (int i = 0 ; i <=  horizontalIntervals; i ++)
  {
    // Draw the ticks
    float x = border + (i * horizontalWindowGap);
    line(x, height - (border - tickSize)
         , x, (height - border));
    float textY = height - (border * 0.5f);

    // Print the date
    textAlign(CENTER, CENTER);
    text((int)(firstYear + i*horizontalDataGap) , x, textY);
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

void drawTrendGraph(ArrayList<Float> data,
                    float border,
                    float maxValue) {
  stroke(255);
  for (int i = 1 ; i < data.size() ; i ++)
  {
    float x1 = map(i-1, 0, data.size(), border, width - border);
    float x2 = map(i, 0, data.size(), border, width - border);
    float y1 = map(data.get(i-1), 0, maxValue, height - border, border);
    float y2 = map(data.get(i), 0, maxValue, height - border, border);
    line(x1, y1, x2, y2);
  }
}
