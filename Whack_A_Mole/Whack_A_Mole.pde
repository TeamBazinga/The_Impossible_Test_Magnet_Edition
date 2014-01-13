//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare integers
int rectx = 250;
int recty = 325;

void setup()
{
  size(displayWidth, displayHeight);
  h = new Hand();
  colorMode(360, 100, 100, 100);
  imageMode(CENTER);
}

void draw()
{
  background(0);
  //hand
  h.show();
  if (millis() - oldTime >= 500)
  {
    oldTime = millis();
    papers.add(new Paper());
  }
}
