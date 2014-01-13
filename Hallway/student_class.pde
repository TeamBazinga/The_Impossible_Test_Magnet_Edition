class Student {
  float d;
  PVector loc;
  Student() {
    d=15;
    loc = new PVector(mouseX, mouseY);
  }

  void shows() {
    fill(204, 53, 95);
    ellipse(loc.x, loc.y, d, d);
  }
 
}

