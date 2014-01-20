ArrayList<Paper> papers = new ArrayList<Paper>();        //declare an ArrayList
Hand h;        //declare class objects
int paperx;        //declare dimension integers
int papery;
int time;        //declare time integers
int score1, score2, score3, avgscore;
int start1, start2, start3;
int end1, end2, end3;
int delay;
int mode;        //0 is the start screen. 1,3, and 5 are for playing. 2 and 4 are for pausing in between levels 
boolean papershow;        //declare booleans

void setup()
{
  size(displayWidth, displayHeight);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  background(0);
  h = new Hand();
  papershow = false;        //set papershow to false so it doesn't run in the beginning
  paperx = 200;
  papery = 260;
  mode = 0;
  delay = 1000;
}

void draw()
{
  time = millis();        //create a variable to keep track of time
  background(0);
  if (mode == 0 || mode == 2 || mode == 4)        //START SCREEN
  {
    fill(245, 100, 100);        //blue fill for instructions button
    ellipse(width/2, 4*height/5, 200, 200);        //instructions button
    fill(0, 0, 100);
    textSize(30);
    text("Instructions", width/2, 4*height/5);
    fill(0, 100, 100);        //red fill for go button
    rect(width/2 - 150, height/3, 300, 100);        //go button
    fill(0, 0, 100);
    text("Space to Start", width/2, height/3 + 50);
    if (mode > 1)
    {
      text("Level 1 Score", width/4, 100);        //display level 1 score if level 1 is over
      text(score1, width/4, 150);
    }
    if (mode > 3)
    {
      text("Level 2 Score", width/2, 100);        //display level 2 score if level 2 is over
      text(score2, width/2, 150);
    }
    if (mousePressed && dist(mouseX, mouseY, width/2, 4*height/5) <= 100)        //if the user is clicking on the instructions button
    {
      background(0);
      text("One second after the game starts, three papers will pop up.\nAn A will be on one of them.\nClick the paper containing the A as quickly as possible.\nYOU NEED BELOW 450 TO WIN.", width/2, 200);
    }
  }
  textSize(50);
  if (mode == 1)        //LEVEL 1
  {
    background(0);
    fill(129, 82, 66);        //green fill for "GO!"
    text("GO!", width/2, 4*height/5);
    if (millis() - start1 >= delay)        //1 second after the user presses space to start the game, show papers 
    {
      papershow = true;
    }
    if (mousePressed && mode == 1)        //stop the first level when user clicks on paper
    {
      end1 = time;        //record the time when the user clicks on the paper (which will be used to calculate the score later)
      papershow = false;          //stop showing the papers
      mode++;        //switch to next level
    }
  }
  if (mode == 3)        //LEVEL 2 (the same as level 1)
  {
    background(0);
    fill(129, 82, 66);
    text("GO!", width/2, 4*height/5);
    if (millis() - start2 >= delay)
    {
      papershow = true;
    }
    if (mousePressed && mode == 3)
    {
      end2 = time;
      papershow = false;
      mode++;
    }
  }
  if (mode == 5)        //LEVEL 3
  {
    background(0);
    fill(129, 82, 66);
    text("GO!", width/2, 4*height/5);
    if (millis() - start3 >= delay)
    {
      papershow = true;
    }
    if (mousePressed && mode == 5)
    {
      end3 = time;
      papershow = false;
      mode++;
    }
  }
  if (mode == 6)        //END SCREEN
  {
    background(0);
    textSize(30);
    fill(0, 0, 100);
    text("Level 1 Score", width/4, 100);        //display level 1 score
    text(score1, width/4, 150);
    text("Level 2 Score", width/2, 100);        //display level 2 score
    text(score2, width/2, 150);
    text("Level 3 Score", 3*width/4, 100);        //display level 3 score
    text(score3, 3*width/4, 150);
    textSize(50);
    avgscore = int((score1 + score2 + score3)/3);        //average the scores together for a final numerical grade
    text(avgscore, width/2, height/2);
    textSize(100);
    if (avgscore <= 450)
    {
      fill(129, 82, 66);
      text("YOU WIN!!!", width/2, 3*height/4);
    }
    else
    {
      fill(0, 100, 100);
      text("YOU LOSE!!!", width/2, 3*height/4);
    }
  }
  if (papershow)        //DISPLAYING THE PAPERS
  {
    papers.add(new Paper(width/4 - paperx/2));        //add leftmost paper to the ArrayList
    papers.add(new Paper(width/2 - paperx/2));        //add center paper to the ArrayList
    papers.add(new Paper(3*width/4 - paperx/2));        //add rightmost paper to the ArrayList
    for (int i = 0; i < 3; i++)
    {
      Paper p = papers.get(i);        //show all of the papers
      p.show();
    }
  }
  score1 = end1 - start1 - delay;        //record the score for the first level (which is the end time minus the start time and the time before displaying the papers)
  score2 = end2 - start2 - delay;
  score3 = end3 - start3 - delay;
  println(mode);
  h.show();        //display the hand
}

void keyPressed()
{
  if (key == ' ')        //the space key is the start button 
  {
    mode++;        //increase the mode
    if (mode == 1)
    {
      start1 = time;        //record the time when the space key is pressed (which is when the first level is started)
    }
    if (mode == 3)
    {
      start2 = time;        //record the time when the space key is pressed (which is when the second level is started)
    }
    if (mode == 5)
    {
      start3 = time;        //record the time when the space key is pressed (which is when the third level is started)
    }
  }
}

boolean sketchFullScreen()        //full screen
{
  return true;
}

