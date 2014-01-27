class Myrtle_Frogger
{
  PVector mloc;//myrtle location
  int direction//direction movement
  Myrtle_Frogger()
  {
    mloc = new PVector(width/20, 50);//spawn myrtle
    direction =1;
  }
  void move()
  {
    if (keyPressed && key=='w')// WASD controls myrtle's movement
    {
      mloc.y-=3;
    }
    if (keyPressed && key=='d')
    {
      mloc.x+=3;
    }

    if (keyPressed && key=='s')
    {
      mloc.y+=3;
    }

    if (keyPressed && key=='a')
    {
      mloc.x-=3;
    }
  }
  void display()
  {
    image(Myrtlepic, mloc.x, mloc.y, 195, 110);//use the myrtle picture to display myrtle
  }
  boolean isdead(int i)
  {
    car auto = traffic.get(i);
    if (abs(mloc.y - auto.cloc.y) <= 63 && abs(mloc.x - auto.cloc.x) <= 88)// if myrtle is touching a car
    {
      return true;//she is dead
    }
    else
    {
      return false;//she is still alive
    }
  }
}

class car
{
  PVector cloc, vel, acc;//car location and velocity
  color c;//car color
  int direction = int(random(1, 3));//car direction (either left or right)
  int ti=int(random(1, 4));//car color randomization
  car()
    //colorMode(HSB,360,100,100);
  {
    rectMode(CENTER);
    if (direction==1)//if left facing
    {
      cloc = new PVector(displayWidth+100, random(183, (displayHeight-100))/2);
      vel = new PVector(-6, 0);
    }
    if (direction==2)// if right facing
    {
      cloc = new PVector(-100, random((displayHeight-100)/2, displayHeight-100));
      vel = new PVector(6, 0);
    }
    if (ti==3)
    {
      c=color(229, 94, 76);//blue
    }
    if (ti==2)
    {
      c=color(60, 100, 100);//yellow
    }
    if (ti==1)
    {
      c=color(0, 98, 80);//red
    }
  }
  void display()
  {
    fill(c);
    if (direction==1 && ti==1)//load car images
    {
      image(bcl, cloc.x, cloc.y);
    }
    if (direction==2 && ti==1)
    {
      image(bcr, cloc.x, cloc.y);
    }
    if (direction==1 && ti==2)
    {
      image(ycl, cloc.x, cloc.y);
    }
    if (direction==2 && ti==2)
    {
      image(bcr, cloc.x, cloc.y);
    }
    if (direction==1 && ti==3)
    {
      image(rcl, cloc.x, cloc.y);
    }
    if (direction==2 && ti==3)
    {
      image(rcr, cloc.x, cloc.y);
    }
    cloc.add(vel);// add velocity
  }
}

