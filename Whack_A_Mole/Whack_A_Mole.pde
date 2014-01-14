//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare integers
int paperx = 200;
int papery = 260;
int oldTime;
boolean papershow = false;
int grade;
int start;

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
  if (mode == 1)
  {
    background(0);
    start = millis();
    text(grade, width/2, 50);
    if (millis() - oldTime >= 1000)
    {
      papershow = true;
    }
    if (mousePressed)
    {
      papershow = false;
      oldTime = millis();
      grade = start;
    }
    if (papershow)
    {
      papers.add(new Paper(width/4 - paperx/2));
      papers.add(new Paper(width/2 - paperx/2));
      papers.add(new Paper(3*width/4 - paperx/2));
      for (int i = 0; i < 3; i++)
      {
        Paper p = papers.get(i);
        p.show();
      }
    }
    //hand
    h.show();
  }
}

