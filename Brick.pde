class Brick {

  float x;
  float y;
  float bX;
  float bY;
  boolean die=false;

 Brick(float x,float y){

   bX=x;
   bY=y;
 }
  void display() {
    rect(bX,bY,30,30);
  }

}
