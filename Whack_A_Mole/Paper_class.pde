class Paper
{
  PVector loc;
  int grade;
  color hue;

  Paper(int x)
  {
    textSize(50);
    loc = new PVector(x, height/2 - papery/2);
    grade = int(random(60, 100));
    //A score - green
    if (grade >= 90)
    {
      hue = color(122, 89, 80);
    }
    //B score - blue
    else if (grade < 90 && grade >= 80)
    {
      hue = color(234, 85, 93);
    }
    //C score - yellow
    else if (grade < 80 && grade >= 70)
    {
      hue = color(61, 85, 93);
    }
    //D score - orange
    else if (grade < 70 && grade >= 60)
    {
      hue = color(36, 99, 99);
    }
    //F score - red
    else if (grade < 60 && grade >= 50)
    {
      hue = color(6, 99, 99);
    }
  }

  void show()
  {
    rect(loc.x, loc.y, paperx, papery);
    fill(hue);
    text(grade, loc.x + paperx/2, loc.y + papery/2);
    fill(360);
    if (mousePressed)
    {
      grade = int(random(60, 100));
    }
  }
}

