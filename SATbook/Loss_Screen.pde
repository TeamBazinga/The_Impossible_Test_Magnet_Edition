class Loss {
  Loss() {
  }
  void load() {
    textSize(20);
    background(0);
    text("You Lose!!", width/2, height/2);
    fill(360);
    rect(width/2, height/2+100, 300, 60);
    fill(360, 100, 100);
    text("Play Again", width/2, height/2+100);
    if (mousePressed && mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2+70 && mouseY < height/2+130) {
      level=1;
    }
  }
}

