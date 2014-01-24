Student s;
ArrayList<Shark> sharks;//declare an array list of sharks 
Treasure t;
Over o;
boolean win;
float timer;

void setup() {
  colorMode(HSB, 360, 100, 100, 100); //set color mode to HSB
  size(displayWidth, displayHeight); //size is full screen
  sharks = new ArrayList<Shark>(); //initialize sharks array list
  for(int i = 0; i< 5; i++) //add new sharks up to 5 sharks
  {
  sharks.add(new Shark());
  }
  s = new Student(); //declare classes used 
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
  if (s.alive) { //if the diver has not died
    s.display(); //show diver
    s.move(); //move diver
  }
  
  for( int i = sharks.size(); i >0; i--) //for loop to call all functions for all sharks
  {
    Shark bruce = sharks.get(i-1); //add another shark
    bruce.display(); //show the shark
    bruce.move(); //move the shark
    bruce.check(s,o); //check to see if diver is touching shark
  }
  

  t.display(); //show the backpack
  t.check(s); //check if diver is touching backpack
  if(t.show==true && s.loc.y ==(height/5)) //if the diver picked up the backpack and made it to the top of the water
  {
    win = true; //the diver wins
    println(win);
  }
  if(o.over) { //if the diver lost
  o.display(); //show the game over screen
  }
  //sh.check(s, o);
  o.button(s); // show the play again button
  fill(220,0,100);
  rectMode(LEFT);
  textAlign(LEFT);
  textSize(30);
  rect(0,75,((timer-millis())/30000)*200,30); //rectangle that gets smaller as time runs out
  fill(54,5,74);
  text("Oxygen",0,65); //write oxygen on the box
  rectMode(CENTER);
  if(millis() > timer) //game over if run out of time
  {
    win= false; //winning boolean is on
    s.alive=false; //the diver is no longer alive
    o.over = true; //over screen shows up
  }
  println(timer-millis());
}

