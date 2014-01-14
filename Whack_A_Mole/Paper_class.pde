class Paper
{
  PVector loc;

  Paper(int x)
  {
    textSize(50);
    loc = new PVector(x, height/2 - papery/2);
  }

  void show()
  {
    fill(360);
    rect(loc.x, loc.y, paperx, papery);
  }
}

