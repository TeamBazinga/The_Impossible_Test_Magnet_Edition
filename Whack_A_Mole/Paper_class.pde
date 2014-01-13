class Paper
{
  PVector loc;

  Hand()
  {
    
  }

  void show()
  {
    rect(random(rectx, width-rectx), random(recty, height-recty), rectx, recty);
  }
}
