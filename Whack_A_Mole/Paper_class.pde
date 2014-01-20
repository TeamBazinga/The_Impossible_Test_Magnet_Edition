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

