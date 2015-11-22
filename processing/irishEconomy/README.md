# Irish Economy Dataset

In this lab test you will be making this sketch that visualises Ireland's GDP from 1980-2014:

[![YouTube](http://img.youtube.com/vi/7o0IpFxQ71g/0.jpg)](https://www.youtube.com/watch?v=7o0IpFxQ71g)

To get started, clone this repository. To do this, type:

```bash
git clone https://github.com/skooter500/irishEconomyStarterCode
``` 

Make sure and put your name and student number into the comments of your sketch

You will be loading the data for this lab test from a file called gdp.csv in the data folder. Here is an extract from the file:

```
IRL,MLN_USD,A,1980,21925.4195,E
IRL,MLN_USD,A,1981,24769.4509,E
IRL,MLN_USD,A,1982,26906.8248,E
IRL,MLN_USD,A,1983,27900.9329,E
IRL,MLN_USD,A,1984,30148.8808,E
...
...
```

The file is in CSV format and is structured as follows:

| Column | Description |
| -------|-------------|
| 0      | Country Code |
| 1      | Currency (million USD) |
| 2      | Ignored |
| 3      | Year |
| 4      | GDP Amount |
| 5      | Ignored | 

Marking scheme:

| Description | Marks |
|-------------|-------|
| Write a class ```GDP``` with appropriate fields, default and parameterised constructors that encapsulates data from a singe row in the file.| 15 |
| Create and instantiate a global ArrayList that can store instances of the class you created. | 5 |
| Write and call a method ```loadData``` that loads the data from the file into the ArrayList | 20 |
| Write and call a method ```drawLineGraph``` that draws the blue line graph of the GDP amount. You should leave a border either side and at the top and bottom of the screen. Also the lines should fit exactly into the size of the graph. | 30 |
| Implement the functionality so that hovering the mouse over the graph draws the red line, the red circle on the graph and prints the year and GDP amount as illustrated in the YouTube video.| 30 |

When you are done, zip up your sketch and upload everything to webcourses. 