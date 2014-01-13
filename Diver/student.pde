//start class for the diver
class Student {
  //declare variables needed
  PImage kid;
  PImage kidLeft;
  PVector loc, vel, acc;
  float scale = .4;
  float scale1 = 1.05;
  boolean right = true;

  Student() {
    kid = loadImage("diver.png");
    kidLeft = loadImage("DiverLeft.png");
    loc = new PVector(width/2, height/5);
    kid.resize(int(kid.width * scale), int(kid.height * scale));
    kidLeft.resize(int(kid.width * scale1), int(kid.height * scale1));
  }
  //make the correct orientation of diver appear based on the direction its moving 
  void display() {
    if (right) {
      image(kid, loc.x, loc.y);
    }
    else {
      image(kidLeft, loc.x, loc.y);
    }
  }
  //move the diver in the direction indicated by a certain key
  void move() {
    if (keyPressed && key == 's') {
      loc.y += 4;
      right = true;
    } 
    if (keyPressed && key == 'w') {
      loc.y -= 4;
      right = true;
    }


    if (keyPressed && key == 'a') {
      loc.x -=4;
      image(kidLeft, loc.x, loc.y);
      right = false;
    }
    if (keyPressed && key == 'd') {
      loc.x += 4;
      right = true;
    }
  }
}

