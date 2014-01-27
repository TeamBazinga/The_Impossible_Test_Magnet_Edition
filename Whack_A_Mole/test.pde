WhackAMole wam;

void setup()
{
  wam = new WhackAMole();
}

void draw()
{
  wam.WAMload();
}

void keyPressed()
{
  if (sap == false)
  {
    if (key == ' ')        //the space key is the start button 
    {
      if (mode == 0)    //prevent the space bar from resetting the start time after the level has started
      {
        mode = 1;
      }
      if (mode == 2)
      {
        mode = 3;
      }
      if (mode == 4)
      {
        mode = 5;
      }
      if (mode == 1)
      {
        start1 = time;        //record the time when the space key is pressed (which is when the first level is started)
      }
      if (mode == 3)
      {
        start2 = time;        //record the time when the space key is pressed (which is when the second level is started)
      }
      if (mode == 5)
      {
        start3 = time;        //record the time when the space key is pressed (which is when the third level is started)
      }
    }
  }
}

boolean sketchFullScreen()        //full screen
{
  return true;
}

