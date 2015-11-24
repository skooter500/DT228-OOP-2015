class Dog extends Animal
{
  PImage image;
  AudioPlayer audio;
  
  Dog()
  {
    image = loadImage("dog.jpg");
    audio = minim.loadFile("bark.wav");
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