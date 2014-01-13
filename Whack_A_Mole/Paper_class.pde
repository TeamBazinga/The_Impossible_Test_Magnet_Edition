class Paper
{
  PVector loc;

  Paper()
  {
    loc = new PVector(random(0, width-rectx), random(0, height-recty));
  }

  void show()
  {
    rect(loc.x, loc.y, rectx, recty);
  }
}
