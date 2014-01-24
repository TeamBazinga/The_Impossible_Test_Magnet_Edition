int level;
Startscreen s;
Teacherclick t;
void setup(){
  level=1;
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
  if(level==5){
  t.instructions();
  t.display();
  }
}

boolean sketchFullScreen() {
  return true;
}

