class Brick {

  float x;
  float y;
  float BrickX;
  float BrickY;
  float size;
  

 Brick(float x,float y){
 size=30
   BrickX=150+x*size;
   BrickY=150+y*size;
 }
  void display() {
  fill(0, 206, 209);
  rect(BrickX,BrickY,size,size);
  }

}
