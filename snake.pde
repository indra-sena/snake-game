class snake {
  ArrayList<body> parts=new ArrayList<body>();

  snake() {
    parts.add(new body(70, 10));
    parts.add(new body(50, 10));
    parts.add(new body(30, 10));
    parts.add(new body(10, 10));
  }
  //----------------------------------------------------------------------------------------------
  void display() {
    rectMode(CENTER);
    noStroke();
    fill(150);
    for (int i=0; i<parts.size(); i++) {
      if (i==0 || i==parts.size()-1) {
        parts.get(i).display2();
      } else {
        parts.get(i).display();
      }
    }
  }
  //-------------------------------------------------------------------------------------------------
  void move(int direction) {
    float tempx=parts.get(0).x;
    float tempy=parts.get(0).y;
    if (direction==0) {
      parts.get(0).y-=side;
      if (parts.size()>=2) {
        if (parts.get(0).y==parts.get(1).y) {
          parts.get(0).y+=side;
          return;
        }
      }
    } else if (direction==1) {
      parts.get(0).x+=side;
      if (parts.size()>=2) {
        if (parts.get(0).x==parts.get(1).x) {
          parts.get(0).x-=side;
          return;
        }
      }
    } else if (direction==2) {
      parts.get(0).y+=side;
      if (parts.size()>=2) {
        if (parts.get(0).y==parts.get(1).y) {
          parts.get(0).y-=side;
          return;
        }
      }
    } else if (direction==3) {
      parts.get(0).x-=side;
      if (parts.size()>=2) {
        if (parts.get(0).x==parts.get(1).x) {
          parts.get(0).x+=side;
          return;
        }
      }
    }
    if (parts.get(0).x==meat.x && parts.get(0).y==meat.y) {
      parts.add(1, new body(tempx, tempy));
      meat.is_eaten=true;
      return;
    }
    for (int i=1; i<parts.size(); i++) {
      float tempx1= parts.get(i).x;
      float tempy1= parts.get(i).y;
      parts.get(i).x=tempx;
      parts.get(i).y=tempy;
      tempx=tempx1;
      tempy=tempy1;
    }
  }
  //---------------------------------------------------------------------------------------------

  boolean check_death() {
    if (parts.get(0).x<0 || parts.get(0).x>width || parts.get(0).y<0 || parts.get(0).y>height) {
      return true;
    }
    for (int i=1; i<parts.size(); i++) {
      if (parts.get(0).x==parts.get(i).x && parts.get(0).y==parts.get(i).y) {
        return true;
      }
    }
    return false;
  }
}
