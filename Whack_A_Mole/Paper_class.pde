class Paper
{
  PVector loc;

  Paper()
  {
    
  }

  void show()
  {
    rect(random(rectx, width-rectx), random(recty, height-recty), rectx, recty);
    
  }
}
