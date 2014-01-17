class Treasure {
 PVector loc;
 PImage homework;
 boolean show = true; // boolean for showing the homework (treasure)
 float scale = 1;
 
 
 Treasure() {
  loc = new PVector(random(width), (height - height/7));
  homework = loadImage("homework.png");
  homework.resize(int(homework.width * scale), int(homework.height * scale)); //resize the picture to fit better
 } 
 
 void display() {
   imageMode(CENTER);
    if(show) {
   image(homework, loc.x, loc.y);
    }
 }
 
 void check(Student s) {
  if(s.loc.x >= loc.x - homework.width/2 && s.loc.x <= loc.x + homework.width/2 && s.loc.y >= loc.y - homework.height/2) { //if the diver touches the homework
     show = false; // do not show the homework anymore
  }
 }
}
