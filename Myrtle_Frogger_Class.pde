class Myrtle_Frogger
{
  PVector mloc;
  int direction;
  Myrtle_Frogger()
  {
    mloc = new PVector(width/20, 50);
    direction =1;
  }
  void move()
  {
    if (keyPressed && key=='w')
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
    fill(143,100,100);
    ellipse(mloc.x, mloc.y, 40, 40);
  }
  boolean isdead(int i)
  {
      car auto = traffic.get(i);
      if (abs(mloc.y - auto.cloc.y) <= 63 && abs(mloc.x - auto.cloc.x) <= 63)
      {
        return true;
      }
      else
      {
        return false;
      }
    }
    
}

class car
{
  PVector cloc, vel, acc;
  color c;
  car()
    //colorMode(HSB,360,100,100);
  {
      rectMode(CENTER);
    int direction = int(random(1, 3));
    if (direction==1)
    {
      cloc = new PVector(displayWidth+100, random(100, displayHeight-200));
      vel = new PVector(-6, 0);
    }
    if (direction==2)
    {
      cloc = new PVector(-100, random(100, displayHeight-200));
      vel = new PVector(6, 0);
    }
    int ti=int(random(1, 4));
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
    rect(cloc.x, cloc.y, 100, 100);
    cloc.add(vel);
  }
}

