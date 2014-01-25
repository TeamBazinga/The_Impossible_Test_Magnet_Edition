Raindropss r1;
int level;
boolean win;
Loss l;
Startscreen s;
Teacherclick t;
Win w;
void setup() {
  level=1;
  r1= new Raindropss();
  t = new Teacherclick() ;
  s= new Startscreen();
  l= new Loss();
  w= new Win();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER);
//  win=true;
  win= false;//only lets level select if win once
}
void draw()
{
  if (level==1 || level==2) {
    s.load();
  }
  if (level==5) {
    t.instructions();
    t.display();
  }
  if (level==8) {
    r1.load();
  }
  if (level==9) {
    l.load();
  }
  if (level==10) {
    w.load();
  }
}


boolean sketchFullScreen() {
  return true;
}

