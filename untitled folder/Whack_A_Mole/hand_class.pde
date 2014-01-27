class Hand
{
  PVector loc;
  PImage handpic;

  Hand()
  {
    handpic = loadImage("mug.jpg");
  }

  void show()
  {
    image(handpic, mouseX, mouseY);
  }
}
