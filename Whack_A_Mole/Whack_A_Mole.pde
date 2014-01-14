//NOTE TO GROUP
//FOR MY PROGRAM, IF DISPLAY SIZE CHANGES, STUFF IS NOT CENTERED. SHOULD WE DEFINE EVERYTHING FROM WIDTH/2, HEIGHT/2??????


//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare integers
int rectx = 200;
int recty = 260;
int oldTime = 0;
boolean papershow = false;

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
  if (millis() - oldTime >= 1000)
  {
    papershow = true;
  }
  if (millis() - oldTime >= 1500)
  {
    papershow = false;
    oldTime = millis();
  }
  if (papershow)
  {
    papers.add(new Paper(0));
    papers.add(new Paper(width/4));
    papers.add(new Paper(width/2));
    for (int i = 0; i < 3; i++) {
      Paper p = papers.get(i);
      p.show();
    }
  }
  //hand
  h.show();
}

