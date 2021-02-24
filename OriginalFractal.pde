public void setup(){
    size(600, 600);
    rectMode(CENTER);
    frameRate(10);
  }
  public void draw(){
    background(0);
   // noFill();
    stroke(250);
    myFractal(300,300,600);
  }
  public void myFractal(int x, int y, int siz) {
    int fillColor = color((int)((Math.random()*125)+130), (int)((Math.random()*125)+130), (int)((Math.random()*125)+130));
    //rectangle centered at x,y
    rect(x,y,siz,siz);
    if (siz > 10){
      fill(fillColor);
      myFractal(x-siz/2,y, siz/2);
      myFractal(x+siz/2,y, siz/2);
      myFractal(x,y-siz/2, siz/2);
      myFractal(x,y+siz/2, siz/2);
    }
  }
