class Paper
{
  PVector loc;

  Paper(int paperx)
  {
    loc = new PVector(width/4-rectx + paperx, height/2 - recty/2);
  }

  void show()
  {
    rect(loc.x, loc.y, rectx, recty);
  }
}

