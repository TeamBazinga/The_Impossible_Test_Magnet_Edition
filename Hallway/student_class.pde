class Student {
  int d,d2;
  PVector loc,loc1;
  Student() {
    d=15;
    d2=25;
    loc = new PVector(mouseX, mouseY);
    loc1 = new PVector(lx,ly);
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
    if( dist(loc.x+d/2,loc.y+d/2,loc1.x+d2/2,loc1.y+d2/2) > (d2/2+d/2)){
  mainscreen = true;
  }
  
  }
}

