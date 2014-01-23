class Treasure {
 PVector loc;
 PImage backpack;
 boolean show = true; // boolean for showing the homework (treasure)
 float scale = 1;
 
 
 Treasure() {
  loc = new PVector(random(width), (height - height/7 -30));
  backpack= loadImage("backpack.png");
  backpack.resize(int(backpack.width * scale), int(backpack.height * scale)); //resize the picture to fit better
 } 
 
 void display() {
   imageMode(CENTER);
    if(show) {
   image(backpack,loc.x,loc.y,140,160);
    }
 }
 
 void check(Student s) {
  if(s.loc.x >= loc.x - 50 && s.loc.x <= loc.x + 50 && s.loc.y >= loc.y - 60) { //if the diver touches the homework
     show = false; // do not show the homework anymore
  }
 }
}
