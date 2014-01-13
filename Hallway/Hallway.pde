int x;
int y;
int r;
int wide;
int high;

Teacher t1;
void setup() {
  high=500;
  wide=500;
  t1 = new Teacher();
  r=425;
  size(wide,high);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
  background(360, 100, 100);
  fill(0);
  rect(0,0,r,r/2);
  rect(width,0,r,r/2);
  rect(0,height,r,r/2);
  rect(width,height,r,r/2);
  t1.show();
}

