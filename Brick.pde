class Brick {

  float x;
  float y;
  float BrickX;
  float BrickY;
  float size;
  
 void display() {
  fill(0, 206, 209);
  rect(BrickX,BrickY,30,30);
  }
  
 Brick(float x,float y){
 size=30
   BrickX=150+x*size;
   BrickY=150+y*size;
 }


}
