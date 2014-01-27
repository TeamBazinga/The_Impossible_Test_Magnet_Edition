ArrayList<car> traffic;
int time;
Myrtle_Frogger Myrtle;
boolean start;
boolean win;
PImage Myrtlepic, bcl, bcr, rcl, rcr, ycl, ycr, background;
import processing.video.*;
Movie Gatsby1, Gatsby2;
boolean istart, istart2, checktime;
int starttime;
int g2time;
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
  Gatsby1= new Movie(this, "Gatsbyone.mov");
  Gatsby2 = new Movie(this, "Gatsbytwo.mov");
  Gatsby1.loop();
  //Gatsby2.loop();
  istart=false;
  checktime=false;
  istart2=false;
}
void draw()
{
  if (istart==true)
  {
    imageMode(CENTER);
    background(background);
    for (int i = traffic.size()-1; i >= 0; i--) {
      if (Myrtle.isdead(i)==true)
      {
        start=false;
        car auto = traffic.get(i);
        if (auto.c==color(60, 100, 100))
        {
          if (istart2==false)
          {
            g2time=millis();
            istart2=true;
            Gatsby2.loop();
          }
          if (millis()-g2time>41500)
          {
            win = true;
            Gatsby2.noLoop();
          }
          else
          {
            image(Gatsby2, width/2, height/2);
          }
        }
        else
        {
          win = false;
        }
      }
    }


    if (start==true)
    {
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
      Myrtle.move();
      Myrtle.display();
    }
  }
  if (istart==false)
  {
    image(Gatsby1, width/2, height/2);
    if (checktime==false)
    {
      checktime=true;
      starttime=millis();
    }
    if (millis()-starttime> 228000)
    {
      istart=true;
      Gatsby1.noLoop();
    }
  }
}


boolean sketchFullScreen() {
  return true;
}

void movieEvent(Movie m)
{
  m.read();
}

