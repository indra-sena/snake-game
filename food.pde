class food{
  float x=0;
  float y=0;
  boolean is_eaten=false;
  //-------------------------------------------------------------------
  food(){
    float basex=floor(random(20));
    float basey=floor(random(20));
    x=basex*20+side/2;
    y=basey*20+side/2;
  }
  //-------------------------------------------------------------------
  
  void display(){
    rectMode(CENTER);
    stroke(255);
    fill(255,0,0);
    rect(x,y,side,side);
  }
}
