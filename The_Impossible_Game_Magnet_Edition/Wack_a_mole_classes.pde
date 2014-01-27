class A
{
  PVector loc;

  A()
  {
    loc = new PVector(int(random(1, 3))*width/4, height/2 + 50);
  }

  void show()
  {    
    textSize(150);
    fill(129, 82, 66);
    text("A", loc.x, loc.y);
    textSize(50);        //reset the textSize to 50 for the rest of the code
  }
}


class Hand
{
  PImage handpic;

  Hand()
  {
    handpic = loadImage("handpic.png");
  }

  void show()
  {
    image(handpic, mouseX, mouseY);
  }
}


class Paper
{
  PVector loc;

  Paper(int x)
  {
    loc = new PVector(x, height/2 - papery/2);
  }

  void show()
  {
    fill(360);
    rect(loc.x, loc.y, paperx, papery);
  }
}

