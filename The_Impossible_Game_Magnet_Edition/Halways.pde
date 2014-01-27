int rew=425;  //declare miscellaneous variables
int wide=500;
int high=500;
int starth=0;
int rw1=450, rh1=450, rw2=300, rh2=375, rr3=75;
boolean hallwayscreen;
//int gamelevel=0;

Teacher t1; //Names t1 whic`h is assigned to the Teacher class
Studenth s1h;  //Names s1 which is assigned to the Student class
class Hallway {
  Hallway() {
    t1 = new Teacher();      //Establishes the various names for the clases as new members of the class.
    s1h = new Studenth();      //Establishes the various names for the clases as new members of the class.
    hallwayscreen=false;        //Sets hallwayscreen boolean to false
    size(wide, high);
    rectMode(CENTER);
    textAlign(CENTER);
    colorMode(HSB, 360, 100, 100, 100);
  }
  void Hallwayload() {
    if (hallwayscreen) {
      text("hahaha", 500/2, 500/2+200);
    }
    if (!hallwayscreen) {
      if (s1h.gamelevel==0) {
        if (mousePressed) {
          if (mouseX>3*500/4 && mouseY>3*500/4 && mouseX<3*500/4+rr3 && mouseY<3*500/4+rr3) {
            starth++;
          }
        }
        if (starth == 0) {    //If hallway game is starting
          background(50, 100, 100);  
          fill(125, 100, 100);
          rect(500-500/8, 500-500/8, rr3, rr3);
          fill(0);
          textSize(45);
          text("Click the box to start!", 500/2, 500/2);
          textSize(25);
          text("Get to the other green square, \n but dont touch the teachers!", 500/2, 500/2+500/8);
        }

        if (starth>0) { //If game start is not up
          background(360, 0, 0);
          fill(360, 100, 100);
          rect(500/2, 500/2, rw1, rh1);
          fill(0);
          rect(500/2, 500/2+500/12.5, rw2, rh2);
          fill(125, 100, 100);
          rect(500-500/8, 500-500/8, rr3, rr3);
          fill(125, 100, 100);
          rect(500/8, 500-500/8, rr3, rr3);
          fill(0, 0, 100);
          text("Click the other \n green box.", 500/2, 500/2);
          t1.showt();       //Calls appropriate functions
          s1h.shows();
          s1h.touch(t1);
        }
      }
    }
  }
}

