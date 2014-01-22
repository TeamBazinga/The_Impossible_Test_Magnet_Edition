int x;
int y;
int r;
int wide;
int high;
int starth;
 
 
Teacher t1;
Student s1;
void setup() {
  starth = 0;
  high=500;
  wide=500;
  t1 = new Teacher();
  s1 = new Student();
  r=425;
  size(wide,high);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
  
  if(mousePressed){
    if(mouseX>3*width/4 && mouseY>3*height/4){
    starth++;
    }
  }
if(starth ==0){
  
background(125,100,100);  
}
if(starth>0){
  background(360, 0,0);
  fill(360,100,100);
  rect(width/2,height/2,450,450);
  fill(0);
  rect(width/2,height/2,300,300);
  t1.showt();
  s1.shows();
}
}

