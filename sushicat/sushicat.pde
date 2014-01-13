Teacherclick t;
void setup(){
  t = new Teacherclick() ;
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
}
void draw()
{
  t.display();
}

boolean sketchFullScreen() {
  return true;
}

