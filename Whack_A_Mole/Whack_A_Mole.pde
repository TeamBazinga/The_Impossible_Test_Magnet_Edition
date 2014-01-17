//declare an ArrayList
ArrayList<Paper> papers = new ArrayList<Paper>();
//declare class objects
Hand h;
//declare dimension integers
int paperx;
int papery;
//declare time integers
int time;
int score1, score2, score3;
int start1, start2, start3;
int end1, end2, end3;
int mode;
//declare booleans
boolean papershow;

void setup()
{
  size(displayWidth, displayHeight);
  textSize(30);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  background(0);
  h = new Hand();
  papershow = false;
  paperx = 200;
  papery = 260;
  mode = 0;
}

void draw()
{
  time = millis();
  background(0);
  //PLAYING MODE
  if (mode == 1)
  {
    background(0);
    fill(129, 82, 66);
    text("GO!", width/2, 4*height/5);
    if (millis() - start1 >= 1000)
    {
      papershow = true;
    }
    //stop the first level
    if (mousePressed && mode == 1)
    {
      end1 = time;
      papershow = false;
      mode++;
    }
  }
  if (mode == 3)
  {
    background(0);
    fill(129, 82, 66);
    text("GO!", width/2, 4*height/5);
    if (millis() - start2 >= 1000)
    {
      papershow = true;
    }
    //stop the first level
    if (mousePressed && mode == 3)
    {
      end2 = time;
      papershow = false;
      mode++;
    }
  }
    if (mode == 5)
  {
    background(0);
    fill(129, 82, 66);
    text("GO!", width/2, 4*height/5);
    if (millis() - start3 >= 1000)
    {
      papershow = true;
    }
    //stop the first level
    if (mousePressed && mode == 5)
    {
      end3 = time;
      papershow = false;
      mode++;
    }
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
  score1 = end1 - start1;
  score2 = end2 - start2;
  score3 = end3 - start3;
  text(score1, width/4, height/2);
  text(score2, 2*width/4, height/2);
  text(score3, 3*width/4, height/2);
  println(mode);
  //hand
  h.show();
}

void keyPressed()
{
  if (key == ' ')
  {
    mode++;
    if (mode == 1)
    {
      start1 = time;
    }
    if (mode == 3)
    {
      start2 = time;
    }
    if (mode == 5)
    {
      start3 = time;
    }
  }
}

boolean sketchFullScreen()
{
  return true;
}

