class Bar{
  float x;
  float y;
  float len;
  
  void move(){
    x = mouseX;
  }
  void display(){
    fill(0, 206, 209);
    rectMode(CENTER);
    rect(x,y,len,10);
    
  }
  
  Bar(float len){
    this.y = height-10;
    this.len = len;
  }
}
