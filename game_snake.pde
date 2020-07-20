PFont f;
float side =20;
snake sam=new snake();
food meat= new food();
//------------------------------------------------------------------------------------------------------
void setup() {
  size(400, 400);
  f = createFont("Arial", 16, true);
}
//---------------------------------------------------------------------------------------------------
void draw() {
  if (meat.is_eaten) {
    meat=new food();
  }
  background(0);
  rectMode(CENTER);
  noFill();
  stroke(255);
  rect(width/2, height/2, width, height);
  if (sam.check_death()) {
    textFont(f, 32);
    fill(255);
    textAlign(CENTER);
    text("Lost", width/2, height/2);
    noLoop();
  }
  sam.display();
  meat.display();
}
//--------------------------------------------------------------------------------------------------
void keyPressed() {
  if (keyCode==UP) {
    sam.move(0);
  } else if (keyCode==RIGHT) {
    sam.move(1);
  } else if (keyCode==DOWN) {
    sam.move(2);
  } else if (keyCode==LEFT) {
    sam.move(3);
  }
}
