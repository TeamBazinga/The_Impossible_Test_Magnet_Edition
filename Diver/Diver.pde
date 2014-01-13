Student s;
Shark sh;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(displayWidth, displayHeight);
  s = new Student();
  sh = new Shark();
}

void draw() {
  //  rectMode(CENTER);
  noStroke();
  background(229, 70, 87);
  fill(212, 56, 98);
  rect(0, 0, width, height/4);
  fill(46,56,98);
  rect(0, height - height/7, width, height/7);
  s.display();
  s.move();
  sh.display();
  sh.move();
}

