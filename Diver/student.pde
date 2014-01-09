class Student {
  PImage kid;
  PVector loc, vel, acc;
  float scale = .4;

    Student() {
    kid = loadImage("diver.png");
    loc = new PVector(width/2, height/4);
    kid.resize(int(kid.width * scale), int(kid.height * scale));
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
      image(kidLeft, loc.x, loc.y);

    }
    if (keyPressed && key == 'd') {
      loc.x += 2;
    }
  }
}

