class Win {
  Win() {
  }
  void load() {
    textSize(20);
    background(0);
    fill(100,100,100);
    text("You Won!", width/2, height/2);
    fill(360);
    rect(width/2, height/2+100, 300, 60);
    fill(0);
    text("Back to Main Menu", width/2, height/2+100);
    if (mousePressed && mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2+70 && mouseY < height/2+130) {
      win=true;
      level=1;
    }
  }
}

