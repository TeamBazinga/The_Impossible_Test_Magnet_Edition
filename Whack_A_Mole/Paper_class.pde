class Paper
{
  PVector loc;

  //FIX THIS THINGY BY ADDING IT TO THE STUFF IN VOID DRAW WHEN YOU DRAW THE THINGS IN THE FOR LOOP YEAH
  Paper(int paperx)
  {
    loc = new PVector(width/4-rectx + paperx, height/2 - recty/2);
  }

  void show()
  {
    rect(loc.x, loc.y, rectx, recty);
  }
}

