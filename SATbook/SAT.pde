ArrayList<Satbook> book = new ArrayList<Satbook>();
int oldtime;//used to determine when a new book is added
int oldtime2;//used to deterine when you can click 
boolean click; //sees if mouse if clickes
int r;//radius of aimer
int health;//health
int points;//score
int time;//time between next book added changes
float interval;//time between books coming in
boolean run;//instruction screen on off

class Teacherclick {

  Teacherclick() {
    size(1000, 1000);
    imageMode(CENTER);
    rectMode(CENTER);
    click=false;
    oldtime=2000;
    r=100;
    points=500;//initial score
    health=3;//health
    interval=500;
  }
  void instructions() {
    fill(255, 229, 109);
    rect(width/2, height/2, width, height); 
    fill(0, 0, 0);
    text("alala", 100, 100);
    run=false;
    if (mousePressed) {
      run=true;
    }
  }
  void display() {
    //    println(millis()-oldtime );
    if (run==true) {
      background(0);
      fill(110, 164, 119);
      rect(width/2, 3*height/4, width, height/2);

      if (millis()-oldtime2 > interval) {//book added every time milliseconds
        book.add(new Satbook());
        oldtime2=millis();
      }
      interval-=0.05;//interval decrease making books comein faster
      println(interval);

      for (int i= book.size()-1; i>=0;i--) {//make books move and die when clicked
        Satbook c= book.get(i);
        c.load();
        c.move();
        c.die(i);
        c.scoreboard(i);
      }

      if (millis() -oldtime >=500) {//aiming thing
        fill(0, 255, 120, 50);
        ellipse(mouseX, mouseY, r, r);
        if (mousePressed && millis() -oldtime >=500) {//click only allowed every 500 seconds 
          click=true;
          oldtime=millis();
        }
      }
      else {//can't kill if not 500 seconds
        click=false;
      }
    }
  }
}


class Satbook {
  PVector l, v, a;
  PImage sat;
  float scale=1;


  Satbook() {
    sat=loadImage("studyguide_web_cover2.png");//SAT book image
    sat.resize(int(sat.width*scale), int(sat.height*scale));
    l =new PVector(width/2, 100);//location
    v =new PVector(random(-1, 1), random(0, -1));//velocity
    a =new PVector(0, 0.0025);//acceleration
  }
  void load() {
    image(sat, l.x, l.y, sat.width, sat.height);
    //    rect(l.x, l.y, 90, 70);
  }
  void move() {
    l.add(v);
    v.add(a);
  }
  void die(int i) {
    if (click && mouseX<=l.x+r && mouseX>=l.x-r && mouseY<=l.y+110 && mouseY>=l.y-110 && mouseY>=height/2) {//dies if SAT is touching aimer
      book.remove(i);
      points+=10;
    }
  }
  void scoreboard(int i) {
    text(health, width-100, 100);//print health
    text(points, 100, 100);//print points
    if (l.y>= height+sat.height/2) {//lose points
      book.remove(i);//booke go away when hit bottom
      health-=1;
    }
    if (health<=0) {//gameover reason
      //      println("GAMEOVER");
      //        gameover;//************************************this needs to be fixed.
    }
    if (points>=2400) {//winning reason
      println("WIN");
    }
  }
}

