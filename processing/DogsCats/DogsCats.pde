import ddf.minim.*;

Minim minim;

void setup()
{
  minim = new Minim(this);
  size(800, 600);
  
  animals = new ArrayList<Animal>();  
  setupAnimals();
  
  // This is ok!!
  Cat tom = new Cat();
  tom.die();
  
  // This is ok!
  Animal bob = new Cat();
  // But This wont compile
  // Java uses the type, not the instance to look up what methods can be invoked 
  // And the method die is on the instance 
  //bob.die(); 
  
  if (bob instanceof Cat)
  {
    Cat b = (Cat) bob;
    b.die();
  }
  
  Animal tara = new Dog();
  
  // This will compile but
  // Give a runtime error
  //Cat jinks = (Cat) tara; 
  
  // This is fine
  tara = new Cat(); 
  
  
}

void setupAnimals()
{
  animals.clear();
  for (int i = 0 ; i < 3 ; i ++)
  {
    int r = (int) random(0, 3);
    Animal a = null;
    switch (r)
    {
      case 0:
        a = new Dog();
        break;
      case 1:
        a = new Cat();
        break;
      case 2:
        a = new Sheep();
        break;
    }
    a.x = i * 250;
    a.y = 100;
    animals.add(a);
  }
}

ArrayList<Animal> animals;

void draw()
{
  background(0);
  
  for(Animal a:animals)
  {
    a.display();
  }
}

void keyPressed()
{
  int k = key - '0';  
  
  if (k >= 0 && k < animals.size())
  {
    animals.get(k).speak();
  }
  
  if (key == ' ')
  {
    setupAnimals();
  }
  
}