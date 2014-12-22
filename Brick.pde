class Brick {

  float x;
  float y;
  float col;
  float row;
  float size;
  
 void display() {
  fill(0, 206, 209);
  rect(x,y,30,30);
  }
  
 Brick(float col,float row){
 size=30
   x=150+col*size;
   y=150+row*size;
 }


}
