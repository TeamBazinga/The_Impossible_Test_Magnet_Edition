class Over {
  boolean over;
  boolean push;
  PVector bLoc;
  int w = 300;
  int h = 200;



  Over() {
    over = false;
    push = false;
    bLoc = new PVector(width/2, height/2 + 200);
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
      text("Game Over", width/2, height/2);
    }
  }

  void button(Student s) {
    if (over) {
      rectMode(CENTER);
      rect(bLoc.x, bLoc.y, w, h);

      if (mousePressed && mouseX >= bLoc.x - w/2 && mouseX <= bLoc.x + w/2 && mouseY >= bLoc.y - h/2 && mouseY <= bLoc.y + h/2) {
        // push = true;
        s.alive = true;
        over = false; 
        s.loc.x = width/2;
        s.loc.y = height/5;
        
      }

      //      if (push = true) {
      //        s.alive = true;
      //        over = false; 
      //        s.loc.x = width/2;
      //        s.loc.y = height/5;
      //        println(push);
      //      }
    }
  }
}

