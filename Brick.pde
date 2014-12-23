class Brick {

  float x;
  float y;
  float col;
  float size;
  boolean die = false; 


 Brick(float col,float row){
   x=col;
   y=row;
 }
  
 void display() {
  fill(242,233,94);
  rect(x,y,30,30);
  }


}
