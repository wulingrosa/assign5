class Bar{

  int posX;
  int posY;
  int life;
  
   Bar(int x, int y,  int l) {
    this.posX = x;
    this.posY = y;
    life = l;
  } 
  
  void display(){
    fill(255,227,170);
    rect(posX,posY,100,10);
  }

}

void move(){
posX = mouseX;
}


