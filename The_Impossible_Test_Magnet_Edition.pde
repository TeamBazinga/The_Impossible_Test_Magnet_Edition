ArrayList<car> traffic;
int time;
void setup()
{
  colorMode(HSB,360,100,100);
  size(displayWidth,displayHeight);
  traffic= new ArrayList<car>();
  traffic.add(new car());
  time=0;
}
void draw()
{
  
  for (int i = traffic.size()-1; i >= 0; i--) {
    car auto = traffic.get(i);
    auto.display();
    if(millis()-time>500)
    {
      traffic.add(new car());
      time= millis();
    }
    //if (ball.finished()) {
      // Items can be deleted with remove().
      //balls.remove(i);
    //}
  }
}

boolean sketchFullScreen() {
  return true;
}
