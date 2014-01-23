boolean level;
class Startscreen {

  Startscreen() {
    level= false;
  }
  void load() {
    background(0);
    fill(360);
    rect(width/2, height/2+50, 300, 80);
    rect(width/2, height/2-50, 300, 80);
    fill(0, 100, 100);
    text("Start", width/2, height/2-50);
    text("Level Select", width/2, height/2+50);
    if (mousePressed && mouseY> height/2+65 && mouseY< height/2+15 && mouseX>width/2-150 && mouseX< width/2+150) {
      level= true;
    }
    if (level) {
      rect(50, 50, 50, 50);
    }
    println(level);
  }
}

