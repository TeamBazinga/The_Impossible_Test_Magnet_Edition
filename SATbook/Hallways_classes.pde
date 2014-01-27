class Studenth {
  float d, d2, o, tlth, rdrw, rdrnw;
  int gamelevel=0;
  PVector loc;
  Studenth() {
    d=15;
    rdrw = 500/2+500/3;
    rdrnw= 500/2-500/3;
    d2=25;
    tlth=500/2-(166.66);
    o=40;
    loc = new PVector(mouseX, mouseY);
  }

  void shows() {
    loc = new PVector(mouseX, mouseY);
    fill(204, 53, 95);
    ellipse(loc.x, loc.y, d, d);
  }

  void touch(Teacher t) {
//    if (loc.x+d/2>500-500/20 || loc.x-d/2<500/20 || loc.y+d/2>500-500/20 || loc.y-d/2<500/20 || (loc.x-d/2<500/2+rw2/2 && loc.x+d/2>500/2-rw2/2 && loc.y+d/2>100)) {
//      level=9;
//      starth=0;
//    }
//    if (dist(loc.x, loc.y, t.loc2.x, tlth)< 20 || dist(loc.x, loc.y, t.loc1.x, (tlth)-o)< 20 || dist(loc.x, loc.y, rdrw, t.loc2.y)< 20 || dist(loc.x, loc.y, rdrw+40, t.loc2.x)< 20 || dist(loc.x, loc.y, rdrnw-o, t.loc2.y)< 20 || dist(loc.x, loc.y, rdrnw, t.loc2.x)< 20) {
//      level=9;
//      starth=0;
//    }
    if (mousePressed) {
      if (loc.y-d2/2>500-100 && loc.x<500/2) {
        level=4;
      }
    }
  }
}


class Teacher {

  float d, h;
  PVector loc1, loc2;
  PVector vel1;
  float tlth,rdrw,rdrnw;
  float o;
  Teacher() {
    size(wide, high);
    tlth = 500/2-(500/3);
    rdrw = 500/2+500/3;
    rdrnw= 500/2-500/3;
    loc1 = new PVector (500/2, 500/2);
    loc2 = new PVector (500/2, 500/2);
    vel1 = new PVector (6, -6);
    d=25;
    o=40;
    h=d/1.5;
  }
  void showt() {

    fill(125, 100, 100);
    //top left
    ellipse(loc2.x, tlth, d, d);    
    //top right
    ellipse(loc1.x, tlth-o, d, d); 
    //right up
    ellipse(rdrw+o, loc2.x, d, d);
    //right down
    ellipse(rdrw, loc2.y, d, d);
    //left down
    ellipse(rdrnw-o, loc2.y, d, d);
    //left up
    ellipse(rdrnw, loc2.x, d, d);

    fill(34, 94, 47);
    //top left
    ellipse(loc2.x, tlth, h, h);    
    //top right
    ellipse(loc1.x, tlth-40, h, h); 
    //right up
    ellipse(rdrw+40, loc2.x, h, h);
    //right down
    ellipse(rdrw, loc2.y, h, h);
    //left down
    ellipse(rdrnw-40, loc2.y, h, h);
    //left up
    ellipse(rdrnw, loc2.x, h, h);

    loc1.x+=vel1.x;
    loc2.x+=vel1.y;
    loc2.y-=vel1.y;


    if (loc1.x>500-(500/4) || loc1.x <0+(500/4)) {
      vel1.x=-vel1.x;
      vel1.y=-vel1.y;
    }

    if (loc1.y>500-(500/4) || loc1.y < 0 + (500/4)) {
      vel1.y=-vel1.y;
      vel1.x=-vel1.x;
    }
  }
}

