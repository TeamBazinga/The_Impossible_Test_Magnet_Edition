int r=425;  //declare miscellaneous variables
int wide=500;
int high=500;
int starth=0;
int rw1=450, rh1=450, rw2=300, rh2=375, rr3=75;
boolean mainscreen;
int gamelevel=0;

Teacher t1; //Names t1 which is assigned to the Teacher class
Student s1;  //Names s1 which is assigned to the Student class
void setup() {
  t1 = new Teacher();      //Establishes the various names for the clases as new members of the class.
  s1 = new Student();      //Establishes the various names for the clases as new members of the class.
  mainscreen=false;        //Sets mainscreen boolean to false
  size(wide, high);
  rectMode(CENTER);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
  if (mainscreen) {
    text("hahaha", width/2, height/2);
  }
  if (!mainscreen) {
    if (s1.gamelevel==0) {
      if (mousePressed) {
        if (mouseX>3*width/4 && mouseY>3*height/4) {
          starth++;
        }
      }
      if (starth ==0) {
        background(50, 100, 100);  
        fill(125, 100, 100);
        rect(width-width/8, height-height/8, rr3, rr3);
        textSize(45);
        text("Click the box to start!", width/2, height/2);
        textSize(25);
        text("Get to the red square, but dont touch the teachers!", width/2, height/2+height/8);
      }

      if (starth>0) {
        background(360, 0, 0);
        fill(360, 100, 100);
        rect(width/2, height/2, rw1, rh1);
        fill(0);
        rect(width/2, height/2+height/12.5, rw2, rh2);
        fill(125, 100, 100);
        rect(width-width/8, height-height/8, rr3, rr3);
        fill(125, 100, 100);
        rect(width/8, height-height/8, rr3, rr3);
        t1.showt();
        s1.shows();
        s1.touch(t1);
      }
    }
  }
}

boolean sketchFullScreen() //full screen
{
  return true;
}

