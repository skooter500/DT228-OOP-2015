class Sheep extends Animal
{
  PImage image;
  AudioPlayer audio;
  
  Sheep()
  {
    image = loadImage("sheep.jpg");
    audio = minim.loadFile("bleet.wav");
  }
  
  void display()
  {
    image(image, x, y);
  }
  
  void speak()
  {
    audio.rewind();
    audio.play();
  }

}