//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare integers
int paperx = 200;
int papery = 260;
int mode;
int oldTime;
boolean papershow = false;
int grade;
int timepassed;

void setup()
{
  size(displayWidth, displayHeight);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  h = new Hand();
  background(0);
}

void draw()
{
  if (mode == 0)
  {
    fill(0, 100, 100);
    ellipse(width/2, 4*height/5, 150, 150);
    fill(0);
    textSize(30);
    text("Space\nto Start", width/2, 4*height/5 - 15);
    if (keyPressed && key == ' ')
    {
      mode = 1;
      oldTime = millis();
    }
  }
  
  if (mode == 1)
  {
    background(0);
    text("GO!", width/2, 4*height/5);
    timepassed = millis();
    if (millis() - oldTime >= 1000)
    {
      papershow = true;
    }
    if (mousePressed)
    {
      papershow = false;
      grade = timepassed - 1000;
      oldTime = millis();
      mode = 0;
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
    fill(129, 82, 66);
    textSize(50);
    text(grade, width/2, 50);
    //hand
    h.show();
  }
}

boolean sketchFullScreen()
{
  return true;
}
