class Shark { 
  PImage shark;
  PVector loc, vel, acc;

  Shark() {
    shark = loadImage("shark.png"); //load image of shark
    loc = new PVector((random(width)), random(height/5, height-height/5)); //shark has random width but must be in water

  } 

  void display() { //function for displaying the shark
    image(shark, loc.x, loc.y);
  }

  void move() { //function for making shark move laterally
    loc.x+=2; //move shark 2 ixels to the right
    if (loc.x - shark.width/2 >= width) { //if the shark moves beyond the right of the screen
      loc.x = -100;
      loc.y = random(height/5,height-height/5); //create a new shark on the left at random height
    }
  }
//  void die(Student s) {
void check(Student s, Over o) {
  if(s.loc.x >= (loc.x - shark.width/2+20) && s.loc.x <= (loc.x + shark.width/2 - 20) && s.loc.y >= (loc.y - shark.height/2 + 20) && s.loc.y <= (loc.y + shark.height/2 -20)) { //if the person touches the shark
    s.alive = false; //kill the person by turning its show boolean off
    win=false;
    o.over = true; //put the game over screen on 
  }


}

}

