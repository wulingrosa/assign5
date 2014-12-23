class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int size=20;
  boolean gone = false;

  void move(){

  /*
   if (status==GAME_START){
    x = board.x ;
    y = board.y-5-this.size/2;
    }else if(status == GAME_PLAYING){
    x+=xSpeed;
    y+=ySpeed;
    }
  */
  
    x+=xSpeed;
    y+=ySpeed;
    
    if (x<size/2 || x>width-size/2){
      xSpeed*= -1;
    }
    if (y<size/2){
      ySpeed*= -1;
    }
  
    float down = y+size/2;
    float ball1 = bar.posY-10/2 ;
    float bLeft = bar.posX-bar.barSize/2;
    float bRight = bar.posX+bar.barSize/2;
    
   if (down >= ball1 && x>bLeft && x<bRight){
        ySpeed *= -1;
  } 
  }

  void display(){
    fill(170,57,57);
    ellipse(x,y,size,size);
  }

    Ball(int col, int row) {
    x = col;
    y = row;
    xSpeed = random(-10,10);
    ySpeed = 3;
  }

}
