// A super class
class A
{
  int a; // A field
  
  A()
  {
    this(0);
  }
  
  A(int a)
  {
    this.a = a;
  }
  
  void a()
  {
    println(a);
  }
}

class B extends A
{
  B()
  {
    super(0);
  }  
}

class C extends A
{
  int c;
  C(int a, int c)
  {
    super(a);
    this.c = c;
  }
}

void setup()
{
  A a = new B(); // This is polymorphism
  
  
  ArrayList<A> aa = new ArrayList<A>();
  aa.add(new B());
  aa.add(new C(20, 30));
 
  for(A aaa:aa)
  {
    aaa.a();
  }
  
  A c;
  if (random(0, 1) > 0.5f) //<>//
  {
    c = new C(10, 20);
  }
  else
  {
    c = new B();
  }
  c.a();
  //println(c.c); // There is no way for the compiler 
  // to know what the instance of c will be!
  
  println(((C) c).c); // This is ok, so long as c is of type C, otherwise we wil get a class cast exception
}