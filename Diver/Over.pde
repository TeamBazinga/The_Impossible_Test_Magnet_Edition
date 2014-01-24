class Over {
  boolean over; //boolean for game being over
  boolean push; //boolean for button being pressed
  PVector bLoc;
  int w = 300;
  int h = 200;



  Over() {
    over = false; //start game with over false
    push = false;
    bLoc = new PVector(width/2, height/2 + 200); //location of button
  } 

  void display() {
    if (over) {
      rectMode(CENTER);
      fill(255, 0, 0);
      //   rect(width/2, height/2, width, height); 
      fill(0);
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

