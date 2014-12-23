class Bar{

  int posX;
  int posY;
  float len;


    Bar(float len){
    this.posY = height-10;
    this.len = len;
  }  

  void display(){
    fill(255);
    rectMode(CENTER);
    rect(posX,posY,len,10);
  }
  
  void move(){
  posX = mouseX;
  }
  
}




