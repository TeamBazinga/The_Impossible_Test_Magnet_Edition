class Catcher {//thing to "catch" the raindrops
  PVector l;//location of catcher
  int r;//radius of catcher
  int s;//velocity of catcher
  int score;
  PImage poke;
  float scale;
  int HP;//health left
  Catcher() {
    scale= 0.09;
    r=60;
    l= new PVector(mouseX, height-100);
    score = 0;
    poke= loadImage("pokemon.png");
    imageMode(CENTER);
    poke.resize(int(poke.width*scale), int(poke.height*scale));
    HP=3;
  }
  void load() {
    noStroke();
    fill(0, 100, 0, 0);
    image(poke, mouseX, height-50, poke.width, poke.height);
    l= new PVector(mouseX, height-50);//catcher moves based on mouse
    ellipse(l.x, l.y, r, r);
  }
}
class Raindrops {
  PVector l;//location of raindrops
  PVector v;//velocity of raindrops
  PVector a;// acceleration of raindrops
  int r; //radius of each raindrops
  PImage candy;

  Raindrops() {
    l= new PVector(random(width), 0);
    v= new PVector(0, random(1, 2));
    a= new PVector(0, (random(0, 1)));
    r=int(random(4, 10));
  }
  void load() {
    fill(random(255), random(255), random(255));
    ellipse(l.x, l.y, r, r);
  }
  void fall() {
    v. add (a);
    l. add (v);
    v.limit(5);//velocity doesn't go above 5
  }
  void reset() {//resets the raindrops after they go off the screen
    if (l.y>height) {
      l.y=0;
      l.x=random(width);
      v= new PVector(0, random(1, 3));
    }
  }

  void cat(Catcher c) {//adds score every time the rain is caught
    if (dist(l.x, l.y, c.l.x, c.l.y) < (r/2+c.r/2)) {
      l.y=0;
      l.x=random(width);
      v= new PVector(0, random(1, 3));
      c.score += r;
    }
  }
  void away() {//ends game raindrops go back to top
    l.y=0;
    v.y=0;
    a.y=0;
  }
}
class Scoreboard {
  PVector l;
  Scoreboard() {
    l= new PVector(100, 100);
  }
  void printy(Catcher c) {//prints score
    fill(255, 0, 0);
    textSize(50);
    text(c.score, l.x, l.y);
  }
}
class Start {
  Start() {
  }
  void screen() {
    fill(0);
    rect(0, 0, width, height);
    textAlign(CENTER, CENTER);
    fill(255);
    text("START", width/2, height/2);
  }
}
class Bomb {
  PVector location;
  PVector ve;
  PVector a;
  PImage bomb;
  float scale;
  boolean blow;
  float amax;//acceleration maximum per run
  int run;
  Bomb() {
    amax=0.1;
    location= new PVector(random(width), 0);
    ve= new PVector(0, random(1, 2));
    a= new PVector(0, (random(0, amax)));
    blow=false;
    scale= 0.06;
    bomb= loadImage("bomb.png");
    bomb.resize(int(bomb.width*scale), int(bomb.height*scale));
  }
  void load() {

    image(bomb, location.x, location.y, bomb.width, bomb.height);
  }
  void shoot() {//bombs drop
    ve.add(a);
    location. add(ve);
    ve.limit(30);
  }
  void explode(Catcher c) {//bombs hurt pokemon
    if (abs(c.l.x - location.x) < 50 && location.y >= height) {//every time the pokemon is hit by the bomb the hit times increases
      c.HP=c.HP-1;
    }
    //                 println(c.die);
  }
  void reset() {//bombs come back up after falling
    if (location.y>height) {
      location.y=0;
      location.x=random(width);
      ve= new PVector(0, random(1, 3));
      a= new PVector(0, amax+=0.025);
      //      println(amax);
    }
  }

  void cat(Catcher c) {
    if (dist(location.x, location.y, c.l.x, c.l.y) < (bomb.width/2+c.r)) {//bomb lowers health if catcher is hit
      location.y=0;
      location.x=random(width);
      ve= new PVector(0, random(1, 3));
      //        println("hit");
      //      println(l.x + c.l.x);
    }
  }
}
class End {
  End() {
  }
  void end(Catcher c) { //end screen
    //    fill(0, 255, 0);
    //    rect(0, 0, width, height);
    //    println(c.score);
    //    fill(255);
    //    textAlign(CENTER);
    //    text("GAME OVER"+"\n"+c.score, width/2, height/2);
    for (int i=0; i < index;i++) {
    drops[i].away();
    }
    level= 10;
  }
}

