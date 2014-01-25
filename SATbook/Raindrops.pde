Bomb[] b = new Bomb[8];//array of bombs
int index = 50; //used to make raindrops appear on time intervals
Raindrops[] drops = new Raindrops[1000];//array of candy
Catcher c1;// monster to eat candy
Start st;//start screen declare
Scoreboard s1;//printing score
End e1;//end screen
//int oldtime;//used as timer to calcualate time after game starts
PImage For;//background forest
int count;//used to find how many times replayed
boolean start;//use of instructions

class Raindropss {

  Raindropss() {
    rectMode(CORNER);
    For = loadImage("forest.jpg");
    For.resize(displayWidth, displayHeight);
    //    size(For.width, For.height);
    for (int i = 0; i < drops.length; i++) {
      drops[i] = new Raindrops();
    }
    c1=new Catcher();
    s1=new Scoreboard();
    e1= new End();
    st=new Start();
    for (int i = 0; i < b.length; i++) {
      b[i] = new Bomb();
    }
    count=1;
    start= false;
  }
  void load() {
    if (!start) {
      background(0);
      textAlign(LEFT);
      text("Munchlax is hungry! \nUse the cursor to move him to catch as many of the candies! \nBut watch out for the bombs! You only have 3 lives! \nYou need 5500 points to win!", 100, 100);
      textAlign(CENTER);
      text("Press any key to continue", width/2, height/2);
      if (keyPressed) {
        start= true;
      }
    }
    if (start) {
      background(For);
      for (int i=0; i < b.length;i++) {
        b[i].load();
        b[i].shoot();
        b[i].explode(c1);
        b[i].reset();
      }
      count+=1;//add times played every run
      for (int i=0; i < index;i++) {
        drops[i].load();
        drops[i].fall();
        drops[i].reset();
        drops[i].cat(c1);
      }
      c1.load();
      s1.printy(c1);//print score

      text("HP:"+c1.HP, width-100, 100);//print health

      if (millis()%6==0) { //new drop initiated every 8 milliseconds
        if (index< drops.length) {
          index+=1;
        }
      }
      if (c1.HP<=0) {//game over
        level=9;
      }
    }

    if (mousePressed) { 
//      start= true;
      //  oldtime=millis();//restart of timer
      //      if (count>1) {
      //        c1.score=0;
      //        for (int i=0; i < index;i++) {//location, velocity, and acceleration of candy reset
      //          drops[i].l= new PVector(random(width), 0);
      //          drops[i].v= new PVector(0, random(1, 2));
      //          drops[i].a= new PVector(0, (random(0, 1)));
      //        }
      //        index= 1;
      //        for (int i=0; i < b.length;i++) {//location, velocity, and acceleration of bombs reset
      //          b[i].location= new PVector(random(width), 0);
      //          b[i].ve= new PVector(0, random(1, 2));
      //          b[i].a= new PVector(0, (random(0, 0.1)));
      //          b[i].amax=0.1;
      //        }
      //        c1.HP=3;//health reset
      //      }
    }
    if (c1.score>1500) {
      level=10;
    }
  }
}
