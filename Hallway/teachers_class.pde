class Teacher {

int d;
PVector loc1;
PVector vel;
  Teacher() {
    size(wide,high);
    loc1 = new PVector (width/2,height/2);
    loc2 = 
    vel = new PVector (5,0);
    d=25;
  }
  void show(){
       fill(125,100,100);
    ellipse(loc.x,loc.y+(width/6),d,d);
    ellipse(loc.x,loc.y-(width/6),d,d);    

    loc.x+=vel.x;
   
    if (loc.x>width-(width/4) || loc.x <0+(width/4)){
     vel.x=-vel.x; 
    }
  }
}

