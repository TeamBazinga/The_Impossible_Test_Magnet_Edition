ArrayList<Satbook> book = new ArrayList<Satbook>();
int oldtime;
int oldtime2;
boolean click;
int r;
int score;
class Teacherclick {

  Teacherclick() {
    size(1000, 1000);
    imageMode(CENTER);
    rectMode(CENTER);
    click=false;
    oldtime=2000;
    r=100;
  }
  void display() {
    //    println(millis()-oldtime );
    background(0);
    fill(110, 164, 119);
    rect(width/2, 3*height/4, width, height/2);

    if (millis()-oldtime2 > 200) {
      book.add(new Satbook());
      oldtime2=millis();
    }

    for (int i= book.size()-1; i>=0;i--) {
      Satbook c= book.get(i);
      c.load();
      c.move();
      c.die(i);
    }

    if (millis() -oldtime >=500) {
      fill(0, 255, 120, 50);
      ellipse(mouseX, mouseY, r, r);
      if (mousePressed && millis() -oldtime >=500) {
        click=true;
        oldtime=millis();
      }
    }
    else {
      click=false;
    }
  }
}


class Satbook {
  PVector l, v, a;
  PImage sat;
  float scale=1;


  Satbook() {
    sat=loadImage("studyguide_web_cover2.png");
    sat.resize(int(sat.width*scale), int(sat.height*scale));
    l =new PVector(width/2, 100);
    v =new PVector(random(-0.5, 0.5), random(0, -1));
    a =new PVector(0, 0.001);
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
    if (click && mouseX<=l.x+r && mouseX>=l.x-r && mouseY<=l.y+110 && mouseY>=l.y-110 && mouseY>=height/2) {
      book.remove(i);
    }
  }
  void lose() {
    if (l.y>= height) {
      score-1=score;
    }
    if (score<=0) {
      println("GAMEOVER");
      //        gameover;//************************************this needs to be fixed.
    }
  }
}

