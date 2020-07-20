class body{
  float x=0;
  float y=0;
  body(float tempx,float tempy){
    x=tempx;
    y=tempy;
  }
  //------------------------------------------------------------------------
  void display(){
    rect(x,y,side,side);
  }
  void display2(){
    rect(x,y,side,side,5,5,5,5);
  }
}
