class Treasure {
 PVector loc;
 PImage backpack;
 boolean show = true; // boolean for showing the homework (treasure)
 float scale = 1;
 
 
 Treasure() {
  loc = new PVector(random(width), (height - height/7 -30)); //location of backpack is random width but must be along sand line
  backpack= loadImage("backpack.png"); //load the image of the backpack
  backpack.resize(int(backpack.width * scale), int(backpack.height * scale)); //resize the picture to fit better
 } 
 
 void display() { //function to display the backpack
   imageMode(CENTER);
    if(show) { //if the treasure is still there
   image(backpack,loc.x,loc.y,140,160); //show the backpack
    }
 }
 
 void check(Student s) { //function to check if diver is touching backpack
  if(s.loc.x >= loc.x - 50 && s.loc.x <= loc.x + 50 && s.loc.y >= loc.y - 60) { //if the diver touches the homework
     show = false; // do not show the backpack anymore
  }
 }
}
