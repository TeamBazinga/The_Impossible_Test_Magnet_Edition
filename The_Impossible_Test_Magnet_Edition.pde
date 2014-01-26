ArrayList<car> traffic;
int time;
Myrtle_Frogger Myrtle;
boolean start;
boolean win;
PImage Myrtlepic,bcl,bcr,rcl,rcr,ycl,ycr,background;
void setup()
{
  rectMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  size(displayWidth, displayHeight);
  traffic= new ArrayList<car>();
  traffic.add(new car());
  time=0;
  Myrtle = new Myrtle_Frogger();
  frameRate(30);
  start=true;
  Myrtlepic = loadImage("Myrtle.png");
  bcl= loadImage("blue-carL.png");
  bcr= loadImage("blue-carR.png");
  rcl= loadImage("red-carL.png");
  rcr= loadImage("red-carR.png");
  ycl= loadImage("yellow-carL.png");
  ycr= loadImage("yellow-carR.png");
  background = loadImage("road.jpg");
}
void draw()
{
  background(background);
  for (int i = traffic.size()-1; i >= 0; i--) {
    car auto = traffic.get(i);
    auto.display();
    if (auto.cloc.x > displayWidth+100 || auto.cloc.x<-100)
    {
      traffic.remove(i);
    }
  }
  if (millis()-time>900)
  {
    traffic.add(new car());
    time= millis();
  }
  for (int i = traffic.size()-1; i >= 0; i--) {
    if(Myrtle.isdead(i)==true)
    {
      start=false;
      car auto = traffic.get(i);
      if(auto.c==color(60, 100, 100))
      {
        win = true;
        println(win);
      }
      else
      {
        win = false;
      }
      
    }
    
      
    }
  if (start==true)
  {
    Myrtle.move();
    Myrtle.display();
  }
}


boolean sketchFullScreen() {
  return true;
}

