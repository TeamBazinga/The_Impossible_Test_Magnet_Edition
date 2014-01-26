class Over {
  boolean over; //boolean for game being over
  boolean push; //boolean for button being pressed
  PVector bLoc;
  int w = 300;
  int h = 200;



  Over() {
    over = false; //start game with over false
    push = false;
    bLoc = new PVector(width/2, height/2 + 150); //location of button
  } 

  void display() {
    if (over) {
      rectMode(CENTER);
      fill(229, 70, 87);
      //   rect(width/2, height/2, width, height); 
      fill(209, 75, 91); //background color of game over screen
      rect(width/2, height/2, width, height);
      textAlign(CENTER);
      fill(255);
      textSize(90);
      text("Game Over", width/2, height/2); //display text saying "game over"
    }
  }

  void button(Student s) {
    if (over) { //if the game is over
      rectMode(CENTER);
      rect(bLoc.x, bLoc.y, w, h); //show the rectangle to start over

      if (mousePressed && mouseX >= bLoc.x - w/2 && mouseX <= bLoc.x + w/2 && mouseY >= bLoc.y - h/2 && mouseY <= bLoc.y + h/2) { //if mouse is pressed in the box
        // push = true;
        s.alive = true;
        over = false; 
        s.loc.x = width/2;
        s.loc.y = height/5;
      }
    }
  }
}
class Treasure {
  PVector loc;
  PImage backpack;
  boolean show = true; // boolean for showing the homework (treasure)
  float scale = 1;


  Treasure() {
    loc = new PVector(random(width), (height - height/7 -30)); //location of backpack is random width but must be along sand line
    backpack= loadImage("backpack.png"); //load the image of the backpack
    backpack.resize(int(backpack.width * scale), int(backpack.height * scale)); //resize the picture to fit better
  } 

  void display() { //function to display the backpack
    imageMode(CENTER);
    if (show) { //if the treasure is still there
      image(backpack, loc.x, loc.y, 140, 160); //show the backpack
    }
  }

  void check(Student s) { //function to check if diver is touching backpack
    if (s.loc.x >= loc.x - 50 && s.loc.x <= loc.x + 50 && s.loc.y >= loc.y - 60) { //if the diver touches the homework
      show = false; // do not show the backpack anymore
    }
  }
}
class Shark { 
  PImage shark;
  PVector loc, vel, acc;

  Shark() {
    shark = loadImage("shark.png"); //load image of shark
    loc = new PVector((random(width)), random(height/5, height-height/5)); //shark has random width but must be in water
    currentTime = millis();
  } 

  void display() { //function for displaying the shark
    image(shark, loc.x, loc.y);
  }

  void move() { //function for making shark move laterally
    loc.x+=2; //move shark 2 ixels to the right
    if (loc.x - shark.width/2 >= width) { //if the shark moves beyond the right of the screen
      loc.x = -100;
      loc.y = random(height/5, height-height/5); //create a new shark on the left at random height
    }
  }
  //  void die(Student s) {
  void check(Student s, Over o) {
    if (s.loc.x >= (loc.x - shark.width/2+20) && s.loc.x <= (loc.x + shark.width/2-20) && s.loc.y >= (loc.y - shark.height/2 + 20) && s.loc.y <= (loc.y + shark.height/2-20)) { //if the person touches the shark
      s.alive = false; //kill the person by turning its show boolean off
//      win=false;
      level=9;
     //o.over = true; //put the game over screen on
    }
  }
}
class Student { //start class for the diver
  PImage kid;   //declare variables needed
  PImage kidLeft;
  PVector loc, vel, acc;
  float scale = .25; // .342857142;
  float scale1 = 1; //1;
  boolean right = true;
  boolean alive = true;

  Student() {
    kid = loadImage("diver.png"); //image of diver
    kidLeft = loadImage("DiverLeft.png"); //image of diver facing left
    loc = new PVector(width/2, height/5 - 20);
    for (int i = 0; i< 5; i++) //if when the game first loads, a shark is on the diver, it moves so the diver doesn't die unfairly
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
    kid.resize(int(kid.width * scale), int(kid.height * scale)); //resize the diver
    kidLeft.resize(int(kid.width * scale1), int(kid.height * scale1)); //resize the diver that faces left
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
    if (keyPressed && key == 's') { //move diver down
      if (loc.y < height-height/7) { //dont let diver go beyond screen 
        loc.y += 4;
        right = true;
      }
    } 
    if (keyPressed && key == 'w') { //move diver up
      if (loc.y > height/4 - 50d) { //dont let diver go beyond water line
        loc.y -= 4;
        right = true;
      }
    }
    if (keyPressed && key == 'a') { //move diver left and switch to diver picture facing left
    if(loc.x >= 0) {
      loc.x -=4;
      image(kidLeft, loc.x, loc.y);
      right = false;
    }
    }
    if (keyPressed && key == 'd') { //move diver right
    if(lox.x <= width) {
      loc.x += 4;
      right = true;
    }
    }
  }
}

