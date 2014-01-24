Raindropss r1;
int level;
boolean win;

Startscreen s;
Teacherclick t;
void setup() {
  level=1;
    r1= new Raindropss();
  t = new Teacherclick() ;
  s= new Startscreen();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER);
  win= false;
}
void draw()
{
  s.load();
  if (level==5) {
    t.instructions();
    t.display();
  }
  if (level==8) {
    r1.load();
  }
}


boolean sketchFullScreen() {
  return true;
}

