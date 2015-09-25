# DT228 Object Oriented Programming


Resources
---------
* [Webcourses](http://dit.ie/webcourses)
* [Slack]()
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
* Slack: https://dt228-oop-2015.slack.com

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


 


