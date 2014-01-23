
class Student { //start class for the diver
  PImage kid;   //declare variables needed
  PImage kidLeft;
  PVector loc, vel, acc;
  float scale = .342857142;
  float scale1 = 1;
  boolean right = true;
  boolean alive = true;

  Student() {
    kid = loadImage("diver.png"); //image of diver
    kidLeft = loadImage("DiverLeft.png"); //image of diver facing left
    loc = new PVector(random(width), height/5);
    for (int i = 0; i< 5; i++)
    {
      Shark jo = sharks.get(i);
      if (loc.x >= jo.loc.x - 220 && loc.x <= jo.loc.x + 220 && loc.y >= jo.loc.y - 100 && loc.y <= jo.loc.y + 100)
      {
        loc = new PVector(random(width), height/5);
        if (loc.x >= jo.loc.x - 220 && loc.x <= jo.loc.x + 220 && loc.y >= jo.loc.y - 100 && loc.y <= jo.loc.y + 100)
        {
          loc = new PVector(random(width), height/5);
        }
      }
    }
    kid.resize(int(kid.width * scale), int(kid.height * scale));
    kidLeft.resize(int(kid.width * scale1), int(kid.height * scale1));
  }

  void display() {   //make the correct orientation of diver appear based on the direction its moving 

    if (right) {
      image(kid, loc.x, loc.y);
    }
    else {
      image(kidLeft, loc.x, loc.y);
    }
  }

  void move() {   //move the diver in the direction indicated by a certain key
    if (keyPressed && key == 's') {
      if (loc.y < height-height/7) { //dont let diver go beyond screen 
        loc.y += 4;
        right = true;
      }
    } 
    if (keyPressed && key == 'w') {
      if (loc.y > height/4 - 50d) { //dont let diver go beyond water line
        loc.y -= 4;
        right = true;
      }
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

