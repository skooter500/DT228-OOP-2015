class Cat extends Animal
{
    PImage image;
    AudioPlayer audio;
    int lives;

    Cat()
    {
      image = loadImage("cat.jpg");
      audio = minim.loadFile("meow.wav");
      lives = 9;
    }
    
    void die()
    {
      if (lives > 0)
      {
        lives --;
        if (lives == 0)
        {
          isAlive = false;
        }
      }      
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