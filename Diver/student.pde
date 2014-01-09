class Student {
  PImage kid;
  PVector loc, vel, acc;
  float scale;

    Student() {
    kid = loadImage("diver.png");
    loc = new PVector(width/2, height/4);
    kid.resize(kid.length * scale, kid.height * scale)
  }

  void display() {
    image(kid, loc.x, loc.y);
  }

  void move() {
    if (keyPressed && key == 's') {
      loc.y += 2;
    } 
    if (keyPressed && key == 'w') {
      loc.y -= 2;
    }
    if (keyPressed && key == 'a') {
      loc.x -=2;
    }
    if (keyPressed && key == 'd') {
      loc.x += 2;
    }
  }
}

