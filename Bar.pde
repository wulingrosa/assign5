class Bar{

  int posX;
  int posY;
  int barSize = 100;
  float len;


    Bar(float len){
    this.y = height-10;
    this.len = len;
  }
  
  void display(){
    fill(102,153,153);
    rect(posX,posY,barSize,barSize/10);
  }
  
  void move(){
  posX = mouseX;
  }
  
  
}




