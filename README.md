DT228 Object Oriented Programming 2015-2016

Resources
---------
* [Assignment](assignment.md)
* [Webcourses](http://dit.ie/webcourses)
* [Slack](http://dt228-oop-2015.slack.com)
* [Processing](http://processing.org)
* [The Processing language reference](http://processing.org/reference/)
* [Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction (Morgan Kaufmann Series in Computer Graphics)](http://http://www.learningprocessing.com/)
* [The Nature of Code](http://natureofcode.com/)
* [Eclipse](http://eclipse.org)
* [The git manual - read the first three chapters](http://git-scm.com/documentation)
* [A video tutorial all about git/github](https://www.youtube.com/watch?v=p_PGUltnB6w)
* [The Java Tutorial from Oracle](http://docs.oracle.com/javase/tutorial/)
* [Games Fleadh](http://www.gamesfleadh.ie/)
* [The Imagine Cup](https://www.imaginecup.com/)

## Contact the lecturer
* Email: bryan.duggan@dit.ie
* Twitter: [@skooter500](http://twitter.com/skooter500)
* Slack: [dt228-oop-2015.slack.com](https://dt228-oop-2015.slack.com)

# Week 1
## Lecture
* [Introduction slides](https://onedrive.live.com/redir?resid=AB603D769EDBF24E!78307&authkey=!AAILJL-DwExqnac&ithint=file%2cpptx)
* [The program we wrote in class](processing/intro/intro.pde)
* [The contract for this course](http://1drv.ms/1DbmnG9)

Procedurally generated minnowforms video:

[![YouTube](http://img.youtube.com/vi/5G-PKD5GnlE/0.jpg)](https://www.youtube.com/watch?v=5G-PKD5GnlE)

NILL - One of my game jam games. It uses lots of nice come sci stuff like Perlin noise, procedural generation and binary search

[![YouTube](http://img.youtube.com/vi/RkReFavQbQo/0.jpg)](https://www.youtube.com/watch?v=RkReFavQbQo)

[NILL Sourcecode](http://github.com/skooter500/NILL)

Some Processing assignments from previous years: 

[![YouTube](http://img.youtube.com/vi/S575a92AsuQ/0.jpg)](https://www.youtube.com/watch?v=S575a92AsuQ)

[![YouTube](http://img.youtube.com/vi/wAEABphUJB8/0.jpg)](https://www.youtube.com/watch?v=wAEABphUJB8)

## Lab
* [Solution](processing/smileyface/smileyface.pde)

### Learning Outcomes
- Sign up for the class Slack
- Become familiar with the syntax of Processing
- Become familiar with writing and running sketches in Processing
- Practice using variables
- Practice using loops
- Practice using nested loops and the if statement
- Practice writing code to generate sequences of numbers

Firstly, go to https://dt228-oop-2015.slack.com and sign up for the slack with your DIT email address. When you are signed up, send a little greeting to everyone on the #general channel. If you have a smartphone, you might want to install the Slack app. It's free. Also if you install the app, you will probably want to disable certain notifications, otherwise your phone will be buzzing every time someone posts anything. [Here is an article that explains how to do this](https://slack.zendesk.com/hc/en-us/articles/201649323-Channel-and-group-notification-preferences).

Take the time to look up the following methods in the [Processing language reference](http://processing.org/reference/ ) to make sure you are clear about the syntax and parameters:

* line
* ellipse
* rect
* background
* stroke
* fill
* size

Here are two shapes you can draw:

![Sketch](images/p1.png)

Try experimenting with colours!

Now try and figure out how to draw these patterns:

![Sketch](images/p2.png)

(Use variables as much as possible and use a loop in your solution)

Now try this one:

![Sketch](images/p3.png)

Finally try this one:

![Sketch](images/p4.png)

Notice the mouths

Feel free to experiment with colour!  

When you are finished with thes exercises, [log onto webcourses](http://dit.ie/webcourses) and complete the MCQ for this week

## Tutorial
* [The Dublin Flag sketch](processing/dublinflag)

# Week 2

## Lecture
* [The face moving in 4 directions sketch](processing/facearoundthewall)
* Data types, the if statement and dynamic sketches in Processing video (from last year)
  
  [![YouTube](http://img.youtube.com/vi/Y0b9W3UJ2BU/0.jpg)](https://www.youtube.com/watch?v=Y0b9W3UJ2BU)

* The best of this weeks videos (incomplete making the moving smiley face video)

  [![YouTube](http://img.youtube.com/vi/Wr_Ev0Xqh_U/0.jpg)](https://www.youtube.com/watch?v=Wr_Ev0Xqh_U)
   
## Lab

### Learning Outcomes
- Practice solving problems using the if statement
- Practice using AND with an if statement

### Part 1

You can get the position where the mouse is located in Processing using the built in variables ```mouseX``` and ```mouseY```. Try printing these to the console in the ```draw()``` methdod to see how these values change as you move your mouse over the Processing window.

Make a rollover button in Processing. The button should be centred on the window and take up 30% of the width and height of the window. When you roll the mouse over the button, it should change colour from grey to blue:
Advanced! Make the button into a toggle (click on/click off) button. The button should go red when it is toggled on. In order to do this, you need to make use of the following method in your sketch:

~~~Java
void mousePressed()
~~~

This method will get called by the Processing framework whenever the mouse in pressed in the window where your sketch is running. Here is a youtube video with the completed sketch:

[![YouTube](http://img.youtube.com/vi/YGlGRnQoDFY/0.jpg)](https://www.youtube.com/watch?v=YGlGRnQoDFY)

### Part 2
Implement a bouncing ball. It should move diagonally in your sketch and "bounce" off the walls.

Login to Webcourses and do the MCQ for today

[Lab 2 Solution](processing/rolloverandbounce)

## Tutorial

- [The trigonometry program we wrote in the tutorial](processing/persononbuilding)
- [This guy teaches trigonometry better than me](https://www.khanacademy.org/math/trigonometry)

# Week 3
## Lecture
- Trippy spirals Processing sketch

## Lab
### Learning outcomes
- Use variables
- Use for loops
- Use methods
- Construct an algorithm to solve a problem using sin, cos and the unit circle
- Use drawing and colours in a Processing sketch
- Use random numbers

In the lecture we learned how to make spiral shapes using a for loop with sin and cos. In the lab today you will make a sketch that draws star shapes with random numbers of points and random colours. Here is what the finished sketch could look like:

![Sketch](images/p5.png)

Here are some things you might need to read up on first:

- [random function in Processing](https://processing.org/reference/random_.html)
- [Using the modulus operator](http://www.cafeaulait.org/course/week2/15.html)

You can put all your code into the setup method as this sketch doesnt use any animation (unles you want to attempt the advanced part)

This is how I suggest you think about the problem.

- You will need a for loop that goes from 0 - TWO_PI. There will be twice as many steps as there are points on the star. 
- You can use % (modulus) to decide whether the x and y values you calculate should be the tip of a point or base of the point (the pointy bit or the trough).
- Use line in your solution
- I strongly suggest you start the lab by just drawing a single star and then maybe move on to drawing multiple stars using a for loop.
- You could write a methdod to draw a single star with parameters

### Advanced
- Make the starts move!
- Make the stars rotate!
- Add colours!
- Go mad!

When you are done, upload an image to the slack and do this weeks MCQ. 

- [Solution to the lab](processing/star)

## Tutorial
- [Try solving some of these trigonometry problems on pen and paper](http://www.tippcityschools.com/cms/lib6/OH01000855/Centricity/Domain/111/Acc%20Geom%20eDay%201.pdf)
- Try and draw the following in Processing:

  ![Sketch](images/p6.png)
  
# Week 3

## Lecture
- [Loops in Processing](processing/loops)
- Compiling and running your first Java program:

  [![YouTube](http://img.youtube.com/vi/WXftKFCtPrQ/0.jpg)](https://www.youtube.com/watch?v=WXftKFCtPrQ)


## Lab
READ ALL THE INSTRUCTIONS FOR THIS LAB BEFORE STARTING!

For this lab you will be making a sketch that allows the user to convert between binary and decimal using a graphical tool that looks like this video (click to image to watch the video):

[![YouTube](http://img.youtube.com/vi/GCziyTb0LF8/0.jpg)](https://www.youtube.com/watch?v=GCziyTb0LF8)

The user should be able to click any one of the squares to "toggle" a bit on or off. The number in decimal should automatically change. For example, in the screenshot above, bits 0, 2 and 4 are turned on so the number is 1 + 4 + 16 = 21. 

To complete the sketch you can use a boolean array. Remember arrays from first year? Arrays are a  collection of data all of the same type. Read  [this article that explians how arrays work in Processing](http://www.processing.org/reference/Array.html). A boolean array is just an array where every element is either true or false.

Here is a skeleton sketch to get you started if you need it, but *feel free to ignore this and just come up with your own solution*:

~~~Java
boolean[] bytes = new boolean[16];
int centX, centY;

// Probably need to declare some more variables here


void setup()
{
  size(500, 500);
  centX = width / 2;
  centY = height / 2;  
  
  // And set their values here
}


void draw()
{
  background(127);
  // Do some stuff here
  
  int number = binaryToDecimal(bytes);
  // This is how you print text in Processing
  fill(255);
  text(number, centX, 100);
}

int binaryToDecimal(boolean[] bytes)
{
  int ret = 0;

  // Implement this method
  
  return ret;
}

void mousePressed()
{
  // Put some code here too
  // To toggle the bit on or off based on the mouse position.
}
~~~

What I suggest you do is:

- Implement the method ```int binaryToDecimal(boolean[] bytes)```. 
- Set some of the bits in the bits array to be true and test the method you wrote by printing out the value.
- Write code in the ```draw()``` method to draw boxes to represent the bits. The box should be black only if the appropriate bit is true.
- Write code in the ```mousePressed()``` method to calculate which if any box the user has pressed the mouse onto and toggle the appropriate bit.

### Bonus!
- Write the decimalToBinary method that uses the divide by 2 technique to convert from a decimal number to a binary string 
- Print the bit numbers over the boxes
- Implement 2's complement.
- Colours! Lights! Animations!

## Tutorial 
- [Solution to the lab](processing/binaryToDecimal)
- [A slightly different solution to the lab](processing/binaryToDecimal)

# Week 5
## Lecture
- [Rainfall data program we wrote in the class](processing/data)
- [Arrays in Processing reference](https://processing.org/reference/Array.html)
- A video from last year about arrays in Processing

  [![YouTube](http://img.youtube.com/vi/ccnjXlSnL2Y/0.jpg)](https://www.youtube.com/watch?v=ccnjXlSnL2Y)

## Lab

### Learning outcomes
- Practice iterating over arrays in Java
- Practice in using the for loop and variables to generate sequences of numbers
- Understand how a line graph is made
- Practice constructing alogorithms as part of a system
- Practice presenting data visually

Log into the slack and let me know how you are getting on.

Use the code you wrote yesterday in the class as starter code for today's lab. 
If you missed the class, [this is a link to my version](processing/datawip). 

Here is what you can try and make today:

![Sketch](images/p7.png)

These are the steps I suggest you follow:

- Figure out how to draw a trend line graph first
- Then figure out how to leave horizontal and vertical borders around the graph. I would suggest making a variable called border to control this.
- Then figure out how to scale it so that it scales the data when drawing to the range 0-150. You could make this a variable 
- Then figure out how to draw the horizontal axis. This will be a for loop obviously. You might find the following Java/Processing methods useful:
  - [The Processing map method](https://processing.org/reference/map_.html)
  - [textAlign](https://processing.org/reference/textAlign_.html)
  - [substring](http://www.tutorialspoint.com/java/java_string_substring.htm)
- Finally figure out how to draw the vertical axis. Another loop! This is the trickiest part I think

Try and parameterise as much of your sketch with variables, so that you could reuse the code to graph other types of data. 
For example, I found it useful to write a method:

```Java
void drawAxis(float[] data, String[] horizLabels, int verticalIntervals, int maxVertical, float border)
```

to draw the horizontal and vertical axes. You might like to write seperate methods for the horizontal and vertical axis. 
This took me about an hour to complete today, so it's tricky enough to get everything working, but worth it!
Take a screenshot of your sketch and [upload it to the slack](http://dt228-oop-2015.slack.com)!

### Advanced!

Try and draw this pie chart:

![Sketch](images/p8.png)

Upload screenshots of your sketches and log on to webcourses to do today's MCQ.

## Tutorial
- [Solution to the lab](processing/data)
- Video of the tutorial: Making the trend line graph in Processing:

    [![YouTube](http://img.youtube.com/vi/K9R5yQCPXIE/0.jpg)](https://www.youtube.com/watch?v=K9R5yQCPXIE)

# Week 6
## Lecture
- [Weather dataset project](processing/weatherData)
- [ArrayList in Processing](https://processing.org/reference/ArrayList.html)
- [map method in Processing](https://processing.org/reference/map_.html)
- [split a String in Java](http://www.tutorialspoint.com/java/java_string_split.htm)
- [The program we wrote in the class](processing/files1)
- Video of the lecture all about map, ArrayList's, splitting strings, converting String to float:

[![YouTube](http://img.youtube.com/vi/jMC_y9Nhq04/0.jpg)](https://www.youtube.com/watch?v=jMC_y9Nhq04)


## Lab

### Learning outcomes
- Learn how to replace an array with an ArrayList
- Learn how to use the Processing map method
- Learn how to load a dataset from a csv file
- Learn how to constrct algorithms to iterate over a dataset

Staring with [the program we wrote in the class](processing/files1) yesterday, write code to do the folowing:

- Print the year with the most rainfall
- Calculate the average rainfall

Now add some code to draw a trend graph of the rainfall data from 1850 - 2010. You can use the code from last week's lab to figure out how to draw the trend line. You should adapt the code in the following ways:

- Use ArrayLists instead of an arrays
- Refactor the code to use the processing *map* method wherever possible. SPend 20 minutes analysing the code to look for all opportunities to replace calculations and variables with the Processing map method. I found loads of places where it simplified the code.

![Sketch](images/p9.png)

Instead of downloading the code from the website, you can clone the git repository for the course if you want to. It's not very hard. Just fire up a command prompt on your computer and type:

```bash
git clone http://github.com/skooter500/DT228-OOP-2015
```

Spend some time figuring out the lab before you attempt to code it!

Advanced!

The file Dublin Airport.csv contains the rainfall data by month from 1850 - 2010. Open the file in Notepad++ to see what format the file is in. Some stuff for you to try:

- Load the data from the file into an ArrayList of ArrayLists. In other words, each entry in the first ArrayList will be an ArrayList of floats ike this:

  ```Java
  ArrayList<ArrayList<Float>> data = new ArrayList<ArrayList<Float>>();
  ```
  
  Each entry in the first ArrayList will be an ArrayList containing the rainfall data by month for a year. 
  
  I suggest you skip over the year part when reading the file and just store the data. It will make your calculations easier. 
  
- Write code to figure out what *month* in the range 1850-2010 had the lowest and highest recorded rainfall

- [Solution to various parts (not all) of the lab](processing/weatherData1)

# Week 7

## Lecture
- No lecture

## Lab
- Work on the assignment

## Tutorial
- [Slides from the tutorial](https://onedrive.live.com/redir?resid=AB603D769EDBF24E!264952&authkey=!ADQ7OV2Yx73_Sw8&ithint=file%2cpptx)
- [Audio Visualiser Processing example](processing/audioVisualiser)
- [Harmonic motion animation](processing/harmonic)

# Week 8
## Lecture
- [Classes in Processing example we wrote in the class](processing/classes)
- Video from the class:

	[![YouTube](http://img.youtube.com/vi/t7kbuD-_bCE/0.jpg)](https://www.youtube.com/watch?v=t7kbuD-_bCE)

- [An excellent introduction to git video made by Paul Doyle](https://media.heanet.ie/page/6fac13d8ea21e74ea406a38fdae7c193)


## Lab
### Learning Outcomes
- Clone a git repository
- Set up a github account
- Create a git repository
- Make commits
- Make a class in Processing

Today let's try and do some git stuff. For a start try cloning the git repository for the course. 

- Fire up the bash shell and cd to folder that you want to clone the repo to and type:

	```bash
	git clone https://github.com/skooter500/DT228-OOP-2015
	```

	After a few seconds you will have your own copy of the repository for the course. 

- Now lets create a Processing sketch and commit it to github. If you dont have one already, go and [create an account on github](http://github.com). At some stage you should sign up for the [github education program](https://education.github.com/) that gives you the ability to create private repos. 
- Now create a new Processing sketch and add some code. Save the Processing sketch and call it whatever you like. For this lab, I will assume the sketch is called spacewar. 
- Logon to your github account and create a repo for spacewar. 

	![Image](images/p10.png)

	Don't forget to set:
	- The repository name
	- A description for the repository
	- Set the repository to be public
	- Make sure "Initialize this repository with a README" is checked
	- Make sure you choose Processing for the gitignore
	- Add an MIT license



- From the bash shell, cd to the folder where you have your sketch saved and type:

	```bash
	git init
	git remote add origin THE_URL_TO_THE_REPO_YOU_JUST_MAKE
	git pull origin master
	```

	I usually copy and paste the url from the browser. Ctrl + C and Shift + Insert on Windows, Cmd + C and Cmd + V will do the same job on the Mac. Crtl + C and Crtl + V will do this on Linux
- Navigate to the folder in Windows Explorer/Mac Finder etc and see that the files you created on github have been pulled. You should see the .gitignore and README files. Open them up in Notepad++ and take a look at the contents.
- Edit the README file and add some additional contents. The format of this file is called markdown. Here is a [quick reference to Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). Its a simple and cool file format.
- If you haven't already, you need to tell git your name and email address:

	```bash
	git config --global user.name "Your name"
	git config --global user.email "your_email@example.com"
	```

- Now lets commit our changes and push the local changes to github. At the bash shell type:

	```bash
	git add .
	git commit -m "Initial version"
	git push --set-upstream origin master
	```
- In your web browser, go to the github repository you created and verify that your files are all commited. 
- Now lets make a change and make another commit. Edit your processing sketch and save the changes. Then type:

	```bash 
	git add .
	git commit -m "Changes"
	git push
	```
- Verify that your changes have been pushed successfully
- Now lets make a branch. At the bash shell type:

	```bash
	git checkout -b new_branch
	```

	The -b flag means create a new branch. When you checkout a branch that means you switch to the branch and any commits you make from now will be on that branch. 

- Add a comment to the Processing sketch and save it.
- At the bash shell type:

	```bash
	git add .
	git commit -m "On the new branch"
	git push --set-upstream origin new_branch
	```
	
	Note! The --set-upstream origin new_branch is only necessary the first time you push to a new branch. It creates the connection between the local branch and the remote branch

	Go to the repo page in your browser and verify that the new branch has been created.

- Now lets switch branches to the master branch. Type:
	
	```bash
	git checkout master
	```

- Close Processing and then reopen the sketch. You should see the version of the file before you made the changes on the new_branch
- Type:

	```bash
	git merge new_branch
	```

	To merge the changes from new_branch into the master branch

- Commit and push your changes to the master branch (try and figure this out yourself)
- Some other git commands you should try. Look up their meaning!

	```
	git status
	git log
	```

Last thing! Create a git repository for you assignmenmt. Maybe try and make some classes to encapsulate rows of data from your dataset. For example, if your dataset looked like this:

```
James Bannon,FG,Longford-Westmeath,40542.72
Sean Barrett,CC,Dun Laoghaire, 13111.75
...
...
```

You could create a class that loked like this:

```Java
class Expense
{
  String name;
  String party;
  String region;
  float claimed;
}
```

To encapsulate a row of data from the file

Log onto webcourses and do the MCQ for today. I will be on the slack if you have any questions.

- [Last years lab test 1 with solution](processing/ExpensesProcessing)

## Tutorial
- Video of the tutorial (the first part of the lab test from last year):

	[![YouTube](http://img.youtube.com/vi/v7o1CzGIJuE/0.jpg)](https://www.youtube.com/watch?v=v7o1CzGIJuE)

- [Code we wrote in the tutorial](processing/expensesWIP)
 
# Week 9
## Lecture
- Lecture video all about PVectors, pushMatrix, popMatrix, encapsulation, constructors, object references

	[![YouTube](http://img.youtube.com/vi/XwniJyTIdec/0.jpg)](https://www.youtube.com/watch?v=XwniJyTIdec)

- [Using PVectors & classes in a Processing sketch (the program we wrote in the class)](processing/classes1)

## Lab
- [Lab Test 1](https://github.com/skooter500/irishEconomyStarterCode)

## Tutorial
- [Pie chart with atan2 example](processing/piechart)
- [Lots of things you can do with Strings in Java](processing/strings)

# Week 10
## Lecture
- Lecture all about making game objects in Processing using encapsulation and inheritance

	[![YouTube](http://img.youtube.com/vi/5jnR-C6OqUQ/0.jpg)](https://www.youtube.com/watch?v=5jnR-C6OqUQ)

- [Making AIShip and Bullet classes (the program we wrote in the class](processing/classes2)
- [Solution to the lab test](processing/irishEconomy)

## Lab
### Learning outcomes
- Design algorithms and classes as part of a system
- Create instances of classes, with different field values
- Know how to manage objects in an ArrayList

Logon to [Slack](http://dt228-oop-2015.slack.com) and lets chat about code.

You might want to clone/pull the repo for the course to get the code from yesterday:

```bash
git clone https://github.com/skooter500/DT228-OOP-2015
``` 

The goals of today's lab:

- Start with the code from yesterday
- Add multiple ships with different keyboard controls. For example, one Ship could use WASD and another ship could use IJKL
- Each ship should have it's own colour
- Bullets should take the ship colour
- The players wrap around if they go off the bounds of the screen  

Advanced!
- Bullets get removed from the scene when they go out of bounds of the scene
- Ships can only fire 5 bullets per second

I could tell you how to do all the above, but you will have much more fun if you figure all this out yourselves :-)I suggest you form teams of no more than 3 people and spend the first half of the lab studying the code from yesterday and coming up with a plan to implement each of the above goals. 

Some hints:

- USe OO principles as much as possible. Use methods, fields and constructors.
- The ```draw``` method in Processing gets called 60 times per second, so you can us this to time things!

Here is a video of what it could look like:

[![YouTube](http://img.youtube.com/vi/LC3uRd8ESSA/0.jpg)](https://www.youtube.com/watch?v=LC3uRd8ESSA)

Upload a picture of whatever you made today to [Slack](http://dt228-oop-2015.slack.com). Dont be shy!!

- [Solution](processing/DogsCats)

# Week 11
## Lecture
- [Dogs Cats and Sheep code](processing/DogsCats) 
- Video of the class:

	[![YouTube](http://img.youtube.com/vi/nt2DzM5n8iw/0.jpg)](https://www.youtube.com/watch?v=nt2DzM5n8iw)
	
## Lab
### Learning Outcomes
- Refactor a program to use Polymorphism
- Apply polymorphism to a real world problem
- Practice creating a class with a constructor
- Practice using Polymorphism with an ArrayList

Lets take the stuff we learned in the class and apply it to the SpaceWars game we are making. Instead of keeping track of instances of Ship and Bullets seperately, keep an ArrayList of GameObject's and use Polymorphism. You can start with your own code or [use the solution to last weeks lab that I made](processing/classes3). You will need to add update and render methods to the GameObject along with some other stuff you can figure out for yourself. 

This should be pretty easy to do, so as an additional challenge, you can make a Star class. It should extend GameObject and it should rotate clockwise by itself. You should make a constructor that takes the x, y, radius, color and number of points. If you can't figure out how to draw the star using trigonometry, check out [this example from earlier in the course](processing/star). Creats some instances of the star. This is what my sketch looks like with 5 random stars on the screen

![Sketch](images/p12.png)

Note!
- Sometimes using polymorphism and ArrayLists can reduce code, but even so, it is sometimes necessary in a complex system to keep separate references to different types of objects. You can check out the complete [SpaceWars game in Processing on my git repository](https://github.com/skooter500/YASC).

Let me see what you are working on by uploading a picture of your sketch to the slack. 
Log onto webcourses and do today's MCQ