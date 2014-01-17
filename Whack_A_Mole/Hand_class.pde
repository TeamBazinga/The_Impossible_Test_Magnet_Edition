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
