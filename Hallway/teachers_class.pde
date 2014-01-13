class Teacher {

  int d;
  PVector loc1, loc2, loc3, loc4;
  PVector vel1, vel2, vel3, vel4;
  Teacher() {
    size(wide, high);
    loc1 = new PVector (width/2, height/2);
    loc2 = new PVector (width/2, height/2);
    loc3 = new PVector (width/2, height/2);
    loc4 = new PVector (width/2, height/2);
    vel1 = new PVector (5, 5);
    vel2 = new PVector (5, 5);
    vel3 = new PVector (5, 5);
    vel4 = new PVector (5, 5);
    d=25;
  }
  void show() {
    fill(125, 100, 100);
    //top right
    ellipse(loc1.x, loc1.y+(width/3), d, d);
    //top left
    ellipse(loc2.x, loc2.y-(width/3), d, d);    
    //bottom right
    ellipse(loc1.x, loc1.y-(width/3)-40, d, d); 
    //bottom left
    ellipse(loc2.x, loc2.y+(width/3)+40, d, d);
    //right up
    ellipse(loc3.x+(width/3)+40, loc3.y, d, d);
    //right down
    ellipse(loc4.x+(width/3), loc4.y, d, d);
    //left up
    ellipse(loc3.x-(width/3)-40, loc3.y, d, d);
    //left down
    ellipse(loc4.x-(width/3), loc4.y, d, d);

loc1.x+=vel1.x;
loc2.x-=vel2.x;
loc3.y+=vel3.y;
loc4.y-=vel4.y;

    if (loc1.x>width-(width/4) || loc1.x <0+(width/4)) {
      vel1.x=-vel1.x;
    }
    if (loc2.x>width-(width/4) || loc2.x <0+(width/4)) {
      vel2.x=-vel2.x;
    }
    if (loc3.y >height-(height/4) || loc3.y <0+(height/4)){
    vel3.y=-vel3.y;  
    }
     if (loc4.y >height-(height/4) || loc4.y <0+(height/4)){
    vel4.y=-vel4.y;  
    }
    
  }
}

