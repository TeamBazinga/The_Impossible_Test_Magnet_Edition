Raindropss r1;
int level;
Hallway hallway;
boolean win;//win boolean for entire game
Loss l;
Startscreen s;
boolean win2;//win boolean for diver game
Teacherclick t;
Win w;
Student stu;
ArrayList<Shark> sharks;//declare an array list of sharks 
Treasure tr;
Over o;
float timer;
float currentTime;
boolean istime;//boolean for if the shark game has started
WhackAMole wam;// wackamole
boolean diddie;

ArrayList<car> traffic;//car arraylist
int ctime;//car spawn timer
Myrtle_Frogger Myrtle;//myrtle character
boolean gstart;//has the game started/ended
boolean gwin;//did you win
PImage Myrtlepic, bcl, bcr, rcl, rcr, ycl, ycr, background;//pics
import processing.video.*;//video library
Movie Gatsby1, Gatsby2;//intro and outro videos
boolean istart, istart2, checktime;//dis the videos start?
int starttime;//time first vid started
int g2time;//time second vid started

void setup() {
  sharks = new ArrayList<Shark>(); //initialize sharks array list
  o = new Over();
  timer = 30000;
  level=1;
  r1= new Raindropss();
  t = new Teacherclick() ;
  s= new Startscreen();
  l= new Loss();
  hallway = new Hallway();
  w= new Win();
  wam = new WhackAMole();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER);
  win=true;
  //  win= false;//only lets level select if win once
  win2= false;
  istime=false;
  diddie=false;
  oldytimers=1000000;
  
  rectMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  size(displayWidth, displayHeight);
  traffic= new ArrayList<car>();
  traffic.add(new car());//creat first car
  ctime=0;//begin countdown
  Myrtle = new Myrtle_Frogger();//myrtle character
  //frameRate(30);//set frame rate
  gstart=true;//we have begun
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
  istart=false;//all beginnings are false
  checktime=false;
  istart2=false;
}
void draw()
{
  println(millis()-oldytimers);
  if (level==1 || level==2) {
    rectMode(CENTER);
    s.load();
  }
  if (level==5) {
    t.instructions();
    t.display();
  }
  if (level==8) {
    r1.load();
  }
  if (level==9) {
    l.load(tr);
  }
  if (level==10) {
    w.load();
  }
  if (level==7) {
    wam.WAMload();
  }
  if (level==3) {
    rectMode(CENTER);
    hallway.Hallwayload();
  }
  if (level==4) { 

    rectMode(CENTER);
    if (istime==false)//if countown hasnt started
    {
      istime=true;//start the timer
      currentTime=millis();// begin countdown
      for (int i = sharks.size(); i >0; i--)
      {
        sharks.remove(i-1);
      }
      for (int i = 6; i> 0; i--) //add new sharks up to 5 sharks
      {
        sharks.add(new Shark());
      }
      stu = new Student();
      tr = new Treasure();
    }
    noStroke();
    background(229, 70, 87);
    fill(212, 56, 98);
    rect(0, 0, width+10000, height/4);
    fill(46, 56, 98);
    rect(0, height - height/7, width+10000, height/7);
    if (stu.alive) { //if the diver has not died
      stu.display(); //show diver
      stu.move(); //move diver
    }

    for ( int i = sharks.size(); i >0; i--) //for loop to call all functions for all sharks
    {
      Shark bruce = sharks.get(i-1); //add another shark
      bruce.display(); //show the shark
      bruce.move(); //move the shark
      bruce.check(stu, o); //check to see if diver is touching shark
    }


    tr.display(); //show the backpack
    tr.check(stu); //check if diver is touching backpack
    if (tr.show==false && stu.loc.y ==(height/5)) //if the diver picked up the backpack and made it to the top of the water
    {
      win = true; //the diver wins
      level++;
    }
    if (o.over) { //if the diver lost
      o.display(); //show the game over screen
    }
    //sh.check(s, o);
    o.button(stu); // show the play again button
    fill(220, 0, 100);
    rectMode(LEFT);
    textAlign(LEFT);
    textSize(30);
    rect(0, 75, ((30000-(millis()-currentTime))/150), 30); //rectangle that gets smaller as time runs out
    fill(54, 5, 74);
    text("Oxygen", 0, 65); //write oxygen on the box
    rectMode(CENTER);
    textAlign(CENTER);
    if ((millis()-currentTime) > 30000) //game over if run out of time
    {
      //      win= false; //winning boolean is on
      stu.alive=false; //the diver is no longer alive
      //o.over = true; //over screen shows up
      level=9;
    }
    if (millis()-oldytimers>2) {
      oldytimers=100000000;
      win=false;
      tr.show=true;
      stu.alive=true;
      istime=false;
      level=1;
    }
  }
  if(level==6)
  {
  if (istart==true)//if the first movie has ended
  {
    imageMode(CENTER);
    background(background);//background image
    for (int i = traffic.size()-1; i >= 0; i--) {
      if (Myrtle.isdead(i)==true)//check to see if myrtle is hit
      {
        gstart=false;//end game
        car auto = traffic.get(i);//if car is yellow; you win; else; you lose
        if (auto.c==color(60, 100, 100))
        {
          if (istart2==false)//if you win play outro movie
          {
            g2time=millis();
            istart2=true;
            Gatsby2.play();
            Gatsby2.loop();
            Gatsby2.noLoop();
          }
          if (millis()-g2time>29500)//end outro movie and progress to next level
          {
            gwin = true;
            Gatsby2.noLoop();
            level++;
          }
          else
          {
            image(Gatsby2, width/2, height/2);//disp;lay gatsby movie
          }
        }
        else
        {
          gwin = false;//if car is not yellow you lose
          level = 9;
        }
      }
    }


    if (gstart==true)//if we have started
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
      Gatsby1.loop();
      Gatsby1.play();
    }
    if (millis()-starttime> 31000)// if movie is over
    {
      istart=true;
      Gatsby1.noLoop();//end movie
    }
  }
  }
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
        start1 = timewak;        //record the time when the space key is pressed (which is when the first level is started)
      }
      if (mode == 3)
      {
        start2 = timewak;        //record the time when the space key is pressed (which is when the second level is started)
      }
      if (mode == 5)
      {
        start3 = timewak;        //record the time when the space key is pressed (which is when the third level is started)
      }
    }
  }
}

boolean sketchFullScreen() {
  return true;
}

void movieEvent(Movie m)// display movie
{
  m.read();
}


