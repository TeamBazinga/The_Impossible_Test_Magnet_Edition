Hand h;
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
  //paper1
  rect(width/4-rectx, height/2 - recty/2, rectx, recty);
  //paper2
  rect(width/2-rectx/2, height/2 - recty/2, rectx, recty);
  //paper3
  rect(3*width/4, height/2 - recty/2, rectx, recty);
  //hand
  h.show();
  
}
