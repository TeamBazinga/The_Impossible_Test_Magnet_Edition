class Paper
{
  PVector loc;

  //FIX THIS THINGY BY ADDING IT TO THE STUFF IN VOID DRAW WHEN YOU DRAW THE THINGS IN THE FOR LOOP YEAH
  Paper(loc.x, loc.y)
  {
    loc = new PVector(random(0, width-rectx), random(0, height-recty));
  }

  void show()
  {
    rect(loc.x, loc.y, rectx, recty);
  }
}

