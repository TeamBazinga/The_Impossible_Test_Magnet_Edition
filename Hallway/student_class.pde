class Student {
  float d;
  PVector loc;
  Student() {
    d=15;
    loc = new PVector(mouseX, mouseY);
  }

  void shows() {
    loc = new PVector(mouseX, mouseY);
    fill(204, 53, 95);
    ellipse(loc.x, loc.y, d, d);
  }
  
  void touch(){
   if(loc.x+d/2>width-width/20 || loc.x-d/2<width/20 || loc.y+d/2>height-height/20 || loc.y-d/2<height/20 || (loc.x-d/2<width/2+rw2/2 && loc.x+d/2>width/2-rw2/2 && loc.y+d/2>100)){
   mainscreen = true;  
  }
  }
}

