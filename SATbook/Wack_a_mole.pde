ArrayList<Paper> papers = new ArrayList<Paper>();        //declare an ArrayList
Hand h;        //declare class objects
A a1;
A a2;
A a3;
int paperx;        //declare dimension integers
int papery;
int timewak;        //declare time integers
int score1, score2, score3, avgscore;
int start1, start2, start3;
int end1, end2, end3;
int delay;
int mode;        //0 is the start screen. 1, 3, and 5 are for playing. 2 and 4 are for pausing in between levels
int gamelevel;
boolean papershow;        //declare booleans
boolean mainscreen;
boolean sap;        //spacealreadypressed

class WhackAMole
{

  WhackAMole()
  {
    size(displayWidth, displayHeight);
    colorMode(HSB, 360, 100, 100, 100);
    imageMode(CENTER);
    rectMode(CENTER);

    background(0);
    h = new Hand();
    a1 = new A();
    a2 = new A();
    a3 = new A();
    papershow = false;        //set papershow to false so it doesn't run in the beginning
    mainscreen = false;
    sap = false;
    paperx = 200;
    papery = 260;
    mode = 0;
    delay = 1000;
    gamelevel = 0;        //CHANGE THIS TO CORRECT GAMELEVELJ LASJFOAIJSFOASI JFOAJFOEAIJFOAWIJF AOFJO FOAJ FAOWFJIOAEWJ
  }

  void WAMload()
  {
    timewak = millis();        //create a variable to keep track of time
    background(0);
    if (mode == 0 || mode == 2 || mode == 4)        //START SCREEN
    {
      sap = false;
      fill(245, 100, 100);        //blue fill for instructions button
      ellipse(width/2, 4*height/5, 200, 200);        //instructions button
      fill(360);
      textSize(30);
      text("Instructions", width/2, 4*height/5);
      fill(0, 100, 100);        //red fill for go button
      rectMode(CORNER);
      rect(width/2 - 150, height/3, 300, 100);        //go button
      fill(360);
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
      sap = true;
      background(0);
      fill(0, 100, 100);        //red fill
      text("Ready...", width/2, height/5);
      if (millis() - start1 >= delay)        //1 second after the user presses space to start the game, show papers 
      {
        background(0);
        text("GO!", width/2, height/5);
        papershow = true;
        a1.show();        //show the letter A on one of the papers
      }
      if (mousePressed && mouseX <= a1.loc.x + paperx/2 && mouseX >= a1.loc.x - paperx/2 && mouseY >= a1.loc.y - papery/2 - 50 && mouseY <= a1.loc.y + papery/2 - 50 && mode == 1)        //stop the first level when user clicks on paper
      {
        end1 = timewak;        //record the time when the user clicks on the paper (which will be used to calculate the score later)
        papershow = false;          //stop showing the papers
        mode++;        //switch to next level
      }
    }
    if (mode == 3)        //LEVEL 2 (the same as level 1)
    {
      sap = true;
      background(0);
      fill(0, 100, 100);
      text("Ready...", width/2, height/5);
      if (millis() - start2 >= delay)
      {
        background(0);
        text("GO!", width/2, height/5);
        papershow = true;
      }
      if (mousePressed && mouseX <= a2.loc.x + paperx/2 && mouseX >= a2.loc.x - paperx/2 && mouseY >= a2.loc.y - papery/2 - 50 && mouseY <= a2.loc.y + papery/2 - 50 && mode == 3)
      {
        end2 = timewak;
        papershow = false;
        mode++;
      }
    }
    if (mode == 5)        //LEVEL 3
    {
      sap = true;
      background(0);
      fill(0, 100, 100);
      text("Ready...", width/2, height/5);
      if (millis() - start3 >= delay)
      {
        background(0);
        text("GO!", width/2, height/5);
        papershow = true;
      }
      if (mousePressed && mouseX <= a3.loc.x + paperx/2 && mouseX >= a3.loc.x - paperx/2 && mouseY >= a3.loc.y - papery/2 - 50 && mouseY <= a3.loc.y + papery/2 - 50 && mode == 5)
      {
        end3 = timewak;
        papershow = false;
        mode++;
      }
    }
    if (mode == 6)        //END SCREEN
    {
      background(0);
      textSize(30);
      fill(360);
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
        fill(0, 100, 100);
        ellipse(4*width/5, 4*height/5, 224, 224);
        fill(360);
        textSize(50);
        text("NEXT\nLEVEL", 4*width/5, 4*height/5-25);
        if (mousePressed && dist(mouseX, mouseY, 4*width/5, 4*height/5-25) <= 112)
        {
          level=8;
          mode = start1 = start2 = start3 = end1 = end2 = end3 = 0;
        }
      }
      else
      {
        fill(0, 100, 100);
        text("YOU LOSE!!!", width/2, 3*height/4);
        fill(0, 100, 100);
        ellipse(4*width/5, 4*height/5, 224, 224);
        fill(360);
        textSize(50);
        text("MAIN\nSCREEN", 4*width/5, 4*height/5-25);
        if (mousePressed && dist(mouseX, mouseY, 4*width/5, 4*height/5-25) <= 112)
        {
          mainscreen = true;
          mode = start1 = start2 = start3 = end1 = end2 = end3 = 0;
        }
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
      if (mode == 1)
      {
        a1.show();
      }
      if (mode == 3)
      {
        a2.show();
      }
      if (mode == 5)
      {
        a3.show();
      }
    }
    score1 = end1 - start1 - delay;        //record the score for the first level (which is the end time minus the start time and the time before displaying the papers)
    score2 = end2 - start2 - delay;
    score3 = end3 - start3 - delay;
    println(mode);
    h.show();        //display the hand
  }
}

