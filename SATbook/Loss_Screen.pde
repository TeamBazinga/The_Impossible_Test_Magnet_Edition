class Loss {
  Loss() {
  }
  void load() {
    rectMode(CENTER);
    textSize(20);
    background(0);
    text("You Lose!!", width/2, height/2);
    fill(360);
    rect(width/2, height/2+100, 300, 60);
    fill(360, 100, 100);
    text("Play Again", width/2, height/2+100);
    if (mousePressed && mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2+70 && mouseY < height/2+130) {
      level=1;
      win=false;
      tr.show=true;
      stu.alive=true;
      istime=false;
      //for (int i = 6; i< 0; i--) //add new sharks up to 5 sharks
      //{
        //sharks.remove(i);
        //println(sharks.size());
      //}
    }
  }
}

