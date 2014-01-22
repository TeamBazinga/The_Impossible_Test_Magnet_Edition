class Teacher {

  float d, h;
  PVector loc1, loc2;
  PVector vel1;
  Teacher() {
    size(wide, high);
    loc1 = new PVector (width/2, height/2);
    loc2 = new PVector (width/2, height/2);
    vel1 = new PVector (2, -2);
    d=25;
    h=d/1.5;
  }
  void showt() {

    fill(125, 100, 100);
    //bottom right
    ellipse(loc1.x, height/2+(height/3), d, d);
    //top left
    ellipse(loc2.x, height/2-(height/3), d, d);    
    //top right
    ellipse(loc1.x, height/2-(height/3)-40, d, d); 
    //bottom left
    ellipse(loc2.x, height/2+(height/3)+40, d, d);
    //right up
    ellipse(width/2+(width/3)+40, loc2.x, d, d);
    //right down
    ellipse(width/2+(width/3), loc2.y, d, d);
    //left down
    ellipse(width/2-(width/3)-40, loc2.y, d, d);
    //left up
    ellipse(width/2-(width/3), loc2.x, d, d);

    fill(34, 94, 47);
    //bottom right
    ellipse(loc1.x, height/2+(height/3), h, h);
    //top left
    ellipse(loc2.x, height/2-(height/3), h, h);    
    //top right
    ellipse(loc1.x, height/2-(height/3)-40, h, h); 
    //bottom left
    ellipse(loc2.x, height/2+(height/3)+40, h, h);
    //right up
    ellipse(width/2+(width/3)+40, loc2.x, h, h);
    //right down
    ellipse(width/2+(width/3), loc2.y, h, h);
    //left down
    ellipse(width/2-(width/3)-40, loc2.y, h, h);
    //left up
    ellipse(width/2-(width/3), loc2.x, h, h);

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

