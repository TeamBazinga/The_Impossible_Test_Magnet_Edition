class Shark { 
  PImage shark;
  PVector loc, vel, acc;

  Shark() {
    shark = loadImage("shark.png");
    loc = new PVector((random(width)), random(height/5, height-height/5));

  } 

  void display() {
    image(shark, loc.x, loc.y);
  }

  void move() {
    loc.x+=2;
    if (loc.x >= width) {
      loc.x = 0;
      loc.y = random(height/5,height-height/5);
    }
  }
//  void die(Student s) {
void check(Student s, Over o) {
  if(s.loc.x >= loc.x - shark.width/2 && s.loc.x <= loc.x + shark.width/2 && s.loc.y >= loc.y - shark.height/2 && s.loc.y <= loc.y + shark.height/2) { //if the person touches the shark
    s.alive = false; //kill the person by turning its show boolean off
    win=false;
    o.over = true; //put the game over screen on 
  }


}

}

