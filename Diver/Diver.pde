Student s;

void setup() {
  colorMode(HSB,360, 100, 100, 100);
  size(displayWidth, displayHeight);
  s = new Student();
 
}

void draw() {
  background(229, 70, 87);
  s.display();
  s.move();
}
