Walker[] Fred;
void setup() {
  size(500, 500);
  Fred = new Walker [300];
  for ( int i = 0; i < Fred.length; i++)
  {
    Fred[i] = new Walker();
  }
}
void draw() {
  background(0, 184,240);
  for ( int i = 0; i <  Fred.length; i++)
  {
    Fred[i].show();
    Fred[i].walk();
  }
}

class Walker {
  int myX, myY;
    Walker()
 {
   myX=myY=250;
}

void walk(){
  myX = myX + (int)(Math.random()*7)-3;
  myY = myY + (int)(Math.random()*7)-3;
  
}
void show(){
  stroke(255,255,255);
  fill(0,233,253);
  ellipse(myX, myY, 20,20);
}
}
