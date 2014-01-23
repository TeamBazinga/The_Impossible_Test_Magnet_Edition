Student s;
ArrayList<Shark> sharks;
Treasure t;
Over o;
boolean win;
float timer;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(displayWidth, displayHeight);
  sharks = new ArrayList<Shark>();
  for(int i = 0; i< 5; i++)
  {
  sharks.add(new Shark());
  }
  s = new Student();
  t = new Treasure();
  o = new Over();
  timer = 30000;
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
  if(t.show==true && s.loc.y ==(height/5))
  {
    win = true;
    println(win);
  }
  if(o.over) {
  o.display();
  }
  //sh.check(s, o);
  o.button(s);
  fill(220,0,100);
  rectMode(LEFT);
  textAlign(LEFT);
  textSize(30);
  rect(0,75,((timer-millis())/30000)*200,30);
  fill(54,5,74);
  text("Oxygen",0,65);
  rectMode(CENTER);
  if(millis() > timer)
  {
    win= false;
    s.alive=false;
    o.over = true;
  }
  println(timer-millis());
}

