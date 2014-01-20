class A
{
  PVector loc;

  A()
  {
    loc = new PVector(int(random(1,3))*width/4, height/2 + 50);
  }

  void show()
  {    
    textSize(150);
    fill(129, 82, 66);
    text("A", loc.x, loc.y);
    textSize(50);        //reset the textSize to 50 for the rest of the code
  }
}

