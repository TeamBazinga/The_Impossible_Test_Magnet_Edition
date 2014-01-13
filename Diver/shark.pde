class Shark { 
  PImage shark;
  PVector loc, vel, acc;

  Shark() {
    shark = loadImage("shark.png");
    loc = new PVector((random(width)), random(height));

  } 

  void display() {
    image(shark, loc.x, loc.y);
  }

  void move() {
    loc.x+=2;
    if (loc.x >= width) {
      loc.x = 0;
      loc.y = random(height - height/4);
    }
  }
//  void die(Student s) {
//    if(s.loc.x
//  }
}

