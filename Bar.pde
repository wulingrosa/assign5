class Bar{
  float x;
  float y;
  float len;
  
  void move(){
    x = mouseX;
  }
  
  void display(){
    rectMode(CENTER);
    rect(x,y,len,10);
    fill(0,150,255);
  }
  
  Bar(float len){
    this.y = height-10;
    this.len = len;
  }
}
