ArrayList<car> traffic;
int time;
Myrtle_Frogger Myrtle;
boolean start;

void setup()
{
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  size(displayWidth, displayHeight);
  traffic= new ArrayList<car>();
  traffic.add(new car());
  time=0;
  Myrtle = new Myrtle_Frogger();
  frameRate(30);
  start=true;
}
void draw()
{
  background(0);
  for (int i = traffic.size()-1; i >= 0; i--) {
    car auto = traffic.get(i);
    auto.display();
    if (auto.cloc.x > displayWidth+100 || auto.cloc.x<-100)
    {
      traffic.remove(i);
    }
  }
  if (millis()-time>500)
  {
    traffic.add(new car());
    time= millis();
  }
  for (int i = traffic.size()-1; i >= 0; i--) {
    if(Myrtle.isdead(i)==true)
    {
      start=false;
    }
    
      
    }
  if (start==true)
  {
    Myrtle.move();
    Myrtle.display();
  }
}


boolean sketchFullScreen() {
  return true;
}

