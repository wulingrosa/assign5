class Bar{

  int x;
  int y;
  float len;

  void display(){
    fill(255);
    rectMode(CENTER);
    rect(x,y,len,10);
  }
  
  void move(){
  x = mouseX;
  }

    Bar(float len){
    this.y = height-10;
    this.len = len;
  }    
}




