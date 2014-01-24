Raindropss r;
int level;
void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER);
  r= new Raindropss();
}
void draw() {
  println(level);
  r.load();
}

boolean sketchFullScreen() {
  return true;
}

