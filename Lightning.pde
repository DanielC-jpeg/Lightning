int startX = -2000;
int startY= 1700+((int)Math.random()*1000);
int endX = -2000;
int endY = 1700-((int)Math.random()*1000);

void setup()
{
  size(1000,1000);
  background(0);
    noLoop();
}


void draw() {
stroke( (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256) );
strokeWeight(4);

while (endX < 1000)
{
  endX = startX + (int)(Math.random()*10);
  endY = startY + (int)(Math.random()*18) - 9;
  line(startY,startX,endY,endX);
  startX = endX;
  startY = endY;
}
startX = -2000;
startY= 700+((int)Math.random()*500);
endX = -2000;
endY = 700-((int)Math.random()*500);
fill(255,255,255);
stroke(255,255,255);
ellipse(500,100,1000,300);
}

void mousePressed(){
  redraw();
}
