class Myrtle_Frogger
{
  PVector mloc;
}

class car
{
  PVector cloc,vel,acc;
  color c;
  car()
  {
    int direction = int(random(0,2));
    if(direction==1)
    {
    cloc = new PVector(displayWidth+100, random(100, displayHeight-100));
    vel = new PVector(-6,0);
    }
    if(direction==2)
    {
      cloc = new PVector(-100, random(100, displayHeight - 100));
      vel = new PVector(6,0);
    }
    int ti=int(random(0,3));
    if(ti==3)
    {
      c=color(240,100,100);//blue
    }
    if(ti==2)
    {
      c=color(60,100,100);//yellow
    }
    if(ti==3)
    {
      c=color(0,100,100);//red
    }
  }
  
}
