class Brick {

  float x;
  float y;
  float BrickX;
  float BrickY;
  boolean Dead=false;

 Brick(float x,float y){
   BrickX=x;
   BrickY=y;
 }
 
  void display() {
    rect(BrickX,BrickY,30,30);
  }

}
