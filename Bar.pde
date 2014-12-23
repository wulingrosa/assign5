class Bar{

  int posX;
  int posY;
  int life;
  int speedL = 10;
  int speedR = 10;
  int barSize = 100;
  
   Bar(int x, int y,  int l) {
    this.posX = x;
    this.posY = y;
    life = l;
  } 
  
  void display(){
    fill(255,227,170);
    rect(posX,posY,barSize,barSize/10);
  }
  
  void move(){
  posX = mouseX;
  }
  
  
}




