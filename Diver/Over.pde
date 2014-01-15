class Over {
 boolean over;
 
 Over() {
  over = false;
 } 
 
 void display() {
  if(over) {
   rectMode(CENTER);
   fill(255,0,0);
  rect(width/2, height/2, width, height); 
  fill(0);
  rect(width/2, height/2, 300, 200);
  textMode(CENTER);
  fill(255);
  text("Game Over", width/2, height/2);
 }
 }
}
