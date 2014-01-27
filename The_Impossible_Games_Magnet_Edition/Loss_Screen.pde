int oldytimers;
class Loss {
  Loss() {
  }
  void load(Treasure t) {
    oldytimers= millis();
    rectMode(CENTER);
    textSize(20);
    background(0);
    text("You Lose!!", width/2, height/2);
    fill(360);
    rect(width/2, height/2+100, 300, 60);
    fill(360, 100, 100);
    text("Play Again", width/2, height/2+100);
    if (mousePressed && mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2+70 && mouseY < height/2+130) {
      level=4;
//      win=false;
//      tr.show=true;
//      stu.alive=true;
//      istime=false;
//      level=1;

      //for (int i = 6; i< 0; i--) //add new sharks up to 5 sharks
      //{
      //sharks.remove(i);
      //println(sharks.size());
      //}
      istart=false;//all beginnings are false
  checktime=false;
  istart2=false;
  gstart=true;//we have begun
  ctime=millis();//begin countdown
  Myrtle.mloc = new PVector(width/20, 50);
  //Gatsby2.loop();
 // Gatsby2.noLoop();
  Gatsby1.jump(0.0);
  Gatsby1.pause();
  Gatsby2.jump(0.0);
  Gatsby2.pause();
  //Gatsby1.noLoop();
    }
  }
}

