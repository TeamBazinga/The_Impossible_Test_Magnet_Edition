
class Startscreen {

  Startscreen() {
  }
  void load() {
    println(level);
    if (level==1) {
      background(0);
      fill(360);
      rect(width/2, height/2+50, 300, 80);
      rect(width/2, height/2-50, 300, 80);
      fill(0, 100, 200);
      text("Start", width/2, height/2-50);
      text("Level Select", width/2, height/2+50);
      if (mousePressed && mouseY> height/2-65 && mouseY< height/2-15 && mouseX>width/2-150 && mouseX< width/2+150) {
        level=3;
      }
      if (mousePressed && mouseY< height/2+65 && mouseY> height/2+15 && mouseX>width/2-150 && mouseX< width/2+150) {
        level=2;
      }
    }
    if (level==2) {
      background(360);
      fill(0, 100, 100);
      rect(width/4, 100, 300, 80);
      rect(width/4, 300, 300, 80);
      rect(width/4, 500, 300, 80);
      rect(3*width/4, 100, 300, 80);
      rect(3*width/4, 300, 300, 80);
      rect(3*width/4, 500, 300, 80);
      fill(0, 0, 200);
      text("Hallways", width/4, 100);
      text("Diver", width/4, 300);
      text("SAT", width/4, 500);
      text("Myrtle Run", 3*width/4, 100);
      text("Whack-A-Grade", 3*width/4, 300);
      text("Raining", 3*width/4, 500);

      if (mousePressed && mouseY< 140 && mouseY> 60 && mouseX>width/4-150 && mouseX< width/4+150) {
        level=3;      
      }
       if (mousePressed && mouseY< 340 && mouseY> 260 && mouseX>width/4-150 && mouseX< width/4+150) {
        level=4;      
      }
       if (mousePressed && mouseY< 540 && mouseY> 460 && mouseX>width/4-150 && mouseX< width/4+150) {
        level=5;      
      }
      if (mousePressed && mouseY< 140 && mouseY> 60 && mouseX> 3*width/4-150 && mouseX< 3*width/4+150) {
        level=6;      
      }
      if (mousePressed && mouseY< 340 && mouseY> 260 && mouseX> 3*width/4-150 && mouseX< 3*width/4+150) {
        level=7;      
      }
      if (mousePressed && mouseY< 540 && mouseY> 460 && mouseX> 3*width/4-150 && mouseX< 3*width/4+150) {
        level=8;      
      }
    }
  }
}

