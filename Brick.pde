class Brick {

  float x;
  float y;
  float BrickX;
  float BrickY;
 
  void display() {
  fill(100,50,0);
    rect(BrickX,BrickY,30,30);
  }

 Brick(float x,float y){
   BrickX=x;
   BrickY=y;
 }



}
