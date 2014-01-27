ArrayList<car> traffic;//car arraylist
int ctime;//car spawn timer
Myrtle_Frogger Myrtle;//myrtle character
boolean start;//has the game started/ended
boolean gwin;//did you win
PImage Myrtlepic, bcl, bcr, rcl, rcr, ycl, ycr, background;//pics
import processing.video.*;//video library
Movie Gatsby1, Gatsby2;//intro and outro videos
boolean istart, istart2, checktime;//dis the videos start?
int starttime;//time first vid started
int g2time;//time second vid started
void setup()
{
  rectMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  size(displayWidth, displayHeight);
  traffic= new ArrayList<car>();
  traffic.add(new car());//creat first car
  ctime=0;//begin countdown
  Myrtle = new Myrtle_Frogger();//myrtle character
  frameRate(30);//set frame rate
  start=true;//we have begun
  Myrtlepic = loadImage("Myrtle.png");
  bcl= loadImage("blue-carL.png");
  bcr= loadImage("blue-carR.png");
  rcl= loadImage("red-carL.png");
  rcr= loadImage("red-carR.png");
  ycl= loadImage("yellow-carL.png");
  ycr= loadImage("yellow-carR.png");
  background = loadImage("road.jpg");
  background.resize(displayWidth,displayHeight);
  Gatsby1= new Movie(this, "Gatsbyone.mov");
  Gatsby2 = new Movie(this, "Gatsbytwo.mov");
  Gatsby1.loop();//load first movie
  istart=false;//all beginnings are false
  checktime=false;
  istart2=false;
}
void draw()
{
  if (istart==true)//if the first movie has ended
  {
    imageMode(CENTER);
    background(background);//background image
    for (int i = traffic.size()-1; i >= 0; i--) {
      if (Myrtle.isdead(i)==true)//check to see if myrtle is hit
      {
        start=false;//end game
        car auto = traffic.get(i);//if car is yellow; you win; else; you lose
        if (auto.c==color(60, 100, 100))
        {
          if (istart2==false)//if you win play outro movie
          {
            g2time=millis();
            istart2=true;
            Gatsby2.loop();
          }
          if (millis()-g2time>28000)//end outro movie and progress to next level
          {
            gwin = true;
            Gatsby2.noLoop();
          }
          else
          {
            image(Gatsby2, width/2, height/2);//disp;lay gatsby movie
          }
        }
        else
        {
          gwin = false;//if car is not yellow you lose
        }
      }
    }


    if (start==true)//if we have started
    {
      for (int i = traffic.size()-1; i >= 0; i--) {//add and subtract cars
        car auto = traffic.get(i);
        auto.display();//display cars
        if (auto.cloc.x > displayWidth+100 || auto.cloc.x<-100)// if car leaves screen remove it
        {
          traffic.remove(i);
        }
      }
      if (millis()-ctime>900)//add car every 9/10 second
      {
        traffic.add(new car());
        ctime= millis();
      }
      Myrtle.move();
      Myrtle.display();//move and display the controllable myrtle
    }
  }
  if (istart==false)// if the first movie has not ended
  {
    image(Gatsby1, width/2, height/2);//display first movie
    if (checktime==false)// if we have not started timer
    {
      checktime=true;
      starttime=millis();//begin timer
    }
    if (millis()-starttime> 31000)// if movie is over
    {
      istart=true;
      Gatsby1.noLoop();//end movie
    }
  }
}


boolean sketchFullScreen() {//make sketch full screen
  return true;
}

void movieEvent(Movie m)// display movie
{
  m.read();
}

