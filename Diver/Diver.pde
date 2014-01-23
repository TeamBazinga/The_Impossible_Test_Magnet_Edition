Student s;
ArrayList<Shark> sharks;
Treasure t;
Over o;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(displayWidth, displayHeight);
  s = new Student();
  
  sharks = new ArrayList<Shark>();
  for(int i = 0; i< 6; i++)
  {
  sharks.add(new Shark());
  }
  t = new Treasure();
  o = new Over();
  
}

void draw() {
  rectMode(CENTER);
  noStroke();
  background(229, 70, 87);
  fill(212, 56, 98);
  rect(0, 0, width+10000, height/4);
  fill(46, 56, 98);
  rect(0, height - height/7, width+10000, height/7);
  if (s.alive) {
    s.display();
    s.move();
  }
  
  for( int i = sharks.size(); i >0; i--)
  {
    Shark bruce = sharks.get(i-1);
    bruce.display();
    bruce.move();
    bruce.check(s,o);
  }
  
  //sh.display();
  //sh.move();
  t.display();
  t.check(s);
  if(o.over) {
  o.display();
  }
  //sh.check(s, o);
  o.button(s);
}

