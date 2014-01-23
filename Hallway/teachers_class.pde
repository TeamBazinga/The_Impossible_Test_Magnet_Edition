class Teacher {

  float d, h;
  PVector loc1, loc2;
  PVector vel1;
  float tlth,rdrw,rdrnw;
  float o;
  Teacher() {
    size(wide, high);
    tlth = height/2-(height/3);
    rdrw = width/2+width/3;
    rdrnw= width/2-width/3;
    loc1 = new PVector (width/2, height/2);
    loc2 = new PVector (width/2, height/2);
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


    if (loc1.x>width-(width/4) || loc1.x <0+(width/4)) {
      vel1.x=-vel1.x;
      vel1.y=-vel1.y;
    }

    if (loc1.y>height-(height/4) || loc1.y < 0 + (height/4)) {
      vel1.y=-vel1.y;
      vel1.x=-vel1.x;
    }
  }
}

