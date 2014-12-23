class Brick {

  float x;
  float y;
  float col;
  float row;
  int size=30; 
  int aSpeed = 1;
  int aSize = 10;
  int aScore = 10;
  boolean die = false; 

 Brick(float col,float row){
   x=col;
   y=row;
 }
  
 void display() {
  fill(64,127,127);
  rect(x,y,size,size,3);
  }
  
 void move() {
  }

}
