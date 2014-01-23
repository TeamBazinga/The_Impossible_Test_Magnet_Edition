Startscreen s;
Teacherclick t;
void setup(){
  t = new Teacherclick() ;
  s= new Startscreen();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER);
}
void draw()
{
  s.load();
//  t.instructions();
//  t.display();
}

boolean sketchFullScreen() {
  return true;
}

