class Bar{

  int posX;
  int posY;
  int barSize = 100;
  float len;


    Bar(float len){
    this.posY = height-10;
    this.len = len;
  }
  
  void display(){
    fill(255);
    rect(posX,posY,barSize,barSize/10);
  }
  
  void move(){
  posX = mouseX;
  }
  
  
}




