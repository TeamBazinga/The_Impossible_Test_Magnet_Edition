//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare integers
int rectx = 250;
int recty = 325;
int oldTime = 0;

void setup()
{
  size(displayWidth, displayHeight);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  h = new Hand();
}

void draw()
{
  background(0);
  if (millis() - oldTime >= 500)
  {
    papers.add(new Paper());
    for (int i = papers.size() - 1; i >= papers.size() - 4; i--) {
      Paper p = papers.get(i);
      p.show();
    }
  }
  //hand
  h.show();
}

