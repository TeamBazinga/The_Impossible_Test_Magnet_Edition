class Student {
  int d, d2, o, tlth, rdrw, rdrnw;
  int gamelevel=0;
  PVector loc;
  Student() {
    d=15;
    rdrw = width/2+width/3;
    rdrnw= width/2-width/3;
    d2=25;
    tlth=height/2-(height/3);
    o=40;
    loc = new PVector(mouseX, mouseY);
  }

  void shows() {
    loc = new PVector(mouseX, mouseY);
    fill(204, 53, 95);
    ellipse(loc.x, loc.y, d, d);
  }

  void touch(Teacher t) {
    if (loc.x+d/2>width-width/20 || loc.x-d/2<width/20 || loc.y+d/2>height-height/20 || loc.y-d/2<height/20 || (loc.x-d/2<width/2+rw2/2 && loc.x+d/2>width/2-rw2/2 && loc.y+d/2>100)) {
      mainscreen = true;
    }
    if (dist(loc.x, loc.y, t.loc2.x, tlth)< 20 || dist(loc.x, loc.y, t.loc1.x, (tlth)-o)< 20 || dist(loc.x, loc.y, rdrw, t.loc2.y)< 20 || dist(loc.x, loc.y, rdrw+40, t.loc2.x)< 20 || dist(loc.x, loc.y, rdrnw-o, t.loc2.y)< 20 || dist(loc.x, loc.y, rdrnw, t.loc2.x)< 20) {
      mainscreen = true;
    }
    if (loc.y-d2/2>width-100 && loc.x<width/2) {
      gamelevel++;
    }
  }
}
